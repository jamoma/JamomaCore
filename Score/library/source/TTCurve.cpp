/** @file
 *
 * @ingroup scoreExtension
 *
 * @brief a curve samples a freehand function unit at a sample rate
 *
 * @see Automation
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#include "TTCurve.h"

#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass                 TTCurve
#define thisTTClassName             "Curve"
#define thisTTClassTags             "curve"

TT_BASE_OBJECT_CONSTRUCTOR,
mActive(YES),
mRedundancy(NO),
mSampleRate(20),
mRecorded(NO),
mSampled(NO),
mLastSample(0.)
{
	TT_ASSERT("Correct number of args to create TTCurve", arguments.size() == 0);

    registerAttribute(TTSymbol("functionParameters"), kTypeLocalValue, NULL, (TTGetterMethod) &TTCurve::getFunctionParameters, (TTSetterMethod) &TTCurve::setFunctionParameters);

    addAttribute(Active, kTypeBoolean);
    addAttribute(Redundancy, kTypeBoolean);
    addAttributeWithSetter(SampleRate, kTypeUInt32);
    addAttribute(Recorded, kTypeBoolean);
    addAttribute(Sampled, kTypeBoolean);

    addMessageWithArguments(Sample);
    addMessageWithArguments(ValueAt);

	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);

	// needed to be handled by a TTTextHandler
	addMessageWithArguments(WriteAsText);
	addMessageProperty(WriteAsText, hidden, YES);
	addMessageWithArguments(ReadFromText);
	addMessageProperty(ReadFromText, hidden, YES);

    mFunction = TTObject("freehand", 1); // for 1 channel only
}

TTCurve::~TTCurve()
{
    ;
}

TTErr TTCurve::getFunctionParameters(TTValue& value)
{
    TTValue         curveList;
    TTUInt32        i, j;

    if (mRecorded)
    {
        // return parameters from samples
        // curveList    : x1 y1 exponential base b1 x2 y2 exponential base b2 . . . . .
        // value        : x1 y1 b1 x2 y2 b2 . . .

        value.resize(mList.getSize() * 3);

        j = 0;
        for (mList.begin(); mList.end(); mList.next())
        {
            value[j] = mList.current()[0];
            value[j+1] = mList.current()[1];
            value[j+2] = TTFloat64(1.);
            j = j+3;
        }

        return kTTErrNone;
    }

    if (!mFunction.get("curveList", curveList))
    {
        // return parameters from function value
        // curveList    : x1 y1 exponential base b1 x2 y2 exponential base b2 . . . . .
        // value        : x1 y1 b1 x2 y2 b2 . . .

        value.resize((curveList.size() / 5) * 3);

        j = 0;
        for (i = 0; i < curveList.size(); i = i+5)
        {
            value[j] = curveList[i];
            value[j+1] = curveList[i+1];
            value[j+2] = curveList[i+4];

            j = j+3;
        }

        return kTTErrNone;
    }

    return kTTErrGeneric;
}

TTErr TTCurve::setFunctionParameters(const TTValue& value)
{
    TTValue     curveList, none;
    TTUInt32    i, j, duration;

    if (mRecorded)
    {
        // edit samples from parameters
        // value        : x1 y1 b1 x2 y2 b2 . . .
        // sample       : x1 y1 x2 y2 . .

        mList.clear();

        for (i = 0; i < value.size(); i = i+3)
        {
            append(TTValue(value[i], value[i+1]));
        }

        return kTTErrNone;
    }

    if (value.size() > 0)
    {
        // edit function curve list from parameters
        // value        : x1 y1 b1 x2 y2 b2 . . .
        // curveList    : x1 y1 exponential base b1 x2 y2 exponential base b2 . . . . .

        curveList.resize((value.size() / 3) * 5);

        // check inputValue format
        if ( (curveList.size() / 5) * 3 != value.size())
            return kTTErrGeneric;

        j = 0;

        for (i = 0; i < value.size(); i = i+3)
        {
            if (value[i].type() == kTypeFloat64 &&
                value[i+1].type() == kTypeFloat64 &&
                value[i+2].type() == kTypeFloat64)
            {
                curveList[j] = value[i];
                curveList[j+1] = value[i+1];
                curveList[j+2] = TTSymbol("exponential");
                curveList[j+3] = TTSymbol("base");
                curveList[j+4] = value[i+2];

                j = j+5;
            }
            else
                return kTTErrGeneric;
        }

        // retreive the current duration
        duration = mList.getSize() * mSampleRate;

        // clear the samples
        mList.clear();

        // it is not based on a record anymore
        mRecorded = NO;

        // set function curve list
        mFunction.set("curveList", curveList);

        // sample the curve
        mSampled = NO;
        if (duration)
            Sample(duration, none);

        return kTTErrNone;
    }

    return kTTErrGeneric;
}

TTErr TTCurve::setSampleRate(const TTValue& value)
{
    TTUInt32    newSampleRate, duration;
    TTValue     none;

    if (value.size() == 1) {
		
        if (value[0].type() == kTypeUInt32)
        {
			
            newSampleRate = value;

            // filter repetitions
            
            if (newSampleRate != mSampleRate)
            {
                // retreive the current duration from the old sample rate
                duration = mList.getSize() * mSampleRate;

                // set the new sample rate
                mSampleRate = newSampleRate;

                // resample the curve
                mSampled = NO;
                if (duration)
                    Sample(duration, none);

                return kTTErrNone;
            }
        }
    }

    return kTTErrGeneric;
}

TTErr TTCurve::Sample(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 1) {

        if (inputValue[0].type() == kTypeUInt32) {

            TTUInt32    i, nbPoints, duration;
            TTFloat64   x, y;

            duration = inputValue[0];

            nbPoints = duration / mSampleRate;

            // for a same number of points and already sampled curve
            
            if (nbPoints == mList.getSize() && mSampled)
            {
                // return the samples
                outputValue.clear();
                for (mList.begin(); mList.end(); mList.next())
                    outputValue.append(mList.current()[1]);

                mSampled = YES;

                return kTTErrNone;
            }

            // for a record based curve
            
            if (mRecorded)
            {
                TTList newSamples;
                
                // get new samples from recorded samples
                mList.begin();
                outputValue.clear();
                for (i = 0; i < nbPoints; i++)
                {
                    x = TTFloat64(i) / TTFloat64(nbPoints);
                    TTCurveNextSampleAt(this, x, y);

                    newSamples.append(TTValue(x, y));
                    outputValue.append(y);
                }
                
                // but don't resample the recorded curve
                /*
                mList.clear();
                for (newSamples.begin(); newSamples.end(); newSamples.next())
                    mList.append(newSamples.current());
                 */
            }

            // for a function based curve
            else
            {
                // get new samples from function
                mList.clear();
                outputValue.clear();
                for (i = 0; i < nbPoints; i++)
                {
                    x = TTFloat64(i) / TTFloat64(nbPoints);
                    TTAudioObjectBasePtr(mFunction.instance())->calculate(x, y);

                    mList.append(TTValue(x, y));
                    outputValue.append(y);
                }
            }

            mSampled = YES;

            return kTTErrNone;
        }
    }

    return kTTErrGeneric;
}

