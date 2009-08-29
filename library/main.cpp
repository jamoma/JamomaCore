/*
 *  main.cpp
 *  multicore
 *
 *  Created by Tim Place on 2008/11/14.
 *  Copyright 2008 __MyCompanyName__. All rights reserved.
 *
 */

#include "TTDSP.h"
#include "TTMulticore.h"

static bool initialized = false;


/***********************************************************/

void TTMulticoreInit(void)
{
	if(!initialized){
		initialized = true;
		TTDSPInit();
		MCoreObject::registerClass();
		MCoreSource::registerClass();
		MCoreOutput::registerClass();
	}
}


