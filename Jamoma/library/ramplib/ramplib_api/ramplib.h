// Jamoma RampLib base header file

#ifndef __RAMPLIB__H_
#define __RAMPLIB__H_

#include <math.h>		// Standard Math library
#include <stdlib.h>
#include <iostream>


/* 	Define a function pointer that the ramplib will use as a callback to the code 
	wanting the ramp output...
	
	This function is designed to be able to call Max, but also to be agnostic such
	that it may be used in non-Max contexts.  This means that the first arg is a pointer
	which can be stored in the constructor and then passed back - in Max this will be the 
	struct pointer for the instance.
	
	The callback functions in Max might look lik this:

	void receive_ramp(void *z, long val);
		or
	void receive_ramp(void *z, float val);
		where z can then be cast to the struct type for the object
*/

typedef 


/****************************************************************************************************/
// Class Specification

// Specification of our base class
class ramplib{
	private:
		enum ramplib_datatype{
			k_datatype_undefined = 0,
			k_datatype_long,
			k_datatype_float32,
			k_datatype_float64,
			k_num_datatypes
		};
		
		callback_func  		*something;
		void				*callback_arg;
		ramplib_datatype	datatype;

	protected:
		long				value_long;
		float				value_float32;
		double				value_float64;
		float				ramptime;			// expressed in ms
		
	public:
		enum ramplib_attributes{
			k_unknown = 0,
			k_ramptime,							// in ms
			k_currentvalue,						//
			k_arg								// the void pointer
		};
		
		
		// OBJECT LIFE
		ramplib(void *x){						// constructor
			datatype = k_datatype_undefined;
			callback_arg = x;
		}					
				
		~ramplib(){								// destructor
			;
		}							
		
		
		// ATTRIBUTES
		//	not sure what the best way is to do this with all of theses types, actually...
		attr_set(){
			;
		}
		
		attr_get(){
			;
		}


		// RAMP EXECUTION ROUTINES
		//	return true if the ramp needs to continue
		//	these should be the default if something is messed up in a subclass?
		bool perform_noramp(long val){
			value_long = val;							// store the incoming value as the current value
			(callback_func)(callback_arg, value_long);	// send the value to the host
		}
		
		bool perform_noramp(float val){
			;
		}
		
		bool perform_noramp(double val){
			
		}

#endif // __RAMPLIB__H_
