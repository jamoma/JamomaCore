/* 
 * Jamoma TTNode Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "DeviceManagerLib.h"

// statics and globals
DevManagerPtr		jamoma_devmanager = NULL;
static TTHashPtr	jamoma_devmanager_hash_listener = NULL;						// used to store all namespace listeners 

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/


// Method to deal with the Jamoma Device Manager
//////////////////////////////////////////////

DevManagerPtr	jamoma_devmanager_init(t_symbol *applicationName)
{	
	if(jamoma_devmanager)
		return jamoma_devmanager;	// already have a directory, just return the pointer to the directory...
	
	// Launch the plugin manager
	jamoma_devmanager = new Controller(applicationName->s_name);
	
	// Pass callbacks to the Controller Namespace
	jamoma_devmanager->namespaceDiscoverAddCallback(jamoma_directory, &jamoma_namespace_discover_callback);
	jamoma_devmanager->namespaceGetAddCallback(jamoma_directory, &jamoma_namespace_get_callback);
	jamoma_devmanager->namespaceSetAddCallback(jamoma_directory, &jamoma_namespace_set_callback);
	jamoma_devmanager->namespaceListenAddCallback(jamoma_directory, &jamoma_namespace_listen_callback);
	
	// create the hashtab for future network observers
	jamoma_devmanager_hash_listener = new TTHash();
	
	return jamoma_devmanager;
}

JamomaError jamoma_devmanager_load_plugins(t_symbol *path)
{
	jamoma_devmanager->pluginLoad(path->s_name);
	return JAMOMA_ERR_NONE;
}

JamomaError jamoma_devmanager_scan()
{
	std::string deviceName;
	bool understandDiscover;
	
	// scan the network
	jamoma_devmanager->deviceSetCurrent();
	
	// get all Devices
	std::map<std::string, Device*>* mapDevices = jamoma_devmanager->deviceGetCurrent();
	
	map<string, Device*>::iterator it = mapDevices->begin();
	
	while(it != mapDevices->end())
	{
		deviceName = it->first;
		understandDiscover = jamoma_devmanager->deviceUnderstandDiscoverRequest(deviceName);
		
		if(understandDiscover)
			post("Device \"%s\" understands discover request", deviceName.data());
		else
			post("Device \"%s\" doesn't understand discover request", deviceName.data());
		
		++it;
	}
	
	return JAMOMA_ERR_NONE;
}




JamomaError jamoma_devmanager_free()
{
	if(jamoma_devmanager){
		jamoma_devmanager->~Controller();
		jamoma_devmanager = NULL;
	}
	return JAMOMA_ERR_NONE;
}

JamomaError	jamoma_devmanager_dump_plugins()
{
	vector<string> plugins;
	vector<string>::iterator p_iter;

	if(jamoma_devmanager)
	{
		// show loaded plugins
		post("<< Loaded Plugins >>");
		plugins = jamoma_devmanager->pluginGetLoadedByName();
		for(p_iter = plugins.begin(); p_iter != plugins.end(); p_iter++){
			post(">> %s", std::string(*p_iter).c_str());
		}
		
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_devmanager_dump_plugins : create the Device Manager before");
	return JAMOMA_ERR_GENERIC;
}

JamomaError	jamoma_devmanager_dump_devices()
{
	map<string, Device*>* devices;
	map<string, Device*>::iterator d_iter;
	
	if(jamoma_devmanager)
	{
		// show devices
		post("<< Loaded Devices >>");
		devices = jamoma_devmanager->deviceGetCurrent();
		d_iter = devices->begin();
		while (d_iter != devices->end()){
			post(">> %s", std::string(d_iter->first).c_str());
			++d_iter;
		}
		
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_devmanager_dump_devices : create the Device Manager before");
	return JAMOMA_ERR_GENERIC;
}


// Callbacks to pass to the Namespace of the Device Manager
/////////////////////////////////////////////////////////

void jamoma_namespace_discover_callback(void* arg, Address whereToDiscover, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedLeaves, std::vector<std::string>& returnedAttributes)
{
	TTErr err;
	TTNodePtr nodeToDiscover, aChild;
	TTList allChildren;
	TTString instanceName, sAttribute;
	TTSymbolPtr attributeName, type;
	TTValue attributeNameList, v;
	TTObjectPtr o;
	int i;
	
	TTNodeDirectoryPtr m_directory = (TTNodeDirectoryPtr) arg;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToDiscover.c_str(), &nodeToDiscover);
		
		if(!err){
			
			// Edit the vector with all name+instance of each children
			nodeToDiscover->getChildren(S_WILDCARD, S_WILDCARD, allChildren);
			for(allChildren.begin(); allChildren.end(); allChildren.next())
			{
				allChildren.current().get(0,(TTPtr*)&aChild);
				
				instanceName = aChild->getName()->getString();
				
				if(aChild->getInstance() != NO_INSTANCE){
					instanceName += ".";
					instanceName += aChild->getInstance()->getString();
				}
				
				// if the node is a parameter : add it as a leaf
				// else : add it as a node
				aChild->getAttributeValue(TT("Object"), v);
				v.get(0, TTObjectHandle(&o));
				type = o->getName();
				if(type == TT("Parameter"))
				   returnedLeaves.push_back(instanceName.c_str());
				else if(type != TT(jps_subscribe_return->s_name))
				   returnedNodes.push_back(instanceName.c_str());
				else ; // don't return the jcom.return
			}
			
			// Edit the vector with all attributes name
			nodeToDiscover->getAttributeNames(attributeNameList);
			
			// Add the acces attribute which is not a jamoma attribute
			// only for the parameter, message or return
			nodeToDiscover->getAttributeValue(TT("Object"), v);
			v.get(0, TTObjectHandle(&o));
			type = o->getName();
			if(type == TT("Parameter"))
				returnedAttributes.push_back(NAMESPACE_ATTR_ACCESS);
			
			// Add all other attributes
			for(i = 0; i < attributeNameList.getSize(); i++)
			{
				attributeNameList.get(i,(TTSymbolPtr*)&attributeName);
				sAttribute = convertAttributeFromJamoma(attributeName->getCString());
				
				if(strcmp(sAttribute.c_str(), ""))
					returnedAttributes.push_back(sAttribute);
			}
		}
		else{
			; //TODO send a notification : Jamoma!namespace #address /address
		}
	}
}

void jamoma_namespace_get_callback(void* arg, Address whereToGet, std::string attribute, Value& returnedValue)
{
	TTErr err;
	JamomaError jerr; 
	TTNodePtr nodeToGet;
	TTList allChildren;
	TTSymbolPtr nodeType, attributeName;
	TTValue v;
	TTObjectPtr o;
	long argc, i;
	t_atom *argv;
	t_symbol* sym;
	
	TTNodeDirectoryPtr m_directory = (TTNodeDirectoryPtr) arg;
	
	if(m_directory){

		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToGet.c_str(), &nodeToGet);
		
		if(!err){
			
			// test node type to get the access status
			nodeToGet->getAttributeValue(TT("Object"), v);
			v.get(0, TTObjectHandle(&o));
			nodeType = o->getName();
			
			// Convert attribute into Jamoma style
			attributeName = convertAttributeToJamoma(attribute);
			
			// only return the attribute 'value' if this is a parameter or a return
			if(attributeName == TT("value"))
				if((nodeType != TT("subscribe_parameter")) && (nodeType != TT("subscribe_return")))
					return;
			
			if(attributeName == TT("access")){
				
				if(nodeType == TT("subscribe_parameter")){
					
					returnedValue = "getsetter";
					
				} else if(nodeType == TT("subscribe_message")){
					
					returnedValue = "setter";
					
				} else if(nodeType == TT("subscribe_return")){
					
					returnedValue = "getter";
				}
				
			}
			else{
				// get the value of the node
				jerr =jamoma_node_attribute_get(nodeToGet, SymbolGen(convertAttributeToJamoma(attribute)->getCString()), &argc, &argv);
				
				if(jerr == JAMOMA_ERR_NONE){
					
					// edit a string from the t_atom array
					for(i = 0; i < argc; i++){
						char temp[512];
						switch(atom_gettype(&argv[i])) 
						{
							case A_SYM:
								sym = atom_getsym(&argv[i]);
								snprintf(temp, sizeof(temp), "%s", sym->s_name);
								break;
							case A_FLOAT:
								snprintf(temp, sizeof(temp), "%f", atom_getfloat(&argv[i]));
								break;
							case A_LONG:
								snprintf(temp, sizeof(temp), "%ld", atom_getlong(&argv[i]));
								break;
						}
						
						returnedValue.append(temp);
						if(i+1 < argc)
							returnedValue.append(" ");
					}
				}
			}
		}
		else{
			; //TODO send a notification : Jamoma!get #address /address:attribute
		}
	}
}

void jamoma_namespace_set_callback(void* arg, Address whereToSet, std::string attribute, Value& newValue)
{
	TTErr err;
	TTNodePtr nodeToSet;
	TTList allChildren;
	TTSymbolPtr nodeType;
	TTValue attributeValue, v;
	TTObjectPtr o;
	long argc;
	t_atom *argv;
	
	TTNodeDirectoryPtr m_directory = (TTNodeDirectoryPtr) arg;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToSet.c_str(), &nodeToSet);
		
		if(!err){
			
			// test node type to get the access status
			nodeToSet->getAttributeValue(TT("Object"), v);
			v.get(0, TTObjectHandle(&o));
			nodeType = o->getName();
			
			if(nodeType == TT("Parameter")){
				
				// parse the value to get a t_atom array
				argc = 0;
				argv = NULL;
				atom_setparse(&argc,&argv, (char*)newValue.c_str());
				if(argc)
					jamoma_node_attribute_set(nodeToSet, SymbolGen(convertAttributeToJamoma(attribute)->getCString()), argc, argv);
			}
		}
		else{
			; //TODO send a notification : Jamoma!set #address /address:attribute value
		}
	}
}

void jamoma_namespace_listen_callback(void* arg, std::string whereToSend, Address whereToListen, std::string attributeToListen, bool enableListening)
{
	if(enableListening)
		jamoma_namespace_enable_listening(arg, whereToSend, whereToListen, attributeToListen);
	else
		jamoma_namespace_disable_listening(arg, whereToSend, whereToListen, attributeToListen);
}

void jamoma_namespace_enable_listening(void* arg, std::string whereToSend, Address whereToListen, std::string attributeToListen)
{
	TTErr err;
	TTNodePtr		nodeToListen;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newListener, o;
	TTValuePtr		newBaton;
	TTValue			v;
	TTString		keyLink;
	
	TTNodeDirectoryPtr m_directory = (TTNodeDirectoryPtr) arg;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToListen.c_str(), &nodeToListen);
		
		if(!err){
			
			// DEBUG
			post("enable %s listening at %s", attributeToListen.data(), whereToListen.data());
			
			// enable life cycle observing
			if(attributeToListen.c_str() == NAMESPACE_ATTR_LIFE)
			{
				// create an observer of the root in order to notify the device manager
				// for creation and destruction of node
				newListener = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
				TTObjectInstantiate(TT("Callback"), &newListener, kTTValNONE);
				
				newBaton = new TTValue((TTString)whereToSend);
				newBaton->append((TTString)whereToListen);
				newBaton->append((TTString)attributeToListen);
				
				newListener->setAttributeValue(TT("Baton"), TTPtr(newBaton));
				newListener->setAttributeValue(TT("Function"), TTPtr(&jamoma_namespace_notify_method));
				
				m_directory->addObserverForNotifications(S_SEPARATOR, *newListener);
			}
			// enable attribute listening
			else{
				
				// if the attribute exist
				nodeToListen->getAttributeValue(TT("Object"), v);
				v.get(0, TTObjectHandle(&o));
				err = o->findAttribute(convertAttributeToJamoma(attributeToListen.c_str()), &anAttribute);
				
				if(!err){
					
						newListener = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
						TTObjectInstantiate(TT("Callback"), &newListener, kTTValNONE);
						
						newBaton = new TTValue((TTString)whereToSend);
						newBaton->append((TTString)whereToListen);
						newBaton->append((TTString)attributeToListen);
						
						newListener->setAttributeValue(TT("Baton"), TTPtr(newBaton));
						newListener->setAttributeValue(TT("Function"), TTPtr(&jamoma_namespace_listen_method));
						
						anAttribute->registerObserverForNotifications(*newListener);
				}
			}
			
			if(!err){
				// memorize the link in order to remove it with the unlink operation
				keyLink = whereToSend + "<>" + whereToListen + ":" + attributeToListen;
				jamoma_devmanager_hash_listener->append(TT(keyLink), (TTPtr)newListener);
			}
		}
	}
}

void jamoma_namespace_disable_listening(void* arg, std::string whereToSend, Address whereToListen, std::string attributeToListen)
{
	TTErr err;
	TTNodePtr nodeListened;
	TTObjectPtr oldListener;
	TTValue	temp;
	TTString keyLink;
	
	TTNodeDirectoryPtr m_directory = (TTNodeDirectoryPtr) arg;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToListen.c_str(), &nodeListened);
		
		if(!err){
			
			// DEBUG
			post("disable %s listening at %s", attributeToListen.data(), whereToListen.data());
			
			// looking for an observer
			keyLink = whereToSend + "<>" + whereToListen + ":" + attributeToListen;
			err = jamoma_devmanager_hash_listener->lookup(TT(keyLink), temp);
			temp.get(0, (TTPtr*)&oldListener);
			
			// disable life cycle observing
			if(attributeToListen.c_str() == NAMESPACE_ATTR_LIFE)
			{
				if(!err)
					jamoma_directory_observer_remove(SymbolGen(whereToListen.c_str()), oldListener);
			}
			// disable attribute listening
			else{

				if(!err)
					jamoma_node_attribute_observer_remove(nodeListened, SymbolGen(convertAttributeToJamoma(attributeToListen)->getCString()), oldListener);
			}
		}
	}
}

void jamoma_namespace_listen_method(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	TTString	whereToSend;
	TTString	whereToListen;
	TTString	attributeToListen;
	TTString	returnedValue;
	t_symbol	*mess, *sym;
	long		argc, i;
	t_atom		*argv;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, whereToSend);
	b->get(1, whereToListen);
	b->get(2, attributeToListen);
	
	// unpack data (argc and argv)
	data.get(0, (TTPtr*)&mess);
	data.get(1, argc);
	data.get(2, (TTPtr*)&argv);
	
	// edit a string from the t_atom array
	for(i = 0; i < argc; i++){
		
		char temp[512];
		switch(atom_gettype(&argv[i])) 
		{
			case A_SYM:
				sym = atom_getsym(&argv[i]);
				snprintf(temp, sizeof(temp), "%s", sym->s_name);
				break;
			case A_FLOAT:
				snprintf(temp, sizeof(temp), "%f", atom_getfloat(&argv[i]));
				break;
			case A_LONG:
				snprintf(temp, sizeof(temp), "%ld", atom_getlong(&argv[i]));
				break;
		}
		
		returnedValue.append(temp);
		if(i+1 < argc)
			returnedValue.append(" ");
	}
	
	// send a listen answer using the devmanager
	jamoma_devmanager->deviceSendListenAnswer(whereToSend, whereToListen, attributeToListen, returnedValue);
}

void jamoma_namespace_notify_method(TTPtr p_baton, TTValue& data)
{
	TTValuePtr		b;
	TTString		whereToSend;
	TTString		whereToListen;
	TTString		attributeToListen;
	TTString		returnedValue;
	TTSymbolPtr		oscAddress;
	TTSymbolPtr		aNode;
	long			flag;
	TTCallbackPtr	anObserver;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, whereToSend);
	b->get(1, whereToListen);
	b->get(2, attributeToListen);
	
	// unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, (TTPtr*)&oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	returnedValue = "" + flag;
	
	// DEBUG
	if(flag)
		post("Notify %s about %s creation", whereToSend.data(), whereToListen.data());
	else
		post("Notify %s about %s destruction", whereToSend.data(), whereToListen.data());
	
	jamoma_devmanager->deviceSendListenAnswer(whereToSend, whereToListen, attributeToListen, returnedValue);
}

// Convert Jamoma attributes into / from Device Manager attributes
////////////////////////////////////////////////////////////////

std::string convertAttributeFromJamoma(std::string attribute)
{
	if(attribute == jps_value->s_name)
		return NAMESPACE_ATTR_VALUE;
	
	if(attribute == "access")
		return NAMESPACE_ATTR_ACCESS;
	
	if(attribute == jps_type->s_name)
		return NAMESPACE_ATTR_TYPE;
	
	if(attribute == jps_priority->s_name)
		return NAMESPACE_ATTR_PRIORITY;
	
	if(attribute == jps_description->s_name)
		return NAMESPACE_ATTR_COMMENT;
	
	if(attribute == jps_range_bounds->s_name)
		return NAMESPACE_ATTR_RANGE;
	
	return "";
}

TTSymbolPtr convertAttributeToJamoma(std::string attribute)
{
	if(attribute == NAMESPACE_ATTR_VALUE)
		return TT(jps_value->s_name);
	
	if(attribute == NAMESPACE_ATTR_ACCESS)
		return TT("access");
	
	if(attribute == NAMESPACE_ATTR_TYPE)
		return TT(jps_type->s_name);
	
	if(attribute == NAMESPACE_ATTR_PRIORITY)
		return TT(jps_priority->s_name);
	
	if(attribute == NAMESPACE_ATTR_COMMENT)
		return TT(jps_description->s_name);
	
	if(attribute == NAMESPACE_ATTR_RANGE)
		return TT(jps_range_bounds->s_name);
	
	return kTTSymEmpty;
}
