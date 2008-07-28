#ifndef _JPATCHER_API_H_
#define _JPATCHER_API_H_

#include "jpatcher_syms.h"

BEGIN_USING_C_LINKAGE

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(push, 2)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack(2)
#endif

// ddz changed enum below to a mask so it can be returned by clipboard_datatypes()

#define JPATCHER_API_CURRENT_FILE_VERSION 1

typedef enum _clipboard_datatype {
	JCLIPBOARD_TYPE_TEXT = 1,
	JCLIPBOARD_TYPE_BINBUF = 2,
	JCLIPBOARD_TYPE_JSON = 4,
	JCLIPBOARD_TYPE_IMAGE = 8,
	JCLIPBOARD_TYPE_JSON_ATTRIBUTES = 16,
	JCLIPBOARD_TYPE_UNKNOWN = 256
} t_clipboard_datatype; 

// This is the public interface to the jpatcher.
// The jpatcher is the new patcher that is fully 
// controllable via obex attributes and methods.  

// This header defineds constants, enumerations, symbols, structs, 
// and functions for working with the jpatcher.  

// It also includes utility functions for getting/setting attributes
// and for calling methods. These utilities are just wrapping the obex 
// interface and thus loosely connect your code to the jpatcher implementation. 

// Finally methods are defined for implementing your own boxes. 

// Objects:
// jpatcher: the patcher
// jbox: a box in the patcher 
// jpatchline: a patch cord
// jpatcherview: a view of a patcher

// the following three should maybe be in c74support?
t_symbol *fontmap_getmapping(t_symbol *from, char *mapped);
double fontinfo_getsize(short oldsize);		// tranlsate max 4.6 font size to max 5 font size
t_symbol *fontinfo_getname(short number);
short fontinfo_getnumber(t_symbol *s);


// Core structs

/**
	Coordinates for specifying a rectangular region.
	@ingroup 	datatypes
	@see		t_pt
	@see		t_size
*/
typedef struct _rect
{
	double x;		///< The horizontal origin
	double y;		///< The vertical origin
	double width;	///< The width
	double height;	///< The height
} t_rect;


/**
	Coordinates for specifying a point.
	@ingroup 	datatypes
	@see		t_rect
	@see		t_size
*/
typedef struct _pt
{
	double x;		///< The horizontal coordinate
	double y;		///< The vertical coordinate
} t_pt;


/**
	Coordinates for specifying the size of a region.
	@ingroup 	datatypes
	@see		t_rect
	@see		t_pt
*/
typedef struct _size
{
	double width;	///< The width
	double height;	///< The height
} t_size;


typedef struct _jrgb {
	double red;
	double green;
	double blue;
} t_jrgb;


typedef struct _jrgba {
	double red;
	double green;
	double blue;
	double alpha;
} t_jrgba;


typedef struct _jboxdrawparams 
{
	float		d_inletheight; 
	float		d_inletvoffset;
	float		d_outletheight;
	float		d_outletvoffset; 
	float		d_reserved1;			// was d_inletinset.  unused and can chop but will require rebuild all so for now I'm renaming
	float		d_cornersize;			// how rounded is the box
	float		d_borderthickness;	
	t_jrgba		d_bordercolor; 
	t_jrgba		d_boxfillcolor;
} t_jboxdrawparams; 

#define JBOX_SPOOL_CONTENTS		1
#define JBOX_SPOOL_WHOLEBOX		2


