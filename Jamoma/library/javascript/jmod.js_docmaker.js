/*

	Javascript for Jamoma
	
	Autogenerate htnl documentation based on inherent documentation
	in jmod.parameter.mxt etc.
	
	By Trond Lossius, ©2005
	License: GNU LGPG

*/

autowatch = 1;

var this_module_name;
var this_module_type;
var this_module_size;
var this_module_inlets;
var this_module_outlets;
var this_module_description;

var instruction_kind;			// what kind of instruction are we currelntly looking for?
var instruction_filter;			// is this the right kind of instruction (1/0)


/*******************************************************************
*	SETUP
*******************************************************************/
 



// Inlets and outlets
inlets = 1;
outlets = 3;


/*******************************************************************
*
*	function bang()
*
*	Generates html documentation by doing a number of queries
*	through "coll #0__registered_parameters 1" to the various
*	jmod.parameter and jmod message objects of the module,
*	processing what's returned, and dumping to a text object
*	
*******************************************************************/
function bang()
{
	// clear text object
	
	outlet(1, "clear");


	// html header
	
	outlet(1, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
	outlet(1, "cr");
	
	outlet(1, "cr");
	
	outlet(1, "<html>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "<head>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<meta http-equiv=\"content-type\" content=\"text/html;charset=ISO-8859-1\">");
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "tab");	
	outlet(1, "<title>", this_module_name, "</title>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "tab");	
	outlet(1, "<link href=\"../styles/jamoma.css\" rel=\"stylesheet\" type=\"text/css\">");
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "</head>");
	outlet(1, "cr");
	
	outlet(1, "cr");


	// html body

	outlet(1, "<body>");
	outlet(1, "cr");
	outlet(1, "<div id=\"jmod_header\">");
	outlet(1, "cr");
	


	// Top of page displaying name of module etc.
	
	outlet(1, "tab");
	outlet(1, "<img src=\"../images/jmod.icon.mod.png\" width=\"128\" height=\"128\">");
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "<h1>" + this_module_name + "</h1>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "<h2>" + this_module_description + "</h2>")
	outlet(1, "cr");
	
	outlet(1, "cr");


	
	// Menu

	outlet(1, "tab");
	outlet(1, "<h6><a href=\"../index.html\">Table of Contents</a> |");
	outlet(1, "<a href=\"../modules/\">Index of Modules</a> |");
	outlet(1, "<a href=\"http://jamoma.org/\">Jamoma.org</a></h6>");
	outlet(1, "cr");
	
	outlet(1, "cr");
	
	outlet(1, "tab");	
	outlet(1, "</div>");






	outlet(1, "tab");
	outlet(1, "<h3>" + "Configuration" + "</h3>");
	outlet(1, "cr");



	// Type
	
	outlet(1, "tab");
	outlet(1, "<p>", "Module Type:", "<code>");	
	outlet(1, this_module_type);
	outlet(1, "</code>", "<br>");
	outlet(1, "cr");

	// Size
	
	outlet(1, "tab");
	outlet(1, "Interface Size:", "<code>");	
	outlet(1, this_module_size);
	outlet(1, "</code>", "</p>");
	outlet(1, "cr");

	outlet(1, "cr");
	


	// Info on inlets and outlets
	
	outlet(1, "tab");
	outlet(1, "<p>", "Number of signal inlets:", "<code>");	
	outlet(1, this_module_inlets);
	outlet(1, "</code>", "<br>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "Number of signal outlets:", "<code>");	
	outlet(1, this_module_outlets);
	outlet(1, "</code>", "</p>");
	outlet(1, "cr");

	outlet(1, "cr");	
	
	/*********************
	
				// This section is commented out.
				// If we find a way of providing more detailed info about the various inputs and outputs
				// it could be used, but for the time being we're going for a easier and simpler solution
				// (see above)
				
				// Heading 1
				
				outlet(1, "tab");
				outlet(1, "<table>");
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<tr>");
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<td class=\"tableHeading1\">");
				outlet(1, "Connections");
				outlet(1, "</td>");	
				outlet(1, "cr");	

				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "</tr>");
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "</table>");
				outlet(1, "cr");

				outlet(1, "cr");
				
				// Heading 2
				
				outlet(1, "tab");
				outlet(1, "<table>");
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<tr class=\"tableHeading2\">");
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<td width=\"15%\">");
				outlet(1, "I/O");
				outlet(1, "</td>");	
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<td width=\"15%\">");
				outlet(1, "Type");
				outlet(1, "</td>");	
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<td>");
				outlet(1, "Additional Info");
				outlet(1, "</td>");	
				outlet(1, "cr");

				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "</tr>");
				outlet(1, "cr");

				// Content
				// Have to be made dynamic: Check for inlets and outlets. Types. Etc.
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<tr>");
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<td class=\"instructionName\">");
				outlet(1, "output(1)");
				outlet(1, "</td>");	
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<td class=\"instructionDescription\">");
				outlet(1, "audio");
				outlet(1, "</td>");	
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "<td class=\"instructionDescription\">");
				outlet(1, "n/a");
				outlet(1, "</td>");	
				outlet(1, "cr");

				outlet(1, "tab");
				outlet(1, "tab");
				outlet(1, "</tr>");
				outlet(1, "cr");
				
				outlet(1, "tab");
				outlet(1, "</table>");
				outlet(1, "cr");

				outlet(1, "cr");

				// End of inlets/outlets table
				
	
	//End of commented section
	****************************************************/
	

/*	
	outlet(1, "tab");
	outlet(1, "<p> &nbsp; </p>");
	outlet(1, "cr");

	outlet(1, "cr");	
*/



	// Sort instructions in ascending alphabetic order
	
	outlet(0, "sort", -1, -1);


	
	///////////////////////////////////////////////////
	//
	// Parameters
	//
	///////////////////////////////////////////////////

	// Heading 1
	
	outlet(1, "tab");
	outlet(1, "<h3>" + "Parameters" + "</h3>");
	outlet(1, "cr");
	
	outlet(1, "cr");

	table_heading();
	
	// Only interested in parameters this time
	instruction_kind = "parameter";
	
	// Request all information by dumping the coll
	// Information is returned as messages according to the functions below
	// Content is added and formatted by the various functions
	
	outlet(0, "dump");
	
	// End of table
	
	outlet(1, "tab");
	outlet(1, "</table>");
	outlet(1, "cr");

	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "<p>&nbsp;</p>");
	outlet(1, "cr");

	outlet(1, "cr");
	
	

	///////////////////////////////////////////////////
	//
	// Messages
	//
	///////////////////////////////////////////////////

	// Heading 1
	
	outlet(1, "tab");
	outlet(1, "<h3>" + "Messages" + "</h3>");
	outlet(1, "cr");
	
	outlet(1, "cr");

	table_heading();
	
	// Only interested in messages this time
	instruction_kind = "message";
	
	// Request all information by dumping the coll
	// Information is returned as messages according to the functions below
	// Content is added and formatted by the various functions	
	outlet(0, "dump");
	
	// End of table
	
	outlet(1, "tab");
	outlet(1, "</table>");
	outlet(1, "cr");

	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "<p>&nbsp;</p>");
	outlet(1, "cr");

	outlet(1, "cr");



	///////////////////////////////////////////////////
	//
	// Returned messages
	//
	///////////////////////////////////////////////////

	// Heading 1
	
	outlet(1, "tab");
	outlet(1, "<h3>" + "Return" + "</h3>");
	outlet(1, "cr");
	
	outlet(1, "cr");

	table_heading();
	
	// Only interested in returned messages this time
	instruction_kind = "return";
	
	// Request all information by dumping the coll
	// Information is returned as messages according to the functions below
	// Content is added and formatted by the various functions	
	outlet(0, "dump");
	
	// End of table
	
	outlet(1, "tab");
	outlet(1, "</table>");
	outlet(1, "cr");

	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "<p>&nbsp;</p>");
	outlet(1, "cr");

	outlet(1, "cr");	
	
	
	// Some final info on Jamoma

	outlet(1, "tab");
	outlet(1, "<h3>" + "About Jamoma" + "</h3>");
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "<p>Jamoma is a system for creating and exchanging structured Max patches.");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "It consists of both a set of guidelines and an implementation of those guidelines.");
	outlet(1, "cr");	
	
	outlet(1, "tab");
	outlet(1, "For more information please visit <a href=\"http://jamoma.org/\">jamoma.org</a>. </p>");
	outlet(1, "cr");
	
	outlet(1, "cr");	

	
	
	// End of page

	outlet(1, "</body>");
	outlet(1, "cr");
	
	outlet(1, "</html>");
	outlet(1, "cr");
	
	// Save file
	
	// Would be handy if it autosaved in the right position with correct name,
	// but for the time being we'll have to live with this solution
	
	outlet(1, "write");
}



