/*
 * Jamoma support for interacting with folders (directories) in the file system
 * Copyright © 2011, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_FOLDER_H__
#define __TT_FOLDER_H__

#include "TTBase.h"


/****************************************************************************************************/
// Class Specification

/**
	The TTMutex class maintains a mutual exclusion lock.
	See http://en.wikipedia.org/wiki/Mutex for more details.
*/
class TTFOUNDATION_EXPORT TTFolder : public TTBase {

public:
	TTFolder();
	virtual	~TTFolder();

//	void lock();
//	void unlock();
};

typedef TTFolder* TTFolderPtr;
typedef TTFolder& TTFolderRef;

#endif // __TT_FOLDER_H__
