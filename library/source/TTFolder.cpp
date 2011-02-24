/*
 * Jamoma support for interacting with folders (directories) in the file system
 * Copyright © 2011, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFolder.h"
#include "boost/filesystem.hpp"
using namespace boost::filesystem;

#define PATHOBJ ((path*)mPathObject)

TTFolder::TTFolder()
{
    mPathObject = (TTPtr) new path;
}

TTFolder::TTFolder(TTString& aFolderPath)
{
    mPathObject = (TTPtr) new path(aFolderPath);
}

TTFolder::~TTFolder()
{
    delete PATHOBJ;
}


TTBoolean TTFolder::exists()
{
	return boost::filesystem::exists(*PATHOBJ);
}


TTBoolean TTFolder::isDirectory()
{
    if (exists())
        return boost::filesystem::is_directory(*PATHOBJ);
    else
        return NO;
}




