/* 
 * Network.cpp v0.1
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

#include "Network.h"

Network::Network(std::string appName)
{
	m_appName = appName;

	if (TTModularApplications == NULL) {
		TTModularInit(m_appName, "");
	}

	m_deMan = NULL;
	TTValue			args;
	
	// Make a TTDeviceManager object
	args.append(TTModularApplications);
	args.append(TT(m_appName));
	
	TTObjectInstantiate(TT("DeviceManager"), TTObjectHandle(&m_deMan), args);
}

Network::~Network(void)
{
}

void
Network::networkPluginLoad(std::string pluginPath, std::string xmlConfigPath)
{
	if (xmlConfigPath != "NO_XML") {
		TTValue value;
		value.append(TT(pluginPath));
		value.append(TT(xmlConfigPath));
		m_deMan->LoadPlugins(value);
	} else {
		m_deMan->LoadPlugins(TT(pluginPath));
	}

	//m_deMan->mDeviceManager->pluginLoad(pluginPath);
	//if (xmlConfigPath != "NO_XML") {
	//	m_deMan->mDeviceManager->pluginLoadConfigXml(xmlConfigPath);
	//}
	//m_deMan->mDeviceManager->pluginLaunch();
} 

void 
Network::networkDeviceAdd(NSPValue configParameters)
{
	m_deMan->AddDevice(configParameters);
}

void 
Network::networkDeviceLoadXmlConfig(std::string xmlConfigPath)
{
	m_deMan->LoadDeviceXmlConfig(TT(xmlConfigPath));
}

void 
Network::networkDeviceSend(NSPSymbol deviceName, NSPSymbol address, NSPValue value)
{
	m_deMan->Set(deviceName, address, value);
}

void 
Network::networkDeviceGet(NSPSymbol deviceName, NSPSymbol address, NSPValue& value)
{
	m_deMan->Get(deviceName, address, value);
}

void 
Network::networkDeviceDiscover(NSPSymbol deviceName, NSPSymbol address, NSPValue& value)
{
	m_deMan->Discover(deviceName, address);
}
