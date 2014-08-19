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
mDescription("something about this preset"),
mAddress(kTTAdrsEmpty),
mDirectory(NULL),
mScript(NULL)
{
	TT_ASSERT("Correct number of args to create TTPreset", arguments.size() == 0 || arguments.size() == 1);
	
	addAttribute(Name, kTypeSymbol);
    addAttribute(Description, kTypeSymbol);
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addMessage(Clear);
	addMessage(Store);
    addMessage(Update);
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
	
	TTObjectBaseInstantiate(kTTSym_Script, TTObjectBaseHandle(&mScript), arguments);
}

TTPreset::~TTPreset()
{
    if (mScript) {
        TTObjectBaseRelease(TTObjectBaseHandle(&mScript));
        mScript = NULL;
    }
}

TTErr TTPreset::setAddress(const TTValue& value)
{	
	Clear();
	mAddress = value[0];
	
	mDirectory = getDirectoryFrom(mAddress);
	
	if (mDirectory) {
		
		mScript->setAttributeValue(kTTSym_address, mAddress);
		return kTTErrNone;
	}
	else
		return kTTErrGeneric; // else wait for directory or not ?
}

TTErr TTPreset::Store()
{
	TTNodePtr		aNode;
	TTObjectBasePtr	anObject;
	TTList			aNodeList, allObjectNodes;
	TTAddress       aRelativeAddress;
	TTValue			v, parsedLine;					
	
	Clear();
	
	if (mDirectory) {
        
		// 1. Append a preset flag with the name
		v = TTValue(TTSymbol("preset"));
		v.append(mName);
		mScript->sendMessage(TTSymbol("AppendFlag"), v, parsedLine);
        
        // 2. Append a description flag with the description
		v = TTValue(TTSymbol("description"));
		v.append(mDescription);
		mScript->sendMessage(TTSymbol("AppendFlag"), v, parsedLine);
		
		// 3. Append a comment line at the beginning
		v = TTValue(TTSymbol("###########################################"));
		mScript->sendMessage(TTSymbol("AppendComment"), v, parsedLine);
        
        // 4. Append an empty comment line
        v.clear();
		mScript->sendMessage(TTSymbol("AppendComment"), v, parsedLine);
		
		// 5. Look for all Objects under the address into the directory (and sort them using object priority order then alphabetical order)
		mDirectory->Lookup(mAddress, aNodeList, &aNode);
		mDirectory->LookFor(&aNodeList, &TTPresetTestObject, NULL, allObjectNodes, &aNode, 0, &compareNodePriorityThenNameThenInstance);
		
		// 7. Append a script line for each object found
		for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
			
			aNode = TTNodePtr((TTPtr)allObjectNodes.current()[0]);
			
			// get relative address
			aNode->getAddress(aRelativeAddress, mAddress);
			
			// get object
			anObject = aNode->getObject();
			
			// append command line
			if (anObject) {
				
				// DATA case
				if (anObject->getName() == kTTSym_Data) {
					
					v.clear();
					anObject->getAttributeValue(kTTSym_value, v);
					
					if (v.empty())
						continue;
					
					v.prepend(aRelativeAddress);
					mScript->sendMessage(TTSymbol("AppendCommand"), v, parsedLine);
				}
			}
		}
        
        // 8. Append an empty comment line
        v.clear();
		mScript->sendMessage(TTSymbol("AppendComment"), v, parsedLine);
        
        // 9. Append a comment line at the end
		v = TTValue(TTSymbol("###########################################"));
		mScript->sendMessage(TTSymbol("AppendComment"), v, parsedLine);
		
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr TTPreset::Update()
{
    TTValue     v, none;
    TTBoolean   flattened;
    
    // is the preset already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript->sendMessage(kTTSym_Flatten, mAddress, none);
	
	return processUpdate(mScript);
}

TTErr TTPreset::processUpdate(TTObjectBasePtr aScript)
{
	TTListPtr		lines;
	TTDictionaryBasePtr	aLine;
    TTAddress       anAddress;
    TTNodePtr       aNode;
	TTObjectBasePtr	anObject;
    TTSymbol        service;
	TTValue			v;
    TTErr           err;
	
	aScript->getAttributeValue(TTSymbol("flattenedLines"), v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
        
        // if it is a Data object
        if (!aLine->lookup(kTTSym_target, v)) {
            
            anAddress = v[0];
            err = getDirectoryFrom(anAddress)->getTTNode(anAddress, &aNode);
            
            if (!err) {
                
                anObject = aNode->getObject();
                
                if (anObject) {
                    
                    if (anObject->getName() == kTTSym_Data) {
                        
                        // get his service attribute value
                        anObject->getAttributeValue(kTTSym_service, v);
                        service = v[0];
                        
                        // update only parameters
                        if (service == kTTSym_parameter) {
                            
                            // get his current value
                            err = anObject->getAttributeValue(kTTSym_value, v);
                            
                            if (!err) {
                                
                                // replace the former value
                                aLine->remove(kTTSym_value);
                                aLine->append(kTTSym_value, v);
                            }
                        }
                    }
                }
            }
        }
	}
	
	return kTTErrNone;
}

TTErr TTPreset::Clear()
{
	return mScript->sendMessage(TTSymbol("Clear"));
}

TTErr TTPreset::Recall(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress       anAddress = kTTAdrsRoot;
    TTBoolean       flattened;
    TTValue         v, none;
    
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            anAddress = inputValue[0];
    
    // is the cue already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript->sendMessage(kTTSym_Flatten, mAddress, none);

    // if an address is passed, run the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript->sendMessage(TTSymbol("RunCommand"), inputValue, none);
        
    // else run all the script
    else
        return mScript->sendMessage(kTTSym_Run, mAddress, none);
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
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, none);
    
    // if an address is passed, dump the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript->sendMessage(TTSymbol("DumpLine"), inputValue, none);
    
    // else dump all the script
    else
        return mScript->sendMessage(kTTSym_Dump, inputValue, none);
}

