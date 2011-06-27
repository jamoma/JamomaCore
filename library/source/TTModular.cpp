/* 
 * TTModular Library
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTModular.h"
#include "PluginFactories.h"

// Statics and Globals
static bool TTModularHasInitialized = false;

TTApplicationManagerPtr	TTModularApplications = NULL;
TTSymbolPtr				kTTSym_localApplicationName = kTTSymEmpty;

/****************************************************************************************************/

void TTModularInit(TTString pluginFolderPath)
{
	TTValue	v;
	
	// Initialized Foundation framework
	TTFoundationInit();
	
	if (!TTModularHasInitialized) {
		
		TTModularHasInitialized = true;
		
		// register classes -- both internal and external
		TTApplication::registerClass();
		TTApplicationManager::registerClass();
		TTContainer::registerClass();
		TTCue::registerClass();
		TTCueManager::registerClass();
		TTData::registerClass();
		TTExplorer::registerClass();
		TTInput::registerClass();
		TTMapper::registerClass();
		TTMapperManager::registerClass();
		TTMirror::registerClass();
		TTOpmlHandler::registerClass();
		TTOutput::registerClass();
		TTPluginHandler::registerClass();
		TTPreset::registerClass();
		TTPresetManager::registerClass();
		TTReceiver::registerClass();
		TTSender::registerClass();
		TTSubscriber::registerClass();
		TTTextHandler::registerClass();
		TTViewer::registerClass();
		TTXmlHandler::registerClass();
		
		// TODO: someday implement these so that we have project-scoped caches and don't stuff everything into the foundation?
		TTModularSymbolCacheInit();
		//TTModularValueCacheInit();
		
		// Create the Modular application manager with no application inside
		v.append(pluginFolderPath);
		TTObjectInstantiate(TT("ApplicationManager"), TTObjectHandle(&TTModularApplications), v);
		
#ifdef TT_DEBUG
		TTLogMessage("Modular -- Version %s -- Debugging Enabled\n", TTMODULAR_VERSION_STRING);
#else
		TTLogMessage("Modular -- Version %s\n", TTMODULAR_VERSION_STRING);
#endif

	}
}

void TTModularCreateLocalApplication(TTString applicationStr, TTString xmlConfigFilePath)
{
	TTValue				v;
	TTApplicationPtr	anApplication;
	
	if (TTModularApplications)
		
		kTTSym_localApplicationName = TT(applicationStr.data());
		
		// if the local application doesn't exist yet
		if (!getLocalApplication) {
			
			// Create the application giving a name and the version
			v = TTValue(kTTSym_localApplicationName);
			v.append(TT(TTMODULAR_VERSION_STRING));
			anApplication = NULL;
			TTObjectInstantiate(TT("Application"), TTObjectHandle(&anApplication), v);
			
			// Add it to the application manager as the local application
			v = TTValue(kTTSym_localApplicationName);
			v.append((TTPtr)anApplication);
			TTModularApplications->sendMessage(TT("ApplicationAdd"), v);
			
			// Read xml configuration file
			TTXmlHandlerPtr anXmlHandler = NULL;
			TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&anXmlHandler), v);
			
			v = TTValue(TTPtr(anApplication));
			anXmlHandler->setAttributeValue(kTTSym_object, v);
			
			v = TTValue(TT(xmlConfigFilePath));
			anXmlHandler->sendMessage(TT("Read"), v);
		}
		else
			TTLogMessage("Modular -- \"%s\" application already exists", kTTSym_localApplicationName->getCString()); 
}

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTModularInit() here?
	return 0;
}
#endif

