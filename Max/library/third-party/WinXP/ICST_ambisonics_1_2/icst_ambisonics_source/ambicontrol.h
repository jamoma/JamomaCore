/* 

	ambicontrol.h	trajectory controller object for ambisonic sound spatialisation
					works in combination with "ambimonitor"
					part of the ICST Ambisonics Tools
					
	Copyright (C) 2003 - 2007 ICST Zurich / Philippe Kocher
	
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

    
	2006/07/01 Version 1.2	bugfixes, multiple trajectories added
	2006/07/18 Version 1.1	minor bugfixes, ported to PC, treat all points added
	2006/03/27 Version 1.0	initial release

*/

#ifndef __AMBICONTROL_H__
#define __AMBICONTROL_H__

#include "ext.h"
#include "ext_common.h"
#include "ext_strings.h"
#include <stdlib.h>
#include <math.h>

#define PI 3.141593
#define MAXPOINTS 64


// default color

RGBColor BOX = {0, 0, 0};

//___________________________________________________________________________________________________________________________

// data structures
typedef struct ambi_point	// data structure used in ambimonitor
{
	double	x, y, z;
	double	a, e, d;
	short	status;
	short	active, sel;
	char	name[16];
} ambi;

typedef struct ambi_coords
{
	double	x, y, z;
	double	a, e, d;
} coords;

typedef struct time_position	// data structure to store user-defined trajectories
{
	long	time;
	coords	position;
	struct time_position *prev, *next;
} time_pos;

typedef struct ambi_trajectory
{
	char	 *index;					// no matter if number or string
	long	 num_of_breakpoints;
	long	 trajectory_duration;
	struct	 ambi_trajectory	*prev, *next;
	time_pos *first_breakpoint, *last_breakpoint; 
	time_pos data[1];
} trajectory;

typedef struct _monitor
{
	t_box 	m_box;
	ambi	coord[MAXPOINTS];			
		// ...that's all we need of the monitor structure
} t_monitor;

typedef struct _control
{
	t_object	m_ob;
	t_monitor	*monitor;
	void		*animation_clock;
	void		*recording_clock;
	void		*outlet1, *outlet2;
	t_symbol	*name;								// name of the connected monitor

// settings
	char		method_string[16];
	short		points[MAXPOINTS], count_points;	// points treated by this object
	short		all_points;
	short		running;
	short		time_interval;
	double		stepsize;
	
// local point
	short		has_local_point;
	ambi		local_point;

// trajectories
	short		recording, loop, dir, interp, interp_once;
	long		time, start_time;
	
	short		sampled_index;
	ambi		sampled_point;
	
	trajectory	*first_trajectory, *last_trajectory;
	trajectory	*onscreen_trajectory, *current_trajectory;
	double		*trajectory_graph, **trajectory_graph_handle;	
	
	time_pos	*current_breakpoint;

// random	
	long		stability, stability_point[MAXPOINTS];
	double		rand_point[MAXPOINTS][4];

// centre
	short		centre_index;
	ambi		centre, centre_delta;

// bounding box
	short		show_box, show_graph, update_box, update_graph;
	double		box_dimensions[3];		// width (x), depth (y), height (z)
	double		box[6];					// min x,y,z / max x,y,z
	double		*box_pointer;
	RGBColor	box_color;
} t_control;

//___________________________________________________________________________________________________________________________

// prototypes

int main(void);

// object creation
void *control_new(t_symbol *s, short ac, t_atom *av);

// animation
void control_start(t_control *x);
void control_stop(t_control *x);
void control_int(t_control *x, long n);
void control_bang(t_control *x);
void control_interval(t_control *x, long n);

// coordinate output
void control_output_local_point(t_control *x);

// right outlet
void control_rewrite_trajectorymenu(t_control *x);
void control_update_trajectorymenu(t_control *x, trajectory *current_trajectory);

// methods
void control_call_method(t_control *x, ambi *coords, short index);

