/* 
 *	tt.graphicsui
 *	External object for Max/MSP
 *	Draw graphics in a UI object
 *	Example project for Jamoma DSP
 *	Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"
#include "ext_obex.h"
#include "ext_user.h"
#include "ext_common.h"
#include "jpatcher_api.h"	// jpatcher_api.h must come before z_dsp.h
#include "jgraphics.h"
#include "TTClassWrapperMax.h"
#include "TTGraphicsContext.h"
#include "mypainter.h"


// Instance definition
typedef struct _graphicsui{
	t_jbox			box;
	SymbolPtr		mode;		///< The unit which is displayed together with the number 
	TTPtr			outlet;		///< Outlet
	TTObjectPtr		mypainter;	///< Our little graphics drawing object defined in mypainter.h
} t_graphicsui;


// prototypes
void*		graphicsui_new(t_symbol *s, long argc, t_atom *argv);
void		graphicsui_free(t_graphicsui *x);
t_max_err	graphicsui_notify(t_graphicsui *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
t_max_err	graphicsui_set_mode(t_graphicsui *x, void *attr, long argc, t_atom *argv);
void		graphicsui_paint(t_graphicsui *x, t_object *view);


// globals
static ClassPtr	s_graphicsui_class;


// implementation

int main(void)
{
	ClassPtr	c;
	long		flags = 0;
	
	TTBlueInit();
	TTClassRegister(TT("MyPainter"), "graphics", &instantiateMyPainter);

	common_symbols_init();	
	c = class_new("tt.graphicsui", 
				  (method)graphicsui_new, 
				  (method)graphicsui_free, 
				  sizeof(t_graphicsui), 
				  (method)NULL, 
				  A_GIMME, 
				  0L);
	
	jbox_initclass(c, flags);	
	c->c_flags |= CLASS_FLAG_NEWDICTIONARY; // to specify dictionary constructor
	
	class_addmethod(c, (method)graphicsui_paint,			"paint",			A_CANT, 0);
	class_addmethod(c, (method)graphicsui_notify,			"notify",			A_CANT, 0);
	
	CLASS_ATTR_DEFAULT(c,					"patching_rect",	0,	"0. 0. 160. 160.");
	CLASS_ATTR_MIN(c,						"patching_size",	0,	"1. 1.");
			
	CLASS_ATTR_SYM(c,						"mode",			0,	t_graphicsui, mode);
	CLASS_ATTR_LABEL(c,						"mode",			0,	"Mode");
	CLASS_ATTR_DEFAULT(c,					"mode",			0,	"hello");
	CLASS_ATTR_SAVE(c,						"mode",			0);
	CLASS_ATTR_ACCESSORS(c,					"mode",			NULL, graphicsui_set_mode);
		
	class_register(_sym_box, c);
	s_graphicsui_class = c;		
	return 0;
}


#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0


void *graphicsui_new(t_symbol *s, long argc, t_atom *argv)
{
	t_graphicsui	*x = NULL;
	t_dictionary	*d=NULL;
	long			flags;
	
	
	if (!(d=object_dictionaryarg(argc,argv)))
		return NULL;
	
	if (x = (t_graphicsui *)object_alloc(s_graphicsui_class))
	{   
		flags = 0 
		| JBOX_DRAWFIRSTIN		// 0
		| JBOX_NODRAWBOX		// 1
		| JBOX_DRAWINLAST		// 2
		//	| JBOX_TRANSPARENT		// 3
		//	| JBOX_NOGROW			// 4
		//	| JBOX_GROWY			// 5
		| JBOX_GROWBOTH			// 6
		//	| JBOX_IGNORELOCKCLICK	// 7
		//	| JBOX_HILITE			// 8
		//	| JBOX_BACKGROUND		// 9
		//	| JBOX_NOFLOATINSPECTOR	// 10
		//	| JBOX_TEXTFIELD		// 11
		| JBOX_MOUSEDRAGDELTA	// 12
		//	| JBOX_COLOR			// 13
		//	| JBOX_BINBUF			// 14
		//	| JBOX_DRAWIOLOCKED		// 15
		//	| JBOX_DRAWBACKGROUND	// 16
		//	| JBOX_NOINSPECTFIRSTIN	// 17
		//	| JBOX_DEFAULTNAMES		// 18
		//	| JBOX_FIXWIDTH			// 19
		;
		
		jbox_new(&x->box, flags, argc, argv);
		x->box.b_firstin = (t_object *)x;
		x->outlet = outlet_new(x, 0);
		
		TTObjectInstantiate(TT("MyPainter"), &x->mypainter, TTValue(160,160));
		
		attr_dictionary_process(x,d);
		jbox_ready((t_jbox *)x);
		
		return x;
	}
	else
		return NULL;
}


void graphicsui_free(t_graphicsui *x)
{	
	notify_free((t_object *)x);
	jbox_free((t_jbox *)x);
	TTObjectRelease(&x->mypainter);
}


t_max_err graphicsui_notify(t_graphicsui *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{	
	if(msg == _sym_modified)
		jbox_redraw(&x->box);	
	else if ((msg == _sym_attr_modified) && (sender == x))	
		jbox_redraw(&x->box);

	return jbox_notify((t_jbox*)x, s, msg, sender, data);
}


t_max_err graphicsui_set_mode(t_graphicsui *x, void *attr, long argc, t_atom *argv)
{	
	if(argc && argv)
		x->mode = atom_getsym(argv);
	else
		x->mode = gensym("hello");
	
	x->mypainter->setAttributeValue(TT("mode"), TT(x->mode->s_name));
	return MAX_ERR_NONE;
}


void graphicsui_paint(t_graphicsui *x, t_object *view)
{
	t_rect			rect;
	t_rect			r;
	t_jgraphics*	g;
	t_jsurface*		jsurface;
	unsigned char*	data;
	TTValue			v;
	TTErr			err;
	int				width;
	int				height;
	int				stride;
	
	g = (t_jgraphics*) patcherview_get_jgraphics(view);		// obtain graphics context
	jbox_get_rect_for_view((t_object *)x, view, &rect);		// this is the box rectangle -- but we draw relative to 0 0, and thus only care about width & height

	err = x->mypainter->sendMessage(TT("paint"));
	err = x->mypainter->sendMessage(TT("getData"), v);
	if (!err) {
		data = (unsigned char*)TTPtr(v);
		v.get(1, width);
		v.get(2, height);
		v.get(3, stride);
	
		jsurface = jgraphics_image_surface_create_for_data(data, JGRAPHICS_FORMAT_ARGB32, width, height, stride, NULL, NULL);
		
		r.x = 0;
		r.y = 0;
		r.width = 200;
		r.height = 200;
		jgraphics_image_surface_draw(g, jsurface, r, r);
		jgraphics_surface_destroy(jsurface);
	}
}
