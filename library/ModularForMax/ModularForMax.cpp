/* 
 * Modular For Max
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "ModularForMax.h"


/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/

// Method to deal with the jamoma directory
/////////////////////////////////////////

TTErr jamoma_directory_free(void)
{
	return TTObjectRelease(TTObjectHandle(&TTModularDirectory));
}

TTErr jamoma_directory_dump(void)
{
	unsigned int i;
	TTValue hk;
	TTSymbolPtr key;

	if(TTModularDirectory){	
		TTModularDirectory->getDirectory()->getKeys(hk);

		for(i=0; i<TTModularDirectory->getDirectory()->getSize(); i++){
			hk.get(i,(TTSymbol**)&key);
			post("%s",key->getCString());
		}
		return kTTErrNone;
	}
	
	post("TTModularDirectory_dump : create a directory before");
	return kTTErrGeneric;
}

TTErr jamoma_directory_dump_by_type(void)
{
	TTList returnedTTNodes;
	TTNodePtr firstReturnedTTNode, n_r;
	TTSymbolPtr osc_adrs;
	TTErr err;
	
	// dump all datas of the tree
	err = jamoma_directory_get_node_by_type(TT("/"), TT("Data"), returnedTTNodes, &firstReturnedTTNode);
	
	if(err == kTTErrNone){
		
		if(!returnedTTNodes.isEmpty()){
			for(returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()){
				
				returnedTTNodes.current().get(0,(TTPtr*)&n_r);
				osc_adrs = jamoma_node_OSC_address(n_r);
				post("data : %s", osc_adrs->getCString());
			}
			post(" SIZE : %d", returnedTTNodes.getSize());
		}
		else
			post("no data");
	}
	else
		post("dump data error");
	
	return err;
}

TTErr jamoma_directory_get_node(TTSymbolPtr address, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode)
{
	TTErr err;

	if(TTModularDirectory){
		err = TTModularDirectory->Lookup(address, returnedTTNodes, firstReturnedTTNode);

		return err;
	}
	
	post("TTModularDirectory_get_node %s : create a directory before", address->getCString());
	return kTTErrGeneric;
}

TTErr jamoma_directory_get_node_by_type(TTSymbolPtr addressToStart, TTSymbolPtr type, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode)
{
	TTList whereToSearch;
	TTErr err;
	
	if(TTModularDirectory){
		
		err = TTModularDirectory->Lookup(addressToStart, whereToSearch, firstReturnedTTNode);
		
		if(err == kTTErrNone){
			
			err = TTModularDirectory->LookFor(&whereToSearch, testTTNodeType, type, returnedTTNodes, firstReturnedTTNode);
			
			return err;
		}
		else
			return kTTErrGeneric;
	}
	
	post("TTModularDirectory_get_node_by_type %s : create a directory before", addressToStart->getCString());
	return kTTErrGeneric;
}

bool testTTNodeType(TTNodePtr n, void *args)
{
	TTValue		v;
	TTObjectPtr o;
	n->getAttributeValue(TT("Object"), v);
	v.get(0, (TTPtr*)&o);
	
	return o->getName() == (TTSymbolPtr)args;	
}

// Method to deal with a node
////////////////////////////////////

TTSymbolPtr jamoma_node_OSC_address(TTNodePtr node)
{
	TTSymbolPtr OSCaddress;
	TTErr err;
	
	err = node->getOscAddress(&OSCaddress);
	
	if(err == kTTErrNone)
		return OSCaddress;
	else
		return NULL;
}

TTSymbolPtr jamoma_node_set_name(TTNodePtr node, TTSymbolPtr name)
{
	TTSymbolPtr newInstance;
	TTBoolean *newInstanceCreated = new TTBoolean(false);

	node->setName(name, &newInstance, newInstanceCreated);
	if(*newInstanceCreated)
		return newInstance;

	return NULL;
}

TTSymbolPtr jamoma_node_set_instance(TTNodePtr node, TTSymbolPtr instance)
{
	TTSymbolPtr newInstance;
	TTBoolean *newInstanceCreated = new TTBoolean(false);

	node->setInstance(instance, &newInstance, newInstanceCreated);

	if(*newInstanceCreated)
		return newInstance;

	return NULL;
}

TTSymbolPtr jamoma_node_type(TTNodePtr node)
{
	TTValue		v;
	TTObjectPtr o;
	node->getAttributeValue(TT("Object"), v);
	v.get(0, TTObjectHandle(&o));
	
	return o->getName();
}

TTErr jamoma_node_children(TTNodePtr node, TTList& lk_children)
{
	TTErr err;

	err =  node->getChildren(S_WILDCARD,S_WILDCARD, lk_children);
	
	return err;
}

// Method to deal with the attributes of a node
////////////////////////////////////////////////////

void jamoma_node_attribute_observer_add(TTNodePtr node, TTSymbolPtr attrname, TTObjectPtr object, void* method, TTObjectPtr *returnedObserver)
{
	TTAttributePtr anAttribute = NULL;
	TTObjectPtr newObserver;
	TTValuePtr	newBaton;
	TTErr err;
	
	// if the attribute exist
	err = node->findAttribute(attrname, &anAttribute);
	
	if(!err){
		
		if(object && method){
			
			newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
			
			newBaton = new TTValue(TTPtr(object));
			
			newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
			newObserver->setAttributeValue(TT("Function"), TTPtr(method));
			
			newObserver->setAttributeValue(TT("Owner"), object->getName());			// this is usefull only to debug
			
			anAttribute->registerObserverForNotifications(*newObserver);
			
			(*returnedObserver) = newObserver;
		}
	}
}

void jamoma_node_attribute_observer_remove(TTNodePtr node, TTSymbolPtr attrname, TTObjectPtr oldObserver)
{
	TTAttributePtr anAttribute = NULL;
	TTErr err;
	
	// if the attribute exist
	err = node->findAttribute(attrname, &anAttribute);
	
	if(!err){
		
		err = anAttribute->unregisterObserverForNotifications(*oldObserver);
	
		if(!err)
			TTObjectRelease(&oldObserver);
	}
}

// Method to deal with TTSubscriber
///////////////////////////////////////////////////////////////////////

TTErr jamoma_subscriber_create(ObjectPtr x, TTObjectPtr aTTObject, SymbolPtr relativeAddress, TTSymbolPtr contextType, TTSubscriberPtr *returnedSubscriber)
{
	TTValue			args;
	TTObjectPtr		shareCallback, contextListCallback;
	TTValuePtr		shareBaton, contextListBaton;
		
	// prepare arguments
	args.append(TTPtr(aTTObject));
	args.append(TT(relativeAddress->s_name));
	args.append(TTModularDirectory);
	
	shareCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &shareCallback, kTTValNONE);
	shareBaton = new TTValue(TTPtr(x));
	shareCallback->setAttributeValue(TT("Baton"), TTPtr(shareBaton));
	shareCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_subscriber_share_context_node));
	args.append(shareCallback);
	
	contextListCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &contextListCallback, kTTValNONE);
	contextListBaton = new TTValue(TTPtr(x));
	contextListBaton->append(contextType);
	contextListCallback->setAttributeValue(TT("Baton"), TTPtr(contextListBaton));
	contextListCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_subscriber_get_context_list));
	args.append(contextListCallback);
	
	*returnedSubscriber = NULL;
	TTObjectInstantiate(TT("Subscriber"), TTObjectHandle(returnedSubscriber), args);
	
	return kTTErrNone;
}

void jamoma_subscriber_share_context_node(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	ObjectPtr	x;
	ObjectPtr	contextPatcher, obj;
	TTNodePtr	returnedContextNode;
	SymbolPtr	objclass = NULL,	_sym_jcomnode, _sym_jcomparam, _sym_jcommessage, _sym_jcomreturn, _sym_share;
	
	// unpack baton
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	
	// look for any other registered jcom. in the patcher
	// to ask them the model node using their "share_model_node" method. 
	// this would optimized the registration process.
	returnedContextNode = NULL;
	contextPatcher = jamoma_object_getpatcher(x);
	obj = object_attr_getobj(contextPatcher, _sym_firstobject);
	
	// TODO : find a way to cache those t_symbol else where ...
	_sym_jcomnode = gensym("jcom.node");
	_sym_jcomparam = gensym("jcom.parameter");
	_sym_jcommessage = gensym("jcom.message");
	_sym_jcomreturn = gensym("jcom.return");
	_sym_share = gensym("share_context_node");
	
	while (obj) {
		objclass = object_attr_getsym(obj, _sym_maxclass);
		if ((objclass == _sym_jcomnode) || (objclass == _sym_jcomparam)) {
			
			// ask it the contextNode
			object_method(object_attr_getobj(obj, _sym_object), _sym_share, &returnedContextNode);
			
			if (returnedContextNode)
				break;
		}
		obj = object_attr_getobj(obj, _sym_nextobject);
	}
	
	data.append(returnedContextNode);
}

void jamoma_subscriber_get_context_list(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	ObjectPtr	x;
	TTListPtr	aContextList;
	TTSymbolPtr	aContextType;
	long		nbLevel = 0;
	
	// unpack baton
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	b->get(1, &aContextType);
	
	// unpack data to get a TTListPtr
	data.get(0, (TTPtr*)&aContextList);
	
	// Get all aContextType.name (jmod/jview . modelName/viewName) above the jcom and their specific names
	// looking recursively at all parent patcher.
	jamoma_subscriber_get_context_list_method(x, aContextType, aContextList, &nbLevel);
}

void jamoma_subscriber_get_context_list_method(ObjectPtr z, TTSymbolPtr contextType, TTListPtr aContextList, long *nbLevel)
{
	AtomCount		ac = 0;
	AtomPtr			av = NULL;
	bool			isCtxPatcher;
	ObjectPtr		box, patcher = jamoma_object_getpatcher(z);
	SymbolPtr		context;
	SymbolPtr		patcherName;
	SymbolPtr		contextName = _sym_nothing;
	TTString		contextEditionName, contextTypeStr;
	TTUInt8			contextTypeLen;
	TTValuePtr		v;
	
	// If z is a bpatcher, the patcher is NULL
	if (!patcher){
		patcher = object_attr_getobj(z, _sym_parentpatcher);
	}
	
	context = jamoma_patcher_getcontext(patcher);
	patcherName = object_attr_getsym(patcher, _sym_name);
	
	contextTypeStr = contextType->getCString();
	contextTypeStr += ".";
	contextTypeLen = strlen(contextTypeStr.data());
	
	// if the patcher name begin by contextTypeStr ("jmod." or "jview.")
	// Strip jmod. from the beginning of patch name
	isCtxPatcher = strncmp(patcherName->s_name, contextTypeStr.data(), contextTypeLen) == 0;
	if (isCtxPatcher)
		patcherName = gensym(patcherName->s_name + contextTypeLen);						// TODO : replace each "." by the Uppercase of the letter after the "."
	
	// Is the patcher embedded in a contextType patcher ?
	// The topLevel patcher name have not to be include in the address
	if (isCtxPatcher && ((context == _sym_bpatcher) || (context == _sym_subpatcher)) ) {
		
		(*nbLevel)++;
		jamoma_subscriber_get_context_list_method(patcher, contextType, aContextList, nbLevel);
		
		// Try to get context name from the patcher arguments
		jamoma_patcher_getargs(patcher, &ac, &av);
		if ((context == _sym_subpatcher) && (ac >= 2))
			contextName = atom_getsym(av+1);
		else if ((context == _sym_bpatcher) && (ac >= 1))
			contextName = atom_getsym(av);
		
		// Try to get context name from the patcher scripting name
		else {
			box = object_attr_getobj(patcher, jps_box);
			contextName = object_attr_getsym(box, _sym_varname);
			if (!contextName)
				contextName = _sym_nothing;
		}
		
		// If the contextName is still nothing
		// get it from the patcher name if it start by contextType
		if (contextName == _sym_nothing)
			contextName = patcherName;
		
		// add the < contextName, patcher > to the contextList
		v = new TTValue(TT(contextName->s_name));
		v->append((TTPtr)patcher);
		aContextList->append(v);
		
		if (av)
			sysmem_freeptr(av);
	}
	// case where the object is in a subpatcher
	else if (!isCtxPatcher && (context == _sym_subpatcher) ) {
		// ignore this level
		jamoma_subscriber_get_context_list_method(patcher, contextType, aContextList, nbLevel);
	}
	// case where the user is editing the patcher 
	// or because there are jcom to register in the toplevel patcher
	else if ((context == gensym("toplevel")) && (*nbLevel == 0)) {
		
		// add the < /, patcher > to the contextList
		//v = new TTValue(S_SEPARATOR);
		v = new TTValue(TT(object_attr_getsym(patcher, _sym_name)->s_name));
		v->append((TTPtr)patcher);
		aContextList->append(v);
	}
}

// Method to deal with TTContainer
///////////////////////////////////////////////////////////////////////

/**	Create a container object */
TTErr jamoma_container_create(ObjectPtr x, TTObjectPtr *returnedContainer)
{
	TTValue			args;
	TTObjectPtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
	// prepare arguments
	
	args.append(TTModularDirectory);
	
	returnAddressCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(x));
	returnAddressCallback->setAttributeValue(TT("Baton"), TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_address));
	args.append(returnAddressCallback);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedContainer = NULL;
	TTObjectInstantiate(TT("Container"), TTObjectHandle(returnedContainer), args);
	
	return kTTErrNone;
}