void control_nil (t_control *x, ambi *coords); 
void control_rotate (t_control *x, ambi *coords); 
void control_crandom (t_control *x, ambi *coords, short index);
void control_hrandom (t_control *x, ambi *coords, short index);
void control_vrandom (t_control *x, ambi *coords, short index);
void control_random(t_control *x, ambi *coords, short index);
void control_trajectory(t_control *x, ambi *coords);

// interpolation in a trajectory
void control_calc_interpolation(t_control *x, ambi *coords, time_pos *point1, time_pos *point2);
void control_time(t_control *x, t_symbol *s, short ac, t_atom *av);

// settings
void control_points(t_control *x, t_symbol *s, short ac, t_atom *av);		// set points to be controlled
void control_anything(t_control *x, t_symbol *s, short ac, t_atom *av);		// set method
void control_stepsize(t_control *x, double f);								// stepsize (right inlet)

void control_stability(t_control *x, long n);		// setting for the random methods only

// trajectory playback mode
void control_loop(t_control *x, long n);
void control_interpolation(t_control *x, long n);

// centre
void control_aed_input(t_control *x, t_symbol *s, short ac, t_atom *av);
void control_xyz_input(t_control *x, t_symbol *s, short ac, t_atom *av);
void control_centre_index(t_control *x, long n);
void control_centre(t_control *x, ambi new_centre);

// bounding box
void control_box(t_control *x, t_symbol *s, short ac, t_atom *av);
void control_show_box(t_control *x, long n);
void control_box_rgb(t_control *x, t_symbol *s, short ac, t_atom *av);

// trajectory
trajectory* new_trajectory();
void control_record(t_control *x, t_symbol *s, short ac, t_atom *av);
void control_close(t_control *x);
void control_clear(t_control *x);
void control_sample(t_control *x);
void control_record_breakpoint(t_control *x, trajectory *destination, long time, ambi coords);
void control_append_breakpoint(t_control *x, trajectory *destination, time_pos *new_pointer);
void control_insert_breakpoint(t_control *x, trajectory *destination, time_pos *new_pointer, time_pos *insert_before);

void control_fit_to_box(t_control *x);
void control_scale_to_box(t_control *x);

// store trajectories
void control_store(t_control *x, t_symbol *s, short ac, t_atom *av);
void control_recall(t_control *x, t_symbol *s, short ac, t_atom *av);
void control_remove(t_control *x, t_symbol *s, short ac, t_atom *av);
void control_remove_all(t_control *x);
void control_trajectory_link(t_control *x, trajectory *pointer);
void *control_get_trajectory_by_index(trajectory *pointer, char *index);
void control_copy_to_onscreen_trajectory(t_control *x, trajectory *source, trajectory *destination);
void control_trajectory_remove(t_control *x, trajectory *trajectory_pointer);

// write trajectory files
void control_write(t_control *x, t_symbol *s);
void control_dowrite(t_control *x, t_symbol *s, short ac, t_atom *av);
void write_to_file(t_control *x, t_filehandle file);

// read and parse trajectory files
void control_read(t_control *x, t_symbol *s);
void control_doread(t_control *x, t_symbol *s, short ac, t_atom *av);
void read_from_file(void *x, t_filehandle file, char *filename);
short read_ambiscore(t_control *x, t_filehandle file, char* attr_val);
short read_trajectory(t_control *x, t_filehandle file, char* attr_val);
short read_breakpoint(t_filehandle file, time_pos *breakpoint);

// connection to an ambimonitor
void control_connect(t_control *x, t_symbol *s);
short control_make_connection(t_control *x);
void control_box_new(t_control *x);
void control_box_remove(t_control *x);
void control_graph_new(t_control *x);
void control_graph_remove(t_control *x);
void control_update_monitor(t_control *x);

// status report
void control_version(void);
void control_report(t_control *x);

// mathematics
void cartopol(ambi *coord);
void poltocar(ambi *coord);
void calc_delta(ambi *delta, ambi *old_coords, ambi *new_coords);
void control_calc_box(t_control *x);
double ambicontrol_random(void);

// messages sent by Max
void control_assist(t_control *x, void *b, long m, long a, char *s);
void control_loadbang(t_control *x);
void control_free(t_control *x);

#endif // __AMBICONTROL_H__