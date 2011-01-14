/* 
 * A Device Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_DEVICE_MANAGER_H__
#define __TT_DEVICE_MANAGER_H__

#include "TTModular.h"
#include "PluginFactories.h"

class TTSender;
class TTReceiver;

class TTApplication;
typedef TTApplication* TTApplicationPtr;


/**	TTDeviceManager ... TODO : an explanation
 
 
 */

class TTMODULAR_EXPORT TTDeviceManager : public TTObject
{
	TTCLASS_SETUP(TTDeviceManager)

private:
	
	TTSymbolPtr			mName;					///< ATTRIBUTE: the name the device manager will present to any client
	TTSymbolPtr			mAddress;				///< ATTRIBUTE: address of the DeviceManager in the directory

public:
	TTApplicationPtr	mApplication;			///< the application
	
private:
	TTHashPtr			mListernersCache;
	PluginFactories*	mfactories;				///< the plugin factories
	
	TTHashPtr			mPlugins;				///< hash table containing <TTSymbol pluginName, TTPluginPtr pluginPointer>
	TTHashPtr			mDevices;				///< hash table containing <TTSymbol deviceName, TTPluginPtr devicePointer>
	
	TTCallbackPtr		mDiscoverCallback;		///< a callback used when a device wants to dicover the local namespace
	TTCallbackPtr		mGetCallback;			///< a callback used when a device wants to get a value from the namespace
	TTCallbackPtr		mSetCallback;			///< a callback used when a device wants to set a value of the namespace
	TTCallbackPtr		mListenCallback;		///< a callback used when a device wants to be notified when something changed in the namespace

	/** Load all Plugins at a given location (second instance contained in TTValue could optionnaly be xml config path)*/
	TTErr LoadPlugins(const TTValue& value); // TODO with a TTXmlHandler 
	
	/** Add a device manually giving < DeviceName, PluginToUse, commParamName1, commParamValue1, commParamName2, commParamValue2, ... > */
	TTErr AddDevice(const TTValue& value);

	/** Add devices with a xml config file */
	TTErr LoadDeviceXmlConfig(const TTValue& value); // TODO with a TTXmlHandler
	
	/** Scan the network in order to add devices automatically */
	TTErr Scan(); // TODO
	
	/** Configure plugins with added parameters */
	TTErr launchPlugins();
	
	// TODO : void pluginSetCommParameter(std::string pluginName, std::string parameterName, std::string parameterValue)
	// TODO : void pluginGetCommParameter(std::string pluginName, std::string parameterName)
	// TODO : std::vector<std::string> pluginGetLoadedByName()
	// TODO : bool pluginIsLoaded(std::string pluginName)	
	// TODO : void deviceRemove(std::string deviceName)
	
	
	TTErr enableListening(TTSymbolPtr whereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen);
	TTErr disableListening(TTSymbolPtr whereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen);
	
	friend TTErr TTMODULAR_EXPORT TTDeviceManagerDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTDeviceManagerAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTDeviceManagerDiscoverCallback(void* arg, std::string whereToDiscover, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedLeaves, std::vector<std::string>& returnedAttributes);
	friend TTErr TTMODULAR_EXPORT TTDeviceManagerGetCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTDeviceManagerSetCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTDeviceManagerListenCallback(TTPtr baton, TTValue& data);
	
	// use Receiver instead ...
	//void jamoma_namespace_listen_method(TTPtr p_baton, TTValue& data);
	//void jamoma_namespace_notify_method(TTPtr p_baton, TTValue& data);
	
};

typedef TTDeviceManager* TTDeviceManagerPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTDeviceManagerDirectoryCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTDeviceManagerAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTDeviceManagerDiscoverCallback(void* arg, std::string whereToDiscover, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedLeaves, std::vector<std::string>& returnedAttributes);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTDeviceManagerGetCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTDeviceManagerSetCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTDeviceManagerListenCallback(TTPtr baton, TTValue& data);

#endif // __TT_DEVICE_MANAGER_H__
