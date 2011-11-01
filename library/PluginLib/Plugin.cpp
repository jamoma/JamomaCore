/*
 * A Plugin interface
 * Copyright © 2011, Laurent Garnier, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Plugin.h"

#define thisTTClass		Plugin

/****************************************************************************************************/

Plugin::Plugin(TTValue& arguments) :
TTObject(arguments),
mApplicationManager(NULL),
mLocalApplicationName(kTTSymEmpty),
mDistantApplicationParameters(NULL)
{
	arguments.get(0, (TTPtr*)&mApplicationManager);
	
	addAttributeWithGetter(LocalApplicationName, kTypeSymbol);
	addAttributeProperty(localApplicationName, readOnly, YES);
	
	registerAttribute(TT("localApplicationParameters"), kTypePointer, NULL, (TTGetterMethod)& Plugin::getLocalApplicationParameters, (TTSetterMethod)& Plugin::setLocalApplicationParameters);
	
	registerAttribute(TT("distantApplicationNames"), kTypeLocalValue, NULL, (TTGetterMethod)& Plugin::getDistantApplicationNames);
	registerAttribute(TT("distantApplicationParameters"), kTypePointer, NULL, (TTGetterMethod)& Plugin::getDistantApplicationParameters, (TTSetterMethod)& Plugin::setDistantApplicationParameters);

	addAttribute(Name, kTypeSymbol);
	addAttributeProperty(name, readOnly, YES);

	addAttribute(Version, kTypeSymbol);
	addAttributeProperty(version, readOnly, YES);

	addAttribute(Author, kTypeSymbol);
	addAttributeProperty(author, readOnly, YES);

	addAttribute(Exploration, kTypeBoolean);
	addAttributeProperty(exploration, readOnly, YES);

	addMessageWithArguments(registerLocalApplication);
	addMessageWithArguments(unregisterLocalApplication);
	
	addMessageWithArguments(registerDistantApplication);
	addMessageWithArguments(unregisterDistantApplication);
	
	addMessage(Run);
	addMessage(Stop);
	addMessage(Scan);
	
	mDistantApplicationParameters = new TTHash();
}

Plugin::~Plugin()
{
	TTValue		v, distantApplicationNames;
	TTSymbolPtr aDistantApplicationName;
	TTHashPtr	distantApplicationParameters;
	
	// for each distant application registered
	mDistantApplicationParameters->getKeys(distantApplicationNames);
	for (TTUInt32 i=0; i<distantApplicationNames.getSize(); i++) {
		
		distantApplicationNames.get(i, &aDistantApplicationName);
		mDistantApplicationParameters->lookup(aDistantApplicationName, v);
		v.get(0, (TTPtr*)&distantApplicationParameters);
		
		delete distantApplicationParameters;
	}
	
	delete mDistantApplicationParameters;
}

TTErr Plugin::setApplicationManager(const TTValue& value)
{
	value.get(0, (TTPtr*)&mApplicationManager);
	return kTTErrNone;
}

TTErr Plugin::getParameterNames(TTValue& value)
{
	TTValue		attributeNames;
	TTSymbolPtr	attributeName;
	
	// filter all default attributes (Name, Version, Author, Exploration, ...)
	this->getAttributeNames(attributeNames);
	
	value.clear();
	for (TTUInt8 i=0; i<attributeNames.getSize(); i++) {
		attributeNames.get(0, &attributeName);
		
		if (attributeName == TT("name")		||
			attributeName == TT("version")	||
			attributeName == TT("author")	||
			attributeName == TT("exploration"))
			continue;
		
		value.append(attributeName);
	}
	
	return kTTErrNone;
}

TTErr Plugin::registerLocalApplication(const TTValue& inputValue, TTValue& outputValue)
{
	mLocalApplicationName = inputValue;
	return kTTErrNone;
}

TTErr Plugin::unregisterLocalApplication(const TTValue& inputValue, TTValue& outputValue)
{
	mLocalApplicationName = kTTSymEmpty;
	return kTTErrNone;
}

