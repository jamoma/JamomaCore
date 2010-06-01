/* 
 * TTModular Library
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#include "TTModular.h"


static bool TTModularHasInitialized = false;
TTNodeDirectoryPtr jamoma_directory = NULL;

void TTModularRegisterInternalClasses();


/****************************************************************************************************/

void TTModularInit()
{
	TTFoundationInit();
	
	if (!TTModularHasInitialized) {
		TTModularHasInitialized = true;
				
		// TODO: someday implement these so that we have project-scoped caches and don't stuff everything into the foundation?
		//TTModularSymbolCacheInit();
		//TTModularValueCacheInit();
		
#ifdef TT_DEBUG
		TTLogMessage("Modular -- Version %s -- Debugging Enabled\n", TTMODULAR_VERSION_STRING);
#else
		TTLogMessage("Modular -- Version %s\n", TTMODULAR_VERSION_STRING);
#endif
		
		// register classes -- both internal and external
		TTSubscriber::registerClass();
		TTContainer::registerClass();
		TTParameter::registerClass();
		TTSender::registerClass();
		TTReceiver::registerClass();
		TTMapper::registerClass();
		TTPreset::registerClass();
		TTDeviceManager::registerClass();
		
		TTModularRegisterInternalClasses();
	}
}

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTModularInit() here?
	return 0;
}
#endif


/****************************************************************************************************/

// Core

void TTModularRegisterInternalClasses()
{
}


/****************************************************************************************************/

