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

// set the Modular object to NULL
Modular* TTModular = NULL;

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTModularInit here ?
	return 0;
}
#endif

void TTModularInit(const char* binaries)
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

 Modular::Modular(const char* binaries)
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
    
    // Théo : this is a very strange bug : the two first toString() parsing on number failed !?!
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
    mApplicationManager = TTObject(kTTSym_ApplicationManager);
    
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
#pragma mark Backup management
#endif

TTErr Modular::WriteAsXml(const TTSymbol filepath)
{
    TTValue     none;
    TTObject    anXmlHandler = TTObject(kTTSym_XmlHandler);
    
    // Set the application manager as the writer object
    anXmlHandler.set(kTTSym_object, mApplicationManager);
    
    // Write the file
    return anXmlHandler.send(kTTSym_Write, filepath, none);
}

TTErr Modular::ReadFromXml(const TTSymbol filepath)
{
    TTValue     none;
    TTObject    anXmlHandler = TTObject(kTTSym_XmlHandler);
    
    // Set the application manager as the reader object
    anXmlHandler.set(kTTSym_object, mApplicationManager);
    
    // Read the file
    return anXmlHandler.send(kTTSym_Read, filepath, none);
}

#if 0
#pragma mark -
#pragma mark Applications management
#endif

TTErr Modular::ApplicationCreateLocal(const TTSymbol applicationName, const TTSymbol applicationVersion, const TTSymbol applicationAuthor, const TTSymbol applicationConfiguration)
{
    // if the local application doesn't exist yet
    if (ApplicationGetLocalName() != applicationName) {
        
        TTValue		args, none;
        TTObject	anApplication, anXmlHandler;
        
        // Create the application
        anApplication = TTObject(kTTSym_Application, applicationName);

        // Set it as local application
        mApplicationManager.set(TTSymbol("applicationLocal"), anApplication);
        
        // Read xml configuration file
        anXmlHandler = TTObject(kTTSym_XmlHandler);
        anXmlHandler.set(kTTSym_object, anApplication);
        anXmlHandler.send(kTTSym_Read, applicationConfiguration, none);
        
        return kTTErrNone;
    }
        
    TTLogMessage("Modular::ApplicationCreateLocal : \"%s\" application already exists", applicationName.c_str());
    return kTTErrGeneric;
}

TTErr Modular::ApplicationCreateDistant(const TTSymbol applicationName)
{
    // if the application doesn't exist yet
    if (ApplicationGetObject(applicationName) == NULL) {
        
        TTValue		args, none;
        TTObject	anApplication, anXmlHandler;
        
        // Create the application
        anApplication = TTObject(kTTSym_Application, applicationName);
        
        return kTTErrNone;
    }
    
    TTLogMessage("Modular::ApplicationCreateDistant : \"%s\" application already exists", applicationName.c_str());
    return kTTErrGeneric;
}

TTErr Modular::ApplicationGetNames(TTValue& applicationNames)
{
    return mApplicationManager.get(TTSymbol("applicationNames"), applicationNames);
}

TTSymbol Modular::ApplicationGetLocalName()
{
    TTValue v;
    
    if (!mApplicationManager.get(TTSymbol("applicationLocalName"), v))
        return v[0];
    
    return kTTSymEmpty;
}

TTErr Modular::ApplicationDump(const TTSymbol applicationName)
{
    TTValue             v = applicationName;
    TTObject            anApplication;
    TTNodeDirectoryPtr  aDirectory;
    
    if (!mApplicationManager.get("application", v)) {
        
        anApplication = v[0];
        
        anApplication.get("directory", v);
        
        aDirectory = TTNodeDirectoryPtr(TTPtr(v[0]));
        
        // TODO : dump the directory
        return kTTErrGeneric;
    }
    
    return kTTErrGeneric;
}

TTErr Modular::ApplicationAttributeSet(const TTSymbol applicationName, const TTSymbol attribute, const TTValue& value)
{
    TTValue     v = applicationName;
    TTObject    anApplication;
    
    if (!mApplicationManager.get("application", v)) {
        
        anApplication = v[0];
        
        return anApplication.set(attribute, value);
    }
    
    return kTTErrGeneric;
}

TTErr Modular::ApplicationAttributeGet(const TTSymbol applicationName, const TTSymbol attribute, TTValue& value)
{
    TTValue     v = applicationName;
    TTObject    anApplication;
    
    if (!mApplicationManager.get("application", v)) {
        
        anApplication = v[0];
        
        return anApplication.get(attribute, value);
    }
    
    return kTTErrGeneric;
}

TTValue Modular::ApplicationGetProtocolNames(const TTSymbol applicationName)
{
    TTValue		protocolNames, applicationProtocols, result;
	TTSymbol    protocolName;
	TTBoolean	isRegistered;
	
	ProtocolGetNames(protocolNames);
    
	for (TTUInt8 i = 0; i < protocolNames.size(); i++) {
		
		protocolName = protocolNames[i];
		ProtocolGetObject(protocolName)->sendMessage(TTSymbol("isRegistered"), applicationName, result);
		isRegistered = result[0];
		
		if (isRegistered)
			applicationProtocols.append(protocolName);
    }
	
	return applicationProtocols;
}

TTObjectBasePtr Modular::ApplicationGetObject(const TTSymbol applicationName)
{
    TTValue v = applicationName;
    
    if (!mApplicationManager.get("application", v))
        return v[0];
    else
        return NULL;
}

