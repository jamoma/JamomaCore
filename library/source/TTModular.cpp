/* 
 * TTModular Library
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTModular.h"

// Statics and Globals
static bool TTModularHasInitialized = false;

TTApplicationManagerPtr	TTModularApplications = NULL;

TTHashPtr TTModularNamespaces = NULL;

/****************************************************************************************************/

void TTModularInit()
{	
	// Initialized Foundation framework
	TTFoundationInit();
	
	/* DEBUG
	TTObjectPtr test;
	TTValue v;
	TTObjectInstantiate(TT("nodelib.test"), &test, kTTValNONE);
	test->test(v); */
	
	TTObjectInstantiate(TTSymbol("string.test"), &stringTest, kTTValNONE);
	stringTest->test(v);
	
	TTObjectInstantiate(TTSymbol("symbol.test"), &symbolTest, kTTValNONE);
	symbolTest->test(v);
	
	TTObjectInstantiate(TTSymbol("nodelib.test"), &nodeTest, kTTValNONE);
	nodeTest->test(v);
	
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
		TTPreset::registerClass();
		TTPresetManager::registerClass();
		TTReceiver::registerClass();
		TTSender::registerClass();
		TTScript::registerClass();
		TTSubscriber::registerClass();
		TTTextHandler::registerClass();
		TTViewer::registerClass();
		TTXmlHandler::registerClass();
		
		//TTModularValueCacheInit();
		
		// to - this a very strange bug : the two first toString() parsing on number failed !?!
		// so here are two parsing to avoid this strange bug for instant ...
		TTString s;
		TTValue v;
		
		s = "0.001";
		v = s;
		v.fromString();
		
		v.clear();
		s = "1";
		v = s;
		v.fromString();
		
		// Create the Modular application manager with no application inside
		TTObjectInstantiate(kTTSym_ApplicationManager, TTObjectHandle(&TTModularApplications), kTTValNONE);
		
		// Create a hash table to manage namespace selections
		TTModularNamespaces = new TTHash();
		
#ifdef TT_DEBUG
		TTLogMessage("Modular -- Version %s -- Debugging Enabled\n", TTMODULAR_VERSION_STRING);
#else
		TTLogMessage("Modular -- Version %s\n", TTMODULAR_VERSION_STRING);
#endif

	}
}

void TTModularCreateLocalApplication(TTString applicationStr, TTString xmlConfigFilePath)
{
	TTValue				args;
	TTApplicationPtr	anApplication = NULL;
	
	if (TTModularApplications) {
		
		// if the local application doesn't exist yet
		if (!getLocalApplication) {
			
			// create the application
			args = TTValue(TT(applicationStr.data()));
			TTObjectInstantiate(kTTSym_Application, TTObjectHandle(&anApplication), args);
			
			// set it as local application
			args = TTValue((TTPtr)anApplication);
			TTModularApplications->setAttributeValue(TTSymbol("localApplication"), args);
			
			// Read xml configuration file
			TTXmlHandlerPtr anXmlHandler = NULL;
			TTObjectInstantiate(kTTSym_XmlHandler, TTObjectHandle(&anXmlHandler), kTTValNONE);
			
			anXmlHandler->setAttributeValue(kTTSym_object, args);
			
			args = TTValue(TT(xmlConfigFilePath));
			anXmlHandler->sendMessage(TTSymbol("Read"), args, kTTValNONE);
		}
		else
			TTLogMessage("Modular -- \"%s\" application already exists", getLocalApplicationName.c_str());
	}
}

TTAddressItemPtr	TTModularNamespacesLookup(TTSymbol namespaceName)
{
	TTAddressItemPtr	aNamespace = NULL;
	TTValue				v;
	
	if (namespaceName != kTTSymEmpty && namespaceName != kTTSym_none) {
		
		if (!TTModularNamespaces->lookup(namespaceName, v))
			v.get(0, (TTPtr*)&aNamespace);
		
		else {
			aNamespace = new TTAddressItem();
			
			v = TTValue((TTPtr)aNamespace);
			TTModularNamespaces->append(namespaceName, v);
		}
	}

	return aNamespace;
}

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTModularInit() here?
	return 0;
}
#endif