TTErr TTCurve::ValueAt(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 1) {

        if (inputValue[0].type() == kTypeFloat64) {

            TTFloat64 x, y;

            x = inputValue[0];

            if (mRecorded) {

                mList.begin();
                TTCurveNextSampleAt(this, x, y);
            }
            else
                TTAudioObjectBasePtr(mFunction.instance())->calculate(x, y);

            outputValue = y;

            return kTTErrNone;
        }
    }

    return kTTErrGeneric;
}

TTErr TTCurve::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;

    TTValue     v;
    TTString    s;

    xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "curve");

    // Write if it is active
    v = mActive;
    v.toString();
    s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "active", BAD_CAST s.data());

    // Write the redundancy
    v = mRedundancy;
    v.toString();
    s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "redundancy", BAD_CAST s.data());

    // Write the sample rate
    v = mSampleRate;
    v.toString();
    s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "sampleRate", BAD_CAST s.data());
    
    if (!mRecorded)
    {
        // Write the function parameters
        getFunctionParameters(v);
        v.toString();
        s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "function", BAD_CAST s.data());
    }
    else 
    {
        // Write the samples
        v.clear();
        for (mList.begin(); mList.end(); mList.next()) 
        {
            v.append(mList.current()[0]);
            v.append(mList.current()[1]);
        }

        v.toString();
        s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "samples", BAD_CAST s.data());
    }

    xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);

	return kTTErrNone;
}

TTErr TTCurve::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;

    TTValue v;

    // get the active state
    if (!aXmlHandler->getXmlAttribute(kTTSym_active, v, NO)) {

        if (v.size() == 1) {

            if (v[0].type() == kTypeInt32) {

                mActive = v[0] == 1;
            }
        }
    }

    // get the redundancy
    if (!aXmlHandler->getXmlAttribute(kTTSym_redundancy, v, NO)) {

        if (v.size() == 1) {

            if (v[0].type() == kTypeInt32) {

                mRedundancy = v[0] == 1;
            }
        }
    }

	// get the sample rate
    if (!aXmlHandler->getXmlAttribute(kTTSym_sampleRate, v, NO)) {

        if (v.size() == 1) {

            if (v[0].type() == kTypeUInt32) {

                mSampleRate = v[0];
            }
        }
    }

    // get the function parameters
    if (!aXmlHandler->getXmlAttribute(kTTSym_function, v, NO)) {

        setFunctionParameters(v);

        mRecorded = NO;
    }

    // get the function samples
    else if (!aXmlHandler->getXmlAttribute(kTTSym_samples, v, NO)) {

        mList.clear();
        for (TTUInt32 i = 0; i < v.size(); i = i+2)
            mList.append(TTValue(v[i], v[i+1]));

        mRecorded = YES;
        mSampled = YES;
    }

	return kTTErrNone;
}

TTErr TTCurve::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;

	// TODO : write the curve attributes

	return kTTErrGeneric;
}

TTErr TTCurve::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;

    // TODO : parse the curve attributes

	return kTTErrGeneric;
}


#if 0
#pragma mark -
#pragma mark Some Functions
#endif

TTErr TTCurveNextSampleAt(TTCurve* aCurve, TTFloat64& x, TTFloat64& y)
{
    if (aCurve->mActive)
    {
        TTBoolean   found = NO;
        TTErr       err = kTTErrNone;

        // while the list doesn't reach the end
        while (aCurve->mList.end()) 
        {
            if (TTFloat64(aCurve->mList.current()[0]) < x)
                aCurve->mList.next();

            else 
            {
                y = aCurve->mList.current()[1];
                found = YES;
                break;
            }
        }
        
        if (found)
        {
            if (!aCurve->mRedundancy && y == aCurve->mLastSample)
                err = kTTErrGeneric;

            aCurve->mLastSample = y;

            return err;
        }
    }

    return kTTErrValueNotFound;
}
