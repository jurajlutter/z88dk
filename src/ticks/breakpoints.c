#include "breakpoints.h"
#include "backend.h"
#include "exp_engine.h"
#include "debugger.h"

#include <stddef.h>
#include <utlist.h>
#include <stdlib.h>
#include <stdio.h>

breakpoint *breakpoints;
breakpoint *watchpoints;

// temporary breakpoints live to the point one of them is hit. in that case all of them has to be removed
temporary_breakpoint_t* temporary_breakpoints = NULL;
int next_breakpoint_number = 1;
int break_required = 0;

breakpoint* add_breakpoint(breakpoint_type type, enum bk_breakpoint_type bk_type, 
    int bk_size, int value, const char* text) {
    breakpoint* elem = calloc(1, sizeof(breakpoint));

    elem->number = next_breakpoint_number++;
    elem->type = type;
    elem->value = value;
    elem->enabled = 1;
    elem->text = NULL;
    LL_APPEND(breakpoints, elem);

    switch (bk.add_breakpoint(bk_type, value, bk_size)) {
        case BREAKPOINT_ERROR_OK: {
            break;
        }
        case BREAKPOINT_ERROR_RUNNING: {
            bk.break_(1);
            /* fallthrough */
        }
        case BREAKPOINT_ERROR_NOT_CONNECTED:
        default: {
            elem->pending_add = 1;
            break;
        }
    }

    return elem;
}

void delete_breakpoint(breakpoint* b) {
    switch (bk.remove_breakpoint(BK_BREAKPOINT_SOFTWARE, b->value, 1)) {
        case BREAKPOINT_ERROR_OK: {
            break;
        }
        case BREAKPOINT_ERROR_RUNNING: {
            bk.break_(1);
            /* fallthrough */
        }
        case BREAKPOINT_ERROR_NOT_CONNECTED:
        default: {
            b->pending_remove = 1;
            return;
        }
    }

    LL_DELETE(breakpoints, b);

    if (b->text) {
        free(b->text);
        b->text = NULL;
    }
    free(b);
}

void delete_all_breakpoints() {
    breakpoint *elem, *tmp;
    LL_FOREACH_SAFE(breakpoints, elem, tmp) {
        bk.remove_breakpoint(BK_BREAKPOINT_SOFTWARE, elem->value, 1);

        LL_DELETE(breakpoints, elem);

        if (elem->text) {
            free(elem->text);
            elem->text = NULL;
        }
        free(elem);
    }
}

breakpoint* find_breakpoint(int number) {
    breakpoint *elem;
    LL_FOREACH(breakpoints, elem) {
        if (elem->number == number) {
            return elem;
        }
    }
    return NULL;
}

temporary_breakpoint_t* add_temporary_internal_breakpoint(uint32_t address, temporary_breakpoint_reason_t reason,
    const char *source_filename, int source_lineno) {
    temporary_breakpoint_t* tmp_step = malloc(sizeof(temporary_breakpoint_t));
    tmp_step->at = address;
    tmp_step->callee = NULL;
    tmp_step->external = 0;
    tmp_step->source_file = source_filename;
    tmp_step->source_line = source_lineno;
    tmp_step->reason = reason;
    LL_APPEND(temporary_breakpoints, tmp_step);
    return tmp_step;
}

void remove_temp_breakpoints() {
    // regardless of the reason we've stopped, all temp breakpoints have to be removed
    while (temporary_breakpoints) {
        if (temporary_breakpoints->external) {
            bk.remove_breakpoint(BK_BREAKPOINT_SOFTWARE, temporary_breakpoints->at, 1);
        }
        temporary_breakpoint_t* next = temporary_breakpoints->next;
        free(temporary_breakpoints);
        temporary_breakpoints = next;
    }
}

uint8_t process_temp_breakpoints() {
    uint8_t dodebug = 0;

    temporary_breakpoint_t *temp_br;
    LL_FOREACH(temporary_breakpoints, temp_br) {
        if ((temp_br->at == 0xFFFFFFFF) || (bk.pc() == temp_br->at)) {
            dodebug = 1;
            temporary_breakpoint_reason_t reason = temp_br->reason;
            switch (reason) {
                case TMP_REASON_FIN: {
                    struct debugger_regs_t regs;
                    bk.get_regs(&regs);
                    uint16_t hl = wrap_reg(regs.h, regs.l);
                    uint16_t de = wrap_reg(regs.d, regs.e);
                    uint32_t return_value = ((uint32_t)de << 16) | hl;
                    if (temp_br->callee) {
                        type_chain *ttt = temp_br->callee->type_record.first;
                        if (ttt->type_ == TYPE_FUNCTION) {
                            // skip DF
                            ttt = ttt->next;
                        }
                        if (ttt == NULL) {
                            printf("Warning: unknown callee return type, DEHL returned %08x.\n", return_value);
                        } else {
                            if (ttt->type_ != TYPE_VOID) {
                                struct expression_result_t result = {0};
                                debug_resolve_expression_element(&temp_br->callee->type_record, ttt,
                                    RESOLVE_BY_VALUE, return_value, &result);
                                if (is_expression_result_error(&result)) {
                                    printf("function %s errored: %s\n", temp_br->callee->function_name, result.as_error);
                                } else {
                                    char resolved_result[128] = "<unknown>";
                                    expression_result_value_to_string(&result, resolved_result, 128);
                                    printf("function %s returned: %s\n", temp_br->callee->function_name, resolved_result);
                                }
                                expression_result_free(&result);
                            }
                        }
                    } else {
                        printf("Warning: returned from a function without frame pointer.\n");
                    }
                    break;
                }
                case TMP_REASON_STEP_SOURCE_LINE:
                case TMP_REASON_NEXT_SOURCE_LINE: {
                    if (temp_br->source_file == NULL) {
                        // breakpoint was shady to begin with
                        dodebug = 1;
                    } else {
                        const char *filename;
                        int   lineno;
                        const unsigned short pc = bk.pc();
                        if (debug_find_source_location(pc, &filename, &lineno) < 0) {
                            // don't know where we are, keep going
                            if (reason == TMP_REASON_STEP_SOURCE_LINE) {
                                bk.step();
                            } else {
                                bk.next();
                            }
                            return 0;
                        }
                        // we're still on the same source line
                        if ((strcmp(filename, temp_br->source_file) == 0) && (lineno == temp_br->source_line)) {
                            if (reason == TMP_REASON_STEP_SOURCE_LINE) {
                                bk.step();
                            } else {
                                bk.next();
                            }
                            return 0;
                        } else {
                            dodebug = 1;
                        }
                    }
                    break;
                }
                default: {
                    printf("Warning: unknown reason why we stopped on temporary breakpoint.\n");
                    break;
                }
            }
        }
    }

    if (dodebug) {
        remove_temp_breakpoints();
    }

    return dodebug;
}