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
	
	if (!err)
		value = mNamespace;
	
	return err;
}

TTErr TTCue::setNamespace(const TTValue& value)
{
	mNamespace = value;
	
	return kTTErrNone;
}

TTErr TTCue::Store()
{
	TTValue	v, parsedLine;
	
	Clear();
		
	// 1. Append a cue flag with the name
	v = TTValue(TT("cue"));
	v.append(mName);
	mScript->sendMessage(TT("AppendFlag"), v, parsedLine);
	
	// 2. Append a comment
	v = TTValue(mComment);
	mScript->sendMessage(TT("AppendComment"), v, parsedLine);
	
	// 3. Append the fold flag to open the cue
	mScript->sendMessage(TT("AppendFlag"), kTTSym_fold, parsedLine);
	
	// 4. Process namespace storage
	processStorage(mScript, mNamespace);
		
	// 5. Append the end flag to close the cue
	mScript->sendMessage(TT("AppendFlag"), kTTSym_end, parsedLine);
	return kTTErrNone;
}

TTErr TTCue::processStorage(TTObjectPtr aScript, const TTValue aNamespace)
{
	TTSymbolPtr		aSymbol;
	TTUInt32		i, j;
	TTNodePtr		aNode;
	TTDictionaryPtr	aLine;
	TTObjectPtr		anObject, aSubScript;
	TTList			aNodeList, allObjectNodes;
	TTNodeAddressPtr address, scriptAddress, dataAddress;
	TTValue			v, aSubNamespace, parsedLine;	
	
	// get the address of the script
	aScript->getAttributeValue(kTTSym_address, v);
	v.get(0, &scriptAddress);

	// for each address of the namespace
	for (i = 0; i < aNamespace.getSize(); i++) {
		
		mNamespace.get(i, &aSymbol);
		
		if (aSymbol == TT("{") || aSymbol == TT("}"))
			return kTTErrGeneric;
		
		// edit absolute address to retreive the node
		address = TTADRS(aSymbol->getCString());
		if (address->getType() == kAddressRelative)
			address = scriptAddress->appendAddress(address);
		
		aNodeList.clear();
		getDirectoryFrom(address)->Lookup(address, aNodeList, &aNode);
		
		// get object
		anObject = aNode->getObject();
		
		// edit the script depending on the object type
		if (anObject) {
			
			// DATA case : get value attribute
			if (anObject->getName() == TT("Data")) {
				
				v.clear();
				anObject->getAttributeValue(kTTSym_value, v);
				
				if (v == kTTValNONE)
					continue;
				
				// append a command line
				v.prepend(TTADRS(aSymbol->getCString()));
				aScript->sendMessage(TT("AppendCommand"), v, parsedLine);
			}
			
			// CONTAINER case : create a sub script
			else if (anObject->getName() == TT("Container")) {
				
				aScript->sendMessage(TT("AppendComment"), kTTValNONE, parsedLine);
				
				// append a script line
				aScript->sendMessage(TT("AppendScript"), address, parsedLine);
				
				// get the sub script back
				parsedLine.get(0, (TTPtr*)&aLine);
				aLine->getValue(v);
				v.get(0, (TTPtr*)&aSubScript);
				
				// if the next symbol is a { : get the sub namespace until the }
				if (i+1 < aNamespace.getSize()) {
					
					aNamespace.get(i+1, &aSymbol);
					
					if (aSymbol == TT("{")) {
						
						j = i+1;
						while (aSymbol != TT("}")) j++;
						
						aSubNamespace.copyRange(aNamespace, i+2, j);
					}
				}
				
				// else : get the namespace of the container
				else {
					
					allObjectNodes.clear();
					getDirectoryFrom(address)->LookFor(&aNodeList, &TTCueTestObject, NULL, allObjectNodes, &aNode);
					
					// sort the NodeList using object priority order
					allObjectNodes.sort(&TTCueCompareNodePriority);
					
					// append each name to the sub namespace
					for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
						
						allObjectNodes.current().get(0, (TTPtr*)&aNode);
						
						// get name
						aNode->getAddress(&dataAddress, address);
						
						// append to the sub namespace
						aSubNamespace.append(dataAddress);
					}
				}
				
				// process sub namespace on sub script
				processStorage(aSubScript, aSubNamespace);
			}
		}
	}
	
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
	TTTextHandlerPtr	aTextHandler;
	//TTNodeAddressPtr	address;
	TTValue				v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	/* get the address of the script
	mScript->getAttributeValue(kTTSym_address, v);
	v.get(0, &address);
	
	// write address of the script
	*buffer += "\t";
	*buffer += mAddress->getCString();
	*buffer += "\n";
	*/
	
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
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
	
	// use ReadFromText of the script
	v = TTValue(TTPtr(mScript));
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TT("Read"));
	
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
