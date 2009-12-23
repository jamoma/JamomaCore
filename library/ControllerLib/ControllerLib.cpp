/* 
 * Jamoma TTNode Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ControllerLib.h"

ControllerPtr		jamoma_controller = NULL;
//JamomaNamespacePtr	jamoma_namespace = NULL;

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/


// Method to deal with the Jamoma Controller
//////////////////////////////////////////////

ControllerPtr	jamoma_controller_init()
{	
	JamomaNamespace* jamoma_namespace;
	
	if(jamoma_controller)
		return jamoma_controller;	// already have a directory, just return the pointer to the directory...
	
	// Launch the plugin manager and create the JamomaNamespace
	jamoma_namespace = new JamomaNamespace();
	jamoma_namespace->directorySet(jamoma_directory);
	jamoma_controller = new Controller((Namespace*)jamoma_namespace);
	
	// Launch plugins from a standard folder (TODO)
	jamoma_controller->pluginLoad("/Users/TO/Documents/virage/sequenceur/trunk/libIscore/libController/Plugins");
	
	// TODO : throw a message over the network to declare /Jamoma
	
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
