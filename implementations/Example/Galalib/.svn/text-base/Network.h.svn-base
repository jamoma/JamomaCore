/* 
 * Network.h v0.1
 * interface for galamus network communication
 *
 * Based on TTModular & TTFoundation libraries developped by Theo de la Hogue & Tim Place
 * and DeviceManager developped by Laurent Garnier & Theo de la Hogue, copyright LaBRI - Blue Yeti - GMEA
 *
 * Author: Laurent Garnier, 2010
 *
 * Copyright Galamus Software. All rights reserved.
 *
 */

#ifndef NETWORK_H
#define NETWORK_H

#include "NSPIncludes.h"

class Network
{
public:
	Network(std::string appName);
	~Network(void);

	void networkPluginLoad(std::string pluginPath, std::string xmlConfigPath = "NO_XML");
	void networkDeviceLoadXmlConfig(std::string xmlConfigPath);
	void networkDeviceAdd(NSPValue configParameters);
	void networkDeviceSend(NSPSymbol deviceName, NSPSymbol address, NSPValue value);
	void networkDeviceGet(NSPSymbol deviceName, NSPSymbol address, NSPValue& value);
	void networkDeviceDiscover(NSPSymbol deviceName, NSPSymbol address, NSPValue& value);

private:
	std::string m_appName;
	TTDeviceManagerPtr m_deMan;
};

#endif
