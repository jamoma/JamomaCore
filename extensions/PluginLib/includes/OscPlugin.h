/* 
 * Jamoma PluginLib: OscPlugin.h
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __OSCPLUGIN_H__
#define __OSCPLUGIN_H__

#include "TTPlugin.h"

/****************************************************************************************************/

class OscPlugin : public TTDataObject, public TTPlugin {
	TTCLASS_SETUP(OscPlugin)
	TTPLUGIN_SETUP
};


#endif // __OSCPLUGIN_H__
