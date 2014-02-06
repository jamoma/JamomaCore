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

#if 0
#pragma mark -
#pragma mark Initialisation
#endif

// is the Modular library have been initilialized ?
static bool TTModularInitialized = false;

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTModularInit here ?
	return 0;
}
#endif

void TTModularInit(const char* binaries = NULL)
{
    // Initialized Foundation framework
	TTFoundationInit(binaries);
    
//#define TO_DEBUG
#ifdef TO_DEBUG
    
	TTObjectBasePtr test = NULL;
	TTObjectBaseInstantiate(TTSymbol("value.test"), &test, none);
	TTDataObjectBasePtr(test)->test(v);
    
#endif // TO_DEBUG
    
    // if Modular has not been initialized
	if (!TTModularInitialized) {
        
        TTModularInitialized = true;
        
        TTModular = new Modular(binaries);
    }
}

#if 0
#pragma mark -
#pragma mark Contructor, Destructor
#endif

 Modular::Modular(const char* binaries = NULL)
{
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
    
    // Create the application manager with no application inside
    mApplications = TTObject(kTTSym_ApplicationManager);
    
#ifdef TT_DEBUG
    TTLogMessage("Modular -- Version %s -- Debugging Enabled\n", TTMODULAR_VERSION_STRING);
#else
    TTLogMessage("Modular -- Version %s\n", TTMODULAR_VERSION_STRING);
#endif
}

 Modular::~Modular(void)
{
    // Release all senders
    
    // Release all receivers
    
    // Release all selections
    
    // Release all applications
}

#if 0
#pragma mark -
#pragma mark Applications management
#endif

TTErr Modular::ApplicationCreateLocal(const TTSymbol applicationName, const TTSymbol applicationVersion, const TTSymbol applicationAuthor, const TTSymbol applicationConfiguration = kTTSymEmpty)
{
    // if the local application doesn't exist yet
    if (!getLocalApplication) {
        
        TTValue		args, none;
        TTObject	anApplication, anXmlHandler;
        
        // create the application
        anApplication = TTObject(kTTSym_Application, applicationName);

        // set it as local application
        mApplications.set(TTSymbol("localApplication"), anApplication);
        
        // Read xml configuration file
        anXmlHandler = TTObject(kTTSym_XmlHandler);
        anXmlHandler.set(kTTSym_object, anApplication);
        anXmlHandler.send(kTTSym_Read, applicationConfiguration, none);
    }
    else
        TTLogMessage("Modular -- \"%s\" application already exists", getLocalApplicationName.c_str());
}

TTErr Modular::ApplicationCreateDistant(const TTSymbol applicationName);

TTErr Modular::ApplicationDump(const TTSymbol applicationName);

TTErr Modular::ApplicationWriteAsXml(const TTSymbol filepath);

TTErr Modular::ApplicationReadFromXml(const TTSymbol filepath);

TTErr Modular::ApplicationAttributeSet(const TTSymbol applicationName, const TTSymbol attribute, const TTValue& value);

TTErr Modular::ApplicationAttributeGet(const TTSymbol applicationName, const TTSymbol attribute, TTValue& value);

#if 0
#pragma mark -
#pragma mark Protocols management
#endif

TTErr Modular::ProtocolGetNames(TTValue& names);

TTErr Modular::ProtocolRegisterApplication(const TTSymbol protocolName, const TTSymbol applicationName);

TTErr Modular::ProtocolUnregisterApplication(const TTSymbol protocolName, const TTSymbol applicationName);

TTErr Modular::ProtocolGetAttributeNames(TTValue& names);

TTBoolean Modular::ProtocolIsAttributeInteger(const TTSymbol attribute);

TTBoolean Modular::ProtocolIsAttributeString(const TTSymbol attribute);

TTErr Modular::ProtocolSetIntegerAttribute(const TTSymbol applicationName, const TTSymbol attribute, const TTUInt32 value);

TTErr Modular::ProtocolSetStringAttribute(const TTSymbol applicationName, const TTSymbol attribute, const TTSymbol value);

#if 0
#pragma mark -
#pragma mark Datas management
#endif

TTErr Modular::DataCreate(const TTAddress address, void (*returnValueCallback) (void*, const TTValue&) = NULL, void* owner = NULL, TTSymbol service);

TTErr Modular::DataDelete(const TTAddress address);

TTErr Modular::DataAttributeSet(const TTAddress address, const TTSymbol attribute, const TTValue& value);

TTErr Modular::DataAttributeGet(const TTAddress address, const TTSymbol attribute, TTValue& value);

#if 0
#pragma mark -
#pragma mark Senders management
#endif

TTErr Modular::SenderCreate(const TTAddress address, const TTSymbol attribute = kTTSym_value);

TTErr Modular::SenderDelete(const TTAddress address, const TTSymbol attribute);

TTErr Modular::SenderUse(const TTAddress address, const TTSymbol attribute, const TTValue& value);

#if 0
#pragma mark -
#pragma mark Receivers management
#endif

TTErr Modular::ReceiverCreate(const TTAddress address, const TTSymbol attribute, void (*returnAddressAttributeAndValueCallback) (void*, const TTAddress address, const TTSymbol attribute, const TTValue&), void* owner = NULL);

TTErr Modular::ReceiverDelete(const TTAddress address, const TTSymbol attribute);

#if 0
#pragma mark -
#pragma mark State management
#endif

TTErr Modular::StateManagerReadFromXml(const TTSymbol filepath);

TTErr Modular::StateManagerWriteAsXml(const TTSymbol filepath);

TTErr Modular::StateManagerRecall(const TTSymbol name);

TTErr Modular::StateManagerRecall(const TTUInt32 number);

#if 0
#pragma mark -
#pragma mark Selection management
#endif

TTAddressItemPtr SelectionLookup(const TTSymbol selectionName)
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

#if 0
#pragma mark -
#pragma mark Addresses edition
#endif

TTAddress Modular::AddressEditNumericInstance(const TTSymbol integerFormatAddress, const TTUInt32 instanceNumber);

TTAddress Modular::AddressEditSymbolInstance(const TTSymbol symbolFormatAddress, const TTSymbol instanceSymbol);

TTErr Modular::AddressGetInstances(const TTAddress address, TTValue& instances);

