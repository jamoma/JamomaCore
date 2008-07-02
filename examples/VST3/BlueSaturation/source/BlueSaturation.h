//------------------------------------------------------------------------
// Project     : VST SDK
// Version     : 3.0
//
// Category    : Examples
// Filename    : again.h
// Created by  : Steinberg, 04/2005
// Modified    : $Date: 2008/01/09 12:51:05 $
// Description : BlueSaturation Example for VST SDK 3.0
//               Simple gain plugin with gain, bypass values and 1 midi input
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

#ifndef __bluesaturation__
#define __bluesaturation__

#include "public.sdk/source/vst/vstaudioeffect.h"

using namespace Steinberg::Vst;

//------------------------------------------------------------------------
// define the UIDs for the component and the controller.
// Note: be sure that you generate unique ID, you can use Create GUID from Visual Studio
#define gComponentUID1 0x94e8de5f
#define gComponentUID2 0xa2554f53
#define gComponentUID3 0xa6fae413
#define gComponentUID4 0x4c935a18
#define gComponentUID  gComponentUID1, gComponentUID2, gComponentUID3, gComponentUID4

#define gControllerUID1 0xE39D5B65
#define gControllerUID2 0xE7AF42FA
#define gControllerUID3 0x943F4AC8
#define gControllerUID4 0x51EB04F0
#define gControllerUID gControllerUID1, gControllerUID2, gControllerUID3, gControllerUID4

//------------------------------------------------------------------------
// BlueSaturation: directly derived from the helper class AudioEffect
//------------------------------------------------------------------------
class BlueSaturation: public AudioEffect
{
public:
	BlueSaturation ();
//------------------------------------------------------------------------
// create function required for plugin factory,
// it will be called to create new instances of this plugin
//------------------------------------------------------------------------
	static FUnknown* createInstance (void* context)
	{
		return (IAudioProcessor*)new BlueSaturation;
	}

//------------------------------------------------------------------------
// AudioEffect overrides:
//------------------------------------------------------------------------
	/** called at first after contructor */
	tresult PLUGIN_API initialize (FUnknown* context);
	
	/** called at the end before destructor */
	tresult PLUGIN_API terminate  ();
	
	/** On/Off of the plugin */
	tresult PLUGIN_API setActive (TBool state);

	/** here we go...the process call */
	tresult PLUGIN_API process (ProcessData& data);

	/** test of a communication way between controller and component */
	tresult receiveText (const char* text);
	
	/** for persistence */
	tresult PLUGIN_API setState (IBStream* state);
	tresult PLUGIN_API getState (IBStream* state);

	/** will be called before any process call */
	tresult PLUGIN_API setupProcessing (ProcessSetup& newSetup);

	/** Bus arrangement managing: in this example the again will be mono for mono input/output and stereo for other arrangements. */
	tresult PLUGIN_API setBusArrangements (SpeakerArrangement* inputs, int32 numIns, SpeakerArrangement* outputs, int32 numOuts);

//------------------------------------------------------------------------
private:
	// our model values
	float fGain;
	float fGainReduction;
	float fVuPPMOld;

	int32 currentProcessMode;

	bool  bHalfGain;
	bool  bBypass;
};

#endif //__bluesaturation__
