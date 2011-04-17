#include "TTPluginHandler.h"

#define thisTTClass			TTPluginHandler
#define thisTTClassName		"PluginHandler"
#define thisTTClassTags		"plugin, handler"

TT_MODULAR_CONSTRUCTOR,
mPlugin(NULL),
mName(kTTSymEmpty),
mVersion(kTTSymEmpty),
mAuthor(kTTSymEmpty),
mExploration(NO),
mParameters(NULL),
mParameterNames(kTTValNONE)
{
	arguments.get(0, (TTPtr*)&mPlugin);
	arguments.get(1, &mName);
	arguments.get(2, &mVersion);
	arguments.get(3, &mAuthor);
	arguments.get(4, mExploration);
	
	addAttribute(Name, kTypeSymbol);
	addAttributeProperty(name, readOnly, YES);
	
	addAttribute(Version, kTypeSymbol);
	addAttributeProperty(version, readOnly, YES);
	
	addAttribute(Author, kTypeSymbol);
	addAttributeProperty(author, readOnly, YES);
	
	addAttribute(Exploration, kTypeBoolean);
	addAttributeProperty(exploration, readOnly, YES);
	
	addAttributeWithGetter(ParameterNames, kTypeLocalValue);
	addAttributeProperty(parameterNames, readOnly, YES);
	
	addAttributeWithSetter(Parameters, kTypePointer);
	
	addMessage(Run);

	mParameters = new TTHash();
}

TTPluginHandler::~TTPluginHandler()
{
	delete mPlugin;
	delete mParameters;
}

TTErr TTPluginHandler::getParameterNames(TTValue& value)
{
	return mParameters->getKeys(value);
}

TTErr TTPluginHandler::setParameters(const TTValue& value)
{
	value.get(0, (TTPtr*)mParameters);
	
	mPlugin->setParameters(value);
	
	return kTTErrNone;
}

TTErr TTPluginHandler::Run()
{
	mPlugin->Run();
	return kTTErrNone;
}