/**	Send Max data using a container object */
TTErr jamoma_container_send(TTContainerPtr aContainer, SymbolPtr relativeAddress, AtomCount argc, AtomPtr argv)
{
	TTSymbolPtr	r;
	TTValue		v, data;
	
	if (aContainer) {
		
		r = TT(relativeAddress->s_name);
		data.append(r);
		
		jamoma_ttvalue_from_Atom(v, relativeAddress, argc, argv);
		data.append((TTPtr)&v);
		
		aContainer->sendMessage(kTTSym_send, data); // data is [address, [address, x, x, ,x , ...]]
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

// Method to deal with TTData
///////////////////////////////////////////////////////////////////////

/**	Create a data object */
TTErr jamoma_data_create(ObjectPtr x, TTObjectPtr *returnedData, TTSymbolPtr service)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments

	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	args.append(service);
	
	*returnedData = NULL;
	TTObjectInstantiate(TT("Data"), TTObjectHandle(returnedData), args);
	
	return kTTErrNone;
}

/**	Send Max data command */
TTErr jamoma_data_command(TTDataPtr aData, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	TTValue		v;
	
	if (aData) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		aData->sendMessage(kTTSym_command, v);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

// Method to deal with TTSender
///////////////////////////////////////////////////////////////////////

/**	Create a sender object */
TTErr jamoma_sender_create(ObjectPtr x, SymbolPtr addressAndAttribute, TTObjectPtr *returnedSender)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_attribute, oscAddress_noAttribute;
	TTValue args;
	
	// Get address part and attribute part
	splitOSCAddress(TT(addressAndAttribute->s_name), &oscAddress_parent, &oscAddress_name, &oscAddress_instance, &oscAddress_attribute);
	mergeOSCAddress(&oscAddress_noAttribute, oscAddress_parent, oscAddress_name, oscAddress_instance, NO_ATTRIBUTE);
	
	// Make a TTSender object
	args.append(TTModularDirectory);
	args.append(oscAddress_noAttribute);
	
	// TODO : convert attribute from value/stepsize into ValueStepsize
	if (oscAddress_attribute != NO_ATTRIBUTE)
		args.append(oscAddress_attribute);
	else
		args.append(kTTSym_Value);
	
	*returnedSender = NULL;
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(returnedSender), args);
	return kTTErrNone;
}

