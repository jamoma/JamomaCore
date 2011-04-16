/* 
 * Jamoma PluginLib: TTPluginHandler.h
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_PLUGIN_HANDLER_H__
#define __TT_PLUGIN_HANDLER_H__

#include "TTModular.h"
#include "Plugin.h"

/** TTPluginHandler ... TODO : an explanation
 
 
 */

class Plugin;
typedef Plugin* PluginPtr;

class TTMODULAR_EXPORT TTPluginHandler : public TTDataObject 
{
	TTCLASS_SETUP(TTPluginHandler)
	
private:
	PluginPtr					mPlugin;				///< a pointer to an instance of a loaded plugin

public:
	TTSymbolPtr					mName;					///< ATTRIBUTE : the name of the plugin to use
	TTSymbolPtr					mVersion;				///< ATTRIBUTE : the version of the plugin
	TTSymbolPtr					mAuthor;				///< ATTRIBUTE : the author of the plugin
	TTBoolean					mExploration;			///< ATTRIBUTE : is the Plugin provide namespace exploration features ?
	
	TTHashPtr					mParameters;			///< ATTRIBUTE : hash table containing reception thread parameter names and values
														///< <TTSymbolPtr parameterName, TTValue value>
	
	TTValue						mParameterNames;		///< ATTRIBUTE : all parameter names
	
	/** Get all parameter names */
	TTErr getParameterNames(TTValue& value);
	
	/** Set parameters */
	TTErr setParameters(const TTValue& value);
	
	/** Run the reception thread mechanism of the plugin */
	TTErr Run();
};

typedef TTPluginHandler* TTPluginHandlerPtr;

#endif // __TT_PLUGIN_HANDLER_H__