/*******************************************************************
*
*	function table_heading()
*
*	Generates table heading for parameters and messages
*	
*******************************************************************/
function table_heading()
{
	// Heading starts here
	outlet(1, "tab");
	outlet(1, "<table>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<tr class=\"tableHeading2\">");
	outlet(1, "cr");
	
	
	// Name
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Name");
	outlet(1, "</td>");	
	outlet(1, "cr");

	// Type
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Type");
	outlet(1, "</td>");	
	outlet(1, "cr");

	// Range
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Range");
	outlet(1, "</td>");	
	outlet(1, "cr");

	// Clipmode
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Clipmode");
	outlet(1, "</td>");	
	outlet(1, "cr");

	// Ramp enabled.	
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Ramp Enabled");
	outlet(1, "</td>");	
	outlet(1, "cr");

	// Repetitions
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Repetitions");
	outlet(1, "</td>");	
	outlet(1, "cr");

	// Description
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Description");
	outlet(1, "</td>");	
	outlet(1, "cr");


	// End of line
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "</tr>");
	outlet(1, "cr");
}



/*******************************************************************
*
*	function kind(s)
*
*	Set instruction_filter flag
*	
*******************************************************************/
function kind(s)
{
	if (s == instruction_kind)
		instruction_filter = 1;
	else
		instruction_filter = 0;
}



