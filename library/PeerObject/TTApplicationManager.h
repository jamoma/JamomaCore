/* 
 * An Application Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_APPLICATION_MANAGER_H__
#define __TT_APPLICATION_MANAGER_H__

#include "TTModular.h"

class TTApplication;
typedef TTApplication* TTApplicationPtr;

class TTPluginHandler;
typedef TTPluginHandler* TTPluginHandlerPtr;

class PluginFactories;
typedef PluginFactories* PluginFactoriesPtr;

/**	TTApplicationManager ... TODO : an explanation
 
 
 */

// Macro to retreive any application by name
#define getApplication(applicationName) TTApplicationManagerGetApplication(applicationName)

// Macro to retreive local application
#define getLocalApplication TTApplicationManagerGetApplication(kTTSym_localApplicationName)

// Macro to retreive a plugin by name
#define getPlugin(pluginName) TTApplicationManagerGetPlugin(pluginName)

class TTMODULAR_EXPORT TTApplicationManager : public TTDataObject
{
	TTCLASS_SETUP(TTApplicationManager)
	
public:

	TTHashPtr			mApplications;			///< hash table containing <TTSymbolPtr applicationName, TTApplicationPtr anApplication>
	TTHashPtr			mPlugins;				///< hash table containing <TTSymbolPtr pluginName, TTPluginHandlerPtr aPlugin>
	
private:
	
	TTValue				mApplicationNames;		///< ATTRIBUTE : all registered application names
	TTValue				mPluginNames;			///< ATTRIBUTE : all loaded plugin names
	
	TTObjectPtr			mCurrentApplication;	///< used for ReadFromXml mechanism
	
	PluginFactoriesPtr	mPluginFactories;
	
	
	/** Get all application names */
	TTErr getApplicationNames(TTValue& value);
	
	/** Get local application name */
	TTErr getApplicationLocalName(TTValue& value);
	
	/** Get all plugin names */
	TTErr getPluginNames(TTValue& value);
	
	/** Add an application giving <TTSymbolPtr applicationName, applicationPointer> */
	TTErr Add(const TTValue& value);
	
	/** Remove an application */
	TTErr Remove(const TTValue& value);
	
	/** Discover the namespace of an application under an address
		arguments are <TTSymbolPtr whereToDiscover, TTValuePtr returnedChildrenNames, TTValuePtr returnedChildrenTypes, TTValuePtrreturnedAttributes> */
	TTErr Discover(TTValue& value);
	
	/** Get a value from an attribute of an object at an address in an application
		arguments are <TTSymbolPtr whereToGet,  TTsymbolPtr attributeToGet, TTValuePtr returnedValue> */
	TTErr Get(TTValue& value);
	
	/** Set a value from an attribute of an object at an address in an application
		arguments are <TTSymbolPtr whereToDiscover, TTsymbolPtr attributeToSet, TTValuePtr newValue> */
	TTErr Set(TTValue& value);
	
	/** Listen for value changes from an attribute of an object at an address in an application
		or for creation/destruction under an address.
		arguments are <TTObjectPtr appToNotify, TTSymbolPtr whereToListen, TTSymbolPtr attribute, TTBoolean enable> */
	TTErr Listen(TTValue& value);
	
	/** Scan a plugin network in order to add distant application automatically <TTSymbolPtr pluginName> */
	TTErr PluginScan(const TTValue& value);

	/** Run the reception thread mecanism of a Plugin <TTSymbolPtr pluginName> */
	TTErr PluginRun(const TTValue& value);
	
	/** Stop the reception thread mecanism of a Plugin <TTSymbolPtr pluginName> */
	TTErr PluginStop(const TTValue& value);
	
	/**  needed to be handled by a TTXmlHandler 
		 read/write local and distant applications setup */
	TTErr WriteAsXml(const TTValue& value);
	TTErr ReadFromXml(const TTValue& value);
	
	friend TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbolPtr anAddress);
	friend TTPluginHandlerPtr TTMODULAR_EXPORT TTApplicationManagerGetPlugin(TTSymbolPtr pluginName);
};

typedef TTApplicationManager* TTApplicationManagerPtr;

/**	To get an application with an application name (or either from an address)
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							a TTApplicationPtr */
TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbolPtr anAddress);

/**	To get a plugin with a plugin name
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							a PluginPtr */
TTPluginHandlerPtr TTMODULAR_EXPORT TTApplicationManagerGetPlugin(TTSymbolPtr pluginName);

#endif // __TT_APPLICATION_MANAGER_H__
