/** @file
 *
 * @ingroup graphLibrary
 *
 * @brief Jamoma Asynchronous Object Graph Layer
 *
 * @details Creates a wrapper for TTObjectBases that can be used to build a control graph for asynchronous message passing
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#pragma once
#include "TTDSP.h"


#ifdef TT_PLATFORM_WIN
	#include "windows.h"
	#if defined( TTGRAPH_EXPORTS )
		#define TTGRAPH_EXPORT __declspec(dllexport)
	#else
		#define TTGRAPH_EXPORT __declspec(dllimport)
	#endif

	#include <algorithm>
	using namespace std;
#else // TT_PLATFORM_MAC
	#ifdef TTGRAPH_EXPORTS
		#define TTGRAPH_EXPORT __attribute__((visibility("default")))
	#else
		#define TTGRAPH_EXPORT  
	#endif
#endif


class	TTGraphObjectBase;
typedef TTGraphObjectBase*					TTGraphObjectBasePtr;
typedef std::vector<TTGraphObjectBasePtr>	TTGraphObjectBaseVector;
typedef TTGraphObjectBaseVector::iterator	TTGraphObjectBaseIter;

TTGRAPH_EXPORT void TTGraphInit(void);
