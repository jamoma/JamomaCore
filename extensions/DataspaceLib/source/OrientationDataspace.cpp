/* 
 * Jamoma DataspaceLib: OrientationDataspace
 * Copyright � 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 * 
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
	//output.setSize(4);
	output = input;
}


void QuaternionUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	//output.setSize(4);
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
{   //from here: http://www.j3d.org/matrix_faq/matrfaq_latest.html#Q60
	
	TTFloat64 yaw, pitch, roll;
	
	input.get(0, yaw);
	yaw = yaw * kTTDegreesToRadians * 0.5; 
	input.get(1, pitch);
	pitch = pitch * kTTDegreesToRadians * 0.5;
	input.get(2, roll);	
	roll = roll * kTTDegreesToRadians * 0.5;
	
	TTFloat64 sinPitch(sin(pitch));
	TTFloat64 cosPitch(cos(pitch));
	TTFloat64 sinYaw(sin(yaw));
	TTFloat64 cosYaw(cos(yaw));
	TTFloat64 sinRoll(sin(roll));
	TTFloat64 cosRoll(cos(roll));
	TTFloat64 cosPitchCosYaw(cosPitch*cosYaw);
	TTFloat64 sinPitchSinYaw(sinPitch*sinYaw);
	
	output.setSize(4);
	output.set(0, cosRoll * cosPitchCosYaw     + sinRoll * sinPitchSinYaw); //W
	output.set(1, cosRoll * sinPitch * cosYaw  + sinRoll * cosPitch * sinYaw); //Y
	output.set(2, cosRoll * cosPitch * sinYaw  - sinRoll * sinPitch * cosYaw); //Z
	output.set(3, sinRoll * cosPitchCosYaw     - cosRoll * sinPitchSinYaw); //X	
	
}

void EulerUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
	// from http://sunday-lab.blogspot.com/2008/04/get-pitch-yaw-roll-from-quaternion.html
	
	TTFloat64 W, X, Y, Z;
	
	input.get(0, W);
	input.get(1, X);
	input.get(2, Y);
	input.get(3, Z);
	
	output.setSize(3);
	output.set(0, kTTRadiansToDegrees * asin(-2*(X*Z - W*Y))); //yaw
	output.set(1, kTTRadiansToDegrees * atan2(2*(Y*Z + W*X), W*W - X*X - Y*Y + Z*Z)); //pitch
	output.set(2, kTTRadiansToDegrees * atan2(2*(X*Y + W*Z), W*W + X*X - Y*Y - Z*Z)); //roll
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

// axis: angle, x, y, z
//from here: http://www.j3d.org/matrix_faq/matrfaq_latest.html#Q56
void AxisUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   
	TTFloat64 angle, x, y, z;
	TTFloat64 sinAngle, n;
		
	input.get(0, angle);
	angle = angle * kTTDegreesToRadians  * 0.5;
	sinAngle = sin(angle);
	input.get(1, x);
	input.get(2, y);
	input.get(3, z);
	
	//vector normalization:
    n = sqrt(x*x + y*y + z*z);

	if (n > 0.0)
		n = 1.0/n;
	
	/* x = x * n;
	y = y * n;
	z = z * n;	*/
	
	output.setSize(4);
	output.set(0, cos(angle)); //W
	output.set(1, x * n * sinAngle); //X
	output.set(2, y * n * sinAngle); //Y
	output.set(3, z * n * sinAngle); //Z
	
}

//from here: http://www.j3d.org/matrix_faq/matrfaq_latest.html#Q57
void AxisUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
	TTFloat64 W, X, Y, Z;
	TTFloat64 sin_a;
	
	input.get(0, W);
	input.get(1, X);
	input.get(2, Y);
	input.get(3, Z);
	
/* We are not normalizing the quaternions here, this should be done elsewhere	
 //quaternion_normalise:
 
	TTFloat64 n = sqrt(W*W + X*X + Y*Y + Z*Z);
	if (n > 0.0)
		n = 1.0/n;
	W = W * n;
	X = X * n;
	Y = Y * n;
	Z = Z * n; */
			
	sin_a = sqrt( 1.0 - W * W );    
	if ( fabs( sin_a ) < 0.0005 ) 
		sin_a = 1.0;
	else sin_a = 1.0/sin_a;
	
	
	output.setSize(4);    
	output.set(0, kTTRadiansToDegrees * (acos(W) * 2.0)); //angle
    output.set(1, X * sin_a); //x
    output.set(2, Y * sin_a); //y
	output.set(3, Z * sin_a); //z	
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			OrientationDataspace
#define thisTTClassName		"dataspace.orientation"
#define thisTTClassTags		"dataspace, orientation"

TT_OBJECT_CONSTRUCTOR
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.euler"),			TT("euler"));
	registerUnit(TT("unit.euler"),			TT("ypr"));
	registerUnit(TT("unit.axis"),			TT("axis"));
	registerUnit(TT("unit.axis"),			TT("axyz"));
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
