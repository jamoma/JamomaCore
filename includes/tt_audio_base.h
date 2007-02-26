// taptools base header file

#ifndef TT_AUDIO_BASE_HEADER
#define TT_AUDIO_BASE_HEADER

#include "tt_base.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class tt_audio_base:public tt_base{
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

	
		// UTILITIES (all inlined here for speed)

		// RADIANS CONVERSIONS: cannot make static because of access to a member data element
		// hz-to-radians conversion
		double hertz_to_radians(const double hz)	// NOTE: Be sure to set the sr before calling this function
		{
			return(hz * (pi / (sr * 0.5)));
		}

		// radians-to-hz conversion
		double radians_to_hertz(const double radians)	// NOTE: Be sure to set the sr before calling this function
		{
			return((radians * sr) / twopi);
		}

		// degrees-to-radians conversion
		double degrees_to_radians(const double degrees)
		{
			return((degrees * pi) / 180.);
		}

		// radians-to-degrees conversion
		double radians_to_degrees(const double radians)
		{
			return((radians * 180.) / pi);	
		}


		// Decay Time (seconds) to feedback coefficient conversion
		static float decay_to_feedback(const float decay_time, const float delay)
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
		static float feedback_to_decay(const float feedback, const float delay)
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
		static float amplitude_to_decibels(const float value)
		{
			if(value >= 0) 
				return(20. * (log10(value)));
			else
			 	return 0;
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


#endif // TT_AUDIO_BASE_HEADER
