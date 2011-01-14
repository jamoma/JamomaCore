/* 
 * A Device Object
 * Copyright © 2011, Laurent Garnier
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_DEVICE_H__
#define __TT_DEVICE_H__

#include "TTModular.h"

/**	TTDevice ... TODO : an explanation
 
 
 */

class Plugin;
typedef Plugin* PluginPtr;

class TTMODULAR_EXPORT TTDevice : public TTObject
{
	TTCLASS_SETUP(TTDevice)
	
private:
	
	TTSymbolPtr			mName;							///< ATTRIBUTE: name of the device
	TTSymbolPtr			mAddress;						///< ATTRIBUTE: address of the device in the directory
	//TTSymbolPtr			mPlugin;						///< ATTRIBUTE: name of the plugin to use with device
	PluginPtr			mPlugin;
	
	TTHashPtr			mParameters;					///< ATTRIBUTE: a hash table containing <TTSymbolPtr paramName, TTSymbolPtr paramValue>
	TTBoolean			mEnabled;						///< ATTRIBUTE: is this device enabled ?
	
	/** Control the device using a command	 */
	TTErr	Command(const TTValue& command);
	
	/** to discover a remote device on the network */
	TTErr	Discover(const TTValue& value);
	
	/** to get a value from a remote device on the network */
	TTErr	Get(const TTValue& value);
	
	/** to set a value into a remote device on the network 
		arg1 : address (TTSymbolPtr) 
		arg2 : value (TTValue) 
	 */	
	TTErr	Set(const TTValue& value);
	
	/** to listen an attribute of a remote device on the network */
	TTErr	ListenRequest(const TTValue& value);
	
	/** to listen an attribute of a remote device on the network */
	TTErr	ListenAnswer(const TTValue& value);
	
	/** to get a snapshot from a remote device on the network at an address */
	TTErr	Snapshot(const TTValue& value);
		
};

typedef TTDevice* TTDevicePtr;

#endif // __TT_DEVICE_H__