/** @file
 *
 * @ingroup modularOSC
 *
 * @brief
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef _OSCINCLUDE_H_
#define _OSCINCLUDE_H_

#ifdef TT_PLATFORM_WIN
	#include <time.h>
	#include <windows.h>
#else
	#include <sys/time.h>
#endif

#include "TTFoundationAPI.h"

#include <sstream>
#include <iostream>
#include <string>
#include <map>
#include <vector>

using namespace std;

static const unsigned int OSC_RECEPTION_PORT = 9002;

#define DEFAULT_TIMEOUT 1000
#define NO_TIMEOUT -1

#endif /*_OSCINCLUDE_H_*/
