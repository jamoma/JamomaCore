
#ifndef _JGRAPHICS_H_
#define _JGRAPHICS_H_

BEGIN_USING_C_LINKAGE

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(push, 2)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack(2)
#endif

// opaque types for the users of jgraphics
#ifdef __cplusplus
struct t_jgraphics;
struct t_jpath;
struct t_jpattern;
struct t_jfont;
struct t_jtextlayout;
struct t_jtransform;
struct t_jsurface;
struct t_jpopupmenu; 
struct t_jsvg; 
#else 
typedef struct _jgraphics	t_jgraphics;
typedef struct _jpath		t_jpath;
typedef struct _jpattern	t_jpattern;
typedef struct _jfont		t_jfont;
typedef struct _jtextlayout	t_jtextlayout;
typedef struct _jtransform	t_jtransform;
typedef struct _jsurface	t_jsurface; 
typedef struct _jsvg		t_jsvg; 
// popup menus
typedef struct _jpopupmenu	t_jpopupmenu;
#endif

// colors

// perhaps we want to have a table of colors ready to use? 
extern t_jrgb s_jrgb_white;
extern t_jrgb s_jrgb_black;
extern t_jrgb s_jrgb_red;
extern t_jrgb s_jrgb_green;
extern t_jrgb s_jrgb_blue; 
extern t_jrgb s_jrgb_yellow;
extern t_jrgb s_jrgb_cyan;
extern t_jrgb s_jrgb_magenta; 
extern t_jrgb s_jrgb_gray; 
extern t_jrgb s_jrgb_boxgray; 

#define JGRAPHICS_RECT_BOTTOM(rect)		(((rect)->y)+((rect)->height))
#define JGRAPHICS_RECT_RIGHT(rect)		(((rect)->x)+((rect)->width))

#define JGRAPHICS_PI		(3.1415926535897932384626433832795028842)
#define JGRAPHICS_2PI		(2. * 3.1415926535897932384626433832795028842)
#define JGRAPHICS_PIOVER2  (0.5 * 3.1415926535897932384626433832795028842)

// misc utilities
int jgraphics_round(double d); 

// surfaces

typedef enum _jgraphics_format {
	JGRAPHICS_FORMAT_ARGB32,
	JGRAPHICS_FORMAT_RGB24,
	JGRAPHICS_FORMAT_A8// ,
//	JGRAPHICS_FORMAT_A1		// not supported 
} t_jgraphics_format; 

typedef enum _jgraphics_fileformat {
	JGRAPHICS_FILEFORMAT_PNG,
	JGRAPHICS_FILEFORMAT_JPEG
} t_jgraphics_fileformat;

// image surfaces -- offscreen bitmaps
t_jsurface* jgraphics_image_surface_create(t_jgraphics_format format,
										   int width, 
										   int height);
t_jsurface *jgraphics_image_surface_create_referenced(const char *filename, short path);
t_jsurface* jgraphics_image_surface_create_from_file(const char *filename, short path);
// note: data should point to start of top line of bitmap, stride tells how to get to next line. 
// for upside down windows bitmaps, data = (pBits-(height-1)*stride) and stride is a negative number.
t_jsurface* jgraphics_image_surface_create_for_data(unsigned char *data, t_jgraphics_format format,		// i.e. RGBA image loaded in memory
													int width, int height, int stride, 
													method freefun, void *freearg);		// if not null, freefun(freearg) will be called when surface is destroyed
t_jsurface* jgraphics_image_surface_create_for_data_premult(unsigned char *data, t_jgraphics_format format, 
													int width, int height, int stride, 
													method freefun, void *freearg);
t_jsurface* jgraphics_image_surface_create_from_filedata(const void *data, unsigned long datalen);	// i.e. PNG or JPG raw bits
t_jsurface* jgraphics_image_surface_create_from_resource(const void* moduleRef, const char *resname);
t_jsurface*	jgraphics_surface_reference(t_jsurface *s);		
void		jgraphics_surface_destroy(t_jsurface *s);		

