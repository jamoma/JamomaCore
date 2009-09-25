/* 

	ambicontrol.c	trajectory controller object for ambisonic sound spatialisation
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

#define __EXTERNAL_NAME__ "ambicontrol"
#define __EXTERNAL_VERSION__ "1.2"

#include "ambicontrol.h"
#include "fileIO.c"

void *control_class;

//___________________________________________________________________________________________________________________________

// main function

int main(void)
{	
	setup((t_messlist **)&control_class, (method)control_new, (method)control_free,
					(short)sizeof(t_control), 0L, A_GIMME, 0);
	
	// animation
	addbang((method)control_bang);
	addint((method)control_int);
	addftx ((method)control_stepsize, 1);  
	addmess((method)control_start,	    	"start",		0);	
	addmess((method)control_stop,	    	"stop",			0);	
	addmess((method)control_interval,   	"interval", 	A_LONG,	0);

	// centre
	addmess((method)control_aed_input,		"aed",			A_GIMME, 0);	
	addmess((method)control_xyz_input,		"xyz",			A_GIMME, 0);
	addmess((method)control_centre_index,	"index",		A_LONG, 0);	

	// settings
	addmess((method)control_points,			"points",		A_GIMME, 0);	
	addmess((method)control_connect,		"connect",		A_DEFSYM, 0);	
	addmess((method)control_anything,		"anything",		A_GIMME, 0),

	// stability (for random)
	addmess((method)control_stability,   	"stability", 	A_LONG,	0);

	// bounding box
	addmess((method)control_show_box,   	"show_box", 	A_LONG,	0);
	addmess((method)control_box,			"box",			A_GIMME, 0);	
	addmess((method)control_box_rgb,   		"box_rgb", 		A_GIMME,0);

	// trajectory playback mode
	addmess((method)control_loop,			"loop",			A_LONG, 0);
	addmess((method)control_interpolation,	"interpolation",A_LONG, 0);

	// manual interpolation in a trajectory
	addmess((method)control_time,			"time",			A_GIMME, 0);

	// trajectory
	addmess((method)control_record,			"record",		A_GIMME, 0);
	addmess((method)control_close,			"close",		0);
	addmess((method)control_clear,			"clear",		0);

	addmess((method)control_fit_to_box,		"fit_to_box",	0);
	addmess((method)control_scale_to_box,	"scale_to_box",	0);
	
	addmess((method)control_store,			"store",		A_GIMME, 0);
	addmess((method)control_recall,			"recall",		A_GIMME, 0);
	addmess((method)control_remove,			"remove",		A_GIMME, 0);
	addmess((method)control_remove_all,		"remove_all",	0);

	addmess((method)control_write,			"write",		A_DEFSYM, 0);
	addmess((method)control_read,			"read",			A_DEFSYM, 0);

	addmess((method)control_rewrite_trajectorymenu,	"dump_trajectories", 0);

	// status report
	addmess((method)control_report,   		"report",		0);
	addmess((method)control_version,   		"version",		0);
		
	// methods for messages sent by Max
	addmess((method)control_assist,	  "assist",	  A_CANT, 0);
	addmess((method)control_loadbang, "loadbang", A_CANT, 0);
	
	post("%s    -    Philippe Kocher/ICST Zurich    -    © 2006 - 2007 all rights reserved", __EXTERNAL_NAME__);   

	return 0;
}

//___________________________________________________________________________________________________________________________

// object creation function

void *control_new(t_symbol *s, short ac, t_atom *av)
{
	t_control *x;
	short i,j,k;
	double buffer[3] = {0,0,0};
	
	x = (t_control *)newobject(control_class);
	

	// initialise values
	x->stepsize = 1;
	
	x->centre_index = 0;
	x->centre.a = x->centre.e = x->centre.d = 0;
	x->centre.x = x->centre.y = x->centre.z = 0;
	
	x->box_dimensions[0] = x->box_dimensions[1] = x->box_dimensions[2] = 2;
	x->box[0] = x->box[1] = x->box[2] = -1;
	x->box[3] = x->box[4] = x->box[5] = 1;
	x->box_color = BOX;

	x->show_box = x->show_graph = 0;
	x->update_box = x->update_graph = 0;
	
	x->box_pointer = &x->box[0];
	
	x->name = nil;
	strcpy(x->method_string, "nil");
	
	x->has_local_point = 0;
	x->all_points = 0;
	
	x->time_interval = 100;
	
	x->running = 0;
	
	x->onscreen_trajectory = new_trajectory();
	x->current_trajectory = 0;
	x->first_trajectory = x->last_trajectory = 0;
	x->trajectory_graph = 0;
	x->trajectory_graph_handle = &x->trajectory_graph;
	
	x->recording = 0;
	x->current_breakpoint = 0;

	x->time = 0;
	x->loop = 0;
	x->dir = 1;
	
	x->interp = x->interp_once = 0;
	
	// read arguments
	for(i=0,j=0,k=0;i<ac;i++)
	{
		switch (av[i].a_type)
		{
			case A_SYM:
			// a method
				strcpy(x->method_string, av[i].a_w.w_sym->s_name);
				break;
					
			case A_LONG:
			// the index of a point treated by this object
				if(j<MAXPOINTS && av[i].a_w.w_long > 0)
					x->points[j++] = av[i].a_w.w_long - 1;
				else if(av[i].a_w.w_long == 0)
					x->all_points = 1;
				break;
					
			case A_FLOAT:
			// the default coordinates of the local point
				if(k<3)
					buffer[k++] = av[i].a_w.w_float;
					x->has_local_point = 1;
				break;
		}
	}
		
	if(!x->all_points)
		x->count_points = j;
	
	x->local_point.x = buffer[0]; x->local_point.y = buffer[1]; x->local_point.z = buffer[2];
	cartopol(&x->local_point);
	
	// initialise inlets
	floatin(x, 1);

	// initialise outlets
	x->outlet2 = outlet_new(x, 0L);
	x->outlet1 = outlet_new(x, 0L);
	
	// initialise clocks
	x->animation_clock = clock_new(x,(method)control_bang);
	x->recording_clock = clock_new(x,(method)control_sample);
	
	return (x);
}

void control_loadbang(t_control *x)
{
	// initialise trajectory menu
	control_rewrite_trajectorymenu(x);
}						

//___________________________________________________________________________________________________________________________

// animation

void control_start(t_control *x)
{
	control_int(x,1);
}

void control_stop(t_control *x)
{
	control_int(x,0);
}

void control_int(t_control *x, long n)
{
	x->running = n;

	// reset delta
	x->centre_delta.x = 0; x->centre_delta.y = 0; x->centre_delta.z = 0;
	x->centre_delta.a = 0; x->centre_delta.e = 0; x->centre_delta.d = 0;

	if(n) control_bang(x);
	else clock_unset(x->animation_clock);
}

void control_bang(t_control *x)
{	
	long i, n;
			
	if(x->running) clock_delay(x->animation_clock, x->time_interval);  // schedule next clock tick...
	
	if(x->recording) return; // ...but do nothing while recording a trajectory

	if(x->has_local_point)
	{
		control_call_method(x, &x->local_point, 0);
		control_output_local_point(x);
	}
	
	if(control_make_connection(x)) return;		// check connection to monitor

	// iterate through points and apply method
	switch(x->all_points)
	{
		case 0:

			for(i=0;i<x->count_points;i++)
			{
				n = x->points[i];
				if(x->monitor->coord[n].status != 0)
				{
					control_call_method(x, &x->monitor->coord[n], i+1);
					mess1((void *)x->monitor, gensym("output_coord"), (void *)n);
				}
			}
			break;

		case 1:
		
			for(i=0;i<MAXPOINTS;i++)
			{
				if(x->monitor->coord[i].status != 0)
				{
					control_call_method(x, &x->monitor->coord[i], i+1);
					mess1((void *)x->monitor, gensym("output_coord"), (void *)i);
				}
			}
			break;
	}
	
	// increment time, if current method is "trajectory"

	if(! strcmp(x->method_string, "trajectory") && x->onscreen_trajectory)
	{
		x->time = x->time + x->time_interval * x->stepsize * x->dir;
		x->time = CLIP(x->time, 0, x->onscreen_trajectory->trajectory_duration);
	}

	if(x->stepsize) x->interp_once = 0;

	// reset delta
	x->centre_delta.x = 0; x->centre_delta.y = 0; x->centre_delta.z = 0;
	x->centre_delta.a = 0; x->centre_delta.e = 0; x->centre_delta.d = 0;
}

void control_interval(t_control *x, long n)
{
	x->time_interval = (n > 1 ? n : 1);
}

//___________________________________________________________________________________________________________________________

// output

void control_output_local_point(t_control *x)
{	
	t_atom out[4];
		
	SETLONG(&out[0], 0);					// index is always 0 (neutral/global)
	SETFLOAT(&out[1], x->local_point.a);
	SETFLOAT(&out[2], x->local_point.e);
	SETFLOAT(&out[3], x->local_point.d);
	
	outlet_anything(x->outlet1, gensym("aed"), 4, out);
}

// right outlet
void control_rewrite_trajectorymenu(t_control *x)
{
	t_atom output[2];
	trajectory *pointer = x->first_trajectory;
	
	SETSYM(output, gensym("clear"));
	outlet_anything(x->outlet2, gensym("trajectorymenu"), 1, output);

	while(pointer)
	{
		SETSYM(output, gensym("append"));
		SETSYM(output+1, gensym(pointer->index));

		pointer = pointer->next;
	
		outlet_anything(x->outlet2, gensym("trajectorymenu"), 2, output);
	}
}

void control_update_trajectorymenu(t_control *x, trajectory *onscreen_trajectory)
{
	short i = 0;
	t_atom output[2];
	trajectory *pointer = x->first_trajectory;
	
	while(pointer != onscreen_trajectory)
	{
		pointer = pointer->next;
		i++;
	}

	SETSYM(output,    gensym("set"));
	SETLONG(output+1, i);
	outlet_anything(x->outlet2, gensym("trajectorymenu"), 2, output);
}

//___________________________________________________________________________________________________________________________

// METHODS

void control_call_method(t_control *x, ambi *coords, short index)
{
	if(! strcmp(x->method_string, "nil")) control_nil(x, coords);	
	else if(! strcmp(x->method_string, "rotate")) control_rotate(x, coords);	
	else if(! strcmp(x->method_string, "random")) control_random(x, coords, index);
	else if(! strcmp(x->method_string, "hrandom")) control_hrandom(x, coords, index);
	else if(! strcmp(x->method_string, "vrandom")) control_vrandom(x, coords, index);
	else if(! strcmp(x->method_string, "crandom")) control_crandom(x, coords, index);
	else if(! strcmp(x->method_string, "trajectory")) control_trajectory(x, coords);
//	...more to follow...
	else control_nil(x, coords);
}

void control_nil(t_control *x, ambi *coords)
{	
	// translation if centre has moved
	if(x->centre_delta.x != 0 || x->centre_delta.y != 0 || x->centre_delta.z != 0)
	{
		coords->x = coords->x + x->centre_delta.x;
		coords->y = coords->y + x->centre_delta.y;
		coords->z = coords->z + x->centre_delta.z;
	}
	
	cartopol(coords);
}

void control_rotate(t_control *x, ambi *coords)
{	
	if(x->centre.d < 0.0001 && x->centre_delta.d == 0.)
	// simple rotation
	{
		coords->a = coords->a + x->stepsize;
			
		coords->a = (coords->a <  180 ? coords->a : coords->a - 360);
		coords->a = (coords->a > -180 ? coords->a : coords->a + 360);
		
		poltocar(coords);
	}
	else
	// complicated rotation
	{			
		// translation if centre has moved
		if(x->centre_delta.x != 0 || x->centre_delta.y != 0 || x->centre_delta.z != 0)
		{
			coords->x = coords->x + x->centre_delta.x;
			coords->y = coords->y + x->centre_delta.y;
			coords->z = coords->z + x->centre_delta.z;
		}
			
		coords->x = coords->x - x->centre.x;
		coords->y = coords->y - x->centre.y;
			
		cartopol(coords);
		coords->a = coords->a + x->stepsize;
		poltocar(coords);

		coords->x = coords->x + x->centre.x;
		coords->y = coords->y + x->centre.y;
		
		cartopol(coords);
	}
}

void control_crandom(t_control *x, ambi *coords, short index)
{
	double term, stepsize;
			
	// generate new random numbers if necessary
	if(x->stability_point[index] < 0)
	{
		term = ambicontrol_random();		
		term = (term > 0 ? 0.5+term*0.5 : -0.5+term*0.5);
		x->rand_point[index][3] = x->stepsize * term;
		
		x->stability_point[index] += x->stability;
	}
	else
	{
		x->stability_point[index] -= x->time_interval;
	}
	stepsize = x->stepsize;
	x->stepsize = x->rand_point[index][3];
	control_rotate(x,coords);
	x->stepsize = stepsize;
}

void control_hrandom(t_control *x, ambi *coords, short index)
{
	double term;

	// generate new random numbers if necessary
	if(x->stability_point[index] < 0)
	{
		term = ambicontrol_random();
		x->rand_point[index][0] = x->stepsize * term * 0.01;	
		term = (term > 0 ? 1-term : -1-term);
		x->rand_point[index][1] = x->stepsize * term * 0.01;
		
		x->stability_point[index] += x->stability;
	}
	else
	{
		x->stability_point[index] -= x->time_interval;
	}
		
	// translation if centre has moved
	if(x->centre_delta.x != 0 || x->centre_delta.y != 0 || x->centre_delta.z != 0)
	{
		coords->x = coords->x + x->centre_delta.x;
		coords->y = coords->y + x->centre_delta.y;
		coords->z = coords->z + x->centre_delta.z;
	}

	coords->x += x->rand_point[index][0];
	coords->y += x->rand_point[index][1];
	
	// mirror trajectory at box boundaries
	if(coords->x <= x->box[0] || coords->x >= x->box[3])
		x->rand_point[index][0] *= -1.;
	if(coords->y <= x->box[1] || coords->y >= x->box[4])
		x->rand_point[index][1] *= -1.;
			
	// clip to box
	coords->x = CLIP(coords->x, x->box[0], x->box[3]);
	coords->y = CLIP(coords->y, x->box[1], x->box[4]);
	coords->z = CLIP(coords->z, x->box[2], x->box[5]);
	
	cartopol(coords);
}

void control_vrandom(t_control *x, ambi *coords, short index)
{
	double term;
		
	// generate new random numbers if necessary
	if(x->stability_point[index] < 0)
	{
		term = ambicontrol_random();
		term = (term > 0 ? 0.5+term*0.5 : -0.5+term*0.5);
		x->rand_point[index][2] = x->stepsize * term * 0.01;
		
		x->stability_point[index] += x->stability;
	}
	else
	{
		x->stability_point[index] -= x->time_interval;
	}	
	// translation if centre has moved
	if(x->centre_delta.x != 0 || x->centre_delta.y != 0 || x->centre_delta.z != 0)
	{
		coords->x = coords->x + x->centre_delta.x;
		coords->y = coords->y + x->centre_delta.y;
		coords->z = coords->z + x->centre_delta.z;
	}

	coords->z += x->rand_point[index][2];
	
	// mirror trajectory at box boundaries
	if(coords->z <= x->box[2] || coords->z >= x->box[5])
		x->rand_point[index][2] *= -1.;
		
	// clip to box
	coords->x = CLIP(coords->x, x->box[0], x->box[3]);
	coords->y = CLIP(coords->y, x->box[1], x->box[4]);
	coords->z = CLIP(coords->z, x->box[2], x->box[5]);
	
	cartopol(coords);
}

void control_random(t_control *x, ambi *coords, short index)
{
	double term;
			
	// generate new random numbers if necessary
	if(x->stability_point[index] < 0)
	{	
		term = ambicontrol_random();		
		x->rand_point[index][0] = x->stepsize * term * 0.01;
		term = ambicontrol_random();		
		x->rand_point[index][1] = x->stepsize * term * 0.01;
		term = ambicontrol_random() * 0.5;
		x->rand_point[index][2] = x->stepsize * term * 0.01;

		x->stability_point[index] += x->stability;
	}
	else
	{
		x->stability_point[index] -= x->time_interval;
	}
		
	// translation if centre has moved
	if(x->centre_delta.x != 0 || x->centre_delta.y != 0 || x->centre_delta.z != 0)
	{
		coords->x = coords->x + x->centre_delta.x;
		coords->y = coords->y + x->centre_delta.y;
		coords->z = coords->z + x->centre_delta.z;
	}

	coords->x += x->rand_point[index][0];
	coords->y += x->rand_point[index][1];
	coords->z += x->rand_point[index][2];
			
	// mirror trajectory at box boundaries
	if(coords->x <= x->box[0] || coords->x >= x->box[3])
		x->rand_point[index][0] *= -1.;
	if(coords->y <= x->box[1] || coords->y >= x->box[4])
		x->rand_point[index][1] *= -1.;
	if(coords->z <= x->box[2] || coords->z >= x->box[5])
		x->rand_point[index][2] *= -1.;
			
	// clip to box
	coords->x = CLIP(coords->x, x->box[0], x->box[3]);
	coords->y = CLIP(coords->y, x->box[1], x->box[4]);
	coords->z = CLIP(coords->z, x->box[2], x->box[5]);
	
	cartopol(coords);
}

void control_trajectory(t_control *x, ambi *coords)
{		
	time_pos *pointer;
	long n = 0;
	
	if(!x->current_breakpoint)
	{
		return; // no trajectory specified
	}

	// translate trajectory if centre has moved
	if(x->centre_delta.x != 0 || x->centre_delta.y != 0 || x->centre_delta.z != 0)
	{
		pointer = x->onscreen_trajectory->first_breakpoint;
		while(pointer)
		{
			pointer->position.x += x->centre_delta.x;
			pointer->position.y += x->centre_delta.y;
			pointer->position.z += x->centre_delta.z;
	
		// update graphics
		sysmem_copyptr(&pointer->position, x->trajectory_graph+n,  sizeof(double) * 3);
		n += 3;
		
		pointer = pointer->next;
		}

	// reset delta here (translation of the trajectory only once per cycle)
	x->centre_delta.x = 0; x->centre_delta.y = 0; x->centre_delta.z = 0;
	x->centre_delta.a = 0; x->centre_delta.e = 0; x->centre_delta.d = 0;
	}

	if(!x->interp && !x->interp_once)
	{
		coords->a = x->current_breakpoint->position.a;
		coords->e = x->current_breakpoint->position.e;
		coords->d = x->current_breakpoint->position.d;

		coords->x = x->current_breakpoint->position.x;
		coords->y = x->current_breakpoint->position.y;
		coords->z = x->current_breakpoint->position.z;
	}

	if(x->interp_once)	// manual interpolation
	{
		control_calc_interpolation(x, coords, x->current_breakpoint, x->current_breakpoint->next);
		return;
	}
	
	if(x->stepsize * x->dir > 0)	// moving forward
	{	
		if((x->interp) && x->current_breakpoint->next)
			control_calc_interpolation(x, coords, x->current_breakpoint, x->current_breakpoint->next);

		if(x->current_breakpoint->next && x->time >= x->current_breakpoint->next->time)
		{
			while(x->current_breakpoint->next && x->time >= x->current_breakpoint->next->time)
			{
				x->current_breakpoint = x->current_breakpoint->next;
			}
		}
		if(!x->current_breakpoint->next) // hit the end
		{
			switch(x->loop)
			{
				case 0:
					return;
				case 1:
					x->time = 0;
					x->current_breakpoint = x->onscreen_trajectory->first_breakpoint;
					break;
				case 2:
					x->dir *= -1;
					break;
			}
		}
	}
	else if(x->dir * x->stepsize < 0)	// moving backward
	{
		if((x->interp) && x->current_breakpoint->prev)
			control_calc_interpolation(x, coords, x->current_breakpoint->prev, x->current_breakpoint);

		if(x->current_breakpoint->prev && x->time <= x->current_breakpoint->prev->time)
		{
			while(x->current_breakpoint->prev && x->time <= x->current_breakpoint->prev->time)
			{
				x->current_breakpoint = x->current_breakpoint->prev;
			}
		}
		if(!x->current_breakpoint->prev) // hit the beginning
		{
			switch(x->loop)
			{
				case 0:
					return;
				case 1:
					x->time = x->onscreen_trajectory->trajectory_duration;
					x->current_breakpoint = x->onscreen_trajectory->last_breakpoint;
					break;
				case 2:
					x->dir *= -1;
					break;
			}
		}
	}
	else	// no movement at all (stepsize = 0)
	{
		if(x->interp)
			control_calc_interpolation(x, coords, x->current_breakpoint, x->current_breakpoint->next);
			
		return;
	}

}

//___________________________________________________________________________________________________________________________


// interpolation in a trajectory
void control_calc_interpolation(t_control *x, ambi *coords, time_pos *point1, time_pos *point2)
{
	double azi_dist, interpol_factor;
	
	interpol_factor = (double)(x->time - point1->time) / (point2->time - point1->time);
	interpol_factor = CLIP(interpol_factor, 0, 1);
	
	if(x->interp <= 1)
 	{
		coords->x = point1->position.x +
			(point2->position.x - point1->position.x) * interpol_factor;
		coords->y = point1->position.y +
			(point2->position.y - point1->position.y) * interpol_factor;
		coords->z = point1->position.z +
			(point2->position.z - point1->position.z) * interpol_factor;
		
		cartopol(coords);		// xyz to aed
	}
	else
	{
		azi_dist = point2->position.a - point1->position.a;

		// find shortest distance
		azi_dist = (azi_dist >  180 ? azi_dist - 360 : azi_dist);
		azi_dist = (azi_dist < -180 ? azi_dist + 360 : azi_dist);
		
		coords->a = point1->position.a + azi_dist * interpol_factor;
		coords->e = point1->position.e +
			(point2->position.e - point1->position.e) * interpol_factor;
		coords->d = point1->position.d +
			(point2->position.d - point1->position.d) * interpol_factor;
		
		poltocar(coords);
	}
}

void control_time(t_control *x, t_symbol *s, short ac, t_atom *av)	// manual interpolation
{
	if(!x->current_breakpoint) return;
	
	switch(av[0].a_type)
	{
		case A_LONG:
			x->time = CLIP(av[0].a_w.w_long, 0, x->onscreen_trajectory->trajectory_duration); break;
		case A_FLOAT:
			x->time = x->onscreen_trajectory->trajectory_duration * CLIP(av[0].a_w.w_float, 0, 1); break;
		default: x->time = 0;
	}
	
	if(x->time == x->onscreen_trajectory->trajectory_duration)
		x->current_breakpoint = x->onscreen_trajectory->last_breakpoint->prev;
	else
	{
		if(x->current_breakpoint == x->onscreen_trajectory->last_breakpoint)
			 x->current_breakpoint = x->onscreen_trajectory->last_breakpoint->prev;
		while(! (x->time >= x->current_breakpoint->time && x->time < x->current_breakpoint->next->time))
		{
			if(x->time < x->current_breakpoint->time)
				x->current_breakpoint = x->current_breakpoint->prev;
			else
				x->current_breakpoint = x->current_breakpoint->next;
		}
	}
	if(! strcmp(x->method_string, "trajectory") && ! x->running)
	{
		x->interp_once = 1;
		control_bang(x);
	}
}

//___________________________________________________________________________________________________________________________

// SETTINGS

void control_points(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	short i;
	
	x->all_points = 0;
	x->count_points = ac;
	for(i=0;i<ac;i++)
	{
		if(av[i].a_w.w_long > 0)
			x->points[i] = av[i].a_w.w_long - 1;
		else if(av[i].a_w.w_long == 0)
			x->all_points = 1;
	}
}

void control_anything(t_control *x, t_symbol *s, short ac, t_atom *av)		// set controller's method
{
	if(! strcmp(s->s_name, "nil") ||
		! strcmp(s->s_name, "rotate") ||
		! strcmp(s->s_name, "random") ||
		! strcmp(s->s_name, "hrandom") ||
		! strcmp(s->s_name, "vrandom") ||
		! strcmp(s->s_name, "crandom") ||
		! strcmp(s->s_name, "trajectory"))
			strcpy(x->method_string, s->s_name);
	
	if(!strcmp(x->method_string, "trajectory") && !x->show_graph && x->show_box)
		x->show_graph = x->update_graph = 1;
		
	if(strcmp(x->method_string, "trajectory") && x->show_graph)
	{
		x->show_graph = 0;
		x->update_graph = 1;
	}
	
	if(!control_make_connection(x))
		control_update_monitor(x);
}

void control_stepsize(t_control *x, double f)
{
	short i;
	double term;
	
	x->stepsize = f;
	
	// calculate individual speeds for random methods
	for(i=0;i<x->count_points;i++)
	{
		term = ambicontrol_random();		
		x->rand_point[i][0] = x->stepsize * term * 0.01;
		term = (term > 0 ? 1-term : -1-term);
		x->rand_point[i][1] = x->stepsize * term * 0.01;
		term = (term > 0 ? 0.5+term*0.5 : -0.5+term*0.5);
		x->rand_point[i][2] = x->stepsize * term * 0.01;
		x->rand_point[i][3] = x->stepsize * term;
	}
}

void control_stability(t_control *x, long n)
{
	short i;
	
	x->stability = n;
	
	for(i=0;i<x->count_points;i++)
		x->stability_point[i] = ambicontrol_random() * x->stability;
}

void control_loop(t_control *x, long n)
{
	x->loop = CLIP(n, 0, 2);
	if(x->loop != 2) x->dir = 1;
}

// trajectory playback mode
void control_interpolation(t_control *x, long n)
{
	x->interp = CLIP(n, 0, 2);
}

//___________________________________________________________________________________________________________________________

// centre

void control_aed_input(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	short i;
	double input[3] = {0, 0, 1};
	ambi coords;
	long time;
	
	if(av[0].a_type != A_LONG) return;
	if(av[0].a_w.w_long != x->centre_index && x->recording == 0) return;

	for(i=1;i<ac;i++)
	{
		switch(av[i].a_type)
		{
			case A_FLOAT : input[i-1] = av[i].a_w.w_float; break;
			case A_LONG: input[i-1] = av[i].a_w.w_long; break;
			default: input[i-1] = 0;
		}
	}
				
	coords.a = input[0];
	coords.e = input[1];
	coords.d = input[2];
	
	poltocar(&coords);
	
	if(x->recording)
	{
		time = av[0].a_w.w_long;
		control_record_breakpoint(x, x->onscreen_trajectory, time, coords);
	}
	else
		control_centre(x, coords);
}

void control_xyz_input(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	short i;
	double input[3] = {0, 0, 0};
	ambi coords;
	long time;
	
	if(av[0].a_type != A_LONG) return;
	if(av[0].a_w.w_long != x->centre_index && x->recording == 0) return;
	
	for(i=1;i<ac;i++)
	{
		switch(av[i].a_type)
		{
			case A_FLOAT : input[i-1] = av[i].a_w.w_float; break;
			case A_LONG: input[i-1] = av[i].a_w.w_long; break;
			default: input[i-1] = 0;
		}
	}
	
	coords.x = input[0];
	coords.y = input[1];
	coords.z = input[2];
	
	cartopol(&coords);
	
	if(x->recording)
	{
		time = av[0].a_w.w_long;
		control_record_breakpoint(x, x->onscreen_trajectory, time, coords);
	}
	else
		control_centre(x, coords);
}

void control_centre_index(t_control *x, long n)
{
	x->centre_index = CLIP(n, 0, MAXPOINTS);	
}

void control_centre(t_control *x, ambi new_centre)
{
	ambi old_centre = x->centre;
	
	x->centre = new_centre;
	
	calc_delta(&x->centre_delta, &old_centre, &x->centre);
	control_calc_box(x);
	
	if(! x->running) control_bang(x);
	
	if(!control_make_connection(x))
		control_update_monitor(x);
}

//___________________________________________________________________________________________________________________________

// box

void control_box(t_control *x, t_symbol *s, short ac, t_atom *av)
{	
	short i;
	
	for(i=0;i<3;i++)
	{
		switch(av[i].a_type)
		{
			case A_FLOAT: x->box_dimensions[i] = av[i].a_w.w_float; break;
			case A_LONG:  x->box_dimensions[i] = av[i].a_w.w_long; break;
			default: x->box_dimensions[i] = 0.001;
		}
		x->box_dimensions[i] = (x->box_dimensions[i] > 0.001 ? x->box_dimensions[i] : 0.001);
	}
	
	control_calc_box(x);
	
	if(!control_make_connection(x))
		control_update_monitor(x);
}

void control_show_box(t_control *x, long n)
{
	n = CLIP(n, 0, 1);
	if(x->show_box == n) return;

	switch(n)
	{
		case 1: // new
			x->show_box = 1;
			x->update_box = 1;
			if(! strcmp(x->method_string, "trajectory"))
			{
				x->show_graph = 1;
				x->update_graph = 1;
			}
			break;

		case 0: // remove
			x->show_box = 0;
			x->update_box = 1;
			if(! strcmp(x->method_string, "trajectory"))
			{
				x->show_graph = 0;
				x->update_graph = 1;
			}

	}

	if(!control_make_connection(x))
		control_update_monitor(x);
}

void control_box_rgb(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	if(av[0].a_type == A_LONG) x->box_color.red = av[0].a_w.w_long * 255;
	else x->box_color.red = 0;
	if(av[1].a_type == A_LONG) x->box_color.green = av[1].a_w.w_long * 255;
	else x->box_color.green = 0;
	if(av[2].a_type == A_LONG) x->box_color.blue = av[2].a_w.w_long * 255;
	else x->box_color.blue = 0;
	
	if(!control_make_connection(x))
		control_update_monitor(x);
}


//___________________________________________________________________________________________________________________________

// TRAJECTORY

trajectory* new_trajectory()
{
	trajectory* pointer;

	pointer = (trajectory *)sysmem_newptr(sizeof(trajectory));

	pointer->first_breakpoint = 0;
	pointer->last_breakpoint = 0;

	pointer->num_of_breakpoints = 0;
	pointer->trajectory_duration = 0;

	pointer->index = 0;
	
	return pointer;
}

void control_record(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	control_clear(x);
	
	if(av[0].a_type == A_LONG && ac == 1)	// record a point in the monitor
	{
		x->recording = 1;
		x->sampled_index = av[0].a_w.w_long - 1;
		
		x->start_time = -1;
		
		control_sample(x);
	}
	else	// record breakpoint input
	{
		x->recording = 1;
	}

}

void control_close(t_control *x)
{	
	clock_unset(x->recording_clock);

	if(!x->onscreen_trajectory->num_of_breakpoints) return;
	
	x->recording = 0;
	x->onscreen_trajectory->first_breakpoint->time = 0;

	x->onscreen_trajectory->trajectory_duration = x->onscreen_trajectory->last_breakpoint->time;
	x->current_breakpoint = x->onscreen_trajectory->first_breakpoint;

	x->time = 0;

	if(!control_make_connection(x))
		control_update_monitor(x);
		
	x->current_trajectory = 0;
}

void control_clear(t_control *x)
{	
	time_pos *pointer = x->onscreen_trajectory->first_breakpoint, *next_pointer;
	
	while(pointer)
	{	
		next_pointer = pointer->next;
		// free allocated memory
		sysmem_freeptr(pointer);
		
		pointer = next_pointer;
	}
	
	x->onscreen_trajectory->first_breakpoint = x->onscreen_trajectory->last_breakpoint = 0;
	x->current_breakpoint = 0;

	x->recording = 0;
	clock_unset(x->recording_clock);

	x->onscreen_trajectory->num_of_breakpoints = 0;
	x->onscreen_trajectory->trajectory_duration = 0;
	
	sysmem_freeptr(x->trajectory_graph);
	x->trajectory_graph = 0;
	x->trajectory_graph_handle = &x->trajectory_graph;
		
	if(!control_make_connection(x))
		control_update_monitor(x);
		
	x->current_trajectory = 0;
}

void control_sample(t_control *x)
{	
	if(x->recording) clock_delay(x->recording_clock, x->time_interval);  // schedule next clock tick

	if(control_make_connection(x)) return;	// check connection to monitor
	
	if(x->start_time == -1 && x->monitor->coord[x->sampled_index].status == 1)
	{
		x->sampled_point = x->monitor->coord[x->sampled_index];			// get initial value
		x->start_time = 0;
	}
	
	if(x->monitor->coord[x->sampled_index].x != x->sampled_point.x ||	// point has been moved
		x->monitor->coord[x->sampled_index].y != x->sampled_point.y ||
		x->monitor->coord[x->sampled_index].z != x->sampled_point.z)
	{
		if(!x->start_time) x->start_time = gettime();					// reset clock if first movement
		control_record_breakpoint(x, x->onscreen_trajectory, gettime() - x->start_time, x->monitor->coord[x->sampled_index]);
		x->sampled_point = x->monitor->coord[x->sampled_index];
	}
}

void control_record_breakpoint(t_control *x, trajectory *destination, long time, ambi coords)
{
	time_pos *pointer, *new_pointer;
	short n;
	
	time = (time < 0 ? 0 : time);
	
	// allocate memory
	new_pointer = (time_pos *)sysmem_newptr(sizeof(time_pos));

	new_pointer->time = time;
	sysmem_copyptr(&coords, &new_pointer->position, sizeof(double) * 6);		// copy all coordinates
	
	if(!destination->first_breakpoint || time > destination->last_breakpoint->time)
		control_append_breakpoint(x, destination, new_pointer);
	else
	{
		pointer = destination->first_breakpoint;
		while(time > pointer->time)
		{
			pointer = pointer->next;
		}
		control_insert_breakpoint(x, destination, new_pointer, pointer);
	}

	destination->num_of_breakpoints++;

	// update trajectory graph
	if(destination == x->onscreen_trajectory)
	{
		x->trajectory_graph_handle = 0;
			// "disconnect" the trajectory graph during pointer resize
			// to prevent any connected monitor from crashing
		
		x->trajectory_graph = (double *)sysmem_resizeptr(x->trajectory_graph, sizeof(double) * 3 * destination->num_of_breakpoints);
	
		if(!destination->first_breakpoint || time > destination->last_breakpoint->time)	// append
		{
			sysmem_copyptr(&new_pointer->position,
						   x->trajectory_graph + (destination->num_of_breakpoints - 1) * 3,
						   sizeof(double) * 3);
		}
		else	// copy everything
		{
			pointer = destination->first_breakpoint;
			n = 0;
			while(pointer)
			{
				sysmem_copyptr(&pointer->position,
							   x->trajectory_graph + n,
							   sizeof(double) * 3);
				n += 3;
		
				pointer = pointer->next;
			}
		}
		
			// "reconnect" the trajectory graph and update monitor
		x->trajectory_graph_handle = &x->trajectory_graph;
		if(!control_make_connection(x))
			control_update_monitor(x);
	}
}

void control_append_breakpoint(t_control *x, trajectory *destination, time_pos *new_pointer)
{
	if(!destination->first_breakpoint)
		destination->first_breakpoint = new_pointer;
	if(destination->last_breakpoint)
		destination->last_breakpoint->next = new_pointer;
	
	new_pointer->prev = destination->last_breakpoint;
	new_pointer->next = 0;

	destination->last_breakpoint = new_pointer;
}

void control_insert_breakpoint(t_control *x, trajectory *destination, time_pos *new_pointer, time_pos *insert_before)
{
	if(insert_before == destination->first_breakpoint)
		destination->first_breakpoint = new_pointer;
	else
		insert_before->prev->next = new_pointer;
	
	new_pointer->prev = insert_before->prev;
	new_pointer->next = insert_before;
	
	insert_before->prev = new_pointer;	
}

void control_fit_to_box(t_control *x)
{
	double max[3], min[3], centre[3];
	time_pos *pointer = x->onscreen_trajectory->first_breakpoint;
	double factor;
	short i, n=0;

	max[0] = max[1] = max[2] = -1.;
	min[0] = min[1] = min[2] = 1.;
	
	// find min and max
	while(pointer)
	{
		max[0] = (pointer->position.x > max[0] ? pointer->position.x : max[0]);
		max[1] = (pointer->position.y > max[1] ? pointer->position.y : max[1]);
		max[2] = (pointer->position.z > max[2] ? pointer->position.z : max[2]);

		min[0] = (pointer->position.x < min[0] ? pointer->position.x : min[0]);
		min[1] = (pointer->position.y < min[1] ? pointer->position.y : min[1]);
		min[2] = (pointer->position.z < min[2] ? pointer->position.z : min[2]);
		
		pointer = pointer->next;
	}
	
	for(i=0;i<3;i++)
		centre[i] = min[i] + (max[i] - min[i]) * 0.5;

	factor = x->box_dimensions[0] / (max[0] - min[0]);
	factor = (x->box_dimensions[1] / (max[1] - min[1]) < factor ? x->box_dimensions[1] / (max[1] - min[1]) : factor);
	factor = (x->box_dimensions[2] / (max[2] - min[2]) < factor ? x->box_dimensions[2] / (max[2] - min[2]) : factor);
		
	pointer = x->onscreen_trajectory->first_breakpoint;
	while(pointer)
	{
		// translate to origin
		pointer->position.x -= centre[0];
		pointer->position.y -= centre[1];
		pointer->position.z -= centre[2];
		
		// scale
		pointer->position.x *= factor;
		pointer->position.y *= factor;
		pointer->position.z *= factor;
		
		// translate to centre
		pointer->position.x += x->centre.x;
		pointer->position.y += x->centre.y;
		pointer->position.z += x->centre.z;
		
		cartopol((ambi *)&pointer->position);
	
		// update graphics
		sysmem_copyptr(&pointer->position, x->trajectory_graph+n, sizeof(double) * 3);
		n += 3;
		
		pointer = pointer->next;
	}
	
	if(!control_make_connection(x))
		control_update_monitor(x);	
}

void control_scale_to_box(t_control *x)
{
	double max[3], min[3], centre[3];
	time_pos *pointer = x->onscreen_trajectory->first_breakpoint;
	double factor[3];
	short i, n=0;

	max[0] = max[1] = max[2] = -1.;
	min[0] = min[1] = min[2] = 1.;
	
	// find min and max
	while(pointer)
	{
		max[0] = (pointer->position.x > max[0] ? pointer->position.x : max[0]);
		max[1] = (pointer->position.y > max[1] ? pointer->position.y : max[1]);
		max[2] = (pointer->position.z > max[2] ? pointer->position.z : max[2]);

		min[0] = (pointer->position.x < min[0] ? pointer->position.x : min[0]);
		min[1] = (pointer->position.y < min[1] ? pointer->position.y : min[1]);
		min[2] = (pointer->position.z < min[2] ? pointer->position.z : min[2]);
		
		pointer = pointer->next;
	}
	
	for(i=0;i<3;i++)
		centre[i] = min[i] + (max[i] - min[i]) * 0.5;

	factor[0] = (max[0] - min[0] == 0 ? 1 : x->box_dimensions[0] / (max[0] - min[0]));
	factor[1] = (max[1] - min[1] == 0 ? 1 : x->box_dimensions[1] / (max[1] - min[1]));
	factor[2] = (max[2] - min[2] == 0 ? 1 : x->box_dimensions[2] / (max[2] - min[2]));
	
	pointer = x->onscreen_trajectory->first_breakpoint;
	while(pointer)
	{
		// translate to origin
		pointer->position.x -= centre[0];
		pointer->position.y -= centre[1];
		pointer->position.z -= centre[2];
		
		// scale
		pointer->position.x *= factor[0];
		pointer->position.y *= factor[1];
		pointer->position.z *= factor[2];
		
		// translate to centre
		pointer->position.x += x->centre.x;
		pointer->position.y += x->centre.y;
		pointer->position.z += x->centre.z;
		
		cartopol((ambi *)&pointer->position);
	
		// update graphics
		sysmem_copyptr(&pointer->position, x->trajectory_graph+n,  sizeof(double) * 3);
		n += 3;
		
		pointer = pointer->next;
	}
	
	if(!control_make_connection(x))
		control_update_monitor(x);	
}

//___________________________________________________________________________________________________________________________
// store trajectories

void control_store(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	trajectory  *new_pointer, *pointer;
	time_pos *data_pointer;
	ambi new_data;
	char index[64];

	if(x->onscreen_trajectory->num_of_breakpoints == 0	// no onscreen trajectory
		|| ac > 1				// bad arguments
		|| x->recording)		// currently recording
		return;

	// allocate memory
	new_pointer = new_trajectory();

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
	
	// check if trajectory already exists
	pointer = control_get_trajectory_by_index(x->first_trajectory, index);
	if(pointer) control_trajectory_remove(x, pointer);
	
	// write index
	new_pointer->index = sysmem_newptr(sizeof(index));
	strcpy(new_pointer->index, index);
	
	// link in
	control_trajectory_link(x, new_pointer);

	// copy data
	new_pointer->first_breakpoint = new_pointer->last_breakpoint = 0;
	new_pointer->num_of_breakpoints = 0;
	new_pointer->trajectory_duration = x->onscreen_trajectory->trajectory_duration;
	
	data_pointer = x->onscreen_trajectory->first_breakpoint;

	while(data_pointer)
	{
		// copy to data structure
		sysmem_copyptr(&data_pointer->position.a, &new_data.a, sizeof(double) * 3);
		sysmem_copyptr(&data_pointer->position.x, &new_data.x, sizeof(double) * 3);

		control_record_breakpoint(x, new_pointer, data_pointer->time, new_data);
		
		data_pointer = data_pointer->next;
	}

	new_pointer->first_breakpoint->time = 0;
	new_pointer->trajectory_duration = x->onscreen_trajectory->last_breakpoint->time;
	
	// update trajectory menu
	control_rewrite_trajectorymenu(x);
	control_update_trajectorymenu(x, new_pointer);
	
	x->current_trajectory = new_pointer;
}

void control_recall(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	trajectory	*pointer = 0;
	char		name[3];
		
	switch (av[0].a_type)
	{
		case A_LONG:
			sprintf(name, "%ld", av[0].a_w.w_long);
			pointer = control_get_trajectory_by_index(x->first_trajectory, name); break;
		case A_SYM:
			pointer = control_get_trajectory_by_index(x->first_trajectory, av[0].a_w.w_sym->s_name); break;
	}
	
	if(!pointer) return;
	
	control_clear(x);	// delete onscreen trajectory

	// copy data
	control_copy_to_onscreen_trajectory(x, pointer, x->onscreen_trajectory);

	x->current_breakpoint = x->onscreen_trajectory->first_breakpoint;
	x->current_trajectory = pointer;

	// update trajectory menu
	control_rewrite_trajectorymenu(x);
	control_update_trajectorymenu(x, pointer);
}

void control_remove(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	trajectory *trajectory_pointer = 0;
	char	  name[3];
		
	switch (av[0].a_type)
	{
		case A_LONG:
			sprintf(name, "%ld", av[0].a_w.w_long);
			trajectory_pointer = control_get_trajectory_by_index(x->first_trajectory, name); break;
		case A_SYM:
			trajectory_pointer = control_get_trajectory_by_index(x->first_trajectory, av[0].a_w.w_sym->s_name); break;
	}

	if(!trajectory_pointer) return;
	else control_trajectory_remove(x, trajectory_pointer);

	control_clear(x);

	// update trajectory menu
	control_rewrite_trajectorymenu(x);
}

void control_remove_all(t_control *x)
{
	trajectory *pointer = x->first_trajectory, *next_pointer;
	
	while(pointer)
	{	
		next_pointer = pointer->next;
		// free allocated memory
		control_trajectory_remove(x, pointer);
		
		pointer = next_pointer;
	}
	
	x->first_trajectory = x->last_trajectory = 0;
	
	control_clear(x);

	// update snapshot menu
	control_rewrite_trajectorymenu(x);
}

void control_trajectory_link(t_control *x, trajectory *pointer)		// link in
{
	if(! x->first_trajectory)
		x->first_trajectory = pointer;
	if(x->last_trajectory)
		x->last_trajectory->next = pointer;
	
	pointer->prev = x->last_trajectory;
	pointer->next = 0;

	x->last_trajectory = pointer;
}

void *control_get_trajectory_by_index(trajectory *pointer, char *index)		// find snapshot in linked list
{
	while(pointer)
	{
		if(! strcmp(pointer->index, index)) return(pointer);
		pointer = pointer->next;
	}
	return(0);
}

void control_copy_to_onscreen_trajectory(t_control *x, trajectory *source, trajectory *destination)
{
	time_pos	*data_pointer;
	ambi		new_data;

	destination->first_breakpoint = destination->last_breakpoint = 0;
	destination->num_of_breakpoints = 0;
	destination->trajectory_duration = source->trajectory_duration;
	
	data_pointer = source->first_breakpoint;

	while(data_pointer)
	{
		sysmem_copyptr(&data_pointer->position.a, &new_data.a, sizeof(double) * 3);
		sysmem_copyptr(&data_pointer->position.x, &new_data.x, sizeof(double) * 3);

		control_record_breakpoint(x, destination, data_pointer->time, new_data);
		
		data_pointer = data_pointer->next;
	}

	destination->trajectory_duration = destination->last_breakpoint->time;
}

void control_trajectory_remove(t_control *x, trajectory *trajectory_pointer)
{
	// free memory allocated for breakpoints
	time_pos *breakpoint_pointer = trajectory_pointer->first_breakpoint, *next_pointer;
	
	while(breakpoint_pointer)
	{	
		next_pointer = breakpoint_pointer->next;
		sysmem_freeptr(breakpoint_pointer);
		
		breakpoint_pointer = next_pointer;
	}

	// rearrange linked list
	if (trajectory_pointer->prev)
		trajectory_pointer->prev->next = trajectory_pointer->next;
	if (trajectory_pointer->next)
		trajectory_pointer->next->prev = trajectory_pointer->prev;
	if (x->first_trajectory == trajectory_pointer)
		x->first_trajectory = trajectory_pointer->next;
	if (x->last_trajectory == trajectory_pointer)
		x->last_trajectory = trajectory_pointer->prev;
		
	// free memory allocated for trajectory
	sysmem_freeptr(trajectory_pointer);
}

//___________________________________________________________________________________________________________________________

// write breakpoints to a XML formatted file

void control_write(t_control *x, t_symbol *s)
{
	if(!x->onscreen_trajectory->trajectory_duration
		&& !x->first_trajectory) return;	// nothing to write
	defer_low(x,(method)control_dowrite, s, 0, 0L);
}

void control_dowrite(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	t_filehandle file;
	char filename[64] = "trajectory.xml";
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
		error("%s: couldn't write trajectory to file \"%s\"", __EXTERNAL_NAME__, filename);
		return;
	}
		
	write_to_file(x, file);
	
	sysfile_close(file);
}

void write_to_file(t_control *x, t_filehandle file)
{
	short err;
	long file_pos;
	long count;
	char c[128];
	
	time_pos	*breakpoint_pointer;
	trajectory	*trajectory_pointer;
	
	// header
	sprintf(c, "<?xml version=\"1.0\" standalone=\"yes\" encoding=\"UTF-8\"?>\r\r");
	count = strlen(c);
	err = sysfile_write(file, &count, c);
	
	sprintf(c, "<ambiscore version=\"1.0\">\r");
	count = strlen(c);
	err = sysfile_write(file, &count, c);
	
	sprintf(c, "\t<xyz-def handedness=\"right\" x-axis=\"right\" />\r"); // coordinate system definition
	count = strlen(c);
	err = sysfile_write(file, &count, c);

	// write onscreen trajectory
	if(!x->current_trajectory)
	{
		sprintf(c, "\t<trajectory>\r");
		count = strlen(c);
		err = sysfile_write(file, &count, c);
		
		breakpoint_pointer = x->onscreen_trajectory->first_breakpoint;

		while (breakpoint_pointer)
		{				
			sprintf(c, "\t\t<point>\r");
			count = strlen(c);
			err = sysfile_write(file, &count, c);
			
			sprintf(c, "\t\t\t<time>%ld</time>\r", breakpoint_pointer->time);
			count = strlen(c);
			err = sysfile_write(file, &count, c);

			sprintf(c, "\t\t\t<xyz>%f %f %f</xyz>\r\t\t</point>\r",		
						breakpoint_pointer->position.x, breakpoint_pointer->position.y, breakpoint_pointer->position.z);
			count = strlen(c);
			err = sysfile_write(file, &count, c);
			
			breakpoint_pointer = breakpoint_pointer->next;
		}

		sprintf(c, "\t</trajectory>\r");
		count = strlen(c);
		err = sysfile_write(file, &count, c);
	}
	// write stored trajectories
	trajectory_pointer = x->first_trajectory;
	
	while(trajectory_pointer)
	{
		sprintf(c, "\t<trajectory index = \"%s\">\r", trajectory_pointer->index);
		count = strlen(c);
		err = sysfile_write(file, &count, c);

		breakpoint_pointer = trajectory_pointer->first_breakpoint;

		while (breakpoint_pointer)
		{				
			sprintf(c, "\t\t<point>\r");
			count = strlen(c);
			err = sysfile_write(file, &count, c);
			
			sprintf(c, "\t\t\t<time>%ld</time>\r", breakpoint_pointer->time);
			count = strlen(c);
			err = sysfile_write(file, &count, c);

			sprintf(c, "\t\t\t<xyz>%f %f %f</xyz>\r\t\t</point>\r",		
						breakpoint_pointer->position.x, breakpoint_pointer->position.y, breakpoint_pointer->position.z);
			count = strlen(c);
			err = sysfile_write(file, &count, c);
			
			breakpoint_pointer = breakpoint_pointer->next;
		}

		sprintf(c, "\t</trajectory>\r");
		count = strlen(c);
		err = sysfile_write(file, &count, c);
		
		trajectory_pointer = trajectory_pointer->next;
	}
	
	sprintf(c, "</ambiscore>");
	count = strlen(c);
	err = sysfile_write(file, &count, c);
			
	sysfile_getpos(file, &file_pos);
	sysfile_seteof(file, file_pos);
}

//___________________________________________________________________________________________________________________________

// read breakpoints from a XML formatted file

void control_read(t_control *x, t_symbol *s)
{
	defer_low(x,(method)control_doread, s, 0, 0L);
}

void control_doread(t_control *x, t_symbol *s, short ac, t_atom *av)
{
	t_filehandle file = 0;
	char filename[64];
	short path;
	long outtype;
	
	if (!s->s_name[0])
	{
		if (open_dialog(filename, &path, &outtype, 0L, 0))
		return;
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
	
	if(!x->onscreen_trajectory->num_of_breakpoints)
	{
		control_copy_to_onscreen_trajectory(x, x->first_trajectory, x->onscreen_trajectory);
		x->current_trajectory = x->first_trajectory;
	}

	// update trajectory menu
	control_rewrite_trajectorymenu(x);
}

void read_from_file(void *x, t_filehandle file, char *filename)
{
	short err=0;
	char tag[BUF_SIZE], rem[BUF_SIZE];
		
	sysfile_setpos(file, SYSFILE_FROMSTART, 0); 

	do{	err = get_tag(file, tag, rem);
		
		if(	tag[0] != '?' &&
			tag[0] != '!' &&
			strcmp(tag, "ambiscore"))
			{
				error("%s: \"%s\" is no readable ambiscore file", __EXTERNAL_NAME__, filename);
				return;
			}
			
		else if(!strcmp(tag, "ambiscore"))
		{
			control_clear(x);
			control_remove_all(x);
			err = read_ambiscore(x,file,rem);
		}			
	} while(!err);
}

// parse data

short read_ambiscore(t_control *x, t_filehandle file, char* attr_val)
{
	short err=0;
	char tag[BUF_SIZE], rem[BUF_SIZE];
	
	do{	err = get_tag(file, tag, rem);
		
		if(!strcmp(tag, "trajectory"))
		{		
			err = read_trajectory(x, file, rem);
		}
		
	} while(!err);
	
	return(err);
}

short read_trajectory(t_control *x, t_filehandle file, char* attr_val)
{
	short err=0;
	char tag[BUF_SIZE], rem[BUF_SIZE], data[BUF_SIZE], attr[BUF_SIZE], val[BUF_SIZE];
	trajectory *new_pointer;
	time_pos new_data;
	ambi new_position;
			
	// get index
	get_attr_value_pair(attr_val, attr, val, attr_val);

	if(!strcmp(attr, "index"))
	{
		// allocate memory
		new_pointer = new_trajectory();

		// link in
		control_trajectory_link(x, new_pointer);

		// write index
		new_pointer->index = sysmem_newptr(sizeof(val));
		strcpy(new_pointer->index, val);
	}
	else
	{
		// no name specified, copy data to onscreen trajectory
		new_pointer = x->onscreen_trajectory;
	}

	// iterate though entries
	do{	err = get_tag(file, tag, rem);
		
		if(!strcmp(tag, "loop"))
		{
			err = get_data(file, data);
			remove_space_from_string(data);
			x->loop = CLIP(string_to_number(data), 0, 2);
		}

		if(!strcmp(tag, "point"))
		{
			// read data from file
			err = read_breakpoint(file, &new_data);
			
			// copy to data structure
			sysmem_copyptr(&new_data.position.a, &new_position.a, sizeof(double) * 3);
			sysmem_copyptr(&new_data.position.x, &new_position.x, sizeof(double) * 3);
			
			control_record_breakpoint(x, new_pointer, new_data.time, new_position);
		}

		if(!strcmp(tag, "/trajectory"))
		{
			control_close(x);
			new_pointer->trajectory_duration = new_pointer->last_breakpoint->time;
			return(0);			
		}
		
	} while(!err);
	
	return(err);
}

short read_breakpoint(t_filehandle file, time_pos *breakpoint)
{
	short	err=0;
	char	data[BUF_SIZE], tag[BUF_SIZE], rem[BUF_SIZE];
	
	breakpoint->position.x = breakpoint->position.y = breakpoint->position.z = 0; // default coordinates
	cartopol((ambi *)&breakpoint->position);
		
	do{	err = get_tag(file, tag, rem);
		
		if(!strcmp(tag, "time"))
		{	err = get_data(file, data);
			remove_space_from_string(data);
			breakpoint->time = string_to_number(data);
		}
					
		if(!strcmp(tag, "xyz"))
		{	err = get_data(file, data);
			string_to_triplet(data, &breakpoint->position.x);
			cartopol((ambi *)&breakpoint->position);
		}		

		if(!strcmp(tag, "aed"))
		{	err = get_data(file, data);
			string_to_triplet(data, &breakpoint->position.a);
			poltocar((ambi *)&breakpoint->position);
		}		
		
		if(!strcmp(tag, "/point"))
			return(0);

	} while(!err);
	
	return(err);
}

//___________________________________________________________________________________________________________________________

// connection to an ambimonitor

void control_connect(t_control *x, t_symbol *s)
{
	if(s != x->name) // a new monitor
	{
		if(x->show_box && !x->update_box)
		{
			control_box_remove(x);		// remove old box
			x->update_box = 1;
		}
		if(x->show_graph && !x->update_graph)
		{
			control_graph_remove(x);		// remove old graph
			x->update_graph = 1;
		}
	}
	x->name = s;
	control_make_connection(x);
}

short control_make_connection(t_control *x)
{
	// get pointer from the symbol "name"
	// in order to establish a connection to the ambimonitor object
	if(x->name == nil) return(1);
	if(!x->name->s_thing) return(1);
	
	x->monitor  = (t_monitor *)x->name->s_thing;
	
	if(x->update_box) // monitor not yet notified
	{
		if(x->show_box)
			control_box_new(x);
		else
			control_box_remove(x);		
		x->update_box = 0;
	}
	
	if(x->update_graph) // monitor not yet notified
	{
		if(x->show_graph)
			control_graph_new(x);
		else
			control_graph_remove(x);
		x->update_graph = 0;
	}

	return(0);
}

// send messages to the connected ambimonitor

void control_box_new(t_control *x)
{
	mess4((void *)x->monitor,gensym("add_graph_new"),(void *)1,&x->box_color,&x->box_pointer,0);
	control_update_monitor(x);
}

void control_box_remove(t_control *x)
{
	mess1((void *)x->monitor,gensym("add_graph_remove"),&x->box_pointer);
	control_update_monitor(x);
}

void control_graph_new(t_control *x)
{		
	mess4((void *)x->monitor, gensym("add_graph_new"),
		  (void *)2, &x->box_color,
		  x->trajectory_graph_handle,
		  &x->onscreen_trajectory->num_of_breakpoints);
	control_update_monitor(x);
}

void control_graph_remove(t_control *x)
{
	mess1((void *)x->monitor, gensym("add_graph_remove"), x->trajectory_graph_handle);
	control_update_monitor(x);
}

// tell the connected ambimonitor to update itself

void control_update_monitor(t_control *x)
{
	mess0((void *)x->monitor,gensym("update_graphics"));
}

//___________________________________________________________________________________________________________________________

// status report

void control_version(void)
{
	post("%s    -    Philippe Kocher/ICST Zurich    -    © 2006 - 2007 all rights reserved", __EXTERNAL_NAME__);   
	post("    version %s compiled %s %s", __EXTERNAL_VERSION__, __DATE__, __TIME__);
}

void control_report(t_control *x)
{
	short i;
	t_atom temp;
	trajectory *trajectory_pointer;
	time_pos   *breakpoint_pointer;
	
	post("ambicontrol");
	if(!control_make_connection(x))
	{
		SETSYM (&temp, x->name);
		post("    connected to ");
		postatom(&temp);
	}
	else post("    not connected");

	post("    method: %s", x->method_string);

	post("    treated points: ");
	for(i=0;i<x->count_points;i++)
	{
		SETLONG(&temp, x->points[i] + 1);
		postatom(&temp);
	}
	
	if(x->has_local_point)
		post("    local point: X %2.2f Y %2.2f Z %2.2f", x->local_point.x, x->local_point.y, x->local_point.z);
	post("    centre: X %2.2f Y %2.2f Z %2.2f", x->centre.x, x->centre.y, x->centre.z);
	post("    box: width %2.2f, depth %2.2f, height %2.2f", x->box_dimensions[0], x->box_dimensions[1], x->box_dimensions[2]);

	if(!x->onscreen_trajectory->trajectory_duration
		&& !x->first_trajectory)
	{
		post("    no trajectory data");
	}
	else
	{
		if(x->first_trajectory)
		{
			post("    stored trajectories:");

			trajectory_pointer = x->first_trajectory;
		
			while(trajectory_pointer)
			{
				post("     '%s': %ld breakpoints, duration: %ld ms", trajectory_pointer->index,
																   trajectory_pointer->num_of_breakpoints,
																   trajectory_pointer->trajectory_duration);
				trajectory_pointer = trajectory_pointer->next;
			}
		}
		else
		{
			post("    no stored trajectories");
		}
		
		if(x->onscreen_trajectory->trajectory_duration)
		{
			post("    current trajectory:");
			if(x->current_trajectory)
				post("     '%s'", x->current_trajectory->index);

			breakpoint_pointer = x->onscreen_trajectory->first_breakpoint;
			while(breakpoint_pointer)
			{
					post("           time: %5ld x: %2.2f y: %2.2f z: %2.2f",
						breakpoint_pointer->time, breakpoint_pointer->position.x, breakpoint_pointer->position.y, breakpoint_pointer->position.z);
					breakpoint_pointer = breakpoint_pointer->next;
			}
		}
	}
}

//___________________________________________________________________________________________________________________________

// mathematics

void cartopol(ambi *coords)		// xyz to aed
{
	coords->a = atan2(coords->x, coords->y) / PI * 180;
	coords->e = atan2(coords->z, pow(pow(coords->y,2)+pow(coords->x,2),0.5)) / PI * 180;
	coords->d = pow(pow(coords->x,2)+pow(coords->y,2)+pow(coords->z,2), 0.5) * 10;
}

void poltocar(ambi *coords)		// aed to xyz
{
	coords->x = cos((90 - coords->a) / 180 * PI) * cos(coords->e / 180 * PI) * coords->d * 0.1;
	coords->y = sin((90 - coords->a) / 180 * PI) * cos(coords->e / 180 * PI) * coords->d * 0.1;
	coords->z = sin(coords->e / 180 * PI) * coords->d * 0.1;
}

void calc_delta(ambi *delta, ambi *old_coords, ambi *new_coords)
{
	delta->x = delta->x + new_coords->x - old_coords->x;
	delta->y = delta->y + new_coords->y - old_coords->y;
	delta->z = delta->z + new_coords->z - old_coords->z;
	delta->a = delta->a + new_coords->a - old_coords->a;
	delta->e = delta->e + new_coords->e - old_coords->e;
	delta->d = delta->d + new_coords->d - old_coords->d;
}

void control_calc_box(t_control *x)
{
	x->box[0] = x->centre.x - x->box_dimensions[0] * 0.5;
	x->box[1] = x->centre.y - x->box_dimensions[1] * 0.5;
	x->box[2] = x->centre.z - x->box_dimensions[2] * 0.5;
	x->box[3] = x->centre.x + x->box_dimensions[0] * 0.5;
	x->box[4] = x->centre.y + x->box_dimensions[1] * 0.5;
	x->box[5] = x->centre.z + x->box_dimensions[2] * 0.5;
}

double ambicontrol_random()
{
#ifdef MAC_VERSION
	return (double)random() / RAND_MAX * 2 - 1;
#else
	return (double)rand() / RAND_MAX * 2 - 1;
#endif
}

//___________________________________________________________________________________________________________________________

// utilities

void control_assist(t_control *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) {
		switch (a) {	
		case 0:
			sprintf(s, "coordinates, messages");
			break;
		case 1:
			sprintf(s, "(float) stepsize");
		}
	}
	else
		sprintf(s, "aed coordinates of local point");
}


void control_free(t_control *x)
{	
	if(x->name != nil && x->name->s_thing && x->show_box) // connected and box shown
		control_box_remove(x);

	control_clear(x);
	control_remove_all(x);

	freeobject((t_object *)x->animation_clock);
}


//___________________________________________________________________________________________________________________________
