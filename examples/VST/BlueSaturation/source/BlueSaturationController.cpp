//------------------------------------------------------------------------
// Project     : VST SDK
// Version     : 3.0
//
// Category    : Examples
// Filename    : againcontroller.cpp
// Created by  : Steinberg, 04/2005
// Modified    : $Date: 2008/01/09 12:51:05 $
// Description : AGain Controller Example for VST 3.0
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

#include "BlueSaturationController.h"
#include "BlueSaturationParamids.h"
#include "BlueSaturationEditor.h"

#include "pluginterfaces/base/ibstream.h"

#include <stdio.h>
#include <math.h>

//------------------------------------------------------------------------
// EditorViewElement Declaration: used for view-controller dependency
//------------------------------------------------------------------------
class EditorViewElement : public CArrayElement
{
public:
	EditorViewElement (AGainEditorView* view) : view (view) { if (view) view->addRef (); }
	~EditorViewElement () { if (view) view->release (); }

	AGainEditorView* getView () { return view; }

protected:
	AGainEditorView* view;
};

//------------------------------------------------------------------------
// GainParameter Declaration
// example of custom parameter (overwriting to and fromString)
//------------------------------------------------------------------------
class GainParameter : public Parameter
{
public:
	GainParameter (int32 flags, int32 id);

	virtual void toString (ParamValue normValue, String128 string) const;
	virtual bool fromString (const TChar* string, ParamValue& normValue) const;
};

//------------------------------------------------------------------------
// GainParameter Implementation
//------------------------------------------------------------------------
GainParameter::GainParameter (int32 flags, int32 id)
{
	Steinberg::UString (info.title, USTRINGSIZE (info.title)).assign (USTRING ("Gain"));
	Steinberg::UString (info.units, USTRINGSIZE (info.units)).assign (USTRING ("dB"));
	
	info.flags = flags;
	info.id = id;
	info.stepCount = 0;
	info.defaultNormalizedValue = 0.5f;
	info.unitId = -1;
	
	setNormalized (1.f);
}

//------------------------------------------------------------------------
void GainParameter::toString (ParamValue normValue, String128 string) const
{
	char text[32];
	if (normValue > 0.0001)
		sprintf (text, "%.2f", 20 * log10f ((float)normValue));
	else
		strcpy (text, "-oo");

	Steinberg::UString (string, 128).fromAscii (text);
}

//------------------------------------------------------------------------
bool GainParameter::fromString (const TChar* string, ParamValue& normValue) const
{
	Steinberg::UString wrapper ((TChar*)string, -1); // don't know buffer size here!
	double tmp = 0.0;
	if (wrapper.scanFloat (tmp))
	{
		// allow only values between -oo and 0dB
		if (tmp > 0.0)
			tmp = -tmp;

		normValue = expf (logf (10.f) * (float)tmp / 20.f);
		return true;
	}
	return false;
}


//------------------------------------------------------------------------
// AGainController Implementation
//------------------------------------------------------------------------
tresult PLUGIN_API AGainController::initialize (FUnknown* context)
{
	tresult result = EditController::initialize (context);
	if (result != kResultOk)
		return result;

	//---Create Parameters------------
	
	//---Gain parameter--
	GainParameter* gainParam = new GainParameter (ParameterInfo::kCanAutomate, kGainId);
	parameters.addParameter (gainParam);

	//---VuMeter parameter---
	int32 stepCount = 0;
	ParamValue defaultVal = 0;
	int32 flags = ParameterInfo::kIsReadOnly;
	int32 tag = kVuPPMId;
	parameters.addParameter (USTRING ("VuPPM"), 0, stepCount, defaultVal, flags, tag);

	//---Bypass parameter---
	stepCount = 1;
	defaultVal = 0;
	flags = ParameterInfo::kCanAutomate|ParameterInfo::kIsBypass;
	tag = kBypassId;
	parameters.addParameter (USTRING ("Bypass"), 0, stepCount, defaultVal, flags, tag);

	//---Custom state init------------

	UString str (defaultMessageText, 128);
	str.fromAscii ("Hello World!");
	
	return result;
}

//------------------------------------------------------------------------
tresult PLUGIN_API AGainController::terminate  ()
{
	viewsArray.removeAll ();
	
	return EditController::terminate ();
}

//------------------------------------------------------------------------
tresult PLUGIN_API AGainController::setComponentState (IBStream* state)
{
	// we receive the current state of the component (processor part)
	if (state)
	{
		float savedGain = 0.f;
		if (state->read (&savedGain, 4) != kResultOk)
			return kResultFalse;

		setParamNormalized (kGainId, savedGain);
	}

	return kResultOk;
}

