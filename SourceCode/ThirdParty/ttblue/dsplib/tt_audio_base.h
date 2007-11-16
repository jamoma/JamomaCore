// taptools base header file

#ifndef TT_AUDIO_BASE_HEADER
#define TT_AUDIO_BASE_HEADER

#include <math.h>		// Standard Math library
#include <stdlib.h>
#include <iostream>

/* If the target is an external for Cycling'74 Max then you must define
 * TT_TARGET_MAX in a prefix file.  That way the proper flags are set
 * to use Max's memory routines and other important facilities.
 */
#ifdef TT_TARGET_MAX
#include "ext.h"
#endif // TT_TARGET_MAX


/****************************************************************************************************/
// Type Definitions

typedef short	tt_selector;
typedef float	tt_attribute_value;
typedef bool	tt_attribute_value_bool;
typedef long	tt_attribute_value_discrete;

typedef void 	*tt_ptr;

typedef float	tt_sample_value;
typedef double	tt_sample_value_highres;
typedef float	*tt_sample_vector;
typedef double	*tt_sample_vector_highres;

typedef short	tt_err;						// used for returning error codes


/****************************************************************************************************/
// TapTools Error Codes

enum{
	TT_NOERR = 0,
	TT_MEMALLOC_FAILED = -1,
};


/****************************************************************************************************/
// Platform Sniffing

// We need to figure out what OS and compiler is being used.
// This will result in symbols being set for conditional compiling of things like memory allocation.

// First Check for symbols defined by the Max API
#ifdef MAC_VERSION
	#define TAPTOOLS_TARGET_MAC 1
#elif defined(WIN_VERSION)
	#define TAPTOOLS_TARGET_WIN 1
#elif defined(WIN32)		// Next look for something commonly defined by VC++ to see whether we're on Windows.
	#define TAPTOOLS_TARGET_WIN 1
//#else						// If all else fails, assume we are on the Mac...
//	#define TAPTOOLS_TARGET_MAC 1
#endif


// Include the appropriate API header
#if TARGET_OS_WIN				// Windows
#include <windows.h>
#endif



/****************************************************************************************************/
// Class Specification


// Specification of our base class
class tt_audio_base{
	private:
		bool					is_initialized;				// Flag set by successful initialization
		
		void init();										// Initialization - used by the constructors

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
		int						vectorsize;				// Made Public for Speed (Fast access in dsp routines)
		
		// OBJECT LIFE
		tt_audio_base();								// constructor
		~tt_audio_base();								// destructor - free memory, etc.

		
		// ATTRIBUTES
		static void set_global_sr(int value);			// sets the global sample rate for the library
		static int get_global_sr();						// return the global sample rate
		void set_sr(int value);							// sets the local sample rate for the object
		int get_sr();									// return the local sample rate
		
		static void set_global_vectorsize(int value);	// ADDED VECTORSIZE STUFF 2004.06.15
		static int get_global_vectorsize();
		void set_vectorsize(int value);
		int get_vectorsize();
				
		
		// Attempt to knock out denormalized floats; inlined here for speed
		static double anti_denormal(double value)
		{
		#ifndef TT_DISABLE_DENORMAL_FIX		// Define this to test code without denormal fixing
			value += anti_denormal_value;
			value -= anti_denormal_value;
		#endif
			return(value);
		}


		// Platform-independent Message Logging
		void log_post(char *message);
		void log_error(char *message);


		// Platform-independent Memory routines
		tt_ptr mem_alloc(long size);
		void mem_free(void *my_ptr);
		
	
		// UTILITIES (all inlined here for speed)