/** The t_jbox struct provides the header for a Max user-interface object. 
	This struct should be considered opaque and is subject to change without notice.
	Do not access it's members directly any code.
	
	@ingroup patcher
*/
typedef struct _jbox
{
	t_object 	b_ob;
	void 		*obex;
	t_object	*b_patcher;
	t_rect		b_patching_rect;
	t_rect		b_presentation_rect;
	t_symbol	*b_name;
	t_symbol	*b_id;			// immutable box ID
	t_object	*b_firstin;		// the object, could be the box
	t_object	*b_textfield;	// optional text field. 
	t_symbol	*b_fontname; 
	double		b_fontsize; 
	char*		b_hint; 
	t_jrgba		b_color; 
	double		b_unused;		// we can chop this or make it do something different
	void		*b_binbuf;      // really an atombuf  :)
	long		b_temp;
	char		b_spooled; 
	char		b_hidden;
	char		b_hilitable;
	char		b_background;
	char		b_ignoreclick;
	char		b_bogus;
	char		b_drawfirstin;
	char		b_outline;
	char		b_growy;
	char		b_growboth;
	char		b_nogrow; 
	char		b_drawinlast;
	char		b_nofloatinsp;
	char		b_mousedragdelta;	// hide mouse during drag, and send mousedragdelta instead of mousedrag for infinite scrolling
	char		b_presentation;
	char		b_drawiolocked;
	char		b_dragactive; 
	char		b_drawbackground;		
	char		b_hinttrack;
	char		b_fontface;
	char		*b_annotation;
	char		b_opaque;
	char		b_useimagebuffer; 
	char		b_noinspectfirstin;	
	char		b_editactive;			// editing via inspector 
	t_symbol	*b_prototypename;
	void		*b_preserved7;
	void		*b_preserved8;
} t_jbox;

// selection information

typedef struct _pvselinfo
{
	long nboxselect;
	long nlineselect;
	long nselboxhidden;		// how many of the selected boxes are hidden
	long nsellinehidden;	// how many of the selected lines are hidden
	long ncanignoreclick;		// how many of the selected items could accept the ingore click command
	long ncanrespondtoclick;// how many of the selected items could accept the respond to click command
	long nbg;				// how many of the selected items are in the background
	long nboxcolorable;		// how many respond to the color message
	long colorindex;		// index if one object is selected
	long nselboxbg;			// how many of the selected boxes are in the background
	long nboxinfo;			// how many of the selected boxes respond to the info message
	long nboxfixwidth;		// how many of the selected boxes respond to the fixwidth message
	long nboxpatcher;		// how many of the selected boxes are patchers
	long nboxpresent;		// how many of the selected boxes are in the presentation
	long nwiretaplines;		// how many of the selected lines have wiretaps (breakpoint + monitor)
	long nenabledwiretaplines;	// how many of the selected lines are enabled
	long sameclass;		// are all selected items of the same class (true for one object, N patchlines, or N boxes of the same class)
	long editbox;			// is a text box currently being edited
} t_pvselinfo;


// jpatcher interface

// get/set rect utility -- not for use on box -- use jbox_get_rect_for_view!
t_max_err object_attr_get_rect(t_object *o, t_symbol *name, t_rect *rect);
t_max_err object_attr_set_rect(t_object *o, t_symbol *name, t_rect *rect);

t_max_err object_attr_getpt(t_object *o, t_symbol *name, t_pt *pt);
t_max_err object_attr_setpt(t_object *o, t_symbol *name, t_pt *pt); 

t_max_err object_attr_getsize(t_object *o, t_symbol *name, t_size *size);
t_max_err object_attr_setsize(t_object *o, t_symbol *name, t_size *size); 

t_max_err object_attr_getcolor(t_object *b, t_symbol *attrname, t_jrgba *prgba);
t_max_err object_attr_setcolor(t_object *b, t_symbol *attrname, t_jrgba *prgba);

t_max_err jrgba_attr_get(t_jrgba *jrgba, long *argc, t_atom **argv);
t_max_err jrgba_attr_set(t_jrgba *jrgba, long argc, t_atom *argv);


// various utilities
void set_jrgba_from_palette_index(short index, t_jrgba *jrgba); 
void set_jrgba_from_boxcolor_index(short index, t_jrgba *jrgba); 
short get_boxcolor_index_from_jrgba(t_jrgba *jrgba); 
void jgraphics_clip_rgba(t_jrgba *rgba); 

void object_openhelp(t_object *x);
void object_openrefpage(t_object *x);
void object_openquery(t_object *x);

void classname_openhelp(char *classname);
void classname_openrefpage(char *classname);
void classname_openquery(char *classname); 

