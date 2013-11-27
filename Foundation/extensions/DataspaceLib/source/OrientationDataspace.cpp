/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #OrientationDataspace converts between different untis describing orientation.
 *
 * @details The neutral unit of the orientation dataspace is _quarternian_. @n
 * @n
 * The unit conventinos are based on SpinCalc for Matlab: http://www.mathworks.com/matlabcentral/fileexchange/20696-function-to-convert-between-dcm-euler-orientation-quaternions-and-euler-vectors
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, ...
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "OrientationDataspace.h"


#define thisTTClass			QuaternionUnit
#define thisTTClassName		"unit.quaternion"
#define thisTTClassTags		"dataspace.unit, orientation"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

QuaternionUnit::~QuaternionUnit(){;}

void QuaternionUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	//output.resize(4);
	output = input;
}


void QuaternionUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	//output.resize(4);
	output = input;	
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			EulerUnit
#define thisTTClassName		"unit.euler"
#define thisTTClassTags		"dataspace.unit, orientation"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

EulerUnit::~EulerUnit(){;}
//yaw pitch roll
void EulerUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   	
	TTFloat64 yaw, pitch, roll;
	
	input.get(0, yaw);
	yaw = yaw * kTTDegreesToRadians * -0.5; 
	input.get(1, pitch);
	pitch = pitch * kTTDegreesToRadians * 0.5;
	input.get(2, roll);	
	roll = roll * kTTDegreesToRadians * 0.5;
	
	
	TTFloat64 sinYaw(sin(yaw));
	TTFloat64 cosYaw(cos(yaw));
	TTFloat64 sinPitch(sin(pitch));
	TTFloat64 cosPitch(cos(pitch));
	TTFloat64 sinRoll(sin(roll));
	TTFloat64 cosRoll(cos(roll));
	TTFloat64 cosPitchCosRoll(cosPitch*cosRoll);
	TTFloat64 sinPitchSinRoll(sinPitch*sinRoll);
	
	output.resize(4);	
	output.set(0, cosYaw * sinPitch * cosRoll  - sinYaw * cosPitch * sinRoll); //X	
	output.set(1, cosYaw * cosPitch * sinRoll  + sinYaw * sinPitch * cosRoll); //Y
	output.set(2, sinYaw * cosPitchCosRoll     + cosYaw * sinPitchSinRoll); //Z
	output.set(3, cosYaw * cosPitchCosRoll     - sinYaw * sinPitchSinRoll); //W
	


	
}

void EulerUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
	TTFloat64 W, X, Y, Z;
	
	input.get(0, X);
	input.get(1, Y);
	input.get(2, Z);
	input.get(3, W);
	
	output.resize(3);
	output.set(0, kTTRadiansToDegrees * atan2(-2*(Z*W-X*Y), W*W - X*X + Y*Y - Z*Z)); //yaw
	output.set(1, kTTRadiansToDegrees * asin(2*(W*X + Y*Z))); //pitch
	output.set(2, kTTRadiansToDegrees * atan2(2*(W*Y + X*Z), W*W - X*X - Y*Y + Z*Z)); //roll
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			AxisUnit
#define thisTTClassName		"unit.axis"
#define thisTTClassTags		"dataspace.unit, orientation"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

AxisUnit::~AxisUnit(){;}

void AxisUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   
	TTFloat64 angle, x, y, z;
	TTFloat64 sinAngle, n;
		

	input.get(0, x);
	input.get(1, y);
	input.get(2, z);
	input.get(3, angle);
	angle = angle * kTTDegreesToRadians  * 0.5;
	sinAngle = sin(angle);
	
	//vector normalization:
    n = sqrt(x*x + y*y + z*z);

	if (n > 0.0)
		n = 1.0/n;
	
	/* x = x * n;
	y = y * n;
	z = z * n;	*/
	
	output.resize(4);
	output.set(0, x * n * sinAngle); //X
	output.set(1, y * n * sinAngle); //Y
	output.set(2, z * n * sinAngle); //Z
	output.set(3, cos(angle)); //W	
}

void AxisUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
	TTFloat64 X, Y, Z, W;

	input.get(0, X);
	input.get(1, Y);
	input.get(2, Z);
	input.get(3, W);
	
		
	TTFloat64 sin_a = sqrt( 1.0 - W * W );    
	
	output.resize(4);    
	output.set(3, kTTRadiansToDegrees * 2.0 * atan2(sin_a, W)); //angle

	if ( fabs( sin_a ) < 0.0005 ) 
		sin_a = 1.0;
	else sin_a = 1.0/sin_a;
	
    output.set(0, X * sin_a); //x
    output.set(1, Y * sin_a); //y
	output.set(2, Z * sin_a); //z	
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			OrientationDataspace
#define thisTTClassName		"dataspace.orientation"
#define thisTTClassTags		"foundationDataspaceLib, dataspace, orientation"

TT_OBJECT_CONSTRUCTOR
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.euler"),			TT("euler"));
	registerUnit(TT("unit.euler"),			TT("ypr"));
	registerUnit(TT("unit.axis"),			TT("axis"));
	registerUnit(TT("unit.axis"),			TT("xyza"));
	registerUnit(TT("unit.quaternion"),		TT("quaternion"));
	registerUnit(TT("unit.quaternion"),		TT("quat"));
		
	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("quaternion");
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


OrientationDataspace::~OrientationDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