/**	Send Max data using a sender object */
TTErr jamoma_sender_send(TTSenderPtr aSender, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	TTValue		v;
	
	if (aSender) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		aSender->sendMessage(kTTSym_send, v);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

// Method to deal with TTReceiver
///////////////////////////////////////////////////////////////////////

/**	Create a receiver object */
TTErr jamoma_receiver_create(ObjectPtr x, SymbolPtr addressAndAttribute, TTObjectPtr *returnedReceiver)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_attribute, oscAddress_noAttribute;
	TTValue			args;
	TTObjectPtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
	// prepare arguments

	// Get address part and attribute part
	splitOSCAddress(TT(addressAndAttribute->s_name), &oscAddress_parent, &oscAddress_name, &oscAddress_instance, &oscAddress_attribute);
	mergeOSCAddress(&oscAddress_noAttribute, oscAddress_parent, oscAddress_name, oscAddress_instance, NO_ATTRIBUTE);
	
	// Make a TTReceiver object
	args.append(TTModularDirectory);
	args.append(oscAddress_noAttribute);
	
	if (oscAddress_attribute != NO_ATTRIBUTE)
		args.append(oscAddress_attribute);
	else
		args.append(TT("Value"));
	
	returnAddressCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(x));
	returnAddressCallback->setAttributeValue(TT("Baton"), TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_address));
	args.append(returnAddressCallback);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedReceiver = NULL;
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(returnedReceiver), args);
	
	return kTTErrNone;
}


