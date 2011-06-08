/* 
 * TTObject to handle application data structure
 * like a TTNodeDirectory and a hash tables of names
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplication.h"

#define thisTTClass			TTApplication
#define thisTTClassName		"Application"
#define thisTTClassTags		"application"

TT_MODULAR_CONSTRUCTOR,
mDirectory(NULL),
mName(kTTSymEmpty),
mVersion(kTTSymEmpty),
mPluginParameters(NULL),
mDirectoryListenersCache(NULL),
mAttributeListenersCache(NULL),
mAppToTT(NULL),
mTTToApp(NULL)
{
	arguments.get(0, &mName);
	arguments.get(1, &mVersion);
	
	addAttribute(Name, kTypeSymbol);
	addAttributeProperty(name, readOnly, YES);
	
	addAttribute(Version, kTypeSymbol);
	addAttributeProperty(version, readOnly, YES);
	
	addAttribute(Directory, kTypePointer);
	addAttributeProperty(directory, readOnly, YES);
	
	addAttributeWithSetter(PluginParameters, kTypePointer);
	
	addAttributeWithGetter(PluginNames, kTypeLocalValue);
	addAttributeProperty(pluginNames, readOnly, YES);
	
	addMessageWithArgument(Configure);

	addAttributeWithGetter(AllAppNames, kTypeLocalValue);
	addAttributeProperty(allAppNames, readOnly, YES);
	
	addAttributeWithGetter(AllTTNames, kTypeLocalValue);
	addAttributeProperty(allTTNames, readOnly, YES);
	
	addMessageWithArgument(AddDirectoryListener);
	addMessageWithArgument(AddAttributeListener);
	
	addMessageWithArgument(RemoveDirectoryListener);
	addMessageWithArgument(RemoveAttributeListener);
	
	addMessageWithArgument(ConvertToAppName);
	addMessageWithArgument(ConvertToTTName);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArgument(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArgument(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	addMessageWithArgument(ReadFromOpml);
	addMessageProperty(ReadFromOpml, hidden, YES);
	
	mDirectory = new TTNodeDirectory(mName);
	TT_ASSERT("NodeDirectory created successfully", mDirectory != NULL);
	
	mAppToTT = new TTHash();
	mTTToApp = new TTHash();
	
	mPluginParameters = new TTHash();
	
	mDirectoryListenersCache = new TTHash();
	mAttributeListenersCache = new TTHash();
}

TTApplication::~TTApplication()
{
	TTHashPtr		oldParameters;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	// delete PluginParameters
	mPluginParameters->getKeys(hk);
	for (i=0; i<mPluginParameters->getSize(); i++) {
		hk.get(i, &key);
		mPluginParameters->lookup(key, v);
		v.get(0, (TTPtr*)&oldParameters);
		
		delete oldParameters;
	}
	delete mPluginParameters;
	
	// TODO : delete observers
	
	delete mDirectory;
	
	delete mTTToApp;
	delete mAppToTT;
}

TTErr TTApplication::getPluginNames(TTValue& value)
{
	return mPluginParameters->getKeys(value);
}

TTErr TTApplication::setPluginParameters(const TTValue& value)
{
	TTValue			hk, v;
	TTSymbolPtr		pluginName;
	TTHashPtr		parameters;
	TTUInt8			i;
	
	value.get(0, (TTPtr*)mPluginParameters);
	
	// for all plugins used by the application
	mPluginParameters->getKeys(hk);
	for (i=0; i<mPluginParameters->getSize(); i++) {
		hk.get(i, &pluginName);
		mPluginParameters->lookup(pluginName, v);
		v.get(0, (TTPtr*)&parameters);
		
		// if local application : reset plugin reception parameters
		if (mName == kTTSym_localApplicationName) {
			v = TTValue((TTPtr)parameters);
			getPlugin(pluginName)->setAttributeValue(TT("parameters"), v);
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplication::getAllAppNames(TTValue& value)
{	
	if (mAppToTT->isEmpty())
		value = kTTSymEmpty;
	else
		mAppToTT->getKeys(value);
	
	return kTTErrNone;
}

TTErr TTApplication::getAllTTNames(TTValue& value)
{	
	if (mTTToApp->isEmpty())
		value = kTTSymEmpty;
	else
		mTTToApp->getKeys(value);
	
	return kTTErrNone;
}

TTErr TTApplication::Configure(const TTValue& value)
{
	TTPluginHandlerPtr	aPlugin;
	TTSymbolPtr			pluginName, parameterName;
	TTHashPtr			parameters;
	TTValue				v;
	TTErr				err;
	
	if (value.getSize() > 2) {
		value.get(0, &pluginName);
		value.get(1, &parameterName);
		
		err = mPluginParameters->lookup(pluginName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&parameters);
			
			err = parameters->lookup(parameterName, v);
			
			if (!err) {
				
				parameters->remove(parameterName);
				
				v.clear();
				v.copyFrom(value, 2);
				
				err = parameters->append(parameterName, v);
				
				// if local application : set plugin reception parameters
				// else : do nothing for distant application
				if (!err && mName == kTTSym_localApplicationName) {
					if (aPlugin = getPlugin(pluginName)) {
						v = TTValue((TTPtr)parameters);
						aPlugin->setAttributeValue(TT("parameters"), v);
					}
				}
			
				return err;
			}
		}
		// prepare an empty parameters table for this plugin
		// and then retry configuration
		else {
			if (aPlugin = getPlugin(pluginName)) {
				
				aPlugin->getAttributeValue(TT("parameterNames"), v);
				
				parameters = new TTHash();
				for (TTInt32 i=0; i<v.getSize(); i++) {
					v.get(i, &parameterName);
					parameters->append(parameterName, kTTValNONE);
				}
				
				v = TTValue((TTPtr)parameters);
				mPluginParameters->append(pluginName, v);
				
				Configure(value);
			}
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::ConvertToAppName(TTValue& value)
{
	TTValue				c;
	TTSymbolPtr			ttName;
	TTSymbolPtr			appName;
	
	// if there is only 1 symbol : replace value directly by the founded one.
	// because it's possible to have conversion containing several appNames for 1 ttname
	if (value.getSize() == 1) 
		if (value.getType(0) == kTypeSymbol){
			value.get(0, &ttName);
			if (!this->mTTToApp->lookup(ttName, c))
				value = c;
			return kTTErrNone;
		}
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i=0; i<value.getSize(); i++)
		if (value.getType(i) == kTypeSymbol) {
			value.get(i, &ttName);
			if (!this->mTTToApp->lookup(ttName, c)) {
				c.get(0, &appName);
				value.set(i, appName);
			}
		}
	
	return kTTErrNone;
}

TTErr TTApplication::ConvertToTTName(TTValue& value)
{
	TTValue				c;
	TTSymbolPtr			appName;
	TTSymbolPtr			ttName;
	
	// if there is only 1 symbol : replace value directly by the founded one.
	// because it's possible to have conversion containing several ttNames for 1 appName
	if (value.getSize() == 1) 
		if (value.getType(0) == kTypeSymbol){
			value.get(0, &appName);
			if (!this->mAppToTT->lookup(appName, c))
				value = c;
			return kTTErrNone;
		}
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i=0; i<value.getSize(); i++)
		if (value.getType(i) == kTypeSymbol) {
			value.get(i, &appName);
			if (!this->mAppToTT->lookup(appName, c)) {
				c.get(0, &ttName);
				value.set(i, ttName);
			}
		}
	
	return kTTErrNone;
}

TTErr TTApplication::AddDirectoryListener(const TTValue& value)
{
	TTPluginHandlerPtr	aPlugin;
	TTApplicationPtr	appToNotify;
	TTNodeAddressPtr	whereToListen;
	TTObjectPtr			returnValueCallback;
	TTValuePtr			returnValueBaton;
	TTValue				cacheElement;
	TTErr				err;
	
	value.get(0, (TTPtr*)&aPlugin);
	value.get(1, (TTPtr*)&appToNotify);
	value.get(2, &whereToListen);
	
	// prepare a callback based on TTApplicationAttributeCallback
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	
	returnValueBaton = new TTValue();
	*returnValueBaton = value;
	
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTPluginHandlerDirectoryCallback));
	
	err = mDirectory->addObserverForNotifications(whereToListen, *returnValueCallback);
	
	if (!err) {
		
		// cache the observer in the directoryListenersCache
		cacheElement.append((TTPtr)returnValueCallback);
		mDirectoryListenersCache->append(whereToListen, cacheElement); // TODO : have many observers for the same address ? (add plugin info ?)
		
		return kTTErrNone;
	}
	else
		; // TODO : observe the directory in order to add the listener later
	
	return kTTErrGeneric;
}

TTErr TTApplication::RemoveDirectoryListener(const TTValue& value)
{
	TTNodeAddressPtr	whereToListen;
	TTObjectPtr			returnValueCallback;
	TTValue				cacheElement;
	TTErr				err;
	
	value.get(0, &whereToListen);
	
	// get the observer in the directoryListenersCache
	err = mDirectoryListenersCache->lookup(whereToListen, cacheElement);
	
	if (!err) {
		cacheElement.get(0, (TTPtr*)&returnValueCallback);
		mDirectory->removeObserverForNotifications(whereToListen, *returnValueCallback);
		TTObjectRelease(TTObjectHandle(&returnValueCallback));
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::AddAttributeListener(const TTValue& value)
{
	TTPluginHandlerPtr	aPlugin;
	TTApplicationPtr	appToNotify;
	TTNodeAddressPtr	whereToListen, key;
	TTSymbolPtr			attributeToListen;
	TTNodePtr			nodeToListen;
	TTObjectPtr			anObject, returnValueCallback;
	TTAttributePtr		anAttribute;
	TTValuePtr			returnValueBaton;
	TTValue				cacheElement;
	TTErr				err;
	
	value.get(0, (TTPtr*)&aPlugin);
	value.get(1, (TTPtr*)&appToNotify);
	value.get(2, &whereToListen);
	value.get(3, &attributeToListen);
	
	err = mDirectory->getTTNode(whereToListen, &nodeToListen);
	
	if (!err) {
		if (anObject = nodeToListen->getObject()) {
			
			// create an Attribute observer 
			anAttribute = NULL;
			err = anObject->findAttribute(attributeToListen, &anAttribute);
			
			if (!err) {
				// prepare a callback based on TTApplicationAttributeCallback
				returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
				TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
				
				returnValueBaton = new TTValue();
				*returnValueBaton = value;
				
				returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
				returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTPluginHandlerAttributeCallback));
				
				anAttribute->registerObserverForNotifications(*returnValueCallback);
				
				// cache the listener in the attributeListenersCache
				cacheElement.append((TTPtr)returnValueCallback);
				key = whereToListen->appendAttribute(attributeToListen);
				mAttributeListenersCache->append(key, cacheElement); // TODO : have many observers for the same address:attribute ? (add plugin info ?)
				
				return kTTErrNone;
			}
		}
	}
	else
		; // TODO : observe the directory in order to add the listener later
	
	return kTTErrGeneric;
}

TTErr TTApplication::RemoveAttributeListener(const TTValue& value)
{
	TTNodeAddressPtr	whereToListen;
	TTSymbolPtr			attributeToListen, key;
	TTNodePtr			nodeToListen;
	TTObjectPtr			anObject, returnValueCallback;
	TTAttributePtr		anAttribute;
	TTValue				cacheElement;
	TTErr				err;
	
	value.get(0, &whereToListen);
	value.get(1, &attributeToListen);
	
	err = mDirectory->getTTNode(whereToListen, &nodeToListen);
	
	if (!err) {
		if (anObject = nodeToListen->getObject()) {
			
			// delete Attribute observer 
			anAttribute = NULL;
			err = anObject->findAttribute(attributeToListen, &anAttribute);
			
			if (!err) {
				// get the listener in the attributeListenersCache
				key = whereToListen->appendAttribute(attributeToListen);
				
				err = mAttributeListenersCache->lookup(key, cacheElement);
				
				if (!err) {
					cacheElement.get(0, (TTPtr*)&returnValueCallback);
					anAttribute->unregisterObserverForNotifications(*returnValueCallback);
					TTObjectRelease(TTObjectHandle(&returnValueCallback));
					return kTTErrNone;
				}
			}
		}
	}

	return kTTErrGeneric;
}

TTErr TTApplication::WriteAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbolPtr			pluginName, parameterName;
	TTString			aString;
	TTHashPtr			parameters;
    TTValue				keys, p_keys, v;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	
	// For each plugin
	mPluginParameters->getKeys(keys);
	for (TTUInt16 i=0; i<keys.getSize(); i++) {
		
		keys.get(i, &pluginName);
		mPluginParameters->lookup(pluginName, v);
		v.get(0, (TTPtr*)&parameters);
		
		// Start "plugin" xml node
		xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "plugin");
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "name", "%s", BAD_CAST pluginName->getCString());
		
		// For each parameter
		parameters->getKeys(p_keys);
		for (TTUInt16 j=0; j<p_keys.getSize(); j++) {
			p_keys.get(j, &parameterName);
			parameters->lookup(parameterName, v);
			v.toString();
			v.get(0, aString);
			xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST parameterName->getCString(), "%s", BAD_CAST aString.data());
		}
		
		// End "plugin" xml node
		xmlTextWriterEndElement(aXmlHandler->mWriter);
	}
	
	
	/* to -- do we need to write the Application name table ?
	 TTSymbolPtr			k;
	 TTString			aString;
	 TTValue				v, keys;
	 TTUInt16			i;
	 
	 // Write ApplicationNames table
	 xmlTextWriterWriteComment(aXmlHandler->mWriter, BAD_CAST "Conversion table");
	 xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "conversionTable");
	 
	 mAppToTT->getKeys(keys);
	 for (i = 0; i < keys.getSize(); i++) {
	 
	 keys.get(i, &k);
	 mAppToTT->lookup(k, v);
	 
	 // Don't write kTTValNONE
	 if (v == kTTValNONE)
	 continue;
	 
	 v.toString();
	 v.get(0, aString);
	 
	 xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "entry");
	 xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "App", BAD_CAST k->getCString());
	 xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "TT", BAD_CAST aString.data());
	 xmlTextWriterEndElement(aXmlHandler->mWriter);
	 }
	 
	 // End ApplicationNames writing
	 xmlTextWriterEndElement(aXmlHandler->mWriter);
	 */
	
	return kTTErrNone;
}

