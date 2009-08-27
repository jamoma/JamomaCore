/* 
 * Jamoma DataspaceLib: AngleDataspac.h
 * Copyright © 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __ANGLEDATASPACE_H__
#define __ANGLEDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/

class RadianUnit : public DataspaceUnit {
	TTCLASS_SETUP(RadianUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class DegreeUnit : public DataspaceUnit{
	TTCLASS_SETUP(DegreeUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/****************************************************************************************************/

class AngleDataspace : public DataspaceLib{
	TTCLASS_SETUP(AngleDataspace)
};


#endif // __ANGLEDATASPACE_H__
