//------------------------------------------------------------------------
// Project     : VST SDK
// Version     : 3.0
//
// Category    : Examples
// Filename    : again.cpp
// Created by  : Steinberg, 04/2005
// Modified    : $Date: 2008/01/16 07:48:35 $
// Description : BlueSaturation Example for VST SDK 3.0
//-----------------------------------------------------------------------------
// LICENSE
// © 2008, Steinberg Media Technologies GmbH, All Rights Reserved
//-----------------------------------------------------------------------------
// This Software Development Kit may not be distributed in parts or its entirety  
// without prior written agreement by Steinberg Media Technologies GmbH. 
// This SDK must not be used to re-engineer or manipulate any technology used  
// in any Steinberg or Third-party application or software module, 
// unless permitted by law.
// Neither the name of the Steinberg Media Technologies nor the names of its
// contributors may be used to endorse or promote products derived from this 
// software without specific prior written permission.
// 
// THIS SDK IS PROVIDED BY STEINBERG MEDIA TECHNOLOGIES GMBH "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
// IN NO EVENT SHALL STEINBERG MEDIA TECHNOLOGIES GMBH BE LIABLE FOR ANY DIRECT, 
// INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, 
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
// LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE 
// OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
// OF THE POSSIBILITY OF SUCH DAMAGE.
//-----------------------------------------------------------------------------

//------------------------------------------------------------------------
#define INIT_CLASS_IID
// This macro definition modifies the behavior of DECLARE_CLASS_IID (funknown.h)
// and produces the actual symbols for all interface identifiers.
// It must be defined before including the interface headers and
// in only one source file!
//------------------------------------------------------------------------

#include "BLueSaturation.h"
#include "BLueSaturationParamids.h"
#include "BLueSaturationEditor.h" // here in order to produce all interface identifiers required by editor

#include "pluginterfaces/base/ibstream.h"
#include "pluginterfaces/vst/ivstparameterchanges.h"
#include "pluginterfaces/vst/ivstevents.h"

#include <stdio.h>

#define AGAIN_TEST 1 // this allows to enable the communication example between again and its controller

//------------------------------------------------------------------------
// BlueSaturation Implementation
//------------------------------------------------------------------------
BlueSaturation::BlueSaturation ()
: fGain (1.f)
, fGainReduction (0.f)
, fVuPPMOld (0.f)
, currentProcessMode (-1) // -1 means not initialized
, bHalfGain (false)
, bBypass (false)
{
	// register its editor class (the same than used in againentry.cpp)
	setControllerClass (FUID (gControllerUID));
}

//------------------------------------------------------------------------
tresult PLUGIN_API BlueSaturation::initialize (FUnknown* context)
{
	//---always initialize the parent-------
	tresult result = AudioEffect::initialize (context);
	// if everything Ok, continue
	if (result != kResultOk)
		return result;

	//---create Audio In/Out busses------
	// we want a stereo Input and a Stereo Output
	addAudioInput  (USTRING ("Stereo In"),  SpeakerArr::kStereo);
	addAudioOutput (USTRING ("Stereo Out"), SpeakerArr::kStereo);

	//---create Midi In/Out busses (1 bus with only 1 channel)------
	addEventInput (USTRING ("Midi In"), 1);

	return kResultOk;
}

//------------------------------------------------------------------------
tresult PLUGIN_API BlueSaturation::terminate  ()
{
	// nothing to do here yet...except calling our parent terminate
	return AudioEffect::terminate ();
}

//------------------------------------------------------------------------
tresult PLUGIN_API BlueSaturation::setActive (TBool state)
{
#if AGAIN_TEST
	if (state)
		sendTextMessage ("BlueSaturation::setActive (true)");
	else
		sendTextMessage ("BlueSaturation::setActive (false)");
#endif
	
	// reset the VuMeter value
	fVuPPMOld = 0.f;

	// call our parent setActive
	return AudioEffect::setActive (state);
}

