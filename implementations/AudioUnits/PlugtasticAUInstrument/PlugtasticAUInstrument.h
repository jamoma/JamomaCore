/*
 *  PlugtasticAUInstrument.h
 *  PlugtasticAUInstrument
 *
 *  Created by Mehul Trivedi on 9/12/06.
 *  Copyright 2006 __MyCompanyName__. All rights reserved.
 *
 */

#include "PlugtasticAUInstrumentVersion.h"
#include "AUInstrumentBase.h"

// 
static const UInt32 kNumNotes = 12;
static const UInt32 kMaxActiveNotes = 8;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

const double twopi = 2.0 * 3.14159265358979;
inline double pow5(double x) { double x2 = x*x; return x2*x2*x; }

enum {
	kGlobalVolumeParam = 0,
	//Add your parameters here...
	kNumberOfParameters=1
};

static const CFStringRef kGlobalVolumeName = CFSTR("global volume");

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct TestNote : public SynthNote
{
	virtual					~TestNote() {}
	
	virtual void			Attack(const MusicDeviceNoteParams &inParams)
	{ 
		double sampleRate = SampleRate();
		phase = 0.;
		amp = 0.;
		maxamp = 0.4 * pow(inParams.mVelocity/127., 3.); 
		up_slope = maxamp / (0.1 * sampleRate);
		dn_slope = -maxamp / (0.9 * sampleRate);
		fast_dn_slope = -maxamp / (0.005 * sampleRate);
	}

	virtual Float32			Amplitude() { return amp; } // used for finding quietest note for voice stealing.
	virtual OSStatus		Render(UInt32 inNumFrames, AudioBufferList& inBufferList);
	
	double phase, amp, maxamp;
	double up_slope, dn_slope, fast_dn_slope;
};

class PlugtasticAUInstrument : public AUMonotimbralInstrumentBase
{
	public:
	PlugtasticAUInstrument(ComponentInstance inComponentInstance);
				
	virtual OSStatus			Initialize();
	virtual OSStatus			Version() { return kPlugtasticAUInstrumentVersion; }
	
	virtual OSStatus			GetParameterInfo(AudioUnitScope inScope, AudioUnitParameterID inParameterID, AudioUnitParameterInfo &outParameterInfo);
	private:
	
	TestNote mTestNotes[kNumNotes];
};