t_max_err	jgraphics_image_surface_writepng(t_jsurface *surface, const char *filename, short path, long dpi); 

void		jgraphics_surface_set_device_offset(t_jsurface *s, double x_offset, double y_offset); 
void		jgraphics_surface_get_device_offset(t_jsurface *s, double *x_offset, double *y_offset); 
int			jgraphics_image_surface_get_width(t_jsurface *s);
int			jgraphics_image_surface_get_height(t_jsurface *s); 
void		jgraphics_image_surface_set_pixel(t_jsurface *s, int x, int y, t_jrgba color); 
void		jgraphics_image_surface_get_pixel(t_jsurface *s, int x, int y, t_jrgba *color);

void		jgraphics_image_surface_scroll(t_jsurface *s, 
										   int x, int y, int width, int height, 
										   int dx, int dy, 
										   t_jpath **path);		// return a path containing the invalid region

const unsigned char* jgraphics_image_surface_lockpixels_readonly(t_jsurface *s,
																 int x, int y, int width, int height, 
																 int *linestride, int *pixelstride);
void				 jgraphics_image_surface_unlockpixels_readonly(t_jsurface *s, const unsigned char *data); 

unsigned char*		 jgraphics_image_surface_lockpixels(t_jsurface *s, 
													    int x, int y, int width, int height,
													    int *linestride, int *pixelstride);
void				 jgraphics_image_surface_unlockpixels(t_jsurface *s, unsigned char *data); 

// the following is not in cairo, but, it seems silly to have to make a brush to just draw an image.
// or, maybe I'm missing something. This doesn't support rotations, however.
void		jgraphics_image_surface_draw(t_jgraphics *g, t_jsurface *s, t_rect srcRect, t_rect destRect);

// The draw_fast version won't scale based on zoom factor or user transforms so make sure that this is what you want!
// draws entire image, origin *can* be shifted via zoom and user transforms
// (even though image is not scaled based on those same transforms)
void		jgraphics_image_surface_draw_fast(t_jgraphics *g, t_jsurface *s);		

void jgraphics_write_image_surface_to_filedata(t_jsurface *surf, long fmt, void **data, long *size);

// sets all pixels in rect to 0

void jgraphics_image_surface_clear(t_jsurface *s, int x, int y, int width, int height);


// SVG Stuff
t_jsvg*		jsvg_create_from_file(const char *filename, short path); 
t_jsvg*		jsvg_create_from_resource(const void *moduleRef, const char *resname);
t_jsvg*		jsvg_create_from_xmlstring(const char *svgXML); 
void		jsvg_get_size(t_jsvg *svg, double *width, double *height); 
void		jsvg_destroy(t_jsvg *svg); 
void		jsvg_render(t_jsvg *svg, t_jgraphics *g); 

// use the following to create a context to draw on a particular surface
t_jgraphics*	jgraphics_create(t_jsurface *target); 
t_jgraphics*	jgraphics_reference(t_jgraphics *g); 
void			jgraphics_destroy(t_jgraphics *g);	

// Paths
void		jgraphics_new_path(t_jgraphics *g);		// clears current path
t_jpath*	jgraphics_copy_path(t_jgraphics *g);	// copy the current path
void		jgraphics_path_destroy(t_jpath *path); 
void		jgraphics_append_path(t_jgraphics *g, t_jpath *path);
void		jgraphics_close_path(t_jgraphics *g);	// adds line segment to close current subpath. 
void		jgraphics_path_roundcorners(t_jgraphics *g, double cornerRadius); // round out any corners in the path

void		jgraphics_get_current_point(t_jgraphics *g, double *x, double *y); 

// arc goes clockwise, arc_negative goes counter-clockwise
// For arc(arc_negative) angle2 will be adjusted by increments(decrements) of 2PI so it is bigger(smaller) than angle1.
// zero radians is center right (positive x axis)
void		jgraphics_arc(t_jgraphics *g, 
						  double xc, double yc,					// x,y of center of the arc
						  double radius,						// radius of the arc
						  double angle1, double angle2);		// angles are in radians