t_object* patcherview_findpatcherview(int x, int y);		// find a patcherview at the given screen coords

void patcherview_makepalette(void);							// initialize object palette -- separated so it can be moved to optimize startup experience

// Utilities to get/set patcher attributes
int jpatcher_is_patcher(t_object *p);		// is it a jpatcher? 
t_object* jpatcher_get_box(t_object *p);			// If patcher is inside a box
long jpatcher_get_count(t_object *p);				// number of boxes in the patcher
char jpatcher_get_locked(t_object *p); 
char jpatcher_get_presentation(t_object *p);
t_max_err jpatcher_set_locked(t_object *p, char c); 
t_max_err jpatcher_set_presentation(t_object *p, char c);
t_object* jpatcher_get_firstobject(t_object *p);	// first box
t_object* jpatcher_get_lastobject(t_object *p);		
t_object* jpatcher_get_firstline(t_object *p);	
t_object* jpatcher_get_firstview(t_object *p);	
t_symbol* jpatcher_get_title(t_object *p);			// patcher title
t_max_err jpatcher_set_title(t_object *p, t_symbol *ps);
t_symbol* jpatcher_get_name(t_object *p);			// patcher name
t_symbol* jpatcher_get_filepath(t_object *p);
t_symbol* jpatcher_get_filename(t_object *p); 
char jpatcher_get_dirty(t_object *p);
t_max_err jpatcher_set_dirty(t_object *p, char c);
char jpatcher_get_bglocked(t_object *p);
t_max_err jpatcher_set_bglocked(t_object *p, char c);
char jpatcher_get_bghidden(t_object *p);
t_max_err jpatcher_set_bghidden(t_object *p, char c);
char jpatcher_get_fghidden(t_object *p);
t_max_err jpatcher_set_fghidden(t_object *p, char c);
t_object* jpatcher_get_font(t_object *p);
t_max_err jpatcher_get_editing_bgcolor(t_object *p, t_jrgba *prgba);
t_max_err jpatcher_set_editing_bgcolor(t_object *p, t_jrgba *prgba);
t_max_err jpatcher_get_bgcolor(t_object *p, t_jrgba *prgba);
t_max_err jpatcher_set_bgcolor(t_object *p, t_jrgba *prgba);
t_max_err jpatcher_get_gridsize(t_object *p, double *gridsizeX, double *gridsizeY);
t_max_err jpatcher_set_gridsize(t_object *p, double gridsizeX, double gridsizeY);
t_object* jpatcher_get_controller(t_object *p);
t_object* jpatcher_get_parentpatcher(t_object *p);
t_object* jpatcher_get_toppatcher(t_object *p);
t_symbol* jpatcher_get_maxclass(t_object *p);
t_symbol* jpatcher_get_parentclass(t_object *p); 
t_max_err jpatcher_get_rect(t_object *p, t_rect *pr);
t_max_err jpatcher_set_rect(t_object *p, t_rect *pr);
t_max_err jpatcher_get_defrect(t_object *p, t_rect *pr);
t_max_err jpatcher_set_defrect(t_object *p, t_rect *pr);
char jpatcher_get_noedit(t_object *p); 
t_object *jpatcher_get_collective(t_object *p); 
char jpatcher_get_cansave(t_object *p); 
t_symbol *jpatcher_uniqueboxname(t_object *p, t_symbol *classname);
short jpatcher_getboxfont(t_object *p, short fnum, double *fsize, t_symbol **fontname);
t_symbol *jpatcher_get_default_fontname(t_object *p);
float jpatcher_get_default_fontsize(t_object *p);
long jpatcher_get_default_fontface(t_object *p);
t_max_err jpatcher_set_imprint(t_object *p, char c);
char jpatcher_get_imprint(t_object *p);
void jpatcher_addboxlistener(t_object *p, t_object *listener);
void jpatcher_removeboxlistener(t_object *p, t_object *listener);

long jpatcher_get_fileversion(t_object *p);
long jpatcher_get_currentfileversion(void);

