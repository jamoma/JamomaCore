//------------------------------------------------------------------------
// Project     : VST SDK
// Version     : 3.0
//
// Category    : Examples
// Filename    : againeditor.cpp
// Created by  : Steinberg, 04/2005
// Modified    : $Date: 2008/01/15 11:29:30 $
// Description : AGain Editor Example for VST 3.0 using VSTGUI 3.5
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

#include "BlueSaturationEditor.h"
#include "BlueSaturationController.h"
#include "BlueSaturationParamids.h"

#include <stdio.h>
#include <math.h>

//------------------------------------------------------------------------
enum
{
	// UI size
	kEditorWidth  = 350,
	kEditorHeight = 120
};

//------------------------------------------------------------------------
// CTextButton - define a simple text button
//------------------------------------------------------------------------
class CTextButton: public CControl
{
public:
//------------------------------------------------------------------------
	CTextButton (const CRect& size, CControlListener* listener = 0, long tag = 0, const char* _title = 0)
	: CControl (size, listener, tag)
	{
		strcpy (title, _title ? _title : "");
	}

	///---from CControl--------------
	virtual	void draw (CDrawContext* pContext)
	{
		pContext->setFillColor (kGreyCColor);
		pContext->setFrameColor (kBlackCColor);
		pContext->drawRect (size, kDrawFilledAndStroked);
		pContext->setFont (kNormalFont);
		pContext->setFontColor (kBlackCColor);
		pContext->drawString (title, size);
	}

	virtual CMouseEventResult onMouseDown (CPoint& where, const long& buttons)
	{
		if (listener)
			listener->valueChanged (this);
		return kMouseEventHandled;
	}

	CLASS_METHODS (CTextButton, CControl)
//------------------------------------------------------------------------
protected:
	char title[256];
};


//------------------------------------------------------------------------
// AGainEditorView Implementation
//------------------------------------------------------------------------
AGainEditorView::AGainEditorView (void* controller)
: VSTGUIEditor (controller)
, textEdit (0)
, gainSlider (0)
, gainTextEdit (0)
, vuMeter (0)
, lastVuMeterValue (0.f)
{
	setIdleRate (50); // 1000ms/50ms = 20Hz
}

//------------------------------------------------------------------------
tresult PLUGIN_API AGainEditorView::onSize (ViewRect* newSize)
{
	tresult res = EditorView::onSize (newSize);
	return res;
}

//------------------------------------------------------------------------
bool AGainEditorView::open (void* parent)
{
	if (frame) // already attached!
		return false;

	// add dependency
	if (controller)
		((AGainController*)controller)->addDependentView (this);

	CRect editorSize (0, 0, kEditorWidth, kEditorHeight);

	frame = new CFrame (editorSize, parent, this);
	frame->setBackgroundColor (kGreyCColor);

	//---Test communication between Component and Controller------
	CRect size (0, 0, 200, 20);
	size.offset (10, 10);
	textEdit = new CTextEdit (size, this, 'Text', "Hello World!", 0, k3DOut);
	frame->addView (textEdit);

	size (0, 0, 50, 20);
	size.offset (220, 10);
	frame->addView (new CTextButton (size, this, 'Send', "Send!"));
	//-----------------------------------------------------------

	//---Gain--------------------

	//---Gain Label--------
	size (0, 0, 30, 18);
	size.offset (10, 40);
	CTextLabel* label = new CTextLabel (size, "Gain", 0, kShadowText);
	frame->addView (label);

	//---Gain slider-------
	CBitmap* handle = new CBitmap ("slider_handle.bmp");
	CBitmap* background = new CBitmap ("slider_background.bmp");

	handle->setTransparentColor (kWhiteCColor);

	size (0, 0, 130, 18);
	size.offset (45, 40);
	CPoint offset;
	CPoint offsetHandle (0, 2);
	gainSlider = new CHorizontalSlider (size, this, 'Gain', offsetHandle, size.getWidth (), handle, background, offset, kLeft); 
	frame->addView (gainSlider);
	handle->forget ();
	background->forget ();

	//---Gain Textedit--------
	size (0, 0, 40, 18);
	size.offset (50 + gainSlider->getWidth (), 40);
	gainTextEdit = new CTextEdit (size, this, 'GaiT', "", 0, k3DIn);
	gainTextEdit->setFont (kNormalFontSmall);
	frame->addView (gainTextEdit);


	//---VuMeter--------------------
	CBitmap* onBitmap = new CBitmap ("vu_on.bmp");
	CBitmap* offBitmap = new CBitmap ("vu_off.bmp");
		 
	size (0, 0, 12, 105);
	size.offset (290, 10);
	vuMeter = new CVuMeter (size, onBitmap, offBitmap, 26, kVertical);
	frame->addView (vuMeter);
	onBitmap->forget ();
	offBitmap->forget ();

	// sync UI controls with controller parameter values
	AGainController* controller = (AGainController*)getController ();
	ParamValue value = controller->getParamNormalized (kGainId);
	update (kGainId, value);

	messageTextChanged ();

	return true;
}

