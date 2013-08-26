/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief This library provides convertions between different measurement units for values relating to time, color, distance, gain. and more.
 *
 * @details The DataspaceLib enables other parts of the Jamoma project to address the values of parameters and attributes in different, interchangeable measurement units. For each type of data (e.g. trigonometrical angels), a _neutral_ unit is defined. Methods are then provided for converting between each alternative unit and the neutral unit. Wherever relevant the neutral unit is chosen in accordance with the international system of units of measurement.
 *
 * @authors Tim Place, Trond Lossius, Nils Peters, Pascal Baltazar, Alexander Refsum Jensenious, Theo de la Hogue, ...
 *
 * @copyright Copyright © 2007 by the Jamoma developers @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "AngleDataspace.h"
#include "ColorDataspace.h"
#include "DistanceDataspace.h"
#include "GainDataspace.h"
#include "NoneDataspace.h"
#include "OrientationDataspace.h"
#include "PositionDataspace.h"
#include "SpeedDataspace.h"
#include "TemperatureDataspace.h"
#include "TimeDataspace.h"

#include "TTDataspaceConverter.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_DataspaceLib(void)
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
	
	OrientationDataspace::registerClass();
	QuaternionUnit::registerClass();
	EulerUnit::registerClass();
	AxisUnit::registerClass();
		
	PositionDataspace::registerClass();
	Cartesian3DUnit::registerClass();
	Cartesian2DUnit::registerClass();
	SphericalUnit::registerClass();
	PolarUnit::registerClass();
	OpenGlUnit::registerClass();
	CylindricalUnit::registerClass();
	
	SpeedDataspace::registerClass();
	FootPerSecondUnit::registerClass();
	MeterPerSecondUnit::registerClass();
	MilesPerHourUnit::registerClass();
	KilometerPerHourUnit::registerClass();
	KnotUnit::registerClass();	
	
	TemperatureDataspace::registerClass();
	CelsiusUnit::registerClass();
	FahrenheitUnit::registerClass();
	KelvinUnit::registerClass();
	
	TimeDataspace::registerClass();
    BarkUnit::registerClass();
	BpmUnit::registerClass();
    CentUnit::registerClass();
	MelUnit::registerClass();
    MidiPitchUnit::registerClass();
	MillisecondUnit::registerClass();
	SampleUnit::registerClass();
	SecondUnit::registerClass();
    SpeedUnit::registerClass();
	FrequencyUnit::registerClass();


	TTDataspaceConverter::registerClass();
	
	return kTTErrNone;
}