// Utilities to get/set box attributes 
t_max_err jbox_get_rect_for_view(t_object *box, t_object *patcherview, t_rect *rect);
t_max_err jbox_set_rect_for_view(t_object *box, t_object *patcherview, t_rect *rect);
t_max_err jbox_get_rect_for_sym(t_object *box, t_symbol *which, t_rect *pr); 
t_max_err jbox_set_rect_for_sym(t_object *box, t_symbol *which, t_rect *pr); 

t_max_err jbox_set_rect(t_object *box, t_rect *pr);		
t_max_err jbox_get_patching_rect(t_object *box, t_rect *pr);		 
t_max_err jbox_set_patching_rect(t_object *box, t_rect *pr);		 
t_max_err jbox_get_presentation_rect(t_object *box, t_rect *pr); 
t_max_err jbox_set_presentation_rect(t_object *box, t_rect *pr); 

t_max_err jbox_set_position(t_object *box, t_pt *pos);				// sets both patching and presentation position
t_max_err jbox_get_patching_position(t_object *box, t_pt *pos);	 
t_max_err jbox_set_patching_position(t_object *box, t_pt *pos);		 
t_max_err jbox_get_presentation_position(t_object *box, t_pt *pos); 
t_max_err jbox_set_presentation_position(t_object *box, t_pt *pos); 

t_max_err jbox_set_size(t_object *box, t_size *size);		// sets both patching and presentation size
t_max_err jbox_get_patching_size(t_object *box, t_size *size);	
t_max_err jbox_set_patching_size(t_object *box, t_size *size);		 
t_max_err jbox_get_presentation_size(t_object *box, t_size *size); 
t_max_err jbox_set_presentation_size(t_object *box, t_size *size); 

t_symbol* jbox_get_maxclass(t_object *b);
t_object* jbox_get_object(t_object *b);
t_object* jbox_get_patcher(t_object *b); 
char jbox_get_hidden(t_object *b);
t_max_err jbox_set_hidden(t_object *b, char c);
t_symbol* jbox_get_fontname(t_object *b);
t_max_err jbox_set_fontname(t_object *b, t_symbol *ps); 
double jbox_get_fontsize(t_object *b);
t_max_err jbox_set_fontsize(t_object *b, double d); 
t_max_err jbox_get_color(t_object *b, t_jrgba *prgba); 
t_max_err jbox_set_color(t_object *b, t_jrgba *prgba); 
t_symbol *jbox_get_hint(t_object *b); 
t_max_err jbox_set_hint(t_object *b, t_symbol *s); 
char *jbox_get_hintstring(t_object *bb);
void jbox_set_hintstring(t_object *bb, char *s);
char jbox_get_hinttrack(t_object *b); 
t_max_err jbox_set_hinttrack(t_object *b, char h); 
char *jbox_get_annotation(t_object *bb);
void jbox_set_annotation(t_object *bb, char *s);
t_object* jbox_get_nextobject(t_object *b);
t_object* jbox_get_prevobject(t_object *b);
t_symbol* jbox_get_f(t_object *b);
t_symbol* jbox_get_varname(t_object *b);
t_max_err jbox_set_varname(t_object *b, t_symbol *ps);
t_symbol* jbox_get_id(t_object *b);
char jbox_get_canhilite(t_object *b);
char jbox_get_background(t_object *b);
t_max_err jbox_set_background(t_object *b, char c);
char jbox_get_ignoreclick(t_object *b);
t_max_err jbox_set_ignoreclick(t_object *b, char c);
char jbox_get_drawfirstin(t_object *b);
char jbox_get_outline(t_object *b);
t_max_err jbox_set_outline(t_object *b, char c);
char jbox_get_growy(t_object *b);
char jbox_get_growboth(t_object *b);
char jbox_get_nogrow(t_object *b);
char jbox_get_drawinlast(t_object *b);
char jbox_get_mousedragdelta(t_object *b);
t_max_err jbox_set_mousedragdelta(t_object *b, char c);
t_object* jbox_get_textfield(t_object *b);
long jbox_get_understanding(t_object *b, t_symbol *msg);
char jbox_get_presentation(t_object *b);
t_max_err jbox_set_presentation(t_object *b, char c);
t_object *jbox_get_autocompletion(t_object *b);
t_symbol *jbox_get_prototypename(t_object *b);
void jbox_set_prototypename(t_object *b, t_symbol *name);