TTErr Plugin::getLocalApplicationName(TTValue& value)
{
	value = mLocalApplicationName;
	return kTTErrNone;
}

TTErr Plugin::getLocalApplicationParameters(TTValue& value)
{
	TTValue		parametersNames, parameterValue;
	TTSymbolPtr parameterName;
	TTHashPtr	parametersTable = new TTHash();
	
	this->getParameterNames(parametersNames);
	
	for (TTUInt8 i=0; i<parametersNames.getSize(); i++) {
		parametersNames.get(i, &parameterName);
		
		this->getAttributeValue(parameterName, parameterValue);
		parametersTable->append(parameterName, parameterValue);
	}
	
	value.set(0, (TTPtr)parametersTable);
	
	return kTTErrNone;
}

TTErr Plugin::setLocalApplicationParameters(TTValue& value)
{
	TTValue		parametersNames, parameterValue;
	TTSymbolPtr parameterName;
	TTHashPtr	parametersTable = NULL;
	
	value.get(0, (TTPtr*)&parametersTable);
	
	if (parametersTable) {
		
		parametersTable->getKeys(parametersNames);
		
		for (TTUInt8 i=0; i<parametersNames.getSize(); i++) {
			
			parametersNames.get(i, &parameterName);
			parametersTable->lookup(parameterName, parameterValue);
			this->setAttributeValue(parameterName, parameterValue);
		}
	}
	
	return kTTErrNone;
}

TTErr Plugin::registerDistantApplication(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbolPtr applicationName, parameterName;
	TTHashPtr	applicationParameters = new TTHash();
	TTValue		v, parameterNames;
	TTErr		err;
	
	inputValue.get(0, &applicationName);
	
	// Check the application is not already registered
	err = mDistantApplicationParameters->lookup(applicationName, v);
	
	if (err) {
		
		// prepare parameters table
		this->getParameterNames(parameterNames);
		for (TTUInt32 i=0; i<parameterNames.getSize(); i++) {
			parameterNames.get(i, &parameterName);
			applicationParameters->append(parameterName, kTTValNONE);
		}
		
		// add the parameters table into mDistantApplicationParameters
		v.append((TTPtr)applicationParameters);
		return mDistantApplicationParameters->append(applicationName, v);
	}
	
	return kTTErrGeneric;
}

TTErr Plugin::unregisterDistantApplication(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbolPtr applicationName;
	TTHashPtr	applicationParameters;
	TTValue		v, parameterNames;
	TTErr		err;
	
	inputValue.get(0, &applicationName);
	
	// Check the application is registered
	err = mDistantApplicationParameters->lookup(applicationName, v);
	
	if (!err) {
		
		v.get(0, (TTPtr*)&applicationParameters);
		delete applicationParameters;
		
		mDistantApplicationParameters->remove(applicationName);
	}
	
	return kTTErrGeneric;
}

TTErr Plugin::getDistantApplicationNames(TTValue& value)
{
	return mDistantApplicationParameters->getKeys(value);
}

TTErr Plugin::getDistantApplicationParameters(TTValue& value)
{
	TTSymbolPtr distantApplicationName;
	
	value.get(0, &distantApplicationName);
	
	return mDistantApplicationParameters->lookup(distantApplicationName, value);
}

TTErr Plugin::setDistantApplicationParameters(TTValue& value)
{
	TTValue		v;
	TTSymbolPtr applicationName;
	TTHashPtr	applicationParameters = NULL;
	TTErr		err;
	
	// set all application parameters using a TTHash
	if (value.getSize() == 2 && value.getType(0) == kTypeSymbol && value.getType(1) == kTypePointer) {
		value.get(0, &applicationName);
		
		// Check the application is registered
		err = mDistantApplicationParameters->lookup(applicationName, v);
		
		if (!err) {
			value.get(1, (TTPtr*)&applicationParameters);
			
			if (applicationParameters) {
				v = TTValue((TTPtr)applicationParameters);
				mDistantApplicationParameters->remove(applicationName);
				return mDistantApplicationParameters->append(applicationName, v);
			}
		}
	}
	
	return kTTErrGeneric;
}







