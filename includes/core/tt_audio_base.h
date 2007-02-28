// taptools base header file

#ifndef TT_AUDIO_BASE_HEADER
#define TT_AUDIO_BASE_HEADER

#include "tt_base.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class tt_audio_base:public tt_base{
	private:
//		bool					is_initialized;				// Flag set by successful initialization		
//		void init();										// Initialization - used by the constructors

	protected:
		int 					sr;							// This object's sample rate
		double					r_sr;						// reciprocal of sr
		float					m_sr;						// sr * 0.001
		static int 				global_sr;					// Global sample rate
		static int				global_vectorsize;
		static const float 		lookup_equalpower[];		// Equal Power lookup table
		static const float 		lookup_half_paddedwelch[];	// 256 point window table (the first half of it)

		static const float 		lookup_quartersine[];		// Quarter Sine lookup table
		static const double 	twopi;						// 6.28...
		static const double 	anti_denormal_value;		// Used by the anti_denormal functions
		int						temp_vs;					// Temporary variable for use in vector routines
		
	public:
		static const double 	pi;							// 3.14...
		int						vectorsize;					// Made Public for Speed (Fast access in dsp routines)
		
		// OBJECT LIFE
		tt_audio_base();									// constructor
		~tt_audio_base();									// destructor - free memory, etc.

		
		// ATTRIBUTES
		static void 	set_global_sr(int value);			// sets the global sample rate for the library
		static int 		get_global_sr();					// return the global sample rate
		virtual void 	set_sr(int value);					// sets the local sample rate for the object
		virtual int 	get_sr();							// return the local sample rate
		
		static void 	set_global_vectorsize(int value);	// ADDED VECTORSIZE STUFF 2004.06.15
		static int 		get_global_vectorsize();
		virtual void 	set_vectorsize(int value);
		virtual int 	get_vectorsize();
		
		// ATTRIBUTES: pure virtual functions -- must define these in derived classes!
		virtual void 				set_attr(tt_selector sel, tt_attribute_value val)	= 0;	// Set Attributes
		virtual tt_attribute_value 	get_attr(tt_selector sel)							= 0;	// Get Attributes

		
		// Attempt to knock out denormalized floats
		static double anti_denormal(double value);
	
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
