/* 
 * Jamoma Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTFoundationAPI.h"
#include "Jamoma.h"
#include "Controller.h"

#define CONTROLLER_SEARCH_PATH "/Users/TO/Documents/virage/sequenceur/trunk/libIscore/libController/Plugins"

typedef Controller* ControllerPtr;

// statics and globals

/**	The Jamoma Controller : Plugin manager for network communication */
extern ControllerPtr		jamoma_controller;

#ifdef __cplusplus
extern "C" {
#endif

	// Method to deal with the Jamoma Controller
	/////////////////////////////////////////
	
	/** Initialize the Controller and load plugins */
	ControllerPtr	jamoma_controller_init(void);
	
	/** Free the Controller */
	JamomaError		jamoma_controller_free(void);

	/** Dump all Plugins and Devices of the Controller in the max window */
	JamomaError		jamoma_controller_dump(void);
	
	
	// Callback to pass to the Namespace of the Controller
	/////////////////////////////////////////////////////////
	
	void jamoma_namespace_discover_callback(void* arg, Address whereToDiscover, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedAttributes);
	
	void jamoma_namespace_get_callback(void* arg, Address whereToGet, std::string attribute, Value& returnedValue);
	
	void jamoma_namespace_set_callback(void* arg, Address whereToSet, std::string attribute, Value& newValue);
	
	void jamoma_namespace_link_callback(void* arg, std::string whereToSend, Address whereToObserve, std::string attributeToObserve);
	void jamoma_link_method(TTPtr p_baton, TTValue& data);
	
	void jamoma_namespace_unlink_callback(void* arg, std::string whereToSend, Address whereToObserve, std::string attributeToObserve);
	
	
	// Convert Jamoma attributes into / from Controller attributes
	////////////////////////////////////////////////////////////////
	
	std::string convertAttributeFromJamoma(std::string attribute);
	
	TTSymbolPtr convertAttributeToJamoma(std::string attribute);

#ifdef __cplusplus
}
#endif



