/* 
 * A Preset Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPreset.h"

#define thisTTClass			TTPreset
#define thisTTClassName		"Preset"
#define thisTTClassTags		"preset"

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mAddress(kTTAdrsEmpty),
mDirectory(NULL),
mScript(NULL)
{
	TTValue args;
	
	addAttribute(Name, kTypeSymbol);
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addMessage(Clear);
	addMessage(Store);
	addMessage(Recall);
	
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
	
	TTObjectBaseInstantiate(kTTSym_Script, TTObjectBaseHandle(&mScript), args);
}

TTPreset::~TTPreset()
{
	TTObjectBaseRelease(TTObjectBaseHandle(&mScript));
	mScript = NULL;
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
	TTObjectBasePtr		anObject;
	TTList			aNodeList, allObjectNodes;
	TTAddress aRelativeAddress;
	TTValue			v, parsedLine;					
	
	Clear();
	
	if (mDirectory) {
		
		// 1. Append a preset flag with the name
		v = TTValue(TTSymbol("preset"));
		v.append(mName);
		mScript->sendMessage(TTSymbol("AppendFlag"), v, parsedLine);
		
		// 2. Append a comment line
		v = TTValue(TTSymbol("edit a comment"));
		mScript->sendMessage(TTSymbol("AppendComment"), v, parsedLine);
		
		// 3. Look for all Objects under the address into the directory
		mDirectory->Lookup(mAddress, aNodeList, &aNode);
		mDirectory->LookFor(&aNodeList, &TTPresetTestObject, NULL, allObjectNodes, &aNode);
		
		// 4. Sort the NodeList using object priority order
		allObjectNodes.sort(&TTPresetCompareNodePriority);
		
		// 5. Append a script line for each object found
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
					
					if (v == kTTValNONE)
						continue;
					
					v.prepend(aRelativeAddress);
					mScript->sendMessage(TTSymbol("AppendCommand"), v, parsedLine);
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
	return mScript->sendMessage(TTSymbol("Clear"));
}

TTErr TTPreset::Recall()
{
    TTNodePtr   aNode = NULL;
    TTObjectPtr anObject = NULL;
    TTValue     v;
    TTErr       err;
    
    // get the container object to make the recall faster
    err = getDirectoryFrom(mAddress)->getTTNode(mAddress, &aNode);
    
    if (!err) {
        
        // if there is a node
        if (aNode) {
            
            anObject = aNode->getObject();
            
            // check object type
            if (anObject) {
                
                // for container object
                if (anObject->getName() != kTTSym_Container)
                    anObject = NULL;
            }
        }
    }
    
    // prepare argument to run the script
    v = mAddress;
    
    // use container to go faster
    if (anObject)
        v.append(anObject);

    // run the script
	return mScript->sendMessage(kTTSym_Run, v, kTTValNONE);
}

TTErr TTPreset::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTValue				v;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectPtr)inputValue[0]);
	
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
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectPtr)inputValue[0]);
	
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
	TTValue	v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectPtr)inputValue[0]);
	
	// use WriteAsBuffer of the script
	v = TTValue(mScript);
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTValue	v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectPtr)inputValue[0]);
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
	
	// use ReadAsbuffer of the script
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

TTBoolean TTPresetCompareNodePriority(TTValue& v1, TTValue& v2) 
{
	TTNodePtr	n1, n2;
	TTObjectBasePtr o1, o2;
	TTValue		v;
	TTInt32		p1 = 0;
	TTInt32		p2 = 0;
	
	// get priority of v1
	n1 = TTNodePtr((TTPtr)v1[0]);
	if (n1) {
		o1 = n1->getObject();
		if (o1) 
			if (!o1->getAttributeValue(kTTSym_priority, v))
				p1 = v[0];
	}
	
	// get priority of v2
	n2 = TTNodePtr((TTPtr)v2[0]);
	if (n2) {
		o2 = n2->getObject();
		if (o2) 
			if (!o2->getAttributeValue(kTTSym_priority, v))
				p2 = v[0];
	}
	
	if (p1 == 0 && p2 == 0) return v1 < v2;
	
	if (p1 == 0) return NO;
	if (p2 == 0) return YES;
	
	return p1 < p2;
}

TTErr TTPresetInterpolate(TTPreset* preset1, TTPreset* preset2, TTFloat64 position)
{
	preset1->mScript->sendMessage(TTSymbol("Bind"), preset1->mAddress, kTTValNONE);
	preset2->mScript->sendMessage(TTSymbol("Bind"), preset2->mAddress, kTTValNONE);
	
	return TTScriptInterpolate(preset1->mScript, preset2->mScript, position);
}

TTErr TTPresetMix(const TTValue& presets, const TTValue& factors)
{
	TTPresetPtr aPreset;
	TTValue		scripts;
	TTUInt32	i;
	
	for (i = 0; i < presets.size(); i++) {
		aPreset = TTPresetPtr((TTObjectPtr)presets[i]);
		aPreset->mScript->sendMessage(TTSymbol("Bind"), aPreset->mAddress, kTTValNONE);
		
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
