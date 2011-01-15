/*
 * Jamoma DataspaceLib Base Class
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "AngleDataspace.h"
#include "ColorDataspace.h"
#include "DistanceDataspace.h"
#include "GainDataspace.h"
#include "NoneDataspace.h"
#include "PitchDataspace.h"
#include "PositionDataspace.h"
#include "TemperatureDataspace.h"
#include "TimeDataspace.h"

#include "TTDataspaceConverter.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTFoundationInit();

	AngleDataspace::registerClass();
	ColorDataspace::registerClass();
	DistanceDataspace::registerClass();
	GainDataspace::registerClass();
	NoneDataspace::registerClass();
	PitchDataspace::registerClass();
	PositionDataspace::registerClass();
	TemperatureDataspace::registerClass();
	TimeDataspace::registerClass();

	TTDataspaceConverter::registerClass();
	
	return kTTErrNone;
}


