/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Host a SpatLib object
 *
 * @details
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_SPAT_H__
#define __TT_SPAT_H__

#include "TTDSP.h"

/** Generalized SpatLib rendering unit wrapper.
 */
class TTSpat : TTAudioObject {
	TTCLASS_SETUP(TTSpat)

protected:

	TTAudioObjectPtr	mSpatFunctionObject;
	TTSymbol			mSpatFunction;	
	TTUInt16			mSourceCount;			///< The number of sources
	TTUInt16			mSinkCount;				///< The number of destinations
		
	/**	Set what spatialisation function to use.
	 @param aSpatFunction			The SpatLib renderer to use.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSpatFunction(const TTValue& aSpatFunction);
	
	
	/**	Set the number of sources.
	 @param mode					The number of sources to spatialise.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSourceCount(const TTValue& aSource);
	
	
	/**	Set number of destinations
	 @param mode					The number of destinations that sound will be rendered to.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSinkCount(const TTValue& aSink);
		
	
	
	TTErr getSourcePosition(const TTValue& anIndex, TTValue& returnedPosition);
	TTErr setSourcePosition(const TTValue& aPosition, TTValue& unused);
	TTErr getSinkPosition(const TTValue& anIndex, TTValue& returnedPosition);
	TTErr setSinkPosition(const TTValue& aPosition, TTValue& unused);


	/**	Return a list of all the available spatialisation methods.
	 @param
	 @param listOfSpatFunctionsToReturn An array of available spatialisation rendering units.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSpatFunctions(const TTValue&, TTValue& listOfSpatFunctionsToReturn);
	
	
	/**	Return a list of all the available parameters that are specific to the current spatialisation method.
	 @param
	 @param listOfParameterNamesToReturn An array of available spatialisation rendering units.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
//	TTErr getFunctionParameters(const TTValue&, TTValue& listOfParameterNamesToReturn);
	
	
	/** Get the current value of a parameter (attribute) used by the current spatialisation method.
	 @param aParameterNameIn		The name of the parameter that we want to query the value of.
	 @param
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
//	TTErr getFunctionParameter(const TTValue& aParameterNameIn, TTValue& aValueOut);
	
	
	/** Set the value of a parameter (attribute) used by the current spatialisation method.
	 @param aParameterNameIn		The name of the parameter that we want to set and the value thatvwe want to set it to.
	 @param
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
//	TTErr setFunctionParameter(const TTValue& aParameterNameAndValue, TTValue&);
	
	
	/**	@brief A standard audio processing method as used by Jamoma DSP objects.
	 @details This mthod performs the actual spatialisation rendering.
	 @param inputs					A multichannel vector of audio signals for all sources that are to be spatially rendered.
	 @param outputs					A multichannel vector of audio signals for each of the destinations that we are rendering to.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __TT_SPAT_H__
