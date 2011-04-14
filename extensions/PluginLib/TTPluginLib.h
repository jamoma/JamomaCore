/*
 * Jamoma PluginLib Base Class
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __PLUGINLIB_H__
#define __PLUGINLIB_H__

//#ifdef WIN_VERSION
// #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
//#endif // WIN_VERSION

#include "TTFoundationAPI.h"


// Macros used to export classes and methods so that we can use linking in performance-critical code
#if defined( TT_PLATFORM_MAC ) or defined ( TT_PLATFORM_LINUX )
	#define TT_PLUGIN_EXPORT TTFONDATION_EXPORT
#else
	#ifdef TT_PLUGIN_LIB
		#define TT_PLUGIN_EXPORT __declspec(dllexport)
	#else
		#define TT_PLUGIN_EXPORT __declspec(dllimport)
	#endif
#endif

#endif // __PLUGINLIB_H__
