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

JamomaError	jamoma_directory_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, TTNodePtr *newTTNode, bool *newInstanceCreated)
{
	if(jamoma_directory){
		jamoma_directory->TTNodeCreate(TT(OSCaddress->s_name), TT(type->s_name), obj, newTTNode, (TTBoolean *)newInstanceCreated);
		return JAMOMA_ERR_NONE;
	}

	post("jamoma_directory_register %s : create a directory before", OSCaddress->s_name);
	return JAMOMA_ERR_GENERIC;
}

TTErr jamoma_directory_unregister(t_symbol *OSCaddress)
{
	TTNodePtr node = NULL;

	if(jamoma_directory){
		jamoma_directory->getTTNodeForOSC(TT(OSCaddress->s_name), &node);
	}
	else{
		post("jamoma_directory_unregister %s : create a directory before", OSCaddress->s_name);
		return kTTErrGeneric;
	}

	return TTObjectRelease(TTObjectHandle(&node));
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
	node->getOscAddress(&OSCaddress);
	
	return gensym((char*)OSCaddress->getCString());
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

JamomaError	jamoma_node_properties(TTNodePtr node, TTList& lk_prp)
{
	TTErr err;
	
	err = node->getPropertyList(lk_prp);
	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;
	
	return JAMOMA_ERR_GENERIC;
}

JamomaError	jamoma_node_add_properties(TTNodePtr node, t_object *object)
{
	long			count = 0;
	t_symbol		**attrnames = NULL;
	long			i;
	
	// !!!
	// !!! get attributes names of the Max external (So the object have to set a getattrnames method)
	// !!!
	object_method(object, gensym("getattrnames"), &count, &attrnames);
	
	for(i = 0; i < count; i++){
		
		// Prepare a callback to get attribute
		TTObjectPtr newGetter = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), &newGetter, kTTValNONE);
		
		TTValuePtr	newGetterBaton = new TTValue(TTPtr(object));
		newGetterBaton->append(TTPtr(attrnames[i]));
		
		newGetter->setAttributeValue(TT("Baton"), TTPtr(newGetterBaton));
		newGetter->setAttributeValue(TT("Function"), TTPtr(&jamoma_node_getter_callback));
		
		// Prepare a callback to set attribute
		TTObjectPtr newSetter = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), &newSetter, kTTValNONE);
		
		TTValuePtr newSetterBaton = new TTValue(TTPtr(object));
		newSetterBaton->append(TTPtr(attrnames[i]));
		
		newSetter->setAttributeValue(TT("Baton"), TTPtr(newSetterBaton));
		newSetter->setAttributeValue(TT("Function"), TTPtr(&jamoma_node_setter_callback));
		
		// add the attribute as a property of the node
		// TODO : use the fact that a TTNode is also a TTObject to use the TTAttribute mecanism
		node->addProperty(TT(attrnames[i]->s_name), *newGetter, *newSetter);
	}
	
	// free the memory allocated inside param_getattrnames
	free(attrnames);
	
	return JAMOMA_ERR_NONE;
}

JamomaError jamoma_node_get_property(TTNodePtr node, t_symbol *property, long *argc, t_atom **argv)
{
	TTErr	err;
	TTValue	data;
	
	// prepare data to send (argc, argv)
	data.append((TTPtr)argc);
	data.append((TTPtr)argv);
	
	// get the value of the property
	err = node->getProperty(TT(property->s_name), data);
	
	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;

	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_node_set_property(TTNodePtr node, t_symbol *property, long argc, t_atom *argv)
{
	TTErr err;
	TTValue	data;
	
	// prepare data to send (argc, argv)
	data.append((TTUInt8)argc);
	data.append((TTPtr)argv);
	
	// get the value of the property
	err = node->setProperty(TT(property->s_name), data);
	
	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;
	
	return JAMOMA_ERR_GENERIC;
}

void jamoma_node_add_observer(TTNodePtr node, t_object *object, t_symbol *jps_method, TTObjectPtr *returnedObserver)
{
	TTObjectPtr newObserver;
	TTValuePtr	newBaton;
	
	// Test
	TTSymbolPtr returnedAddress;
	TTSymbolPtr outputAudioGain = TT("/output~/audio/gain");
	// test end
	
	if(object && jps_method){
		
		// Test
		if(jps_method == gensym("receive_node_callback")){
			node->getOscAddress(&returnedAddress);
			if(returnedAddress == outputAudioGain)
				post("%d", object);
		}
		// test end
		
		newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
		
		newBaton = new TTValue(TTPtr(object));
		newBaton->append(TTPtr(jps_method));
		
		newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
		newObserver->setAttributeValue(TT("Function"), TTPtr(&jamoma_node_observer_callback));
		
		node->registerObserverForNotifications(*newObserver);
		
		(*returnedObserver) = newObserver;
	}
}

void jamoma_node_notify_observers(TTNodePtr node, t_symbol* mess, long argc, t_atom *argv)
{
	TTValue	data;

	// prepare data to send (mess, argc, argv)
	data.append(TTPtr(mess));
	data.append(TTUInt8(argc));
	data.append(TTPtr(argv));
		
	// notify each observer of the node
	node->notifyObservers(data);
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

void jamoma_node_observer_callback(TTPtr p_baton, TTValue& data)
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


void jamoma_node_remove_observer(TTNodePtr node, TTObjectPtr oldCallback)
{
	node->unregisterObserverForNotifications(*oldCallback);
	TTObjectRelease(&oldCallback);
}
