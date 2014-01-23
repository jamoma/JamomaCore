/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief the Modular Application Programming Interface
 *
 * @details The Modular API allows to use Modular inside another application @n@n
 *
 * @see TTModular
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularAPI.h"

/* Main Modular functions */

static bool TTModularInitialized = false;

void TTModularInitialize(const char* pathToTheJamomaFolder)
{
    TTValue v, none;
    
	// Initialized Foundation framework
	TTFoundationInit(pathToTheJamomaFolder);
    
    //#define TO_DEBUG
#ifdef TO_DEBUG
    
	TTObjectBasePtr test = NULL;
	TTObjectBaseInstantiate(TTSymbol("value.test"), &test, none);
	TTDataObjectBasePtr(test)->test(v);
    
#endif // TO_DEBUG
	
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
		TTInputAudio::registerClass();
		TTMapper::registerClass();
		TTMapperManager::registerClass();
		TTMirror::registerClass();
		TTOutput::registerClass();
		TTOutputAudio::registerClass();
		TTPreset::registerClass();
		TTPresetManager::registerClass();
        TTRamp::registerClass();
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
		
		s = "0.001";
		v = s;
		v.fromString();
		
		v.clear();
		s = "1";
		v = s;
		v.fromString();
		
		// Create the Modular application manager with no application inside
		TTObjectBaseInstantiate(kTTSym_ApplicationManager, TTObjectBaseHandle(&TTModularApplications), none);
		
		// Create a hash table to manage namespace selections
		TTModularNamespaces = new TTHash();
		
#ifdef TT_DEBUG
		TTLogMessage("Modular -- Version %s -- Debugging Enabled\n", TTMODULAR_VERSION_STRING);
#else
		TTLogMessage("Modular -- Version %s\n", TTMODULAR_VERSION_STRING);
#endif
	}
}