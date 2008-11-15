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


TTObjectPtr MCoreInstantiateTTObject(TTSymbolPtr className, TTValue& arguments);

static bool initialized = false;

/***********************************************************/

void MCoreInit(void)
{
	if(!initialized){
		TTBlueInit();
		TTClassRegister(TT("multicore.source"),	"audio, multicore",		&MCoreInstantiateTTObject);
		TTClassRegister(TT("multicore.output"),	"audio, multicore",		&MCoreInstantiateTTObject);
	}
}



TTObjectPtr MCoreInstantiateTTObject(TTSymbolPtr className, TTValue& arguments)
{
	if(className == TT("multicore.source"))
		return new MCoreSource(arguments);
	else if(className == TT("multicore.output"))
		return new MCoreOutput(arguments);
	else
		return NULL;
}

