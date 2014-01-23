/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTModular Library
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTModular.h"
#include "TTInput.h"
#include "TTInputAudio.h"
#include "TTOutput.h"
#include "TTOutputAudio.h"

// file system needed to retreive the path of JamomaModular.dylib
#ifdef TT_PLATFORM_MAC
#include <dlfcn.h>
#include <sys/types.h>
#include <dirent.h>
#elif TT_PLATFORM_LINUX
#include <dlfcn.h>
#elif TT_PLATFORM_WIN
#include <ShlObj.h>
#endif

// Statics and Globals
static bool TTModularHasInitialized = false;

TTApplicationManagerPtr	TTModularApplications = NULL;

TTHashPtr TTModularNamespaces = NULL;

/****************************************************************************************************/



void TTModularCreateLocalApplication(TTString applicationStr, TTString xmlConfigFilePath)
{
	TTValue				args, none;
	TTApplicationPtr	anApplication = NULL;
	
	if (TTModularApplications) {
		
		// if the local application doesn't exist yet
		if (!getLocalApplication) {
			
			// create the application
			args = TTValue(TTSymbol(applicationStr));
			TTObjectBaseInstantiate(kTTSym_Application, TTObjectBaseHandle(&anApplication), args);
			
			// set it as local application
			args = TTValue(anApplication);
			TTModularApplications->setAttributeValue(TTSymbol("localApplication"), args);
			
			// Read xml configuration file
			TTXmlHandlerPtr anXmlHandler = NULL;
			TTObjectBaseInstantiate(kTTSym_XmlHandler, TTObjectBaseHandle(&anXmlHandler), none);
			
			anXmlHandler->setAttributeValue(kTTSym_object, args);
			
			args = TTValue(TTSymbol(xmlConfigFilePath));
			anXmlHandler->sendMessage(kTTSym_Read, args, none);
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
			aNamespace = TTAddressItemPtr((TTPtr)v[0]);
		
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