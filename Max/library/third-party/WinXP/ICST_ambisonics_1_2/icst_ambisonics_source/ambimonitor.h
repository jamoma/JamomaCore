/* 

	ambimonitor.h	GUI object for ambisonic sound spatialisation
					part of the ICST Ambisonics Tools
					
	Copyright (C) 2005 - 2007 ICST Zurich / Philippe Kocher
	
	http://www.icst.net
	

	This library is free software; you can redistribute it and/or
	modify it under the terms of the GNU Lesser General Public
	License as published by the Free Software Foundation; either
	version 2.1 of the License, or (at your option) any later version.
	
	This library is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
	Lesser General Public License for more details.
	
	You should have received a copy of the GNU Lesser General Public
	License along with this library; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
	
	
	2006/07/01 Version 1.2	third outlet added (mouse state, snapshotmenu)
	2006/06/18 Version 1.1	minor bugfixes, ported to PC, font and zoom added
	2006/03/27 Version 1.0	initial release

*/

#ifndef __AMBIMONITOR_H__
#define __AMBIMONITOR_H__


#include "ext.h"
#include "ext_common.h"
#include "ext_strings.h"
#include <math.h>
#include <stdlib.h>

// not necessary under Xcode 2.4
//	#include <Quickdraw.h>
//	#include <QDOffscreen.h>

	#include "ext_qtstubs.h"
	
#ifdef WIN_VERSION
	#include <Quickdraw.h>
	#include <QDOffscreen.h>
	#define	SetRect		MacSetRect
	#define	FrameRect	MacFrameRect
	#define	LineTo		MacLineTo
	#define DrawText	MacDrawText
#endif



#define RADIUS 3
#define FONTSIZE 9	
#define MAXPOINTS 64
#define PI 3.141593


// default colors

RGBColor POINTColor	= {0, 0, 0};
RGBColor NAMEColor 	= {0, 0, 0};
RGBColor COORDColor	= {0, 0, 0};
RGBColor LINEColor	= {60000, 60000, 30000};			// lines
	
RGBColor CIRCLEColor	 = {50000, 50000, 50000};		// radar
RGBColor BACKGROUNDColor = {65535, 65535, 65535};
	
RGBColor GRIDColor 		= {45000, 45000, 62000};		// grid
RGBColor HI_GRIDColor 	= {30000, 30000, 65535};

RGBColor RECTColor	= {60000, 60000, 60000};			// selection rect


// standard colors

RGBColor BLACK = {0,0,0};
RGBColor WHITE = {65535, 65535, 65535};
RGBColor OPAQUE_POINT  = {13107, 13107, 13107};			// 20% transparent
RGBColor OPAQUE_BOX  = {13107, 13107, 13107};			// 20% transparent


//___________________________________________________________________________________________________________________________

// data structures
typedef struct ambi_point
{
	double	x, y, z;
	double	a, e, d;
	short	status;
	short	selected, sel;
	char	name[16];
} ambi;

typedef struct additional_graphics
{
	short	 type;				// 1 = box, 2 = trajectory graph
	struct additional_graphics *next, *prev;	// linked list
	RGBColor *color;
	double	 **data;			// pointer to data
	long	 *number;
} add_gr;

typedef struct ambi_coords
{
	double	x, y, z;
	double	a, e, d;
	short	number;
	char	name[16];
} coords;

typedef struct ambi_snapshot
{
	char	*index;					// no matter if number or string
	short	num_of_points;
	short	time, mode;				// interpolation: -1 if n/a
	struct	ambi_snapshot	*prev, *next;
	coords	data[1];
} snapshot;

typedef struct _monitor
{
	t_box		m_box;
	ambi		coord[MAXPOINTS];			
	void 		*m_qelem;							// queue element used for redraw

#ifdef WIN_VERSION
	GWorldPtr	offscreen;							// offscreen drawing
	Rect		offrect;
#endif

	void 		*outlet1, *outlet2, *outlet3;
	snapshot 	*first_snapshot, *last_snapshot, *target_snapshot;	// pointer to snapshot data
	void		*clock;								// pointer to clock object (used for interpolation)
	t_patcher	*patcher;							// pointer to owning patcher
	add_gr		*additional_graphics;

// options

	long 		h_size;					// horizontal box size
	char		name[32];				// object name
	
	short		mode, numbers, coordinates, lines, grid, offset, precision;
	bool		local, enablekeys;
	t_atom		mousestate;
	short		fontsize, fontnum;

// zoom

	double		zoom_factor, zoom_focal_point_x, zoom_focal_point_y;

// interpolation

	short		interpol_time, time_interval, interpol_mode;
	short		remaining_time, actual_interp_mode;

// grid

	double		nudgeunit_xyz, nudgeunit_a, nudgeunit_d;
	double		gridunit_xyz, gridunit_d;
	long		gridunit_ae;

// colors

	RGBColor 	point_color;						// = rgb1
	RGBColor	name_color;							// = rgb2
	RGBColor	coord_color;						// = rgb3
	RGBColor	line_color;							// = rgb4

	RGBColor 	circle_color;						// = rgb5
	RGBColor 	background_color;					// = rgb6

	RGBColor 	grid_color;							// = rgb7
	RGBColor 	hi_grid_color;						// = rgb8

	RGBColor 	rect_color;							// 

// etc...

	short		h_mouse, v_mouse;					// buffer for mouse coordinates
	short		rectangle[4], sel_rect;
	short		new_number, new_snapshot, rcl_snapshot, snapshot_num, first_digit;
} t_monitor;

