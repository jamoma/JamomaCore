/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Create Jamoma object instances.
 *
 * @author Timothy Place
 *
 * @copyright Copyright © 2014, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"
#include "TTMatrixBase.h"


void TTMatrix::clear()
{
	instance()->clear();
}


void TTMatrix::referenceExternalData(TTPtr aDataPointer)
{
	instance()->referenceExternalData(aDataPointer);
}


TTByte* TTMatrix::getLockedPointer()
{
	return instance()->getLockedPointer();
}


void TTMatrix::releaseLockedPointer()
{
	instance()->releaseLockedPointer();
}


TTRowID TTMatrix::getRowCount() const
{
	return instance()->getRowCount();
}


TTColumnID TTMatrix::getColumnCount() const
{
	return instance()->getColumnCount();
}


TTUInt32 TTMatrix::getComponentStride() const
{
	return instance()->getComponentStride();
}


