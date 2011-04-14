/* 
 * Jamoma PluginLib: MinuitPlugin.cpp
 * Copyright © 2011, théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "MinuitPlugin.h"

#define thisTTClass			MinuitPlugin
#define thisTTClassName		"plugin.osc"
#define thisTTClassTags		"plugin, osc"

TT_OBJECT_CONSTRUCTOR
{	
	mName = TT("Minuit");
	mVersion = TT("V0.1");
	mExploration = YES;
	
	// set default parameters
	mParameters->append(TT("ip"), TTValue(TT("127.0.0.1")));
	mParameters->append(TT("port"), TTValue(8002));
}

MinuitPlugin::~MinuitPlugin()
{
	;
}

TTErr MinuitPlugin::setParameters(const TTValue& value)
{
	value.get(0, (TTPtr*)&mParameters);
	
	// TODO : restart reception thread mechanism
	return kTTErrNone;
}

TTErr MinuitPlugin::Run()
{
	return kTTErrNone;
}

TTErr MinuitPlugin::applicationSendDiscoverAnswer(TTApplicationPtr to, TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
{
	return kTTErrNone;
}

TTErr MinuitPlugin::applicationSendGetAnswer(TTApplicationPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
{
	return kTTErrNone;
}

TTErr MinuitPlugin::applicationSendListenAnswer(TTApplicationPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
{
	return kTTErrNone;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

