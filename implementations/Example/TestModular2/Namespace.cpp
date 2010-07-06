/* 
 * Namespace creating and dealing interface
 * Copyright © 2010, Laurent Garnier
 * Based on TTModular & TTFoundation libraries developped by Theo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Namespace.h"

#include "xmlParser.h"


Namespace::Namespace(std::string appName, std::string appVersion, std::string creatorName)
{
	m_appName = appName;
	m_appVersion = appVersion;
	m_creatorName = creatorName;
}

Namespace::~Namespace(void)
{
}

NSPStatus
Namespace::namespaceInit(void)
{
	// Initialize TT environments
	TTModularInit(m_appName);
	if (TTModularDirectory == NULL) {
		return NSP_INIT_ERROR;
	}

	return NSP_NO_ERROR;
}

NSPStatus
Namespace::namespaceFree(void)
{
	if(TTObjectRelease(TTObjectHandle(&TTModularDirectory)) != kTTErrNone) {
		return NSP_RELEASE_ERROR;
	}

	return NSP_NO_ERROR;
}

NSPStatus
Namespace::namespaceParameterCreate(std::string address, void* object, void (*returnValueCallback)	(TTPtr, TTValue&)
																	 , void (*returnAddressCallback)(TTPtr, TTValue&))
{
	// Create a TTParameter
	TTParameterPtr	parameter = NULL;
	TTCallbackPtr	p_returnValueCallback = NULL;
	TTValuePtr		p_returnValueBaton;
	
	// prepare arguments : see TTParameter.h to know which args are needed
	TTValue args;
	args.clear();
	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&p_returnValueCallback), kTTValNONE);
	p_returnValueBaton = new TTValue(TTPtr(object));		// Here it is NULL but it could be usefull to pass 
															// an object in order to process the returned value
	p_returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(p_returnValueBaton));
	p_returnValueCallback->setAttributeValue(TT("Function"), returnValueCallback);
	args.append(p_returnValueCallback);
	
	// create an instance of TTParameter
	TTObjectInstantiate(TT("Parameter"), TTObjectHandle(&parameter), args);

	// Register a TTObject into the TTModularDirectory
	TTLogMessage("\n*** Register a parameter into the TTModularDirectory *** \n");
	TTNodePtr		returnedNode;
	TTBoolean		newInstanceCreated;

	TTModularDirectory->TTNodeCreate(TT(address), parameter, NULL, &returnedNode, &newInstanceCreated);
	// note : our myRegistrationObserver is informed if declared 

	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespaceAttributeSet(std::string address, NSPSymbol attribute, TTValue value)
{
	TTErr err, err1;
	TTList returnedTTNodes;
	TTNodePtr firstReturnedTTNode;

	if(TTModularDirectory){
		err = TTModularDirectory->Lookup(TT(address), returnedTTNodes, &firstReturnedTTNode);
		if (err != kTTErrNone) {
			return NSP_INVALID_ADDRESS;
		}

		TTParameterPtr param;
		TTValue v;
		firstReturnedTTNode->getAttributeValue(kTTSym_Object, v);
		v.get(0, (TTPtr*)&param);

		param->registerAttribute(attribute, value.getType(), (void*)address.c_str());
		err1 = param->setAttributeValue(attribute, value);

		if (err1 != kTTErrNone) {
			return NSP_INVALID_ATTRIBUTE;
		}

		//TTLogMessage("\n*** Set Attribute *** \n");
		return NSP_NO_ERROR;
	}

	return NSP_INIT_ERROR;
}

NSPStatus 
Namespace::namespaceObserverCreate(std::string address, NSPSymbol attribute, void* object, void (*returnValueCallback)	(TTPtr, TTValue&)
																						 , void (*returnAddressCallback)(TTPtr, TTValue&))
{
	TTReceiverPtr	myReceiver = NULL;
	TTCallbackPtr	r_returnAddressCallback = NULL; 
	TTCallbackPtr	r_returnValueCallback = NULL;
	TTValuePtr		r_returnAddressBaton, r_returnValueBaton;
	
	// prepare arguments : see TTReceiver.h to know which args are needed
	TTValue args;
	args.clear();
	args.append(TTModularDirectory);
	args.append(TT(address));
	args.append(attribute);
		
	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&r_returnAddressCallback), kTTValNONE);
	r_returnAddressBaton = new TTValue(TTPtr(object));		// Here it is NULL but it could be usefull to pass 
															// an object in order to process the returned value
	r_returnAddressCallback->setAttributeValue(TT("Baton"), TTPtr(r_returnAddressBaton));
	r_returnAddressCallback->setAttributeValue(TT("Function"), returnAddressCallback);
	args.append(r_returnAddressCallback);
	

	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&r_returnValueCallback), kTTValNONE);
	r_returnValueBaton = new TTValue(TTPtr(object));		// Here it is NULL but it could be usefull to pass 
															// an object in order to process the returned address;
	r_returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(r_returnValueBaton));
	r_returnValueCallback->setAttributeValue(TT("Function"), TTPtr(returnValueCallback));
	args.append(r_returnValueCallback);
		
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&myReceiver), args);

	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespaceValueSend(std::string address, NSPSymbol attribute, TTValue value)
{
	TTSenderPtr	sender = NULL;
	
	// prepare arguments : see TTSender.h to know which args are needed
	TTValue args;
	args.clear();
	args.append(TTModularDirectory);
	args.append(TT(address));
	args.append(attribute);
		
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(&sender), args);

	sender->sendMessage(kTTSym_Send, value);
	// note : the value is returned by the Parameter and the Receiver

	TTObjectRelease(TTObjectHandle(&sender));

	return NSP_NO_ERROR;
}

void snapshot(XMLNode xmlNode, TTNodePtr ttNode)
{
	TTSymbolPtr OSCaddress;
	TTValue	attributeNameList;
	TTSymbolPtr attributeName;
	TTList childList;
	TTNodePtr p_node;
	
	ttNode->getOscAddress(&OSCaddress);

	// get the Object attribute of node
	TTValue		v;
	TTObjectPtr o;
	ttNode->getAttributeValue(kTTSym_Object, v);
	v.get(0, TTObjectHandle(&o));
	
	// if the Object is a Parameter get it attribute names
	if (o->getName() == TT("Parameter") {
		TTParameterPtr param;
		TTValue v;
		ttNode->getAttributeValue(kTTSym_Object, v);
		v.get(0, (TTPtr*)&param);
		param->getAttributeNames(attributeNameList);
	} 
	// else get node attribute names
	else {
		ttNode->getAttributeNames(attributeNameList);
	}

	ttNode->getChildren(S_WILDCARD, S_WILDCARD, childList);

	XMLNode childNode;
	if (!childList.isEmpty()) {
		childNode = xmlNode.addChild("Node");
	} else {
		childNode = xmlNode.addChild("Parameter");
	}
	childNode.addAttribute_("name", OSCaddress->getCString());

	if (childList.isEmpty()) {
		for (int i = 0; i < attributeNameList.getSize(); i++) {
			attributeNameList.get(i,(TTSymbolPtr*)&attributeName);
			XMLNode param = childNode.addChild("Attribute");
			param.addAttribute_("name", attributeName->getCString());
		}
	}

	for (childList.begin(); childList.end(); childList.next()) {
		childList.current().get(0,(TTPtr*)&p_node);
		snapshot(childNode, p_node);
	}
	
}

NSPStatus 
Namespace::namespaceSaveToXml(std::string filepath)
{
	XMLNode xMainNode = XMLNode::createXMLTopNode("xml",TRUE);
    xMainNode.addAttribute_("version","1.0");

	//TTList childList;
	TTNodePtr root = TTModularDirectory->getRoot();

	//root->getChildren(S_WILDCARD, S_WILDCARD, childList);
	
	snapshot(xMainNode, root);
	

	xMainNode.writeToFile(filepath.c_str(),"ISO-8859-1");

	return NSP_NO_ERROR;
}


NSPStatus 
Namespace::namespaceDisplay(void)
{
	unsigned int i;
	TTValue hk;
	TTSymbolPtr key;

	if (TTModularDirectory) {	
		TTModularDirectory->getDirectory()->getKeys(hk);

		for (i = 0; i < TTModularDirectory->getDirectory()->getSize(); i++){
			hk.get(i,(TTSymbol**)&key);
			TTLogMessage("%s\n",key->getCString());
		}

		return NSP_NO_ERROR;
	}
	
	TTLogMessage("TTModularDirectory_dump : create a directory before");
	return NSP_INIT_ERROR;
}