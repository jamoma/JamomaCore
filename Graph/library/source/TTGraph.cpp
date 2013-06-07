/** @file
 *
 * @ingroup graphLibrary
 *
 * @brief Jamoma Asynchronous Object Graph Layer
 *
 * @details Creates a wrapper for TTObjectBases that can be used to build a control graph for asynchronous message passing
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTGraph.h"
#include "TTGraphObject.h"
#include "TTGraphInlet.h"		// required for windows build
#include "TTGraphOutlet.h"
#include "TTGraphInput.h"
#include "TTGraphOutput.h"

static bool initialized = false;


/***********************************************************/

void TTGraphInit(void)
{
	if (!initialized) {
		initialized = true;
		TTFoundationInit();
		
		TTGraphObject::registerClass();
		TTGraphInput::registerClass();
		TTGraphOutput::registerClass();
	}
}

