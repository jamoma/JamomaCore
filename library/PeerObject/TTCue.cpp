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

// NamespaceItem CONSTRUCTOR / DESTRUCTOR
NamespaceItem::NamespaceItem(const TTNodeAddressPtr anAddress, const NamespacePtr aNamespace)
{
	this->address = anAddress;
	
	if (aNamespace)
		this->children = aNamespace;
	else
		this->children = new TTList();
}

NamespaceItem::~NamespaceItem()
{
	NamespaceItemPtr anItem;
	
	if (this->children) {
		
		for (this->children->begin(); this->children->end(); this->children->next()) {
			
			this->children->current().get(0, (TTPtr*)&anItem);
			delete anItem;
		}
	}
	
	delete this->children;
}


TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mComment(TT("TODO : edit comment")),
mNamespace(NULL),
mScript(NULL)
{
	TTValue args;
	
	addAttribute(Name, kTypeSymbol);
	addAttribute(Comment, kTypeSymbol);
	addAttributeWithGetterAndSetter(Namespace, kTypePointer);
	
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
	
	delete mNamespace;
	mNamespace = NULL;
}

TTErr TTCue::getNamespace(TTValue& value)
{
	delete mNamespace;

	processNamespace(mScript, &mNamespace);

	TTCueNamespaceEdit(mNamespace, value);
}

TTErr TTCue::processNamespace(TTObjectPtr aScript, NamespacePtr *returnedNamespace)
{
	TTListPtr			lines;
	NamespacePtr		aSubNamespace;
	NamespaceItemPtr	anItem;
	TTScriptPtr			aSubScript;
	TTDictionaryPtr		aLine;
	TTNodeAddressPtr	address;
	TTValue				v;
	
	aScript->getAttributeValue(TT("lines"), v);
	v.get(0, (TTPtr*)&lines);
	
	*returnedNamespace = new TTList();
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		lines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine->getSchema() == kTTSym_command) {
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			v.get(0, &address);
			
			// append to the namespace
			anItem = new NamespaceItem(address, NULL);
			(*returnedNamespace)->append((TTPtr)anItem);
		}
		else if (aLine->getSchema() == kTTSym_script) {
			
			// get the script
			aLine->getValue(v);
			v.get(0, (TTPtr*)&aSubScript);
			
			if (aSubScript)
				processNamespace(aSubScript, &aSubNamespace);
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			v.get(0, &address);
			
			// append to the namespace
			anItem = new NamespaceItem(address, aSubNamespace);
			(*returnedNamespace)->append((TTPtr)anItem);
		}
	}
}

TTErr TTCue::setNamespace(const TTValue& value)
{
	delete mNamespace;
	mNamespace = NULL;
	
	mNamespace = TTCueNamespaceParse(value);
}

TTErr TTCue::Store()
{
	TTValue	v, parsedLine;
	
	Clear();
	
	if (mNamespace) {
		
		// 1. Append a cue flag with the name
		v = TTValue(TT("cue"));
		v.append(mName);
		mScript->sendMessage(TT("AppendFlag"), v, parsedLine);
		
		// 2. Append a comment
		v = TTValue(mComment);
		mScript->sendMessage(TT("AppendComment"), v, parsedLine);
		
		// 3. Process namespace storage
		return processStore(mScript, kTTAdrsRoot, mNamespace);
	}
	
	return kTTErrGeneric;
}

