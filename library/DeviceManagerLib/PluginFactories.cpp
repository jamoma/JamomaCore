/*
 *  PluginFactories.cpp
 *  Controller
 *
 *  Created by Laurent Garnier on 03/06/09.
 *  Copyright 2009 __BlueYeti/LaBRI__. All rights reserved.
 *
 */

#include "PluginFactories.h"

#include <dirent.h>
#include <dlfcn.h>
#include <iostream>

typedef PluginFactory* (*OpCreation)();

/****************************************/
//PluginFactories
void PluginFactories::loadPlugins(std::string path) 
{
	struct dirent **namelist;//la structure qui recoit les noms des fichiers plugins dans le champ d_name
	int n = scandir(path.c_str(), &namelist, 0, alphasort);//scan le rep source des plugins
	
	if(n-3 == 0) {std::cout << "No plugin available" << std::endl;}
	
	while (n-- > 0) {
		std::string tmp = path + "/" + namelist[n]->d_name;
		
		if (tmp.rfind(".dylib") == std::string::npos) {//test sur le nom du fichier qui n'est pas pris en compte si != .dylib
			continue;
		}
		
		void *handler = dlopen(tmp.c_str(), RTLD_LAZY);//charge la dylib (le plugin)
		
		if (!handler) {
			std::cerr << "dlopen failed: " << dlerror() << std::endl;
			continue;
		}
		
		OpCreation createFactory = (OpCreation) dlsym(handler,"createFactory");//lie la dylib au symbole
		
		if (!createFactory) {
			std::cerr << "dlsym failed: " << dlerror();
			std::cout << "Erreur de chargement des plugins" << std::endl;
			continue;
		} 
		
		PluginFactory *pluginFactory = (*createFactory)();
		if (!pluginFactory) {
			continue;
		}
		
		factories[pluginFactory->getPluginName()] = pluginFactory;
    }
}

IteratorPluginNames PluginFactories::getPluginNames() 
{
	return  IteratorPluginNames(factories.begin(), factories.end());
}

Plugin *PluginFactories::createPlugin(std::string name, Controller *controller) 
{
	std::map<std::string, PluginFactory *>::iterator it = factories.find(name);
	if (it == factories.end()) {
		return NULL;	
	}
	return factories[name]->getInstance(controller);
}

/****************************************/
//PluginFactories Iterator Access 
IteratorPluginNames::IteratorPluginNames(ItMap it, ItMap itEnd): it(it), itEnd(itEnd) 
{
	if (it != itEnd) {
		current = it->first;
		++it;
	}
}

std::string IteratorPluginNames::next() 
{
	std::string tmp = current;
	if (++it != itEnd) current = it->first;
	return tmp;
}

bool IteratorPluginNames::hasNext() 
{
	return it!=itEnd;
}

