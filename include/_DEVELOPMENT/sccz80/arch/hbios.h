
// automatically generated by m4 from headers in proto subdir


#ifndef __ARCH_HBIOS_H__
#define __ARCH_HBIOS_H__

#include <arch.h>

// HBIOS FUNCTION NUMBERS

#define BF_CIO         0x00
#define BF_CIOIN       BF_CIO + 0    // CHARACTER INPUT
#define BF_CIOOUT      BF_CIO + 1    // CHARACTER OUTPUT
#define BF_CIOIST      BF_CIO + 2    // CHARACTER INPUT STATUS
#define BF_CIOOST      BF_CIO + 3    // CHARACTER OUTPUT STATUS
#define BF_CIOINIT     BF_CIO + 4    // INIT/RESET DEVICE/LINE CONFIG
#define BF_CIOQUERY    BF_CIO + 5    // REPORT DEVICE/LINE CONFIG
#define BF_CIODEVICE   BF_CIO + 6    // REPORT DEVICE INFO

#define BF_DIO         0x10
#define BF_DIOSTATUS   BF_DIO + 0    // DISK STATUS
#define BF_DIORESET    BF_DIO + 1    // DISK RESET
#define BF_DIOSEEK     BF_DIO + 2    // DISK SEEK
#define BF_DIOREAD     BF_DIO + 3    // DISK READ SECTORS
#define BF_DIOWRITE    BF_DIO + 4    // DISK WRITE SECTORS
#define BF_DIOVERIFY   BF_DIO + 5    // DISK VERIFY SECTORS
#define BF_DIOFORMAT   BF_DIO + 6    // DISK FORMAT TRACK
#define BF_DIODEVICE   BF_DIO + 7    // DISK DEVICE INFO REPORT
#define BF_DIOMEDIA    BF_DIO + 8    // DISK MEDIA REPORT
#define BF_DIODEFMED   BF_DIO + 9    // DEFINE DISK MEDIA
#define BF_DIOCAP      BF_DIO + 10   // DISK CAPACITY REPORT
#define BF_DIOGEOM     BF_DIO + 11   // DISK GEOMETRY REPORT

#define BF_RTC         0x20
#define BF_RTCGETTIM   BF_RTC + 0    // GET TIME
#define BF_RTCSETTIM   BF_RTC + 1    // SET TIME
#define BF_RTCGETBYT   BF_RTC + 2    // GET NVRAM BYTE BY INDEX
#define BF_RTCSETBYT   BF_RTC + 3    // SET NVRAM BYTE BY INDEX
#define BF_RTCGETBLK   BF_RTC + 4    // GET NVRAM DATA BLOCK
#define BF_RTCSETBLK   BF_RTC + 5    // SET NVRAM DATA BLOCK

#define BF_EMU         0x30          // DEPRECATED

#define BF_VDA         0x40
#define BF_VDAINI      BF_VDA + 0    // INITIALIZE VDU
#define BF_VDAQRY      BF_VDA + 1    // QUERY VDU STATUS
#define BF_VDARES      BF_VDA + 2    // SOFT RESET VDU
#define BF_VDADEV      BF_VDA + 3    // DEVICE INFO
#define BF_VDASCS      BF_VDA + 4    // SET CURSOR STYLE
#define BF_VDASCP      BF_VDA + 5    // SET CURSOR POSITION
#define BF_VDASAT      BF_VDA + 6    // SET CHARACTER ATTRIBUTE
#define BF_VDASCO      BF_VDA + 7    // SET CHARACTER COLOR
#define BF_VDAWRC      BF_VDA + 8    // WRITE CHARACTER
#define BF_VDAFIL      BF_VDA + 9    // FILL
#define BF_VDACPY      BF_VDA + 10   // COPY
#define BF_VDASCR      BF_VDA + 11   // SCROLL
#define BF_VDAKST      BF_VDA + 12   // GET KEYBOARD STATUS
#define BF_VDAKFL      BF_VDA + 13   // FLUSH KEYBOARD BUFFER
#define BF_VDAKRD      BF_VDA + 14   // READ KEYBOARD