// Method to deal with TTPresetManager
///////////////////////////////////////////////////////////////////////

/**	Create a preset manager object */
TTErr jamoma_presetManager_create(ObjectPtr x, TTObjectPtr *returnedPresetManager)
{
	TTValue			args;
	TTObjectPtr		testObjectCallback;
	TTValuePtr		testObjectBaton;
	TTHashPtr		toStore = new TTHash();
	TTValue			attr;
	
	// prepare arguments
	args.append(TTModularDirectory);
	
	testObjectCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &testObjectCallback, kTTValNONE);
	testObjectBaton = new TTValue(TTPtr(x));
	testObjectCallback->setAttributeValue(TT("Baton"), TTPtr(testObjectBaton));
	testObjectCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_presetManager_test_object_callback));
	args.append(testObjectCallback);
	
	// Here we decide to store only Value and Priority attributes for Data object
	attr = TTValue(kTTSym_Value);
	attr.append(kTTSym_Priority);
	toStore->append(TT("Data"), attr);
	
	args.append((TTPtr)toStore);
	
	*returnedPresetManager = NULL;
	TTObjectInstantiate(TT("PresetManager"), TTObjectHandle(returnedPresetManager), args);
	
	return kTTErrNone;
}

/** Sets args as kTTVal1 if the node have to be part of a preset */
void jamoma_presetManager_test_object_callback(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	ObjectPtr	x;
	TTObjectPtr o;
	TTNodePtr	aNode;
	TTValue		v;
	TTSymbolPtr s;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	
	// unpack data (address)
	data.get(0, (TTPtr*)&aNode);
	
	// Here we decide to keep only Data with @service == parameter
	data = kTTVal0;
	if (o = aNode->getObject()) {
		if (o->getName() == TT("Data")) {
			o->getAttributeValue(kTTSym_service, v);
			v.get(0, &s);
			
			if (s == kTTSym_parameter)
				data = kTTVal1;
		}
	}
}


