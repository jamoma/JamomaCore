/* 
 *	tt.overdrive~
 *	External object for Max/MSP
 *	
 *	Example project for TTBlue
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTClassWrapperMax.h"
#include "TTOverdrive.h"

#define thisTTClass TTOverdriveExtended
#define thisTTClassName	"overdriveExtended"
#define thisTTClassTags "audio, processor, effect, MSP"


// For the tt.overdrive~ object, we wish to use the class wrapper to make the process of turning the object into a Max class easy.
// However, we also need to maintain backward compatibility, which means that we need to support some older names for attributes in Max.
// We do this by subclassing TTOverdrive and adding some new attribute/message bindings to the existing parent class.
// Then the class wrapper will use this subclass to create the Max object.	

class TTOverdriveExtended : public TTOverdrive {
	friend class TTEnvironment;

public:																		
	static void registerClass();											

protected:																	
	static TTObjectPtr instantiate (TTSymbolPtr name, TTValue& arguments);	

	/** Constructor */														
	TTOverdriveExtended (TTValue& arguments);								

	/** Destructor */														
	virtual ~TTOverdriveExtended ();										
	
	
	TTErr anything()
	{
		return kTTErrNone;
	}
};


// Constructor
TTOverdriveExtended::TTOverdriveExtended(TTValue& arguments)
: TTOverdrive(arguments)
{
	registerAttribute(TT("overdrive"), kTypeFloat64, &mDrive, (TTSetterMethod)&TTOverdrive::setDrive);
	registerAttribute(TT("/saturation"), kTypeFloat64, &mDrive, (TTSetterMethod)&TTOverdrive::setDrive);
	registerAttribute(TT("/depth"), kTypeFloat64, &mDrive, (TTSetterMethod)&TTOverdrive::setDrive);
	
	registerAttribute(TT("bypass_dcblocker"), kTypeBoolean, &mDcBlocker, (TTSetterMethod)&TTOverdrive::setDcBlocker);
	registerAttribute(TT("/dcblocker/bypass"), kTypeBoolean, &mDcBlocker, (TTSetterMethod)&TTOverdrive::setDcBlocker);
	
	registerAttribute(TT("/preamp"), kTypeFloat64, &mPreamp, (TTGetterMethod)&TTOverdrive::getPreamp, (TTSetterMethod)&TTOverdrive::setPreamp);
	
	registerAttribute(TT("/mode"), kTypeUInt8, &mMode, (TTSetterMethod)&TTOverdrive::setMode);
	
	registerAttribute(TT("/audio/mute"), kTypeBoolean, &attrMute, (TTSetterMethod)&TTAudioObject::setMute);
	
	registerMessageSimple(anything);
}


// Destructor
TTOverdriveExtended::~TTOverdriveExtended()
{
	;
}


TTObjectPtr TTOverdriveExtended::instantiate (TTSymbolPtr name, TTValue& arguments) 
{
	return new thisTTClass (arguments);
}

void TTOverdriveExtended::registerClass()
{
	TTClassRegister( TT(thisTTClassName), thisTTClassTags, TTOverdriveExtended::instantiate );
}



int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	// First, we have to register our custom subclass with the TTBlue framework.
	TTDSPInit();
	TTOverdriveExtended::registerClass();
	
	// Then we are able to wrap it as a Max class.
	return wrapTTClassAsMaxClass(TT(thisTTClassName), "jcom.overdrive~", NULL);
}