long jclipboard_datatypes();

// utilities to get/set patchline attributes
t_max_err jpatchline_get_startpoint(t_object *l, double *x, double *y);
t_max_err jpatchline_get_endpoint(t_object *l, double *x, double *y);
long jpatchline_get_nummidpoints(t_object *l); 
char jpatchline_get_pending(t_object *l); 
t_object* jpatchline_get_box1(t_object *l); 
long jpatchline_get_outletnum(t_object *l);
t_object* jpatchline_get_box2(t_object *l); 
long jpatchline_get_inletnum(t_object *l);
char jpatchline_get_straightthresh(t_object *l);
t_max_err jpatchline_set_straightthresh(t_object *l, char c);
char jpatchline_get_straightstart(t_object *l); 
char jpatchline_get_straightend(t_object *l); 
t_max_err jpatchline_set_straightstart(t_object *l, char c); 
t_max_err jpatchline_set_straightend(t_object *l, char c); 
t_object* jpatchline_get_nextline(t_object *b);
char jpatchline_get_hidden(t_object *l); 
t_max_err jpatchline_set_hidden(t_object *l, char c); 
t_max_err jpatchline_get_color(t_object *l, t_jrgba *prgba); 
t_max_err jpatchline_set_color(t_object *l, t_jrgba *prgba); 
t_object *jpatchline_get_wiretap(t_object *l);
long wiretap_get_id(t_object *w);
long wiretap_get_flags(t_object *w);
void wiretap_set_flags(t_object *w, long n);

// utilities to get/set patcherview attributes
char patcherview_get_visible(t_object *pv); 
t_max_err patcherview_set_visible(t_object *pv, char c); 
t_max_err patcherview_get_rect(t_object *pv, t_rect *pr);
t_max_err patcherview_set_rect(t_object *pv, t_rect *pr);
char patcherview_get_locked(t_object *p); 
t_max_err patcherview_set_locked(t_object *p, char c); 
char patcherview_get_presentation(t_object *pv);
t_max_err patcherview_set_presentation(t_object *p, char c);
double patcherview_get_zoomfactor(t_object *pv); 
t_max_err patcherview_set_zoomfactor(t_object *pv, double d); 
t_object* patcherview_get_nextview(t_object *pv); 
t_object* patcherview_get_jgraphics(t_object *pv);
t_max_err patcherview_set_jgraphics(t_object *pv, t_object *po);
t_object* patcherview_get_patcher(t_object *pv); 

// utilities to get/set textfield attributes
t_object* textfield_get_owner(t_object *tf);
t_max_err textfield_get_textcolor(t_object *tf, t_jrgba *prgba); 
t_max_err textfield_set_textcolor(t_object *tf, t_jrgba *prgba); 
t_max_err textfield_get_bgcolor(t_object *tf, t_jrgba *prgba); 
t_max_err textfield_set_bgcolor(t_object *tf, t_jrgba *prgba); 
t_max_err textfield_get_textmargins(t_object *tf, double *pleft, double *ptop,
												  double *pright, double *pbottom);
t_max_err textfield_set_textmargins(t_object *tf, double left, double top,
												  double right, double bottom); 