// Method to deal with TTMapper
///////////////////////////////////////////////////////////////////////

/**	Create a mapper object */
TTErr jamoma_mapper_create(ObjectPtr x, TTObjectPtr *returnedMapper)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	args.append(TTModularDirectory);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedMapper = NULL;
	TTObjectInstantiate(TT("Mapper"), TTObjectHandle(returnedMapper), args);
	
	return kTTErrNone;
}


// Method to deal with TTViewer
///////////////////////////////////////////////////////////////////////

/**	Create a viewer object */
TTErr			jamoma_viewer_create(ObjectPtr x, TTObjectPtr *returnedViewer)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	args.append(TTModularDirectory);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedViewer = NULL;
	TTObjectInstantiate(TT("Viewer"), TTObjectHandle(returnedViewer), args);
	
	return kTTErrNone;
}

void jamoma_viewer_get_model_address(ObjectPtr z, TTSymbolPtr *modelAddress, TTPtr *aContext)
{
	AtomCount		ac = 0;
	AtomPtr			av = NULL;
	bool			isJviewPatcher;
	ObjectPtr		box, patcher = jamoma_object_getpatcher(z);
	SymbolPtr		context;
	SymbolPtr		patcherName, jmodPatcherName, arg;
	SymbolPtr		address = _sym_nothing;
	TTString		addJmod;
	long			result = 0;
	
	// If z is a bpatcher, the patcher is NULL
	if (!patcher){
		patcher = object_attr_getobj(z, _sym_parentpatcher);
	}
	
	context = jamoma_patcher_getcontext(patcher);
	patcherName = object_attr_getsym(patcher, _sym_name);
	
	// if the patcher name begin by "jview."
	// Strip jview. from the beginning of patch name
	isJviewPatcher = strncmp(patcherName->s_name, "jview.", 6) == 0;
	if (isJviewPatcher)
		patcherName = gensym(patcherName->s_name + 6);						// TODO : replace each "." by the Uppercase of the letter after the "."
	
	// Is the patcher embedded in a jmod.patcher ?
	// The topLevel patcher name have not to be include in the address
	if (isJviewPatcher && ((context == _sym_bpatcher) || (context == _sym_subpatcher)) ) {
		
		// Try to get context name from the patcher arguments
		jamoma_patcher_getargs(patcher, &ac, &av);
		if ((context == _sym_subpatcher) && (ac >= 2))
			address = atom_getsym(av+1);
		else if ((context == _sym_bpatcher) && (ac >= 1))
			address = atom_getsym(av);
		
		// Try to get context name from the patcher scripting name
		else {
			box = object_attr_getobj(patcher, jps_box);
			address = object_attr_getsym(box, _sym_varname);
			if (!address)
				address = _sym_nothing;
		}
		
		// If the contextName is still nothing
		if (address == _sym_nothing) {
			
			// find a jmod.patcherName patcher below
			addJmod = "jmod.";
			addJmod += patcherName->s_name;
			addJmod += ".maxpat";
			jmodPatcherName = gensym((char*)addJmod.data());
			arg = jmodPatcherName;
			
			object_method(patcher, gensym("iterate"), jamoma_view_find_jmod, (void *)&arg, PI_WANTBOX | PI_DEEP, &result);
			// during iteration jmodPatcherName is replaced by the name of the model below
			if (arg != jmodPatcherName)
				address = arg;
			else
				address = patcherName;
		}
		
		// return the address and patcher
		*modelAddress = TT(address->s_name);
		*aContext = (TTPtr)patcher;

		if (av)
			sysmem_freeptr(av);
	}
	// case where the object is in a subpatcher
	else if (!isJviewPatcher && (context == _sym_subpatcher) ) {
		// ignore this level
		jamoma_viewer_get_model_address(patcher, modelAddress, aContext);
	}
	// case where the user is editing the module 
	// or because there are jcom to register in the toplevel patcher
	else if (context == gensym("toplevel")) {
		
		// return / and patcher
		*modelAddress = S_SEPARATOR;
		*aContext = (TTPtr)patcher;
	}
}

