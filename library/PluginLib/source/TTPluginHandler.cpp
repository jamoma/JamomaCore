#include "TTPluginHandler.h"

#define thisTTClass			TTPluginHandler
#define thisTTClassName		"PluginHandler"
#define thisTTClassTags		"plugin, handler"

TT_MODULAR_CONSTRUCTOR,
mPlugin(NULL)
{
	arguments.get(0, (TTPtr*)&mPlugin);
	
	registerAttribute(TT("parameters"), kTypePointer, NULL, (TTGetterMethod)& TTPluginHandler::getParameters, (TTSetterMethod)& TTPluginHandler::setParameters);
	registerAttribute(TT("parameterNames"), kTypeLocalValue, NULL, (TTGetterMethod)& TTPluginHandler::getParameterNames);
	addAttributeProperty(parameterNames, readOnly, YES);
	
	registerAttribute(TT("name"), kTypeSymbol, mPlugin->mName);
	addAttributeProperty(name, readOnly, YES);
	
	registerAttribute(TT("version"), kTypeSymbol, mPlugin->mVersion);
	addAttributeProperty(version, readOnly, YES);
	
	registerAttribute(TT("author"), kTypeSymbol, mPlugin->mAuthor);
	addAttributeProperty(author, readOnly, YES);
	
	registerAttribute(TT("exploration"), kTypeBoolean, &mPlugin->mExploration);
	addAttributeProperty(exploration, readOnly, YES);
	
	addMessage(Run);
	addMessage(Scan);
}

TTPluginHandler::~TTPluginHandler()
{
	delete mPlugin;
}

TTErr TTPluginHandler::getParameters(TTValue& value)
{
	return mPlugin->getParameters(value);
}

TTErr TTPluginHandler::setParameters(const TTValue& value)
{
	return mPlugin->setParameters(value);
}

TTErr TTPluginHandler::getParameterNames(TTValue& value)
{
	TTValue v;
	TTHashPtr parameters;
	
	mPlugin->getParameters(v);
	v.get(0, (TTPtr*)&parameters);
	return parameters->getKeys(value);
}

TTErr TTPluginHandler::Scan()
{
	mPlugin->Scan();
	return kTTErrNone;
}

TTErr TTPluginHandler::Run()
{
	mPlugin->Run();
	return kTTErrNone;
}

TTErr TTPluginHandler::Stop()
{
	mPlugin->Stop();
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTPluginHandlerDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTPluginHandlerPtr	aPlugin;
	TTApplicationPtr	anApplication;
	TTNodeAddressPtr	anAddress;
	TTNodePtr			aNode;
	TTUInt8				flag;
	TTCallbackPtr		anObserver;
	TTValue				v;
	
	TTLogDebug("TTPluginHandlerDirectoryCallback");
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	
	// unpack data (anAddress, aNode, flag, anObserver)
	data.get(0, &anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	v.append(flag);
	return aPlugin->mPlugin->SendListenAnswer((TTObjectPtr)anApplication, anAddress->appendAttribute(TT("life")), v);
}

TTErr TTPluginHandlerAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTPluginHandlerPtr	aPlugin;
	TTApplicationPtr	anApplication;
	TTNodeAddressPtr	anAddress;
	
	TTLogDebug("TTPluginHandlerAttributeCallback");
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	b->get(2, &anAddress);
	
	return aPlugin->mPlugin->SendListenAnswer(anApplication, anAddress, data);
}

TTErr TTPluginHandlerGetAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b, value;
	TTPluginHandlerPtr	aPlugin;
	TTObjectPtr			anApplication;
	TTNodeAddressPtr	anAddress;
	TTSymbolPtr			attribute;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	b->get(2, &anAddress);
	
	// unpack data
	data.get(0, &attribute);
	data.get(1, (TTPtr*)&value);
	
	// send a get request
	return aPlugin->mPlugin->SendGetRequest(anApplication, anAddress->appendAttribute(attribute), *value);
}

TTErr TTPluginHandlerSetAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b, value;
	TTPluginHandlerPtr	aPlugin;
	TTObjectPtr			anApplication;
	TTNodeAddressPtr	anAddress;
	TTSymbolPtr			attribute;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	b->get(2, &anAddress);
	
	// unpack data
	data.get(0, &attribute);
	data.get(1, (TTPtr*)&value);
	
	// send a set request
	return aPlugin->mPlugin->SendSetRequest(anApplication, anAddress->appendAttribute(attribute), *value);
}

TTErr TTPluginHandlerSendMessageCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b, value;
	TTPluginHandlerPtr	aPlugin;
	TTObjectPtr			anApplication;
	TTNodeAddressPtr	anAddress;
	TTSymbolPtr			message;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	b->get(2, &anAddress);
	
	// unpack data
	data.get(0, &message);
	data.get(1, (TTPtr*)&value);
	
	// send a set request
	return aPlugin->mPlugin->SendSetRequest(anApplication, anAddress->appendAttribute(message), *value);
}

TTErr TTPluginHandlerListenAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTPluginHandlerPtr	aPlugin;
	TTObjectPtr			anApplication;
	TTNodeAddressPtr	anAddress;
	TTSymbolPtr			attribute;
	TTBoolean			enable;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	b->get(2, &anAddress);
	
	// unpack data
	data.get(0, &attribute);
	data.get(1, enable);
	
	// send a listen request
	return aPlugin->mPlugin->SendListenRequest(anApplication, anAddress->appendAttribute(attribute), enable);
}