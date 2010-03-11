/*
 *  Device.h
 *  Controller
 *
 *  Created by Laurent Garnier on 03/06/09.
 *  Copyright 2009 __BlueYeti/LaBRI__. All rights reserved.
 *
 */

/*!
 * \class Device
 * \author Laurent Garnier (BlueYeti/LaBRI)
 * \date 03/06/09
 *
 * A Device represents an application with which the sequencer is going to communicate. 
 * It is characterised by an id, the plugin name to use with it, an ip address and a listening port if it needs. 
 * When the Controller scans the network it instanciates one Device for each module which give a answer.
 *
 */

#ifndef _Device_H_
#define _Device_H_

#include "Controller.h"

class Device{
	
private:
	
	std::string							m_name;				//< The name of the device
	std::string							m_pluginToUse;		//< the plugin name must be the same string that was given by the plugin developper
	std::map<std::string, std::string>*	m_commParameters;	//< a map with the communication parameter needs by the plugin and their values
	bool								m_isVisible;		//< a device could be used by the user or only for an internal communication.
	
public:

	/*!
	 * Constructor
	 */
	Device(std::string deviceName, std::string pluginToUse, std::map<std::string, std::string> *commParameters, bool isVisible = true);
	
	/*!
	 * Destructor
	 */
	~Device();
	
	/*!
	 * Get the name of the device
	 */
	std::string getName();
	
	/*!
	 * Get the communication plugin used by the device
	 */
	std::string getPluginToUse();
	
	/*!
	 * Get a communicationa parameter value (depending on plugin)
	 */
	std::string getCommParameter(std::string parameterName);
	
	/*!
	 * Get all communication parameters value(depending on plugin)
	 */
	std::map<std::string, std::string>* getAllCommParameter();

	/*!
	 * is the device visible ?
	 */
	bool isVisible();
	
	/*!
	 * Set the device visible or not
	 */
	void visible(bool v);
	
};

#endif //_Device_H_