long jamoma_view_find_jmod(SymbolPtr *name, ObjectPtr z)
{
	SymbolPtr filename = object_attr_getsym(z, _sym_filename);
	ObjectPtr context = jbox_get_object(z);
	SymbolPtr cls = object_classname(context);
	
	if (filename && cls == _sym_jpatcher)
		if (filename == *name) {
			
			// look for the first node with the same context
			TTList whereToSearch;
			TTList returnedTTNodes;
			TTNodePtr root, firstReturnedTTNode;
			TTString strName;
			
			root = TTModularDirectory->getRoot();
			whereToSearch.append(new TTValue((TTPtr)root));
			
			TTModularDirectory->LookFor(&whereToSearch, &jamoma_view_find_context, (TTPtr)context, returnedTTNodes, &firstReturnedTTNode);
			
			if (firstReturnedTTNode) {
				strName = "/";
				strName += firstReturnedTTNode->getName()->getCString();
				if (!(firstReturnedTTNode->getInstance() == NO_INSTANCE)) {
					strName += ".";
					strName += firstReturnedTTNode->getInstance()->getCString();
				}
				
				*name = gensym((char*)strName.data());
				
				return 1; // stop iteration
			}
		}
	
	return 0;
}

TTBoolean jamoma_view_find_context(TTNodePtr n, TTPtr args)
{
	TTValue		v;
	TTPtr		context;
	TTPtr		c;
	TTObjectPtr o;
	
	context = (TTPtr)args;
	
	o = n->getObject();
	c = n->getContext();
	
	if (o && c)
		// Keep only TTContainer with the same context
		return (o->getName() == TT("Container") && c == context);
	else
		return NO;
}


// Method to deal with TTExplorer
///////////////////////////////////////////////////////////////////////

/**	Create an explorer object */
TTErr jamoma_explorer_create(ObjectPtr x, TTObjectPtr *returnedExplorer)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	args.append(TTModularDirectory);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedExplorer = NULL;
	TTObjectInstantiate(TT("Explorer"), TTObjectHandle(returnedExplorer), args);
	
	return kTTErrNone;
}



