/*
 * Support for mathematical operations on the 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFoundationAPI.h"
#include "TTEnvironment.h"


// Macro so that we don't have to duplicate this cumbersome and ugly if statement many many times
// TYPECHANGE
#define TTMATRIX_CALL_ITERATOR_3ARGS_WITH_TEMPLATE(type,a,b,c,template) { \
	if (type == kTypeUInt8) \
		TTMatrixBase::iterateWhenAllAttributesMatch(a, b, c, template<TTUInt8>); \
	else if (type == kTypeInt32) \
		TTMatrixBase::iterateWhenAllAttributesMatch(a, b, c, template<TTInt32>); \
	else if (type == kTypeFloat32) \
		TTMatrixBase::iterateWhenAllAttributesMatch(a, b, c, template<TTFloat32>); \
	else if (type == kTypeFloat64) \
		TTMatrixBase::iterateWhenAllAttributesMatch(a, b, c, template<TTFloat64>); }



template<typename T>
void TTMatrixBaseIteratorAdd(TTPtr c, const TTPtr a, const TTPtr b)
{
	T*	cc = (T*)c;
	T	aa = *(T*)a;
	T	bb = *(T*)b;
	
	*cc = aa + bb;
}


template<typename T>
void TTMatrixBaseIteratorSubtract(TTPtr c, const TTPtr a, const TTPtr b)
{
	T*	cc = (T*)c;
	T	aa = *(T*)a;
	T	bb = *(T*)b;
	
	*cc = aa - bb;
}


TTMatrixBase* TTMatrixBase::operator + (const TTMatrixBase& other) const 
{
	const TTMatrixBase*	A = this;
	const TTMatrixBase*	B = &other;
	TTMatrixBase*		C = NULL;
	
	try {
        C = new TTMatrixBase(kTTSymEmpty);
        TTMATRIX_CALL_ITERATOR_3ARGS_WITH_TEMPLATE(A->mType, C, A, B, TTMatrixBaseIteratorAdd); //TYPECHANGE
    } catch (...) {
        // return kTTErrInstantiateFailed;
        // NW: since method does not return a type TTErr, we will simply catch this expection and return a NULL TTMatrixBasePtr
    }
	
	return C;
}


TTMatrixBase* TTMatrixBase::operator - (const TTMatrixBase& other) const 
{
	const TTMatrixBase*	A = this;
	const TTMatrixBase*	B = &other;
	TTMatrixBase*		C = NULL;
	
    try {
        C = new TTMatrixBase(kTTSymEmpty);
        TTMATRIX_CALL_ITERATOR_3ARGS_WITH_TEMPLATE(A->mType, C, A, B, TTMatrixBaseIteratorSubtract); //TYPECHANGE
    } catch (...) {
        // return kTTErrInstantiateFailed;
        // NW: since method does not return a type TTErr, we will simply catch this expection and return a NULL TTMatrixBasePtr
    }
	
	return C;
}