//------------------------------------------------------------------------
void AGainEditorView::messageTextChanged ()
{
	AGainController* controller = (AGainController*)getController ();
	UString text (controller->getDefaultMessageText (), -1);
	char asciiText[128];
	text.toAscii (asciiText, 128);
	textEdit->setText (asciiText);
}

//------------------------------------------------------------------------
void PLUGIN_API AGainEditorView::close ()
{
	// remove dependency
	if (controller)
		((AGainController*)controller)->removeDependentView (this);

	if (frame)
	{
		delete frame;
		frame = 0;
	}
	
	textEdit = 0;
	gainSlider = 0;
	gainTextEdit = 0;
	vuMeter = 0;
}

//------------------------------------------------------------------------
void AGainEditorView::valueChanged (CControl* pControl)
{
	switch (pControl->getTag ())
	{
		//------------------
		case 'Send':
		{
			char text[256] = {0};
			textEdit->getText (text);
			controller->sendTextMessage (text);

			static bool bgToggle = false;
			frame->setBackgroundColor (bgToggle ? kRedCColor : kGreyCColor);
			frame->invalid ();
			bgToggle = !bgToggle;
		}	break;

		//------------------
		case 'Gain':
		{
			controller->setParamNormalized (kGainId, pControl->getValue ());
			controller->performEdit (kGainId, pControl->getValue ());
		}	break;

		//------------------
		case 'GaiT':
		{
			char text[128];
			gainTextEdit->getText (text);
			String128 string;
			Steinberg::UString (string, 128).fromAscii (text);
			ParamValue valueNormalized;
			controller->getParamValueByString (kGainId, string, valueNormalized);
			
			gainSlider->setValue ((float)valueNormalized);
			valueChanged (gainSlider);
			gainSlider->invalid ();
		}	break;

		//------------------
		case 'Text':
		{
			String128 string;
			char text[128];
			textEdit->getText (text);
			UString (string, 128).fromAscii (text);
			AGainController* controller = (AGainController*)getController ();
			controller->setDefaultMessageText (string);
		}	break;
	}		
}

//------------------------------------------------------------------------
void AGainEditorView::controlBeginEdit (CControl* pControl)
{
	switch (pControl->getTag ())
	{
		//------------------
		case 'Gain':
		{
			controller->beginEdit (kGainId);
		}	break;
	}
}

//------------------------------------------------------------------------
void AGainEditorView::controlEndEdit (CControl* pControl)
{
	switch (pControl->getTag ())
	{
		//------------------
		case 'Gain':
		{
			controller->endEdit (kGainId);
		}	break;
	}
}

//------------------------------------------------------------------------
void AGainEditorView::update (ParamID tag, ParamValue value)
{
	switch (tag)
	{
		//------------------
		case kGainId:
			if (gainSlider)
			{
				gainSlider->setValue ((float)value);
								
				if (gainTextEdit)
				{
					String128 string;
					controller->getParamStringByValue (kGainId, value, string);
					char text[128];
					Steinberg::UString (string, 128).toAscii (text, 128);
					gainTextEdit->setText (text);
				}
			}
			break;

		//------------------
		case kVuPPMId:
			lastVuMeterValue = (float)value;
			break;
	}
}

//------------------------------------------------------------------------
CMessageResult AGainEditorView::notify (CBaseObject* sender, const char* message)
{
	if (message == CVSTGUITimer::kMsgTimer)
	{
		if (vuMeter)
		{
			vuMeter->setValue (1.f - ((lastVuMeterValue - 1.f) * (lastVuMeterValue - 1.f)));
			lastVuMeterValue = 0.f;
		}
	}
	return VSTGUIEditor::notify (sender, message);
}
