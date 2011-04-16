/* 
 * Jamoma PluginLib: CopperlanPlugin.cpp
 * Copyright © 2011, théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "CopperlanPlugin.h"

#define thisTTClass			CopperlanPlugin
#define thisTTClassName		"plugin.osc"
#define thisTTClassTags		"plugin, osc"

TT_OBJECT_CONSTRUCTOR
{	
	mName = TT("Coperlan");
	mVersion = TT("V0.1");
	mExploration = YES;
	
	; // TODO : set default parameters
}

CopperlanPlugin::~CopperlanPlugin()
{
	;
}

TTErr CopperlanPlugin::setParameters(const TTValue& value)
{
	value.get(0, (TTPtr*)&mParameters);
	
	// TODO : restart reception thread mechanism
	return kTTErrNone;
}

TTErr CopperlanPlugin::Run()
{
	return kTTErrGeneric;
}

TTErr CopperlanPlugin::applicationSendDiscoverAnswer(TTApplicationPtr to, TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
{
	return kTTErrNone;
}

TTErr CopperlanPlugin::applicationSendGetAnswer(TTApplicationPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
{
	return kTTErrNone;
}

TTErr CopperlanPlugin::applicationSendListenAnswer(TTApplicationPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
{
	return kTTErrNone;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

