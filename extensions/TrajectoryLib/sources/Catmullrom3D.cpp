/* 
 * Bspline Function Unit for TTBlue
 * based on the icst.spline code by Jan Schacher, ICST: http://www.icst.net/
 * ported by Nils Peters
 * 
 */

#include "Catmullrom3D.h"


#define thisTTClass			Catmullrom3D
#define thisTTClassName		"spline.catmullrom.3D"
#define thisTTClassTags		"audio, trajectory, 3D, spline"


TT_AUDIO_CONSTRUCTOR
{   addAttribute(closed,			kTypeBoolean); // whether the trajectory is open or closed
	//addAttribute(A,				kTypeFloat64);
	//addAttribute(Degree,		kTypeUInt8);
	addAttribute(Steps,			kTypeUInt16);
	//addAttribute(Dimen,			kTypeUInt8);
	addAttribute(Resolution,	kTypeUInt16);//was size
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}




Catmullrom3D::~Catmullrom3D()
{
	;
}

//TTErr Catmullrom3D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}

void Catmullrom3D::interpolate(t_spline *x, t_point pt0, t_point pt1, t_point pt2, t_point pt3)
{
	
	double s, s2, s3;
	double m0, m1, m2, m3;
	double a0, a1, a2, a3;
	
	
s2 = s * s;
s3 = s2 * s;
m0 = 2.0 * s3 - 3.0 * s2 + 1.0;
m1 = -2.0 * s3 + 3.0 * s2;
m2 = s3 - 2 * s2 + s;
m3 = s3 - s2;

a0 = 0.5 * ( pt2.x - pt0.x );
a1 = 0.5 * ( pt3.x - pt1.x );
x->b_result[0].a_w.w_float = (m0 * pt1.x + m1 * pt2.x + m2 * a0 + m3 * a1);

a0 = 0.5 * ( pt2.y - pt0.y );
a1 = 0.5 * ( pt3.y - pt1.y );
x->b_result[1].a_w.w_float = (m0 * pt1.y + m1 * pt2.y + m2 * a0 + m3 * a1);

a0 = 0.5 * ( pt2.z - pt0.z);
a1 = 0.5 * ( pt3.z - pt1.z);
x->b_result[2].a_w.w_float = (m0 * pt1.z + m1 * pt2.z + m2 * a0 + m3 * a1);
}


void Catmullrom3D::spline_exec(t_spline *x)
{
	long i;
	double inc; 
	
	t_point delta;

spline_make_endpoints(x);	// prep for hermite etc: calculate helper points
spline_stepthrough(x); 
x->b_result[0].a_w.w_float = x->b_control[x->b_size - 1].x;   // output the last point
x->b_result[1].a_w.w_float = x->b_control[x->b_size - 1].y;
x->b_result[2].a_w.w_float = x->b_control[x->b_size - 1].z;
outlet_list(x->b_outlet1, 0L, x->b_dim, x->b_result);
outlet_bang(x->b_outlet2);
}





/*void Bspline2D::calculatePoint()
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
} */

TTErr Catmullrom3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	
	if (numOutputChannels != 3) {
		TTValue v = 3;		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);		
	}
	
	TTAudioSignal&		in0 = inputs->getSignal(0);
	TTUInt16			 vs = in0.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in0.mSampleVectors[0];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];
	TTSampleValuePtr	outSampleZ			= out.mSampleVectors[2];
    TTFloat64 f;
	
	for (int i=0; i<vs; i++) {	
						
		f = inSampleX[i] * 0.5; //0... 1. 
		
		if ((f > 0) && (f < 1)){
			spline_eval(f);
			
			//calculatePoint();											// output intermediate point
			outSampleX[i] = b_op[0];
			outSampleY[i] = b_op[1];
			outSampleZ[i] = b_op[2];
		} else if (f <= 0.0){
					// output the first point
		} else if (f >= 1.0){
				// output the last point
		}
	}
return kTTErrNone;
}
