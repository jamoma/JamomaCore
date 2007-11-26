/* 
 * Jamoma Clock
 * The master timing mechanism that drives the Jamoma Scheduler
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"
//#define USE_COREAUDIO

static t_class	*class_jamoma_clock = NULL;
static long		dsp_called = false;


/************************************************************************************/
// Object Life

void jamoma_clock_initclass()
{
	t_class *c = class_new("jamoma.clock", 
							(method)jamoma_clock_new, 
							(method)jamoma_clock_free, 
							sizeof(t_jamoma_clock), 
							(method)NULL, 
							A_GIMME, 0);

	class_addmethod(c, (method)jamoma_clock_dsp,	"dsp",		A_CANT, 0L);
	
	class_dspinit(c);
	class_register(CLASS_NOBOX, c);	
	class_jamoma_clock = c;
}


t_object* jamoma_clock_new(t_symbol *s, long argc, t_atom *argv)
{
	t_jamoma_clock *x = (t_jamoma_clock*)object_alloc(class_jamoma_clock);
	if(x){
		x->sr = DEFAULT_SAMPLE_RATE;
		x->one_over_sr = 1.0 / DEFAULT_SAMPLE_RATE;
		x->samples_per_block = 64;
		
		dsp_setup((t_pxobject *)x, 1);
		x->obj.z_misc = Z_PUT_LAST;			// ... because our perform routine advances time to the next frame
		attr_args_process(x, argc, argv);
		
#ifdef MAC_VERSION
#ifdef USE_COREAUDIO
		jamoma_clock_setup_coreaudio(x);
		start(x);
#endif
#endif
	}
	return (t_object*)x;
}


void jamoma_clock_free(t_jamoma_clock *x)
{
	dsp_free((t_pxobject *)x);
	stop(x);
}


/************************************************************************************/
#pragma mark -
#pragma mark Methods -- MSP Master

t_int* jamoma_clock_perform(t_int *w)
{
	t_jamoma_clock *x = (t_jamoma_clock *)(w[1]);
		
	// Move the clocks ahead for the next cycle
	x->current_samples += x->samples_per_block;
	x->current_time = ((x->current_samples * x->one_over_sr) * DEFAULT_TICKS_PER_SECOND);

	// TODO: do this for each scheduler -- but for now we just service the global scheduler
	jamoma_scheduler_update((t_jamoma_scheduler*)obj_jamoma_scheduler, &x->current_time);

	// TODO: is there another way to this:
	// reset the hack that we use in the dsp method to make sure this method isn't called multiple times
	dsp_called = false;

	return(w+2);
}


void jamoma_clock_dsp(t_jamoma_clock *x, t_signal **sp, short *count)
{
	if(!dsp_called){
		if(object_classname(x) != gensym("jamoma.clock"))
			x = (t_jamoma_clock*)obj_jamoma_clock;

		if(sp){
			x->sr = (double)sp[0]->s_sr;
			x->one_over_sr = 1.0 / (double)sp[0]->s_sr;
			x->samples_per_block = sp[0]->s_n;
		}
		
		dsp_add(jamoma_clock_perform, 1, x);
		dsp_called = true;
	}
}


/************************************************************************************/
#ifdef MAC_VERSION
#pragma mark -
#pragma mark Methods -- CoreAudio Master

// this is the audio processing callback
OSStatus jamoma_clock_coreaudio_callback (AudioDeviceID			inDevice, 
										const AudioTimeStamp*	inNow, 
										const AudioBufferList*	inInputData, 
										const AudioTimeStamp*	inInputTime, 
										AudioBufferList*		outOutputData, 
										const AudioTimeStamp*	inOutputTime, 
										void*					baton)
{    
    t_jamoma_clock *x = (t_jamoma_clock*)baton;
    
    // load instance vars into registers    
    int numSamples = x->deviceBufferSize / x->deviceFormat.mBytesPerFrame;
// NOTE: in my initial testing, the above statement indicates that we are being called 
// with a block size of 256 samples (5.8 ms) -- do we want to use something smaller, like 64 samples (1.4 ms)?
// Should be able to do this with a call to AudioHardwareSetProperty(), or is there a better way?

     return kAudioHardwareNoError;     
}


