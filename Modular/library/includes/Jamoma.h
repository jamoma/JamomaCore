/** 
 * \file jamoma.h
 * Jamoma Shared Library - Functions and resources used by Jamoma objects.
 *
 * By Tim Place, Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __JAMOMA_H__
#define __JAMOMA_H__

#include "TTModularVersion.h"
#ifndef WIN_VERSION
#include <Carbon/Carbon.h>
#endif

#ifdef WIN_VERSION
#pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "MaxObjectTypes.h"

#include "ext_common.h"
#include "ext_strings.h" // String Functions
#include "ext_critical.h"
#include "jpatcher_api.h"
#include "z_dsp.h"
#include "commonsyms.h" // Common symbols used by the Max 4.5 API

#include <math.h>
#include <stdlib.h>

#include "TTFoundationAPI.h" // TTBlue Headers...

#include "TTModular.h"

#include "jcom.core.h"
#include "JamomaTypes.h"
#include "JamomaSymbols.h"

#include "ModularForMax.h"

#define JAMOMA "Jamoma"
#define JAMOMA_UNIT_HEIGHT 35.0
#define JAMOMA_UNIT_WIDTH 150.0
#define JAMOMA_MENU_FONT "Arial"
#define JAMOMA_MENU_FONTSIZE 11.0
#define JAMOMA_DEFAULT_FONT "Verdana"
#define JAMOMA_DEFAULT_FONTSIZE 9.0
#define JAMOMA_BUTTON_FONT JAMOMA_DEFAULT_FONT

void TTMODULAR_EXPORT jamoma_init(void);

#endif //__JAMOMA_H__