// Method to deal with TTDeviceManager
///////////////////////////////////////////////////////////////////////

/**	Create a deviceManager object */
TTErr jamoma_deviceManager_create(ObjectPtr x, SymbolPtr name, TTObjectPtr *returnedDeviceManager)
{
	TTValue			args;
	
	// Make a TTDeviceManager object
	args.append(TTModularDirectory);
	args.append(TT(name->s_name));
	
	*returnedDeviceManager = NULL;
	TTObjectInstantiate(TT("DeviceManager"), TTObjectHandle(returnedDeviceManager), args);
	
	return kTTErrNone;
}

// Method to return data
///////////////////////////////////////////////////////////////////////

void jamoma_callback_return_address(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	ObjectPtr	x;
	TTSymbolPtr	address;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	
	// unpack data (address)
	data.get(0, &address);
	
	// send data to a data using the return_value method
	object_method(x, jps_return_address, SymbolGen(address->getCString()), 0, 0);
}

void jamoma_callback_return_value(TTPtr p_baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	SymbolPtr	msg, method;
	long		argc = 0;
	AtomPtr		argv = NULL;
	
	// unpack baton (a t_object* and the name of the method to call (default : jps_return_value))
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	
	if (b->getSize() == 2) {
		b->get(1, (TTPtr*)&method);
		if (method == NULL || method == _sym_nothing)
			return;
		}
	else
		method = jps_return_value;

	jamoma_ttvalue_to_Atom(v, &msg, &argc, &argv);
	
	// send data to an external using the return_value method
	object_method(x, method, msg, argc, argv);
	
	sysmem_freeptr(argv);
}

// Method to deal with TTValue
/////////////////////////////////////////

/** Make a Atom array from a TTValue (!!! this method allocate memory for the Atom array ! free it after ! */
void jamoma_ttvalue_to_Atom(const TTValue& v, SymbolPtr *msg, AtomCount *argc, AtomPtr *argv)
{
	AtomCount	i;
	
	*msg = _sym_nothing;
	*argc = v.getSize();
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * (*argc));
	
	if (*argc && !(v == kTTValNONE)) {
		for (i=0; i<*argc; i++) {
			if(v.getType(i) == kTypeFloat32 || v.getType(i) == kTypeFloat64){
				TTFloat64	value;
				v.get(i, value);
				atom_setfloat((*argv)+i, value);
				*msg = _sym_float;
			}
			else if(v.getType(i) == kTypeSymbol){
				TTSymbolPtr	value = NULL;
				v.get(i, &value);
				atom_setsym((*argv)+i, gensym((char*)value->getCString()));
				//*msg = _sym_symbol;
			}
			else{	// assume int
				TTInt32	value;
				v.get(i, value);
				atom_setlong((*argv)+i, value);
				*msg = _sym_int;
			}
		}
		
		if (i>1)
			*msg = _sym_list;
	}
	else {
		*msg = _sym_bang;
		*argc = 0;
		*argv = NULL;
	}
}


/** TODO : Make a TTValue from Atom array */
void jamoma_ttvalue_from_Atom(TTValue& v, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	AtomCount	i;
	
	if (msg == _sym_bang || argc == 0)
		v = kTTValNONE;
	else {
		// convert Atom to TTValue
		v.setSize(argc);
		for (i=0; i<argc; i++) 
		{
			if (atom_gettype(argv+i) == A_LONG)
				v.set(i, (int)atom_getlong(argv+i));
			else if (atom_gettype(argv+i) == A_FLOAT)
				v.set(i, atom_getfloat(argv+i));
			else if (atom_gettype(argv+i) == A_SYM)
				v.set(i, TT(atom_getsym(argv+i)->s_name));
		}
	}
}

/** Convert a TTSymbolPtr "MyObjectMessage" into a SymbolPtr "my/object/message" 
 or return NULL if the TTSymbolPtr doesn't begin by an uppercase letter */
SymbolPtr jamoma_TTName_To_MaxName(TTSymbolPtr TTName)
{
	TTSymbolPtr MaxName = convertPublicNameInAddress(TTName);
	if (MaxName)
		return gensym((char*)MaxName->getCString());
	else
		return NULL;
}

