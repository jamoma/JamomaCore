/* 

	ambimonitor.c	GUI object for ambisonic sound spatialisation
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

#define __EXTERNAL_NAME__ "ambimonitor"
#define __EXTERNAL_VERSION__ "1.2"

#include "ambimonitor.h"
#include "fileIO.c"

void *monitor_class;

//___________________________________________________________________________________________________________________________
// main function

int main(void)
{	
	setup((t_messlist **)&monitor_class, (method)monitor_new, (method)monitor_free,
			(short)sizeof(t_monitor), (method)monitor_menu, A_GIMME, 0);
				
	// points
	addmess((method)monitor_xyz_input,  	"xyz",			A_GIMME, 0);
	addmess((method)monitor_aed_input,  	"aed",			A_GIMME, 0);
	addmess((method)monitor_set_input,  	"set",			A_GIMME, 0);
	addmess((method)monitor_clear,	    	"clear",		0);
	addmess((method)monitor_delete,	    	"delete",		A_GIMME, 0);
	addmess((method)monitor_rename,			"rename",		A_GIMME, 0);
	addmess((method)monitor_dump,	    	"dump",			0);

	// options
	addmess((method)monitor_mode,			"mode",			A_LONG, 0);
	addmess((method)monitor_size,		 	"size",			A_LONG,	0);
	addmess((method)monitor_numbers,    	"numbers", 		A_LONG,	0);
	addmess((method)monitor_coordinates,	"coordinates",	A_LONG,	0);
	addmess((method)monitor_lines,			"lines",		A_LONG,	0);
	addmess((method)monitor_grid,			"grid",			A_LONG,	0);
	addmess((method)monitor_offset,			"offset",		A_LONG,	0);

	addmess((method)monitor_precision,		"precision",	A_LONG,	0);

	// zoom
	addmess((method)monitor_zoom,			"zoom",			A_GIMME, 0);

	// enable / disable keyboard and mouse
	addmess((method)monitor_local,			"local",		A_LONG, 0);
	addmess((method)monitor_enablekeys,		"enablekeys",	A_LONG, 0);

	// snapshots	
	addint((method)monitor_int);
	addmess((method)monitor_anything,		"anything",		A_GIMME, 0),
	addmess((method)monitor_list,	    	"list",			A_GIMME, 0);
	addmess((method)monitor_store,			"store",		A_GIMME, 0);
	addmess((method)monitor_remove,			"remove",		A_GIMME, 0);
	addmess((method)monitor_remove_all,		"remove_all",	0);
	addmess((method)monitor_interpol_time,	"interpolation_time",	A_LONG,	0);
	addmess((method)monitor_interpol_mode,	"interpolation_mode",	A_LONG,	0);
	addmess((method)monitor_set_interpol,	"set_interpolation",	A_GIMME, 0);
	addmess((method)monitor_xfade,			"xfade",		A_GIMME, 0);
	addmess((method)monitor_interval,		"interval",		A_LONG,	0);
	addmess((method)monitor_write,			"write",		A_DEFSYM, 0);
	addmess((method)monitor_read,			"read",			A_DEFSYM, 0);

	addmess((method)monitor_rewrite_snapshotmenu,	"dump_snapshots", 0);

	// grid units
	addmess((method)monitor_gridunit_xyz,	"gridunit_xyz",	A_FLOAT,0);
	addmess((method)monitor_gridunit_ae,	"gridunit_ae",	A_LONG, 0);
	addmess((method)monitor_gridunit_d,		"gridunit_d",	A_FLOAT,0);

	// keyboard commands
	addmess((method)monitor_nudgeunit_xyz,	"nudgeunit_xyz",A_FLOAT,0);
	addmess((method)monitor_nudgeunit_a,	"nudgeunit_a",	A_FLOAT,0);
	addmess((method)monitor_nudgeunit_d,	"nudgeunit_d",	A_FLOAT,0);

	// display colors
	addmess((method)monitor_set_point_color,	"rgb1", 	A_GIMME, 0);
	addmess((method)monitor_set_name_color,		"rgb2", 	A_GIMME, 0);
	addmess((method)monitor_set_coord_color,	"rgb3", 	A_GIMME, 0);
	addmess((method)monitor_set_line_color,		"rgb4", 	A_GIMME, 0);
	addmess((method)monitor_set_circle_color,	"rgb5", 	A_GIMME, 0);
	addmess((method)monitor_set_background_color,"rgb6", 	A_GIMME, 0);
	addmess((method)monitor_set_grid_color,		"rgb7",		A_GIMME, 0);
	addmess((method)monitor_set_hi_grid_color,	"rgb8",		A_GIMME, 0);

	// report internal status
	addmess((method)monitor_version,		"version",		0);
	addmess((method)monitor_report,			"report",		0);
		
	// methods for messages sent by ambicontrol
	addmess((method)monitor_output_coord,		"output_coord",		A_CANT, 0);
	addmess((method)monitor_add_graph_new,		"add_graph_new",	A_CANT, 0);
	addmess((method)monitor_add_graph_remove,	"add_graph_remove",	A_CANT, 0);
	addmess((method)monitor_update_graphics,	"update_graphics",	A_CANT, 0);
		
	// methods for messages sent by Max
	addmess((method)monitor_loadbang,		"loadbang",		A_CANT, 0);
	addmess((method)monitor_key,			"key",			A_CANT, 0);
	addmess((method)monitor_update,			"update",   	A_CANT, 0);
	addmess((method)monitor_click,			"click",		A_CANT, 0);
	addmess((method)monitor_bfont,			"bfont",		A_CANT, 0);
	addmess((method)monitor_assist,			"assist",		A_CANT, 0);
	addmess((method)inspector_open,			"info",			A_CANT, 0);
	addmess((method)monitor_psave,			"psave",		A_CANT, 0);
	addmess((method)monitor_enter,			"enter",		A_CANT, 0);

	post("%s    -    Philippe Kocher/ICST Zurich    -    © 2006 - 2007 all rights reserved", __EXTERNAL_NAME__);
	
	return 0;
}

//___________________________________________________________________________________________________________________________
// object creation functions

void *monitor_new(t_symbol *s, short ac, t_atom *av)
{
	short i;	
	t_monitor *x;
	short left, top, hsize, vsize, flags;
	long fontinfo;

	x = (t_monitor *)newobject(monitor_class);
	
 	x->patcher = (t_patcher *)av->a_w.w_obj; // get patcher from av
	gensym("#X")->s_thing = (t_object *)x;
		
	// box coordinates
 	left	= av[1].a_w.w_long; 
	top		= av[2].a_w.w_long;
	hsize	= av[3].a_w.w_long;
	vsize	= av[4].a_w.w_long;
		
	// create box
	flags = F_DRAWFIRSTIN | F_HILITE | F_GROWY | F_DRAWINLAST | F_NODRAWBOX;

	box_new((t_box *)x, x->patcher, flags, left, top, left+hsize, top+vsize);
	
	x->h_size = x->m_box.b_rect.right - x->m_box.b_rect.left;

#ifdef WIN_VERSION  // offscreen drawing not necessary for OSX
	monitor_alloc_offscreen(x);
#endif
	
	// create outlets
	x->outlet3 = outlet_new(x, 0L);
	x->outlet2 = outlet_new(x, 0L);
	x->outlet1 = outlet_new(x, 0L);

	// create inlet	
	x->m_box.b_firstin = (void *)x;
	
	// monitor_redraw is used as queue function
	x->m_qelem = qelem_new(x, (method)monitor_redraw);
		
	// initialise variables
	x->mode = av[5].a_w.w_long;
	x->grid = av[6].a_w.w_long;
	x->numbers = av[7].a_w.w_long;
	x->coordinates = av[8].a_w.w_long;
	x->lines = av[9].a_w.w_long;
	x->offset = av[10].a_w.w_long;
	x->precision = 2;
	
	x->zoom_factor = 1;
	x->zoom_focal_point_x = 0;
	x->zoom_focal_point_y = 0;
	
	x->local = 1;
	x->enablekeys = 1;
	x->new_number = -1;
	x->first_digit = 0;
	x->mousestate.a_type = A_LONG;
	x->mousestate.a_w.w_long = 0;

	x->nudgeunit_xyz = 0.01;
	x->nudgeunit_a = 1.0;
	x->nudgeunit_d = 0.1;
	
	x->gridunit_xyz = 0.1;
	x->gridunit_ae = 6;
	x->gridunit_d = 0.1;
	
	x->time_interval = 20;
	
	x->additional_graphics = 0;
		
	// initialise coordinates
	for(i=0;i<MAXPOINTS;i++)
	{
		x->coord[i].status = 0;
		x->coord[i].selected = 0;
		x->coord[i].sel = 0;
	}
	
	// initialise clock
	x->clock = clock_new(x,(method)monitor_interpol);
	
	// initialise colors
	x->point_color	= POINTColor;
	x->name_color	= NAMEColor;
	x->coord_color	= COORDColor;
	x->line_color	= LINEColor;			// lines
	
	x->circle_color	= CIRCLEColor;			// radar
	x->background_color = BACKGROUNDColor;
	
	x->grid_color	= GRIDColor;			// grid
	x->hi_grid_color= HI_GRIDColor;

	x->rect_color	= RECTColor;			// selection rect

	// font size	
	if(ac < 12) // get default font number and size from parent patcher
	{
		x->fontnum = x->patcher->p_deffont;
		x->fontsize = x->patcher->p_defsize;
	}
	else // get font number and size from binbuf
	{
		fontinfo  = av[11].a_w.w_long;
		x->fontsize = fontinfo % 256;
		x->fontnum = fontinfo / 256;	
	}

	// return the object's pointer
	box_ready((t_box *)x);
	return (x);	
}


// the user selects the object from the menu or toobar 
// we need to supply the monitor_new method with default values

void *monitor_menu(t_patcher *p, long x, long y, long fontinfo)
{
	t_atom av[11];

	SETOBJ(av,(t_object *)p);
	SETLONG(av+1, x);
	SETLONG(av+2, y);
							// set default values...
	SETLONG(av+3, 200);		// width
	SETLONG(av+4, 200);		// height
	SETLONG(av+5, 0);		// mode
	SETLONG(av+6, 0);		// grid
	SETLONG(av+7, 0);		// numbers
	SETLONG(av+8, 0);		// coordinates
	SETLONG(av+9, 0);		// lines
	SETLONG(av+10,0);		// offset
		
	return monitor_new(gensym("ambimonitor"),11,av);
}

void monitor_loadbang(t_monitor *x)
{
	// initialise snapshot menu
	monitor_rewrite_snapshotmenu(x);

	// initialise the object's name
	monitor_name(x);
}


//___________________________________________________________________________________________________________________________
// graphics

void monitor_redraw(t_monitor *x)
{
	GrafPtr gp;

	if (gp = XQT_patcher_setport(x->m_box.b_patcher))  // set grafport to patcher
	{ 
		if (!XQT_box_nodraw((t_box *)x))
		{ 
			monitor_update(x);
			XQT_box_enddraw((t_box *)x); 
		}  
 	XQT_patcher_restoreport(gp); 
	}
} 

void monitor_update(t_monitor *x)
{
#ifdef WIN_VERSION
	GrafPtr gp = XQT_patcher_setport(x->m_box.b_patcher);
	if(gp)
	{
		if(x->offrect.right != x->m_box.b_rect.right - 1)
			monitor_alloc_offscreen(x);

		monitor_do_update(x);
	}

	XQT_patcher_restoreport(gp);	
#else	// Macintosh
	monitor_do_update(x);
#endif
}

// monitor update function  (where all the drawing is done)
// --------------------------------------------------------

void monitor_do_update(t_monitor *x)
{
#ifdef MAC_VERSION	
	RgnHandle old,boxclip;
#else	// Windows
	GWorldPtr	offscreen = x->offscreen;
	GrafPtr		currPort, offPort;
	GDHandle	currDevice;
	
	Rect offrect = x->offrect;
#endif

	Rect r;
	char c[30], ok[4] = "ok?";
	short text_width;
	short i;
									// coordinates on the screen
									//  
	short p_x1, p_y1, p_y2;			// point
	short n_x1, n_y1, n_y2;			// number
	short c_x1, c_y1;				// coordinates
	
	double g_x;						// grid

									// additional graphics
	long a_top1, a_top2, a_left, a_bottom1, a_bottom2, a_right;
	long a_x, a_y1, a_y2;
	double *data;
	
	short s_x1, s_y1, s_x2, s_y2;	// selection
	
	add_gr	*pointer;
		
#ifdef MAC_VERSION	
	short left = x->m_box.b_rect.left;
	short top = x->m_box.b_rect.top;
	short right = x->m_box.b_rect.right;
#else  // Windows
	short left = x->offrect.left;
	short top = x->offrect.top;
	short right = x->offrect.right;
#endif	
	short bottom;
	
	short size;

	// check the object's name
	monitor_name(x);
	
	// get current box size
	x->h_size = right - left;

	// check width of box, minimum = 100
	if(x->h_size <= 100)
	{
		x->m_box.b_rect.right = left + 100;
#ifdef WIN_VERSION
		x->offrect.right = left + 100;
#endif
		x->h_size = 100;
	}
	
	// retain proportions
	switch(x->mode)
	{
		case 0:
		bottom = top + x->h_size; break;
		case 1:
		bottom = top + x->h_size * 1.5 + 4.5; break;
		case 2:
		bottom = top + x->h_size * 2; break;	
	}
	
	x->m_box.b_rect.bottom = bottom;

#ifdef WIN_VERSION
	x->offrect.bottom = bottom;
#endif

#ifdef MAC_VERSION
	// clip region
	SetRect(&r, left, top, right, bottom);
	GetClip(old = NewRgn());						// get existing clip region 
 	RectRgn(boxclip = NewRgn(), &r);				// box's rect as region 
	SectRgn(old,boxclip,boxclip);					// intersect them 
	SetClip(boxclip);								// make current clip region 
#else	// Windows	
	// save the current graphics port and set the drawing to the offscreen
	GetGWorld((CGrafPtr *)&currPort, &currDevice);
	SetGWorld((CGrafPtr)offscreen, NIL);
	offPort = (GrafPtr)offscreen;
#endif

	// draw Background
	SetRect(&r, left, top, right, bottom);
	RGBBackColor(&x->background_color);
	EraseRect (&r);
	RGBBackColor(&WHITE);
		
	// calculate zoom view (only if mode == 0)
	size = x->h_size;

	if(x->mode == 0)
	{
		size = size * x->zoom_factor;	
		left = left - x->zoom_focal_point_x * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
		top  = top  + x->zoom_focal_point_y * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
	}
	
	// drawing...
		
		//draw radar

		RGBForeColor(&x->circle_color);
		
		SetRect(&r,	left + 5,
					top  + 5,
					left + size - 5,
					top  + size - 5);
		PaintOval(&r);						// xy-radar
		
		SetRect(&r,	left + 5,
					top  + size + 5,
					left + size - 5,
					top  + size*2 - 5);
		if(x->mode == 1)
			PaintArc(&r, -90, 180);			// yz-radar
		if(x->mode == 2)
			PaintOval(&r);
		
		// draw grid
		switch (x->grid)
		{
			case 1:		// aed grid
				g_x = x->gridunit_d * (size - 10) * 0.5;
				while(g_x <= (size - 10) * 0.5 + 0.5)
				{
					RGBForeColor(&x->grid_color);
					
					SetRect(&r, left + size * 0.5 - g_x,
								top  + size * 0.5 - g_x,
								left + size * 0.5 + g_x + 0.5,
								top  + size * 0.5 + g_x + 0.5);
					FrameOval(&r);
					
					SetRect(&r, left + size * 0.5 - g_x,
								top  + size * 0.5 - g_x + size,
								left + size * 0.5 + g_x + 0.5,
								top  + size * 0.5 + g_x + 0.5 + size);
					if(x->mode == 1)
						FrameArc(&r, -90, 180);
					if(x->mode == 2)
						FrameOval(&r);
						
					g_x += x->gridunit_d * (size - 10) * 0.5;
				}

				if(x->gridunit_ae > 2)
				{
					RGBForeColor(&x->grid_color);

					for(i=1;i<x->gridunit_ae;i++)
					{
						if(i != x->gridunit_ae * 0.5)
						{						
							MoveTo(left + cos((i+x->gridunit_ae) * PI / x->gridunit_ae) * (size - 10) * 0.5 + size * 0.5,
								   top  + sin((i+x->gridunit_ae) * PI / x->gridunit_ae) * (size - 10) * 0.5 + size * 0.5);
							LineTo(left + cos(i * PI / x->gridunit_ae) * (size - 10) * 0.5 + size * 0.5,
								   top  + sin(i * PI / x->gridunit_ae) * (size - 10) * 0.5 + size * 0.5);

							MoveTo(left + cos((i+x->gridunit_ae) * PI / x->gridunit_ae) * (size - 10) * 0.5 + size * 0.5,
								   top  + sin((i+x->gridunit_ae) * PI / x->gridunit_ae) * (size - 10) * 0.5 + size * 1.5);
							if(x->mode == 1)
								LineTo(left + size * 0.5,
									   top  + (size - 10) * 0.5 + 5 + size);
							if(x->mode > 1)
								LineTo(left + cos(i * PI / x->gridunit_ae) * (size - 10) * 0.5 + size * 0.5,
									   top  + sin(i * PI / x->gridunit_ae) * (size - 10) * 0.5 + size * 1.5);
						} 
					} 
				}

				// highlighted grid
				RGBForeColor(&x->hi_grid_color);
				
				if(x->gridunit_ae > 0)
				{
					// "horizontal" line through centre (xy radar)
					MoveTo(left + 5, top + (size-10) * 0.5 + 4.5);
					LineTo(left + size - 6, top + (size-10) * 0.5 + 4.5);
				
					// "vertical" line through centre (xy radar)
					if(x->gridunit_ae % 2 == 0)
					{
						MoveTo(left + (size-10) * 0.5 + 4.5, top + 5);
						LineTo(left + (size-10) * 0.5 + 4.5, top + size-6);
					}
				}
				
				if(x->mode > 0 && x->gridunit_ae > 0)
				{
					// "horizontal" line through centre (xz radar)
					MoveTo(left + 5, top + (size-10) * 0.5 + 4.5 + size);
					LineTo(left + size-6, top + (size-10) * 0.5 + 4.5 + size);
				
					// "vertical" line through centre (xz radar)
					if(x->gridunit_ae % 2 == 0)
					{
						MoveTo(left + (size-10) * 0.5 + 5, top + 5 + size);
						if(x->mode == 1)
							LineTo(left + (size-10) * 0.5 + 5, top + (size-10) * 0.5 + 4 + size);	
						if(x->mode == 2)
							LineTo(left + (size-10) * 0.5 + 5, top + size - 6 + size);
					}
				}				
				break;
											
			case 2:		// xyz grid
				g_x = x->gridunit_xyz * (size - 10) * 0.5;
				while(g_x < size * 0.5)
				{					
					RGBForeColor(&x->grid_color);

					MoveTo(left + 5, top + (size - 10) * 0.5 + 5 + g_x);
					LineTo(left + size-5, top + (size - 10) * 0.5 + 5 + g_x);
					MoveTo(left + 5, top + (size - 10) * 0.5 + 5 - g_x);
					LineTo(left + size-5, top + (size - 10) * 0.5 + 5 - g_x);
					
					MoveTo(left + (size - 10) * 0.5 + 5 + g_x, top + 5);
					LineTo(left + (size - 10) * 0.5 + 5 + g_x, top + size - 5);
					MoveTo(left + (size - 10) * 0.5 + 5 - g_x, top + 5);
					LineTo(left + (size - 10) * 0.5 + 5 - g_x, top + size - 5);
					
					if(x->mode >= 1)
					{
						MoveTo(left + 5, top + (size - 10) * 0.5 + 5 - g_x + size);
						LineTo(left + size - 5, top + (size - 10) * 0.5 + 5 - g_x + size);	
					}
					if(x->mode == 2)
					{
						MoveTo(left + 5, top + (size - 10) * 0.5 + 5 + g_x + size);
						LineTo(left + size - 5, top + (size - 10) * 0.5 + 5 + g_x + size);
					}
					
					MoveTo(left + (size - 10) * 0.5 + 5 - g_x, top + 5 + size);
					if(x->mode == 1)
						LineTo(left + (size - 10) * 0.5 + 5 - g_x, top + (size - 10) * 0.5 + 5 + size);	
					if(x->mode == 2)
						LineTo(left + (size - 10) * 0.5 + 5 - g_x, top + size - 5 + size);					

					MoveTo(left + (size - 10) * 0.5 + 5 + g_x, top + 5 + size);
					if(x->mode == 1)
						LineTo(left + (size - 10) * 0.5 + 5 + g_x, top + (size - 10) * 0.5 + 5 + size);	
					if(x->mode == 2)
						LineTo(left + (size - 10) * 0.5 + 5 + g_x, top + size - 5 + size);					

					g_x += x->gridunit_xyz * (size - 10) * 0.5;
					
				}
				RGBForeColor(&x->hi_grid_color);
				
				MoveTo(left + 5, top + (size - 10) * 0.5 + 5);
				LineTo(left + size - 5, top + (size - 10) * 0.5 + 5);
				MoveTo(left + (size - 10) * 0.5 + 5, top + 5);
				LineTo(left + (size - 10) * 0.5 + 5, top + size - 5);
				
				MoveTo(left + 5, top + (size - 10) * 0.5 + 5 + size);
				LineTo(left + size - 5, top + (size - 10) * 0.5 + 5 + size);
				MoveTo(left + (size - 10) * 0.5 + 5, top + 5 + size);
				if(x->mode == 1)
					LineTo(left + (size - 10) * 0.5 + 5, top + (size - 10) * 0.5 + 5 + size);	
				if(x->mode == 2)
					LineTo(left + (size - 10) * 0.5 + 5, top + size - 5 + size);					
				break;
		}
		
		// draw additional graphics (boxes and trajectories), if any
		pointer = x->additional_graphics;
		while(pointer)
		{
			data = *pointer->data;
			switch(pointer->type)
			{
				case 1:	// rectangle
					a_left	= left + (1 + *(data)) * (size - 10) * 0.5 + 5;
					a_top1	= top  + (1 - *(data+4)) * (size - 10) * 0.5 + 5;
					a_top2	= top  + (1 - *(data+5)) * (size - 10) * 0.5 + 5 + size;
					a_right = left + (1 + *(data+3)) * (size - 10) * 0.5 + 5;
					a_bottom1 = top +(1 - *(data+1)) * (size - 10) * 0.5 + 5;
					a_bottom2 = top +(1 - *(data+2)) * (size - 10) * 0.5 + 5 + size;
					// swap y and z max/min!

					RGBForeColor(pointer->color);
					
					SetRect(&r, a_left-1, a_top1-1, a_right+1, a_bottom1+1);
					FrameRect(&r);
					PenMode(blend);
					OpColor(&OPAQUE_BOX);
					PaintRect(&r);
					PenNormal();
					
					if(x->mode > 0)
					{
						SetRect(&r, a_left-1, a_top2-1, a_right+1, a_bottom2+1);
						FrameRect(&r);
						PenMode(blend);
						OpColor(&OPAQUE_BOX);
						PaintRect(&r);
						PenNormal();
					}
					break;

				case 2: // breakpoint graph
					if(!data) break;
					a_x  = left + (1 + *(data))   * (size - 10) * 0.5 + 5;
					a_y1 = top  + (1 - *(data+1)) * (size - 10) * 0.5 + 5;
					
					RGBForeColor(pointer->color);
					
					MoveTo(a_x, a_y1);

					for(i=0;i< *(pointer->number)*3;i+=3)
					{
						a_x  = left + (1 + *(data+i))   * (size - 10) * 0.5 + 5;
						a_y1 = top  + (1 - *(data+i+1)) * (size - 10) * 0.5 + 5;
						
						LineTo(a_x, a_y1);
					}
					
					if(x->mode > 0)
					{
						a_x  = left + (1 + *(data))   * (size - 10) * 0.5 + 5;
						a_y2 = top  + (1 - *(data+2)) * (size - 10) * 0.5 + 5 + size;

						MoveTo(a_x, a_y2);
					
						for(i=0;i< *(pointer->number)*3;i+=3)
						{
							a_x  = left + (1 + *(data+i))   * (size - 10) * 0.5 + 5;
							a_y2 = top  + (1 - *(data+i+2)) * (size - 10) * 0.5 + 5 + size;
						
							LineTo(a_x, a_y2);
						}
					}
					
					break;			
			}
			pointer = pointer->next;
		}
		
		// draw points, numbers/names & coordinates
		for(i=0;i<MAXPOINTS;i++)
		{
			if(x->coord[i].status != 0)
			{
				RGBForeColor(&x->point_color);

				p_x1 = left + (1 + x->coord[i].x) * (size - 10) * 0.5 + 5;
				p_y1 = top  + (1 - x->coord[i].y) * (size - 10) * 0.5 + 5;		
				p_y2 = top  + (1 - x->coord[i].z) * (size - 10) * 0.5 + 5 + size;
					
				SetRect(&r, p_x1-RADIUS, p_y1-RADIUS, p_x1+RADIUS, p_y1+RADIUS);
				if(x->coord[i].selected)
					PaintOval(&r);
				else
				{	FrameOval(&r);
					PenMode(blend);
					OpColor(&OPAQUE_POINT);
					PaintOval(&r);
					PenNormal();
				}				
					
				if(x->mode > 0)
				{
					SetRect(&r, p_x1-RADIUS, p_y2-RADIUS, p_x1+RADIUS, p_y2+RADIUS);
					if(x->coord[i].selected)
						PaintOval(&r);
					else
					{	FrameOval(&r);
						PenMode(blend);
						OpColor(&OPAQUE_POINT);
						PaintOval(&r);
						PenNormal();					
					}
					
					if(x->lines)
					{
						RGBForeColor(&x->line_color);

						MoveTo(p_x1, p_y1+RADIUS);
						LineTo(p_x1, p_y2-RADIUS);
					}
				}	
				if(x->numbers &&
					p_x1+RADIUS >  x->m_box.b_rect.left && p_x1-RADIUS <  x->m_box.b_rect.right	&&	// only if point is visible (zoom...)
					p_y1+RADIUS >  x->m_box.b_rect.top)

				{
					XQT_TextSize(x->fontsize * 4/3);
					XQT_TextFont(x->fontnum);

					strcpy(c, x->coord[i].name);
					text_width = TextWidth(c, 0, strlen(c)); 

					if(p_x1 < x->m_box.b_rect.right - text_width - 10)
						n_x1 = left + (1 + x->coord[i].x) * (size - 10) * 0.5 + 10;
					else				
						n_x1 = left + (1 + x->coord[i].x) * (size - 10) * 0.5 - text_width;
					
					n_y1 = top + (1 - x->coord[i].y) * (size - 10) * 0.5 + 8;
					n_y2 = top + (1 - x->coord[i].z) * (size - 10) * 0.5 + 8 + size;
			
					RGBForeColor(&x->name_color);		
					
					MoveTo(n_x1, n_y1);
					DrawText(c, 0, strlen(c));
			
					if (x->mode != 0)
					{
						MoveTo(n_x1, n_y2);
						DrawText(c, 0, strlen(c));
					}
				}
	
				if(x->coordinates &&
					p_x1+RADIUS >  x->m_box.b_rect.left && p_x1-RADIUS <  x->m_box.b_rect.right	&&	// only if point is visible (zoom...)
					p_y1+RADIUS >  x->m_box.b_rect.top)
				{	
					RGBForeColor(&x->coord_color);
		
					XQT_TextSize(x->fontsize);
					XQT_TextFont(x->fontnum);
										
					if(x->coordinates == 1)
					{
						switch(x->precision)
						{
							case 0:
								sprintf(c, "a: %2.0f  e: %2.0f  d: %2.0f", x->coord[i].a, x->coord[i].e, x->coord[i].d);
								break;
							case 1:
								sprintf(c, "a: %2.1f  e: %2.1f  d: %2.1f", x->coord[i].a, x->coord[i].e, x->coord[i].d);
								break;
							case 2:
								sprintf(c, "a: %2.2f  e: %2.2f  d: %2.2f", x->coord[i].a, x->coord[i].e, x->coord[i].d);
								break;
							case 3:
								sprintf(c, "a: %2.3f  e: %2.3f  d: %2.3f", x->coord[i].a, x->coord[i].e, x->coord[i].d);
								break;
							case 4:
								sprintf(c, "a: %2.4f  e: %2.4f  d: %2.4f", x->coord[i].a, x->coord[i].e, x->coord[i].d);
								break;
							case 5:
								sprintf(c, "a: %2.5f  e: %2.5f  d: %2.5f", x->coord[i].a, x->coord[i].e, x->coord[i].d);
								break;
							default:
								sprintf(c, "a: %2.6f  e: %2.6f  d: %2.6f", x->coord[i].a, x->coord[i].e, x->coord[i].d);
								break;
						}
					}
					else
					{
						switch(x->precision)
						{
							case 0:
								sprintf(c, "x: %2.0f  y: %2.0f  z: %2.0f", x->coord[i].x, x->coord[i].y, x->coord[i].z);
								break;
							case 1:
								sprintf(c, "x: %2.1f  y: %2.1f  z: %2.1f", x->coord[i].x, x->coord[i].y, x->coord[i].z);
								break;
							case 2:
								sprintf(c, "x: %2.2f  y: %2.2f  z: %2.2f", x->coord[i].x, x->coord[i].y, x->coord[i].z);
								break;
							case 3:
								sprintf(c, "x: %2.3f  y: %2.3f  z: %2.3f", x->coord[i].x, x->coord[i].y, x->coord[i].z);
								break;
							case 4:
								sprintf(c, "x: %2.4f  y: %2.4f  z: %2.4f", x->coord[i].x, x->coord[i].y, x->coord[i].z);
								break;
							case 5:
								sprintf(c, "x: %2.5f  y: %2.5f  z: %2.5f", x->coord[i].x, x->coord[i].y, x->coord[i].z);
								break;
							default:
								sprintf(c, "x: %2.6f  y: %2.6f  z: %2.6f", x->coord[i].x, x->coord[i].y, x->coord[i].z);
								break;
						}
					}
							
					text_width = TextWidth(c, 0, strlen(c)); 

					c_x1 = left + (1 + x->coord[i].x) * (size - 10) * 0.5 - text_width*0.5;
					c_x1 = CLIP(c_x1, x->m_box.b_rect.left + 5, x->m_box.b_rect.right - text_width-5);
					
					c_y1 = top  + (1 - x->coord[i].y) * (size - 10) * 0.5 + 10 + x->fontsize;
					c_y1 = (c_y1 > top + size - 5 ? c_y1 - 0 - x->fontsize*2.5 : c_y1);

					MoveTo(c_x1, c_y1);
					DrawText(c, 0, strlen(c));
				}
			}
		}
		
		// draw selection rectangle
		if(x->sel_rect)
		{
		
			RGBForeColor(&x->rect_color);
	
			if(x->rectangle[0] < x->rectangle[2])
			{
				s_x1 = x->rectangle[0];
				s_x2 = x->rectangle[2];
			}
			else
			{
				s_x1 = x->rectangle[2];
				s_x2 = x->rectangle[0];
			}
			if(x->rectangle[1] < x->rectangle[3])
			{	
				s_y1 = x->rectangle[1];
				s_y2 = x->rectangle[3];
			}
			else
			{
				s_y1 = x->rectangle[3];
				s_y2 = x->rectangle[1];
			}
		
			SetRect(&r, s_x1, s_y1, s_x2, s_y2);
			FrameRect(&r);
		}

		// zoom doesn't apply to the white boxes
		left = x->m_box.b_rect.left;
	 	top = x->m_box.b_rect.top;
		size = x->h_size;
		
		// draw white box "set no..."
		if(x->new_number > -1)
		{
			sprintf(c, "set no %d", x->new_number + 1);

			XQT_TextSize(x->fontsize * 11/9);
			XQT_TextFont(x->fontnum);
			
			text_width = TextWidth(c, 0, strlen(c)); 
			
			RGBForeColor(&WHITE);
			SetRect(&r, left + size*0.5 - text_width*0.7,
						top  + size*0.5 - x->fontsize*1.6,
						left + size*0.5 + text_width*0.7,
						top  + size*0.5 + x->fontsize*1.6);
			PaintRect(&r);
			
			RGBForeColor(&BLACK);		
			MoveTo( left + size*0.5 - text_width*0.5,
					top  + size*0.5 +	x->fontsize*0.5);

			DrawText(c, 0, strlen(c));
		}
		
		// draw white box "store snapshot no..."
		if(x->new_snapshot)
		{			
			if(x->snapshot_num == 0)
			{
				XQT_TextSize(x->fontsize * 11/9);
				XQT_TextFont(x->fontnum);

				sprintf(c, "store snapshot ...");
				text_width = TextWidth(c, 0, strlen(c)); 

				RGBForeColor(&WHITE);
				SetRect(&r, left + size*0.5 - text_width*0.7,
							top  + size*0.5 - x->fontsize*1.4,
							left + size*0.5 + text_width*0.7,
							top  + size*0.5 + x->fontsize*1.4);
				PaintRect(&r);
							
				RGBForeColor(&BLACK);	
				MoveTo( left + size*0.5 - text_width*0.5,
						top  + size*0.5 +	x->fontsize*0.5);

				DrawText(c, 0, strlen(c));
			}
			
			else
			{		
				XQT_TextSize(x->fontsize * 11/9);
				XQT_TextFont(x->fontnum);

				sprintf(c, "store snapshot ...");
				text_width = TextWidth(c, 0, strlen(c)); 

				RGBForeColor(&WHITE);
				SetRect(&r, left + size*0.5 - text_width*0.7,
							top  + size*0.5 - x->fontsize*1.4,
							left + size*0.5 + text_width*0.7,
							top  + size*0.5 + x->fontsize*3);
				PaintRect(&r);
			
				RGBForeColor(&BLACK);	

				sprintf(c, "store snapshot %d", x->snapshot_num);
				text_width = TextWidth(c, 0, strlen(c)); 

				MoveTo( left + size*0.5 - text_width*0.5,
						top  + size*0.5 +	x->fontsize*0.5);
				DrawText(c, 0, strlen(c));

				text_width = TextWidth(ok, 0, strlen(ok)); 

				MoveTo( left + size*0.5 - text_width*0.5,
						top  + size*0.5 +	x->fontsize*2);
				DrawText(ok, 0, strlen(ok));
			}
		}
		
		// draw white box "recall snapshot no..."
		if(x->rcl_snapshot)
		{		
			MoveTo(size*0.5-49, size*0.5+4);
			
			if(x->snapshot_num == 0)
			{
				XQT_TextSize(x->fontsize * 11/9);
				XQT_TextFont(x->fontnum);

				sprintf(c, "recall snapshot ...");
				text_width = TextWidth(c, 0, strlen(c)); 

				RGBForeColor(&WHITE);
				SetRect(&r, left + size*0.5 - text_width*0.7,
							top  + size*0.5 - x->fontsize*1.4,
							left + size*0.5 + text_width*0.7,
							top  + size*0.5 + x->fontsize*1.4);
				PaintRect(&r);
			
				RGBForeColor(&BLACK);	

				MoveTo( left + size*0.5 - text_width*0.5,
						top  + size*0.5 +	x->fontsize*0.5);
				DrawText(c, 0, strlen(c));
			}
			
			else
			{				
				XQT_TextSize(x->fontsize * 11/9);
				XQT_TextFont(x->fontnum);

				sprintf(c, "recall snapshot ...");
				text_width = TextWidth(c, 0, strlen(c)); 

				RGBForeColor(&WHITE);
				SetRect(&r, left + size*0.5 - text_width*0.7,
							top  + size*0.5 - x->fontsize*1.4,
							left + size*0.5 + text_width*0.7,
							top  + size*0.5 + x->fontsize*3);
				PaintRect(&r);
			
				RGBForeColor(&BLACK);	

				sprintf(c, "recall snapshot %d", x->snapshot_num);
				text_width = TextWidth(c, 0, strlen(c)); 

				MoveTo( left + size*0.5 - text_width*0.5,
						top  + size*0.5 +	x->fontsize*0.5);
				DrawText(c, 0, strlen(c));

				text_width = TextWidth(ok, 0, strlen(ok)); 

				MoveTo( left + size*0.5 - text_width*0.5,
						top  + size*0.5 +	x->fontsize*2);
				DrawText(ok, 0, strlen(ok));
			}
		}
	
	if(x->m_box.b_hilited) // show bold frame when highlited
		PenSize(2,2);
	RGBForeColor(&BLACK);
	SetRect(&r, left, top, right, bottom);
	FrameRect(&r);
	PenNormal();
	
	// restore everything...
	RGBForeColor(&BLACK);

#ifdef MAC_VERSION
	SetClip(old); 
	DisposeRgn(old); 
	DisposeRgn(boxclip);
#else	// Windows
	// restore previous drawing and copy offscreen image on-screen
	SetGWorld((CGrafPtr)currPort, currDevice);
	CopyBits(XQT_GetPortBitMapForCopyBits((CGrafPtr)offPort), XQT_GetPortBitMapForCopyBits((CGrafPtr)currPort), &offrect, &offrect, srcCopy, NIL);
#endif	
}

// windows stuff
#ifdef WIN_VERSION

void monitor_alloc_offscreen(t_monitor *x)
{
	OSErr		err;
	GrafPtr		currPort, offPort;
	GDHandle	currDevice;
	Rect		offrect;

	// dispose existing offscreen
	if(x->offscreen) DisposeGWorld(x->offscreen);

	// define offscreen canvas area
	SetRect(&offrect,	x->m_box.b_rect.left,
						x->m_box.b_rect.top,
						x->m_box.b_rect.right,
						x->m_box.b_rect.bottom);
	x->offrect = offrect;

	// create offscreen canvas
	err = NewGWorld(&x->offscreen, 16, &offrect, NIL, NIL, 0);
	if(err)
		post("error %ld creating offscreen", err);
	else
	{
		GetGWorld((CGrafPtr *)&currPort, &currDevice);
		SetGWorld((CGrafPtr)x->offscreen, NIL);
		EraseRect(&offrect);
		SetGWorld((CGrafPtr)currPort, currDevice);
	}
}

#endif

//___________________________________________________________________________________________________________________________
// methods for messages sent by ambicontrol

void monitor_output_coord(t_monitor *x, short n)
{
	monitor_output(x,n);
	qelem_set(x->m_qelem);
}

void monitor_update_graphics(t_monitor *x)
{
	qelem_set(x->m_qelem);
}

void monitor_add_graph_new(t_monitor *x, short n, RGBColor *color, double **data, long *number)
{		
	// build a linked list of pointers to data of additional graphics
	
	add_gr *pointer = x->additional_graphics, *newpointer;
	short size;
		
	size = sizeof(add_gr);
		
	newpointer = (add_gr *)sysmem_newptr(sizeof(add_gr));
	
	newpointer->type = n;
	newpointer->color = color;
	newpointer->data = data;
	newpointer->next = 0;
	if(n == 2)
		newpointer->number = number;
	
	if(!pointer)	// is first element of the linked list
	{
		x->additional_graphics = newpointer;
		newpointer->prev = 0;
		return;
	}
	
	while (pointer->next)
	{	
		pointer = pointer->next;
	}
	
	pointer->next = newpointer;
	newpointer->prev = pointer;
}

void monitor_add_graph_remove(t_monitor *x, void **data)
{
	add_gr *pointer = x->additional_graphics;
		
	if(pointer->data == (double **)data) // is first element of linked list
	{
		x->additional_graphics = pointer->next;
		sysmem_freeptr(pointer);
		return;
	}
		
	while(pointer)
	{
		if(pointer->data == (double **)data)
		{
			if(pointer->next)
				pointer->next->prev = pointer->prev;
			pointer->prev->next = pointer->next;
			sysmem_freeptr(pointer);
			return;
		}
		pointer = pointer->next;
	}		
}

//___________________________________________________________________________________________________________________________
// object name

void monitor_name(t_monitor *x) 
{ 
	t_box *b; 
	t_symbol *s;
		
	// a pointer to the object is stored in the s_thing field of a t_symbol
	
	b = x->patcher->p_box;
	while(b)
	{	
		if(patcher_boxname(x->patcher,b,&s) && b->b_firstin == x)
		// b->b_firstin is the address of the object the box b contains
		{ 			
			gensym(x->name)->s_thing = 0;					// remove old reference	
	
			strcpy(x->name, s->s_name);
			gensym(x->name)->s_thing = (t_object *)(long)x;	// set new reference	
						
			return;
		}
		b=b->b_next;
	} 
}

//___________________________________________________________________________________________________________________________
// coordinate input

void monitor_xyz_input(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	short i, n;
	double input[3] = {0, 0, 0};
	
	if(av[0].a_type != A_LONG) return;
	if(av[0].a_w.w_long < 1 || av[0].a_w.w_long > MAXPOINTS) return;

	n = av[0].a_w.w_long - 1;			// point index is zero-based
	
	if (x->coord[n].status == 0)		// if it is a new point
	{
		x->coord[n].status = 1;
		x->coord[n].selected = 0;
		sprintf(x->coord[n].name, "%d", n+1);
	}
	
	for(i=1;i<ac;i++)
	{
		switch(av[i].a_type)
		{
			case A_FLOAT: input[i-1] = av[i].a_w.w_float; break;
			case A_LONG:  input[i-1] = av[i].a_w.w_long; break;
			default:      input[i-1] = 0;
		}
	}
				
	x->coord[n].x = input[0];
	x->coord[n].y = input[1];
	x->coord[n].z = input[2];
	
	cartopol(&x->coord[n]);				// conversion xyz -> aed
		
	monitor_output(x, n);
		
	qelem_set(x->m_qelem);
}

void monitor_aed_input(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	short i, n;
	double input[3] = {0, 0, 0};
	
	if(av[0].a_type != A_LONG) return;
	if(av[0].a_w.w_long < 1 || av[0].a_w.w_long > MAXPOINTS) return;

	n = av[0].a_w.w_long - 1;
	
	if (x->coord[n].status == 0)		// if it is a new point
	{
		x->coord[n].status = 1;
		x->coord[n].selected = 0;
		sprintf(x->coord[n].name, "%d", n+1);
	}
	
	for(i=1;i<ac;i++)
	{
		switch(av[i].a_type)
		{
			case A_FLOAT : input[i-1] = av[i].a_w.w_float; break;
			case A_LONG: input[i-1] = av[i].a_w.w_long; break;
			default: input[i-1] = 0;
		}
	}
				
	x->coord[n].a = input[0];
	x->coord[n].e = input[1];
	x->coord[n].d = input[2];

		
	poltocar(&x->coord[n]);				// conversion aed -> xyz

	monitor_output(x, n);

	qelem_set(x->m_qelem);
}

void monitor_set_input(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	short i, n;
	double input[3] = {0, 0, 0};
	
	if(av[0].a_w.w_sym != gensym("aed") && av[0].a_w.w_sym != gensym("xyz"))
	{
		post("%s: bad arguments for message \"set\"", __EXTERNAL_NAME__);
		return;
	}

	
	if(av[1].a_type != A_LONG) return;
	if(av[1].a_w.w_long < 1 || av[1].a_w.w_long > MAXPOINTS) return;

	n = av[1].a_w.w_long - 1;
		
	if (x->coord[n].status == 0)		// if it is a new point
	{
		x->coord[n].status = 1;
		x->coord[n].selected = 0;
		sprintf(x->coord[n].name, "%d", n+1);
	}
		
	if (av[0].a_w.w_sym == gensym("xyz"))
	{
		for(i=2;i<ac;i++)
		{
			switch(av[i].a_type)
			{
				case A_FLOAT : input[i-2] = av[i].a_w.w_float; break;
				case A_LONG: input[i-2] = av[i].a_w.w_long; break;
				default: input[i-2] = 0;
			}
		}
				
		x->coord[n].x = input[0];
		x->coord[n].y = input[1];
		x->coord[n].z = input[2];
	
		cartopol(&x->coord[n]);				// conversion xyz -> aed
	}
		
	else
	{
		for(i=2;i<ac;i++)
		{
			switch(av[i].a_type)
			{
				case A_FLOAT : input[i-2] = av[i].a_w.w_float; break;
				case A_LONG: input[i-2] = av[i].a_w.w_long; break;
				default: input[i-2] = 0;
			}
		}
				
		x->coord[n].a = input[0];
		x->coord[n].e = input[1];
		x->coord[n].d = input[2];
	
		poltocar(&x->coord[n]);				// conversion aed -> xyz
	}
	
	qelem_set(x->m_qelem);
}

//___________________________________________________________________________________________________________________________
// coordinate output

void monitor_output(t_monitor *x, short n)
{
	t_atom output[5];
	
	SETLONG (output,   n + 1 + x->offset);
	SETFLOAT(output+1, x->coord[n].x);
	SETFLOAT(output+2, x->coord[n].y);
	SETFLOAT(output+3, x->coord[n].z);
	SETLONG (output+4, x->coord[n].status);

	outlet_anything(x->outlet2, gensym("xyz"), 5, output);
	
	SETFLOAT(output+1, x->coord[n].a);
	SETFLOAT(output+2, x->coord[n].e);
	SETFLOAT(output+3, x->coord[n].d);

	outlet_anything(x->outlet1, gensym("aed"), 5, output);
}

void monitor_dump(t_monitor *x)
{
	short i;
	
	for(i=0;i<MAXPOINTS;i++)
	{
		if(x->coord[i].status)
			monitor_output(x,i);
	}	
}

//___________________________________________________________________________________________________________________________
// right outlet

void monitor_mouse_output(t_monitor *x, Point mouse, short but)
{
	t_atom output[3];
	
	SETLONG(output,   mouse.h - x->m_box.b_rect.left);
	SETLONG(output+1, mouse.v - x->m_box.b_rect.top);
	SETLONG(output+2, but);
	
	outlet_anything(x->outlet3, gensym("mouse"), 3, output);
}

void monitor_selection_output(t_monitor *x, short n)
{
	t_atom output[2];
	
	SETLONG(output,   n + 1);
	SETLONG(output+1, x->coord[n].selected);
	
	outlet_anything(x->outlet3, gensym("selected"), 2, output);
}


void monitor_rewrite_snapshotmenu(t_monitor *x)
{
	t_atom output[2];
	snapshot *pointer = x->first_snapshot;
	
	SETSYM(output, gensym("clear"));
	outlet_anything(x->outlet3, gensym("snapshotmenu"), 1, output);

	while(pointer)
	{
		SETSYM(output,   gensym("append"));
		SETSYM(output+1, gensym(pointer->index));

		pointer = pointer->next;
	
		outlet_anything(x->outlet3, gensym("snapshotmenu"), 2, output);
	}
}

void monitor_update_snapshotmenu(t_monitor *x, snapshot *current_snapshot)
{
	short i = 0;
	t_atom output[2];
	snapshot *pointer = x->first_snapshot;
	
	while(pointer != current_snapshot)
	{
		pointer = pointer->next;
		i++;
	}
	SETSYM(output,    gensym("set"));
	SETLONG(output+1, i);
	outlet_anything(x->outlet3, gensym("snapshotmenu"), 2, output);
}


//___________________________________________________________________________________________________________________________
// points

void monitor_rename(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	short number = av[0].a_w.w_long;
	
	if(x->coord[number-1].status == 0)
	{
		error("ambimonitor: point %ld doesn't exist...", number);
		return;
	}
	
	if(ac < 2)
	{
		sprintf(x->coord[number-1].name, "%d", number);
		qelem_set(x->m_qelem);
		return;
	}

	switch (av[1].a_type)
	{
		case A_LONG:
			sprintf(x->coord[number-1].name, "%ld", av[1].a_w.w_long);
			break;
		case A_SYM:
			strcpy(x->coord[number-1].name, av[1].a_w.w_sym->s_name);
			break;
	}
	qelem_set(x->m_qelem);
}

void monitor_clear(t_monitor *x)
{
	short i;
	
	for(i=0;i<MAXPOINTS;i++)
	{
		if(x->coord[i].status)
		{
			x->coord[i].selected = 0;
			monitor_selection_output(x, i);

			x->coord[i].status = 0;
			monitor_output(x,i);
		}
	}	
	qelem_set(x->m_qelem);
}

void monitor_delete(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	short i, number;
	
	for(i=0;i<ac;i++)
	{
		if(av[i].a_type == A_LONG)
		{
			number = av[i].a_w.w_long - 1;
			if(x->coord[number].status == 1)
			{
			x->coord[number].selected = 0;
			monitor_selection_output(x, i);

			x->coord[number].status = 0;
			monitor_output(x,i);
			}
		}
	}
	qelem_set(x->m_qelem);
}

//___________________________________________________________________________________________________________________________
// display options

void monitor_mode(t_monitor *x, short n)
{
	short left = x->m_box.b_rect.left;
	short right = x->m_box.b_rect.right;
		
	short hsize = right - left;
	short vsize = hsize;
	
	if(n != x->mode) patcher_dirty (x->patcher);
		
	x->mode = CLIP(n, 0, 2);
	
	
	switch(x->mode)
	{
		case 0:
			vsize = hsize; break;
		case 1:
			vsize = hsize * 1.5 + 4.5; break;
		case 2:
			vsize = hsize * 2; break;
	}

	box_size(&x->m_box, hsize, vsize);
	
#ifdef WIN_VERSION
	monitor_alloc_offscreen(x);
#endif
}

void monitor_size(t_monitor *x, short n)
{	
	short hsize, vsize;
	
	n = (n < 100 ? 100 : n);
	hsize = n;
	vsize = hsize;
	
	switch (x->mode)
	{
		case 0:
		vsize = hsize; break;	
		case 1:
		vsize = hsize * 1.5 + 4.5; break;
		case 2:
		vsize = hsize * 2; break;
	}
	
	box_size(&x->m_box, hsize, vsize);
}

void monitor_numbers(t_monitor *x, long n)
{
	if(n != x->numbers) patcher_dirty (x->patcher);
	x->numbers = n;
	qelem_set(x->m_qelem);
}

void monitor_coordinates(t_monitor *x, long n)
{
	if(n != x->coordinates) patcher_dirty (x->patcher);
	x->coordinates = n;
	qelem_set(x->m_qelem);
}

void monitor_lines(t_monitor *x, long n)
{
	if(n != x->lines) patcher_dirty (x->patcher);
	x->lines = n;
	qelem_set(x->m_qelem);
}

void monitor_grid(t_monitor *x, long n)
{
	if(n != x->grid) patcher_dirty (x->patcher);
	x->grid = n;
	qelem_set(x->m_qelem);
}

void monitor_offset(t_monitor *x, short n)
{
	if(n != x->offset) patcher_dirty (x->patcher);	
	x->offset = n;
}

void monitor_precision(t_monitor *x, short n)
{
	n = CLIP(n, 0, 6);
	
	if(n != x->precision) patcher_dirty (x->patcher);	
	x->precision = n;
	qelem_set(x->m_qelem);
}

//___________________________________________________________________________________________________________________________
// zoom

void monitor_zoom(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	// set defaults
	x->zoom_factor = 1;
	x->zoom_focal_point_x = x->zoom_focal_point_y = 0;
	
	if(ac > 0)
	{
		switch(av[0].a_type)
		{
			case A_FLOAT :	x->zoom_factor = av[0].a_w.w_float; break;
			case A_LONG:	x->zoom_factor = av[0].a_w.w_long; break;
		}
		x->zoom_factor = CLIP(x->zoom_factor, 1, 95);
	}

	if(ac > 1)
		x->zoom_focal_point_x = CLIP(av[1].a_w.w_float, -1, 1);
	if(ac > 2)
		x->zoom_focal_point_y = CLIP(av[2].a_w.w_float, -1, 1);
	
	qelem_set(x->m_qelem);
}

//___________________________________________________________________________________________________________________________
// grid units

void monitor_gridunit_xyz(t_monitor *x, double n)
{
	x->gridunit_xyz = (n > 0 ? n : 1);
	qelem_set(x->m_qelem);
}

void monitor_gridunit_ae(t_monitor *x, long n)
{
	x->gridunit_ae = (n >= 0 ? n : 0);
	qelem_set(x->m_qelem);
}

void monitor_gridunit_d(t_monitor *x, double n)
{
	x->gridunit_d = (n * 0.1 > 0 ? n * 0.1 : 1);
	qelem_set(x->m_qelem);
}

//___________________________________________________________________________________________________________________________
// nudge units

void monitor_nudgeunit_xyz(t_monitor *x, double n)
{
	x->nudgeunit_xyz = abs(n);
}

void monitor_nudgeunit_a(t_monitor *x, double n)
{
	x->nudgeunit_a = abs(n);
}

void monitor_nudgeunit_d(t_monitor *x, double n)
{
	x->nudgeunit_d = abs(n);
}

//___________________________________________________________________________________________________________________________
// enable / disable keyboard and mouse

void monitor_enablekeys(t_monitor *x, long n)
{
	if(n != x->enablekeys) patcher_dirty (x->patcher);
	x->enablekeys = (n == 0 ? 0 : 1);
}

void monitor_local(t_monitor *x, long n)
{
	if(n != x->local) patcher_dirty (x->patcher);
	x->local = (n == 0 ? 0 : 1);
}	


//___________________________________________________________________________________________________________________________
// keyboard commands

void monitor_key(t_monitor *x, short key, short mod)
{
	short i, number;
	t_atom n;
	
//	post("%d", key);
	
	if (x->enablekeys == 0) return;					// keyboard disabled
			
	if (key == 8)									// delete key
	{									
		for(i=0;i<MAXPOINTS;i++)
		{
			if(x->coord[i].selected == 1)
			{
				x->coord[i].selected = 0;
				monitor_selection_output(x, i);

				x->coord[i].status = 0;
				monitor_output(x,i);
			}
		}
	}
		
	if (key >= 48 && key <= 57)								// keys no 0 - 9
	{
		if(mod != 512) x->first_digit = 0;
			
		number = x->first_digit * 10 + key - 48;

		if(x->new_snapshot == 0 && x->rcl_snapshot == 0)	// (select point)
		{
			number = number - 1; // point index is zero-based

			if(number > MAXPOINTS - 1)
			{
				qelem_set(x->m_qelem);
				x->new_number = -1;
				x->first_digit = 0;
				return;
			}
			
			if(number > 8 || mod != 512)
			{
				if(x->coord[number].status == 1)
				{
					x->coord[number].selected = 1 - x->coord[number].selected;
					monitor_selection_output(x, number);
					qelem_set(x->m_qelem);
					x->new_number = -1;
					x->first_digit = 0;

					if(x->coord[number].selected == 1)
						monitor_output(x, number);
					return;
				}
				else if(x->new_number == number) x->new_number = -1;
				else x->new_number = number;
			}
		}
		
		else								// (recall or store snapshot)
		{			
			if(number > 9 || mod != 512)
				x->snapshot_num = number;
		}
		
		if(mod == 512) x->first_digit = key - 48;
	}

	if(x->local == 0) x->new_number = -1;	// can't set new points without local enabled

	if (key == 68 || key == 100)					// "d" and "D" key
	{
		for(i=0;i<MAXPOINTS;i++) x->coord[i].selected = 0;
	}
		
	if (key == 97 || key == 65)						// "a" and "A" key
	{
		for(i=0;i<MAXPOINTS;i++)
			if(x->coord[i].status == 1) x->coord[i].selected = 1;
	}
	
	if (key == 115)									// "s" key (select snapshot)
	{
		x->new_number = -1;
		x->new_snapshot = 0;
		x->snapshot_num = 0;
		x->rcl_snapshot = 1 - x->rcl_snapshot;
	}
	
	if (key == 83)									// "S" key (+shift, store snapshot)
	{
		x->new_number = -1;
		x->first_digit = 0;
		x->rcl_snapshot = 0;
		x->snapshot_num = 0;
		x->new_snapshot = 1 - x->new_snapshot;
	}
	
	if (key == 3 || key == 13)						// enter and return
	{
		if(x->new_snapshot)
		{
			SETLONG(&n, x->snapshot_num);
			monitor_store(x, 0L, 1, &n);
		}
		if(x->rcl_snapshot)
			monitor_int(x, x->snapshot_num);
		x->rcl_snapshot = 0;
		x->snapshot_num = 0;
		x->new_snapshot = 0;
	}
			
	if (key >= 28 && key <= 31)						// arrow keys
		monitor_nudge(x,key,mod);
		
	if (key == 43)											// zoom
		x->zoom_factor = CLIP(x->zoom_factor + 0.05, 1, 95);
	if (key == 45)
		x->zoom_factor = CLIP(x->zoom_factor - 0.05, 1, 95);
	if (key == 61)
	{
		x->zoom_factor = 1.;
		x->zoom_focal_point_x = x->zoom_focal_point_y = 0;
	}
	
	qelem_set(x->m_qelem);

}

void monitor_nudge(t_monitor *x, short n, short mod)  // nudge selected points
{
	short i;
	
#ifdef MAC_VERSION
	if(mod == 2048)		// alt-key
#else
	if(mod == 1152)		// caps lock on Windows
#endif
	{	
		for(i=0;i<MAXPOINTS;i++)
		{
			if(x->coord[i].selected)
			{
				switch(n)
				{
					case 28:									// rotate CCW
						x->coord[i].a -= x->nudgeunit_a;break;
					case 29:									// rotate CW
						x->coord[i].a += x->nudgeunit_a;break;
					case 30:									// radial move
						x->coord[i].d += x->nudgeunit_d;break;
					case 31:
						x->coord[i].d -= x->nudgeunit_d;
						x->coord[i].d = (x->coord[i].d > 0. ? x->coord[i].d : 0);
						break;
				}

				poltocar(&x->coord[i]);				// conversion aed -> xyz

				monitor_output(x, i);
			}
		}
	}
#ifdef MAC_VERSION
	if(mod == 512)		// shift-key
#else
	if(mod == 640)
#endif
	{
		for(i=0;i<MAXPOINTS;i++)
		{
			if(x->coord[i].selected)
			{
				switch(n)
				{
					case 28:
						x->coord[i].x -= x->nudgeunit_xyz;break;	// nudge in y direction
					case 29:
						x->coord[i].x += x->nudgeunit_xyz;break;
					case 30:
						x->coord[i].z += x->nudgeunit_xyz;break;	// nudge in z direction
					case 31:
						x->coord[i].z -= x->nudgeunit_xyz;break;
				}

				cartopol(&x->coord[i]);				// conversion xyz -> aed

				monitor_output(x, i);
			}
		}
	}
#ifdef MAC_VERSION
	if(mod == 0)		// no modifier key
#else
	if(mod == 128)
#endif
	{
		for(i=0;i<MAXPOINTS;i++)
		{
			if(x->coord[i].selected)
			{
				switch(n)
				{
					case 28:
						x->coord[i].x -= x->nudgeunit_xyz;break;	// nudge in y direction
					case 29:
						x->coord[i].x += x->nudgeunit_xyz;break;
					case 30:
						x->coord[i].y += x->nudgeunit_xyz;break;	// nudge in x direction
					case 31:
						x->coord[i].y -= x->nudgeunit_xyz;break;
				}

				cartopol(&x->coord[i]);				// conversion xyz -> aed

				monitor_output(x, i);
			}
		}
	}
}


//___________________________________________________________________________________________________________________________
// mouse manipulation

void monitor_click(t_monitor *x, Point pt, short modifiers)
{
	short i, j, hit;
	
	short left = x->m_box.b_rect.left;
	short top = x->m_box.b_rect.top;
		
	short size = x->h_size; //right - left;
	if(x->local == 0) return;

	monitor_mouse_output(x, pt, 1);	 // output mouse coordinates

	x->m_box.b_pending = 1; // set pending flag (object doesn't receive "enter" message without it...)
	
	// set a new point
	if(x->new_number > -1)
	{
		monitor_new_point(x, pt);
		qelem_set(x->m_qelem);
	}
	
	// calculate zoom view (only if mode == 0)
	if(x->mode == 0)
	{
		size = size * x->zoom_factor;	
		left = left - x->zoom_focal_point_x * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
		top  = top  + x->zoom_focal_point_y * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
	}
	
	hit = 0;
	
	for(i=0;i<MAXPOINTS;i++)
	{
		// mouse hits xy location
		if(x->coord[i].status == 1	&& pt.h - left < (x->coord[i].x + 1) *  0.5 * (size - 10) + 5 + RADIUS
									&& pt.h - left > (x->coord[i].x + 1) *  0.5 * (size - 10) + 5 - RADIUS
							 		&& pt.v - top  < (x->coord[i].y - 1) * -0.5 * (size - 10) + 5 + RADIUS
							 		&& pt.v - top  > (x->coord[i].y - 1) * -0.5 * (size - 10) + 5 - RADIUS)
		{
			// reset all previously activated numbers unless shift key is depressed
			if(modifiers != 512 && x->coord[i].selected == 0)
			{
				for(j=0;j<MAXPOINTS;j++)
				{
					if(x->coord[j].selected)
					{
						x->coord[j].selected = 0;
						monitor_selection_output(x, j);
					}
				}
			}

			if(modifiers != 512)
				x->coord[i].selected = 1;
			else
				x->coord[i].selected = 1 - x->coord[i].selected;

			monitor_selection_output(x, i);

			if(x->coord[i].selected == 1)
				monitor_output(x, i);
				
			hit = 1;
			x->h_mouse = pt.h;
			x->v_mouse = pt.v;
			wind_drag((method)monitor_drag_xy, x, pt);
			break;

		}	
		// mouse hits xz location
		if(x->coord[i].status == 1	&& pt.h - left < (x->coord[i].x + 1) *  0.5 * (size - 10) + 5 + RADIUS
									&& pt.h - left > (x->coord[i].x + 1) *  0.5 * (size - 10) + 5 - RADIUS
							 		&& pt.v - top - size < (x->coord[i].z - 1) * -0.5 * (size - 10) + 5 + RADIUS
							 		&& pt.v - top - size > (x->coord[i].z - 1) * -0.5 * (size - 10) + 5 - RADIUS)
		{					 
			// reset all previously activated numbers unless shift key is depressed
			if(modifiers != 512 && x->coord[i].selected == 0)
			{
				for(j=0;j<MAXPOINTS;j++)
				{
					if(x->coord[j].selected)
					{
						x->coord[j].selected = 0;
						monitor_selection_output(x, j);
					}
				}
			}

			if(modifiers != 512)
				x->coord[i].selected = 1;
			else
				x->coord[i].selected = 1 - x->coord[i].selected;

			monitor_selection_output(x, i);

			if(x->coord[i].selected == 1)
				monitor_output(x, i);

			hit = 1;
			x->h_mouse = pt.h;
			x->v_mouse = pt.v;
			wind_drag((method)monitor_drag_xz, x, pt);
			break;
		}	
	}
	if(!hit)
	{
		for(i=0;i<MAXPOINTS;i++)
		{
			// reset all activated numbers unless shift key is depressed
			if(modifiers != 512 && x->coord[i].selected)
			{
				x->coord[i].selected = 0;
				monitor_selection_output(x, i);
			}

			// copy active status to "sel" array (used in "monitor_sel_region" method)
			x->coord[i].sel = x->coord[i].selected;
		}
		
		x->rectangle[0] = pt.h;
		x->rectangle[1] = pt.v;
		x->rectangle[2] = pt.h;
		x->rectangle[3] = pt.v;
		x->sel_rect = 1;
		wind_drag((method)monitor_sel_region, x, pt);
	}
	
	qelem_set(x->m_qelem);
}

void monitor_drag_xy(t_monitor *x, Point pt, short but)
{
	double h_delta, v_delta;

	short i, f;
		
	short left = x->m_box.b_rect.left;
	short top = x->m_box.b_rect.top;
		
	short size = x->h_size;

	monitor_mouse_output(x, pt, but);	 // output mouse coordinates
		
	// calculate zoom view (only if mode == 0)
	if(x->mode == 0)
	{
		size = size * x->zoom_factor;	
		left = left - x->zoom_focal_point_x * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
		top  = top  + x->zoom_focal_point_y * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
	}
		
	f = 1;
	
	h_delta = (x->h_mouse - pt.h) *  2 / (double)size;
	v_delta = (x->v_mouse - pt.v) *  2 / (double)size;
	
	if(!but)
		return; // if there's no mouse button being held down, then stop dragging and exit
	
	for(i=0;i<MAXPOINTS;i++)
	{
		if(x->coord[i].selected == 1 && (x->coord[i].x - h_delta > 1. || x->coord[i].x - h_delta < -1. || 
							 x->coord[i].y + v_delta > 1. || x->coord[i].y + v_delta < -1.))
		{f = 0; break;}
	}

	if(f)
	{
		for(i=0;i<MAXPOINTS;i++)
		{
			if(x->coord[i].selected == 1)
			{
				x->coord[i].x = x->coord[i].x - h_delta;
				x->coord[i].y = x->coord[i].y + v_delta;
			
				cartopol(&x->coord[i]);				// conversion xyz -> aed
				
				monitor_output(x,i);
			}
		}
	
	x->h_mouse = pt.h;
	x->v_mouse = pt.v;

	qelem_set(x->m_qelem);
	}
}

void monitor_drag_xz(t_monitor *x, Point pt, short but)
{
	double h_delta, v_delta, z_min;
	short i, f;
	
	short left = x->m_box.b_rect.left + 1;
	// short top = x->m_box.b_rect.top + 1;
	short right = x->m_box.b_rect.right - 1;
	// short bottom = x->m_box.b_rect.bottom - 1;
		
	short hsize = right - left;

	monitor_mouse_output(x, pt, but);	 // output mouse coordinates
	
	z_min = (x->mode == 1 ? 0. : -1.);
	
	f = 1;
	
	h_delta = (x->h_mouse - pt.h) *  2 / (double)hsize;
	v_delta = (x->v_mouse - pt.v) * -2 / (double)hsize;
	
	if(!but)
	{
		return; // if there's no mouse button being held down, then stop dragging and exit
	}
	
	for(i=0;i<MAXPOINTS;i++)
	{
		if(x->coord[i].selected == 1 && (x->coord[i].x - h_delta > 1. || x->coord[i].x - h_delta < -1. || 
							 x->coord[i].z - v_delta > 1. || x->coord[i].z - v_delta < z_min))
		{f = 0; break;}
	}

	if(f)
	{
		for(i=0;i<MAXPOINTS;i++)
		{
			if(x->coord[i].selected == 1)
			{
				x->coord[i].x = x->coord[i].x - h_delta;
				x->coord[i].z = x->coord[i].z - v_delta;
			
				cartopol(&x->coord[i]);				// conversion xyz -> aed
				
				monitor_output(x,i);
			}
		}
	
	x->h_mouse = pt.h;
	x->v_mouse = pt.v;

	qelem_set(x->m_qelem);
	}
}

void monitor_sel_region(t_monitor *x, Point pt, short but)
{
	short i;
	short xval, yval, zval;		// on screen
	
	short left = x->m_box.b_rect.left;
	short top = x->m_box.b_rect.top + 1;
		
	short size = x->h_size;
	
	short point_was_active;

	monitor_mouse_output(x, pt, but);	 // output mouse coordinates
	
	// calculate zoom view (only if mode == 0)
	if(x->mode == 0)
	{
		size = size * x->zoom_factor;	
		left = left - x->zoom_focal_point_x * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
		top  = top  + x->zoom_focal_point_y * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
	}
		
	if(!but) // if there's no mouse button being held down, then stop dragging and exit
	{
		x->sel_rect = 0;	

		for(i=0;i<MAXPOINTS;i++)
		{
			if(x->coord[i].selected != x->coord[i].sel)
			{
				monitor_selection_output(x, i);
			}
		}

		qelem_set(x->m_qelem);
		return;
	}
	
	x->rectangle[2] = pt.h;
	x->rectangle[3] = pt.v;
	
	for(i=0;i<MAXPOINTS;i++)
	{
		xval = left + (1 + x->coord[i].x) * size * 0.5;
		yval = top  + (1 - x->coord[i].y) * size * 0.5;
		zval = top  + (1 - x->coord[i].z) * size * 0.5 + size;
		
		point_was_active = x->coord[i].selected;

		x->coord[i].selected = x->coord[i].sel;
		
		if(xval >= (x->rectangle[0] <= x->rectangle[2] ? x->rectangle[0] : x->rectangle[2]) &&
		   xval <= (x->rectangle[0] >= x->rectangle[2] ? x->rectangle[0] : x->rectangle[2]) &&
		   yval >= (x->rectangle[1] <= x->rectangle[3] ? x->rectangle[1] : x->rectangle[3]) &&
		   yval <= (x->rectangle[1] >= x->rectangle[3] ? x->rectangle[1] : x->rectangle[3]) &&
		   x->coord[i].status != 0)
			 x->coord[i].selected = 1 - x->coord[i].sel;
			 
		if(xval >= (x->rectangle[0] <= x->rectangle[2] ? x->rectangle[0] : x->rectangle[2]) &&
		   xval <= (x->rectangle[0] >= x->rectangle[2] ? x->rectangle[0] : x->rectangle[2]) &&
		   zval >= (x->rectangle[1] <= x->rectangle[3] ? x->rectangle[1] : x->rectangle[3]) &&
		   zval <= (x->rectangle[1] >= x->rectangle[3] ? x->rectangle[1] : x->rectangle[3]) &&
		   x->coord[i].status != 0)
			 x->coord[i].selected = 1 - x->coord[i].sel;
			 
		if(!point_was_active && x->coord[i].selected) monitor_output(x,i);
	}
	
	qelem_set(x->m_qelem);
}

void monitor_new_point(t_monitor *x, Point pt)	// set a new point
{
	short left = x->m_box.b_rect.left;
	short top = x->m_box.b_rect.top;
		
	short size = x->h_size;

	double xval, yval, zval;

	// calculate zoom view (only if mode == 0)
	if(x->mode == 0)
	{
		size = size * x->zoom_factor;	
		left = left - x->zoom_focal_point_x * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
		top  = top  + x->zoom_focal_point_y * size * 0.5 - (x->zoom_factor - 1) * x->h_size * 0.5;
	}

	xval = -1 + (pt.h-left - 5) * 2 / (double)(size - 10);
	yval = (pt.v-top - 5) * -2 / (double)(size - 10) + 1;
	zval = (pt.v-top - size - 5) * -2 / (double)(size - 10) + 1;

	if(yval > -1.)
	{
		x->coord[x->new_number].x = xval;
		x->coord[x->new_number].y = yval;
		x->coord[x->new_number].z = 0;
	}
	else
	{
		x->coord[x->new_number].x = xval;
		x->coord[x->new_number].y = 0;
		x->coord[x->new_number].z = zval;
	}
	
		x->coord[x->new_number].status = 1;
		
		sprintf(x->coord[x->new_number].name, "%d", x->new_number + 1);
		
		cartopol(&x->coord[x->new_number]);				// conversion xyz -> aed

		x->new_number = -1;
		x->first_digit = 0;		
}


//___________________________________________________________________________________________________________________________
//
// SNAPSHOTS
//
//___________________________________________________________________________________________________________________________

//___________________________________________________________________________________________________________________________
// store snapshots

void monitor_store(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	snapshot  *pointer, *new_pointer;
	short i,j;
	short num_of_points;
	char index[64];
	short size;
			
	// count points on monitor
	for(i=0,num_of_points=0;i<MAXPOINTS;i++)
		if(x->coord[i].status != 0) num_of_points++;
		
	// ... empty screen
	if(num_of_points == 0)
		return;
	
	// bad arguments
	if(ac > 1)
		return;
		
	// allocate memory
	size = sizeof(snapshot) + (num_of_points - 1) * sizeof(coords);
	new_pointer = (snapshot *)sysmem_newptr(size);

	switch(av[0].a_type)
	{
		case A_LONG:
			sprintf(index, "%ld", av[0].a_w.w_long);
			break;
		case A_SYM:
			strcpy(index, (char *)av[0].a_w.w_sym->s_name);
			break;
		default: return;
	}
	
	// check if snapshot already exists	
	pointer = monitor_get_snapshot_by_index(x->first_snapshot, index);
	if(pointer)
		monitor_snapshot_remove(x, pointer);
	
	// write index
	new_pointer->index = sysmem_newptr(sizeof(index));
	strcpy(new_pointer->index, index);
	
	// build linked list
	monitor_snapshot_link(x, new_pointer);
			
	// write data
	new_pointer->num_of_points = num_of_points;
	new_pointer->time = new_pointer->mode = -1;
	
	for(i=0,j=0;i<MAXPOINTS;i++)
	{
		if(x->coord[i].status != 0)
		{
			new_pointer->data[j].number = i + 1;
			sysmem_copyptr(&x->coord[i].name, new_pointer->data[j].name, 16);					// copy name
			sysmem_copyptr(&x->coord[i].x, &new_pointer->data[j].x,  sizeof(double) * 6);		// copy all coordinates
			j++;
		}
	}
	
	// update snapshot menu
	monitor_rewrite_snapshotmenu(x);
	monitor_update_snapshotmenu(x, new_pointer);
}

void monitor_snapshot_link(t_monitor *x, snapshot *pointer)		// link in
{
	if(! x->first_snapshot)
		x->first_snapshot = pointer;
	if(x->last_snapshot)
		x->last_snapshot->next = pointer;
	
	pointer->prev = x->last_snapshot;
	pointer->next = 0;

	x->last_snapshot = pointer;
}

//___________________________________________________________________________________________________________________________
// recall snapshots

void monitor_int(t_monitor *x, long n)
{
	char name[3];
	snapshot *pointer;
	
	sprintf(name, "%ld", n);
	
	// find snapshot
	pointer = monitor_get_snapshot_by_index(x->first_snapshot, name);
	if(pointer)
		monitor_recall(x, pointer, x->interpol_time, x->interpol_mode);
}

void monitor_anything(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{	
	short time, mode;
	snapshot *pointer;
		
	// find snapshot
	pointer = monitor_get_snapshot_by_index(x->first_snapshot, s->s_name);
	if(pointer)
	{
		time = (ac > 0 && av[0].a_type == A_LONG ?
			av[0].a_w.w_long : (pointer->time == -1 ? x->interpol_time : pointer->time));
		mode = (ac > 1 && av[1].a_type == A_LONG ?
			av[1].a_w.w_long : (pointer->mode == -1 ? x->interpol_mode : pointer->mode));
		monitor_recall(x, pointer, time, mode);
	}
}

void monitor_list(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	short time, mode;
	char name[8];
	snapshot *pointer;
	
	if(av[0].a_type != A_LONG) return;
	
	sprintf(name, "%ld", av[0].a_w.w_long);
	
	// find snapshot
	pointer = monitor_get_snapshot_by_index(x->first_snapshot, name);
	if(pointer)
	{
		time = (av[1].a_type == A_LONG ?
			av[1].a_w.w_long : (pointer->time == -1 ? x->interpol_time : pointer->time));
		mode = (ac > 2 && av[2].a_type == A_LONG ?
			av[2].a_w.w_long : (pointer->mode == -1 ? x->interpol_mode : pointer->mode));
		monitor_recall(x, pointer, time, mode);
	}
}

void *monitor_get_snapshot_by_index(snapshot *pointer, char *index)		// find snapshot in linked list
{
	while(pointer)
	{
		if(! strcmp(pointer->index, index)) return(pointer);
		pointer = pointer->next;
	}
	return(0);
}

// recall snapshots and do interpolation, if necessary

void monitor_recall(t_monitor *x, snapshot *pointer, short time, short mode)
{
	short i, j;
	short num_of_points, number;
	
	x->actual_interp_mode = mode;
	
	num_of_points = pointer->num_of_points;
	
	if (time < x->time_interval)
	// no interpolation...
	{
		clock_unset(x->clock); // stop any running interpolation

		for(j=0;j<num_of_points;j++)
		{
			number = pointer->data[j].number;
			strcpy(x->coord[number - 1].name, pointer->data[j].name);							// copy name
			sysmem_copyptr(&pointer->data[j].x, &x->coord[number - 1].x,  sizeof(double) * 6);	// copy aed coordinates
	
			x->coord[number - 1].status = 1;
		
			monitor_output(x,number - 1);
		}

		for(i=0;i<MAXPOINTS;i++)
		{
			// delete points that are not present in target snapshot
			if(x->coord[i].status == 1)
			{
				x->coord[i].status = 0;
			
				for(j=0;j<num_of_points;j++)		
					if(pointer->data[j].number == i + 1) x->coord[i].status = 1;				

				if (x->coord[i].status == 0) monitor_output(x,i);
			}
		}
	}
	else
	// interpolation
	{
		x->remaining_time = time;
		x->target_snapshot = pointer;

		monitor_interpol(x);
	}

	qelem_set(x->m_qelem);
	
	// update snapshot menu
	monitor_update_snapshotmenu(x, pointer);
}


//___________________________________________________________________________________________________________________________
// remove snapshots

void monitor_remove(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	snapshot *pointer = 0;
	char	  name[3];
		
	switch (av[0].a_type)
	{
		case A_LONG:
			sprintf(name, "%ld", av[0].a_w.w_long);
			pointer = monitor_get_snapshot_by_index(x->first_snapshot, name); break;
		case A_SYM:
			pointer = monitor_get_snapshot_by_index(x->first_snapshot, av[0].a_w.w_sym->s_name); break;
	}

	if(!pointer) return;
	else monitor_snapshot_remove(x, pointer);

	// update snapshot menu
	monitor_rewrite_snapshotmenu(x);
}

void monitor_snapshot_remove(t_monitor *x, snapshot *pointer)
{
	// rearrange linked list

	if (pointer->prev)
		pointer->prev->next = pointer->next;
	if (pointer->next)
		pointer->next->prev = pointer->prev;
	if (x->first_snapshot == pointer)
		x->first_snapshot = pointer->next;
	if (x->last_snapshot == pointer)
		x->last_snapshot = pointer->prev;
		
	// free allocated memory			
	sysmem_freeptr(pointer);
}

void monitor_remove_all(t_monitor *x)
{
	snapshot *pointer = x->first_snapshot, *next_pointer;
	
	while(pointer)
	{	
		next_pointer = pointer->next;
		// free allocated memory
		sysmem_freeptr(pointer);
		
		pointer = next_pointer;
	}
	
	x->first_snapshot = x->last_snapshot = 0;

	// update snapshot menu
	monitor_rewrite_snapshotmenu(x);
}

//___________________________________________________________________________________________________________________________
// set interpolation time / interpolation mode / time interval

void monitor_interpol_time(t_monitor *x, short n)
{
	x->interpol_time = n;
}

void monitor_interpol_mode(t_monitor *x, short n)
{
	x->interpol_mode = n;
}

void monitor_interval(t_monitor *x, short n)
{
	x->time_interval = (n > 1 ? n : 1);
}

void monitor_set_interpol(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	snapshot *pointer;
	char	 name[8];
	
	switch(av[0].a_type)
	{
		case A_LONG:
			sprintf(name, "%ld", av[0].a_w.w_long);
			pointer = monitor_get_snapshot_by_index(x->first_snapshot, name);
			break;
		case A_SYM:
			pointer = monitor_get_snapshot_by_index(x->first_snapshot, av[0].a_w.w_sym->s_name);
			break;
		default: return;
	}
			
	if(! pointer)
	{
		error("%s: snapshot '%s' doesn't exist", __EXTERNAL_NAME__, av[0].a_w.w_sym->s_name);
		return;
	}
	
	pointer->time = (ac > 1 && av[1].a_type == A_LONG ? av[1].a_w.w_long : -1);
	pointer->mode = (ac > 2 && av[2].a_type == A_LONG ? av[2].a_w.w_long : -1);
}

//___________________________________________________________________________________________________________________________
// interpolation

void monitor_interpol(t_monitor *x)
{
	short i;
	float distance[3];	
	short number;
	float term = (float)x->time_interval / x->remaining_time;
	
	term = (term > 1 ? 1 : term);
		
	if(x->actual_interp_mode == 0)
	// linear interpolation
	{
		for(i=0;i<x->target_snapshot->num_of_points;i++)
		{
			number = x->target_snapshot->data[i].number;
			if(x->coord[number-1].status)
			{
				// calculate distance between actual value and target value
				distance[0] = x->target_snapshot->data[i].x - x->coord[number-1].x;		
				distance[1] = x->target_snapshot->data[i].y - x->coord[number-1].y;		
				distance[2] = x->target_snapshot->data[i].z - x->coord[number-1].z;
	
				if(distance[0] != 0.0 || distance[1] != 0.0 || distance[2] != 0.0) // only if distance != 0...
				{
					x->coord[number-1].x = x->coord[number-1].x + distance[0] * term;		
					x->coord[number-1].y = x->coord[number-1].y + distance[1] * term;		
					x->coord[number-1].z = x->coord[number-1].z + distance[2] * term;		
	
					cartopol(&x->coord[number - 1]);
					monitor_output(x, number - 1);
				}
			}
		}
	}
	else								
	// polar interpolation
	{
		for(i=0;i<x->target_snapshot->num_of_points;i++)
		{
			number = x->target_snapshot->data[i].number;
			if(x->coord[number-1].status)
			{
				// calculate distance between actual value and target value
				distance[0] =  x->target_snapshot->data[i].a - x->coord[number-1].a;		
				distance[1] =  x->target_snapshot->data[i].e - x->coord[number-1].e;		
				distance[2] =  x->target_snapshot->data[i].d - x->coord[number-1].d;
			
				// find shortest distance
				distance[0] = (distance[0] >  180 ? distance[0] - 360 : distance[0]);
				distance[0] = (distance[0] < -180 ? distance[0] + 360 : distance[0]);
				
				if(distance[0] != 0.0 || distance[1] != 0.0 || distance[2] != 0.0) // only if distance != 0...
				{
					x->coord[number-1].a = x->coord[number-1].a + distance[0] * term;
					x->coord[number-1].e = x->coord[number-1].e + distance[1] * term;		
					x->coord[number-1].d = x->coord[number-1].d + distance[2] * term;		
	
					poltocar(&x->coord[number - 1]);
					monitor_output(x, number - 1);
				}
			}
		}
	}
	
	x->remaining_time = x->remaining_time - x->time_interval;
	qelem_set(x->m_qelem);
	
	if(x->remaining_time > 0)
		clock_delay(x->clock, x->time_interval);
	else
		monitor_recall(x, x->target_snapshot, 0, 0);
}

void monitor_xfade(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	short	i,j;
	char 	name[3];
	float 	distance[3];	
	short 	number, mode;
	float 	term;

	snapshot *pointer1, *pointer2;

	clock_unset(x->clock); // stop any running interpolation

	switch(av[0].a_type)
	{
		case(A_LONG):
				sprintf(name, "%ld", av[0].a_w.w_long);
				pointer1 = monitor_get_snapshot_by_index(x->first_snapshot, name);
				break;
		case(A_SYM):
				pointer1 = monitor_get_snapshot_by_index(x->first_snapshot, av[0].a_w.w_sym->s_name);
				break;
		default: return;
	}
	if(!pointer1) return;

	switch(av[1].a_type)
	{
		case(A_LONG):
				sprintf(name, "%ld", av[1].a_w.w_long);
				pointer2 = monitor_get_snapshot_by_index(x->first_snapshot, name);
				break;
		case(A_SYM):
				pointer2 = monitor_get_snapshot_by_index(x->first_snapshot, av[1].a_w.w_sym->s_name);
				break;
		default: return;
	}
	if(!pointer2) return;

	switch(av[2].a_type)
	{
		case(A_LONG):
			term = CLIP(av[2].a_w.w_long, 0, 1); break;
		case(A_FLOAT):
			term = CLIP(av[2].a_w.w_float, 0, 1); break;
		default:
			term = 0;
	}
	
	switch(av[3].a_type)
	{
		case(A_LONG):
			mode = CLIP(av[3].a_w.w_long, 0, 1); break;	
		default:
			mode = x->interpol_mode;
	}
	
	if(term == 0)
	{
		monitor_recall(x, pointer1, 0, 0);
		return;
	}			
	if(term == 1)
	{
		monitor_recall(x, pointer2, 0, 0);
		return;
	}				
	
	if(mode == 0)
	// cartesian interpolation
	{
		for(i=0;i<pointer1->num_of_points;i++)
		{
			number = pointer1->data[i].number;
			
			j = 0;
			do
			{
				if(number == pointer2->data[j].number)
				{
					// calculate distance between actual value and target value
					distance[0] = pointer2->data[j].x - pointer1->data[i].x;		
					distance[1] = pointer2->data[j].y - pointer1->data[i].y;		
					distance[2] = pointer2->data[j].z - pointer1->data[i].z;		
	
					x->coord[number-1].x = pointer1->data[i].x + distance[0] * term;		
					x->coord[number-1].y = pointer1->data[i].y + distance[1] * term;		
					x->coord[number-1].z = pointer1->data[i].z + distance[2] * term;		

					strcpy(x->coord[number - 1].name, pointer1->data[i].name);
					x->coord[number-1].status = 1;
	
					cartopol(&x->coord[number - 1]);
					monitor_output(x, number - 1);
				}
			} while(number != pointer2->data[j].number && j++ < pointer2->num_of_points);

		}
	}
	else								
	// polar interpolation
	{
		for(i=0;i<pointer1->num_of_points;i++)
		{
			number = pointer1->data[i].number;

			j = 0;
			do
			{
				if(number == pointer2->data[j].number)
				{
					// calculate distance between actual value and target value
					distance[0] = pointer2->data[j].a - pointer1->data[i].a;		
					distance[1] = pointer2->data[j].e - pointer1->data[i].e;		
					distance[2] = pointer2->data[j].d - pointer1->data[i].d;
			
					// find shortest distance
					distance[0] = (distance[0] >  180 ? distance[0] - 360 : distance[0]);
					distance[0] = (distance[0] < -180 ? distance[0] + 360 : distance[0]);

					x->coord[number-1].a = pointer1->data[i].a + distance[0] * term;		
					x->coord[number-1].e = pointer1->data[i].e + distance[1] * term;		
					x->coord[number-1].d = pointer1->data[i].d + distance[2] * term;
					
					strcpy(x->coord[number - 1].name, pointer1->data[i].name);
					x->coord[number-1].status = 1;	
	
					poltocar(&x->coord[number - 1]);
					monitor_output(x, number - 1);
				}
			} while(number != pointer2->data[j].number && ++j < pointer2->num_of_points);
		}
	}

	qelem_set(x->m_qelem);
}


//___________________________________________________________________________________________________________________________
// write snapshot files

// write all snapshots to a XML formatted file

void monitor_write(t_monitor *x, t_symbol *s)
{
	if(!x->first_snapshot) return;	// nothing to write
	defer_low(x,(method)monitor_dowrite, s, 0, 0L);
}

void monitor_dowrite(t_monitor *x, t_symbol *s, short argc, t_atom *argv)
{
	t_filehandle file;
	char filename[64] = "snapshots.xml";
	short path;

	if (!s->s_name[0])
	{
		if (saveas_dialog(filename, &path, 0L))
			return;
	}
			
	else
	{
		strcpy(filename, s->s_name); 
		path = path_getdefault();
	} 

	if (path_createsysfile(filename, path, 'TEXT', &file))
	{
		error("%s: couldn't write snapshots to file \"%s\"", __EXTERNAL_NAME__, filename);
		return;
	}
		
	write_to_file(file, x->first_snapshot);
	
	sysfile_close(file);

}

void write_to_file(t_filehandle file, snapshot *pointer)
{
	short i, err;
	long file_pos;
	long count;
	char c[128];
	
	sprintf(c, "<?xml version=\"1.0\" standalone=\"yes\" encoding=\"UTF-8\"?>\r\r");
	count = strlen(c);
	err = sysfile_write(file, &count, c);
	
	sprintf(c, "<ambiscore version=\"1.0\">\r");
	count = strlen(c);
	err = sysfile_write(file, &count, c);

	// coordinate system definition
	sprintf(c, "\t<xyz-def handedness=\"right\" x-axis=\"right\" />\r");
	count = strlen(c);
	err = sysfile_write(file, &count, c);
	
	while (pointer)
	{				
		// write to file
				
		sprintf(c, "\t<snapshot index = \"%s\">\r", pointer->index);
		count = strlen(c);
		err = sysfile_write(file, &count, c);
		
		if(pointer->time != -1)
		{
			sprintf(c, "\t\t<interpolation_time>%d</interpolation_time>\r", pointer->time);
			count = strlen(c);
			err = sysfile_write(file, &count, c);
		}

		if(pointer->mode != -1)
		{
			sprintf(c, "\t\t<interpolation_mode>%d</interpolation_mode>\r", pointer->mode);
			count = strlen(c);
			err = sysfile_write(file, &count, c);
		}
				
		for(i=0;i<pointer->num_of_points;i++)
		{		
			sprintf(c, "\t\t<point>\r\t\t\t<number>%d</number>\r", pointer->data[i].number);
			count = strlen(c);
			err = sysfile_write(file, &count, c);
			
						
			if(string_to_number(pointer->data[i].name) != pointer->data[i].number)
			{
				sprintf(c, "\t\t\t<name>%s</name>\r", pointer->data[i].name);
				count = strlen(c);
				err = sysfile_write(file, &count, c);
			}
			
			sprintf(c, "\t\t\t<xyz>%f %f %f</xyz>\r\t\t</point>\r",
					pointer->data[i].x, pointer->data[i].y, pointer->data[i].z);
			count = strlen(c);
			err = sysfile_write(file, &count, c);
		}

		sprintf(c, "\t</snapshot>\r");
		count = strlen(c);
		err = sysfile_write(file, &count, c);
		
		pointer = pointer->next;
	}

	sprintf(c, "</ambiscore>");
	count = strlen(c);
	err = sysfile_write(file, &count, c);
			
	sysfile_getpos(file, &file_pos);
	sysfile_seteof(file, file_pos);
}


//___________________________________________________________________________________________________________________________
// read and parse snapshot files

// read snapshots from a XML formatted file

void monitor_read(t_monitor *x, t_symbol *s)
{
	defer_low(x,(method)monitor_doread, s, 0, 0L);
}

void monitor_doread(t_monitor *x, t_symbol *s, short argc, t_atom *argv)
{
	t_filehandle file = 0;
	char filename[64];
	short path;
	long outtype;
	
	if (!s->s_name[0])
	{
		if (open_dialog(filename, &path, &outtype, 0L, 0)) return;
	}
		
	else
	{
		strcpy(filename, s->s_name);
		if (locatefile_extended(filename, &path, &outtype, 0L, 0))
		{
			error("%s: can't find file \"%s\"", __EXTERNAL_NAME__, filename);
			return;
		}
	}

	if (path_opensysfile(filename, path, &file, READ_PERM))
	{
		error("%s: can't open file \"%s\"", __EXTERNAL_NAME__, filename);
		return;
	}

	read_from_file(x, file, filename);
	
	sysfile_close(file);
	
	// update snapshot menu
	monitor_rewrite_snapshotmenu(x);

	qelem_set(x->m_qelem);	
}

void read_from_file(t_monitor *x, t_filehandle file, char *filename)
{
	short err=0;
	char tag[64], rem[128];

	do {
		err = get_tag(file, tag, rem);
		
		if(	tag[0] != '?' &&
			tag[0] != '!' &&
			strcmp(tag, "ambiscore"))
		{
			error("%s: \"%s\" is no readable ambiscore file", __EXTERNAL_NAME__, filename);
			return;
		}
			
		else if(!strcmp(tag, "ambiscore"))
		{
			monitor_remove_all(x);
			err = read_ambiscore(x,file);
		}			
	} while(!err);
}

// parse data

short read_ambiscore(t_monitor *x, t_filehandle file)
{
	short err=0;
	char tag[64], rem[128];
	
	do {	
		err = get_tag(file, tag, rem);
		
		if(!strcmp(tag, "snapshot"))
			err = read_snapshot(x,file, rem);
		
	} while(!err);
	
	return(err);
}

short read_snapshot(t_monitor *x, t_filehandle file, char* attr_val)
{
	short err=0;
	char attr[64], val[64], tag[64], rem[64], index[64], data[64];
	short size;
	short time, mode;
	short i, j, num_of_points = 0;
	snapshot *pointer;
	ambi coord[MAXPOINTS];
	
	// initialise coords
	for(i=0;i<MAXPOINTS;i++)
		coord[i].status = 0;
	time = mode = -1;
	
	// get index	
	get_attr_value_pair(attr_val, attr, val, attr_val);
	
	if(!strcmp(attr, "index"))
		strcpy(index, val);
	else
		strcpy(index, "1"); 	// default index

	// iterate though entries
	do{	err = get_tag(file, tag, rem);
		
		if(!strcmp(tag, "point"))
		{
			err = read_point(file, coord);
			num_of_points++;
		}
		
		if(!strcmp(tag, "interpolation_time"))
		{
			err = get_data(file, data);
			remove_space_from_string(data);
			time = string_to_number(data);
		}
		
		if(!strcmp(tag, "interpolation_mode"))
		{
			err = get_data(file, data);
			remove_space_from_string(data);
			mode = string_to_number(data);
		}

		if(!strcmp(tag, "/snapshot"))
		{
		// create new snapshot...	

			pointer = monitor_get_snapshot_by_index(x->first_snapshot, index);			
			// ...but only, if no snapshot with this index already exists			
			if(pointer) return(0);
			
			// allocate memory
			size = sizeof(snapshot) + (num_of_points - 1) * sizeof(coords);
			pointer = (snapshot *)sysmem_newptr(size);
			
			// build linked list
			monitor_snapshot_link(x, pointer);
			
			// write index
			pointer->index = sysmem_newptr(sizeof(index));
			strcpy(pointer->index, index);
			
			// write parameters
			pointer->num_of_points = num_of_points;
			pointer->time = time;		
			pointer->mode = mode;		
		
			// write data
			for(i=0,j=0;i<MAXPOINTS && j<num_of_points;i++)
			{
				if(coord[i].status)
				{
					strcpy(pointer->data[j].name, coord[i].name);
					sysmem_copyptr(&coord[i].x, &pointer->data[j].x, sizeof(double) * 6);
					pointer->data[j].number = i+1;
					j++;
				}
			}
			return(0);			
		}
		
	} while(!err);
	
	return(err);
}

short read_point(t_filehandle file, ambi *coord)
{
	short	err=0;
	short	number;
	short	format=0; // 0=aed  1=xyz
	char	name[16];
	ambi	temp;
	char	data[64], tag[64], rem[64];
	
	
	number = 1;								// default number
	string_to_triplet("0 0 1", &temp.a);	// default coordinates
	name[0] = '\0';
	
	do{	err = get_tag(file, tag, rem);
		
		if(!strcmp(tag, "number"))
		{	err = get_data(file, data);
			remove_space_from_string(data);
			number = string_to_number(data);
		}
		
		if(!strcmp(tag, "name"))
		{	err = get_data(file, data);
			data[15] = '\0';
			remove_space_from_string(data);
			strcpy(name, data);		
		}
			
		if(!strcmp(tag, "xyz"))
		{	err = get_data(file, data);
			string_to_triplet(data, &temp.x);
			format = 1;
		}		

		if(!strcmp(tag, "aed"))
		{	err = get_data(file, data);
			string_to_triplet(data, &temp.a);
			format = 0;
		}		

		if(!strcmp(tag, "/point") && coord[number-1].status == 0)
		{
			if(format == 0)
				poltocar(&temp);
			if(format == 1)
				cartopol(&temp);
				
			sysmem_copyptr(&temp, &coord[number-1], sizeof(double) * 6);
			
			coord[number-1].status = 1;
			
			if(name[0] != '\0')
				strcpy(coord[number-1].name, name);
			else
				sprintf(coord[number-1].name, "%d", number);
			return(0);
		}
		
	} while(!err);
	
	return(err);
}


//___________________________________________________________________________________________________________________________

// colors

void setcolor(RGBColor *color, short ac, t_atom *av)
{
	if(av[0].a_type == A_LONG)
		color->red = CLIP(av[0].a_w.w_long, 0, 255)  * 255; 
	else color->red = 0;
	if(ac > 0 && av[1].a_type == A_LONG)
		color->green = CLIP(av[1].a_w.w_long, 0, 255) * 255;
	else color->green = 0;
	if(ac > 1 && av[2].a_type == A_LONG)
		color->blue = CLIP(av[2].a_w.w_long, 0, 255) * 255;
	else color->blue = 0;
}

void monitor_set_point_color(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	setcolor(&x->point_color, ac, av);
	qelem_set(x->m_qelem);
}

void monitor_set_name_color(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	setcolor(&x->name_color, ac, av);
	qelem_set(x->m_qelem);
}

void monitor_set_coord_color(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	setcolor(&x->coord_color, ac, av);
	qelem_set(x->m_qelem);
}
	
void monitor_set_line_color(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	setcolor(&x->line_color, ac, av);
	qelem_set(x->m_qelem);
}

void monitor_set_circle_color(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	setcolor(&x->circle_color, ac, av);
	qelem_set(x->m_qelem);
}

void monitor_set_background_color(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	setcolor(&x->background_color, ac, av);
	qelem_set(x->m_qelem);
}

void monitor_set_grid_color(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	setcolor(&x->grid_color, ac, av);
	qelem_set(x->m_qelem);
}
	
void monitor_set_hi_grid_color(t_monitor *x, t_symbol *s, short ac, t_atom *av)
{
	setcolor(&x->hi_grid_color, ac, av);
	qelem_set(x->m_qelem);
}

//___________________________________________________________________________________________________________________________
// mathematics

// cartesian <-> polar conversion

void cartopol(ambi *coords)		// xyz to aed
{
	coords->a = atan2(coords->x, coords->y) / PI * 180;
	coords->e = atan2(coords->z, pow(pow(coords->y,2)+pow(coords->x,2),0.5)) / PI * 180;
	coords->d = pow(pow(coords->y,2)+pow(coords->x,2)+pow(coords->z,2), 0.5) * 10;
}

void poltocar(ambi *coords)		// aed to xyz
{
	coords->x = cos((90 - coords->a) / 180 * PI) * cos(coords->e / 180 * PI) * coords->d * 0.1;
	coords->y = sin((90 - coords->a) / 180 * PI) * cos(coords->e / 180 * PI) * coords->d * 0.1;
	coords->z = sin(coords->e / 180 * PI) * coords->d * 0.1;
}

//___________________________________________________________________________________________________________________________
// status report

void monitor_version(void)
{
	post("%s    -    Philippe Kocher/ICST Zurich    -    © 2006 - 2007 all rights reserved", __EXTERNAL_NAME__);
	post("    version %s compiled %s %s", __EXTERNAL_VERSION__, __DATE__, __TIME__);
}

void monitor_report(t_monitor *x)
{
	monitor_version();
}	

//___________________________________________________________________________________________________________________________
// messages sent by Max

void monitor_enter(t_monitor *x)	// user highlights another box or clicks outside the box
{
	short i;	
	x->rcl_snapshot = 0;
	x->new_snapshot = 0;
	x->new_number = -1;
	
	// reset all activated numbers
	for(i=0;i<MAXPOINTS;i++) {
			x->coord[i].selected = 0;
	}
	qelem_set(x->m_qelem);
}


// a new font or font size chosen from the font menu
void monitor_bfont(t_monitor *x, short fontsize, short fontnum)
{		

	if(fontsize != -1 && fontsize != x->fontsize)
	{
		x->fontsize = fontsize;
		patcher_dirty (x->patcher);
	}

	if(fontnum != -1 && fontnum != x->fontnum)
	{
		x->fontnum = fontnum;
		patcher_dirty (x->patcher);
	}
	
	qelem_set(x->m_qelem);
}

void monitor_assist(t_monitor *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET)
	{
		switch (a)
		{	
		case 0:
			sprintf(s, "coordinates, messages");
			break;
		}
	}
	else
	{
		switch (a)
		{
			case 0:
				sprintf(s, "aed coordinates (index, A, E, D, status)");
				break;
			case 1:
				sprintf(s, "xyz coordinates (index, X, Y, Z, status)");
				break;
			case 2:
				sprintf(s, "mouse state, etc...");
				break;
		}
	}
}

void monitor_psave(t_monitor *x, void *buf)
{
	short hidden = x->m_box.b_hidden; 
 	Rect *r = &x->m_box.b_rect;
 	long fontinfo = x->fontsize + x->fontnum * 256;
	
 	if (hidden)
 	{ 
		binbuf_vinsert(buf,"sssslllllllllll",gensym("#P"),gensym("hidden"),  
		gensym("user"),gensym("ambimonitor"),
		(long)(r->left), 
		(long)(r->top),
		(long)(r->right - r->left), 
		(long)(r->bottom - r->top),
		(long)x->mode,
		(long)x->grid,
		(long)x->numbers,
		(long)x->coordinates,
		(long)x->lines,
		(long)x->offset,
		fontinfo);
	}
	else
	{ 
		binbuf_vinsert(buf,"ssslllllllllll", gensym("#P"), gensym("user"), 
		gensym("ambimonitor"),  
		(long)(r->left),
		(long)(r->top), 
		(long)(r->right - r->left), 
		(long)(r->bottom - r->top),
		(long)x->mode,
		(long)x->grid,
		(long)x->numbers,
		(long)x->coordinates,
		(long)x->lines,
		(long)x->offset,
		fontinfo);
	}
	
	if(!x->local)
		binbuf_vinsert(buf, "ssl", gensym("#X"), gensym("local"), 0);

	if(!x->enablekeys)
		binbuf_vinsert(buf, "ssl", gensym("#X"), gensym("enablekeys"), 0);

		binbuf_vinsert(buf, "sslll", gensym("#X"), gensym("rgb1"), x->point_color.red/255, x->point_color.green/255, x->point_color.blue/255);
		binbuf_vinsert(buf, "sslll", gensym("#X"), gensym("rgb2"), x->name_color.red/255, x->name_color.green/255, x->name_color.blue/255);
		binbuf_vinsert(buf, "sslll", gensym("#X"), gensym("rgb3"), x->coord_color.red/255, x->coord_color.green/255, x->coord_color.blue/255);
		binbuf_vinsert(buf, "sslll", gensym("#X"), gensym("rgb4"), x->line_color.red/255, x->line_color.green/255, x->line_color.blue/255);

		binbuf_vinsert(buf, "sslll", gensym("#X"), gensym("rgb5"), x->circle_color.red/255, x->circle_color.green/255, x->circle_color.blue/255);
		binbuf_vinsert(buf, "sslll", gensym("#X"), gensym("rgb6"), x->background_color.red/255, x->background_color.green/255, x->background_color.blue/255);

		binbuf_vinsert(buf, "sslll", gensym("#X"), gensym("rgb7"), x->grid_color.red/255, x->grid_color.green/255, x->grid_color.blue/255);
		binbuf_vinsert(buf, "sslll", gensym("#X"), gensym("rgb8"), x->hi_grid_color.red/255, x->hi_grid_color.green/255, x->hi_grid_color.blue/255);
}

void monitor_free(t_monitor *x)
{
	qelem_free(x->m_qelem); 			// free the queue element
	notify_free((t_object *)x);

	gensym(x->name)->s_thing = 0;		// remove pointer to this object

	monitor_remove_all(x);				// free memory used for snapshots

	box_free((t_box *)x);
}