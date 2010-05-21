/* 
 * Jamoma TTNode Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NodeLib.h"

TTNodeDirectoryPtr jamoma_directory = NULL;

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/

// Method to deal with the jamoma directory
/////////////////////////////////////////

TTNodeDirectoryPtr	jamoma_directory_init()
{
	TTErr err;
	
	if(jamoma_directory)
		return jamoma_directory;	// already have a directory, just return the pointer to the directory...

	err = TTObjectInstantiate(TT("NodeDirectory"), TTObjectHandle(&jamoma_directory), TT("Jamoma"));
	TT_ASSERT("NodeDirectory created successfully", !err);

	return jamoma_directory;
}

TTErr jamoma_directory_free(void)
{
	return TTObjectRelease(TTObjectHandle(&jamoma_directory));
}

JamomaError jamoma_directory_dump(void)
{
	unsigned int i;
	TTValue hk;
	TTSymbolPtr key;

	if(jamoma_directory){	
		jamoma_directory->getDirectory()->getKeys(hk);

		for(i=0; i<jamoma_directory->getDirectory()->getSize(); i++){
			hk.get(i,(TTSymbol**)&key);
			post("%s",key->getCString());
		}
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_directory_dump : create a directory before");
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_directory_dump_by_type(void)
{
	TTList returnedTTNodes;
	TTNodePtr firstReturnedTTNode, n_r;
	t_symbol *osc_adrs;
	JamomaError err;
	
	// dump all parameters of the tree
	err = jamoma_directory_get_node_by_type(gensym("/"), jps_subscribe_parameter, returnedTTNodes, &firstReturnedTTNode);
	
	if(err == JAMOMA_ERR_NONE){
		
		if(!returnedTTNodes.isEmpty()){
			for(returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()){
				
				returnedTTNodes.current().get(0,(TTPtr*)&n_r);
				osc_adrs = jamoma_node_OSC_address(n_r);
				post("parameter : %s", osc_adrs->s_name);
			}
			post(" SIZE : %d", returnedTTNodes.getSize());
		}
		else
			post("no parameter");
	}
	else
		post("dump parameter error");
	
	// dump all messages of the tree
	returnedTTNodes.clear();
	err = jamoma_directory_get_node_by_type(gensym("/"), jps_subscribe_message, returnedTTNodes, &firstReturnedTTNode);
	
	if(err == JAMOMA_ERR_NONE){
		
		if(!returnedTTNodes.isEmpty()){
			for(returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()){
				
				returnedTTNodes.current().get(0,(TTPtr*)&n_r);
				osc_adrs = jamoma_node_OSC_address(n_r);
				post("message : %s", osc_adrs->s_name);	
			}
		}
		else
			post("no message");
	}
	else
		post("dump message error");
	
	// dump all returns of the tree
	returnedTTNodes.clear();
	err = jamoma_directory_get_node_by_type(gensym("/"), jps_subscribe_return, returnedTTNodes, &firstReturnedTTNode);
	
	if(err == JAMOMA_ERR_NONE){
		
		if(!returnedTTNodes.isEmpty()){
			for(returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()){
				
				returnedTTNodes.current().get(0,(TTPtr*)&n_r);
				osc_adrs = jamoma_node_OSC_address(n_r);
				post("return : %s", osc_adrs->s_name);	
			}
		}
		else
			post("no return");
	}
	else
		post("dump return error");
	
	return err;
}

JamomaError	jamoma_directory_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, TTNodePtr *newTTNode, bool *newInstanceCreated)
{
	long			count = 0;
	t_symbol		**attrnames = NULL;
	TTValuePtr		attributesAccessPack;
	TTList			attributesAccessList;
	TTSymbolPtr		newAddress = TT(OSCaddress->s_name);
	long			i;
	
	if(jamoma_directory){
		
		// prepare Getter and Setter for each attribute to add
		// in a TTList of <attributeName, aGetterCallback, aSetterCallback>
		// !!!
		// !!! get attributes names of the Max external (So the object have to set a getattrnames method)
		// !!!
		if (obj) {
			object_method(obj, gensym("getattrnames"), &count, &attrnames);
			
			for(i = 0; i < count; i++){
				jamoma_node_attribute_access_pack(attrnames[i], obj, &attributesAccessPack);
				attributesAccessList.append(attributesAccessPack);
			}
		}
		
		// create a TTNode
		jamoma_directory->TTNodeCreate(newAddress, TT(type->s_name), obj, NULL, attributesAccessList, newTTNode, (TTBoolean *)newInstanceCreated);

		// free the memory allocated inside param_getattrnames
		sysmem_freeptr(attrnames);
		
		return JAMOMA_ERR_NONE;
	}

	post("jamoma_directory_register %s : create a directory before", OSCaddress->s_name);
	return JAMOMA_ERR_GENERIC;
}

TTErr jamoma_directory_unregister(t_symbol *OSCaddress)
{
	TTErr err = kTTErrNone;
	TTSymbolPtr oldAddress = TT(OSCaddress->s_name);

	if(jamoma_directory){
		err = jamoma_directory->TTNodeRemove(oldAddress);
	}
	else{
		post("jamoma_directory_unregister %s : create a directory before", OSCaddress->s_name);
		return kTTErrGeneric;
	}
	
	return err;
}


void jamoma_directory_observer_add(t_symbol *OSCaddress, t_object *object, t_symbol *jps_method, TTObjectPtr *returnedObserver)
{
	TTObjectPtr newObserver;
	TTValuePtr	newBaton;
	
	if(jamoma_directory){
		if(object && jps_method){
			
			newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
			
			newBaton = new TTValue(TTPtr(object));
			newBaton->append(TTPtr(jps_method));
			
			newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
			newObserver->setAttributeValue(TT("Function"), TTPtr(&jamoma_directory_observer_callback));
			
			newObserver->setAttributeValue(TT("Owner"), TT(jps_method->s_name));		// this is usefull only to debug
			
			jamoma_directory->addObserverForNotifications(TT(OSCaddress->s_name), *newObserver);
			
			(*returnedObserver) = newObserver;
		}
	}
}

void jamoma_directory_observer_remove(t_symbol *OSCaddress, TTObjectPtr oldObserver)
{
	TTErr err = kTTErrNone;
	
	if(jamoma_directory){
		
		err = jamoma_directory->removeObserverForNotifications(TT(OSCaddress->s_name), *oldObserver);
		
		if(!err)
			TTObjectRelease(&oldObserver);
		
	}
}

JamomaError jamoma_directory_get_node(t_symbol *address, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode)
{
	TTErr err;

	if(jamoma_directory){
		err = jamoma_directory->Lookup(TT(address->s_name), returnedTTNodes, firstReturnedTTNode);

		if(err == kTTErrNone)
			return JAMOMA_ERR_NONE;
		else
			return JAMOMA_ERR_GENERIC;
	}
	
	post("jamoma_directory_get_node %s : create a directory before", address->s_name);
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_directory_get_node_by_type(t_symbol *addressToStart, t_symbol *type, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode)
{
	TTList whereToSearch;
	
	TTErr err;
	
	if(jamoma_directory){
		
		err = jamoma_directory->Lookup(TT(addressToStart->s_name), whereToSearch, firstReturnedTTNode);
		
		if(err == kTTErrNone){
			
			err = jamoma_directory->LookingFor(&whereToSearch, testTTNodeType, TT(type->s_name), returnedTTNodes, firstReturnedTTNode);
			
			if(err == kTTErrNone)
				return JAMOMA_ERR_NONE;
			else
				return JAMOMA_ERR_GENERIC;
		}
		else
			return JAMOMA_ERR_GENERIC;
	}
	
	post("jamoma_directory_get_node_by_type %s : create a directory before", addressToStart->s_name);
	return JAMOMA_ERR_GENERIC;
}

bool testTTNodeType(TTNodePtr n, void *args)
{
	return n->getType() == (TTSymbolPtr)args;	
}

// Method to deal with a node
////////////////////////////////////

t_symbol * jamoma_node_OSC_address(TTNodePtr node)
{
	TTSymbolPtr OSCaddress;
	TTErr err;
	
	err = node->getOscAddress(&OSCaddress);
	
	if(err == kTTErrNone)
		return gensym((char*)OSCaddress->getCString());
	else
		return NULL;
}

t_symbol * jamoma_node_name(TTNodePtr node)
{
	return gensym((char*)node->getName()->getCString());
}

t_symbol * jamoma_node_set_name(TTNodePtr node, t_symbol *name)
{
	TTSymbolPtr newInstance;
	TTBoolean *newInstanceCreated = new TTBoolean(false);

	node->setName(TT(name->s_name), &newInstance, newInstanceCreated);
	if(*newInstanceCreated)
		return gensym((char*)newInstance->getCString());

	return NULL;
}

t_symbol * jamoma_node_instance(TTNodePtr node)
{
	return gensym((char*)node->getInstance()->getCString());
}

t_symbol * jamoma_node_set_instance(TTNodePtr node, t_symbol *instance)
{
	TTSymbolPtr newInstance;
	TTBoolean *newInstanceCreated = new TTBoolean(false);

	node->setInstance(TT(instance->s_name), &newInstance, newInstanceCreated);

	if(*newInstanceCreated)
		return gensym((char*)newInstance->getCString());

	return NULL;
}

t_symbol * jamoma_node_type(TTNodePtr node)
{
	return gensym((char*)node->getType()->getCString());
}

JamomaError jamoma_node_children(TTNodePtr node, TTList& lk_children)
{
	TTErr err;

	err =  node->getChildren(S_WILDCARD,S_WILDCARD, lk_children);

	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;
	
	return JAMOMA_ERR_GENERIC;
}

t_object * jamoma_node_max_object(TTNodePtr node)
{
	return (t_object*)node->getObject();
}

// Method to deal with the attributes of a node
////////////////////////////////////////////////////

JamomaError	jamoma_node_attribute_list(TTNodePtr node, TTValue& attrlist)
{
	node->getAttributeNames(attrlist);
	
	return JAMOMA_ERR_NONE;
}

JamomaError jamoma_node_attribute_access_pack(t_symbol *attrname, t_object *object, TTValuePtr *attributeAccessPack)
{
	TTSymbolPtr aName = TT(attrname->s_name);
	
	// Prepare a callback to get attribute
	TTObjectPtr newGetter = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &newGetter, kTTValNONE);
	
	TTValuePtr	newGetterBaton = new TTValue(TTPtr(object));
	newGetterBaton->append(TTPtr(attrname));
	
	newGetter->setAttributeValue(TT("Baton"), TTPtr(newGetterBaton));
	newGetter->setAttributeValue(TT("Function"), TTPtr(&jamoma_node_getter_callback));
	
	// Prepare a callback to set attribute
	TTObjectPtr newSetter = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &newSetter, kTTValNONE);
	
	TTValuePtr newSetterBaton = new TTValue(TTPtr(object));
	newSetterBaton->append(TTPtr(attrname));
	
	newSetter->setAttributeValue(TT("Baton"), TTPtr(newSetterBaton));
	
	// Special case for 'value' attribute
	if(attrname == jps_value)
		newSetter->setAttributeValue(TT("Function"), TTPtr(&jamoma_node_setter_value_callback));
	else
		newSetter->setAttributeValue(TT("Function"), TTPtr(&jamoma_node_setter_callback));
	
	// prepare the pack
	(*attributeAccessPack) = new TTValue((TTPtr)aName);
	(*attributeAccessPack)->append((TTPtr)newGetter);
	(*attributeAccessPack)->append((TTPtr)newSetter);
	
	return JAMOMA_ERR_NONE;
}

JamomaError jamoma_node_attribute_get(TTNodePtr node, t_symbol *attrname, long *argc, t_atom **argv)
{
	TTErr	err;
	TTValue	data;
	
	// prepare data to send (argc, argv)
	data.append((TTPtr)argc);
	data.append((TTPtr)argv);
	
	// get the value of the property
	err = node->getAttributeValue(TT(attrname->s_name), data);
	
	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;

	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_node_attribute_set(TTNodePtr node, t_symbol *attrname, long argc, t_atom *argv)
{
	TTErr err;
	TTValue	data;
	
	// prepare data to send (argc, argv)
	data.append((TTUInt8)argc);
	data.append((TTPtr)argv);
	
	// set the value of the property
	err = node->setAttributeValue(TT(attrname->s_name), data);
	
	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;
	
	return JAMOMA_ERR_GENERIC;
}

void jamoma_node_attribute_observer_add(TTNodePtr node, t_symbol *attrname, t_object *object, t_symbol *jps_method, TTObjectPtr *returnedObserver)
{
	TTAttributePtr anAttribute = NULL;
	TTObjectPtr newObserver;
	TTValuePtr	newBaton;
	TTErr err;
	
	// if the attribute exist
	err = node->findAttribute(TT(attrname->s_name), &anAttribute);
	
	if(!err){
		
		if(object && jps_method){
			
			newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
			
			newBaton = new TTValue(TTPtr(object));
			newBaton->append(TTPtr(jps_method));
			
			newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
			newObserver->setAttributeValue(TT("Function"), TTPtr(&jamoma_node_attribute_observer_callback));
			
			newObserver->setAttributeValue(TT("Owner"), TT(attrname->s_name));			// this is usefull only to debug
			
			anAttribute->registerObserverForNotifications(*newObserver);
			
			(*returnedObserver) = newObserver;
		}
	}
}

void jamoma_node_attribute_observer_notify(TTNodePtr node, t_symbol *attrname, t_symbol* mess, long argc, t_atom *argv)
{
	TTAttributePtr anAttribute = NULL;
	TTValue	data;
	TTErr err;
	
	// if the attribute exist
	err = node->findAttribute(TT(attrname->s_name), &anAttribute);
	
	if(!err){

		// prepare data to send (mess, argc, argv)
		data.append(TTPtr(mess));
		data.append(TTUInt8(argc));
		data.append(TTPtr(argv));
		
		// notify each observer of the attribute
		anAttribute->sendNotification(TT("notify"), data);
	}
}

void jamoma_node_attribute_observer_remove(TTNodePtr node, t_symbol *attrname, TTObjectPtr oldCallback)
{
	TTAttributePtr anAttribute = NULL;
	TTErr err;
	
	// if the attribute exist
	err = node->findAttribute(TT(attrname->s_name), &anAttribute);
	
	if(!err){
		
		err = anAttribute->unregisterObserverForNotifications(*oldCallback);
	
		if(!err)
			TTObjectRelease(&oldCallback);
	}
}


// Callbacks called when the directory or a node 
// have to notify his observers (life cycle and attribute observers)
///////////////////////////////////////////////////////////////////////

void jamoma_directory_observer_callback(TTPtr p_baton, TTValue& data)
{
	TTValuePtr		b;
	t_object		*x;
	t_symbol		*jps_method;
	TTSymbolPtr		oscAddress;
	TTNodePtr		aNode;
	long			flag;
	TTCallbackPtr	anObserver;
	t_atom			a_extra[3];
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	b->get(1, (TTPtr*)&jps_method);
	
	// unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, (TTPtr*)&oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, TTObjectHandle(&anObserver));
	
	// send data using a class method of the object : void function(t_object *x, t_symbol *mess, long argc, t_atom *argv)
	atom_setobj(&a_extra[0], aNode);
	atom_setlong(&a_extra[1], flag);
	atom_setobj(&a_extra[2], anObserver);
	
	object_method(x, jps_method, gensym((char*)oscAddress->getString().c_str()), 3, a_extra);
}

void jamoma_node_getter_callback(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	t_object	*x;
	t_symbol	*attrname;
	long		*p_argc;
	t_atom		**p_argv;
	t_max_err	err;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	b->get(1, (TTPtr*)&attrname);
	
	// unpack data (p_argc and p_argv)
	data.get(0, (TTPtr*)&p_argc);
	data.get(1, (TTPtr*)&p_argv);
	
	// get back data using a class method of the object : void function(t_object *x, long *argc, t_atom **argv)
	*p_argc = 0;
	*p_argv = NULL;
	err = object_attr_getvalueof(x, attrname, p_argc, p_argv);
}

void jamoma_node_setter_callback(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	t_object	*x;
	t_symbol	*attrname;
	long		argc;
	t_atom		*argv;
	t_max_err	err;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	b->get(1, (TTPtr*)&attrname);
	
	// unpack data (argc and argv)
	data.get(0, argc);
	data.get(1, (TTPtr*)&argv);
	
	// send data using a class attr method of the object
	err = object_attr_setvalueof(x, attrname, argc, argv);
}

void jamoma_node_setter_value_callback(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	t_object	*x;
	long		argc;
	t_atom		*argv;
	t_max_err	err;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	
	// unpack data (argc and argv)
	data.get(0, argc);
	data.get(1, (TTPtr*)&argv);
	
	// send data to a parameter using the receive callback method
	err = object_method_typed(x, jps_dispatched, argc, argv, NULL);
}

void jamoma_node_attribute_observer_callback(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	t_object	*x;
	t_symbol	*jps_method;
	t_symbol	*mess;
	long		argc;
	t_atom		*argv;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	b->get(1, (TTPtr*)&jps_method);
	
	// unpack data (argc and argv)
	data.get(0, (TTPtr*)&mess);
	data.get(1, argc);
	data.get(2, (TTPtr*)&argv);
	
	// send data using a class method of the object : void function(t_object *x, t_symbol *mess, long argc, t_atom *argv)
	object_method(x, jps_method, mess, argc, argv);
}

// Method to deal with TTSubscriber
///////////////////////////////////////////////////////////////////////

JamomaError jamoma_subscriber_create(ObjectPtr x, SymbolPtr relativeAddress, TTObjectPtr aTTObject, TTSubscriberPtr *returnedSubscriber)
{
	TTValue			args;
	ObjectPtr		context;
	TTObjectPtr		shareCallback, contextListCallback;
	TTValuePtr		shareBaton, contextListBaton;
		
	// prepare aguments
	
	args.append(jamoma_directory);
	
	context = jamoma_object_getpatcher(x);
	args.append(context);
	
	args.append(TT(relativeAddress->s_name));
	
	shareCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &shareCallback, kTTValNONE);
	shareBaton = new TTValue(TTPtr(x));
	shareCallback->setAttributeValue(TT("Baton"), TTPtr(shareBaton));
	shareCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_subscriber_share_context_node));
	args.append(shareCallback);
	
	contextListCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &contextListCallback, kTTValNONE);
	contextListBaton = new TTValue(TTPtr(x));
	contextListCallback->setAttributeValue(TT("Baton"), TTPtr(contextListBaton));
	contextListCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_subscriber_get_context_list));
	args.append(contextListCallback);
	
	args.append(TTPtr(aTTObject));
	
	*returnedSubscriber = NULL;
	TTObjectInstantiate(TT("Subscriber"), TTObjectHandle(returnedSubscriber), args);
	TT_ASSERT("Subscriber created successfully", !err);
	
	return JAMOMA_ERR_NONE;
}

void jamoma_subscriber_share_context_node(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	ObjectPtr	x;
	ObjectPtr	contextPatcher, obj;
	TTNodePtr	returnedContextNode;
	SymbolPtr	objclass = NULL,	_sym_jcomnode, _sym_jcomparam, _sym_share;
	
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
	_sym_share = gensym("share_model_node");
	
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
	long		nbLevel = 0;
	
	// unpack baton
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&x);
	
	// unpack data to get a TTListPtr
	data.get(0, (TTPtr*)&aContextList);
	
	// Get all jmod.modelPatcher above the jcom and their modelName 
	// looking recursively at all parent patcher.
	jamoma_subscriber_get_context_list_method(x, aContextList, &nbLevel);
}

void jamoma_subscriber_get_context_list_method(ObjectPtr z, TTListPtr aContextList, long *nbLevel)
{
	AtomCount		ac = 0;
	AtomPtr			av = NULL;
	bool			isJmodPatcher;
	ObjectPtr		box, patcher = jamoma_object_getpatcher(z);
	SymbolPtr		context;
	SymbolPtr		patcherName;
	SymbolPtr		contextName = _sym_nothing;
	TTString		contextEditionName;
	TTValuePtr		v;
	
	// If z is a bpatcher, the patcher is NULL
	if (!patcher){
		patcher = object_attr_getobj(z, _sym_parentpatcher);
	}
	
	context = jamoma_patcher_getcontext(patcher);
	patcherName = object_attr_getsym(patcher, _sym_name);
	
	// if the patcher name begin by "jmod."
	// Strip jmod. from the beginning of patch name
	isJmodPatcher = strncmp(patcherName->s_name, "jmod.", 5) == 0;
	if (isJmodPatcher)
		patcherName = gensym(patcherName->s_name + 5);						// TODO : replace each "." by the Uppercase of the letter after the "."
	
	// Is the patcher embedded in a jmod.patcher ?
	// The topLevel patcher name have not to be include in the address
	if (isJmodPatcher && ((context == _sym_bpatcher) || (context == _sym_subpatcher)) ) {
		
		(*nbLevel)++;
		jamoma_subscriber_get_context_list_method(patcher, aContextList, nbLevel);
		
		// Try to get context name from the patcher arguments
		jamoma_patcher_getargs(patcher, &ac, &av);
		if ((context == _sym_subpatcher) && (ac == 2))
			contextName = atom_getsym(av+1);
		else if ((context == _sym_bpatcher) && (ac == 1))
			contextName = atom_getsym(av);
		
		// Try to get context name from the patcher scripting name
		else {
			box = object_attr_getobj(patcher, jps_box);
			contextName = object_attr_getsym(box, gensym("varname"));
			if (!contextName)
				contextName = _sym_nothing;
		}
		
		// If the contextName is still nothing
		// get it from the patcher name if it start by "jmod."
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
	else if (!isJmodPatcher && (context == _sym_subpatcher) ) {
		// ignore this level
		jamoma_subscriber_get_context_list_method(patcher, aContextList, nbLevel);
	}
	// case where the user is editing the module 
	// or because there are jcom to register in the toplevel patcher
	else if ((context == gensym("toplevel")) && (*nbLevel == 0)) {
		
		// add the < /, patcher > to the contextList
		v = new TTValue(S_SEPARATOR);
		v->append((TTPtr)patcher);
		aContextList->append(v);
	}
}