//------------------------------------------------------------------------
tresult PLUGIN_API BlueSaturation::process (ProcessData& data)
{
	// finally the process function
	// In this example there are 4 steps:
	// 1) Read inputs parameters coming from host (in order to adapt our model values)
	// 2) Read inputs events coming from host (we apply a gain reduction depending of the velocity of pressed key)
	// 3) Process the gain of the input buffer to the output buffer
	// 4) Write the new VUmeter value to the output Parameters queue


	//---1) Read inputs parameter changes-----------
	IParameterChanges* paramChanges = data.inputParameterChanges;
	if (paramChanges)
	{
		int32 numParamsChanged = paramChanges->getParameterCount ();
		// for each parameter which are some changes in this audio block:
		for (int32 i = 0; i < numParamsChanged; i++)
		{
			IParamValueQueue* paramQueue = paramChanges->getParameterData (i);
			if (paramQueue)
			{
				int32 offsetSamples;
				double value;
				int32 numPoints = paramQueue->getPointCount ();				
				switch (paramQueue->getParameterId ())
				{
					case kGainId:
						// we use in this example only the last point of the queue.
						// in some wanted case for specific kind of parameter it makes sense to retrieve all points
						// and process the whole audio block in small blocks.
						if (paramQueue->getPoint (numPoints - 1,  offsetSamples, value) == kResultTrue)
							fGain = (float)value;
						break;

					case kBypassId:
						if (paramQueue->getPoint (numPoints - 1,  offsetSamples, value) == kResultTrue)
							bBypass = (value > 0.5f);
						break;
				}
			}
		}
	}
	
	//---2) Read input events-------------
	IEventList* eventList = data.inputEvents;
	if (eventList) 
	{
		int32 numEvent = eventList->getEventCount ();
		for (int32 i = 0; i < numEvent; i++)
		{
			Event event;
			if (eventList->getEvent (i, event) == kResultOk)
			{
				switch (event.type)
				{
					//----------------------
					case Event::kNoteOnEvent:
						// use the velocity as gain modifier
						fGainReduction = event.noteOn.velocity;
						break;
					
					//----------------------
					case Event::kNoteOffEvent:
						// noteOff reset the reduction
						fGainReduction = 0.f;
						break;
				}
			}
		}
	}
		
	//-------------------------------------
	//---3) Process Audio---------------------
	//-------------------------------------
	if (data.numInputs == 0 || data.numOutputs == 0)
	{
		// nothing to do
		return kResultOk;
	}

	//---check if silence---------------
	// normally we have to check each channel (simplification)
	if (data.inputs[0].silenceFlags)
	{
		// mark output silence too
		data.outputs[0].silenceFlags = data.inputs[0].silenceFlags;
		
		// nothing to do
		return kResultOk;
	}

	// (simplification) we suppose in this example that we have the same input channel count than the output
	int32 numChannels = data.inputs[0].numChannels;

	//---get audio buffers----------------
	float** in  = data.inputs[0].channelBuffers32;
	float** out = data.outputs[0].channelBuffers32;
	
	//---in bypass mode outputs should be like inputs-----
	if (bBypass)
	{
		int32 sampleFrames = data.numSamples;
		for (int32 i = 0; i < numChannels; i++)
		{
			// dont need to be copied if the buffers are the same
			if (in[i] != out[i])
				memcpy (out[i], in[i], sampleFrames * sizeof (float));
		}
		// in this example we dont update the VuMeter in Bypass
	}
	else
	{
		float fVuPPM = 0.f;

		//---apply gain factor----------
		float gain = (fGain - fGainReduction);
		if (gain < 0)
		{
			// output is silent
			for (int32 i = 0; i < numChannels; i++)
			{
				int32 sampleFrames = data.numSamples;
				float* ptr = out[i];
				while (--sampleFrames >= 0)
				{
					(*ptr++) = 0.f;
				}
			}
		}
		else
		{
			if (bHalfGain)
				gain = gain * 0.5f;

			// in real plugin it would be better to do dezippering to avoid jump (click) in gain value
			for (int32 i = 0; i < numChannels; i++)
			{
				int32 sampleFrames = data.numSamples;
				float* ptrIn  = in[i];
				float* ptrOut = out[i];
				float tmp;
				while (--sampleFrames >= 0)
				{
					// apply gain
					tmp = (*ptrIn++) * gain;
					(*ptrOut++) = tmp;

					// check only positiv values
					if (tmp > fVuPPM)
						fVuPPM = tmp;
				}
			}
		}

		//---3) Write outputs parameter changes-----------
		IParameterChanges* paramChanges = data.outputParameterChanges;
		// a new value of VuMeter will be send to the host 
		// (the host will send it back in sync to our controller for updating our editor)
		if (paramChanges && fVuPPMOld != fVuPPM)
		{
			int32 index = 0;
			IParamValueQueue* paramQueue = paramChanges->addParameterData (kVuPPMId, index);
			if (paramQueue)
			{
				int32 index2 = 0;
				paramQueue->addPoint (0, fVuPPM, index2); 
			}
		}
		fVuPPMOld = fVuPPM;
	}

	return kResultOk;
}

