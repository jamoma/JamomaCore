/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief The global jamoma object.
 *
 * @details Functions and resources used by Jamoma Modular objects.
 *
 * @authors Tim Place
 *
 * @copyright Copyright © 2007, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __JAMOMA_OBJECT_H__
#define __JAMOMA_OBJECT_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#ifndef WIN_VERSION
#include <Carbon/Carbon.h>
#endif

#include "ext.h"
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "ext_common.h"
#include "ext_strings.h"			// String Functions
#include "ext_critical.h"
#include "z_dsp.h"
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API


/** Data Structure for the global jamoma object.
 This object is instantiated once when the jamoma_init() method is first called and the Jamoma environment is loaded.
 */
typedef struct _jamoma_object
{
	t_object		obj;	
} t_jamoma_object;

#ifdef __cplusplus
extern "C" {
#endif

/** Set up the class.
 */
void		jamoma_object_initclass(void);
	
/** Object instantiation.
 @return		Pointer to the object.
 */
t_object*	jamoma_object_new();
	
/**
 Called when the object is freed.
 @param obj		Pointer to the object.
 */
void		jamoma_object_free(t_jamoma_object *obj);

#ifdef __cplusplus
}
#endif

#endif //__JAMOMA_OBJECT_H__