#define BF_SYS         0xF0
#define BF_SYSRESET    BF_SYS + 0    // SOFT RESET HBIOS
#define BF_SYSVER      BF_SYS + 1    // GET HBIOS VERSION
#define BF_SYSSETBNK   BF_SYS + 2    // SET CURRENT BANK
#define BF_SYSGETBNK   BF_SYS + 3    // GET CURRENT BANK
#define BF_SYSSETCPY   BF_SYS + 4    // BANK MEMORY COPY SETUP
#define BF_SYSBNKCPY   BF_SYS + 5    // BANK MEMORY COPY
#define BF_SYSALLOC    BF_SYS + 6    // ALLOC HBIOS HEAP MEMORY
#define BF_SYSFREE     BF_SYS + 7    // FREE HBIOS HEAP MEMORY
#define BF_SYSGET      BF_SYS + 8    // GET HBIOS INFO
#define BF_SYSSET      BF_SYS + 9    // SET HBIOS PARAMETERS
#define BF_SYSPEEK     BF_SYS + 10   // GET A BYTE VALUE FROM ALT BANK
#define BF_SYSPOKE     BF_SYS + 11   // SET A BYTE VALUE IN ALT BANK
#define BF_SYSINT      BF_SYS + 12   // MANAGE INTERRUPT VECTORS

#define BF_SYSGET_CIOCNT   0x00      // GET CHAR UNIT COUNT
#define BF_SYSGET_DIOCNT   0x10      // GET DISK UNIT COUNT
#define BF_SYSGET_VDACNT   0x40      // GET VDA UNIT COUNT
#define BF_SYSGET_TIMER    0xD0      // GET CURRENT TIMER VALUE
#define BF_SYSGET_SECS     0xD1      // GET CURRENT SECONDS VALUE
#define BF_SYSGET_BOOTINFO 0xE0      // GET BOOT INFORMATION
#define BF_SYSGET_CPUINFO  0xF0      // GET CPU INFORMATION
#define BF_SYSGET_MEMINFO  0xF1      // GET MEMORY CAPACTITY INFO
#define BF_SYSGET_BNKINFO  0xF2      // GET BANK ASSIGNMENT INFO

#define BF_SYSSET_TIMER    0xD0      // SET TIMER VALUE
#define BF_SYSSET_SECS     0xD1      // SET SECONDS VALUE
#define BF_SYSSET_BOOTINFO 0xE0      // SET BOOT INFORMATION

#define BF_SYSINT_INFO     0x00      // GET INTERRUPT SYSTEM INFO
#define BF_SYSINT_GET      0x10      // GET INT VECTOR ADDRESS
#define BF_SYSINT_SET      0x20      // SET INT VECTOR ADDRESS

// CHAR DEVICE IDS

#define CIODEV_UART    0x00
#define CIODEV_ASCI    0x10
#define CIODEV_TERM    0x20
#define CIODEV_PRPCON  0x30
#define CIODEV_PPPCON  0x40
#define CIODEV_SIO     0x50
#define CIODEV_ACIA    0x60
#define CIODEV_PIO     0x70
#define CIODEV_UF      0x80
#define CIODEV_CONSOLE 0xD0

// SUB TYPES OF CHAR DEVICES

// 00 RS-232
// 01 TERMINAL
// 02 PARALLEL PORT
// 03 UNUSED

// DISK DEVICE IDS

#define DIODEV_MD      0x00
#define DIODEV_FD      0x10
#define DIODEV_RF      0x20
#define DIODEV_IDE     0x30
#define DIODEV_ATAPI   0x40
#define DIODEV_PPIDE   0x50
#define DIODEV_SD      0x60
#define DIODEV_PRPSD   0x70
#define DIODEV_PPPSD   0x80
#define DIODEV_HDSK    0x90

// VIDEO DEVICE IDS

#define VDADEV_VDU     0x00       // ECB VDU - MOTOROLA 6545
#define VDADEV_CVDU    0x10       // ECB COLOR VDU - MOS 8563
#define VDADEV_NEC     0x20       // ECB UPD7220 - NEC UPD7220
#define VDADEV_TMS     0x30       // N8 ONBOARD VDA SUBSYSTEM - TMS 9918
#define VDADEV_VGA     0x40       // VGA

// EMULATION TYPES

#define EMUTYP_NONE    0         // NONE
#define EMUTYP_TTY     1         // TTY
#define EMUTYP_ANSI    2         // ANSI

// HBIOS PROXY COMMON DATA BLOCK
// EXACTLY 32 BYTES AT 0xFFE0-0xFFFF

#define HBX_XFC        0x10000 - 0x20        // HBIOS PROXY INTERFACE AREA, 32 BYTES FIXED

