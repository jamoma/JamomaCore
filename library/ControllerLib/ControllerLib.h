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
#include "Device.h"
#include "Plugin.h"

#ifndef ControllerPtr
#define ControllerPtr Controller*
#endif

// statics and globals

/**	The Jamoma Controller : Plugin manager for network communication	*/
extern ControllerPtr jamoma_controller;

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

#ifdef __cplusplus
}
#endif



