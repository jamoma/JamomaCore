/*
 *  Device.cpp
 *  
 *
 *  Created by Laurent Garnier on 27/05/09.
 *  Copyright 2009 __BlueYeti/LaBRI__. All rights reserved.
 *
 */

#include "Device.h"

Device::Device(std::string deviceName, std::string pluginToUse, std::map<std::string, std::string> *commParameters, bool isVisible)
{
	m_name = deviceName;
	m_pluginToUse = pluginToUse;
	
	// copy communication parameters
	m_commParameters = new std::map<std::string, std::string>;
	std::map<std::string, std::string>::iterator it = commParameters->begin();
	while (it != commParameters->end()) {
		m_commParameters->insert(std::pair<std::string, std::string>(it->first, it->second));
		it++;
	}
	
	// set visible or not
	m_isVisible = isVisible;
}

Device::~Device()
{
	m_commParameters->erase(m_commParameters->begin(), m_commParameters->end());
	delete m_commParameters;
}

std::string
Device::getName()
{
	return m_name;
}

std::string 
Device::getPluginToUse()
{
	return m_pluginToUse;
}

std::string 
Device::getCommParameter(std::string parameterName)
{
	std::map<std::string, std::string>::iterator it = m_commParameters->find(parameterName);
	
	if(it != m_commParameters->end())
	{
		return it->second;	
	}
	else
	{
		std::cout << "No device Parameter named : " << parameterName << std::endl;
		return "ERROR";
	}
}

std::map<std::string, std::string>*
Device::getAllCommParameter()
{
	if (m_commParameters->size() == 0) {
		return NULL;
	}
	return m_commParameters;
}

bool
Device::isVisible() 
{
	return m_isVisible;
}

void
Device::visible(bool v) 
{
	m_isVisible = v;
}
