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

PluginFactoriesPtr		TTPluginFactories = NULL;
void					LoadPlugins(TTString pluginFolderPath, TTHashPtr *returnedPlugins);

/****************************************************************************************************/

void TTModularInit(TTString pluginFolderPath)
{
	TTValue				v;
	TTHashPtr			returnedPlugins;
	
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
		
		// Load plugins
		returnedPlugins = new TTHash();
		LoadPlugins(pluginFolderPath, &returnedPlugins);
		
		// Create the Modular application manager with no application inside
		v.append((TTPtr)returnedPlugins);
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
			TTModularApplications->sendMessage(TT("Add"), v);
			
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

void LoadPlugins(TTString pluginFolderPath, TTHashPtr *returnedPlugins)
{
	// Create PlugnFactories
	TTPluginFactories = new PluginFactories();
	
	TTPluginFactories->loadPlugins(pluginFolderPath.data());
	
	IteratorPluginNames it = TTPluginFactories->getPluginNames();
	
	while (it.hasNext()) {
		TTString pluginName = it.next();
		TTPluginHandlerPtr aPluginObject = NULL;
		TTValue args;
		PluginPtr plugin = TTPluginFactories->createPlugin(pluginName);
		
		if (plugin != 0) {
			
			// DEBUG
			TTLogDebug("%s plugin loaded", pluginName.data());
			
			// create an instance of TTPluginHandler object
			args = TTValue((TTPtr)plugin);
			args.append(TT(pluginName));
			args.append(TT(TTPluginFactories->getPluginVersion(pluginName)));
			args.append(TT(TTPluginFactories->getPluginAuthor(pluginName)));
			args.append(TT(TTPluginFactories->getPluginExploration(pluginName)));
			
			TTObjectInstantiate(TT("Plugin"), TTObjectHandle(&aPluginObject), args);
			
			// add it to returned plugins table
			args = TTValue((TTPtr)aPluginObject);
			(*returnedPlugins)->append(TT(pluginName), args);
		}
	}
}


#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTModularInit() here?
	return 0;
}
#endif

