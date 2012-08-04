/* 
 *	Trajectory≈
 *	Trajectory generator/wrapper object for Jamoma
 *	Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_TRAJECTORY_H__
#define __TT_TRAJECTORY_H__

#include "TTDSP.h"


/**	A Generalized trajectory generator/wrapper object for Jamoma. */
class TTTrajectory : TTAudioObject {
	TTCLASS_SETUP(TTTrajectory)
	
protected:
	TTAudioObjectPtr		mActualTrajectoryObject;	///< The actual trajectory object that this object is currently wrapping
	TTFloat64				mA, mB, mC, mDeltaX, mDeltaY, mDeltaZ;
	TTSymbolPtr				mType;					///< The name of the current trajectory type
	TTSymbolPtr				mMode;
	//TTList					mAnchorPoints;
	TTAudioObjectPtr		mPhasors[1];
	TTAudioSignalArrayPtr	mPhasorOutputSignals;
	TTAudioObjectPtr		mRamps[1];
	TTAudioSignalArrayPtr	mRampOutputSignals;
	
public:
	
	TTErr setType(const TTValue& newValue)
	{	
		TTSymbolPtr newType = newValue;
		TTErr		err = kTTErrNone;
		
		// if the type didn't change, then don't change the trajectory
		if (newType == mType)
			return kTTErrNone;
		
		mType = newType;
		err = TTObjectInstantiate(mType, &mActualTrajectoryObject, 2);			
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
	
	
	TTErr getTypes(const TTValue&, TTValue& listOfTrajectoryTypesToReturn)
	{
		TTValue v;
		v.setSize(2);
		v.set(0, TT("trajectory"));
		v.set(1, TT("audio")); 
		return TTGetRegisteredClassNamesForTags(listOfTrajectoryTypesToReturn, v);
	}
	
	TTErr getCurrentType(const TTValue&, TTValue& CurrentTypeToReturn)

	{
		CurrentTypeToReturn = mType;
		return kTTErrNone;
	}
	
	
	
	TTErr getCurrentAttributeNames(const TTValue&, TTValue& listOfCurrentAttributesToReturn)
	{
		long		n;
		TTValue		names;
		TTSymbol*	aName;
		TTString	nameString;
		
		listOfCurrentAttributesToReturn.clear();
		mActualTrajectoryObject->getAttributeNames(names);
		n = names.getSize();
		for (int i=0; i<n; i++) {
			names.get(i, &aName);
			nameString = aName->getCString();
			if (aName == TT("bypass") || aName == TT("mute") || aName == TT("maxNumChannels") || aName == TT("sampleRate"))
				continue;	
			listOfCurrentAttributesToReturn.append(aName);
		}
		if (listOfCurrentAttributesToReturn.getSize()==0)
			listOfCurrentAttributesToReturn.append(TT("NULL")); // in case there is no attribute, send a NULL value out
												   
		return kTTErrNone;
	}
	
	TTErr ramp(const TTValue& arguments, TTValue&)
	{
		/*
		 ramp <startValue|double> <stopValue|double> <time|double> <type|string>
		 ramp <stopValue|double> <time|double> <type|string>
		 ramp <startValue|double> <stopValue|double> <time|double> 
		 ramp <stopValue|double> <time|double> 
		*/
		long		n;
		TTSymbolPtr	attrType;
		TTFloat64   x;
		TTErr		err = kTTErrNone;
		
		if (mMode == TT("ramp")){
			if (ttDataTypeInfo[arguments.getType(0)]->isNumerical and ttDataTypeInfo[arguments.getType(1)]->isNumerical) {
				n = arguments.getSize();
				switch(n)
				{
					case 4:
						if (ttDataTypeInfo[arguments.getType(2)]->isNumerical and ttDataTypeInfo[arguments.getType(3)]->isNumerical == false){
							arguments.get(3, &attrType);
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
						if (ttDataTypeInfo[arguments.getType(2)]->isNumerical)
							{// start stop time
							arguments.get(0, x); x = x * 2.0;  // scaling						
							mRamps[0]->setAttributeValue(TT("startValue"), x);
							arguments.get(1, x); x = x * 2.0;  // scaling
							mRamps[0]->setAttributeValue(TT("destinationValue"), x);	
							arguments.get(2, x); 
							mRamps[0]->setAttributeValue(TT("rampTime"), x);	
						}
						else {// stop time type
							arguments.get(2, &attrType);
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
	
	
	TTErr setA(const TTValue& newValue)
	{	
		mA = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("a"), mA);
	}
	
	
	TTErr setB(const TTValue& newValue)
	{	
		mB = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("b"), mB);
	}
	
	
	TTErr setC(const TTValue& newValue)
	{	
		mC = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("c"), mC);
	}
	
	
	TTErr setDeltaX(const TTValue& newValue)
	{	
		mDeltaX = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("deltaX"), mDeltaX);
	}
	
	
	TTErr setDeltaY(const TTValue& newValue)
	{	
		mDeltaY = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("deltaY"), mDeltaY);
	}
	
	
	TTErr setDeltaZ(const TTValue& newValue)
	{	
		mDeltaZ = newValue;
		return mActualTrajectoryObject->setAttributeValue(TT("deltaZ"), mDeltaZ);
	}
	
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&)
	{
		//for (int i=0; i<3; i++) {
		mPhasors[0]->setAttributeValue(kTTSym_sampleRate, (unsigned int)sr);
		mRamps[0]->setAttributeValue(kTTSym_sampleRate, (unsigned int)sr); 
		//}
		return mActualTrajectoryObject->setAttributeValue(kTTSym_sampleRate, (unsigned int)sr);
	}

	TTErr setMode(const TTValue& newValue)
	{	
		mMode = newValue;
		return setProcessPointers();
	}
	
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
	
	TTErr processAudioPhasorInternal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		mPhasorOutputSignals->allocAllWithVectorSize(outputs->getVectorSize());
		
		mPhasors[0]->process(mPhasorOutputSignals->getSignal(0));
		//mPhasors[1]->process(mPhasorOutputSignals->getSignal(1));
		//mPhasors[2]->process(mPhasorOutputSignals->getSignal(2));
		
		return mActualTrajectoryObject->process(mPhasorOutputSignals, outputs);
	}

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