char textfield_get_editonclick(t_object *tf);
t_max_err textfield_set_editonclick(t_object *tf, char c); 
char textfield_get_selectallonedit(t_object *tf);
t_max_err textfield_set_selectallonedit(t_object *tf, char c); 
char textfield_get_noactivate(t_object *tf);
t_max_err textfield_set_noactivate(t_object *tf, char c); 
char textfield_get_readonly(t_object *tf);
t_max_err textfield_set_readonly(t_object *tf, char c); 
char textfield_get_wordwrap(t_object *tf);
t_max_err textfield_set_wordwrap(t_object *tf, char c); 
char textfield_get_useellipsis(t_object *tf);
t_max_err textfield_set_useellipsis(t_object *tf, char c); 
char textfield_get_autoscroll(t_object *tf);
t_max_err textfield_set_autoscroll(t_object *tf, char c); 
char textfield_get_wantsreturn(t_object *tf);
t_max_err textfield_set_wantsreturn(t_object *tf, char c); 
char textfield_get_wantstab(t_object *tf);
t_max_err textfield_set_wantstab(t_object *tf, char c); 
char textfield_get_underline(t_object *tf);
t_max_err textfield_set_underline(t_object *tf, char c);
char textfield_get_autofixwidth(t_object *tf);
t_max_err textfield_set_autofixwidth(t_object *tf, char c); 
t_max_err textfield_set_emptytext(t_object *tf, t_symbol *txt);
t_symbol *textfield_get_emptytext(t_object *tf);

// jbox flags
// flags passed to box_new

// The following flags affect how the boxes are drawn 
#define JBOX_DRAWFIRSTIN		(1<<0)			// draw first inlet
#define JBOX_NODRAWBOX			(1<<1)			// don't draw the frame  
#define JBOX_DRAWINLAST			(1<<2)			// draw inlets after update method 
#define JBOX_TRANSPARENT		(1<<3)			// don't make transparent unless you need it (for efficiency)

// Box growing: nogrow is clear -- box is not sizable. 
// Default (none of following three flags) means box width is only sizable.
// JBOX_GROWY means that X and Y are sizable and the aspect ratio is fixed (or maybe it has to be square, like dial?).  
// JBOX_GROWBOTH means that X and Y are independently sizable.  
#define JBOX_NOGROW				(1<<4)			// don't even draw grow thingie 
#define JBOX_GROWY				(1<<5)			// can grow in y direction by dragging (
#define JBOX_GROWBOTH			(1<<6)			// can grow independently in both x and y 

// Box interaction
#define JBOX_IGNORELOCKCLICK	(1<<7)			// box should ignore a click if patcher is locked 
#define JBOX_HILITE				(1<<8)			// object can be hilited (focus) by clicking on it 
#define JBOX_BACKGROUND			(1<<9)			// immediately set box into the background
#define JBOX_NOFLOATINSPECTOR	(1<<10)			// no floating inspector window

// textfield: give this flag for automatic textfield support
#define JBOX_TEXTFIELD			(1<<11)			// save/load text from textfield, unless JBOX_BINBUF flag is set
#define JBOX_FIXWIDTH			(1<<19)			// give the box a textfield based fix-width (bfixwidth) method
#define JBOX_FONTATTR			(1<<18)			// if you want font related attribute you must add this to jbox_initclass()
#define JBOX_BINBUF				(1<<14)			// save/load text from b_binbuf

#define JBOX_MOUSEDRAGDELTA		(1<<12)			// hides mouse cursor in drag and sends mousedragdelta instead of mousedrag (for infinite scrolling like number)

#define JBOX_COLOR				(1<<13)			// support the "color" method for color customization
#define JBOX_DRAWIOLOCKED		(1<<15)			// draw inlets and outlets when locked (default is not to draw them)
#define JBOX_DRAWBACKGROUND		(1<<16)			// set to have box bg filled in for you based on getdrawparams method or brgba attribute
#define JBOX_NOINSPECTFIRSTIN	(1<<17)			// flag for objects such as bpatcher that have a different b_firstin,
												// but the attrs of the b_firstin should not be shown in the inspector
#define JBOX_DEFAULTNAMES		(1<<18)			// flag instructing jbox_new to attach object to the defaults object for live defaults updating

// actual numerical values of the b_fontface attribute; use jbox_fontface to weight
enum {
	JBOX_FONTFACE_REGULAR = 0,
	JBOX_FONTFACE_BOLD = 1,
	JBOX_FONTFACE_ITALIC = 2,
	JBOX_FONTFACE_BOLDITALIC = 3
};