TTErr TTCue::processStore(TTObjectPtr aScript, TTNodeAddressPtr scriptAddress, const NamespacePtr aNamespace)
{
	NamespaceItemPtr anItem;
	TTNodePtr		aNode;
	TTDictionaryPtr	aLine;
	TTObjectPtr		anObject, aSubScript;
	TTList			aNodeList, allObjectNodes;
	TTNodeAddressPtr address, dataAddress;
	TTValue			v, aSubNamespace, parsedLine;
	TTErr			err;

	for (aNamespace->begin(); aNamespace->end(); aNamespace->next()) {
		
		aNamespace->current().get(0, (TTPtr*)&anItem);
		
		// edit absolute address to retreive the node
		if (anItem->address->getType() == kAddressRelative)
			address = scriptAddress->appendAddress(anItem->address);
		else
			address = anItem->address;
		
		aNodeList.clear();
		err = getDirectoryFrom(address)->Lookup(address, aNodeList, &aNode);
		
		if (!err) {
			
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
					v.prepend(anItem->address);
					aScript->sendMessage(TT("AppendCommand"), v, parsedLine);
				}
				
				// CONTAINER case : create a sub script
				else if (anObject->getName() == TT("Container")) {
					
					// append a script line
					aScript->sendMessage(TT("AppendScript"), address->getNameInstance(), parsedLine);
					
					// get the sub script back
					parsedLine.get(0, (TTPtr*)&aLine);
					aLine->getValue(v);
					v.get(0, (TTPtr*)&aSubScript);
					
					// if no sub namespace : get the namespace of the container
					if (anItem->children->getSize() == 0) {
						
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
						
						anItem->children = TTCueNamespaceParse(aSubNamespace);
					}
						
					// process sub namespace on sub script
					processStore(aSubScript, address, anItem->children);
				}
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
	return mScript->sendMessage(TT("Run"), kTTAdrsRoot, kTTValNONE);
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
	TTValue				v, parsedLine;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// Cue node : append a cue flag with the name
	if (aXmlHandler->mXmlNodeName == TT("cue")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		v = TTValue(TT("cue"));
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

NamespacePtr TTCueNamespaceParse(const TTValue& aNamespaceValue)
{
	NamespacePtr		returnedNamespace = new TTList();
	NamespaceItemPtr	anItem;
	TTSymbolPtr			aSymbol, nextSymbol;
	TTUInt32			i, j;
	TTValue				aSubNamespaceValue;
	
	// for each address of the namespace value
	for (i = 0; i < aNamespaceValue.getSize(); i++) {
		
		aNamespaceValue.get(i, &aSymbol);
		
		// look to the next symbol
		if (i+1 < aNamespaceValue.getSize()) {
			
			aNamespaceValue.get(i+1, &nextSymbol);
			
			// if the next symbol is a { : get the sub namespace until the }
			if (nextSymbol == TT("{")) {
				
				aSubNamespaceValue.clear();
				
				for (j=i+2; j<aNamespaceValue.getSize(); j++) {
					
					aNamespaceValue.get(j, &nextSymbol);
					
					if (nextSymbol != TT("}"))
						aSubNamespaceValue.append(nextSymbol);
					else
						break;
				}
				
				i = j; // no +1 because the for loop will increment i anyway
			}
		}
		
		// create a namespace item
		anItem = new NamespaceItem(TTADRS(aSymbol->getCString()), TTCueNamespaceParse(aSubNamespaceValue));
		
		// append it to the namespace
		returnedNamespace->append((TTPtr)anItem);
	}
	
	return returnedNamespace;	
}

TTErr TTCueNamespaceEdit(const NamespacePtr aNamespace, TTValue& returnedNamespaceValue)
{
	NamespaceItemPtr anItem;
	
	if (!aNamespace)
		return kTTErrGeneric;
	
	for (aNamespace->begin(); aNamespace->end(); aNamespace->next()) {
		
		aNamespace->current().get(0, (TTPtr*)&anItem);
		returnedNamespaceValue.append(anItem->address);
		
		if (anItem->children) {
			
			if (anItem->children->getSize() > 0) {
				
				returnedNamespaceValue.append(TT("{"));
				TTCueNamespaceEdit(anItem->children, returnedNamespaceValue);
				returnedNamespaceValue.append(TT("}"));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueNamespaceCopy(const NamespacePtr aNamespace, NamespacePtr* aNamespaceCopy)
{
	NamespacePtr		aSubNamespaceCopy;
	NamespaceItemPtr	anItem, anItemCopy;
	
	if (!aNamespace)
		return kTTErrGeneric;
	
	if (!aNamespaceCopy)
		*aNamespaceCopy = new TTList();
	
	for (aNamespace->begin(); aNamespace->end(); aNamespace->next()) {
		
		aNamespace->current().get(0, (TTPtr*)&anItem);
		
		aSubNamespaceCopy = NULL;
		TTCueNamespaceCopy(anItem->children, &aSubNamespaceCopy);
		
		anItemCopy = new NamespaceItem(anItem->address, aSubNamespaceCopy);
		(*aNamespaceCopy)->append((TTPtr)anItemCopy);
	}
	
	return kTTErrNone;
}

TTErr TTCueNamespaceAppend(NamespacePtr aNamespaceToAppend, NamespacePtr aNamespace)
{
	if (!aNamespaceToAppend || !aNamespace)
		return kTTErrGeneric;
	
	return kTTErrNone;
}

TTErr TTCueNamespaceRemove(NamespacePtr aNamespaceToRemove, NamespacePtr aNamespace)
{
	if (!aNamespaceToRemove || !aNamespace)
		return kTTErrGeneric;
	
	return kTTErrNone;
}