// so we can draw non-circular arcs						  
void		jgraphics_ovalarc(t_jgraphics *g, 
				   double xc, double yc,					// x,y of center of the arc
				   double radiusx, double radiusy,				// radius of the arc
				   double angle1, double angle2);			// angles are in radians

void		jgraphics_arc_negative(t_jgraphics *g, 
						  double xc, double yc,					// x,y of center of the arc
						  double radius,						// radius of the arc
						  double angle1, double angle2);		// angles are in radians

void		jgraphics_curve_to(t_jgraphics *g,			// cubic Bezier spline 
							   double x1, double y1,	// first control point
							   double x2, double y2,	// second control point
							   double x3, double y3);	// destination point

void		jgraphics_rel_curve_to(t_jgraphics *g, 
								   double x1, double y1,	// first control point
								   double x2, double y2,	// second control point
								   double x3, double y3);	// destination point

void		jgraphics_line_to(t_jgraphics *g, 
							  double x, double y);		

 void		jgraphics_rel_line_to(t_jgraphics *g, double x, double y);

void		jgraphics_move_to(t_jgraphics *g,		
							  double x, double y);		

void		jgraphics_rel_move_to(t_jgraphics *g, double x, double y); 

void		jgraphics_rectangle(t_jgraphics *g,			
								double x, double y,
								double width, double height);

void		jgraphics_oval(t_jgraphics *g,	
								double x, double y,
								double width, double height);

void		jgraphics_rectangle_rounded(t_jgraphics *g,
										double x, double y,
										double width, double height,
										double ovalwidth, double ovalheight);

void		jgraphics_ellipse(t_jgraphics *g, 
							  double x, double y, 
							  double width, double height);

void jgraphics_diagonal_line_fill(t_jgraphics *g, double pixels, double x, double y, double width, double height);

// need to add glyph stuff and stuff for adding glyphs to a path. 

typedef enum _jgraphics_font_slant {
	JGRAPHICS_FONT_SLANT_NORMAL,
	JGRAPHICS_FONT_SLANT_ITALIC //,
	// JGRAPHICS_FONT_SLANT_OBLIQUE		
} t_jgraphics_font_slant;

typedef enum _jgraphics_font_weight {
	JGRAPHICS_FONT_WEIGHT_NORMAL,
	JGRAPHICS_FONT_WEIGHT_BOLD
} t_jgraphics_font_weight;

void		jgraphics_select_font_face(t_jgraphics *g, 
									   const char *family,
									   t_jgraphics_font_slant slant,
									   t_jgraphics_font_weight weight);

void		jgraphics_select_jfont(t_jgraphics *g, t_jfont *jfont); 

void		jgraphics_set_font_size(t_jgraphics *g, double size);
void		jgraphics_set_underline(t_jgraphics *g, char underline);

void		jgraphics_show_text(t_jgraphics *g, const char *utf8); 

typedef struct _jgraphics_font_extents {
	double ascent;
	double descent;
	double height;
	double max_x_advance;
	double max_y_advance; 
} t_jgraphics_font_extents;

void		jgraphics_font_extents(t_jgraphics *g, t_jgraphics_font_extents *extents);		// extents of currently selected font

// get height and width of a string given current graphics settings
void		jgraphics_text_measure(t_jgraphics *g, const char *utf8, double *width, double *height);
void		jgraphics_text_measure_wrapped(t_jgraphics *g, const char *utf8, double wrapwidth, long includewhitespace,
										   double *width, double *height, long *numlines); 
										   
double jgraphics_getfontscale(void);

// Working with fonts directly
t_jfont*	jfont_create_from_maxfont(short number, short size);
t_jfont*	jfont_create(const char *family,
						 t_jgraphics_font_slant slant,
					     t_jgraphics_font_weight weight,
						 double size); 
t_jfont*	jfont_reference(t_jfont *font); 
void		jfont_destroy(t_jfont *font); 

void		jfont_set_font_size(t_jfont *font, double size);
void		jfont_set_underline(t_jfont *font, char ul);

double		jfont_get_heighttocharheightratio(t_jfont *font); 

