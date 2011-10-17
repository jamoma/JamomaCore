/* 
 * Catmull-rom spline Function Unit for TTBlue
 * based on the icst.spline code by Jan Schacher, ICST: http://www.icst.net/
 * ported by Nils Peters
 * 
 */

#ifndef __CATMULL-ROM3D_H__
#define __CATMULL-ROM3D_H__

#include "TTDSP.h"

#define MAXPOINTS 1024 // 1024 points


class Catmullrom3D : TTAudioObject {
	TTCLASS_SETUP(Catmullrom3D)		
	
	TTUInt16	mResolution, mSteps; 
	TTFloat64	b_control[3 * MAXSIZE];
	TTFloat64	b_op[3];
	TTUInt16	b_knots[MAXSIZE * 3]; 
	TTFloat64	interval;
	TTFloat64	point3D[3];
	TTUInt8		mDimen, mDegree;
	
	
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	void calculatePoint();
	void calculateKnots(); 
	
	float calculateBlend(TTUInt16 k, TTUInt16 t);
};


#endif // __CATMULL-ROM3D_H__
