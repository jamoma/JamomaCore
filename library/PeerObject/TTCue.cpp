/* 
 * A Cue Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCue.h"

#define thisTTClass			TTCue
#define thisTTClassName		"Cue"
#define thisTTClassTags		"cue"

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mComment(TT("TODO : edit comment")),
mNamespace(kTTValNONE),
mScript(NULL)
{
	TTValue args;
	
	addAttribute(Name, kTypeSymbol);
	addAttribute(Comment, kTypeSymbol);
	addAttributeWithGetterAndSetter(Namespace, kTypeLocalValue);
	
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
	
	// needed to be handled by a TTBufferHandler
	addMessageWithArguments(WriteAsBuffer);
	addMessageProperty(WriteAsBuffer, hidden, YES);
	addMessageWithArguments(ReadFromBuffer);
	addMessageProperty(ReadFromBuffer, hidden, YES);
	
	TTObjectInstantiate(TT("Script"), TTObjectHandle(&mScript), args);
}

TTCue::~TTCue()
{
	TTObjectRelease(TTObjectHandle(&mScript));
	mScript = NULL;
}

TTErr TTCue::getNamespace(TTValue& value)
{
	TTErr err;
	
	err = mScript->getAttributeValue(TT("namespace"), mNamespace);
	
	if (!err) {
		value = mNamespace;
	}
	
	return err;
}

TTErr TTCue::setNamespace(const TTValue& value)
{
	mNamespace = value;
	
	return kTTErrNone;
}

TTErr TTCue::Store()
{
	TTNodePtr		aNode;
	TTObjectPtr		anObject;
	TTList			aNodeList, allObjectNodes;
	TTNodeAddressPtr address, anAbsoluteAddress, nextAddress, lastContainerAddress;
	TTValue			v;					
	
	Clear();
		
	// 1. Append a cue flag with the name
	v = TTValue(TT("cue"));
	v.append(mName);
	mScript->sendMessage(TT("AppendFlag"), v, kTTValNONE);
	
	// 2. Append a comment
	v = TTValue(mComment);
	mScript->sendMessage(TT("AppendComment"), v, kTTValNONE);
	
	// 3. Append the fold flag to open the cue
	mScript->sendMessage(TT("AppendFlag"), kTTSym_fold, kTTValNONE);
	
	// 4. Look for all Objects of the namespace into the directory
	for (TTUInt32 i = 0; i < mNamespace.getSize(); i++) {
		
		mNamespace.get(i, &address);
		
		// for relative address : append the last container address
		if (address->getType() == kAddressRelative) {
			
			if (lastContainerAddress != kTTAdrsEmpty)
				anAbsoluteAddress = lastContainerAddress->appendAddress(address);
		}
		else anAbsoluteAddress = address;
		
		aNodeList.clear();
		getDirectoryFrom(anAbsoluteAddress)->Lookup(anAbsoluteAddress, aNodeList, &aNode);
		
		// get object
		anObject = aNode->getObject();
		
		// append script line
		if (anObject) {
			
			// DATA case : get value attribute
			if (anObject->getName() == TT("Data")) {
				
				v.clear();
				anObject->getAttributeValue(kTTSym_value, v);
				
				if (v == kTTValNONE)
					continue;
				
				v.prepend(address);
				mScript->sendMessage(TT("AppendCommand"), v, kTTValNONE);
			}
			/* CONTAINER case : 
					- if the container address is followed by relative address : just write his address
					- if the container address is followed by absolute address : lookfor all parameters below itself
			*/	
			else if (anObject->getName() == TT("Container")) {
				
				mScript->sendMessage(TT("AppendComment"), kTTValNONE, kTTValNONE);
				mScript->sendMessage(TT("AppendCommand"), anAbsoluteAddress, kTTValNONE);
				
				// check the next address type
				if (i+1 < mNamespace.getSize()) {
					
					mNamespace.get(i+1, &nextAddress);
					if (nextAddress->getType() == kAddressRelative) {
						lastContainerAddress = anAbsoluteAddress;
						continue;
					}
				}
				
				allObjectNodes.clear();
				getDirectoryFrom(anAbsoluteAddress)->LookFor(&aNodeList, &TTCueTestObject, NULL, allObjectNodes, &aNode);
				
				// sort the NodeList using object priority order
				allObjectNodes.sort(&TTCueCompareNodePriority);
				
				// append a script line for each object found
				for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
					
					allObjectNodes.current().get(0, (TTPtr*)&aNode);
					
					// get relative address
					aNode->getAddress(&address, anAbsoluteAddress);
					
					// get object
					anObject = aNode->getObject();
					
					// append script line
					if (anObject) {
						
						// DATA case
						if (anObject->getName() == TT("Data")) {
							
							v.clear();
							anObject->getAttributeValue(kTTSym_value, v);
							
							if (v == kTTValNONE)
								continue;
							
							v.prepend(address);
							mScript->sendMessage(TT("AppendCommand"), v, kTTValNONE);
						}
					}
				}
				
				mScript->sendMessage(TT("AppendComment"), kTTValNONE, kTTValNONE);
			}
		}
	}
	
	// 7. Append the end flag to close the cue
	mScript->sendMessage(TT("AppendFlag"), kTTSym_end, kTTValNONE);
	return kTTErrNone;
}

TTErr TTCue::Clear()
{
	return mScript->sendMessage(TT("Clear"));
}

TTErr TTCue::Recall()
{
	return mScript->sendMessage(TT("Run"));
}

TTErr TTCue::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
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

TTErr TTCue::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTValue				v;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// use ReadFromXml of the script
	v = TTValue(TTPtr(mScript));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TT("Read"));
	
	return kTTErrNone;
}

TTErr TTCue::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTValue	v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	// use WriteAsText of the script
	v = TTValue(TTPtr(mScript));
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TT("Write"));
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTValue	v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	// use ReadAsText of the script
	v = TTValue(TTPtr(mScript));
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TT("Read"));
	
	return kTTErrNone;
}

TTErr TTCue::WriteAsBuffer(const TTValue& inputValue, TTValue& outputValue)
{
	TTBufferHandlerPtr aBufferHandler;
	TTValue	v;
	
	inputValue.get(0, (TTPtr*)&aBufferHandler);
	
	// use WriteAsBuffer of the script
	v = TTValue(TTPtr(mScript));
	aBufferHandler->setAttributeValue(kTTSym_object, v);
	aBufferHandler->sendMessage(TT("Write"));
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromBuffer(const TTValue& inputValue, TTValue& outputValue)
{
	TTBufferHandlerPtr aBufferHandler;
	TTValue	v;
	
	inputValue.get(0, (TTPtr*)&aBufferHandler);
	
	// if it is the first line :
	if (aBufferHandler->mFirstLine)
		Clear();
	
	// use ReadAsbuffer of the script
	v = TTValue(TTPtr(mScript));
	aBufferHandler->setAttributeValue(kTTSym_object, v);
	aBufferHandler->sendMessage(TT("Read"));
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTBoolean TTCueTestObject(TTNodePtr node, TTPtr args)
{
	TTObjectPtr o;
	TTValue		v;
	TTSymbolPtr s;
	TTNodePtr	aNode;
	TTNodeAddressPtr absoluteAddress;
	
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

TTBoolean TTCueCompareNodePriority(TTValue& v1, TTValue& v2) 
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
