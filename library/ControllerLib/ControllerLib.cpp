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
	
	// Launch the plugin manager and create the JamomaNamespace
	jamoma_controller = new Controller();
	
	// Launch plugins from a standard folder (TODO)
	jamoma_controller->pluginLoad("/Users/TO/Documents/virage/sequenceur/trunk/libIscore/libController/Plugins");
	
	// TODO : throw a message over the network to declare /Jamoma
	
	// Pass callbacks to the Controller Namespace
	jamoma_controller->namespaceDiscoverAddCallback(jamoma_directory, &jamoma_namespace_discover_callback);
	
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

	if(jamoma_controller){
		
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

void jamoma_namespace_discover_callback(void* arg, Address whereToDiscover, std::vector<std::string>* returnedNodes, std::vector<std::string>* returnedAttributes)
{
	TTErr err;
	TTNode nodeToDiscover, *aChild;
	TTList allChildren;
	TTString instanceName;
	TTSymbolPtr attributeName;
	TTValue attributeNameList;
	int i;
	
	TTNodeDirectoryPtr m_directory = (TTNodeDirectoryPtr) arg;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToDiscover.c_str(), &nodeToDiscover);
		
		if(!err){
			
			// Edit the vector with all name+instance of each children
			nodeToDiscover.getChildren(S_WILDCARD, S_WILDCARD, &allChildren);
			for(allChildren.begin(); allChildren.end(); allChildren.next())
			{
				allChildren.current().get(0,(TTPtr*)&aChild);
				
				instanceName = aChild->getName()->getString();
				instanceName += aChild->getInstance()->getString();
				
				returnedNodes->push_back(instanceName->c_str());
			}
			
			// Edit the vector with all attributes name
			nodeToDiscover->getAttributeNames(&attributeNameList);
			
			// Add the acces attribute which is not a jamoma attribute
			returnedAttributes->push_back(m_attr_access);
			
			// Add all other attributes
			for(i = 0; i < attributeNameList.getSize(); i++)
			{
				attributeNameList.get(i,(TTSymbolPtr*)&attributeName);
				returnedAttributes->push_back(convertAttributeFromJamoma(attributeName->getCString()));
			}
		}
	}
}
