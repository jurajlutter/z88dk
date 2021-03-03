/*
 *	Close a file on Microdrive
 *	Stefano Bodrato - Feb. 2005..2021
 *
 *	int close(int handle)
 *	closes file and frees memory
 *
 *	$Id: close.c $
 */

#include <fcntl.h>
#include <zxinterface1.h>

//#include <stdio.h>
#include <malloc.h>


int close(int fd)
{

struct M_CHAN *if1_file;

	if1_file = (void *) fd;

	if (((if1_file)->flags & 0xff) == O_WRONLY)
	{
		// This will overwrite/finalize the current sector.
		lseek(fd, 0L, SEEK_END);
		if1_file->recflg |= 2;	// Set EOF bit on last record
		if1_write_sector (if1_file->drive, if1_file->sector, if1_file);
	}

	free(fd);
	return 0;
}

