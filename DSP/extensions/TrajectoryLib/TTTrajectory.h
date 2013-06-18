/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief A generalized Trajectory generator wrapper object for Jamoma DSP
 *
 * @details This file wraps TrajectoyLib for Max.
 *
 * @authors Nils Peters, Tim Place
 *
 * @copyright Copyright © 2009 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_TRAJECTORY_H__
#define __TT_TRAJECTORY_H__

#include "TTDSP.h"

/** Generalized Trajectory Function Wrapper
*/
class TTTrajectory : TTAudioObjectBase {
	TTCLASS_SETUP(TTTrajectory)
	
protected:
	TTAudioObjectBasePtr		mActualTrajectoryObject;	///< The actual trajectory object that this object is currently wrapping
	TTFloat64				mA; 						///< Trajectory Parameter, usage depend on the actual trajectory
	TTFloat64				mB; 					///< Trajectory Parameter, usage depend on the actual trajectory
	TTFloat64				mC; 					///< Trajectory Parameter, usage depend on the actual trajectory
	TTFloat64				mDeltaX; 				///< Trajectory Parameter, usage depend on the actual trajectory
	TTFloat64				mDeltaY; 				///< Trajectory Parameter, usage depend on the actual trajectory
	TTFloat64				mDeltaZ; 				///< Trajectory Parameter, usage depend on the actual trajectory function 
	TTSymbol				mType;					///< The name of the current trajectory type
	TTSymbol				mMode;					///< the underlying signal generator, can be "phasor" or "ramp"
	//TTList					mAnchorPoints;
	TTAudioObjectBasePtr		mPhasors[1];			///< Object pointer to the internal phasor generator
	TTAudioSignalArrayPtr	mPhasorOutputSignals;   ///< The output vector of the phasor generator
	TTAudioObjectBasePtr		mRamps[1];				///< Object pointer to the internal ramp generator
	TTAudioSignalArrayPtr	mRampOutputSignals;		///< The output vector of the ramp generator
	
public:
	
	/** Setting the trajectory type
	 @param newValue
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setType(const TTValue& newValue)
	{	
		TTSymbol	newType = newValue;
		TTErr		err = kTTErrNone;
		
		// if the type didn't change, then don't change the trajectory
		if (newType == mType)
			return kTTErrNone;
		
		mType = newType;
		err = TTObjectBaseInstantiate(mType, &mActualTrajectoryObject, 2);			
		if (!err) {
			// Now that we have our new trajectory type, update it with the current state of the wrapper:
			mActualTrajectoryObject->setAttributeValue(TT("a"), mA);
			mActualTrajectoryObject->setAttributeValue(TT("b"), mB);
			mActualTrajectoryObject->setAttributeValue(TT("c"), mC);
			mActualTrajectoryObject->setAttributeValue(TT("deltaX"), mDeltaX);
			mActualTrajectoryObject->setAttributeValue(TT("deltaY"), mDeltaY);
			mActualTrajectoryObject->setAttributeValue(TT("deltaZ"), mDeltaZ);
			
			//TODO: I currently update ALL Attributes, regardless whether the types support it or not
			
			//mActualTrajectoryObject->setAttributeValue(kTTSym_sampleRate, sr);
			//mActualFilterObject->setAttributeValue(TT("frequency"), mFrequency);
			//err = mActualFilterObject->setAttributeValue(TT("q"), mQ);
			//if (err == kTTErrInvalidAttribute)
			//	err = mActualFilterObject->setAttributeValue(TT("resonance"), mQ);
			//mActualFilterObject->setAttributeValue(TT("bypass"), this->attrBypass);
			//mActualFilterObject->setAttributeValue(kTTSym_sampleRate, sr);
		}
		return err;
	}
	
	
	/**	Return a list of all the available trajectory types.
	 @param listOfTrajectoryTypesToReturn Pointer to an array that will be filled with a list of all available trajectory types.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getTypes(const TTValue&, TTValue& listOfTrajectoryTypesToReturn)
	{
		TTValue v;
		v.resize(2);
		v.set(0, TT("trajectory"));
		v.set(1, TT("audio")); 
		return TTGetRegisteredClassNamesForTags(listOfTrajectoryTypesToReturn, v);
	}

	/**	Return the current trajectory type.
 	@param CurrentTypeToReturn Pointer to an array that will be filled the current trajectory type.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCurrentType(const TTValue&, TTValue& CurrentTypeToReturn)

	{
		CurrentTypeToReturn = mType;
		return kTTErrNone;
	}
	
	
	/**	Return a list of the attribute names used in the selected trajectory type.
 	@param listOfCurrentAttributesToReturn Pointer to an array that will be filled all attributes used in the current trajectory type.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCurrentAttributeNames(const TTValue&, TTValue& listOfCurrentAttributesToReturn)
	{
		long		n;
		TTValue		names;
		TTSymbol	aName;
		
		listOfCurrentAttributesToReturn.clear();
		mActualTrajectoryObject->getAttributeNames(names);
		n = names.size();
		for (int i=0; i<n; i++) {
			names.get(i, aName);

			if (aName == TT("bypass") || aName == TT("mute") || aName == TT("maxNumChannels") || aName == TT("sampleRate"))
				continue;	
			listOfCurrentAttributesToReturn.append(aName);
		}
		if (listOfCurrentAttributesToReturn.size()==0)
			listOfCurrentAttributesToReturn.append(TT("NULL")); // in case there is no attribute, send a NULL value out
												   
		return kTTErrNone;
	}
	
	/**	Function to trigger the trajectory generation when ramp mode is selected
 	@param arguments additional arguments will determine ramping:
	 ramp <startValue|double> <stopValue|double> <time|double> <type|string>
	 ramp <stopValue|double> <time|double> <type|string>
	 ramp <startValue|double> <stopValue|double> <time|double> 
	 ramp <stopValue|double> <time|double> @n
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr ramp(const TTValue& arguments, TTValue&)
	{
		/*
		 ramp <startValue|double> <stopValue|double> <time|double> <type|string>
		 ramp <stopValue|double> <time|double> <type|string>
		 ramp <startValue|double> <stopValue|double> <time|double> 
		 ramp <stopValue|double> <time|double> 
		*/
		long		n;
		TTSymbol	attrType;
		TTFloat64   x;
		TTErr		err = kTTErrNone;
		