TTErr Plugin::ReceiveDiscoverRequest(TTSymbolPtr from, TTNodeAddressPtr address) 
{
	TTValue inputValue, outputValue;
	TTErr	err;
	TTValue returnedChildrenNames;
	TTValue returnedChildrenTypes;
	TTValue returnedAttributes;
	
	// discover the local namespace
	if (mApplicationManager != NULL) {
		
		inputValue.append(address);
		
		outputValue.append((TTPtr)&returnedChildrenNames);
		outputValue.append((TTPtr)&returnedChildrenTypes);
		outputValue.append((TTPtr)&returnedAttributes);
		
		err = mApplicationManager->sendMessage(TT("ApplicationDiscover"), inputValue, outputValue);
		
		// send result
		return SendDiscoverAnswer(from, address, returnedChildrenNames, returnedChildrenTypes, returnedAttributes, err);
	}
	
	return kTTErrGeneric;
}

TTErr Plugin::ReceiveGetRequest(TTSymbolPtr from, TTNodeAddressPtr address)
{
	TTErr	err;
	TTValue returnedValue;
	
	// discover the namespace
	if (mApplicationManager != NULL) {
		
		if (address->getAttribute() == NO_ATTRIBUTE)
			address = address->appendAttribute(kTTSym_value);

		err = mApplicationManager->sendMessage(TT("ApplicationGet"), address, returnedValue);
		
		return SendGetAnswer(from, address, returnedValue, err);
	}		
	
	return kTTErrGeneric;
}

TTErr Plugin::ReceiveSetRequest(TTSymbolPtr from, TTNodeAddressPtr address, TTValue& newValue) 
{
	TTValue v;
	TTErr	err;
	
	// set the an object in the namespace
	if (mApplicationManager != NULL) {
		
		if (address->getAttribute() == NO_ATTRIBUTE)
			address = address->appendAttribute(kTTSym_value);
		
		v.append(address);
		v.append((TTPtr)&newValue);
		err = mApplicationManager->sendMessage(TT("ApplicationSet"), v, kTTValNONE);
		
		// TODO : test error and send notification if error
		return err;
	}
	
	return kTTErrGeneric;
}

TTErr Plugin::ReceiveListenRequest(TTSymbolPtr from, TTNodeAddressPtr address, TTBoolean enable) 
{
	TTValue v;
	TTErr	err;
	
	// listen an object or the namespace
	if (mApplicationManager != NULL) {
		
		if (address->getAttribute() == NO_ATTRIBUTE)
			address = address->appendAttribute(kTTSym_value);
		
		v.append(mName);	// the name of the plugin is needed for feed back notifications
		v.append(from);
		v.append(address);
		v.append(enable);
		
		err = mApplicationManager->sendMessage(TT("ApplicationListen"), v, kTTValNONE);
		
		if (err)
			return SendListenAnswer(from, address, kTTValNONE, err);
	}
	
	return kTTErrGeneric;
}

TTErr Plugin::ReceiveListenAnswer(TTSymbolPtr from, TTNodeAddressPtr address, TTValue& newValue)
{
	TTValue v;
	TTErr	err;
	
	if (mApplicationManager != NULL) {
		
		if (address->getAttribute() == NO_ATTRIBUTE)
			address = address->appendAttribute(kTTSym_value);
		
		v.append(from);
		v.append(address);
		v.append((TTPtr)&newValue);
		
		// TODO
		err = mApplicationManager->sendMessage(TT("ApplicationListenAnswer"), v, kTTValNONE);
		
		if (err)
			return SendListenAnswer(from, address, kTTValNONE, err);
	}
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr PluginDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	PluginPtr			aPlugin;
	TTSymbolPtr			anApplicationName;
	TTNodeAddressPtr	anAddress;
	TTNodePtr			aNode;
	TTUInt8				flag;
	TTCallbackPtr		anObserver;
	TTValue				v;

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, &anApplicationName);
	
	// unpack data (anAddress, aNode, flag, anObserver)
	data.get(0, &anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	v.append(flag);
	return aPlugin->SendListenAnswer(anApplicationName, anAddress->appendAttribute(TT("life")), v);
}