void		jfont_extents(t_jfont *font, t_jgraphics_font_extents *extents);	// get extents of this font
void		jfont_text_measure(t_jfont *font, const char *utf8, double *width, double *height);
void		jfont_text_measure_wrapped(t_jfont *font, const char *utf8, double wrapwidth, long includewhitespace,
									   double *width, double *height, long *numlines); 
t_max_err	jfont_getfontlist(long *count, t_symbol ***list);
void		jfont_set_juce_default_fontname(char *s);
void		jfont_copy_juce_default_fontname(char *s, long maxlen);
void		jfont_copy_juce_platform_fontname(char *s, long maxlen);
void		jfont_set_juce_fallback_fontname(char *s);
void		jfont_copy_juce_fallback_fontname(char *s, long maxlen);

// you might want to call this and then disable "useimagebuffer" if false *and*
// you are rendering text on a transparent background. 
long jgraphics_system_canantialiastexttotransparentbg(); 

long jgraphics_fontname_hasglyph(char *name, long code);

t_jtextlayout*	jtextlayout_create(); 

// This gives a hint to the textlayout as to what the text bgcolor will be
// it won't actually paint the bg for you.  But, it does let it do a better job.
t_jtextlayout*	jtextlayout_withbgcolor(t_jgraphics *g, t_jrgba *bgcolor); 

void			jtextlayout_destroy(t_jtextlayout* textlayout); 

typedef enum _jgraphics_text_justification {
	JGRAPHICS_TEXT_JUSTIFICATION_LEFT = 1,		
	JGRAPHICS_TEXT_JUSTIFICATION_RIGHT = 2,
	JGRAPHICS_TEXT_JUSTIFICATION_HCENTERED = 4,
	JGRAPHICS_TEXT_JUSTIFICATION_TOP = 8, 
	JGRAPHICS_TEXT_JUSTIFICATION_BOTTOM = 16,
	JGRAPHICS_TEXT_JUSTIFICATION_VCENTERED = 32,
	JGRAPHICS_TEXT_JUSTIFICATION_HJUSTIFIED = 64,
	JGRAPHICS_TEXT_JUSTIFICATION_CENTERED = JGRAPHICS_TEXT_JUSTIFICATION_HCENTERED + JGRAPHICS_TEXT_JUSTIFICATION_VCENTERED
} t_jgraphics_text_justification;

typedef enum _jgraphics_textlayout_flags {
	JGRAPHICS_TEXTLAYOUT_NOWRAP = 1,		// disable word wrapping
	JGRAPHICS_TEXTLAYOUT_USEELLIPSIS = 3	// show ... if a line doesn't fit (implies NOWRAP too)
} t_jgraphics_textlayout_flags;

void			jtextlayout_set(t_jtextlayout *textlayout, 
								const char *utf8, 
								t_jfont *jfont, 
								double x, double y,  // text is placed within rect specified by x,y,width,height
								double width,		 // using justification flags passed in
								double height, 
								t_jgraphics_text_justification justification,
								t_jgraphics_textlayout_flags flags); 

void			jtextlayout_settextcolor(t_jtextlayout *textlayout, t_jrgba *textcolor); 

void			jtextlayout_measure(t_jtextlayout *textlayout, 
									long startindex,					// can measure a subset of the characters
									long numchars,						// -1 for all characters from startindex to end
									long includewhitespace,				// measure with or without whitespace truncated from edges
									double *width, double *height,		// returns width/height of text not including any margins
									long *numlines);

void			jtextlayout_draw(t_jtextlayout *tl, t_jgraphics *g); 
long			jtextlayout_getnumchars(t_jtextlayout *tl); 
t_max_err		jtextlayout_getcharbox(t_jtextlayout *tl, long index, t_rect *rect); 
t_max_err		jtextlayout_getchar(t_jtextlayout *tl, long index, long *pch);  // get unicode character at given index

