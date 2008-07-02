//------------------------------------------------------------------------
// Project     : VST SDK
// Version     : 3.0
//
// Category    : Examples
// Filename    : againcontroller.h
// Created by  : Steinberg, 04/2005
// Modified    : $Date: 2008/01/15 15:00:26 $
// Description : AGain Editor Example for VST 3.0
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

#ifndef __againcontroller__
#define __againcontroller__

#include "public.sdk/source/vst/vsteditcontroller.h"

using namespace Steinberg::Vst;

class AGainEditorView;

//------------------------------------------------------------------------
// AGainController
//------------------------------------------------------------------------
class AGainController: public EditController
{
public:
//------------------------------------------------------------------------
// create function required for plugin factory,
// it will be called to create new instances of this controller
//------------------------------------------------------------------------
	static FUnknown* createInstance (void* context)
	{
		return (IEditController*)new AGainController;
	}

	//---from IPluginBase--------
	tresult PLUGIN_API initialize (FUnknown* context);
	tresult PLUGIN_API terminate  ();

	//---from EditController-----
	tresult PLUGIN_API setComponentState (IBStream* state);
	IPlugView* PLUGIN_API createView (const char* name);
	tresult PLUGIN_API setState (IBStream* state);
	tresult PLUGIN_API getState (IBStream* state);
	tresult PLUGIN_API setParamNormalized (ParamID tag, ParamValue value);
	tresult PLUGIN_API getParamStringByValue (ParamID tag, ParamValue valueNormalized, String128 string);
	tresult PLUGIN_API getParamValueByString (ParamID tag, TChar* string, ParamValue& valueNormalized);

	//---from ComponentBase-----
	tresult receiveText (const char* text);

	//---Internal functions-------
	void addDependentView (AGainEditorView* view);
	void removeDependentView (AGainEditorView* view);

	void setDefaultMessageText (String128 text);
	TChar* getDefaultMessageText ();
//------------------------------------------------------------------------

private:
	CArray viewsArray;
	String128 defaultMessageText;
};

#endif
