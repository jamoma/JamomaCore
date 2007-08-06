/* 
 * jcom.gui
 * External for Jamoma: gui template for module interface
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JCOM_GUI_H__
#define __JCOM_GUI_H__

#include "ext.h"								// Max Header
#include "ext_obex.h"							// Max Object Extensions (attributes) Header
#include "commonsyms.h"							// Common symbols used by the Max 4.5 API
#include "jcom.core.h"
#include "jpatcher_api.h"
#include "jgraphics.h"


typedef struct _menu_item{						///< Data Structure for popup menu items
	t_symbol	*name;
	_menu_item	*prev;
	_menu_item 	*next;
} t_menu_item;


typedef struct _gui{							///< Data Structure for this object
	t_object			obj;					///< REQUIRED: Our object 'base-class'
	void				*qelem;

	t_jpopupmenu		*modulemenu;
	t_menu_item			*modulemenu_head;
	t_menu_item			*modulemenu_tail;
	t_menu_item			*modulemenu_current;
	long				modulemenu_itemcount;	// how many items we currently have
	long				modulemenu_position;	// which item is currently selected

	t_jpopupmenu		*quickrefmenu;
	t_menu_item			*quickrefmenu_head;
	t_menu_item			*quickrefmenu_tail;
	t_menu_item			*quickrefmenu_current;
	long				quickrefmenu_itemcount;	// how many items we currently have
	long				quickrefmenu_position;	// which item is currently selected
	
} t_gui;


// Prototypes for our methods:
void *gui_new(t_symbol *s, long argc, t_atom *argv);
void gui_free(t_gui *x);
void gui_qfn(t_gui *x);


#endif // #ifndef __JCOM_GUI_H__
