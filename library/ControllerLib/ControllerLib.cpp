/* 
 * Jamoma TTNode Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ControllerLib.h"

ControllerPtr		jamoma_controller = NULL;

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/


// Method to deal with the Jamoma Controller
//////////////////////////////////////////////

ControllerPtr	jamoma_controller_init()
{	
	if(jamoma_controller)
		return jamoma_controller;	// already have a directory, just return the pointer to the directory...
	
	// Launch the plugin manager
	jamoma_controller = new Controller(string("Jamoma"));
	
	// Launch plugins from a standard folder (TODO)
	jamoma_controller->pluginLoad(CONTROLLER_SEARCH_PATH);
	
	// TODO : throw a message over the network to declare /Jamoma
	
	// Pass callbacks to the Controller Namespace
	jamoma_controller->namespaceDiscoverAddCallback(jamoma_directory, &jamoma_namespace_discover_callback);
	jamoma_controller->namespaceGetAddCallback(jamoma_directory, &jamoma_namespace_get_callback);
	jamoma_controller->namespaceSetAddCallback(jamoma_directory, &jamoma_namespace_set_callback);
	jamoma_controller->namespaceLinkAddCallback(jamoma_directory, &jamoma_namespace_link_callback);
	jamoma_controller->namespaceUnlinkAddCallback(jamoma_directory, &jamoma_namespace_unlink_callback);
	
	return jamoma_controller;
}

JamomaError jamoma_controller_free()
{
	jamoma_controller->~Controller();
	return JAMOMA_ERR_NONE;
}

JamomaError	jamoma_controller_dump()
{
	vector<string> plugins;
	map<string, Device*>* devices;
	vector<string>::iterator p_iter;
	map<string, Device*>::iterator d_iter;

	if(jamoma_controller)
	{
		
		// show loaded plugins
		post("<< Loaded Plugins >>");
		plugins = jamoma_controller->pluginGetLoadedByName();
		for(p_iter = plugins.begin(); p_iter != plugins.end(); p_iter++){
			post(">> %s", std::string(*p_iter).c_str());
		}

		// show devices
		post("<< Loaded Devices >>");
		devices = jamoma_controller->deviceGetCurrent();
		d_iter = devices->begin();
		while (d_iter != devices->end()){
			post(">> %s", std::string(d_iter->first).c_str());
			++d_iter;
		}
		
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_controller_dump : create the Controller before");
	return JAMOMA_ERR_GENERIC;
}



// Callbacks to pass to the Namespace of the Controller
/////////////////////////////////////////////////////////

void jamoma_namespace_discover_callback(void* arg, Address whereToDiscover, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedAttributes)
{
	TTErr err;
	TTNodePtr nodeToDiscover, aChild;
	TTList allChildren;
	TTString instanceName, sAttribute;
	TTSymbolPtr attributeName;
	TTValue attributeNameList;
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
				
				returnedNodes.push_back(instanceName.c_str());
			}
			
			// Edit the vector with all attributes name
			nodeToDiscover->getAttributeNames(attributeNameList);
			
			// Add the acces attribute which is not a jamoma attribute
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
	long argc, i;
	t_atom *argv;
	//char *temp;
	t_symbol* sym;
	
	TTNodeDirectoryPtr m_directory = (TTNodeDirectoryPtr) arg;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToGet.c_str(), &nodeToGet);
		
		if(!err){
			
			// Convert attribute into Jamoma style
			attributeName = convertAttributeToJamoma(attribute);
			
			if(attributeName == TT("access")){
				
				// test node type to get the access status
				nodeType = nodeToGet->getType();
				
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
						
						free(temp);
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
	TTValue attributeValue;
	long argc;
	t_atom *argv;
	
	TTNodeDirectoryPtr m_directory = (TTNodeDirectoryPtr) arg;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToSet.c_str(), &nodeToSet);
		
		if(!err){
			
			// test node type to get the access status
			nodeType = nodeToSet->getType();
			
			if((nodeType == TT("subscribe_parameter")) || (nodeType == TT("subscribe_message"))){
				
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

void jamoma_namespace_link_callback(void* arg, std::string whereToSend, Address whereToObserve, std::string attributeToObserve)
{
	TTErr err;
	TTNodePtr nodeToObserve;
	TTAttributePtr anAttribute = NULL;
	TTObjectPtr newObserver;
	TTValuePtr	newBaton;
	
	TTNodeDirectoryPtr m_directory = (TTNodeDirectoryPtr) arg;
	
	post("jamoma_namespace_link_callback : %s %s %s", whereToSend.c_str(), whereToObserve.c_str(), attributeToObserve.c_str());
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToObserve.c_str(), &nodeToObserve);
		
		if(!err){
			
			// if the attribute exist
			err = nodeToObserve->findAttribute(TT(attributeToObserve.c_str()), &anAttribute);
			
			if(!err){
				
					newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
					TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
					
					newBaton = new TTValue((TTString)whereToSend);
					newBaton->append((TTString)whereToObserve);
					
					newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
					newObserver->setAttributeValue(TT("Function"), TTPtr(&jamoma_link_method));
					
					anAttribute->registerObserverForNotifications(*newObserver);
					
					// TODO : a hash tab to memorized each link in order to remove them later
					//(*returnedObserver) = newObserver;
			}
		}
	}
}

void jamoma_namespace_unlink_callback(void* arg, std::string whereToSend, Address whereToObserve, std::string attributeToObserve)
{
	post("jamoma_namespace_unlink_callback : %s %s %s", whereToSend.c_str(), whereToObserve.c_str(), attributeToObserve.c_str());
}

void jamoma_link_method(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	TTString	whereToSend;
	TTString	whereToObserve;
	TTString	returnedValue;
	t_symbol	*mess, *sym;
	long		argc, i;
	t_atom		*argv;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)p_baton;
	b->get(0, whereToSend);
	b->get(1, whereToObserve);
	
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
		
		free(temp);
	}
	
	// send a link answer using the controller
	// TODO deviceSendLinkAnswer
	post("jamoma_link_method : %s %s %s", whereToSend.c_str(), whereToObserve.c_str(), returnedValue.c_str());
	//jamoma_controller->deviceSendMessage(whereToSend, whereToObserve, returnedValue);
}

// Convert Jamoma attributes into / from Controller attributes
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