TTErr TTPreset::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTValue				v;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
    
	// use WriteAsXml of the script
	v = TTValue(mScript);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTValue				v, parsedLine;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	// Preset node : append a preset flag with the name
	if (aXmlHandler->mXmlNodeName == TTSymbol("preset")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		v = TTValue(TTSymbol("preset"));
		v.append(mName);
		mScript->sendMessage(TTSymbol("AppendFlag"), v, parsedLine);
		
		return kTTErrNone;
	}
	
	// use ReadFromXml of the script
	v = TTValue(mScript);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TTSymbol("Read"));
	
	return kTTErrNone;
}

TTErr TTPreset::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
    TTBoolean flattened;
	TTValue	v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)inputValue[0]);
    
    // théo - since the workshop in june 2014 in Albi we decide to force the script to be flattened
    // but we should review all the #TTCue and #TTScript architecture to improve this
    // so here we need to unflatten the script before to write it ...
    
    // is the preset already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (flattened)
        mScript->sendMessage("Unflatten");
	
	// use WriteAsBuffer of the script
	v = TTValue(mScript);
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
    TTDictionaryBasePtr line;
	TTValue	v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
    
    if (inputValue.size() == 0)
        return kTTErrGeneric;
    
    // if needed : parse the buffer line into TTDictionary
    if ((*(aTextHandler->mLine))[0].type() != kTypePointer) {
        
        line = TTScriptParseLine(*(aTextHandler->mLine));
	
        if (line)
		
            // replace the buffer line value by the parsed line dictionary
            aTextHandler->mLine = new TTValue((TTPtr)line);
    }
    else
        line = TTDictionaryBasePtr((TTPtr)aTextHandler->mLine[0]);
    
    // match description or tag flag lines :
    if (line) {
        
        if (line->getSchema() == kTTSym_flag) {
            
            line->lookup(kTTSym_name, v);
            TTSymbol flagName = v[0];
            
            if (flagName == TTSymbol("description")) {
                
                // get description
                if (!line->getValue(v)) {
                    
                    mDescription = v[0];
                }
            }
        }
    }

	// use ReadFromText of the script
	v = TTValue(mScript);
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TTSymbol("Read"));
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTBoolean TTPresetTestObject(TTNodePtr node, TTPtr args)
{
	TTObjectBasePtr o;
	TTValue		v;
	TTSymbol    s;

	// Here we decide to keep nodes which binds on :
	//		- Data with @service == parameter
	o = node->getObject();
	if (o) {
		
		if (o->getName() == kTTSym_Data) {
			o->getAttributeValue(kTTSym_service, v);
			s = v[0];
			return s == kTTSym_parameter;
		}
	}
	
	return NO;
}

TTErr TTPresetInterpolate(TTPreset* preset1, TTPreset* preset2, TTFloat64 position)
{
    TTBoolean   flattened1, flattened2;
    TTValue     v, none;
    
    // is the preset1 already flattened ?
    preset1->mScript->getAttributeValue(kTTSym_flattened, v);
    flattened1 = v[0];
    
    if (!flattened1)
        preset1->mScript->sendMessage(kTTSym_Flatten, preset1->mAddress, none);
    
    // is the preset2 already flattened ?
    preset2->mScript->getAttributeValue(kTTSym_flattened, v);
    flattened2 = v[0];
    
    if (!flattened2)
        preset2->mScript->sendMessage(kTTSym_Flatten, preset2->mAddress, none);
    
	return TTScriptInterpolate(preset1->mScript, preset2->mScript, position);
}

TTErr TTPresetMix(const TTValue& presets, const TTValue& factors)
{
	TTPresetPtr aPreset;
	TTValue		scripts;
    TTBoolean   flattened;
    TTValue     v, none;
	TTUInt32	i;
	
	for (i = 0; i < presets.size(); i++) {
        
		aPreset = TTPresetPtr((TTObjectBasePtr)presets[i]);
        
        // is the preset1 already flattened ?
        aPreset->mScript->getAttributeValue(kTTSym_flattened, v);
        flattened = v[0];
        
        if (!flattened)
            aPreset->mScript->sendMessage(kTTSym_Flatten, aPreset->mAddress, none);
        
		scripts.append(aPreset->mScript);
	}
	
	return TTScriptMix(scripts, factors);
}


TTErr TTPresetCopy(TTPreset* aPresetToCopy, TTPreset* aPresetCopy)
{
	TTValue v, args;
	
	aPresetCopy->mName = aPresetToCopy->mName;
	aPresetCopy->mAddress = aPresetToCopy->mAddress;
	aPresetCopy->mDirectory = aPresetToCopy->mDirectory;
	return TTScriptCopy(aPresetToCopy->mScript, aPresetCopy->mScript);
}
