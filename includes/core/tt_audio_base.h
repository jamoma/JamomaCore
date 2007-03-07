// taptools base header file

#ifndef TT_AUDIO_BASE_HEADER
#define TT_AUDIO_BASE_HEADER

#include "tt_base.h"
#include "tt_atom.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class tt_audio_base:public tt_base{
	protected:
		tt_int32 				sr;							// This object's sample rate
		tt_float64				r_sr;						// reciprocal of sr
		tt_float64				m_sr;						// sr * 0.001
		static tt_int32			global_sr;					// Global sample rate

		static tt_int16			global_vectorsize;
	public:
		tt_int16				vectorsize;					// Made Public for Speed (Fast access in dsp routines)
	protected:
		tt_int16				temp_vs;					// Temporary variable for use in vector routines

		static const tt_float32 lookup_equalpower[];		// Equal Power lookup table
		static const tt_float32 lookup_half_paddedwelch[];	// 256 point window table (the first half of it)
		static const tt_float32 lookup_quartersine[];		// Quarter Sine lookup table
		static const tt_float64	pi;							// 3.14...
		static const tt_float64 twopi;						// 6.28...
		static const tt_float64 anti_denormal_value;		// Used by the anti_denormal functions
		static const tt_uint8	TT_MAX_NUM_CHANNELS;
		
	public:
		// OBJECT LIFE
		tt_audio_base();									// constructor
		virtual ~tt_audio_base();							// destructor - free memory, etc.

		
		// ATTRIBUTES
		static void 		set_global_sr(const tt_atom &value);			// sets the global sample rate for the library
		static void			get_global_sr(tt_atom &value);			// return the global sample rate
		virtual void 		set_sr(const tt_atom &value);					// sets the local sample rate for the object
		virtual void		get_sr(tt_atom &value);										// return the local sample rate
		
		static void 		set_global_vectorsize(const tt_atom &value);
		static void			get_global_vectorsize(tt_atom &value);
		virtual void 		set_vectorsize(const tt_atom &value);
		virtual void		get_vectorsize(tt_atom &value);
		
		// ATTRIBUTES: pure virtual functions -- must define these in derived classes!
		// FUTURE VERSIONS: MAY CHANGE THIS TO SIMPLY VIRTUAL, AS IT MAY BE USED TO SET GLOBAL SR, VS, ETC.
		virtual tt_err 		set_attr(tt_selector sel, const tt_atom &val)	= 0;	// Set Attributes
		virtual tt_err		get_attr(tt_selector sel, tt_atom &value)		= 0;	// Get Attributes

		// ATTRIBUTE 'shortcuts'
		tt_err set_attr(tt_selector sel, tt_float32 val)
		{
			tt_atom a(val);
			return set_attr(sel, a);
		}
		
		tt_err set_attr(tt_selector sel, tt_int32 val)
		{
			tt_atom a(val);
			return set_attr(sel, a);
		}

		
		// Attempt to knock out denormalized floats
		static tt_float64 anti_denormal(tt_float64 value);
	
		// UTILITIES

		// RADIANS CONVERSIONS: cannot make static because of access to a member data element
		// hz-to-radians conversion
		double hertz_to_radians(const double hz);	// NOTE: Be sure to set the sr before calling this function
		// radians-to-hz conversion
		double radians_to_hertz(const double radians);	// NOTE: Be sure to set the sr before calling this function
		// degrees-to-radians conversion
		double degrees_to_radians(const double degrees);
		// radians-to-degrees conversion
		double radians_to_degrees(const double radians);

		// Decay Time (seconds) to feedback coefficient conversion
		static float decay_to_feedback(const float decay_time, float delay);
		// return the decay time based on the feedback coefficient
		static float feedback_to_decay(const float feedback, const float delay);

		// ************* DECIBEL CONVERSIONS **************

		// Amplitude to decibels
		static float amplitude_to_decibels(const float value);
		// Decibels to amplitude
		static float decibels_to_amplitude(float value);
		// Decibels to millimeters
		static float decibels_to_millimeters(float value);
		// Decibels to millimeters
		static float millimeters_to_decibels(float value);
		// Millimeters to amplitude
		static float millimeters_to_amplitude(float value);
		// Amplitude to millimeters
		static float amplitude_to_millimeters(float value);
		// extended MIDI units to decibels (127 = unity gain)
		static float xmidi_to_decibels(float value);
		// decibels to extended MIDI units  (127 = unity gain)
		static float decibels_to_xmidi(float value);

		// ************* MISC STUFF **************
		
		// Deviate
		float deviate(float value);
		// Prime
		static long prime(long value);
};

#endif // TT_AUDIO_BASE_HEADER
