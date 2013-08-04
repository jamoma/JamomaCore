/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Specification for #TTDataspaceUnit, the base class of each dataspace unit.
 *
 * @details A DataspaceUnit converts back and forth between a specific unit and a neutral unit, and is used by DataspaceLib to do a conversion.
 *
 * @authors Tim Place, Trond Lossius, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDataspaceUnit.h"


TTDataspaceUnit::TTDataspaceUnit(TTValue& arguments)
{
	arguments.get(0, name);
}
