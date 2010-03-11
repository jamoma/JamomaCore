/*
 *  PluginFactories.h
 *  Controller
 *
 *  Created by Laurent Garnier on 03/06/09.
 *  Copyright 2009 __BlueYeti/LaBRI__. All rights reserved.
 *
 */

#include <map>
#include <string>
#include "Plugin.h"

/*!
 * \class IteratorPluginNames
 *
 * It's an access iterator on the PluginFactory map
 * 
 */
 
class IteratorPluginNames {
public:
	typedef std::map<std::string, PluginFactory *>::const_iterator ItMap;
	IteratorPluginNames(ItMap it, ItMap itEnd);
	std::string next();
	bool hasNext();
	
private:
	ItMap it, itEnd;
	std::string current;
};

/*!
 * \class PluginFactories
 *
 * It's the mecanism which creates the plugin factories using the plugins availables in the Plugin directory
 * 
 */
 
class PluginFactories {
public:

	/*!
	 * Load the plugins available in the plugin directory and instanciates them.
	 *
	 * \param path : the Plugin directory path.
	 */
	void loadPlugins(std::string path);
	
	/*!
	 * Create an instance of a Plugin using his name
	 *
	 * \param name : the name of the Plugin (given by his developper).
	 * \return an instance of the Plugin
	 */
	Plugin *createPlugin(std::string name, Controller *controller);
	
	/*!
	 * Return an access iterator on the PluginFactories
	 * 
	 */
	IteratorPluginNames getPluginNames();
	
private:
	// plugin table: 
	std::map<std::string, PluginFactory *> factories;
};


