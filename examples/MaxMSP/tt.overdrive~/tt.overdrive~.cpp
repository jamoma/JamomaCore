/* 
 *	tt.overdrive~
 *	External object for Max/MSP
 *	
 *	Example project for TTBlue
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTClassWrapperMax.h"
#include "TTOverdrive.h"
#define thisTTClass TTOverdriveExtended

// For the tt.overdrive~ object, we wish to use the class wrapper to make the process of turning the object into a Max class easy.
// However, we also need to maintain backward compatibility, which means that we need to support some older names for attributes in Max.
// We do this by subclassing TTOverdrive and adding some new attribute/message bindings to the existing parent class.
// Then the class wrapper will use this subclass to create the Max object.

class TTOverdriveExtended : public TTOverdrive {
public:
	
	// Constructor
	TTOverdriveExtended(TTUInt16 newMaxNumChannels)
	: TTOverdrive(newMaxNumChannels)
	{
		registerAttribute(TT("overdrive"), kTypeFloat64, &drive, (TTSetterMethod)&TTOverdrive::setdrive);
		registerAttribute(TT("/saturation"), kTypeFloat64, &drive, (TTSetterMethod)&TTOverdrive::setdrive);
		registerAttribute(TT("/depth"), kTypeFloat64, &drive, (TTSetterMethod)&TTOverdrive::setdrive);

		registerAttribute(TT("bypass_dcblocker"), kTypeBoolean, &dcBlocker, (TTSetterMethod)&TTOverdrive::setdcBlocker);
		registerAttribute(TT("/dcblocker/bypass"), kTypeBoolean, &dcBlocker, (TTSetterMethod)&TTOverdrive::setdcBlocker);
		
		registerAttribute(TT("/preamp"), kTypeFloat64, &preamp, (TTGetterMethod)&TTOverdrive::getpreamp, (TTSetterMethod)&TTOverdrive::setpreamp);
		
		registerAttribute(TT("/mode"), kTypeUInt8, &mode, (TTSetterMethod)&TTOverdrive::setmode);
		
		registerAttribute(TT("/audio/mute"), kTypeBoolean, &attrMute, (TTSetterMethod)&TTAudioObject::setMute);
		
		registerMessageSimple(anything);
	}
	
	// Destructor
	virtual ~TTOverdriveExtended()
	{
		;
	}
	
	TTErr anything()
	{
		return kTTErrNone;
	}
};


// Because we have created this overdriveExtended class outside of the main TTBlue framework, 
// we have to define our own factory method that is used to create a new instance of our object.

TTObject* instantiateOverdriveExtended(TTSymbolPtr className, TTValue& arguments)
{
	return new TTOverdriveExtended(arguments);
}


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	// First, we have to register our custom subclass with the TTBlue framework.
	TTBlueInit();
	TTClassRegister(TT("overdriveExtended"), "audio, processor, effect, MSP", &instantiateOverdriveExtended);
	
	// Then we are able to wrap it as a Max class.
	return wrapTTClassAsMaxClass(TT("overdriveExtended"), "tt.overdrive~", NULL);
}

