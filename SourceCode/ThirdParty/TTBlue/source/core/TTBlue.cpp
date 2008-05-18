/* 
 * TTBlue Library
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlue.h"
#include "TTSymbolTable.h"
#include "TTGlobal.h"
#include "TTSymbolCache.h"
#include "TTValueCache.h"

static bool TTBlueHasInitialized = false;

/****************************************************************************************************/

void TTBlueInit()
{
	if(!TTBlueHasInitialized){
		ttSymbolTable = new TTSymbolTable;
		ttGlobalObject = new TTGlobal;

		TTSymbolCacheInit();
		TTValueCacheInit();

		printf("TTBlue -- Version 0.5\n");
		
		// do we need to do anything with the global object?
		// init the queue -- runs in a new thread
	
		TTBlueHasInitialized = true;
	}
}