		// clip utility
		template<class T>
		static T clip(T value, T low_bound, T high_bound)
		{
			// This version used branching
			// return value < low_bound? low_bound: (value > high_bound? high_bound : value);
			
			// This version doesn't (!)
			/* This also takes care of denormal number elimination - see the original post
			 		to music-dsp by Laurent de Soras (and the appended comments)
			   While this looks more complex, it actually _is_ faster
			   This also applies to the min_limit and max_limit functions
			 */

			// VC++ SEEMS TO HAVE MENTAL ISSUES, HENCE THE DUMB HACK BELOW...
//#ifdef WIN_VERSION
//			float x1 = fabs((float)(value - low_bound));
//			float x2 = fabs((float)(value - high_bound));
//#else
//			T x1 = fabs(value - low_bound);
//			T x2 = fabs(value - high_bound);
//#endif // WIN_VERSION
//			value = x1 + (low_bound + high_bound);
//			value -= x2;
//			value *= 0.5;

// Re-written here as a one-liner:		
#ifdef MAC_VERSION
			value = T(((fabs(value - low_bound)) + (low_bound + high_bound)) - fabs(value - high_bound));
#else	// VC++ gens an ERROR because of the ambiguous call to fabs().  This is annoying...
			value = T(((fabs(double(value - low_bound))) + (low_bound + high_bound)) - fabs(double(value - high_bound)));
#endif
			value /= 2;		// relying on the compiler to optimize this, chosen to reduce compiler errors in Xcode
			return value;
		}
		
		template<class T>
		static T limit_max(T value, T high_bound)
		{
			value = high_bound - value;
#ifdef MAC_VERSION
			value += fabs(value);
#else
			value += fabs((double)value);
#endif
			value *= 0.5;
			value = high_bound - value;
			return value; 
		}
		
		template<class T>
		static T limit_min(T value, T low_bound)
		{
			value -= low_bound;
#ifdef MAC_VERSION
			value += fabs(value);
#else
			value += fabs((double)value);
#endif
			value *= 0.5;
			value += low_bound;
			return value; 
		}
		
		
		// round utility
		static long round(float value)
		{
			if(value > 0)
				return((long)(value + 0.5));
			else
				return((long)(value - 0.5));
		}
		static long round(double value)
		{
			if(value > 0)
				return((long)(value + 0.5));
			else
				return((long)(value - 0.5));
		}
		
		// onewrap utility
		template<class T>
		static T onewrap(T value, T low_bound, T high_bound)
		{
			if((value >= low_bound) && (value < high_bound)) 
				return value;
			else if(value >= high_bound)
				return((low_bound - 1) + (value - high_bound));	
			else
				return((high_bound + 1) - (low_bound - value));
		}
		
		// scale utility
		template<class T>
		T scale(T value, T inlow, T inhigh, T outlow, T outhigh)
		{
			double inscale, outdiff;
			 
		 	inscale = 1 / (inhigh - inlow);
		 	outdiff = outhigh - outlow;
		 	
			value = (value - inlow) * inscale;
			value = (value * outdiff) + outlow;
			return(value);											
		}

		
		// RADIANS CONVERSIONS: cannot make static because of access to a member data element
		// hz-to-radians conversion
		double hertz_to_radians(double hz)	// NOTE: Be sure to set the sr before calling this function
		{
			return(hz * (pi / (sr * 0.5)));
		}

		// radians-to-hz conversion
		double radians_to_hertz(double radians)	// NOTE: Be sure to set the sr before calling this function
		{
			return((radians * sr) / twopi);
		}

		// degrees-to-radians conversion
		double degrees_to_radians(double degrees)
		{
			return((degrees * pi) / 180.);
		}

		// radians-to-degrees conversion
		double radians_to_degrees(double radians)
		{
			return((radians * 180.) / pi);	
		}


		// Decay Time (seconds) to feedback coefficient conversion
		static float decay_to_feedback(float decay_time, float delay)
		{
			float 	fb;					// variable for our result		
			delay = delay * 0.001;		// convert delay from milliseconds to seconds
			if(decay_time < 0){
				fb = delay / -decay_time;
				fb = fb * -60.;		
				fb = pow(10., (fb / 20.));	
				fb *= -1.;
			}
			else{
				fb = delay / decay_time;
				fb = fb * -60.;				
				fb = pow(10., (fb / 20.));		
			}		
			return(fb);			
		}