// Matrix stuff
// given x,y the matrix specifies the following transformation:
// xnew = xx * x + xy * y + x0; 
// ynew = yx * x + yy * y + y0; 
typedef struct {
	double xx;		// xx component
	double yx;		// yx component
	double xy;		// xy component
	double yy;		// yy component
	double x0;		// x translation
	double y0;		// y translation
} t_jmatrix; 

void jgraphics_matrix_init(t_jmatrix *x, double xx, double yx, double xy, double yy, double x0, double y0);
void jgraphics_matrix_init_identity(t_jmatrix *x); 
void jgraphics_matrix_init_translate(t_jmatrix *x, double tx, double ty); 
void jgraphics_matrix_init_scale(t_jmatrix *x, double sx, double sy); 
void jgraphics_matrix_init_rotate(t_jmatrix *x, double radians); 
void jgraphics_matrix_translate(t_jmatrix *x, double tx, double ty); 
void jgraphics_matrix_scale(t_jmatrix *x, double sx, double sy); 
void jgraphics_matrix_rotate(t_jmatrix *x, double radians); 
void jgraphics_matrix_invert(t_jmatrix *x); 
// multiply: resulting matrix has effect of first applying a and then applying b. 
void jgraphics_matrix_multiply(t_jmatrix *result, const t_jmatrix *a, const t_jmatrix *b); 

void jgraphics_matrix_transform_point(const t_jmatrix *matrix, double *x, double *y);  

// Patterns 
t_jpattern*	jgraphics_pattern_create_rgba(double red,	
										  double green,		// colors between 0 and 1
										  double blue,
										  double alpha);	// solid, set alpha to 1.0

t_jpattern*	jgraphics_pattern_create_for_surface(t_jsurface *surface); 

t_jpattern* jgraphics_pattern_create_linear(double x0, double y0, double x1, double y1);
t_jpattern* jgraphics_pattern_create_radial(double cx0, double cy0, double radius0, double cx1, double cy1, double radius1);
void jgraphics_pattern_add_color_stop_rgba(t_jpattern* pattern, double offset, double red, double green, double blue, double alpha); 

t_jpattern *jgraphics_pattern_reference(t_jpattern *pattern);
void		jgraphics_pattern_destroy(t_jpattern *pattern);

typedef enum _jgraphics_pattern_type {
    JGRAPHICS_PATTERN_TYPE_SOLID,
    JGRAPHICS_PATTERN_TYPE_SURFACE,
    JGRAPHICS_PATTERN_TYPE_LINEAR,
    JGRAPHICS_PATTERN_TYPE_RADIAL
} t_jgraphics_pattern_type;

t_jgraphics_pattern_type jgraphics_pattern_get_type(t_jpattern *pattern); 

typedef enum _jgraphics_extend {
	JGRAPHICS_EXTEND_NONE,
    JGRAPHICS_EXTEND_REPEAT,
    JGRAPHICS_EXTEND_REFLECT,		
    JGRAPHICS_EXTEND_PAD			
} t_jgraphics_extend;

// rbs -- JGRAPHICS_EXTEND_NONE for images isn't actually supported yet
#define JGRAPHICS_EXTEND_GRADIENT_DEFAULT JGRAPHICS_EXTEND_PAD
#define JGRAPHICS_EXTEND_SURFACE_DEFAULT JGRAPHICS_EXTEND_NONE

void jgraphics_pattern_set_extend(t_jpattern *pattern, t_jgraphics_extend extend); 
t_jgraphics_extend jgraphics_pattern_get_extend(t_jpattern *pattern); 

void jgraphics_pattern_set_matrix(t_jpattern *pattern, const t_jmatrix *matrix); 
void jgraphics_pattern_get_matrix(t_jpattern *pattern, t_jmatrix *matrix); 

// Transforms
void		jgraphics_translate(t_jgraphics *g, 
								double tx,
								double ty);
void		jgraphics_scale(t_jgraphics *g,
							double sx,
							double sy);
void		jgraphics_rotate(t_jgraphics *g,
							 double angle);
