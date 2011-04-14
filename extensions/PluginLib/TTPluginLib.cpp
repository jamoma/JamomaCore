/*
 * Jamoma PluginLib Base Class
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "OscPlugin.h"
#include "MinuitPlugin.h"
#include "CopperlanPlugin.h"

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_PluginLib(void)
{
	TTFoundationInit();

	OscPlugin::registerClass();
	MinuitPlugin::registerClass();
	CopperlanPlugin::registerClass();
	
	return kTTErrNone;
}

extern "C" TT_EXTENSION_EXPORT TTErr TTPluginLibGetAvailablePlugins(TTValue& pluginNames)
{
	TTErr err;
	
	err = TTGetRegisteredClassNamesForTags(pluginNames, TT("plugin"));
	if (!err) {
		// strip the leading "plugin." prefix off all the names
		for (int i=0; i < pluginNames.getSize(); i++) {
			TTSymbolPtr s;
			TTString	str;
			
			pluginNames.get(i, &s);
			str = s->getString();
			str.erase(0, 5);
			s = TT(str);
			pluginNames.set(i, s);
		}
	}
	return err;
}

