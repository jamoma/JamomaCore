/** @file
 *
 * @ingroup scoreLibrary
 *
 * @brief an interface to easily add other time process or time container
 *
 * @see TTScore, TTTimeProcess, TTTimeEvent, TTTimeContainer
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#include "TimePluginLib.h"

TimeProcessPlugin::TimeProcessPlugin(const TTValue& arguments) :
TTTimeProcess(arguments)
{
    ;
}

TimeProcessPlugin::~TimeProcessPlugin()
{
    ;
}


TimeContainerPlugin::TimeContainerPlugin(const TTValue& arguments) :
TTTimeContainer(arguments)
{
    ;
}

TimeContainerPlugin::~TimeContainerPlugin()
{
    ;
}

/***************************************************************************
 
 TTTimePluginLib
 
 ***************************************************************************/

void TimePluginLib::getTimePluginNames(TTValue& timePluginNames)
{
	timePluginNames.clear();
	timePluginNames.append(TTSymbol("Automation"));
    timePluginNames.append(TTSymbol("Scenario"));
    timePluginNames.append(TTSymbol("Interval"));
}

