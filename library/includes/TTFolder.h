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
	Represent folders and paths
*/
class TTFOUNDATION_EXPORT TTFolder : public TTBase {
    TTPtr   mPathObject;

public:
	TTFolder();
	TTFolder(TTString& aFolderPath);
	virtual	~TTFolder();

    TTBoolean exists();
    TTBoolean isDirectory();

};

typedef TTFolder* TTFolderPtr;
typedef TTFolder& TTFolderRef;

#endif // __TT_FOLDER_H__
