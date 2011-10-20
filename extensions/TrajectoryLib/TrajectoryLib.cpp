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

#include "Bean2D.h"
#include "Butterfly2D.h"
#include "Circular2D.h"
#include "Epitrochoid2D.h"
#include "Gear2D.h"
#include "Hypocycloid2D.h"
#include "Limacon2D.h"
#include "Linear2D.h"
#include "Lissajous2D.h"
#include "LogSpiral2D.h"
#include "Rose2D.h"
#include "Scarabaeus2D.h"

#include "CircularHelix3D.h"
#include "Linear3D.h"
#include "Lissajous3D.h"
#include "Slinky3D.h"
#include "Spiral3D.h"
#include "Torus3D.h"
#include "Viviani3D.h"
//#include "Rose3D.h"

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_TrajectoryLib(void)
{
	TTDSPInit();
	TTTrajectory::registerClass();
	
	Bean2D::registerClass();
	Butterfly2D::registerClass();
	Circular2D::registerClass();
	Epitrochoid2D::registerClass();
	Gear2D::registerClass();
	Hypocycloid2D::registerClass();
	Limacon2D::registerClass();
	Linear2D::registerClass();
	Lissajous2D::registerClass();
	LogSpiral2D::registerClass();
	Rose2D::registerClass();
	Scarabaeus2D::registerClass();

	CircularHelix3D::registerClass();
	Linear3D::registerClass();
	Lissajous3D::registerClass();
	Slinky3D::registerClass();
	Spiral3D::registerClass();
	Torus3D::registerClass();
	Viviani3D::registerClass();
	//Rose3D::registerClass();	
	
	return kTTErrNone;
}

