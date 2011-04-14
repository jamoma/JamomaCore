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
#include "Plugin.h"

#define thisTTClass			TTApplication
#define thisTTClassName		"Application"
#define thisTTClassTags		"application"

TT_MODULAR_CONSTRUCTOR,
mDirectory(NULL),
mName(kTTSymEmpty),
mVersion(kTTSymEmpty),
mPluginParameters(NULL),
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
	
	addAttribute(PluginNames, kTypeLocalValue);
	addAttributeProperty(pluginNames, readOnly, YES);

	addAttributeWithGetter(AllAppNames, kTypeLocalValue);
	addAttributeProperty(allAppNames, readOnly, YES);
	
	addAttributeWithGetter(AllTTNames, kTypeLocalValue);
	addAttributeProperty(allTTNames, readOnly, YES);
	
	addMessageWithArgument(ConvertToAppName);
	addMessageWithArgument(ConvertToTTName);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArgument(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArgument(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	mDirectory = new TTNodeDirectory(mName);
	TT_ASSERT("NodeDirectory created successfully", mDirectory != NULL);
	
	mAppToTT = new TTHash();
	mTTToApp = new TTHash();
	
	mPluginParameters = new TTHash();
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
		hk.get(i,(TTSymbolPtr*)&key);
		mPluginParameters->lookup(key, v);
		v.get(0, (TTPtr*)&oldParameters);
		
		delete oldParameters;
	}
	delete mPluginParameters;
	delete mDirectory;
	
	delete mTTToApp;
	delete mAppToTT;
}

TTErr TTApplication::setPluginParameters(const TTValue& value)
{
	TTValue			hk, v;
	TTSymbolPtr		pluginName;
	TTUInt8			i;
	
	value.get(0, (TTPtr*)mPluginParameters);
	
	// for all plugins used by the application
	mPluginParameters->getKeys(hk);
	for (i=0; i<mPluginParameters->getSize(); i++) {
		hk.get(i,(TTSymbolPtr*)&pluginName);
		
		// if local application : reset plugin reception parameters
		if (mName == kTTSym_localApplicationName)
			getPlugin(pluginName)->commDefineParameters(mPluginParameters);
			
		// else : reset distant application from the plugin
		else {
			; // TODO : aPlugin->applicationRemove(applicationName);
			//aPlugin->applicationAdd(applicationName, parameters);
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
	TTSymbolPtr		pluginName, attributeName;
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
		
		TTHashPtr parameters = new TTHash();
		
		// get all plugin attributes and their value
		while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
			
			// get attribute name
			aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
			if (v.getType() == kTypeSymbol) {
				v.get(0, &attributeName);
				
				// get attribute value
				aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
				
				// fill the hash table
				parameters->append(attributeName, v);
			}
		}
		
		// register the hash table using the plugin name
		v = TTValue((TTPtr)parameters);
		mPluginParameters->append(pluginName, v);
	}
	
	return kTTErrNone;
}
