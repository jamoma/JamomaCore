#include "tt_base.h"

// needed for c++ templates.  ugh.
#if TT_TARGET_MAC
#pragma implementation
#endif


// OBJECT LIFE
TT_INLINE 
tt_base::tt_base()
{ 
	init(); 
}		

TT_INLINE 
tt_base::~tt_base()
{
	;
}

TT_INLINE 
void tt_base::init()
{	
	is_initialized = true;	
}


// Platform-independent Message Logging
TT_INLINE 
void tt_base::log_post(char *message){
	#ifdef TT_TARGET_MAX
		post(message);
	#else
		fprintf(stdout, message);
	#endif
}


TT_INLINE 
void tt_base::log_error(char *message){
	#ifdef TT_TARGET_MAX
		error(message);
	#else
		fprintf(stderr, message);
	#endif
}


// Platform-independent Memory routines
TT_INLINE 
tt_ptr tt_base::mem_alloc(long size)
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


TT_INLINE 
tt_ptr tt_base::mem_resize(tt_ptr ptr, long newsize)
{
	#ifdef TT_TARGET_MAX
		return sysmem_resizeptr(ptr, newsize);
	#else
		return realloc(ptr, newsize);
	#endif
}


TT_INLINE 
void tt_base::mem_free(void *my_ptr)
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


// rounding utility
TT_INLINE 
long tt_base::round(float value)
{
	if(value > 0)
		return((long)(value + 0.5));
	else
		return((long)(value - 0.5));
}


TT_INLINE 
long tt_base::round(double value)
{
	if(value > 0)
		return((long)(value + 0.5));
	else
		return((long)(value - 0.5));
}