#if 0
#pragma mark -
#pragma mark Protocols management
#endif

TTErr Modular::ProtocolGetNames(TTValue& protocolNames)
{
    return mApplicationManager.get("protocolNames", protocolNames);
}

TTBoolean Modular::ProtocolExists(const TTSymbol protocolName)
{
    TTValue     protocolNames;
    TTBoolean   found = NO;
    
    mApplicationManager.get("protocolNames", protocolNames);
    
    for (TTElementIter it = protocolNames.begin() ; it != protocolNames.end() ; it++) {
        
        found = TTSymbol(*it) == protocolName;
        
        if (found)
            break;
    }
    
    return found;
}

TTErr Modular::ProtocolRegisterApplication(const TTSymbol protocolName, const TTSymbol applicationName)
{
    TTValue none;
    return ProtocolGetObject(protocolName)->sendMessage(TTSymbol("registerApplication"), applicationName, none);
}

TTErr Modular::ProtocolUnregisterApplication(const TTSymbol protocolName, const TTSymbol applicationName)
{
    TTValue none;
    return ProtocolGetObject(protocolName)->sendMessage(TTSymbol("unregisterApplication"), applicationName, none);
}

TTErr Modular::ProtocolGetAttributeNames(const TTSymbol protocolName, TTValue& names)
{
    return ProtocolGetObject(protocolName)->getAttributeValue(TTSymbol("parameterNames"), names);       // théo : this need to be tested
}

TTBoolean Modular::ProtocolIsAttributeInteger(const TTSymbol attribute)
{
    return NO;
}

TTBoolean Modular::ProtocolIsAttributeSymbol(const TTSymbol attribute)
{
    return NO;
}

TTErr Modular::ProtocolSetIntegerAttribute(const TTSymbol applicationName, const TTSymbol attribute, const TTUInt32 value)
{
    return kTTErrGeneric;
}

TTErr Modular::ProtocolSetSymbolAttribute(const TTSymbol applicationName, const TTSymbol attribute, const TTSymbol value)
{
    return kTTErrGeneric;
}

TTObjectBasePtr Modular::ProtocolGetObject(const TTSymbol protocolName)
{
    TTValue v = protocolName;
    
    if (!mApplicationManager.get("protocol", v))
        return v[0];
    else
        return NULL;
}

#if 0
#pragma mark -
#pragma mark Datas management
#endif

TTErr Modular::DataCreate(const TTAddress address, void (*returnValueCallback) (void*, const TTValue&), void* owner, TTSymbol service)
{
    return kTTErrGeneric;
}

TTErr Modular::DataDelete(const TTAddress address)
{
    return kTTErrGeneric;
}

TTErr Modular::DataAttributeSet(const TTAddress address, const TTSymbol attribute, const TTValue& value)
{
    return kTTErrGeneric;
}

TTErr Modular::DataAttributeGet(const TTAddress address, const TTSymbol attribute, TTValue& value)
{
    return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Senders management
#endif

TTErr Modular::SenderCreate(const TTAddress address, const TTSymbol attribute)
{
    return kTTErrGeneric;
}

TTErr Modular::SenderDelete(const TTAddress address, const TTSymbol attribute)
{
    return kTTErrGeneric;
}

TTErr Modular::SenderUse(const TTAddress address, const TTSymbol attribute, const TTValue& value)
{
    return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Receivers management
#endif

TTErr Modular::ReceiverCreate(const TTAddress address, const TTSymbol attribute, void (*returnAddressAttributeAndValueCallback) (void*, const TTAddress address, const TTSymbol attribute, const TTValue&), void* owner)
{
    return kTTErrGeneric;
}

TTErr Modular::ReceiverDelete(const TTAddress address, const TTSymbol attribute)
{
    return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark State management
#endif

TTErr Modular::StateManagerReadFromXml(const TTSymbol filepath)
{
    return kTTErrGeneric;
}

TTErr Modular::StateManagerWriteAsXml(const TTSymbol filepath)
{
    return kTTErrGeneric;
}

TTErr Modular::StateManagerRecall(const TTSymbol name)
{
    return kTTErrGeneric;
}

TTErr Modular::StateManagerRecall(const TTUInt32 number)
{
    return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Selection management
#endif

TTAddressItemPtr Modular::SelectionLookup(const TTSymbol selectionName)
{
    TTAddressItemPtr	aSelection = NULL;
	TTValue				v;
	
	if (selectionName != kTTSymEmpty && selectionName != kTTSym_none) {
		
		if (!mSelections.lookup(selectionName, v)) {
            
			aSelection = TTAddressItemPtr((TTPtr)v[0]);
		
        } else {
            
			aSelection = new TTAddressItem();
			
			v = TTValue((TTPtr)aSelection);
			mSelections.append(selectionName, v);
		}
	}
    
	return aSelection;
}

#if 0
#pragma mark -
#pragma mark Addresses edition
#endif

TTAddress Modular::AddressEditNumericInstance(const TTSymbol integerFormatAddress, const TTUInt32 instanceNumber)
{
    return kTTAdrsEmpty;
}

TTAddress Modular::AddressEditSymbolInstance(const TTSymbol symbolFormatAddress, const TTSymbol instanceSymbol)
{
    return kTTAdrsEmpty;
}

TTErr Modular::AddressGetInstances(const TTAddress address, TTValue& instances)
{
    return kTTErrGeneric;
}
