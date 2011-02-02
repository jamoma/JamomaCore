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
//#include "CosineFunction.h"
//#include "ExpFunction.h"
#include "LinearTrajectory.h"
#include "LissajousTrajectory.h"
#include "RoseTrajectory.h"
//#include "LogFunction.h"
//#include "LowpassFunction.h"
//#include "PowerFunction.h"
//#include "TanhFunction.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();
	TTTrajectory::registerClass();

//	CosineFunction::registerClass();
//	ExpFunction::registerClass();	
	LinearTrajectory::registerClass();
	LissajousTrajectory::registerClass();
	RoseTrajectory::registerClass();
//	LogFunction::registerClass();
//	LowpassFunction::registerClass();
//	PowerFunction::registerClass();
//	TanhFunction::registerClass();
	
	return kTTErrNone;
}

