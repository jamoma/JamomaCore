/*
  main.cpp --  A very simple Max external object.  
  Controls the Phidget TextLCD from Windows
*/

#include "../../phidget20.h"
#include "ext.h"   // Required for all Max external objects 
 
void *this_class;  // Required. Global pointing to this class  
 
typedef struct _TextLCD // Data structure for this object  
{ 
	t_object b_ob;   // Must always be the first field; used by Max  
	CPhidgetTextLCDHandle phid;
	long serial;
	void *b_outlet;
} t_TextLCD; 
 
// Prototypes for methods: need a method for each incoming message 
void *TextLCD_new(long serial);    // object creation method  
void TextLCD_setString(t_TextLCD *TextLCD, long row, t_symbol *sym);
void TextLCD_version(t_TextLCD *TextLCD);
void TextLCD_serial(t_TextLCD *TextLCD);
void TextLCD_status(t_TextLCD *TextLCD);
void TextLCD_reconnect(t_TextLCD *TextLCD);
void *TextLCD_free(t_TextLCD *TextLCD);
void TextLCD_setCursorBlink(t_TextLCD *TextLCD, long val);
void TextLCD_setCursorOn(t_TextLCD *TextLCD, long val);
void TextLCD_setBacklight(t_TextLCD *TextLCD, long val);
 
__declspec(dllexport) void main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)TextLCD_new, (method)TextLCD_free, (short)sizeof(t_TextLCD), 0L, A_DEFLONG, 0); 
	addmess((method)TextLCD_setString, "setString", A_LONG, A_SYM, 0);
	addmess((method)TextLCD_setCursorOn, "setCursorOn", A_LONG, 0);
	addmess((method)TextLCD_setCursorBlink, "setCursorBlink", A_LONG, 0);
	addmess((method)TextLCD_setBacklight, "setBacklight", A_LONG, 0);
	addmess((method)TextLCD_version, "getVersion", 0);
	addmess((method)TextLCD_serial, "getSerial", 0);
	addmess((method)TextLCD_status, "getStatus", 0);
	addmess((method)TextLCD_reconnect, "reconnect", 0);
} 

void *TextLCD_new(long serial) 
{ 
	t_TextLCD *TextLCD; 
	if(!serial)
		serial=-1;
	// create the new instance and return a pointer to it 
	TextLCD = (t_TextLCD *)newobject(this_class);
	CPhidgetTextLCD_create(&(TextLCD->phid));
	CPhidget_open((TextLCD->phid), serial);
	TextLCD->serial = serial;
	TextLCD->b_outlet = outlet_new(TextLCD,0L);
	return(TextLCD);      // must return a pointer to the new instance  
} 

void *TextLCD_free(t_TextLCD *TextLCD) {
	long stat;
	CPhidget_getDeviceStatus((TextLCD->phid), &stat);
	if(stat) {
		CPhidget_close((TextLCD->phid));
	}
	CPhidget_delete(TextLCD->phid);
	return(NULL);
}

void TextLCD_setString(t_TextLCD *TextLCD, long row, t_symbol *sym)
{  
	char *string = sym->s_name;
	CPhidgetTextLCD_setDisplayString((TextLCD->phid), row, string);
} 

void TextLCD_setCursorBlink(t_TextLCD *TextLCD, long val)
{
	CPhidgetTextLCD_setCursorBlink((TextLCD->phid), val);
} 

void TextLCD_setCursorOn(t_TextLCD *TextLCD, long val)
{
	CPhidgetTextLCD_setCursorOn((TextLCD->phid), val);
} 

void TextLCD_setBacklight(t_TextLCD *TextLCD, long val)
{
	CPhidgetTextLCD_setBacklight((TextLCD->phid), val);
} 

void TextLCD_version(t_TextLCD *TextLCD) 
{  
	long ver;
	CPhidget_getDeviceVersion((TextLCD->phid), &ver);
	outlet_int(TextLCD->b_outlet, ver);
} 

void TextLCD_serial(t_TextLCD *TextLCD) 
{  
	long ser;
	CPhidget_getSerialNumber((TextLCD->phid), &ser);
	outlet_int(TextLCD->b_outlet, ser);
} 

void TextLCD_status(t_TextLCD *TextLCD) 
{  
	long stat;
	CPhidget_getDeviceStatus((TextLCD->phid), &stat);
	outlet_int(TextLCD->b_outlet, stat);
}

void TextLCD_reconnect(t_TextLCD *TextLCD) 
{
	TextLCD_free(TextLCD);
	CPhidgetTextLCD_create(&(TextLCD->phid));
	CPhidget_open((TextLCD->phid), (TextLCD->serial));
} 