#define HBX_XFCDAT     HBX_XFC               // DATA PORTION OF HBIOS PROXY INTERFACE AREA
#define HB_CURBNK      HBX_XFCDAT + 0        // CURRENTLY ACTIVE LOW MEMORY BANK ID
#define HB_INVBNK      HBX_XFCDAT + 1        // BANK ACTIVE AT TIME OF HBIOS CALL INVOCATION
#define HB_SRCADR      HBX_XFCDAT + 2        // BNKCPY: DESTINATION BANK ID
#define HB_SRCBNK      HBX_XFCDAT + 4        // BNKCPY: SOURCE BANK ID
#define HB_DSTADR      HBX_XFCDAT + 5        // BNKCPY: DESTINATION ADDRESS
#define HB_DSTBNK      HBX_XFCDAT + 7        // BNKCPY: SOURCE ADDRESS
#define HB_CPYLEN      HBX_XFCDAT + 8        // BNKCPY: COPY LENGTH

#define HBX_XFCFNS     HBX_XFC + 0x10        // JUMP TABLE PORTION OF HBIOS PROXY INTERFACE AREA
#define HB_INVOKE      HBX_XFCFNS + (0 * 3)  // INVOKE HBIOS FUNCTION
#define HB_BNKSEL      HBX_XFCFNS + (1 * 3)  // SELECT LOW MEMORY BANK ID
#define HB_BNKCPY      HBX_XFCFNS + (2 * 3)  // INTERBANK MEMORY COPY
#define HB_BNKCALL     HBX_XFCFNS + (3 * 3)  // INTERBANK FUNCTION CALL
#define HB_IDENT       HBX_XFCFNS + 14       // POINTER TO HBIOS IDENT DATA BLOCK


// HBIOS FUNCTIONS

// return DEHL, function BC
extern uint32_t __LIB__ hbios(uint16_t func) __smallc __z88dk_fastcall;


// return A, function BC
extern uint8_t __LIB__ hbios_a(uint16_t func) __smallc __z88dk_fastcall;


// return A, function BC, arg DE
extern uint8_t __LIB__ hbios_a_de(uint16_t func,uint16_t arg) __smallc;
extern uint8_t __LIB__ hbios_a_de_callee(uint16_t func,uint16_t arg) __smallc __z88dk_callee;
#define hbios_a_de(a,b) hbios_a_de_callee(a,b)


// return A, function BC, arg DEHL
extern uint8_t __LIB__ hbios_a_dehl(uint16_t func,uint32_t arg) __smallc;
extern uint8_t __LIB__ hbios_a_dehl_callee(uint16_t func,uint32_t arg) __smallc __z88dk_callee;
#define hbios_a_dehl(a,b) hbios_a_dehl_callee(a,b)


// return A, function BC, arg DE, void * HL
extern uint8_t __LIB__ hbios_a_de_hl(uint16_t func,uint16_t arg,void * buffer) __smallc;
extern uint8_t __LIB__ hbios_a_de_hl_callee(uint16_t func,uint16_t arg,void * buffer) __smallc __z88dk_callee;
#define hbios_a_de_hl(a,b,c) hbios_a_de_hl_callee(a,b,c)


// return E, function BC
extern uint8_t __LIB__ hbios_e(uint16_t func) __smallc __z88dk_fastcall;


// return E, function BC, arg DE
extern uint8_t __LIB__ hbios_e_de(uint16_t func,uint16_t arg) __smallc;
extern uint8_t __LIB__ hbios_e_de_callee(uint16_t func,uint16_t arg) __smallc __z88dk_callee;
#define hbios_e_de(a,b) hbios_e_de_callee(a,b)


// return E, function BC, arg DEHL
extern uint8_t __LIB__ hbios_e_dehl(uint16_t func,uint32_t arg) __smallc;
extern uint8_t __LIB__ hbios_e_dehl_callee(uint16_t func,uint32_t arg) __smallc __z88dk_callee;
#define hbios_e_dehl(a,b) hbios_e_dehl_callee(a,b)


// return E, function BC, arg DE, void * HL
extern uint8_t __LIB__ hbios_e_de_hl(uint16_t func,uint16_t arg,void * buffer) __smallc;
extern uint8_t __LIB__ hbios_e_de_hl_callee(uint16_t func,uint16_t arg,void * buffer) __smallc __z88dk_callee;
#define hbios_e_de_hl(a,b,c) hbios_e_de_hl_callee(a,b,c)



#endif /* !__ARCH_HBIOS_H__ */
