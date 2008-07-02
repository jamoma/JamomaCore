//------------------------------------------------------------------------
// Project     : VST SDK
// Version     : 3.0
//
// Category    : Examples
// Filename    : againeditor.h
// Created by  : Steinberg, 04/2005
// Modified    : $Date: 2008/01/15 15:00:26 $
// Description : AGain Editor Example using VSTGUI 3.5
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

#ifndef __againeditor__
#define __againeditor__

#include "public.sdk/source/vst/vstguieditor.h"

using namespace Steinberg::Vst;

//------------------------------------------------------------------------
// AGainEditorView Declaration
//------------------------------------------------------------------------
class AGainEditorView:	public VSTGUIEditor,
						public CControlListener
{
public:
//------------------------------------------------------------------------
	AGainEditorView (void* controller);

	//---from VSTGUIEditor---------------
	bool PLUGIN_API open (void* parent);
	void PLUGIN_API close ();
	CMessageResult notify (CBaseObject* sender, const char* message);

	//---from CControlListener---------
	void valueChanged (CControl* pControl);
	void controlBeginEdit (CControl* pControl);
	void controlEndEdit (CControl* pControl);

	//---from EditorView---------------
	tresult PLUGIN_API onSize (ViewRect* newSize);

	//---Internal Function------------------
	void update (ParamID tag, ParamValue value);
	void messageTextChanged ();

//------------------------------------------------------------------------
protected:
	CTextEdit* textEdit;
	CHorizontalSlider* gainSlider;
	CTextEdit* gainTextEdit;
	CVuMeter* vuMeter;
	float lastVuMeterValue;
};

#endif
