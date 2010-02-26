/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"
#include "TTGraph.h"
//#include "TTMulticoreGenerator.h"
#include "TTGraphObject.h"
#include "TTGraphInlet.h"		// required for windows build
//#include "TTMulticoreInput.h"
//#include "TTMulticoreOutput.h"

static bool initialized = false;


/***********************************************************/

void TTGraphInit(void)
{
	if (!initialized) {
		initialized = true;
		//TTDSPInit();
		TTFoundationInit();
		
		//TTMulticoreGenerator::registerClass();
		TTGraphObject::registerClass();
		//TTMulticoreInput::registerClass();
		//TTMulticoreOutput::registerClass();
	}
}

