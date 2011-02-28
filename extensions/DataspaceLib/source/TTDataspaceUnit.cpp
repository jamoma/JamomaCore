/*
 * Jamoma Dataspace Library
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDataspaceUnit.h"


TTDataspaceUnit::TTDataspaceUnit(TTValue& arguments)
{
	arguments.get(0, &name);
}
