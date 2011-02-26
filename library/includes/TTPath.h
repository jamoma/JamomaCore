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


class TTPath;

typedef TTPath*                 TTPathPtr;
typedef TTPath&                 TTPathRef;
typedef vector<TTPath>          TTPathVector;
typedef TTPathVector::iterator  TTPathIter;


/**
	Represent folders and paths
*/
class TTFOUNDATION_EXPORT TTPath : public TTBase {
    TTPtr   mPathObject;

public:
    // constructors
	TTPath();
	TTPath(const TTString& aPathName);
	TTPath(TTPtr aBoostPathObject);

    // destructor
	virtual	~TTPath();

    // copy constructor
    TTPath(const TTPath& that);

    // methods
    TTBoolean exists();
    TTBoolean isDirectory();
    TTErr getDirectoryListing(TTPathVector& returnedPaths);

    void getString(TTString& pathString);
};


#endif // __TT_PATH_H__