//------------------------------------------------------------------------
tresult BlueSaturation::receiveText (const char* text)
{
	// received from Controller
	fprintf (stderr, "[BlueSaturation] received: ");
	fprintf (stderr, text);
	fprintf (stderr, "\n");
	
	bHalfGain = !bHalfGain;

	return kResultOk;
}

//------------------------------------------------------------------------
tresult PLUGIN_API BlueSaturation::setState (IBStream* state)
{
	// called when we load a preset, the model has to be reloaded

	float savedGain = 0.f;
	if (state->read (&savedGain, 4) != kResultOk)
		return kResultFalse;

	float savedGainReduction = 0.f;
	if (state->read (&savedGainReduction, 4) != kResultOk)
		return kResultFalse;

#if BYTEORDER == kBigEndian
	SWAP_32 (savedGain)
	SWAP_32 (savedGainReduction)
#endif
	
	fGain = savedGain;
	fGainReduction = savedGainReduction;

	return kResultOk;
}

//------------------------------------------------------------------------
tresult PLUGIN_API BlueSaturation::getState (IBStream* state)
{
	// here we need to save the model

	float savedGain = fGain;
	float savedGainReduction = fGainReduction;

#if BYTEORDER == kBigEndian
	SWAP_32 (savedGain)
	SWAP_32 (savedGainReduction)
#endif

	state->write (&savedGain, 4);
	return state->write (&savedGainReduction, 4);
}

//------------------------------------------------------------------------
tresult PLUGIN_API BlueSaturation::setupProcessing (ProcessSetup& newSetup)
{
	// called before the process call, always in a disable state (not active)
	
	// here we keep a trace of the processing mode (offline,...) for example.
	currentProcessMode = newSetup.processMode;
	
	return AudioEffect::setupProcessing (newSetup);
}

//------------------------------------------------------------------------
tresult PLUGIN_API BlueSaturation::setBusArrangements (SpeakerArrangement* inputs, int32 numIns, SpeakerArrangement* outputs, int32 numOuts)
{
	if (numIns == 1 && numOuts == 1)
	{
		if (inputs[0] == SpeakerArr::kMono && outputs[0] == SpeakerArr::kMono)
		{
			AudioBus* bus = (AudioBus*)(audioInputs.at (0));
			if (bus)
			{
				if (bus->getArrangement () != SpeakerArr::kMono)
				{
					removeAudioBusses ();
					addAudioInput  (USTRING ("Mono In"),  SpeakerArr::kMono);
					addAudioOutput (USTRING ("Mono Out"), SpeakerArr::kMono);
				}
				return kResultOk;
			}
		}
		else
		{
			AudioBus* bus = (AudioBus*)(audioInputs.at (0));
			if (bus)
			{
				if (bus->getArrangement () != SpeakerArr::kStereo)
				{
					removeAudioBusses ();
					addAudioInput  (USTRING ("Stereo In"),  SpeakerArr::kStereo);
					addAudioOutput (USTRING ("Stereo Out"), SpeakerArr::kStereo);
				}
				return kResultOk;
			}
		}
	}
	return kResultFalse;

}