//___________________________________________________________________________________________________________________________

// prototypes

// object creation
void *monitor_new(t_symbol *s, short ac, t_atom *av);
void *monitor_menu(t_patcher *p, long x, long y, long font);

// graphics
void monitor_redraw(t_monitor *x);
void monitor_update(t_monitor *x);
void monitor_do_update(t_monitor *x);

#ifdef WIN_VERSION
void monitor_alloc_offscreen(t_monitor *x);
#endif

// messages sent by ambicontrol
void monitor_output_coord(t_monitor *x, short n);
void monitor_update_graphics(t_monitor *x);
void monitor_add_graph_new(t_monitor *x, short n, RGBColor *color, double **data, long *number);
void monitor_add_graph_remove(t_monitor *x, void **data);

// object name
void monitor_name(t_monitor *x);

// coordinate input
void monitor_xyz_input(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_aed_input(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_set_input(t_monitor *x, t_symbol *s, short ac, t_atom *av);

// coordinate output
void monitor_output(t_monitor *x, short n);
void monitor_dump(t_monitor *x);

// right outlet
void monitor_mouse_output(t_monitor *x, Point mouse, short but);
void monitor_selection_output(t_monitor *x, short n);
void monitor_rewrite_snapshotmenu(t_monitor *x);
void monitor_update_snapshotmenu(t_monitor *x, snapshot *current_snapshot);

// points
void monitor_rename(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_clear(t_monitor *x);
void monitor_delete(t_monitor *x, t_symbol *s, short ac, t_atom *av);

// options
void monitor_mode(t_monitor *x, short n);
void monitor_size(t_monitor *x, short n);
void monitor_numbers(t_monitor *x, long n);
void monitor_coordinates(t_monitor *x, long n);
void monitor_lines(t_monitor *x, long n);
void monitor_grid(t_monitor *x, long n);
void monitor_offset(t_monitor *x, short n);

void monitor_precision(t_monitor *x, short n);

// zoom
void monitor_zoom(t_monitor *x, t_symbol *s, short ac, t_atom *av);

// grid units
void monitor_gridunit_xyz(t_monitor *x, double n);
void monitor_gridunit_ae(t_monitor *x, long n);
void monitor_gridunit_d(t_monitor *x, double n);

// nudge units
void monitor_nudgeunit_xyz(t_monitor *x, double n);
void monitor_nudgeunit_a(t_monitor *x, double n);
void monitor_nudgeunit_d(t_monitor *x, double n);

// enable / disable keyboard and mouse
void monitor_enablekeys(t_monitor *x, long n);
void monitor_local(t_monitor *x, long n);

// keyboard
void monitor_key(t_monitor *x, short key, short mod);
void monitor_nudge(t_monitor *x, short n, short mod);

// mouse
void monitor_click(t_monitor *x, Point pt, short mod);
void monitor_drag_xy(t_monitor *x, Point pt, short but);
void monitor_drag_xz(t_monitor *x, Point pt, short but);
void monitor_sel_region(t_monitor *x, Point pt, short but);
void monitor_new_point(t_monitor *x, Point pt);

// snapshots
void monitor_store(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_snapshot_link(t_monitor *x, snapshot *pointer);
void monitor_int(t_monitor *x, long n);
void monitor_anything(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_list(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void *monitor_get_snapshot_by_index(snapshot *pointer, char *name);
void monitor_recall(t_monitor *x, snapshot *pointer, short time, short mode);
void monitor_remove(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_snapshot_remove(t_monitor *x, snapshot *pointer);
void monitor_remove_all(t_monitor *x);
void monitor_interpol_time(t_monitor *x, short n);
void monitor_interpol_mode(t_monitor *x, short n);
void monitor_interval(t_monitor *x, short n);
void monitor_set_interpol(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_interpol(t_monitor *x);
void monitor_xfade(t_monitor *x, t_symbol *s, short ac, t_atom *av);

// write snapshot files
void monitor_write(t_monitor *x, t_symbol *s);
void monitor_dowrite(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void write_to_file(t_filehandle file, snapshot *pointer);

// read and parse snapshot files
void monitor_read(t_monitor *x, t_symbol *s);
void monitor_doread(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void read_from_file(t_monitor *x, t_filehandle file, char *filename);
short read_ambiscore(t_monitor *x, t_filehandle file);
short read_snapshot(t_monitor *x, t_filehandle file, char* attr_val);
short read_point(t_filehandle file, ambi* coord);

// colors
void setcolor(RGBColor *color, short ac, t_atom *av);
void monitor_set_point_color(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_set_name_color(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_set_coord_color(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_set_line_color(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_set_circle_color(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_set_background_color(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_set_grid_color(t_monitor *x, t_symbol *s, short ac, t_atom *av);
void monitor_set_hi_grid_color(t_monitor *x, t_symbol *s, short ac, t_atom *av);

// mathematics
void cartopol(ambi *coords);
void poltocar(ambi *coords);

// status report
void monitor_version(void);
void monitor_report(t_monitor *x);

// messages sent by Max
void monitor_loadbang(t_monitor *x);
void monitor_enter(t_monitor *x);
void monitor_bfont(t_monitor *x, short size, short fontnum);
void monitor_assist(t_monitor *x, void *b, long m, long a, char *s);
void monitor_psave(t_monitor *x, void *w);
void monitor_free(t_monitor *x);

#endif // __AMBIMONITOR_H__