TTErr TTApplication::ReadFromXml(const TTValue& value)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTString		anAppKey, aTTKey;
	TTSymbolPtr		pluginName, parameterName;
	TTValue			appValue, ttValue, v;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// Switch on the name of the XML node
	
	// Starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {
		mAppToTT = new TTHash();
		return kTTErrNone;
	}
	
	// Ends reading
	if (aXmlHandler->mXmlNodeName == TT("end"))
		return kTTErrNone;
	
	// Comment Node
	if (aXmlHandler->mXmlNodeName == TT("#comment"))
		return kTTErrNone;
	
	// Entry node
	if (aXmlHandler->mXmlNodeName == TT("entry")) {
	
		// get App Symbol
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "App") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), appValue);
			v = appValue;
			v.toString();
			v.get(0, anAppKey);
		}
		
		// get TT Value
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "TT") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), ttValue);
			v = ttValue;
			v.toString();
			v.get(0, aTTKey);
		}
		
		mAppToTT->append(TT(anAppKey), ttValue);		// here we register the entire value to handle 1 to many conversion
		mTTToApp->append(TT(aTTKey), appValue);			// here we register the entire value to handle 1 to many conversion
	}
	
	// Plugin node
	if (aXmlHandler->mXmlNodeName == TT("plugin")) {
		
		// get the plugin name
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("name"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &pluginName);
		}
		
		// get all plugin attributes and their value
		while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
			
			// get parameter name
			aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
			if (v.getType() == kTypeSymbol) {
				v.get(0, &parameterName);
				
				// get parameter value
				aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
				
				// configure a parameter of a plugin for the application
				v.prepend(parameterName);
				v.prepend(pluginName);
				Configure(v);
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplication::ReadFromOpml(const TTValue& value)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbolPtr		relativeAddress, objectName, attributeName;
	TTObjectPtr		anObject;
	TTValue			v;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// Switch on the name of the XML node
	
	// Starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {
		// TODO : clear directory
		return kTTErrNone;
	}
	
	// Ends reading
	if (aXmlHandler->mXmlNodeName == TT("end"))
		return kTTErrNone;
	
	// Comment Node
	if (aXmlHandler->mXmlNodeName == TT("#comment"))
		return kTTErrNone;
	
	// Outline node
	if (aXmlHandler->mXmlNodeName == TT("outline")) {
		
		// get the relative address
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("text"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &relativeAddress);
		}
		
		// get the object name
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("object"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &objectName);
		}
		
		// TODO : instantiate Mirror object for distant application
		
		// TODO : register object into the directory
		
		// get all object attributes and their value
		while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
			
			// get attribute name
			aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
			if (v.getType() == kTypeSymbol) {
				v.get(0, &attributeName);
				
				// get attribute value
				aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
				
				// set attribute
				anObject->setAttributeValue(attributeName, v);
			}
		}
	}
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTNodeDirectoryPtr TTApplicationGetDirectory(TTNodeAddressPtr anAddress)
{
	TTSymbolPtr			applicationName;
	TTApplicationPtr	anApplication;
	
	if (TTModularApplications && anAddress != kTTAdrsEmpty) {
		
		applicationName = anAddress->getDevice();
		
		if (applicationName != NO_DEVICE)
			anApplication = TTApplicationManagerGetApplication(applicationName);
		else
			anApplication = TTApplicationManagerGetApplication(kTTSym_localApplicationName);
		
		if (anApplication)
			return anApplication->mDirectory;
	}
	
	return NULL;
}

TTSymbolPtr TTApplicationConvertAppNameToTTName(TTSymbolPtr anAppName)
{
	TTErr		err;
	TTValue		c;
	TTSymbolPtr converted = anAppName;
	
	if (TTModularApplications) {
		
		err = TTApplicationManagerGetApplication(kTTSym_localApplicationName)->mAppToTT->lookup(anAppName, c);
		
		if (!err)
			c.get(0, &converted);
		
	}
	
	return converted;
}

TTSymbolPtr TTApplicationConvertTTNameToAppName(TTSymbolPtr aTTName)
{
	TTErr		err;
	TTValue		c;
	TTSymbolPtr converted = kTTSymEmpty;
	
	if (TTModularApplications) {
		
		err = TTApplicationManagerGetApplication(kTTSym_localApplicationName)->mTTToApp->lookup(aTTName, c);
		
		if (!err)
			c.get(0, &converted);
		
	}
	
	return converted;
}