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

#define PATHOBJ ((path*)mPathObject)

TTPath::TTPath()
{
    mPathObject = (TTPtr) new path;
}

TTPath::TTPath(TTString& aFolderPath)
{
    mPathObject = (TTPtr) new path(aFolderPath);
}

TTPath::~TTPath()
{
    delete PATHOBJ;
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

