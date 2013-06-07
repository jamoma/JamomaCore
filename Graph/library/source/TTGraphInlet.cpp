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


#include "TTGraphObject.h"
#include "TTGraphInlet.h"
#include "TTCallback.h"


void TTGraphInlet::getDescriptions(TTGraphDescriptionVector& descs)
{
	for (TTGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
		TTGraphDescription	desc;
		
		source->getDescription(desc);
		descs.push_back(desc);
	}
}