		if (mMode == TT("ramp")){
			if (ttDataTypeInfo[arguments[0].type()]->isNumerical and ttDataTypeInfo[arguments[1].type()]->isNumerical) {
				n = arguments.size();
				switch(n)
				{
					case 4:
						if (ttDataTypeInfo[arguments[2].type()]->isNumerical and ttDataTypeInfo[arguments[3].type()]->isNumerical == false){
							arguments.get(3, attrType);
							setType(attrType);
							arguments.get(0, x); x = x * 2.0;  // scaling						
							mRamps[0]->setAttributeValue(TT("startValue"), x);
							arguments.get(1, x); x = x * 2.0;  // scaling
							mRamps[0]->setAttributeValue(TT("destinationValue"), x);	
							arguments.get(2, x); 
							mRamps[0]->setAttributeValue(TT("rampTime"), x);	
						}	
						break;
					case 3:
						if (ttDataTypeInfo[arguments[2].type()]->isNumerical)
							{// start stop time
							arguments.get(0, x); x = x * 2.0;  // scaling						
							mRamps[0]->setAttributeValue(TT("startValue"), x);
							arguments.get(1, x); x = x * 2.0;  // scaling
							mRamps[0]->setAttributeValue(TT("destinationValue"), x);	
							arguments.get(2, x); 
							mRamps[0]->setAttributeValue(TT("rampTime"), x);	
						}
						else {// stop time type
							arguments.get(2, attrType);
							setType(attrType);
							arguments.get(0, x); x = x * 2.0;  // scaling
							mRamps[0]->setAttributeValue(TT("destinationValue"), x);	
							arguments.get(1, x); 
							mRamps[0]->setAttributeValue(TT("rampTime"), x);
						}
					break;
				case 2: // stop time
						arguments.get(0, x); x = x * 2.0;  // scaling
						mRamps[0]->setAttributeValue(TT("destinationValue"), x);	
						arguments.get(1, x); 
						mRamps[0]->setAttributeValue(TT("rampTime"), x);
					break;
				default:
					err = kTTErrWrongNumValues;
				}
			}
		}
		return err;
	}
	
	/**	reset the phasor and ramp generators
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr reset()
	{
		TTValue v;
		v.set(0,0.0);
		//for (int i=0; i<1; i++) {
		mPhasors[0]->setAttributeValue(TT("phase"),v);		
		mRamps[0]->setAttributeValue(TT("startValue"),v);
		//}		
		return kTTErrNone;
	}
	
	/*TTErr setAnchorPoints(const TTValue& newValue)
	{	
		mAnchorPoints = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("anchorPoints"), mAnchorPoints);
	}*/
	
   	/**	Set parameter A, actual usage depends on selected trajectory type
	 @param newValue new value
   	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
   	 */
	TTErr setA(const TTValue& newValue)
	{	
		mA = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("a"), mA);
	}
	
  	/**	Set parameter B, actual usage depends on selected trajectory type
	 @param newValue new value
  	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
  	 */
	TTErr setB(const TTValue& newValue)
	{	
		mB = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("b"), mB);
	}
	
  	/**	Set parameter C, actual usage depends on selected trajectory type
 	@param newValue new value
  	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
  	 */
	TTErr setC(const TTValue& newValue)
	{	
		mC = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("c"), mC);
	}
	
  	/**	Set parameter DeltaX, actual usage depends on selected trajectory type
	 @param newValue new value
  	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
  	 */
	TTErr setDeltaX(const TTValue& newValue)
	{	
		mDeltaX = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("deltaX"), mDeltaX);
	}
	
 	/**	Set parameter DeltaY, actual usage depends on selected trajectory type
	 @param newValue new value
 	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
 	 */
	TTErr setDeltaY(const TTValue& newValue)
	{	
		mDeltaY = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("deltaY"), mDeltaY);
	}
	
 	/**	Set parameter DeltaZ, actual usage depends on selected trajectory type
 	@param newValue new value
 	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
 	 */
	TTErr setDeltaZ(const TTValue& newValue)
	{	
		mDeltaZ = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("deltaZ"), mDeltaZ);
	}
	
	
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&)
	{
		//for (int i=0; i<3; i++) {
		mPhasors[0]->setAttributeValue(kTTSym_sampleRate, sr);
		mRamps[0]->setAttributeValue(kTTSym_sampleRate, sr); 
		//}
		return mActualTrajectoryObject->setAttributeValue(kTTSym_sampleRate, sr);
	}

 	/**	Set mode to "ramp" or "phasor" 
	 @param newValue new value
 	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
 	 */
	TTErr setMode(const TTValue& newValue)
	{	
		mMode = newValue;
		return setProcessPointers();
	}
	
	/**	Internal function to set the process pointers to the ramp o phasor generator according to the setMode function
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setProcessPointers()
	{
		TTErr	err = kTTErrNone;
		
		if (mMode == TT("phasor")) {
			err = setProcess((TTProcessMethod)&TTTrajectory::processAudioPhasorInternal);
		}
		else { //TT("ramp")
			err = setProcess((TTProcessMethod)&TTTrajectory::processAudioRampInternal);
		}
		return err;
	}
	
	/**	Internal Computing the phasor signal to drive the trajectory functions
	@param newValue new value
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
 	*/
	TTErr processAudioPhasorInternal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		mPhasorOutputSignals->allocAllWithVectorSize(outputs->getVectorSize());
		
		mPhasors[0]->process(mPhasorOutputSignals->getSignal(0));
		//mPhasors[1]->process(mPhasorOutputSignals->getSignal(1));
		//mPhasors[2]->process(mPhasorOutputSignals->getSignal(2));
		
		return mActualTrajectoryObject->process(mPhasorOutputSignals, outputs);
	}

	/**	Internal Computing the ramp signal to drive the trajectory functions
	@param newValue new value
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
 	*/
	TTErr processAudioRampInternal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		mRampOutputSignals->allocAllWithVectorSize(outputs->getVectorSize());
		
		mRamps[0]->process(mRampOutputSignals->getSignal(0));
		//mRamps[1]->process(mRampOutputSignals->getSignal(1));
		//mRamps[2]->process(mRampOutputSignals->getSignal(2));
		
		return mActualTrajectoryObject->process(mRampOutputSignals, outputs);
	}
};


#endif // __TT_TRAJECTORY_H__
