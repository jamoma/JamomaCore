/* 
 * TTPOM Library
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#include "TTPeerObjectModel.h"


static bool TTPOMHasInitialized = false;


void TTPOMRegisterInternalClasses();


/****************************************************************************************************/

void TTPOMInit()
{
	TTFoundationInit();
	
	if (!TTPOMHasInitialized) {
		TTPOMHasInitialized = true;
				
		// TODO: someday implement these so that we have project-scoped caches and don't stuff everything into the foundation?
		//TTPOMSymbolCacheInit();
		//TTPOMValueCacheInit();
		
#ifdef TT_DEBUG
		TTLogMessage("PeerObjectModel -- Version %s -- Debugging Enabled\n", TTPOM_VERSION_STRING);
#else
		TTLogMessage("PeerObjectModel -- Version %s\n", TTPOM_VERSION_STRING);
#endif
		
		TTPOMRegisterInternalClasses();
	}
}

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTPOMInit() here?
	return 0;
}
#endif


/****************************************************************************************************/

// Core

void TTPOMRegisterInternalClasses()
{
}


/****************************************************************************************************/
