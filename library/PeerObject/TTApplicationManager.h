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

class PluginFactories;

class TTApplication;
typedef TTApplication* TTApplicationPtr;

/**	TTApplicationManager ... TODO : an explanation
 
 
 */

class TTMODULAR_EXPORT TTApplicationManager : public TTDataObject
{
	TTCLASS_SETUP(TTApplicationManager)
	
public:

	TTHashPtr			mApplications;			///< hash table containing <TTSymbolPtr applicationName, TTApplicationPtr anApplication>
												///< one of them can be registered with kTTSym_local instead of his name

private:
	
	PluginFactories*	mPluginFactories;		///< the plugin factories
	TTHashPtr			mPlugins;				///< hash table containing <TTSymbolPtr pluginName, TTPluginPtr aPlugin>
	
	/** get all plugins name */
	// TODO : TTErr getPluginNames(TTValue& value);
	// TODO : TTErr getPluginIsLoaded(TTValue& value); // with value containing the name of the plugin

	/** Load all Plugins at a given location (second instance contained in TTValue could optionnaly be xml config path) */
	TTErr PluginLoadAll(const TTValue& value);
	
	/** Set Parameters of a Plugin <TTSymbolPtr pluginName, TTHashPtr pluginParameters> */
	TTErr PluginSetParameters(const TTValue& value);
	// TODO : void pluginSetCommParameter(TTString pluginName, TTString parameterName, TTString parameterValue)
	// TODO : void pluginGetCommParameter(TTString pluginName, TTString parameterName)
	// to -- we should use the attribute mecanism. Is a Plugin can't be a TTObject ?
	
	/** Lauch the reception thread mecanism of a Plugin <TTSymbolPtr pluginName> */
	TTErr PluginLaunch(const TTValue& value);
	
	/** Scan all plugin's network in oder to add distant application automatically */
	TTErr PluginScanAllApplication();
	
	/** Add an application giving <TTSymbolPtr applicationName, applicationPointer> */
	TTErr ApplicationAdd(const TTValue& value);
	
	/** Remove an application */
	TTErr ApplicationRemove(const TTValue& value);
	
	/** Get an application giving <TTSymbolPtr applicationName> */
	TTErr ApplicationGet(TTValue& value);
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsXml(const TTValue& value); // TODO
	TTErr ReadFromXml(const TTValue& value);
	
	friend TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbolPtr anAddress);
	
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerAttributeCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationDiscover(TTSymbolPtr whereToDiscover, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationListen(TTApplicationPtr appWhereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen, TTBoolean enableListening);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationSet(TTSymbolPtr whereToSet, TTSymbolPtr attributeToSet, const TTValue& value);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationGet(TTSymbolPtr whereToGet, TTSymbolPtr attributeToGet, TTValue& returnedValue);
};

typedef TTApplicationManager* TTApplicationManagerPtr;

/**	To have get an application with an application name (or either from an address)
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							a TTApplicationPtr */
TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbolPtr anAddress);

/**	Called when the local application directory send a notification
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationDirectoryCallback(TTPtr baton, TTValue& data);

/**	Called when a local application object attribute send a notification
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationAttributeCallback(TTPtr baton, TTValue& data);

/**	Called when the distant application wants to discover the local application directory
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationDiscover(TTSymbolPtr whereToDiscover, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes);

/**	Called when the distant application wants to listen the local application directory
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationListen(TTApplicationPtr appWhereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen, TTBoolean enableListening);

/**	Called when the distant application wants to set an object attribute of the local application
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationSet(TTSymbolPtr whereToSet, TTSymbolPtr attributeToSet, const TTValue& value);

/**	Called when the distant application wants to get an object attribute of the local application
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationGet(TTSymbolPtr whereToGet, TTSymbolPtr attributeToGet, TTValue& returnedValue);

/**	To iterate on the mPlugins HashTable
 @param	baton						..
 @param	data						..
 @return							void */
void TTMODULAR_EXPORT TTApplicationManagerLaunchPlugins(const TTPtr target, const TTKeyVal& iter);

#endif // __TT_APPLICATION_MANAGER_H__
