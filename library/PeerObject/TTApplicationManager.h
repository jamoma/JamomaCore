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

// Macro to have a direct acces to the Directory 
// This maro have to be used on a TTObject with a mApplication member.
#define	getDirectoryFrom(aTTObject, anAddress) TTApplicationManagerGetDirectory((TTObjectPtr)aTTObject->mApplicationManager, anAddress)

class TTMODULAR_EXPORT TTApplicationManager : public TTDataObject
{
	TTCLASS_SETUP(TTApplicationManager)
	
public:

	TTHashPtr			mApplications;			///< hash table containing <TTSymbolPtr applicationName, TTApplicationPtr anApplication>
												///< one of them can be registered with kTTSym_local instead of his name

private:
	
	PluginFactories*	mPluginFactories;		///< the plugin factories
	TTHashPtr			mPlugins;				///< hash table containing <TTSymbolPtr pluginName, TTPluginPtr aPlugin>

	/** Load all Plugins at a given location (second instance contained in TTValue could optionnaly be xml config path) */
	TTErr PluginLoadAll(const TTValue& value);
	
	/** Set Parameters of a Plugin <TTSymbolPtr pluginName, TTHashPtr parameters> */
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
	TTErr ApplicationGet(const TTValue& value);
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsXml(const TTValue& value); // TODO
	TTErr ReadFromXml(const TTValue& value);
	
	TTErr enableListening(TTSymbolPtr whereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen);
	TTErr disableListening(TTSymbolPtr whereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen);
	// TODO : std::vector<TTString> pluginGetLoadedByName()
	// TODO : bool pluginIsLoaded(TTString pluginName)
	
	friend TTNodeDirectoryPtr TTMODULAR_EXPORT TTApplicationManagerGetDirectory(TTObjectPtr anApplication, TTSymbolPtr anAddress);
	
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerDiscoverCallback(void* arg, TTString whereToDiscover, std::vector<TTString>& returnedNodes, std::vector<TTString>& returnedLeaves, std::vector<TTString>& returnedAttributes);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerGetCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerSetCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerListenCallback(TTPtr baton, TTValue& data);
};

typedef TTApplicationManager* TTApplicationManagerPtr;

/**	To have a direct acces on the directory of an application
 @param	baton						..
 @param	data						..
 @return							a TTNodeDirectoryPtr */
TTNodeDirectoryPtr	TTMODULAR_EXPORT TTApplicationManagerGetDirectory(TTObjectPtr anApplication, TTSymbolPtr anAddress);

/**	Called when the local application namespace send a notification
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerDirectoryCallback(TTPtr baton, TTValue& data);

/**	Called when the local application object attribute send a notification
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerAttributeCallback(TTPtr baton, TTValue& data);

/**	Called when a plugin receive a discover request to explore the local application namespace
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerDiscoverCallback(void* arg, TTString whereToDiscover, std::vector<TTString>& returnedNodes, std::vector<TTString>& returnedLeaves, std::vector<TTString>& returnedAttributes);

/**	Called when a plugin receive a get request to get an local application object attribute value
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerGetCallback(TTPtr baton, TTValue& data);

/**	Called when a plugin receive a set request to set an local application object attribute value
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerSetCallback(TTPtr baton, TTValue& data);

/**	Called when a plugin receive a listen request to listen the local application namespace
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerListenCallback(TTPtr baton, TTValue& data);

#endif // __TT_APPLICATION_MANAGER_H__
