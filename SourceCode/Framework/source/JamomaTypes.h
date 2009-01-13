/* 
 * Jamoma Shared Library
 * Type Definitions
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#ifndef __JAMOMA_TYPES_H__
#define __JAMOMA_TYPES_H__

enum JamomaError{
	JAMOMA_ERR_NONE = 0,
	JAMOMA_ERR_GENERIC,
	JAMOMA_ERR_INVALID_PARAMETER
};

#ifndef JAMOMA_PLATFORM_WIN
	#ifdef WIN_VERSION
	 #define JAMOMA_PLATFORM_WIN
	#else
	 #define JAMOMA_PLATFORM_MAC
	 #define JAMOMA_EXPORT
	 #define JAMOMA_EXPORT_MAXOBJ
	#endif
#endif

#ifdef JAMOMA_PLATFORM_WIN
 #include "windows.h"
 #define JAMOMA_EXPORT_MAXOBJ __declspec(dllexport)

 #ifdef _DLL_JAMOMA_EXPORT
  #define JAMOMA_EXPORT __declspec(dllexport)
 #else
  #define JAMOMA_EXPORT __declspec(dllimport)
 #endif // _DLL_EXPORT
#endif

#endif //__JAMOMA_TYPES_H__
