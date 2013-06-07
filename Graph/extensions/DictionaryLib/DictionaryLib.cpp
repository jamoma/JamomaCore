/** @file
 *
 * @ingroup graphDictionaryLib
 *
 * @brief Extension Class for Jamoma Graph
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphAPI.h"
#include "TTDictionaryAppend.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_DictionaryLib(void)
{
	TTGraphInit();

	TTDictionaryAppend::registerClass();
	
	return kTTErrNone;
}

