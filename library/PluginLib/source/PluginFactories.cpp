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
*  PluginFactories.cpp
*  PluginLib
*
*  Created by Laurent Garnier on 03/06/09.
*  Copyright 2009 __BlueYeti/LaBRI__. All rights reserved.
*
*/

#include "PluginFactories.h"
#include "Plugin.h"

#include <iostream>

#ifdef _WIN32
	#include <windows.h>
#else
	#include <dirent.h>
	#include <dlfcn.h>
#endif

typedef PluginFactory* (*OpCreation)();


/****************************************/
//PluginFactories

#ifdef TT_PLATFORM_WIN

void PluginFactories::loadPlugins(TTString pluginFolderPath) {
	std::cout << "load plugins at : " << pluginFolderPath << std::endl;
	TTString dllpath = pluginFolderPath + "/*.dll";
	
	WIN32_FIND_DATA File;
	HANDLE liste;
	
	liste = FindFirstFile(dllpath.c_str(), &File);
	do {
		TTString tmp = pluginFolderPath + "/" + (TTString)File.cFileName;
		
		HINSTANCE lib = LoadLibrary(tmp.c_str());//charge le plugin
		
		if (!lib) {
			std::cerr << "LoadLibrary failed: " << GetLastError() << std::endl;
			continue;
		}
		
		OpCreation createFactory = (OpCreation) GetProcAddress(lib, "createFactory");//lie la dylib au symbole
		
		if (!createFactory) {
			std::cerr << "GetProcAddress failed: " << GetLastError() << std::endl;
			continue;
		}
		
		PluginFactory *pluginFactory = (*createFactory)();
		if (!pluginFactory) {
			continue;
		}
		
		factories[pluginFactory->getName()] = pluginFactory;
		
	} while ((FindNextFile(liste, &File)));
	
	FindClose(liste);	
}

#else

void PluginFactories::loadPlugins(const TTString& pluginFolderPath)
{
#if defined(TT_PLATFORM_MAC) || defined(TT_PLATFORM_LINUX) || defined(TT_PLATFORM_WIN)
	TTString						initializerFunctionName;
	TTErr							err;
	TTPath							path(pluginFolderPath);
	TTString						extensionFilename;
	TTString						extensionFileExtension;
    TTPathVector					paths;
    TTPathIter						i;
	
	err = path.getDirectoryListing(paths);
    if (!err) {
        for (i = paths.begin(); i != paths.end(); ++i) {
            TTPath							aPath = *i;
            TTString						aPathString;
            void*							handle = NULL;
			
            aPath.getString(aPathString);
            cout << "PLUGINS: " << aPathString << endl;
			
			// make sure the files have the correct extension before trying to load them
			aPath.getExtension(extensionFileExtension);
#ifdef TT_PLATFORM_LINUX
			if (extensionFileExtension != ".ttso")
#elif defined(TT_PLATFORM_MAC)
				if (extensionFileExtension != ".ttdylib")
#elif defined(TT_PLATFORM_WIN)
					if (extensionFileExtension != ".ttdll")
#endif
						continue;
			
#ifdef TT_PLATFORM_WIN
			handle = LoadLibrary(aPathString.c_str());
#else
            handle = dlopen(aPathString.c_str(), RTLD_LAZY);
#endif
            cout << "HANDLE: " << handle << endl;
            if (!handle)
                continue;
			
			OpCreation createFactory = (OpCreation) dlsym(handle,"createFactory");//lie la dylib au symbole
			
			if (!createFactory) {
				std::cerr << "dlsym failed: " << dlerror() << std::endl;
				continue;
			}
			
			PluginFactory *pluginFactory = (*createFactory)();
			if (!pluginFactory) {
				continue;
			}
			
			factories[pluginFactory->getName()] = pluginFactory;
		}
	}
#endif
}
#endif

IteratorPluginNames PluginFactories::getPluginNames() {
	return IteratorPluginNames(factories.begin(), factories.end());
}

PluginPtr PluginFactories::createPlugin(TTString name, TTObjectPtr applicationManager) {
		std::map<TTString, PluginFactoryPtr >::iterator it = factories.find(name);
		if (it == factories.end()) {
			return NULL;
		}
		return factories[name]->getInstance(applicationManager);
}

/****************************************/
//PluginFactories Iterator Access 
IteratorPluginNames::IteratorPluginNames(ItMap it, ItMap itEnd) :
it(it), itEnd(itEnd) {
	if (it != itEnd) {
		current = it->first;
		++it;
	}
}

TTString IteratorPluginNames::next() {
	TTString tmp = current;
	if (++it != itEnd)
		current = it->first;
	return tmp;
}

bool IteratorPluginNames::hasNext() {
	return it != itEnd;
}

