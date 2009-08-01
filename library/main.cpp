/*
 *  main.cpp
 *  multicore
 *
 *  Created by Tim Place on 2008/11/14.
 *  Copyright 2008 __MyCompanyName__. All rights reserved.
 *
 */

#include "TTBlueAPI.h"
#include "multicore.h"

static bool initialized = false;


/***********************************************************/

void MCoreInit(void)
{
	if(!initialized){
		TTBlueInit();
		MCoreObject::registerClass();
		MCoreSource::registerClass();
		MCoreOutput::registerClass();
	}
}


