/* 
 * Jamoma Device Manager
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTFoundationAPI.h"
#include "Jamoma.h"
#include "Controller.h"

typedef Controller* DevManagerPtr;		// to -- the old name of Device Manager was Controller (the source files have to be renamed but they are used in an other project and they would be renamed later)

/**	The Jamoma Device Manager : Plugin manager for network communication */
extern DevManagerPtr		jamoma_devmanager;

#ifdef __cplusplus
extern "C" {
#endif

	// Method to deal with the Jamoma Device Manager
	/////////////////////////////////////////
	
	/** Initialize the Device Manager */
	DevManagerPtr	jamoma_devmanager_init(t_symbol *applicationName);
	
	/** Load plugins */
	JamomaError		jamoma_devmanager_load_plugins(t_symbol *path);
	
	/** Scan the network to find Devices */
	JamomaError		jamoma_devmanager_scan();
	
	/** Free the Controller */
	JamomaError		jamoma_devmanager_free(void);

	/** Dump all Plugins of the Controller in the max window */
	JamomaError		jamoma_devmanager_dump_plugins(void);
	
	/** Dump all Devices of the Controller in the max window */
	JamomaError		jamoma_devmanager_dump_devices(void);
	
	
	// Callback to pass to the Namespace of the Controller
	/////////////////////////////////////////////////////////
	
	void jamoma_namespace_discover_callback(void* arg, Address whereToDiscover, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedLeaves, std::vector<std::string>& returnedAttributes);
	
	void jamoma_namespace_get_callback(void* arg, Address whereToGet, std::string attribute, Value& returnedValue);
	
	void jamoma_namespace_set_callback(void* arg, Address whereToSet, std::string attribute, Value& newValue);
	
	void jamoma_namespace_listen_callback(void* arg, std::string whereToSend, Address whereToListen, std::string attributeToListen, bool enable);
	void jamoma_namespace_enable_listening(void* arg, std::string whereToSend, Address whereToListen, std::string attributeToListen);
	void jamoma_namespace_disable_listening(void* arg, std::string whereToSend, Address whereToListen, std::string attributeToListen);
	
	void jamoma_namespace_listen_method(TTPtr p_baton, TTValue& data);
	void jamoma_namespace_notify_method(TTPtr p_baton, TTValue& data);
	
	
	// Convert Jamoma attributes into / from Device Manager attributes
	////////////////////////////////////////////////////////////////
	
	std::string convertAttributeFromJamoma(std::string attribute);
	
	TTSymbolPtr convertAttributeToJamoma(std::string attribute);

#ifdef __cplusplus
}
#endif



