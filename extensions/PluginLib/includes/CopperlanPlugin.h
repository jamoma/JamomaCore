/* 
 * Jamoma PluginLib: CopperlanPlugin.h
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __COPPERLANPLUGIN_H__
#define __COPPERLANPLUGIN_H__

#include "TTPlugin.h"

/****************************************************************************************************/

class CopperlanPlugin : public TTDataObject, public TTPlugin {
	TTCLASS_SETUP(CopperlanPlugin)
	TTPLUGIN_SETUP
};


#endif // __COPPERLANPLUGIN_H__