void jamoma_clock_setup_coreaudio(t_jamoma_clock *x)
{
    OSStatus	err = kAudioHardwareNoError;
    UInt32		count;    

	x->device = kAudioDeviceUnknown;

    x->initialized = NO;

    // get the default output device for the HAL
    count = sizeof(x->device);		// it is required to pass the size of the data to be returned
    err = AudioHardwareGetProperty(kAudioHardwarePropertyDefaultOutputDevice, &count, (void*)&x->device);
    if(err != kAudioHardwareNoError){
    	fprintf(stderr, "get kAudioHardwarePropertyDefaultOutputDevice error %ld\n", err);
        return;
    }

    // get the buffersize that the default device uses for IO
    count = sizeof(x->deviceBufferSize);	// it is required to pass the size of the data to be returned
    err = AudioDeviceGetProperty(x->device, 0, false, kAudioDevicePropertyBufferSize, &count, &x->deviceBufferSize);
    if(err != kAudioHardwareNoError){
    	fprintf(stderr, "get kAudioDevicePropertyBufferSize error %ld\n", err);
        return;
    }
    fprintf(stderr, "deviceBufferSize = %ld\n", x->deviceBufferSize);
   
    // get a description of the data format used by the default device
    count = sizeof(x->deviceFormat);	// it is required to pass the size of the data to be returned
    err = AudioDeviceGetProperty(x->device, 0, false, kAudioDevicePropertyStreamFormat, &count, &x->deviceFormat);
    if(err != kAudioHardwareNoError){
    	fprintf(stderr, "get kAudioDevicePropertyStreamFormat error %ld\n", err);
        return;
    }
    if(x->deviceFormat.mFormatID != kAudioFormatLinearPCM){
    	fprintf(stderr, "mFormatID !=  kAudioFormatLinearPCM\n");
        return;
    }
    if(!(x->deviceFormat.mFormatFlags & kLinearPCMFormatFlagIsFloat)){
    	fprintf(stderr, "Sorry, currently only works with float format....\n");
        return;
    }
    
    x->initialized = YES;

    fprintf(stderr, "mSampleRate = %g\n", x->deviceFormat.mSampleRate);
    fprintf(stderr, "mFormatFlags = %08lX\n", x->deviceFormat.mFormatFlags);
    fprintf(stderr, "mBytesPerPacket = %ld\n", x->deviceFormat.mBytesPerPacket);
    fprintf(stderr, "mFramesPerPacket = %ld\n", x->deviceFormat.mFramesPerPacket);
    fprintf(stderr, "mChannelsPerFrame = %ld\n", x->deviceFormat.mChannelsPerFrame);
    fprintf(stderr, "mBytesPerFrame = %ld\n", x->deviceFormat.mBytesPerFrame);
    fprintf(stderr, "mBitsPerChannel = %ld\n", x->deviceFormat.mBitsPerChannel);
}


void start(t_jamoma_clock *x)
{
	OSStatus		err = kAudioHardwareNoError;

    if(!x->initialized)
		return;
    if(x->soundPlaying)
		return;

    err = AudioDeviceAddIOProc(x->device, jamoma_clock_coreaudio_callback, (void*)x);	// setup our device with an IO proc
    if(err != kAudioHardwareNoError)
		return;
    
    err = AudioDeviceStart(x->device, jamoma_clock_coreaudio_callback);				// start playing sound through the device
    if(err != kAudioHardwareNoError)
		return;

    x->soundPlaying = true;									// set the playing status global to true
}


void stop(t_jamoma_clock *x)
{
    OSStatus 	err = kAudioHardwareNoError;
    
    if(!x->initialized)
		return;
    if(!x->soundPlaying)
		return;
    
    err = AudioDeviceStop(x->device, jamoma_clock_coreaudio_callback);				// stop playing sound through the device
    if(err != kAudioHardwareNoError)
		return;

    err = AudioDeviceRemoveIOProc(x->device, jamoma_clock_coreaudio_callback);			// remove the IO proc from the device
    if(err != kAudioHardwareNoError)
		return;
    
    x->soundPlaying = false;						// set the playing status global to false
}


#endif // MAC_VERSION
/************************************************************************************/
#pragma mark -
#pragma mark Utilities

unsigned long long jamoma_clock_tickstosamples(t_object *o, double period)
{
	t_jamoma_clock *x = (t_jamoma_clock*)o;
	return x->sr * (period / DEFAULT_TICKS_PER_SECOND);
}


