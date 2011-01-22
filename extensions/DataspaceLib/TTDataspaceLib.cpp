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
	RadianUnit::registerClass();
	DegreeUnit::registerClass();
	
	ColorDataspace::registerClass();
	CMYUnit::registerClass();
	HSLUnit::registerClass();
	HSVUnit::registerClass();
	RGBUnit::registerClass();
	RGB8Unit::registerClass();
	
	DistanceDataspace::registerClass();
	CentimeterUnit::registerClass();
	FootUnit::registerClass();
	InchUnit::registerClass();
	MeterUnit::registerClass();
	
	GainDataspace::registerClass();
	LinearAmplitudeUnit::registerClass();
	MidiGainUnit::registerClass();
	DecibelUnit::registerClass();
	
	NoneDataspace::registerClass();
	NoneUnit::registerClass();
	
	PitchDataspace::registerClass();
	MidiPitchUnit::registerClass();
	CentUnit::registerClass();
	FrequencyUnit::registerClass();
	SpeedUnit::registerClass();
	
	PositionDataspace::registerClass();
	Cartesian3DUnit::registerClass();
	Cartesian2DUnit::registerClass();
	SphericalUnit::registerClass();
	PolarUnit::registerClass();
	OpenGlUnit::registerClass();
	CylindricalUnit::registerClass();
	
	TemperatureDataspace::registerClass();
	CelsiusUnit::registerClass();
	FahrenheitUnit::registerClass();
	KelvinUnit::registerClass();
	
	TimeDataspace::registerClass();
	MillisecondUnit::registerClass();
	SampleUnit::registerClass();
	SecondUnit::registerClass();
	UpdaterateUnit::registerClass();
	BpmUnit::registerClass();

	TTDataspaceConverter::registerClass();
	
	return kTTErrNone;
}


