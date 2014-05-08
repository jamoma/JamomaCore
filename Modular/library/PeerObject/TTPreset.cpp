/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Preset Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTPreset.h"

#define thisTTClass			TTPreset
#define thisTTClassName		"Preset"
#define thisTTClassTags		"preset"

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mAddress(kTTAdrsEmpty),
mDirectory(NULL)
{
	TT_ASSERT("Correct number of arguments to instantiate TTPreset", arguments.size() == 0 || arguments.size() == 1);
	
	addAttribute(Name, kTypeSymbol);
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addMessage(Clear);
	addMessage(Store);
	addMessageWithArguments(Recall);
    addMessageWithArguments(Output);
	
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
	
	mScript = TTObject(kTTSym_Script, arguments);
}

TTPreset::~TTPreset()
{
    ;
}

TTErr TTPreset::setAddress(const TTValue& value)
{	
	Clear();
	mAddress = value[0];
	
	mDirectory = accessApplicationDirectoryFrom(mAddress);
	
	if (mDirectory) {
		
		mScript.set(kTTSym_address, mAddress);
		return kTTErrNone;
	}
	else
		return kTTErrGeneric; // else wait for directory or not ?
}

TTErr TTPreset::Store()
{
	TTNodePtr	aNode;
	TTObject	anObject;
	TTList		aNodeList, allObjectNodes;
	TTAddress   aRelativeAddress;
	TTValue     v, parsedLine;
	
	Clear();
	
	if (mDirectory) {
		
		// 1. Append a preset flag with the name
		v = TTValue("preset", mName);
		mScript.send("AppendFlag", v, parsedLine);
		
		// 2. Append a comment line
		v = TTValue("edit a comment");
		mScript.send("AppendComment", v, parsedLine);
		
		// 3. Look for all Objects under the address into the directory
		mDirectory->Lookup(mAddress, aNodeList, &aNode);
		mDirectory->LookFor(&aNodeList, &TTPresetTestObject, NULL, allObjectNodes, &aNode);
		
		// 4. Sort the NodeList using object priority order
		allObjectNodes.sort(&compareNodePriorityThenNameThenInstance);
		
		// 5. Append a script line for each object found
		for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
			
			aNode = TTNodePtr((TTPtr)allObjectNodes.current()[0]);
			
			// get relative address
			aNode->getAddress(aRelativeAddress, mAddress);
			
			// get object
			anObject = aNode->getObject();
			
			// append command line
			if (anObject.valid()) {
				
				// DATA case
				if (anObject.name() == kTTSym_Data) {
					
					v.clear();
					anObject.get(kTTSym_value, v);
					
					if (v.empty())
						continue;
					
					v.prepend(aRelativeAddress);
					mScript.send("AppendCommand", v, parsedLine);
				}
			}
		}
		
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr TTPreset::Clear()
{
	return mScript.send("Clear");
}

TTErr TTPreset::Recall(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress  anAddress = kTTAdrsRoot;
    TTBoolean  flattened;
    TTValue    v, none;
    
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            anAddress = inputValue[0];
    
    // is the cue already flattened ?
    mScript.get(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript.send(kTTSym_Flatten, mAddress, none);

    // if an address is passed, run the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript.send("RunCommand", inputValue, none);
        
    // else run all the script
    else
        return mScript.send(kTTSym_Run, mAddress, none);
}

TTErr TTPreset::Output(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress   anAddress = kTTAdrsRoot;
    TTBoolean   flattened;
    TTValue     v, none;
    
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            anAddress = inputValue[0];
    
    // is the preset already flattened ?
    mScript.get(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript.send(kTTSym_Flatten, kTTAdrsRoot, none);
    
    // if an address is passed, dump the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript.send("DumpLine", inputValue, none);
    
    // else dump all the script
    else
        return mScript.send(kTTSym_Dump, inputValue, none);
}

TTErr TTPreset::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
	
	// use WriteAsXml of the script
	aXmlHandler->setAttributeValue(kTTSym_object, mScript);
	aXmlHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTValue	v, parsedLine;
	
	// Preset node : append a preset flag with the name
	if (aXmlHandler->mXmlNodeName == TTSymbol("preset")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		v = TTValue("preset", mName);
		mScript.send("AppendFlag", v, parsedLine);
		
		return kTTErrNone;
	}
	
	// use ReadFromXml of the script
	aXmlHandler->setAttributeValue(kTTSym_object, mScript);
	aXmlHandler->sendMessage(TTSymbol("Read"));
	
	return kTTErrNone;
}

TTErr TTPreset::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
	
	// use WriteAsBuffer of the script
	aTextHandler->setAttributeValue(kTTSym_object, mScript);
	aTextHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;

	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
	
	// use ReadAsbuffer of the script
	aTextHandler->setAttributeValue(kTTSym_object, mScript);
	aTextHandler->sendMessage(TTSymbol("Read"));
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTBoolean TTPresetTestObject(TTNodePtr node, TTPtr args)
{
	TTObject    o;
	TTValue		v;
	TTSymbol    s;

	// Here we decide to keep nodes which binds on :
	//		- Data with @service == parameter
	o = node->getObject();
	if (o.valid()) {
		
		if (o.name() == kTTSym_Data) {
			o.get(kTTSym_service, v);
			s = v[0];
			return s == kTTSym_parameter;
		}
	}
	
	return NO;
}

TTErr TTPresetInterpolate(TTObject preset1, TTObject preset2, TTFloat64 position)
{
    TTBoolean   flattened1, flattened2;
    TTValue     v, none;
    
    // is the preset1 already flattened ?
    TTPresetPtr(preset1.instance())->mScript.get(kTTSym_flattened, v);
    flattened1 = v[0];
    
    if (!flattened1)
        TTPresetPtr(preset1.instance())->mScript.send(kTTSym_Flatten, TTPresetPtr(preset1.instance())->mAddress, none);
    
    // is the preset2 already flattened ?
    TTPresetPtr(preset2.instance())->mScript.get(kTTSym_flattened, v);
    flattened2 = v[0];
    
    if (!flattened2)
        TTPresetPtr(preset2.instance())->mScript.send(kTTSym_Flatten, TTPresetPtr(preset2.instance())->mAddress, none);
    
	return TTScriptInterpolate(TTPresetPtr(preset1.instance())->mScript, TTPresetPtr(preset2.instance())->mScript, position);
}

TTErr TTPresetMix(const TTValue& presets, const TTValue& factors)
{
	TTObject    aPreset;
	TTValue		scripts;
    TTBoolean   flattened;
    TTValue     v, none;
	TTUInt32	i;
	
	for (i = 0; i < presets.size(); i++) {
        
		aPreset = presets[i];
        
        // is the preset1 already flattened ?
        TTPresetPtr(aPreset.instance())->mScript.get(kTTSym_flattened, v);
        flattened = v[0];
        
        if (!flattened)
            TTPresetPtr(aPreset.instance())->mScript.send(kTTSym_Flatten, TTPresetPtr(aPreset.instance())->mAddress, none);
        
		scripts.append(TTPresetPtr(aPreset.instance())->mScript);
	}
	
	return TTScriptMix(scripts, factors);
}


TTErr TTPresetCopy(TTObject aPresetToCopy, TTObject aPresetCopy)
{
	TTPresetPtr(aPresetCopy.instance())->mName = TTPresetPtr(aPresetToCopy.instance())->mName;
	TTPresetPtr(aPresetCopy.instance())->mAddress = TTPresetPtr(aPresetToCopy.instance())->mAddress;
	TTPresetPtr(aPresetCopy.instance())->mDirectory = TTPresetPtr(aPresetToCopy.instance())->mDirectory;
	return TTScriptCopy(TTPresetPtr(aPresetToCopy.instance())->mScript, TTPresetPtr(aPresetCopy.instance())->mScript);
}
