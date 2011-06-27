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
	
	/** Get parameters */
	TTErr getParameters(TTValue& value);
	
	/** Set parameters */
	TTErr setParameters(const TTValue& value);
	
	/** Get all parameter names */
	TTErr getParameterNames(TTValue& value);

	/** Scan to find remote applications and add them to the application manager */
	TTErr Scan();
	
	/** Run the reception thread mechanism of the plugin */
	TTErr Run();
	
	/** Stop the reception thread mechanism of the plugin */
	TTErr Stop();
	
	/** Notify the plugin */
	TTErr Notify(const TTValue& value);
	
	friend TTErr TTMODULAR_EXPORT TTPluginHandlerDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTPluginHandlerAttributeCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TTMODULAR_EXPORT TTPluginHandlerGetAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTPluginHandlerSetAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTPluginHandlerSendMessageCallback(TTPtr baton, TTValue& data);
};

typedef TTPluginHandler* TTPluginHandlerPtr;

/**	Called when an application directory send a 
	notification to registered application observers
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTPluginHandlerDirectoryCallback(TTPtr baton, TTValue& data);

/**	Called when an application object attribute send a 
	notification to registered application observers
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTPluginHandlerAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTPluginHandlerGetAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTPluginHandlerSetAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTPluginHandlerSendMessageCallback(TTPtr baton, TTValue& data);


#endif // __TT_PLUGIN_HANDLER_H__