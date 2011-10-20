/* 
 * Bspline Function Unit for TTBlue
 * based on the bspline code by Jasch: http://www.jasch.ch/
 * ported by Nils Peters
 * 
 */

#ifndef __BSPLINE_2D_H__
#define __BSPLINE_2D_H__

#include "TTDSP.h"

#define MAXSIZE 256


class Bspline2D : TTAudioObject {
	TTCLASS_SETUP(Bspline2D)		
	
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


#endif // __BSPLINE_2D_H__