//------------------------------------------------------------------------
IPlugView* PLUGIN_API AGainController::createView (const char* name)
{
	// someone wants my editor
	if (name && strcmp (name, "editor") == 0)
		return new AGainEditorView (this);
	return 0;
}

//------------------------------------------------------------------------
tresult PLUGIN_API AGainController::setState (IBStream* state)
{
	tresult result = kResultFalse;

	int8 byteOrder;
	if ((result = state->read (&byteOrder, sizeof (int8))) != kResultTrue)
		return result;
	if ((result = state->read (defaultMessageText, 128 * sizeof (TChar))) != kResultTrue)
		return result;

	// if the byteorder doesn't match, byte swap the text array ...
	if (byteOrder != BYTEORDER)
	{
		for (int32 i = 0; i < 128; i++)
			SWAP_16 (defaultMessageText[i])
	}

	// update our editors
	for (int32 i = 0; i < viewsArray.total (); i++)
	{
		EditorViewElement* elt = (EditorViewElement*)viewsArray.at (i);
		if (elt)
			elt->getView ()->messageTextChanged ();
	}
	
	return result;
}

//------------------------------------------------------------------------
tresult PLUGIN_API AGainController::getState (IBStream* state)
{
	// here we can save UI settings for example

	// as we save a Unicode string, we must know the byteorder when setState is called
	int8 byteOrder = BYTEORDER;
	if (state->write (&byteOrder, sizeof (int8)) == kResultTrue)
		return state->write (defaultMessageText, 128 * sizeof (TChar));
	return kResultFalse;
}

//------------------------------------------------------------------------
tresult AGainController::receiveText (const char* text)
{
	// received from Component
	if (text)
	{
		fprintf (stderr, "[AGainController] received: ");
		fprintf (stderr, text);
		fprintf (stderr, "\n");
	}
	return kResultOk;
}

//------------------------------------------------------------------------
tresult PLUGIN_API AGainController::setParamNormalized (ParamID tag, ParamValue value)
{
	// called from host to update our parameters state
	tresult result = EditController::setParamNormalized (tag, value);
	
	for (int32 i = 0; i < viewsArray.total (); i++)
	{
		EditorViewElement* elt = (EditorViewElement*)viewsArray.at (i);
		if (elt && elt->getView ())
		{
			elt->getView ()->update (tag, value);
		}
	}

	return result;
}

//------------------------------------------------------------------------
tresult PLUGIN_API AGainController::getParamStringByValue (ParamID tag, ParamValue valueNormalized, String128 string)
{
	/* example
	switch (tag)
	{
		case kGainId:
		{
			char text[32];
			if (valueNormalized > 0.0001)
			{
				sprintf (text, "%.2f", 20 * log10f ((float)valueNormalized));
			}
			else
				strcpy (text, "-oo");

			Steinberg::UString (string, 128).fromAscii (text);

			return kResultTrue;
		}
	}*/
	return EditController::getParamStringByValue (tag, valueNormalized, string);
}

//------------------------------------------------------------------------
tresult PLUGIN_API AGainController::getParamValueByString (ParamID tag, TChar* string, ParamValue& valueNormalized)
{
	/* example
	switch (tag)
	{
		case kGainId:
		{
			Steinberg::UString wrapper ((TChar*)string, -1); // don't know buffer size here!
			double tmp = 0.0;
			if (wrapper.scanFloat (tmp))
			{
				valueNormalized = expf (logf (10.f) * (float)tmp / 20.f);
				return kResultTrue;
			}
			return kResultFalse;
		}
	}*/
	return EditController::getParamValueByString (tag, string, valueNormalized);
}

//------------------------------------------------------------------------
void AGainController::addDependentView (AGainEditorView* view)
{
	EditorViewElement* elt = new EditorViewElement (view);
	viewsArray.add (elt);
}

//------------------------------------------------------------------------
void AGainController::removeDependentView (AGainEditorView* view)
{
	for (int32 i = 0; i < viewsArray.total (); i++)
	{
		EditorViewElement* elt = (EditorViewElement*)viewsArray.at (i);
		if (elt)
		{
			if (elt->getView () == view)
			{
				viewsArray.removeAt (i);
				break;
			}
		}
	}
}

//------------------------------------------------------------------------
void AGainController::setDefaultMessageText (String128 text)
{
	UString str (defaultMessageText, 128);
	str.assign (text, -1);
}

//------------------------------------------------------------------------
TChar* AGainController::getDefaultMessageText ()
{
	return defaultMessageText;
}