// The following two are not needed in the new world. 
// #define JBOX_MOVING				8			// object invalidates outside its defined clipping region		
// #define JBOX_SAVVY				2048		// calls box_enddraw after box_nodraw returns false

// enumerations used for box decorators
typedef enum _HitTestResult {
	HitNothing = 0,		// a hole in the box
	HitBox = 1,			// the body of the box
	HitInlet = 2,		// an inlet
	HitOutlet = 3,
	HitGrowBox = 4,
	HitLine = 5
} HitTestResult;

typedef enum _DecoratorPaintFlags {
	BoxSelected = 1 << 0,
	DrawFirstIn = 1 << 1,
	NoGrow = 1 << 2,
	Outline = 1 << 3, 
	Locked = 1 << 4,
	InletHighlighted = 1 << 5,			// value tells index of highlighted inlet
	OutletHighlighted = 1 << 6			// value tells index of highlighted outlet  (only one can be highlighted)
} DecoratorPaintFlags;

// UI object functions for implementing your own UI objects
void jbox_initclass(t_class *c, long flags);  
t_max_err jbox_new(t_jbox *b, long flags, long argc, t_atom *argv);
void jbox_free(t_jbox *b);		// to be called from your UI object free function (inside freeobject)
void jbox_ready(t_jbox *b);

void jbox_redraw(t_jbox *b);
void jbox_redrawcontents(t_jbox *b); 
void *jbox_getoutlet(t_jbox *x, long index);
void *jbox_getinlet(t_jbox *x, long index);
void jbox_updatetextfield(t_jbox *b);
t_max_err jbox_notify(t_jbox *b, t_symbol *s, t_symbol *msg, void *sender, void *data);
t_max_err jbox_set_to_defaultsize(t_jbox *b, t_symbol *s, short argc, t_atom *argv);

void jbox_grabfocus(t_jbox *b); 
void jbox_redrawpeers(t_jbox *b);
long jbox_getinletindex(t_jbox *b, void *inlet);
long jbox_getoutletindex(t_jbox *b, void *outlet);
void jbox_show_caption(t_jbox *b);
void jbox_hide_caption(t_jbox *b);

// utility
t_max_err object_attach_byptr(void *x, void *registeredobject);
t_max_err object_detach_byptr(void *x, void *registeredobject);

// dictionary stuff
#define DICT_JRGBA 1	// convert RGB to jrgba when storing/retrieving from dictionary
t_max_err dictionary_appendrgbcolor(t_dictionary *d, t_symbol *key, RGBColor *rgb, long flags);
t_max_err dictionary_appendjrgba(t_dictionary *d, t_symbol *key, t_jrgba *jc);
t_max_err dictionary_getdefjrgba(t_dictionary *d, t_symbol *key, t_jrgba *jc, t_jrgba *def);
t_max_err dictionary_getdefrgbcolor(t_dictionary *d, t_symbol *key, RGBColor *c, RGBColor *def, long flags);
t_max_err dictionary_gettrect(t_dictionary *d, t_symbol *key, t_rect *rect);
t_max_err dictionary_appendtrect(t_dictionary *d, t_symbol *key, t_rect *rect);
t_max_err dictionary_getqdrect(t_dictionary *d, t_symbol *key, Rect *rect);
t_max_err dictionary_appendqdrect(t_dictionary *d, t_symbol *key, Rect *rect);
t_max_err dictionary_gettpt(t_dictionary *d, t_symbol *key, t_pt *pt);
t_max_err dictionary_appendtpt(t_dictionary *d, t_symbol *key, t_pt *pt);

void atomstorgb(long argc, t_atom *argv, RGBColor *dest, long flags);
void atomstojrgba(long argc, t_atom *argv, t_jrgba *dest);
void jrgbatoatoms(t_jrgba *src, t_atom *argv);
void rgbtoatoms(RGBColor *src, t_atom *argv, long flags);

// convenience for object-making

