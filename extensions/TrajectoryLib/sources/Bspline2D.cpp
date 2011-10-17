/* 
 * Bspline Function Unit for TTBlue
 * based on the bspline code by Jasch: http://www.jasch.ch/
 * ported by Nils Peters
 * 
 */

#include "Bspline2D.h"


#define thisTTClass			Bspline2D
#define thisTTClassName		"bspline.2D"
#define thisTTClassTags		"audio, trajectory, 2D, spline"


TT_AUDIO_CONSTRUCTOR
{   //addAttribute(A,				kTypeFloat64);
	addAttribute(Degree,		kTypeUInt8);
	addAttribute(Steps,			kTypeUInt16);
	addAttribute(Dimen,			kTypeUInt8);
	addAttribute(Resolution,	kTypeUInt16);//was size
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}




Bspline2D::~Bspline2D()
{
	;
}

//TTErr Bspline2D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}

void Bspline2D::calculatePoint()
{
	TTUInt16 i;
  	TTFloat64 temp;
	
  	point3D[0] = 0;//x
  	point3D[1] = 0;//y
  	point3D[2] = 0;//z

  	for ( i = 0;  i <= mResolution; i++) {
		temp = calculateBlend(i, mDegree);  // same blend is used for each dimension coordinate
		b_op[0] += b_control[i*3]   * temp;
		b_op[1] += b_control[i*3+1] * temp;
		b_op[2] += b_control[i*3+2] * temp;
  	}
}

float Bspline2D::calculateBlend(TTUInt16 k, TTUInt16 t)
{
	TTFloat64 value;
	TTFloat64 v = interval;
	
	if (t == 1)	{		// base case for the recursion
		if ((b_knots[k] <= v) && (v < b_knots[k+1])) {
			value=1;
		} else {
			value=0;
		}
	} else {
		if ((b_knots[k + t - 1] == b_knots[k]) && (b_knots[k + t] == b_knots[k + 1])) { // check for divide by zero
			value = 0;
		} else if (b_knots[k + t - 1] == b_knots[k]) { // if a term's denominator is zero, use just the other
			value = (b_knots[k + t] - v) / (b_knots[k + t] - b_knots[k + 1]) * calculateBlend(k + 1, t - 1);
		} else if (b_knots[k + t] == b_knots[k + 1]) {
			value = (v - b_knots[k]) / (b_knots[k + t - 1] - b_knots[k]) * calculateBlend(k, t - 1);
		} else {
			value = (v - b_knots[k]) / (b_knots[k + t - 1] - b_knots[k]) * calculateBlend(k, t - 1) +
			(b_knots[k + t] - v) / (b_knots[k + t] - b_knots[k + 1]) * calculateBlend(k + 1, t - 1);
		}
	}
	return value;
}

void Bspline2D::calculateKnots()   // generate knot-vector
{
	TTUInt8 i, t, n;
	n = mResolution;
	t = mDegree;
	for (i = 0; i <= (n + t); i++){
		if (i < t) {
			b_knots[i] = 0;
		} else if ((t <= i) && (i <= n)) {
			b_knots[i] = i - t + 1;
		} else if (i > n) {
			b_knots[i] = n - t + 2;  // if n - t = -2 then we're screwed, everything goes to 0
		}
	}
}

TTErr Bspline2D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	
	if (numOutputChannels != 2) {
		TTValue v = 2;		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);		
	}
	
	TTAudioSignal&		in0 = inputs->getSignal(0);
	TTUInt16			 vs = in0.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in0.mSampleVectors[0];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];
    TTFloat64 f;
	
	for (int i=0; i<vs; i++) {	
						
		f = inSampleX[i] * 0.5; //0... 1. 
		
		if ((f > 0) && (f < 1)){
			interval = f * (TTFloat64)((mResolution - mDegree) + 2);
			calculatePoint();											// output intermediate point
			outSampleX[i] = b_op[0];
			outSampleY[i] = b_op[1];
			//outSampleZ[i] = b_op[2];
		} else if (f <= 0.0){
					// output the first point
		} else if (f >= 1.0){
				// output the last point
		}
	}
return kTTErrNone;
}
