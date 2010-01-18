/* 
 *	fxlib≈
 *	Jamoma Multicore extension object for Max
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 *
 *  
 *  This is a Max extension, meaning that it should be placed in Max's C74:/extensions folder.
 *  By doing so, it will add all of the classes defined in this library so that they can be used in Max.
 */

#include "maxMulticore.h"


static ObjectPtr	sMaxObject					= gensym("max")->s_thing;
static SymbolPtr	ss_objectfile				= gensym("objectfile");
static SymbolPtr	ss_oblist					= gensym("oblist");
static SymbolPtr	ss_db_object_addinternal	= gensym("db.object_addinternal");
static SymbolPtr	ss_fxlib					= gensym("fxlib");


void fxlibObjectDefine(const char* name)
{
	char		multicoreObjectName[256];
	SymbolPtr	s;
	Atom		a;
	
	strncpy_zero(multicoreObjectName, name, 256);
	strncat_zero(multicoreObjectName, "≈", 256);
	s = gensym(multicoreObjectName);
	
	wrapAsMaxMulticore(TT(name), multicoreObjectName, NULL);								// create and register the class
	
	atom_setsym(&a, s);
	object_method_typed(sMaxObject,	ss_db_object_addinternal,	1, &a, NULL);				// add to database for autocompletion
	object_method(sMaxObject,		ss_oblist,					gensym("Multicore"), s);	// add to new object list
	object_method(sMaxObject,		ss_objectfile,				s, ss_fxlib, s);			// map the helpfile so it can be opened with opt-click
}


int main(void)
{
	TTMulticoreInit();
	
	// classes that we wish to wrap for use in Max
	
	fxlibObjectDefine("degrade");
	fxlibObjectDefine("delay");
	fxlibObjectDefine("limiter");
	fxlibObjectDefine("overdrive");
	fxlibObjectDefine("pulsesub");
	
	return 0;
}
