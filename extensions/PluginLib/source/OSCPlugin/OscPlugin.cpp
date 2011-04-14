/* 
 * Jamoma PluginLib: OscPlugin.cpp
 * Copyright © 2011, théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "OscPlugin.h"

#define thisTTClass			OscPlugin
#define thisTTClassName		"plugin.osc"
#define thisTTClassTags		"plugin, osc"

TT_OBJECT_CONSTRUCTOR
{	
	TTPLUGIN_INTERFACE
	mName = TT("OSC");
	mVersion = TT("V0.1");
	mExploration = NO;
	
	// set default parameters
	mParameters->append(TT("ip"), TTValue(TT("127.0.0.1")));
	mParameters->append(TT("port"), TTValue(7002));
}

OscPlugin::~OscPlugin()
{
	;
}

TTErr OscPlugin::setParameters(const TTValue& value)
{
	value.get(0, (TTPtr*)&mParameters);
	
	// TODO : restart reception thread mechanism
	return kTTErrNone;
}

TTErr OscPlugin::Run()
{
	return kTTErrNone;
}

TTErr OscPlugin::applicationSendDiscoverAnswer(TTApplicationPtr to, TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
{
	return kTTErrNone;
}

TTErr OscPlugin::applicationSendGetAnswer(TTApplicationPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
{
	return kTTErrNone;
}

TTErr OscPlugin::applicationSendListenAnswer(TTApplicationPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
{
	return kTTErrNone;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