TTErr PluginAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	PluginPtr			aPlugin;
	TTSymbolPtr			anApplicationName;
	TTNodeAddressPtr	anAddress;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, &anApplicationName);
	b->get(2, &anAddress);
	
	return aPlugin->SendListenAnswer(anApplicationName, anAddress, data);
}

TTErr PluginGetAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b, value;
	PluginPtr			aPlugin;
	TTSymbolPtr			anApplicationName;
	TTNodeAddressPtr	anAddress;
	TTSymbolPtr			attribute;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, &anApplicationName);
	b->get(2, &anAddress);
	
	// unpack data
	data.get(0, &attribute);
	data.get(1, (TTPtr*)&value);
	
	// send a get request
	return aPlugin->SendGetRequest(anApplicationName, anAddress->appendAttribute(attribute), *value);
}

TTErr PluginSetAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b, value;
	PluginPtr			aPlugin;
	TTSymbolPtr			anApplicationName;
	TTNodeAddressPtr	anAddress;
	TTSymbolPtr			attribute;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, &anApplicationName);
	b->get(2, &anAddress);
	
	// unpack data
	data.get(0, &attribute);
	data.get(1, (TTPtr*)&value);
	
	// send a set request
	return aPlugin->SendSetRequest(anApplicationName, anAddress->appendAttribute(attribute), *value);
}

TTErr PluginSendMessageCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b, value;
	PluginPtr			aPlugin;
	TTSymbolPtr			anApplicationName;
	TTNodeAddressPtr	anAddress;
	TTSymbolPtr			message;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, &anApplicationName);
	b->get(2, &anAddress);
	
	// unpack data
	data.get(0, &message);
	data.get(1, (TTPtr*)&value);
	
	// send a set request
	return aPlugin->SendSetRequest(anApplicationName, anAddress->appendAttribute(message), *value);
}

TTErr PluginListenAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	PluginPtr			aPlugin;
	TTSymbolPtr			anApplicationName;
	TTNodeAddressPtr	anAddress;
	TTSymbolPtr			attribute;
	TTBoolean			enable;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, &anApplicationName);
	b->get(2, &anAddress);
	
	// unpack data
	data.get(0, &attribute);
	data.get(1, enable);
	
	// send a listen request
	return aPlugin->SendListenRequest(anApplicationName, anAddress->appendAttribute(attribute), enable);
}

/***************************************************************************
 
	PluginLib
 
 ***************************************************************************/

TTErr PluginLib::createPlugin(const TTSymbolPtr pluginName, PluginPtr *returnedPlugin, TTObjectPtr manager)
{
	TTValue args;
	
	args.append(TTPtr(manager));
	
	// These should be alphabetized
	if (pluginName == TT("Minuit"))
		return TTObjectInstantiate(TT("Minuit"), (TTObjectPtr*)returnedPlugin, args);
	/*
	else if (pluginName == TT("OSC"))
		return TTObjectInstantiate(TT("OSC"), (TTObjectPtr*)returnedPlugin, args);
	else if (pluginName == TT("MIDI"))
		return TTObjectInstantiate(TT("MIDI"), (TTObjectPtr*)returnedPlugin, args);
	else if (pluginName == TT("CopperLan"))
		return TTObjectInstantiate(TT("CopperLan"), (TTObjectPtr*)returnedPlugin, args);
	else if (pluginName == TT("Serial"))
		return TTObjectInstantiate(TT("Serial"), (TTObjectPtr*)returnedPlugin, args);
	 */
	
	TTLogError("Jamoma PluginLib : Invalid Plugin ( %s ) specified", pluginName->getCString());
	return kTTErrValueNotFound;
}

void PluginLib::getPluginNames(TTValue& pluginNames)
{
	pluginNames.clear();
	pluginNames.append(TT("Minuit"));
	/*
	pluginNames.append(TT("OSC"));
	pluginNames.append(TT("MIDI"));
	pluginNames.append(TT("CopperLan"));
	pluginNames.append(TT("Serial"));
	 */
}

