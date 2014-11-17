/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTMatrixObject is a #TTObject specialized for processing matrices
 *
 * @details
 *
 * @author Timothy Place
 *
 * @copyright Copyright © 2014 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrixObject.h"
#include "TTMatrix.h"
#include "TTDataObjectBase.h"


TTErr TTMatrixObject::calculate(TTMatrix x, TTMatrix y)
{
	return instance()->calculate(x.instance(), y.instance());
}

