/* 
 *	Plugtastic 
 *	
 *	Copyright © 2010 by Timothy Place
 *	All Rights Reserved
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

