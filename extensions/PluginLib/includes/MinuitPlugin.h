/* 
 * Jamoma PluginLib: MinuitPlugin.h
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __MINUITPLUGIN_H__
#define __MINUITPLUGIN_H__

#include "TTPlugin.h"

/****************************************************************************************************/

class MinuitPlugin : public TTDataObject, public TTPlugin {
	TTCLASS_SETUP(MinuitPlugin)
	TTPLUGIN_SETUP
};


#endif // __MINUITPLUGIN_H__