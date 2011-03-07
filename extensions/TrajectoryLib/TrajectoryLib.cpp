/* 
 * TrajectoryLib
 * Extension Class for Jamoma DSP
 * Copyright © 2010, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTTrajectory.h"
#include "Linear2D.h"
#include "Linear3D.h"
//#include "Lissajous2D.h"
//#include "Lissajous3D.h"
#include "Rose2D.h"
#include "Rose3D.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_TrajectoryLib(void)
{
	TTDSPInit();
	TTTrajectory::registerClass();
	
	Linear2D::registerClass();
	Linear3D::registerClass();
//	Lissajous2D::registerClass();
//	Lissajous3D::registerClass();
	Rose2D::registerClass();
	Rose3D::registerClass();
	
	return kTTErrNone;
}

