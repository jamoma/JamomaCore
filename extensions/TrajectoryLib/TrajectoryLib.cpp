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
#include "LinearTrajectory.h"
//#include "LissajousTrajectory.h"
//#include "RoseTrajectory.h"



extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_TrajectoryLib(void)
{
	TTDSPInit();
	TTTrajectory::registerClass();

	LinearTrajectory::registerClass();
//	LissajousTrajectory::registerClass();
//	RoseTrajectory::registerClass();

	
	return kTTErrNone;
}