/** Get the Context Node of relative to a jcom.external */
TTNodePtr jamoma_context_node_get(ObjectPtr x, TTSymbolPtr contextType)
{
	TTValue						c;
	TTNodePtr					contextNode = NULL;
	TTList						whereToSearch, aContextList;
	long						nbLevel = 0;
	TTPtr						context;
	TTBoolean					isThere = NO;
	
	// Get the context list 
	jamoma_subscriber_get_context_list_method(x, contextType, &aContextList, &nbLevel);
	
	// Get the last context
	if (aContextList.isEmpty())
		return NULL;
	
	c = aContextList.getTail();
	c.get(0, (TTPtr*)&context);
	
	// Is there a node with the same context
	whereToSearch.append(TTModularDirectory->getRoot());
	TTModularDirectory->IsThere(&whereToSearch, testNodeContext, context, &isThere, &contextNode);
	
	return contextNode;
}

/** Get the context type and class from a jcom.external looking at the patcher */
void jamoma_patcher_type_and_class(ObjectPtr z, TTSymbolPtr *returnedContextType, TTSymbolPtr *returnedClass)
{
	bool			isJviewPatcher, isJmodPatcher;
	ObjectPtr		patcher = jamoma_object_getpatcher(z);
	SymbolPtr		context, filename;
	SymbolPtr		patcherName;
	TTString		addSlash;
	long			len, pos;
	char			*last_dot;
	char			*to_split;
	
	// If z is a bpatcher, the patcher is NULL
	if (!patcher){
		patcher = object_attr_getobj(z, _sym_parentpatcher);
	}
	
	context = jamoma_patcher_getcontext(patcher);
	patcherName = object_attr_getsym(patcher, _sym_name);
	
	*returnedContextType = kTTSymEmpty;
	
	// if the patcher name begin by "jview."
	// Strip jview. from the beginning of patch name
	isJviewPatcher = strncmp(patcherName->s_name, "jview.", 6) == 0;
	if (isJviewPatcher) {
		patcherName = gensym(patcherName->s_name + 6);						// TODO : replace each "." by the Uppercase of the letter after the "."
		*returnedContextType = TT("jview");
	}
	
	// if the patcher name begin by "jmod."
	// Strip jmod. from the beginning of patch name
	isJmodPatcher = strncmp(patcherName->s_name, "jmod.", 5) == 0;
	if (isJmodPatcher) {
		patcherName = gensym(patcherName->s_name + 5);						// TODO : replace each "." by the Uppercase of the letter after the "."
		*returnedContextType = TT("jmod");
	}
	
	// Is the patcher embedded in a jmod.patcher ?
	// The topLevel patcher name have not to be include in the address
	if ((isJviewPatcher || isJmodPatcher) && ((context == _sym_bpatcher) || (context == _sym_subpatcher)))
		// Get the filename to extract model class name
		filename = object_attr_getsym(patcher, _sym_filename);
	
	// case where the object is in a subpatcher
	else if (!isJviewPatcher && (context == _sym_subpatcher))
		// ignore this level
		jamoma_patcher_type_and_class(patcher, returnedContextType, returnedClass);

	// case where the user is editing the module 
	// or because there are jcom to register in the toplevel patcher
	else if (context == gensym("toplevel"))
		filename = object_attr_getsym(patcher, _sym_filename);
	
	else {
		*returnedClass = kTTSymEmpty;
		return;
	}
	
	// Get the filename to extract model class name
	if (isJmodPatcher) {
		to_split = (char *)malloc(sizeof(char)*(strlen(filename->s_name + 5)+1));
		strcpy(to_split, filename->s_name + 5);
	}
	
	else if (isJviewPatcher) {
		to_split = (char *)malloc(sizeof(char)*(strlen(filename->s_name + 6)+1));
		strcpy(to_split,filename->s_name + 6);
	}
	else {
		*returnedClass = kTTSymEmpty;
		return;
	}
		
	// find the last '.' (.maxpat)
	// if exists, split the TTNode part in a name part and an instance part
	len = strlen(to_split);
	last_dot = strrchr(to_split,'.');
	pos = (long)last_dot - (long)to_split;
	
	if (last_dot > 0) {
		to_split[pos] = NULL;	// split to keep only the model part
		*returnedClass = TT(to_split);
	}
	else
		*returnedClass = kTTSymEmpty;
}

