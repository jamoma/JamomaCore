/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief #TTAudioObjectBase is the Jamoma DSP Audio Object Base Class
 *
 * @details
 *
 * @authors Tim Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_MATRIX_H__
#define __TT_MATRIX_H__

#include "TTObject.h"

class TTMatrixBase;

/** Wrap TTMatrixBase instances. */
class TTMatrix : public TTObject {
public:
	
	/** Constructor */
	TTMatrix():
	TTObject("matrix")
	{}
	
	
	/** Get a pointer to the wrapped #TTMatrixBase instance. */
	TTMatrixBase* instance()
	{
		return (TTMatrixBase*)mObjectInstance;
	}
	
		
	void clear();
	
};


#endif // __TT_MATRIX_H__
