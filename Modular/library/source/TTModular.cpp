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

#include "TTModular.h"

// those classes are included here to avoid circular inclusion when they are included from TTModularIncludes.h
#include "TTInputAudio.h"
#include "TTOutputAudio.h"
#include "TTInput.h"
#include "TTOutput.h"

#if 0
#pragma mark -
#pragma mark Initialisation
#endif

// is the Modular library have been initilialized ?
static bool TTModularInitialized = false;

TTApplicationManagerPtr TTModularApplicationManager = NULL;
TTHashPtr TTModularSelections = NULL;

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTModularInit here ?
	return 0;
}
#endif

void TTModularInit(const char* binaries, bool loadFromBuiltinPaths)
{
    // Initialized Foundation framework
	TTFoundationInit(binaries, loadFromBuiltinPaths);
    
//#define TO_DEBUG
#ifdef TO_DEBUG
    
    TTValue t, out;
	TTObject test("nodelib.test");
	test.send("test", t, out);
    
#endif // TO_DEBUG
    
    // if Modular has not been initialized
	if (!TTModularInitialized) {
        
        TTModularInitialized = true;
        
        TTValue v, none;
        
        // Register classes -- both internal and external
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
		TTNodeInfo::registerClass();
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
        
        // Create a hash table to manage namespace selections
		TTModularSelections = new TTHash();
        
#ifdef TT_DEBUG
        TTLogMessage("Modular -- Version %s -- Debugging Enabled\n", TTMODULAR_VERSION_STRING);
#else
        TTLogMessage("Modular -- Version %s\n", TTMODULAR_VERSION_STRING);
#endif

    }
}

#if 0
#pragma mark -
#pragma mark Selection management
#endif

TTAddressItemPtr TTModularSelectionLookup(const TTSymbol selectionName)
{
    TTAddressItemPtr	aSelection = NULL;
	TTValue				v;
	
	if (selectionName != kTTSymEmpty && selectionName != kTTSym_none) {
		
		if (!TTModularSelections->lookup(selectionName, v)) {
            
			aSelection = TTAddressItemPtr((TTPtr)v[0]);
		
        } else {
            
			aSelection = new TTAddressItem();
			
			v = TTValue((TTPtr)aSelection);
			TTModularSelections->append(selectionName, v);
		}
	}
    
	return aSelection;
}

#if 0
#pragma mark -
#pragma mark Addresses edition
#endif

TTAddress TTModularAddressEditNumericInstance(const TTSymbol integerFormatAddress, const TTUInt32 instanceNumber)
{
    return kTTAdrsEmpty;
}

TTAddress TTModularAddressEditSymbolInstance(const TTSymbol symbolFormatAddress, const TTSymbol instanceSymbol)
{
    return kTTAdrsEmpty;
}

TTErr TTModularAddressGetInstances(const TTAddress address, TTValue& instances)
{
    return kTTErrGeneric;
}
