#include "tt_base.h"


// OBJECT LIFE
inline tt_base::tt_base()
{ 
	init(); 
}		

inline tt_base::~tt_base()
{
	;
}

inline void tt_base::init()
{	
	is_initialized = true;	
}


// Platform-independent Message Logging
inline void tt_base::log_post(char *message){
	#ifdef TT_TARGET_MAX
		post(message);
	#else
		fprintf(stdout, message);
	#endif
}
inline void tt_base::log_error(char *message){
	#ifdef TT_TARGET_MAX
		error(message);
	#else
		fprintf(stderr, message);
	#endif
}


// Platform-independent Memory routines
inline tt_ptr tt_base::mem_alloc(long size)
{
	tt_ptr alloc;

	// Cycling '74 Max
	#ifdef TT_TARGET_MAX
		alloc = (tt_ptr)sysmem_newptrclear(size);
		if(alloc){
			return alloc;
		}
		else{
			log_error("tt_base::mem_alloc - could not get memory");
			return 0;
		}
	// Generic Mac 
	#elif defined(TT_TARGET_MAC)
		alloc = (tt_ptr)NewPtrClear(size);
		if(alloc)
			return alloc;
		else{
			log_error("tt_base::mem_alloc - could not get memory");
			return 0;
		}	
	// Generic Win
	#elif defined(TT_TARGET_WIN)
		//alloc = HeapAlloc(GetProcessHeap(), 0, size);			// Windows API
		alloc = (tt_ptr)calloc(1, size);
		// Should add some error checking here
		return alloc;
	// Not Defined
	#else								
		#error VALID TARGET NOT DEFINED!
	#endif
}

inline void tt_base::mem_free(void *my_ptr)
{
	if(my_ptr != 0){ 
		// Cycling '74 Max
		#ifdef TT_TARGET_MAX
			sysmem_freeptr(my_ptr);
		// Generic Mac 
		#elif defined(TT_TARGET_MAC)
			DisposePtr((Ptr)my_ptr);
		// Generic Win
		#elif defined(TT_TARGET_WIN)
			//HeapFree(GetProcessHeap(), 0, my_ptr)
			free(my_ptr);
		#endif

		my_ptr = 0;
	}
}


// clip utility that doesn't use branching
template<class T>
inline static T tt_base::clip(T value, T low_bound, T high_bound)
{
	#ifdef MAC_VERSION
		value = T(((fabs(value - low_bound)) + (low_bound + high_bound)) - fabs(value - high_bound));
	#else	// VC++ gens an ERROR because of the ambiguous call to fabs().  This is annoying...
		value = T(((fabs(double(value - low_bound))) + (low_bound + high_bound)) - fabs(double(value - high_bound)));
	#endif
	value /= 2;		// relying on the compiler to optimize this, chosen to reduce compiler errors in Xcode
	return value;
}

template<class T>
inline static T tt_base::limit_max(T value, T high_bound)
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
inline static T tt_base::limit_min(T value, T low_bound)
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


// rounding utility
inline static long tt_base::round(float value)
{
	if(value > 0)
		return((long)(value + 0.5));
	else
		return((long)(value - 0.5));
}
inline static long tt_base::round(double value)
{
	if(value > 0)
		return((long)(value + 0.5));
	else
		return((long)(value - 0.5));
}

// onewrap utility
template<class T>
inline static T tt_base::onewrap(T value, T low_bound, T high_bound)
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
inline T tt_base::scale(T value, T inlow, T inhigh, T outlow, T outhigh)
{
	double inscale, outdiff;
	 
 	inscale = 1 / (inhigh - inlow);
 	outdiff = outhigh - outlow;
 	
	value = (value - inlow) * inscale;
	value = (value * outdiff) + outlow;
	return(value);											
}