void		jgraphics_transform(t_jgraphics *g, const t_jmatrix *matrix);
void		jgraphics_set_matrix(t_jgraphics *g, const t_jmatrix *matrix);
void		jgraphics_get_matrix(t_jgraphics *g, t_jmatrix *matrix); 
void		jgraphics_identity_matrix(t_jgraphics *g);

// here device really means patcher canvas coordinates, before any zooming
void		jgraphics_user_to_device(t_jgraphics *g, 
									 double *x,
									 double *y);
void		jgraphics_device_to_user(t_jgraphics *g,
									 double *x,
									 double *y);

// Graphics

void		jgraphics_save(t_jgraphics* g);				// doesn't save/restore the path
void		jgraphics_restore(t_jgraphics *g);

t_jsurface* jgraphics_get_target(t_jgraphics *g); 
void jgraphics_push_group(t_jgraphics *g);
t_jpattern* jgraphics_pop_group(t_jgraphics *g); 
void jgraphics_pop_group_to_source(t_jgraphics *g); 
t_jsurface* jgraphics_get_group_target(t_jgraphics *g); 
// jgraphics_pop_group_surface is not in cairo, but equivalent to the following sequence
// jgraphics_get_group_target(), jgraphics_surface_reference(), jgraphics_restore()
t_jsurface* jgraphics_pop_group_surface(t_jgraphics *g); 

// if a t_jpattern source was previously selected, it is removed
void		jgraphics_set_source_rgba(t_jgraphics *g,	
									  double red,
									  double green,
									  double blue, 
									  double alpha);

void		jgraphics_set_source_jrgba(t_jgraphics *g, t_jrgba *rgba); 

void		jgraphics_set_source_rgb(t_jgraphics *g,
									 double red,
									 double green,
									 double blue); 
// if NULL source is passed in will revert to prior solid color. 
void		jgraphics_set_source(t_jgraphics *g,		
								 t_jpattern *source);

// convenience function for creating pattern from surface and making it the source for g
void		jgraphics_set_source_surface(t_jgraphics *g, 
										 t_jsurface *surface, 
										 double x, double y); 

typedef enum _jgraphics_pattern_shared {
	JGRAPHICS_PATTERN_GRAY = 0,
	JGRAPHICS_NUM_SHARED_PATTERNS
} t_jgraphics_pattern_shared;

// We create some standard patterns which are "owned" by the jgraphics library.  
// You can use these as a source for filling or stroking paths.  
// The gray patter above is what is used to put dotted lines around the comment box, and others. 
void		jgraphics_set_source_shared(t_jgraphics *g, t_jgraphics_pattern_shared patindex); 

// color transforms
// each component (rgba) has a scale and offset value as part of the graphics context.
// this is saved and restored with the jgraphics_save and jgraphics_restore calls. 

void		jgraphics_scale_source_rgba(t_jgraphics *g,
										double redscale,			
										double greenscale,
										double bluescale,
										double alphascale);

void		jgraphics_translate_source_rgba(t_jgraphics *g,
											double redoffset,
											double greenoffset,
											double blueoffset,
											double alphaoffset);

void		jgraphics_set_dash(t_jgraphics *g,		
							   double *dashes, 
							   int numdashes,
							   double offset);		// offset not supported yet

typedef enum _jgraphics_fill_rule {
	JGRAPHICS_FILL_RULE_WINDING,
	JGRAPHICS_FILL_RULE_EVEN_ODD
} t_jgraphics_fill_rule;
void		jgraphics_set_fill_rule(t_jgraphics *g,			
									t_jgraphics_fill_rule fill_rule);
t_jgraphics_fill_rule	jgraphics_get_fill_rule(t_jgraphics *g);

typedef enum _jgraphics_line_cap {
	JGRAPHICS_LINE_CAP_BUTT,
	JGRAPHICS_LINE_CAP_ROUND,
	JGRAPHICS_LINE_CAP_SQUARE
} t_jgraphics_line_cap;

void		jgraphics_set_line_cap(t_jgraphics *g, 
								   t_jgraphics_line_cap line_cap);
t_jgraphics_line_cap	jgraphics_get_line_cap(t_jgraphics *g);

