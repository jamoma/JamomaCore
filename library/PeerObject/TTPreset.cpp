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
mComment(TT("TODO : edit comment")),
mDirectory(NULL),
mScript(NULL)
{
	TTValue args;
	
	addAttribute(Name, kTypeSymbol);
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttribute(Comment, kTypeSymbol);
	
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
	
	TTObjectInstantiate(TT("Script"), TTObjectHandle(&mScript), args);
}

TTPreset::~TTPreset()
{
	TTObjectRelease(TTObjectHandle(&mScript));
	mScript = NULL;
}

TTErr TTPreset::setAddress(const TTValue& value)
{	
	Clear();
	value.get(0, &mAddress);
	
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
	TTObjectPtr		anObject;
	TTList			aNodeList, allObjectNodes;
	TTNodeAddressPtr aRelativeAddress;
	TTValue			v, parsedLine;					
	
	Clear();
	
	if (mDirectory) {
		
		// 1. Append a preset flag with the name
		v = TTValue(TT("preset"));
		v.append(mName);
		mScript->sendMessage(TT("AppendFlag"), v, parsedLine);
		
		// 2. Append a comment
		v = TTValue(mComment);
		mScript->sendMessage(TT("AppendComment"), v, parsedLine);
		
		// 3. Look for all Objects under the address into the directory
		mDirectory->Lookup(mAddress, aNodeList, &aNode);
		mDirectory->LookFor(&aNodeList, &TTPresetTestObject, NULL, allObjectNodes, &aNode);
		
		// 4. Sort the NodeList using object priority order
		allObjectNodes.sort(&TTPresetCompareNodePriority);
		
		// 5. Append a script line for each object found
		for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
			
			allObjectNodes.current().get(0, (TTPtr*)&aNode);
			
			// get relative address
			aNode->getAddress(&aRelativeAddress, mAddress);
			
			// get object
			anObject = aNode->getObject();
			
			// append command line
			if (anObject) {
				
				// DATA case
				if (anObject->getName() == TT("Data")) {
					
					v.clear();
					anObject->getAttributeValue(kTTSym_value, v);
					
					if (v == kTTValNONE)
						continue;
					
					v.prepend(aRelativeAddress);
					mScript->sendMessage(TT("AppendCommand"), v, parsedLine);
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
	return mScript->sendMessage(TT("Clear"));
}

TTErr TTPreset::Recall()
{
	return mScript->sendMessage(TT("Run"), mAddress, kTTValNONE);
}

TTErr TTPreset::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTValue				v;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// use WriteAsXml of the script
	v = TTValue(TTPtr(mScript));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TT("Write"));
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTValue				v, parsedLine;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// Preset node : append a preset flag with the name
	if (aXmlHandler->mXmlNodeName == TT("preset")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		v = TTValue(TT("preset"));
		v.append(mName);
		mScript->sendMessage(TT("AppendFlag"), v, parsedLine);
		
		return kTTErrNone;
	}
	
	// use ReadFromXml of the script
	v = TTValue(TTPtr(mScript));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TT("Read"));
	
	return kTTErrNone;
}

TTErr TTPreset::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTValue	v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	// use WriteAsBuffer of the script
	v = TTValue(TTPtr(mScript));
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TT("Write"));
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTValue	v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
	
	// use ReadAsbuffer of the script
	v = TTValue(TTPtr(mScript));
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TT("Read"));
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTBoolean TTPresetTestObject(TTNodePtr node, TTPtr args)
{
	TTObjectPtr o;
	TTValue		v;
	TTSymbolPtr s;

	// Here we decide to keep nodes which binds on :
	//		- Data with @service == parameter
	o = node->getObject();
	if (o) {
		
		if (o->getName() == TT("Data")) {
			o->getAttributeValue(kTTSym_service, v);
			v.get(0, &s);
			return s == kTTSym_parameter;
		}
	}
	
	return NO;
}

TTBoolean TTPresetCompareNodePriority(TTValue& v1, TTValue& v2) 
{
	TTNodePtr	n1, n2;
	TTObjectPtr o1, o2;
	TTValue		v;
	TTInt32		p1, p2;
	
	// get priority of v1
	v1.get(0, (TTPtr*)&n1);
	if (n1) {
		o1 = n1->getObject();
		if (o1) 
			if (!o1->getAttributeValue(kTTSym_priority, v))
				v.get(0, p1);
	}
	
	// get priority of v2
	v2.get(0, (TTPtr*)&n2);
	if (n2) {
		o2 = n2->getObject();
		if (o2) 
			if (!o2->getAttributeValue(kTTSym_priority, v))
				v.get(0, p2);
	}
	
	if (p1 == 0 && p2 == 0) return v1 < v2;
	
	if (p1 == 0) return NO;
	if (p2 == 0) return YES;
	
	return p1 < p2;
}

TTErr TTPresetInterpolate(TTPreset* preset1, TTPreset* preset2, TTFloat64 position)
{
	preset1->mScript->sendMessage(TT("Bind"), preset1->mAddress, kTTValNONE);
	preset2->mScript->sendMessage(TT("Bind"), preset2->mAddress, kTTValNONE);
	
	return TTScriptInterpolate(preset1->mScript, preset2->mScript, position);
}
