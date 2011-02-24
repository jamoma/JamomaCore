/*
 * Jamoma support for interacting with paths (i.e. folders/directories) in the file system
 * Copyright © 2011, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_PATH_H__
#define __TT_PATH_H__

#include "TTBase.h"


/****************************************************************************************************/
// Class Specification

/**
	Represent folders and paths
*/
class TTFOUNDATION_EXPORT TTPath : public TTBase {
    TTPtr   mPathObject;

public:
	TTPath();
	TTPath(TTString& aPathName);
	virtual	~TTPath();

    TTBoolean exists();
    TTBoolean isDirectory();

};

typedef TTPath* TTPathPtr;
typedef TTPath& TTPathRef;
typedef vector<TTPath> TTPathVector;


#endif // __TT_PATH_H__