typedef enum _jgraphics_line_join {
	JGRAPHICS_LINE_JOIN_MITER,
	JGRAPHICS_LINE_JOIN_ROUND,
	JGRAPHICS_LINE_JOIN_BEVEL
} t_jgraphics_line_join;

void		jgraphics_set_line_join(t_jgraphics *g,
									t_jgraphics_line_join line_join);
t_jgraphics_line_join	jgraphics_get_line_join(t_jgraphics *g);

void		jgraphics_set_line_width(t_jgraphics *g,
									 double width);
double		jgraphics_get_line_width(t_jgraphics *g);

// perhaps someday we could expose something like this
//			jgraphics_set_operator()

void		jgraphics_fill(t_jgraphics *g);
void		jgraphics_fill_preserve(t_jgraphics *g); 

// Note: you can use jgraphics_image_surface_create with a 1x1 offscreen to do path stuff 
//       that isn't actually going to be used for drawing.  
int jgraphics_in_fill(t_jgraphics *g, double x, double y);		// hit test
int	jgraphics_path_intersects_line(t_jgraphics *g, double x1, double y1, double x2, double y2);		// not in cairo

// various utilities
int jgraphics_ptinrect(t_pt pt, t_rect rect); 
int jgraphics_ptinroundedrect(t_pt pt, t_rect rect, double ovalwidth, double ovalheight); 

// get extents of current path in device coordinates (after transform matrix)
void jgraphics_fill_extents(t_jgraphics *g,
							double *x1, double *y1,
							double *x2, double *y2);

// paints current source using alpha of pattern
//void		jgraphics_mask(t_jgraphics *x,
//						   t_jpattern *pattern);

// paints current source using alpha of surface
//void		jgraphics_mask_surface(t_jgraphics *g,
//								   t_jsurface *surface,
//								   double surface_x,	// surface origin
//								   double surface_y);	// surface origin

// paint current source in entire current clip region
void		jgraphics_paint(t_jgraphics *g);		
void		jgraphics_paint_with_alpha(t_jgraphics *g, 
									   double alpha);

void		jgraphics_stroke(t_jgraphics *g);
void		jgraphics_stroke_preserve(t_jgraphics *g);

// fast non antialiasing/rotating versions
void jgraphics_rectangle_fill_fast(t_jgraphics *g, double x, double y, double width, double height);
void jgraphics_rectangle_draw_fast(t_jgraphics *g, double x, double y, double width, double height, double border);
void jgraphics_line_draw_fast(t_jgraphics *g, double x1, double y1, double x2, double y2, double linewidth);

// popup menu API so externals can create popup menus that can also be drawn into
t_jpopupmenu*	jpopupmenu_create(); 
void			jpopupmenu_destroy(t_jpopupmenu *menu);
void			jpopupmenu_clear(t_jpopupmenu *menu); 
void			jpopupmenu_setitemcallback(method fun, void *arg);
void			jpopupmenu_setcolors(t_jpopupmenu *menu,
									 t_jrgba text,
									 t_jrgba bg,
									 t_jrgba highlightedtext,
									 t_jrgba highlightedbg); 
void			jpopupmenu_setheadercolor(t_jpopupmenu *menu, t_jrgba *hc);
void			jpopupmenu_setfont(t_jpopupmenu *menu, t_jfont *font); 
void			jpopupmenu_additem(t_jpopupmenu *menu,
								   int itemid, 
								   const char *utf8Text, 
								   t_jrgba *textColor,		// NULL for default
								   int checked,
								   int disabled,
								   t_jsurface *icon);		// NULL if no image
void			jpopupmenu_addsubmenu(t_jpopupmenu *menu,
									  const char *utf8Name,
									  t_jpopupmenu *submenu,
									  int disabled); 
void			jpopupmenu_addseperator(t_jpopupmenu *menu); 
void			jpopupmenu_addheader(t_jpopupmenu *menu, const char *utf8Text);
// ownerdraw: give a t_object to the menu. 
// it will be sent a paint message to draw itself.
// it will be sent a getsize message to find out the size. 
void			jpopupmenu_addownerdrawitem(t_jpopupmenu *menu,
											int itemid,
											t_object *owner);
