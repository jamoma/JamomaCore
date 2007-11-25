/* 
 * jcom.io.h
 * shared code for jcom.in and jcom.out objects
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JCOM_IO_H__
#define __JCOM_IO_H__

#include "tt_audio_base.h"
#include "tt_audio_signal.h"
#include "tt_crossfade.h"
#include "tt_gain.h"
#include "tt_ramp.h"
#define MAX_NUM_CHANNELS 32


/** JCOM.IN -- Data Structure */
typedef struct _in{	
	t_jcom_core_subscriber_common	common;
	void			*out_object;					///< jcom.out object for sending messages to	
	void			*inlet[MAX_NUM_CHANNELS];
	void			*outlet[MAX_NUM_CHANNELS];
	void			*dumpout;						///< dumpout outlet
	void			*algout;						///< alogorithm outlet         
	t_symbol		*attr_algorithm_type;			///< the algorithm type
	long			num_inputs;						///< spec'd as an argument
	long			vector_size;					///< cached vector_size of the audio signals
	long			last_target;					///< for poly~-based algorithms, the last target number used
	tt_audio_signal	*signal_in[MAX_NUM_CHANNELS];	///< last vector of audio samples for each channel (used by jcom.out~)
	float			*out_vectors[MAX_NUM_CHANNELS];
	float			*remote_vectors[MAX_NUM_CHANNELS];
	long			attr_bypass;					///< bypass flag for the module
	long			attr_mute;						///< mute flag for the module
	long			attr_freeze;					///< freeze flag for video modules
} t_in;


/** JCOM.OUT -- Data Structure */
typedef struct _out{
	t_jcom_core_subscriber_common	common;
	t_in			*in_object;						///< jcom.in object paired with this jcom.out object
	void			*meter_object[MAX_NUM_CHANNELS]; ///< jcom.meter~ objects in the gui
	short			num_meter_objects;
	void			*clock;							///< clock for sending messages to the meters
	short			clock_is_set;					///< is the clock currently scheduled to fire?
	void			*inlet[MAX_NUM_CHANNELS];
	void			*outlet[MAX_NUM_CHANNELS];
	void			*dumpout;						///< dumpout outlet
	t_symbol		*attr_algorithm_type;			///< default is 'poly', also we need a 'blue' type (maybe a better name?)
	long			num_outputs;					///< spec'd as an argument
	long			vector_size;					///< cached vector_size of the audio signals

	tt_audio_signal	*signal_in;
	tt_audio_signal *signal_out;
	tt_audio_signal	*signal_temp;
	float			peakamp[MAX_NUM_CHANNELS];		///< The peak amplitude of the envelope for the meter from the last vector
													/* The crossfade and gain objects can be shared for all channels
													   because the object's don't need an independent state and do not
													   rely internally on any history.  
													*/
	float			*out_vectors[MAX_NUM_CHANNELS];	///< buffers of the last output for access by jcom.receive~
	tt_crossfade	*xfade;							///< implements the 'mix' and 'bypass' params
	tt_gain			*gain;							///< implements the 'gain' param
	tt_ramp			*ramp_gain;						///< ramps to drive smooth audio for the above params
	tt_ramp			*ramp_xfade;					///< The type of xfade to use
	
	float			attr_mix;						///< The mix percent, stored in percent
	long			attr_bypass;					///< the bypass indicator for the module 
	float			attr_gain;						///< The gain parameter, stored in midi values
	long			attr_defeat_meters;				///< Disable updating meters 
	long			attr_preview;					///< The preview flag for video modules
	long			attr_mute;						///< The mute flag for a module
	void			*preview_object; 				///< The preview object to send to when preview is enabled
	
	t_symbol		*last_msg[MAX_NUM_CHANNELS];	///< used by /video/freeze...
	short			last_argc[MAX_NUM_CHANNELS];
	t_atom			last_argv[MAX_NUM_CHANNELS][10];
} t_out;


#endif // #ifndef __JCOM_IO_H__
