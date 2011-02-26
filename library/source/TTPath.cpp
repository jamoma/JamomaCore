/*
 * Jamoma support for interacting with paths (i.e. folders/directories) in the file system
 * Copyright © 2011, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPath.h"
#include "boost/filesystem.hpp"
using namespace boost::filesystem;

typedef vector<boost::filesystem::path> path_vec;

#define PATHOBJ ((path*)mPathObject)

TTPath::TTPath()
{
    mPathObject = (TTPtr) new path;
}

TTPath::TTPath(const TTString& aFolderPath)
{
    mPathObject = (TTPtr) new path(aFolderPath);
}

TTPath::TTPath(TTPtr aBoostPathObject)
{
    mPathObject = (TTPtr) new path;
    *PATHOBJ = *((path*)(aBoostPathObject));
}

TTPath::~TTPath()
{
    delete PATHOBJ;
}


// copy constructor
TTPath::TTPath(const TTPath& that)
{
    this->mPathObject = (TTPtr) new path;
    *PATHOBJ = *((path*)that.mPathObject);
}



TTBoolean TTPath::exists()
{
	return boost::filesystem::exists(*PATHOBJ);
}


TTBoolean TTPath::isDirectory()
{
    if (exists())
        return boost::filesystem::is_directory(*PATHOBJ);
    else
        return NO;
}


TTErr TTPath::getDirectoryListing(TTPathVector& returnedPaths)
{
    returnedPaths.clear();

    try {
        if (isDirectory()) {
            path_vec v;

            copy(directory_iterator(*PATHOBJ), directory_iterator(), back_inserter(v));
            sort(v.begin(), v.end());
            for (path_vec::const_iterator i = v.begin(); i != v.end(); ++i) {
                path    p = (*i);
                TTPath  pobj(&p);

                returnedPaths.push_back(pobj);
            }

            return kTTErrNone;
        }
        else
            return kTTErrInvalidType;
    }
    catch (const filesystem_error& ex) {
        TTLogError("TTPath::getDirectoryListing() failed %s", ex.what());
        return kTTErrGeneric;
    }
}


void TTPath::getString(TTString& pathString)
{
    pathString = (*PATHOBJ).string();
}

