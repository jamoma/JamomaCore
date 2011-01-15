/* 
 * Jamoma DataspaceLib: ColorDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __COLORDATASPACE_H__
#define __COLORDATASPACE_H__

#include "MaxDataspaceLib.h"

/****************************************************************************************************/
// Class Specifications

class CMYUnit : MaxDataspaceUnit{
	public:
		CMYUnit();
		~CMYUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class HSLUnit : MaxDataspaceUnit{
	public:
		HSLUnit();
		~HSLUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class HSVUnit : MaxDataspaceUnit{
	public:
		HSVUnit();
		~HSVUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class RGBUnit : MaxDataspaceUnit{
	public:
		RGBUnit();
		~RGBUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class RGB8Unit : MaxDataspaceUnit{
	public:
		RGB8Unit();
		~RGB8Unit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

// Specification of our base class
class ColorDataspace : MaxDataspaceLib{
	public:
		ColorDataspace();
		~ColorDataspace();
};


#endif // __COLORDATASPACE_H__
