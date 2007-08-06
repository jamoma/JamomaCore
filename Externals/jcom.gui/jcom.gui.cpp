/* 
 * jcom.gui
 * External for Jamoma: gui template for module interface
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.gui.h"

// Globals
static t_class		*s_gui_class;						// Required: Global pointer for our class


/************************************************************************************/
int main(void)
{
	long		attrflags = 0;
	t_class		*c;
	t_object	*attr;
	
	common_symbols_init();
	c = class_new("jcom.gui", (method)gui_new, (method)gui_free, (short)sizeof(t_gui), (method)0L, A_GIMME, 0);
	
	// Make methods accessible for our class:
	//class_addmethod(c, (method)gui_assist,				"assist",					A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",					A_CANT,	0);
    class_addmethod(c, (method)object_obex_quickref,	"quickref",					A_CANT, 0);
/*	
	// ATTRIBUTE: module_type	[audio, video, control, etc.]
	attr = attr_offset_new("module_type", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_type));
	class_addattr(c, attr);

	// ATTRIBUTE: size [1U, 2U, 3U 1U-half, etc.]
	attr = attr_offset_new("size", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_size));
	class_addattr(c, attr);

	// ATTRIBUTE: inspector
	attr = attr_offset_new("inspector", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_inspector));
	class_addattr(c, attr);
*/
	// Finalize our class
	class_register(CLASS_BOX, c);
	s_gui_class = c;
	
	jcom_core_init();
	return 0;
}


/************************************************************************************/
// Object Life

void *gui_new(t_symbol *s, long argc, t_atom *argv)
{
	t_gui			*x = (t_gui *)object_alloc(s_gui_class);
	
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (t_object *)outlet_new(x, 0));
		x->qelem = qelem_new(x, (method)gui_qfn);
		
		attr_args_process(x, argc, argv);			// handle attribute args
	}
	return (x);										// return the pointer to our new instantiation
}


void gui_free(t_gui *x)
{
	qelem_free(x->qelem);
}


void gui_qfn(t_gui *x)
{
	;
}