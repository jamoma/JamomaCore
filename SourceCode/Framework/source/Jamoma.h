/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#ifndef __JAMOMA_H__
#define __JAMOMA_H__

#include "ext.h"
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "ext_common.h"
#include "ext_strings.h"			// String Functions
#include "ext_critical.h"
#ifdef MAC_VERSION
#include "ext_pattr_bundle.h"
#endif
#include "z_dsp.h"
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API

#include <math.h>
#include <stdlib.h>

#include "tt_audio_base.h"			// Tap.Tools Blue Headers...
#include "tt_audio_signal.h"
#include "tt_copy.h"
//#include "tt_bandpass_butterworth.h"
//#include "tt_bandreject_butterworth.h"
#include "tt_crossfade.h"	
#include "tt_gain.h"
//#include "tt_highpass_butterworth.h"
#include "tt_lowpass_butterworth.h"
#include "tt_limiter.h"
#include "tt_overdrive.h"
#include "tt_zerox.h"

#include "jcom.core.h"
#include "jcom.list.h"
#include "jcom.io.h"
#include "jcom.sendreceive.h"
#include "RampUnitWrap.h"
#include "JamomaTypes.h"
#include "JamomaClock.h"
#include "JamomaScheduler.h"
#include "JamomaSymbols.h"

#include "FunctionLib.h"
#include "DataspaceLib.h"

#ifndef NO
#define NO 0
#endif

#ifndef YES
#define YES 1
#endif

#define JAMOMA_UNIT_HEIGHT 70.0
#define JAMOMA_UNIT_WIDTH 150.0
#define JAMOMA_MENU_FONT "Arial"
#define JAMOMA_MENU_FONTSIZE 10.0
#define JAMOMA_DEFAULT_FONT "Verdana"
#define JAMOMA_DEFAULT_FONTSIZE 8.0
#define JAMOMA_BUTTON_FONT JAMOMA_DEFAULT_FONT

extern t_object *obj_jamoma_clock;		// the jamoma master clock object
extern t_object	*obj_jamoma_scheduler;	// a shared global instance of the scheduler (there may be others too)
extern bool		max5;					// are we in max5?

#ifdef __cplusplus
extern "C" {
#endif

void		jamoma_init(void);
t_max_err	jamoma_hub_register(t_symbol *name, t_object *hub);
void		jamoma_hub_remove(t_symbol *name);
t_object*	jamoma_get_hub_for_module_named(t_symbol *name);
void		jamoma_get_all_module_names(long *numModules, t_symbol ***moduleNames);
t_object*	jamoma_object_getpatcher(t_object *obj);
t_symbol*	jamoma_patcher_getcontext(t_object *patcher);
void		jamoma_patcher_getargs(t_object *patcher, long *argc, t_atom **argv);
t_symbol*	jamoma_patcher_getvarname(t_object *patcher);

void		jamoma_dsp(t_object *, t_signal **sp, short *count);

void		jamoma_class_attr_new(t_class *c, char *attrName, t_symbol *attrType, method setter, method getter, long offset);
void		jamoma_class_attr_array_new(t_class *c, char *attrName, t_symbol *attrType, long list_size, method setter, method getter, long sizeOffset, long offset);
void		jamoma_class_attr_get(t_object *o, t_symbol *attrName, long, t_atom *);
//void		jamoma_class_attr_get_sender(t_object *o, void *attr, long argc, t_atom *argv);

#ifdef __cplusplus
}
#endif

#endif //__JAMOMA_H__

