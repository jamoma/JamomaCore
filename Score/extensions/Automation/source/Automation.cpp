/** @file
 *
 * @ingroup scoreExtension
 *
 * @brief Automation time process class manage interpolation between the start event state and end event state depending on the scheduler position
 *
 * @see TimePluginLib, TTTimeProcess
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#include "Automation.h"
#include "TTCurve.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass          Automation
#define thisTTClassName      "Automation"
#define thisTTClassTags      "time, process, automation"

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_Automation(void)
{
	TTFoundationInit();
	Automation::registerClass();
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Constructor/Destructor
#endif

TIME_PROCESS_PLUGIN_CONSTRUCTOR
{
    TIME_PLUGIN_INITIALIZE

    registerAttribute(TTSymbol("curveAddresses"), kTypeLocalValue, NULL, (TTGetterMethod)& Automation::getCurveAddresses);
    
    addMessageWithArguments(CurveAdd);
    addMessageWithArguments(CurveGet);
    addMessageWithArguments(CurveUpdate);
    addMessageWithArguments(CurveRemove);
    addMessage(Clear);
    addMessageWithArguments(CurveRecord);
    
    mScheduler.set("granularity", TTFloat64(1.));
}

Automation::~Automation()
{
    Clear();
}

#if 0
#pragma mark -
#pragma mark TimeProcessPlugin Methods
#endif

TTErr Automation::getParameterNames(TTValue& value)
{
    value.clear();
	//value.append(TTSymbol("aParameterName"));
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark TTTimeProcess Methods
#endif

TTErr Automation::Compile()
{
    TTValue     duration, keys, objects, none;
    TTSymbol    key;
    TTObject    curve;
    TTUInt32    i, j;
    
    // get the current duration
    getAttributeValue(kTTSym_duration, duration);
    
    // sample all curves for the current duration
    mCurves.getKeys(keys);
    
    for (i = 0; i < keys.size(); i++) {
        
        key = keys[i];
        mCurves.lookup(key, objects);
        
        // sample each indexed curves
        for (j = 0; j < objects.size(); j++) {
            
            curve = objects[j];
            curve.send("Sample", duration, none);
        }
    }
    
    // compilation done
    mCompiled = YES;
    
    return kTTErrNone;
}

TTErr Automation::ProcessStart()
{
    TTValue     v, keys, objects, vStart, none;
    TTSymbol    key;
    TTObject    curve;
    TTObject    aReceiver;
    TTUInt32    i, j;
    
    // set curves on the first sample and prepare new curves to record the address value
    mCurves.getKeys(keys);
    
    for (i = 0; i < keys.size(); i++)
    {
        key = keys[i];
        mCurves.lookup(key, objects);
        
        // update only for query symbol "?"
        vStart = getStartEvent().send("StateAddressGetValue", key);
        
        if (vStart.size() == 1)
        {
            if (vStart[0].type() == kTypeSymbol)
            {
                TTSymbol s = vStart[0];
                if (s == TTSymbol("?"))
                {
                    CurveUpdate(key, none);
                }
            }
        }
        
        // set each indexed curves on the first sample
        for (j = 0; j < objects.size(); j++)
        {
            curve = objects[j];
            TTCurvePtr(curve.instance())->begin();
        }
        
        // a curve with a receiver is recording
        if (!mRecordReceivers.lookup(key, v))
        {
            aReceiver = v[0];
            
            // delete all indexed curves
            mCurves.remove(key);
            
            // get the current value to update the start state
            if (!aReceiver.send("Grab", v, vStart))
            {
                // set the start event state value for this address
                v = key;
                v.append(TTPtr(&vStart));
                getStartEvent().send("StateAddressSetValue", v);
                
                // create as many indexed curves as the vStart size
                objects.resize(vStart.size());
                
                for (j = 0; j < vStart.size(); j++)
                {
                    curve = TTObject("Curve");
                    
                    // store the first point
                    TTCurvePtr(curve.instance())->append(TTValue(0., vStart[j]));
                    
                    // index the curve
                    objects[j] = curve;
                }
                
                // register all the curves for this address
                mCurves.append(key, objects);
            }
        }
    }
    
    return kTTErrNone;
}

TTErr Automation::ProcessEnd()
{
    TTValue     v, keys, objects, vEnd, out;
    TTSymbol    key;
    TTObject    curve;
    TTObject    aReceiver;
    TTUInt32    i, j;
    TTBoolean   change = NO;
    
    // edit last point of each recording curves
    mRecordReceivers.getKeys(keys);
    for (i = 0; i < keys.size(); i++) {
        
        key = keys[i];
        mRecordReceivers.lookup(key, v);
        aReceiver = v[0];
        
        // get the current value to update the end state
        if (!aReceiver.send("Grab", v, vEnd)) {
            
            // set the end event state value for this address
            v = key;
            v.append(TTPtr(&vEnd));
            getEndEvent().send("StateAddressSetValue", v);
            
            // update each indexed curves
            if (!mCurves.lookup(key, objects)) {
                
                for (j = 0; j < objects.size(); j++) {
                    
                    curve = objects[j];
                    
                    // store the last point
                    TTCurvePtr(curve.instance())->append(TTValue(1., vEnd[j]));
                    
                    // set the curve in record mode
                    curve.set(kTTSym_recorded, YES);
                    
                    // set the curve as already sampled
                    curve.set(kTTSym_sampled, YES);
                    
                    // some parameters have changed
                    change = YES;
                }
            }
        }
    }
    
    // is the last compilation still valid ?
    mCompiled = !change && mCompiled;
    
    return kTTErrNone;
}

TTErr Automation::Process(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("Automation::Process : inputValue is correct", inputValue.size() == 2 && inputValue[0].type() == kTypeFloat64 && inputValue[1].type() == kTypeFloat64);
    
    TTFloat64 position = inputValue[0];
    TTFloat64 date = inputValue[1];
    
    TTFloat64       sample;
    TTValue         v, keys, objects, valueToSend, none;
    TTSymbol        key;
    TTAddress       address;
    TTObject 		curve, sender;
    TTUInt32        i, j;
    TTBoolean       redundancy;
	TTErr			err;
    
    // store current position for recording
    mCurrentPosition = position;
    
    // don't process for 0. or 1. to not send the same value twice
    if (position == 0. || position == 1.)
        return kTTErrGeneric;
    
    // calculate the curves
    mCurves.getKeys(keys);
    for (i = 0; i < keys.size(); i++) {
        
        key = keys[i];
        
        // a curve is processed only if it is not recording
        if (!mRecordReceivers.lookup(key, objects))
            continue;
        
        mCurves.lookup(key, objects);
        
        // process each indexed curve to fill the value to send
        valueToSend.clear();
        valueToSend.resize(objects.size());
        err = kTTErrNone;
        redundancy = YES;
        for (j = 0; j < objects.size(); j++) {
            
            curve = objects[j];
            
            err = TTCurveNextSampleAt(TTCurvePtr(curve.instance()), position, sample);
            
            // if no value
            if (err == kTTErrValueNotFound)
                break;
            
            redundancy &= err == kTTErrGeneric;
            
            valueToSend[j] = sample;
        }
        
        // if no value
        if (err == kTTErrValueNotFound || redundancy)
            continue;
        
        // look for the sender at the address
        if (!mSenders.lookup(key, objects)) {
            
            sender = objects[0];
            sender.send(kTTSym_Send, valueToSend, none);
        }
    }
    
    return kTTErrNone;
}

TTErr Automation::ProcessPaused(const TTValue& inputValue, TTValue& outputValue)
{
    // théo : what to do on pause/resume ?
    return kTTErrNone;
}

TTErr Automation::Goto(const TTValue& inputValue, TTValue& outputValue)
{
    TTUInt32        duration, timeOffset;
    TTFloat64       position, date;
    TTValue         v, keys, objects, none;
    TTSymbol        key;
    TTObject		curve;
    TTUInt32        i, j;
    TTBoolean       mute = NO;
    
    if (inputValue.size() >= 1) {
        
        if (inputValue[0].type() == kTypeUInt32) {
            
            this->getAttributeValue(kTTSym_duration, v);
            
            // TODO : TTTimeProcess should extend Scheduler class
            duration = v[0];
            mScheduler.set(kTTSym_duration, TTFloat64(duration));
            
            timeOffset = inputValue[0];
            mScheduler.set(kTTSym_offset, TTFloat64(timeOffset));
            
            // is the automation is temporary muted ?
            if (inputValue.size() == 2) {
                
                if (inputValue[1].type() == kTypeBoolean) {
                    
                    mute = inputValue[1];
                }
            }
            
            if (!mute && !mMute) {
                
                // get scheduler progression and realTime
                mScheduler.get("position", v);
                position = TTFloat64(v[0]);
                
                mScheduler.get("date", v);
                date = TTFloat64(v[0]);
                
                // DEBUG : to see if it is faster without this part
                // reset each curves on its first sample
                mCurves.getKeys(keys);
                
                for (i = 0; i < keys.size(); i++) {
                    
                    key = keys[i];
                    mCurves.lookup(key, objects);
                    
                    for (j = 0; j < objects.size(); j++) {
                        
                        curve = objects[j];
                        
                        TTCurvePtr(curve.instance())->begin();
                    }
                }
                
                v = position;
                v.append(date);
                
                return Process(v, none);
            }
            else
                return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr Automation::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
    TTValue     v, keys;
    TTSymbol    name, key;
    TTUInt32    i;
    
    // Write the curves
    mCurves.getKeys(keys);
    for (i = 0; i < keys.size(); i++) {
        
        key = keys[i];
        mCurves.lookup(key, v);
        
        xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "indexedCurves");
        
        // Write the curve's address
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST key.c_str());
        
        // write each indexed curve
        aXmlHandler->setAttributeValue(kTTSym_object, v);
        aXmlHandler->sendMessage(TTSymbol("Write"));
        
        xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
    }
    
	return kTTErrNone;
}

TTErr Automation::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
    TTObject    curve;
    TTAddress   address;
    TTValue     v, none, duration;
    TTErr       err;
    
    // If there are indexed curves
    if (aXmlHandler->mXmlNodeName == TTSymbol("indexedCurves")) {
        
        if (aXmlHandler->mXmlNodeStart) {
            
            mCurrentObjects.clear();
            return kTTErrNone;
        }
        else {
            
            // Get the address
            if (!aXmlHandler->getXmlAttribute(kTTSym_address, v, YES)) {
                
                if (v.size() == 1) {
                    
                    if (v[0].type() == kTypeSymbol) {
                        
                        address = v[0];
                        
                        // store the curve
                        mCurves.append(address, mCurrentObjects);
                        
                        // add a sender
                        addSender(address);
                        return kTTErrNone;
                    }
                }
            }
        }
    }
    
    if (aXmlHandler->mXmlNodeName == TTSymbol("curve")) {
        
        // get the current duration
        getAttributeValue(kTTSym_duration, duration);
        
        curve = TTObject("Curve");
        
        mCurrentObjects.append(curve);
        
        // Pass the xml handler to the current curve to fill his data structure
        aXmlHandler->setAttributeValue(kTTSym_object, curve);
        err = aXmlHandler->sendMessage(kTTSym_Read);
        
        // Sample the curve to be ready to process it
        if (!err)
            curve.send("Sample", duration, v);
        
        return err;
    }
	
	return kTTErrGeneric;
}

TTErr Automation::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
	
	// TODO : write the curves
	
	return kTTErrGeneric;
}

TTErr Automation::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
	
    // TODO : parse the curves
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Notifications
#endif

TTErr Automation::EventDateChanged(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("Automation::EventDateChanged : inputValue is correct", inputValue.size() == 1 && inputValue[0].type() == kTypeObject);
    
    TTObject aTimeEvent = inputValue[0];
    
    if (aTimeEvent == this->getStartEvent())
    {
        // if needed, the compile method should be called again now
        mCompiled = NO;
        
        return kTTErrNone;
    }
    else if (aTimeEvent == this->getEndEvent())
    {
        // if needed, the compile method should be called again now
        mCompiled = NO;
        
        return kTTErrNone;
    }
    
    TTLogError("Automation::EventDateChanged %s : wrong event\n", mName.c_str());
    return kTTErrGeneric;
}

TTErr Automation::EventConditionChanged(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("Automation::EventConditionChanged : inputValue is correct", inputValue.size() == 2 && inputValue[0].type() == kTypeObject && inputValue[1].type() == kTypeObject);
    
    TTObject    aTimeEvent = inputValue[0];
    TTObject    aTimeCondition = inputValue[1];
    
    // no rule
    
    return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Specific Automation Methods
#endif

TTErr Automation::getCurveAddresses(TTValue& value)
{
    return mCurves.getKeys(value);
}

TTErr Automation::CurveAdd(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue     v, vStart, vEnd, parameters, objects, none;
    TTAddress   address;
    TTObject    curve, sender;
    TTBoolean   valid = YES;
    TTUInt32    i;
    
    if (inputValue.size() == 1)
    {
        if (inputValue[0].type() == kTypeSymbol)
        {
            address = inputValue[0];
            
            // if there is no curve at the address
            if (mCurves.lookup(address, v))
            {
                // get the start event state value for this address
                vStart = getStartEvent().send("StateAddressGetValue", address);
                
                // check for query symbol "?"
                if (vStart.size() == 1)
                {
                    if (vStart[0].type() == kTypeSymbol)
                    {
                        TTSymbol s = vStart[0];
                        if (s == TTSymbol("?"))
                        {
                            vStart = queryValue(address);
                        }
                    }
                }
                
                // get the end event state value for this address
                vEnd = getEndEvent().send("StateAddressGetValue", address);
                
                // check values size : we can't make curve for none equal sized values
                if (vStart.size() != vEnd.size())
                    return kTTErrGeneric;
                
                // check start and end value validity : we can't make a curve for a symbol
                for (i = 0; i < vStart.size(); i++)
                    valid &= vStart[i].type() != kTypeSymbol;
                
                for (i = 0; i < vEnd.size(); i++)
                    valid &= vEnd[i].type() != kTypeSymbol;
                
                if (!valid)
                    return kTTErrGeneric;
                
                // create a curve for each index of the value
                objects.resize(vStart.size());
                
                for (i = 0; i < vStart.size(); i++)
                {
                    curve = TTObject("Curve");
                    
                    // prepare curve parameters
                    parameters.resize(6);
                    parameters[0] = TTFloat64(0.);
                    parameters[1] = TTFloat64(vStart[i]);
                    parameters[2] = TTFloat64(1);
                    
                    parameters[3] = TTFloat64(1.);
                    parameters[4] = TTFloat64(vEnd[i]);
                    parameters[5] = TTFloat64(1);
                    
                    curve.set("functionParameters", parameters);
                    
                    // index the curve
                    objects[i] = curve;
                }
                
                // register all the curves for this address
                mCurves.append(address, objects);
                
                // add a sender for the curve
                addSender(address);
                
                // the last compilation is not valid
                mCompiled = NO;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr Automation::CurveGet(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress  address;
    
    if (inputValue.size() == 1)
    {
        if (inputValue[0].type() == kTypeSymbol)
        {
            address = inputValue[0];
            
            mCurves.lookup(address, outputValue);
            
            if (outputValue.size())
                return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr Automation::CurveUpdate(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue     v, vStart, vEnd, parameters, objects, none;
    TTAddress   address;
    TTObject    curve;
    TTUInt32    i;
    TTBoolean   change = NO;
    
    // update all curves
    if (inputValue.size() == 0)
    {
        TTValue         keys;
        TTSymbol        key;
        
        // update all curves
        mCurves.getKeys(keys);
        for (i = 0; i < keys.size(); i++)
        {
            key = keys[i];
            CurveUpdate(key, none);
        }
        
        return kTTErrNone;
    }
    
    if (inputValue.size() == 1)
    {
        if (inputValue[0].type() == kTypeSymbol)
        {
            address = inputValue[0];
            
            // if there is a curve at the address
            if (!mCurves.lookup(address, objects))
            {
                // get the start event state value for this address
                vStart = getStartEvent().send("StateAddressGetValue", address);
                
                // check for query symbol "?"
                if (vStart.size() == 1)
                {
                    if (vStart[0].type() == kTypeSymbol)
                    {
                        TTSymbol s = vStart[0];
                        if (s == TTSymbol("?"))
                        {
                            vStart = queryValue(address);
                        }
                    }
                }
                
                // get the end event state value for this address
                vEnd = getEndEvent().send("StateAddressGetValue", address);
                
                // check values size : can't update curves for none equal sized values
                if (vStart.size() != vEnd.size())
                    return kTTErrGeneric;
                
                if (objects.size() != vStart.size())
                    return kTTErrGeneric;
                
                // update each indexed curve
                for (i = 0; i < objects.size(); i++)
                {
                    curve = objects[i];
                    
                    // get current curve parameters
                    if (!curve.get("functionParameters", parameters))
                    {
                        // change the first point y value : x1 y1 b1 ...
                        parameters[1] = TTFloat64(vStart[i]);
                        
                        // TODO : scale the other y points value ?
                        
                        // change the last point y value : ... xn yn bn
                        parameters[parameters.size() - 2] = TTFloat64(vEnd[i]);
                        
                        // set current curve parameters
                        curve.set("functionParameters", parameters);
                        
                        // some parameters have changed
                        change = YES;
                    }
                }
                
                // is the last compilation still valid ?
                mCompiled = !change && mCompiled;
                
                return kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr Automation::CurveRemove(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue     v, objects;
    TTAddress   address;
    TTObject    curve;
    
    if (inputValue.size() == 1)
    {
        if (inputValue[0].type() == kTypeSymbol)
        {
            address = inputValue[0];
            
            // if there is a curve at the address
            if (!mCurves.lookup(address, objects))
            {
                // unregister the curve
                mCurves.remove(address);
                
                // remove sender
                removeSender(address);
                
                // remove receiver
                removeRecordReceiver(address);
                
                return kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr Automation::Clear()
{
    TTValue         keys,objects;
    TTSymbol        key;
    TTUInt32        i;
    
    // delete all curves
    mCurves.getKeys(keys);
    for (i = 0; i < keys.size(); i++)
    {
        key = keys[i];

        // remove sender
        removeSender(TTAddress(key));
        
        // remove receiver
        removeRecordReceiver(TTAddress(key));
    }
    
    mCurves.clear();
    
    return kTTErrNone;
}

TTErr Automation::CurveRecord(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue   v, objects, out;
    TTAddress address;
    TTBoolean record;
    
    if (inputValue.size() == 2)
    {
        if (inputValue[0].type() == kTypeSymbol && inputValue[1].type() == kTypeBoolean)
        {
            address = inputValue[0];
            record = inputValue[1];
            
            // if there is no curve at the address
            if (mCurves.lookup(address, objects))
            {
                // register the address with no curves
                mCurves.append(address, objects);
                
                // add a sender
                addSender(address);
            }
            
            // add or remove receiver for the address
            if (record)
            {
                addRecordReceiver(address);
                
                // we also need to clear the start and the end state for this address
                // otherwise its value will be recalled on start or on end
                getStartEvent().send("StateAddressClear", address);
                getEndEvent().send("StateAddressClear", address);
            }
            else
                removeRecordReceiver(address);
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

void Automation::addSender(TTAddress anAddress)
{
    TTObject    aSender;
    TTValue     v, none;
    
    // if there is no sender for the address
    if (mSenders.lookup(anAddress, v))
    {
        aSender = TTObject(kTTSym_Sender);
        
        // set the address of the sender
        aSender.set(kTTSym_address, anAddress);
        
        mSenders.append(anAddress, aSender);
    }
}

void Automation::removeSender(TTAddress anAddress)
{
    TTValue v;
    
    if (!mSenders.lookup(anAddress, v))
    {
        TTObject aSender = v[0];
        aSender.set(kTTSym_address, kTTAdrsEmpty);
        
        mSenders.remove(anAddress);
    }
}

void Automation::addRecordReceiver(TTAddress anAddress)
{
    TTObject    aReceiver, aReceiverCallback, empty, thisObject(this);
    TTValue     args, baton, none;
    
    // if there is no receiver for the address
    if (mRecordReceivers.lookup(anAddress, none))
    {
        // No callback for the address
        args = empty;
        
        // Create a receiver callback to get the expression address value back
        aReceiverCallback = TTObject("callback");
        
        baton = TTValue(thisObject, anAddress);
        aReceiverCallback.set(kTTSym_baton, baton);
        aReceiverCallback.set(kTTSym_function, TTPtr(&AutomationReceiverReturnValueCallback));
        
        args.append(aReceiverCallback);
        
        aReceiver = TTObject(kTTSym_Receiver, args);
        
        // set the address of the receiver
        aReceiver.set(kTTSym_address, anAddress);
        
        mRecordReceivers.append(anAddress, aReceiver);
    }
}

void Automation::removeRecordReceiver(TTAddress anAddress)
{
    TTValue v;
    
    if (!mRecordReceivers.lookup(anAddress, v))
    {
        TTObject aReceiver = v[0];
        aReceiver.set(kTTSym_address, kTTAdrsEmpty);
        
        mRecordReceivers.remove(anAddress);
    }
}

TTValue Automation::queryValue(TTAddress anAddress)
{
    TTObject aReceiver(kTTSym_Receiver);
    aReceiver.set(kTTSym_address, anAddress);
    TTValue value = aReceiver.send("Grab", anAddress);
    aReceiver.set(kTTSym_address, kTTAdrsEmpty);
    return value;
}

#if 0
#pragma mark -
#pragma mark Callback Functions
#endif

TTErr AutomationReceiverReturnValueCallback(const TTValue& baton, const TTValue& data)
{
    TTObject        o;
    AutomationPtr   anAutomation;
    TTAddress       anAddress;
    TTObject        curve;
    TTValue         v, objects;
    
    // unpack baton (automation, address)
    o = baton[0];
    anAutomation = (AutomationPtr)o.instance();
    anAddress = baton[1];
    
    // if the automation is running
    if (anAutomation->mRunning) {
        
        // don't process when position is equal to 0. or 1.
        if (anAutomation->mCurrentPosition == 0. || anAutomation->mCurrentPosition == 1.)
            return kTTErrNone;
        
        // for each event's expression matching the incoming address
        if (!anAutomation->mCurves.lookup(anAddress, objects)) {
            
            // for each indexed curves
            for (TTUInt32 i = 0; i < objects.size(); i++) {
                
                curve = objects[i];
                
                // store the next point
                TTCurvePtr(curve.instance())->append(TTValue(anAutomation->mCurrentPosition, TTFloat64(data[i])));
            }
        }
    }
    
    return kTTErrNone;
}