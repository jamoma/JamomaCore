/* 
 *	Plugtastic 
 *	
 *	Copyright © 2010 by Timothy Place
 *
 *	License: This code is licensed under the terms of the "New BSD License"
 *	http://creativecommons.org/licenses/BSD/
 */


#ifndef __PLUGTASTIC_H__
#define __PLUGTASTIC_H__

#include "TTDSP.h"
#include "TTGraphAPI.h"
#include "TTAudioGraphAPI.h"


#ifdef PLUGTASTIC_EXPORTS
	#define PLUGTASTIC_EXPORT __attribute__((visibility("default")))
#else
	#define PLUGTASTIC_EXPORT  
#endif


/******************************************************************************************/

PLUGTASTIC_EXPORT void PlugtasticInit(const char* pathToBinaries = NULL);


#endif // __PLUGTASTIC_H__
