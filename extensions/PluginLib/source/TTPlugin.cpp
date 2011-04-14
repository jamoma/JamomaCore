/*
 * Jamoma Plugin Library
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPlugin.h"

TTPlugin::TTPlugin() :
	mName(kTTSymEmpty),
	mVersion(kTTSymEmpty),
	mExploration(NO),
	mParameters(NULL),
	mParameterNames(kTTValNONE),
	mApplicationManager(NULL)
{
	mParameters = new TTHash();
}

TTPlugin::~TTPlugin()
{
	mParameters->clear();
    delete mParameters;	
}

TTErr TTPlugin::getParameterNames(TTValue& value)
{
	return mParameters->getKeys(value);
}

TTErr TTPlugin::setApplicationManager(const TTValue& value) 
{
	value.get(0, (TTPtr*)&mApplicationManager);
	return kTTErrNone;
}

TTErr TTPlugin::getApplicationManager(TTValue& value) {
	value = (TTPtr)mApplicationManager;
	return kTTErrNone;
}