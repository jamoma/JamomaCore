/*
 * TTFoundation Interpolation Utilities
 * Copyright 2012 by Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_INTERPOLATE_H__
#define __TT_INTERPOLATE_H__


/** Linear interpolation.
	@param x	Sample value at prior integer index
	@param y	Sample value at next integer index
	@param a 	Fractional location between x (0) and y (1)
	@return 	The interpolated value.
	
	@seealso	TTInterpolateCosine	
	@seealso	TTInterpolateCubic	
	@seealso	TTInterpolateSpline	
	@seealso	TTInterpolateHermite
*/
template<class T>
T TTInterpolateLinear(const T& x, const T& y, const double& a)
{
	return x + a * (y-x);
}


/** Cosine interpolation
	@param x	Sample value at prior integer index
	@param y	Sample value at next integer index
	@param a 	Fractional location between x (0) and y (1)
	@return 	The interpolated value.
	
	@seealso	TTInterpolateLinear	
	@seealso	TTInterpolateHermite
	@seealso	TTInterpolateCubic	
	@seealso	TTInterpolateSpline	
 */
template<class T>
T TTInterpolateCosine(const T& x, const T& y, const double& a)
{
	T a2 = 0.5 * (1.0 - cos(a * kTTPi));	
	return x + a2 * (y-x);
}


/** Cubic interpolation 
	@param w	Sample value at integer index prior to x
	@param x	Sample value at prior integer index
	@param y	Sample value at next integer index
	@param z	Sample value at integer index after y
	@param a	Fractional location between x (0) and y (1)
	@return		The interpolated value.
	
	@seealso	TTInterpolateLinear	
	@seealso	TTInterpolateCosine	
	@seealso	TTInterpolateHermite
	@seealso	TTInterpolateSpline	
*/
template<class T>
T TTInterpolateCubic(const T& w, const T& x, const T& y, const T& z, const double& a)
{
	T a2 = a*a;
	T f0 = z - y - w + x;
	T f1 = w - x - f0;
	T f2 = y - w;
	return f0*a*a2 + f1*a2 + f2*a + x;
}


/** Spline interpolation based on the Breeuwsma catmull-rom spline 
	@param w	Sample value at integer index prior to x
	@param x	Sample value at prior integer index
	@param y	Sample value at next integer index
	@param z	Sample value at integer index after y
	@param a	Fractional location between x (0) and y (1)
	@return		The interpolated value.
	
	@seealso	TTInterpolateLinear	
	@seealso	TTInterpolateCosine	
	@seealso	TTInterpolateCubic	
	@seealso	TTInterpolateHermite
*/
template<class T>
T TTInterpolateSpline(const T& w, const T& x, const T& y, const T& z, const double& a)
{
	T a2 = a*a;
	T f0 = -0.5*w + 1.5*x - 1.5*y + 0.5*z;
	T f1 = w - 2.5*x + 2.0*y - 0.5*z;
	T f2 = -0.5*w + 0.5*y;
	return f0*a*a2 + f1*a2 + f2*a + x;
}


/** Hermite interpolation 
	@param w	Sample value at integer index prior to x
	@param x	Sample value at prior integer index
	@param y	Sample value at next integer index
	@param z	Sample value at integer index after y
	@param a	Fractional location between x (0) and y (1)
	@return		The interpolated value.

	@seealso	TTInterpolateLinear	
	@seealso	TTInterpolateCosine	
	@seealso	TTInterpolateCubic	
	@seealso	TTInterpolateSpline	
*/
template<class T>
T TTInterpolateHermite(const T& w, const T& x, const T& y, const T& z, const double& a, const double& bias, const double& tension)
{
	T aa = a*a;
	T aaa = a*aa;
	T bp = 1+bias;
	T bm = 1-bias;
	T mt = (1-tension)*0.5;
	T m0 = ((x-w)*bp + (y-x)*bm) * mt;
	T m1 = ((y-x)*bp + (z-y)*bm) * mt;
	T a0 = 2*aaa - 3*aa + 1;
   	T a1 = aaa - 2*aa + a;
   	T a2 = aaa - aa;
   	T a3 = -2*aaa + 3*aa;
   	return a0*x + a1*m0 + a2*m1 + a3*y;
}


#endif // __TT_INTERPOLATE_H__