int				jpopupmenu_popup(t_jpopupmenu *menu, 
								 t_pt screen,
								 int defitemid);		// initial item id
int				jpopupmenu_popup_abovebox(t_jpopupmenu *menu, t_object *box, t_object *view, int offset, int defitemid);
int				jpopupmenu_popup_nearbox(t_jpopupmenu *menu,
										 t_object *box, t_object *view,
										 int defitemid); 

void jmouse_setcursor_surface(t_object *patcherview, t_object *box, t_jsurface *surface, int xHotSpot, int yHotSpot);	// you can draw to a surface and then turn that into a cursor

// utility funtions and macros for new rgba attribtes and legacy rgb attributes
t_max_err jgraphics_attr_setrgba(t_object *x, t_object *attr, long argc, t_atom *argv);
t_max_err jgraphics_attr_setrgb_alias(t_object *x, t_object *attr, long argc, t_atom *argv);

void jbox_fontface_to_weight_slant(t_object *b, long *weight, long *slant);
long jbox_get_font_weight(t_object *b);
long jbox_get_font_slant(t_object *b);
t_jfont *jbox_createfont(t_object *b);				// create a jfont object for box

#define CLASS_ATTR_RGBA(c,attrname,flags,structname,structmember) \
	{	CLASS_ATTR_DOUBLE_ARRAY(c,attrname,flags,structname,structmember,4); \
		CLASS_ATTR_ACCESSORS(c,attrname,NULL,jgraphics_attr_setrgba); \
		CLASS_ATTR_PAINT(c,attrname,0); }
		
#define CLASS_ATTR_RGBA_LEGACY(c,attrname,aliasname,flags,structname,structmember) \
	{	CLASS_ATTR_RGBA(c,attrname,flags,structname,structmember); \
		CLASS_ATTR_ALIAS(c,attrname,aliasname); \
		CLASS_ATTR_INVISIBLE(c,aliasname,0); \
		CLASS_ATTR_ACCESSORS(c,aliasname,NULL,jgraphics_attr_setrgb_alias); }

t_max_err object_attr_getjrgba(void *ob, t_symbol *s, t_jrgba *c);
t_max_err object_attr_setjrgba(void *ob, t_symbol *s, t_jrgba *c);
void jrgba_to_atoms(t_jrgba *c, t_atom *argv);
t_max_err atoms_to_jrgba(long argc, t_atom *argv, t_jrgba *c);
void jrgba_set(t_jrgba *prgba, double r, double g, double b, double a);

void jrgba_copy(t_jrgba *dest, t_jrgba *src); 

// returns 1 if rgba1 == rgba2
long jrgba_compare(t_jrgba *rgba1, t_jrgba *rgba2);

void jgraphics_getfiletypes(void *dummy, long *count, long **filetypes, char *alloc);

// boxlayer stuff
t_max_err jbox_invalidate_layer(t_object *b, t_object *view, t_symbol *name);
t_max_err jbox_remove_layer(t_object *b, t_object *view, t_symbol *name);
t_jgraphics* jbox_start_layer(t_object *b, t_object *view, t_symbol *name, double width, double height);
t_max_err jbox_end_layer(t_object *b, t_object *view, t_symbol *name);
t_max_err jbox_paint_layer(t_object *b, t_object *view, t_symbol *name, double x, double y);

// simple utility to test rectangle intersection
long jgraphics_rectintersectsrect(t_rect *r1, t_rect *r2);
long jgraphics_rectcontainsrect(t_rect *outer, t_rect *inner);  // returns non-zero if inner rect is completely inside outer rect

void jgraphics_position_one_rect_near_another_rect_but_keep_inside_a_third_rect(
	t_rect *positioned_rect,
	const t_rect *positioned_near_this_rect,
	const t_rect *keep_inside_this_rect); 

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(pop)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack()
#endif

END_USING_C_LINKAGE

#endif // #ifndef _JGRAPHICS_H_