		// return the decay time based on the feedback coefficient
		static float feedback_to_decay(float feedback, float delay)
		{
			float 	decay_time;				// variable for our result
			
			if(feedback > 0){
				decay_time = 20. * (log10(feedback));		
				decay_time = -60.0 / decay_time;		
				decay_time = decay_time * (delay);		
			}
			else if(feedback < 0){
				decay_time = 20. * (log10(fabs(feedback)));		
				decay_time = -60.0 / decay_time;		
				decay_time = decay_time * (-delay);		
			}
			else
				decay_time = 0;

			return(decay_time);
		}


		// ************* DECIBEL CONVERSIONS **************

		// Amplitude to decibels
		static float amplitude_to_decibels(float value)
		{
			if (value >= 0) return(20. * (log10(value)));
			else return 0;
		}

		// Decibels to amplitude
		static float decibels_to_amplitude(float value)
		{
			return(pow(10., (value / 20.)));
		}

		// Decibels to millimeters
		static float decibels_to_millimeters(float value)
		{
			if (value >= 10.)
				value = 0.; 
			else if (value > -10.) 
				value = -12./5. * (value - 10.);
			else if (value > -40.)
				value = 48. - 12./10. * (value + 10.);
			else if (value > -60.)
				value = 84. - 12./20. * (value + 40.);
			else if (value > -200.)
				value = 96. - 1./35. * (value + 60.);
			else value = 100.; 
			value = 100. - value; 

			return(value);
		}

		// Decibels to millimeters
		static float millimeters_to_decibels(float value)
		{
			if (value <= 0.) 
				value = -200.0;
			else if (value < 4.0)
				value = -60. - 35. * (-(value - 100) - 96.); 
			else if (value < 16.)
				value = -40. - 20./12. * (-(value - 100) - 84.); 
			else if (value < 52.)
				value = -10. - 10./12. * (-(value - 100) - 48.);
			else if (value < 100.)
				value = 10.0 - 5.0/12.0 * -(value - 100);	
			else value = 10.0; 
			
			return(value);
		}
		
		// Millimeters to amplitude
		static float millimeters_to_amplitude(float value)
		{
			value = millimeters_to_decibels(value);
			return decibels_to_amplitude(value);
		}
		
		// Amplitude to millimeters
		static float amplitude_to_millimeters(float value)
		{
			value = amplitude_to_decibels(value);
			return decibels_to_millimeters(value);
		}


		// extended MIDI units to decibels (127 = unity gain)
		static float xmidi_to_decibels(float value)
		{
			return (value - 127) * 0.6;
		}
		
		// decibels to extended MIDI units  (127 = unity gain)
		static float decibels_to_xmidi(float value)
		{
			return (value * 1.66666667) + 127;
		}
		
		

		// ************* MISC STUFF **************
		
		// Deviate
		float deviate(float value)
		{
			value += (2.0 * (float(rand()) / float(RAND_MAX))) - 1.0;	// randomize input with +1 to -1 ms
			value = value * 0.001 * sr;									// convert from ms to samples
			value = (float)prime(long(value));										// find the nearest prime number (in samples)
			value = (value / sr) * 1000.0;								// convert back to ms
			
			return value;
		}

		// Prime
		static long prime(long value)
		{
			long	candidate, last, i, isPrime;

		   	if(value < 2)
		  		candidate = 2;
			else if(value == 2)
				candidate = 3;
			else{
				candidate = value;
				if (candidate % 2 == 0)    						// Test only odd numbers
					candidate--;
				do{
					isPrime = true;								// Assume glorious success
					candidate += 2;               				// Bump to the next number to test
					last = long(sqrt((float)candidate));      				// We'll check to see if candidate has any factors, from 2 to last
					for (i=3; (i <= last) && isPrime; i+=2){	// Loop through odd numbers only
						if((candidate % i) == 0)
						isPrime = false;
					}
				} 
				while (!isPrime);
			}
			return candidate;
		}

};


#ifdef TT_INCLUDE_CPP
  #include "tt_audio_base.cpp"
#endif

#endif // TT_AUDIO_BASE_HEADER
