/* 
 *	Plugtastic 
 *	
 *	Copyright © 2010 by Timothy Place
 *
 *	License: This code is licensed under the terms of the "New BSD License"
 *	http://creativecommons.org/licenses/BSD/
 */


#include "Plugtastic.h"
#include "PlugtasticInput.h"
#include "PlugtasticOutput.h"
#include "PlugtasticParameter.h"


static bool initialized = false;


/***********************************************************/

void PlugtasticInit(const char* pathToBinaries)
{
	if (!initialized) {
		initialized = true;

		TTDSPInit(pathToBinaries);
		TTAudioGraphInit();	
	
		PlugtasticInput::registerClass();
		PlugtasticOutput::registerClass();
		PlugtasticParameter::registerClass();
	}
}

