/* 
	Jade2 Menubar window dragger thingy
	based on:
	xgui - a blank user interface object (ppc only -- for Max 4)
		1999-2001 dudas hack
		
	additional code from jhno
	
	hacked into this form by Tim Place
		
*/


#include "ext.h"					// Max Header
#include "ext_common.h"				// includes the MIN macro
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "ext_user.h"
#include "ext_wind.h"

#define RES_ID		10101		// ID of our STR# and SICN resources

#define MAXWIDTH 	1024L		// maximum width and height of user object in pixels
#define MAXHEIGHT	512L			//    (defines maximum offscreen canvas allocation)
#define MINWIDTH 	64L			// minimum width and height
#define MINHEIGHT	5L			
#define DEFWIDTH 	200			// default width and height
#define DEFHEIGHT	12	

typedef struct windowdrag{
	t_box		x_box;
	void		*obex;
	Rect 		x_rect;			// for comparing with x_box.b_rect
} t_windowdrag;

void windowdrag_update(t_windowdrag *x);
void windowdrag_click(t_windowdrag *x, Point pt, short modifiers);
void windowdrag_psave(t_windowdrag *x, void *w);
void windowdrag_free(t_windowdrag *x);
void *windowdrag_new(t_symbol *s, short argc, t_atom *argv);
void *windowdrag_menu(void *p, long x, long y, long font);

t_class *windowdrag_class;


/*==========================================================================*/

void main(void)
{	
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	c = class_new("jmod.meter~",(method)windowdrag_new, (method)windowdrag_free, (short)sizeof(t_windowdrag), (method)windowdrag_menu, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_windowdrag, obex));

	class_addmethod(c, (method)windowdrag_click,	"click", A_LONG, 0L);
 	class_addmethod(c, (method)windowdrag_update, 	"update", A_FLOAT, 0L);
 	class_addmethod(c, (method)windowdrag_psave,	"psave", A_CANT, 0L);	
//	class_addmethod(c, (method)windowdrag_assist, 	"assist", A_CANT, 0L); 

	// Finalize our class
	class_register(CLASS_BOX, c);
	windowdrag_class = c;
}


/*==========================================================================*/
void windowdrag_update(t_windowdrag *x)
{
	;
}

/* ========================================================================== */
// if the user clicks on out object's rect...

void windowdrag_click(t_windowdrag *x, Point pt, short modifiers)
{ 
   WindowPtr wp;
   Point /*pt,*/ rpt;
   t_wind *twp;
   Rect r;
   short h, v;
   t_wind *p;

   SetRect(&r,0,0,15555,15555); // whatever. just really big. space.
   LocalToGlobal(&pt);

	if ((p = (t_wind*)x->x_box.b_patcher->p_wind) 
		&& (wp = (OpaqueWindowPtr *)wind_syswind(p)))
	{
      DragWindow(wp,pt,&r);
      

/* COMMENTED OUT BY JB      
      GetMouse(&rpt);
      LocalToGlobal(&rpt);
      h = rpt.h - pt.h;
      v = rpt.v - pt.v;
      p->w_x1 += h;
      p->w_y1 += v;
      p->w_x2 += h;
      p->w_y2 += v;
*/

   }
}


/*==========================================================================*/
// save our UI object's location and appearance with the patcher...

void windowdrag_psave(t_windowdrag *x, void *w)
{
	Rect r = x->x_box.b_rect;
	t_atom argv[16];
	short inc = 0;
	
	SETSYM(argv,gensym("#P"));
	if (x->x_box.b_hidden) {	// i.e. if it's hidden when the patcher is locked
		SETSYM(argv+1,gensym("hidden"));
		inc = 1;
	}
	SETSYM(argv+1+inc,gensym("user"));
	SETSYM(argv+2+inc,ob_sym(x));
	SETLONG(argv+3+inc,r.left);
	SETLONG(argv+4+inc,r.top);
	SETLONG(argv+5+inc,r.right - r.left);	// width
	SETLONG(argv+6+inc,r.bottom - r.top);	// height
	
	binbuf_insert(w,0L,7+inc,argv);
}


/*--------------------------------------------------------------------------*/
void windowdrag_free(t_windowdrag *x)
{
	box_free((box *)x);
}


/*--------------------------------------------------------------------------*/
// when the UI external is read-in from a patcher file...

void *windowdrag_new(t_symbol *s, short argc, t_atom *argv)
{
	t_windowdrag *x;
	void *patcher;
	long bx, by, width, height;
	short bw, bh, flags;
	
	x = (t_windowdrag*)object_alloc(windowdrag_class);
	if(x){
		patcher = argv[0].a_w.w_obj;
		bx = argv[1].a_w.w_long;
		by = argv[2].a_w.w_long;
		width = argv[3].a_w.w_long;
		height = argv[4].a_w.w_long;	
			
		bw = CLIP(width, MINWIDTH, MAXWIDTH); // constrain to min and max size
		bh = CLIP(height, MINHEIGHT, MAXHEIGHT);
		flags = F_DRAWFIRSTIN | F_NODRAWBOX | F_GROWBOTH | F_DRAWINLAST | F_SAVVY;
		box_new((t_box *)x, (t_patcher *)patcher, flags, bx, by, bx+bw, by+bh);
		x->x_box.b_firstin = (void *)x;
		x->x_rect = x->x_box.b_rect;
				
		box_ready((t_box *)x);
	}
	else
		error("tap.windowdrag - could not create instance");
	return(x);
}



/*--------------------------------------------------------------------------*/
// if the user selects our object from the toolbar/menu, 
//		we need to supply the _new method with default values

void *windowdrag_menu(void *p, long x, long y, long font)
{
//	t_atom argv[16];
	t_atom argv[5];		// reduced to 5 on 24 nov 2004
	
	SETOBJ(argv, (t_object *)p);
	SETLONG(argv+1,x);
	SETLONG(argv+2,y);
	SETLONG(argv+3,DEFWIDTH);
	SETLONG(argv+4,DEFHEIGHT);
	return windowdrag_new(gensym("windowdrag"),5,argv);
}

