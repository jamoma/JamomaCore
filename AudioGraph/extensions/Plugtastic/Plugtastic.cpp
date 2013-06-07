/** @file
 *
 * @ingroup audioGraphUtilityLib
 *
 * @brief Registers classes for Plugtastic 
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAudioGraphAPI.h"
#include "PlugtasticInput.h"
#include "PlugtasticOutput.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_Plugtastic(void)
{
	TTAudioGraphInit();	
	
	PlugtasticInput::registerClass();
	PlugtasticOutput::registerClass();
	
	return kTTErrNone;
}

