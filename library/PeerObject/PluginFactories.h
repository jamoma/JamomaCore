/*
 Copyright: 
 LaBRI (http://www.labri.fr) - BlueYeti (http://www.blueyeti.fr) - GMEA (http://www.gmea.net)
 
 Author(s): Laurent Garnier, Theo Delahogue
 Last modification: 08/03/2010
 
 Adviser(s): 
 Myriam Desainte-Catherine (myriam.desainte-catherine@labri.fr)
 
 This software is a computer program whose purpose is to propose
 a library for interactive scores edition and execution.
 
 This software is governed by the CeCILL-C license under French law and
 abiding by the rules of distribution of free software.  You can  use, 
 modify and/ or redistribute the software under the terms of the CeCILL-C
 license as circulated by CEA, CNRS and INRIA at the following URL
 "http://www.cecill.info". 
 
 As a counterpart to the access to the source code and  rights to copy,
 modify and redistribute granted by the license, users are provided only
 with a limited warranty  and the software's author,  the holder of the
 economic rights,  and the successive licensors  have only  limited
 liability. 
 
 In this respect, the user's attention is drawn to the risks associated
 with loading,  using,  modifying and/or developing or reproducing the
 software by the user in light of its specific status of free software,
 that may mean  that it is complicated to manipulate,  and  that  also
 therefore means  that it is reserved for developers  and  experienced
 professionals having in-depth computer knowledge. Users are therefore
 encouraged to load and test the software's suitability as regards their
 requirements in conditions enabling the security of their systems and/or 
 data to be ensured and,  more generally, to use and operate it in the 
 same conditions as regards security.
 
 The fact that you are presently reading this means that you have had
 knowledge of the CeCILL-C license and that you accept its terms.
 */

/*
 *  PluginFactories.h
 *  DeviceManager
 *
 *  Created by Laurent Garnier on 03/06/09.
 *  Copyright 2009 __BlueYeti/LaBRI__. All rights reserved.
 *
 */

#include <map>
#include <string>
#include "Plugin.h"

#ifndef __ITERATOR_PLUGIN_NAMES_H_
#define __ITERATOR_PLUGIN_NAMES_H_

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

#endif //__ITERATOR_PLUGIN_NAMES_H_


#ifndef __PLUGIN_FACTORIES_H_
#define __PLUGIN_FACTORIES_H_

/*!
 * \class PluginFactories
 *
 * It's the mecanism which creates the plugin factories using the plugins availables in the Plugin directory
 * 
 */

class TTDeviceManager;
typedef TTDeviceManager* TTDeviceManagerPtr;
 
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
	PluginPtr createPlugin(std::string name, TTDeviceManagerPtr deviceManager);
	
	/*!
	 * Return an access iterator on the PluginFactories
	 * 
	 */
	IteratorPluginNames getPluginNames();
	
private:
	// plugin table: 
	std::map<std::string, PluginFactoryPtr> factories;
};

#endif //__PLUGIN_FACTORIES_H_