t_max_err dictionary_read(char *filename, short path, t_dictionary **d);
t_max_err dictionary_write(t_dictionary *d, char *filename, short path);

#define newobject_fromdictionary_delete(p,d) newobject_fromdictionary(p,d), freeobject((t_object *)d)

#ifdef MAC_VERSION
#define strcmp_case_insensitive strcasecmp
#endif
#ifdef WIN_VERSION
#if _MSC_VER < 1400
#define strcmp_case_insensitive strcmpi
#else
#define strcmp_case_insensitive _strcmpi
#endif
#endif

// enums

typedef enum _modifiers
{
	eCommandKey = 1,
	eShiftKey = 2,
	eControlKey = 4,
	eAltKey = 8,
	eLeftButton = 16,
	eRightButton = 32,
	eMiddleButton = 64,
	ePopupMenu = 128,
	eCapsLock = 256
} t_modifiers;

t_modifiers jkeyboard_getcurrentmodifiers(); 
t_modifiers jkeyboard_getcurrentmodifiers_realtime(); 

// mouse cursor stuff
void jmouse_getposition_global(int *x, int *y);		// screen coords
void jmouse_setposition_global(int x, int y);										     // screen coords
void jmouse_setposition_view(t_object *patcherview, double cx, double cy);				 // patcher canvas coords
void jmouse_setposition_box(t_object *patcherview, t_object *box, double bx, double by);   // patcher canvas coords, relative to a box

typedef enum _jmouse_cursortype {
	JMOUSE_CURSOR_NONE, 
	JMOUSE_CURSOR_ARROW, 
	JMOUSE_CURSOR_WAIT, 
	JMOUSE_CURSOR_IBEAM, 
	JMOUSE_CURSOR_CROSSHAIR, 
	JMOUSE_CURSOR_COPYING,
	JMOUSE_CURSOR_POINTINGHAND,
	JMOUSE_CURSOR_DRAGGINGHAND,
	JMOUSE_CURSOR_RESIZE_LEFTRIGHT,
	JMOUSE_CURSOR_RESIZE_UPDOWN,
	JMOUSE_CURSOR_RESIZE_FOURWAY,
	JMOUSE_CURSOR_RESIZE_TOPEDGE,
	JMOUSE_CURSOR_RESIZE_BOTTOMEDGE,
	JMOUSE_CURSOR_RESIZE_LEFTEDGE,
	JMOUSE_CURSOR_RESIZE_RIGHTEDGE,
	JMOUSE_CURSOR_RESIZE_TOPLEFTCORNER,
	JMOUSE_CURSOR_RESIZE_TOPRIGHTCORNER,
	JMOUSE_CURSOR_RESIZE_BOTTOMLEFTCORNER,
	JMOUSE_CURSOR_RESIZE_BOTTOMRIGHTCORNER

} t_jmouse_cursortype; 

void jmouse_setcursor(t_object *patcherview, t_object *box, t_jmouse_cursortype type);

// get current active jwind, if any
t_object* jwind_getactive(void);

long jwind_getcount(void);					// how many windows exist? 
t_object* jwind_getat(long index);			// get window at index (0 to count-1).

t_symbol* jwind_nextuntitled();				// get next Untitled document number (i.e. "Untitled 1", etc). 

// functions to enumerate displays
long jmonitor_getnumdisplays();  // how many monitors do we have
void jmonitor_getdisplayrect(long workarea, long displayindex, t_rect *rect);	// primary monitor has index 0
void jmonitor_getdisplayrect_foralldisplays(long workarea, t_rect *rect);			// get union of all display rects
void jmonitor_getdisplayrect_forpoint(long workarea, t_pt pt, t_rect *rect);	// set workarea non-zero to clip out things like dock / task bar

// color support
void swatches_init(void);
void swatches_shutdown(void);

#define JPATCHER_DEFAULT_EXTENSION ".maxpat"

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(pop)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack()
#endif

END_USING_C_LINKAGE

#endif // #ifndef _JPATCHER_API_H_