/*******************************************************************
*
*	function name()
*
*	Set name of parameter or message
*	
*******************************************************************/
function name()
{
	if (instruction_filter)
	{
		post();
		var a = arrayfromargs(arguments);
		
		// New row
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "<tr>");
		outlet(1, "cr");
		
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "<td class=\"instructionName\">");
		outlet(1, a);
		outlet(1, "</td>");	
		outlet(1, "cr");
	}
}



/*******************************************************************
*
*	function type()
*
*	Set type of parameter or message
*	
*******************************************************************/
function type()
{
	if (instruction_filter)
	{
		var a = arrayfromargs(arguments);
		
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "<td class=\"instructionType\">");
		outlet(1, a);
		outlet(1, "</td>");	
		outlet(1, "cr");
	}
}



/*******************************************************************
*
*	function range()
*
*	Set range of parameter or message
*	
*******************************************************************/
function range()
{
	if (instruction_filter)
	{
		var a = arrayfromargs(arguments);
		
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "<td class=\"instructionRange\">");
		outlet(1, a);
		outlet(1, "</td>");	
		outlet(1, "cr");
	}
}



/*******************************************************************
*
*	function clipmode()
*
*	Set clipmode of parameter or message
*	
*******************************************************************/
function clipmode()
{
	if (instruction_filter)
	{
		var a = arrayfromargs(arguments);
		
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "<td class=\"instructionClipmode\">");
		outlet(1, a);
		outlet(1, "</td>");	
		outlet(1, "cr");
	}
}



/*******************************************************************
*
*	function ramp(i)
*
*	Set ramp mode of parameter or message
*	
*******************************************************************/
function ramp(i)
{
	if (instruction_filter)
	{
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "<td class=\"instructionRamp\">");
		if (instruction_kind=="return")
			outlet(1, "N/A");
		else if (i==0)
			outlet(1, "no");
		else
			outlet(1, "yes");
		outlet(1, "</td>");	
		outlet(1, "cr");
	}
}



/*******************************************************************
*
*	function repetitions()
*
*	Set repetitions mode of parameter or message
*	
*******************************************************************/
function repetitions(i)
{
	if (instruction_filter)
	{
		var a = arrayfromargs(arguments);
		
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "<td class=\"instructionRepetitions\">");
		if (i==0)
			outlet(1, "no");
		else
			outlet(1, "yes");
		outlet(1, "</td>");	
		outlet(1, "cr");
	}
}



/*******************************************************************
*
*	function description()
*
*	Describe parameter or message
*	
*******************************************************************/
function description()
{
	if (instruction_filter)
	{
		var a = arrayfromargs(arguments);
		
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "<td class=\"instructionDescription\">");
		outlet(1, a);
		outlet(1, "</td>");	
		outlet(1, "cr");
	
		// End of row
		outlet(1, "tab");
		outlet(1, "tab");
		outlet(1, "</tr>");
		outlet(1, "cr");
	}
}



/*******************************************************************
*
*	function title()
*
*	Set name of moudule
*	
*******************************************************************/
function title(s)
{
	this_module_name = s;
}



/*******************************************************************
*
*	function size()
*
*	Set size of moudule
*	
*******************************************************************/
function size(s)
{
	this_module_size = s;
}



/*******************************************************************
*
*	function module_type()
*
*	Set type of moudule
*	
*******************************************************************/
function module_type(s)
{
	this_module_type = s;
}



/*******************************************************************
*
*	function num_inputs()
*
*	Set number of inputs of moudule
*	
*******************************************************************/
function num_inputs(i)
{
	this_module_inlets = i;
}



/*******************************************************************
*
*	function num_outputs()
*
*	Set number of outputs of moudule
*	
*******************************************************************/
function num_outputs(i)
{
	this_module_outlets = i;
}



/*******************************************************************
*
*	function module_description()
*
*	Describe module
*	
*******************************************************************/
function module_description()
{
	this_module_description = arrayfromargs(arguments);
}




/*******************************************************************
*
*	function anything()
*
*	Garbage can for unimportant messages
*	
*******************************************************************/
function anything()
{
	// any kind of message that's supposed to be ignored
}


/*******************************************************************
*
*	function getsize()
*
*	Poll size of the module. this can be used for e.g. automagical
*   resizing and positioning of the module using scripting.
*	
*******************************************************************/
function getsize()
{
	outlet(2, this_module_size);
}