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
	TTSymbolPtr			oscAddress;
	TTNodePtr			aNode;
	TTUInt8				flag;
	TTCallbackPtr		anObserver;
	TTValue				v;
	
	TTLogDebug("TTPluginHandlerDirectoryCallback");
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	
	// unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	v.append(flag);
	return aPlugin->mPlugin->applicationSendListenAnswer((TTObjectPtr)anApplication, oscAddress, TT("life"), v);
}

TTErr TTPluginHandlerAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTPluginHandlerPtr	aPlugin;
	TTApplicationPtr	anApplication;
	TTSymbolPtr			oscAddress, attribute;
	
	TTLogDebug("TTPluginHandlerAttributeCallback");
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	b->get(2, &oscAddress);
	b->get(3, &attribute);
	
	return aPlugin->mPlugin->applicationSendListenAnswer(anApplication, oscAddress, attribute, data);
}