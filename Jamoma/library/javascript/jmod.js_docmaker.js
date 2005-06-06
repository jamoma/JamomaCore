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


/*******************************************************************
*	SETUP
*******************************************************************/
 



// Inlets and outlets
inlets = 1;
outlets = 2;


/*******************************************************************
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
	
	// top table displaying name of module etc.
/*
	outlet(1, "tab");
	outlet(1, "<table cellspacing=\"2\" cellpadding=\"5\">");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<tr>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td class=\"moduleName\">");
	outlet(1, this_module_name);
	outlet(1, "</td>");	
	outlet(1, "cr");	

	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "</tr>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<tr>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td class=\"moduleDescription\">");
	outlet(1, this_module_description);
	outlet(1, "</td>");	
	outlet(1, "cr");	

	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "</tr>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "</table>");
*/
	outlet(1, "<h1>" + this_module_name + "</h1>");
	outlet(1, "<h2>" + this_module_description + "</h2>")
	
	outlet(1, "cr");
	
	outlet(1, "cr");


	/*

				// More description
				
				outlet(1, "tab");
				outlet(1, "<p>", "More Description");	// Have to be made dynamic
				outlet(1, "NameOfModule");
				outlet(1, "</P>");
				outlet(1, "cr");
	
	*/

	// Type
	
	outlet(1, "tab");
	outlet(1, "<p>", "Type of module:", "<code>");	
	outlet(1, this_module_type);
	outlet(1, "</code>", "<br>");
	outlet(1, "cr");

	// Size
	
	outlet(1, "tab");
	outlet(1, "size", "=", "<code>");	
	outlet(1, this_module_size);
	outlet(1, "</code>", "</p>");
	outlet(1, "cr");

	outlet(1, "cr");
	


	// Info on inlets and outlets
	
	outlet(1, "tab");
	outlet(1, "<p>", "Number of inlets:", "<code>");	
	outlet(1, 1, "+", this_module_inlets);
	outlet(1, "</code>", "<br>");
	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "Number of outlets", "<code>");	
	outlet(1, 1, "+", this_module_outlets);
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

				// End of inlets/outlets table
				
	
	//End of commented section
	****************************************************/
	
	outlet(1, "tab");
	outlet(1, "</table>");
	outlet(1, "cr");

	outlet(1, "cr");
	
	outlet(1, "tab");
	outlet(1, "<p> &nbsp; </p>");
	outlet(1, "cr");

	outlet(1, "cr");	
	
	
	
	// Instructions
	
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
	outlet(1, "Instructions:");
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
	outlet(1, "<td>");
	outlet(1, "Name");
	outlet(1, "</td>");	
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Kind");
	outlet(1, "</td>");	
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Type");
	outlet(1, "</td>");	
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Range");
	outlet(1, "</td>");	
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Clipmode");
	outlet(1, "</td>");	
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Ramp Enabled");
	outlet(1, "</td>");	
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Repetitions");
	outlet(1, "</td>");	
	outlet(1, "cr");

	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td>");
	outlet(1, "Description");
	outlet(1, "</td>");	
	outlet(1, "cr");


	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "</tr>");
	outlet(1, "cr");


	// Content	
	
	// Sort instructions in ascending alphabetic order
	
	outlet(0, "sort", -1, -1);
	
	// Request all information by dumping the coll
	// Information is returned as messages according to the functions below
	// Content is added and formatted by the various functions
	
	outlet(0, "dump");
	
	
	
	// End of table
	
	outlet(1, "tab");
	outlet(1, "</table>");
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

function name()
{
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

function kind()
{
	var a = arrayfromargs(arguments);
	
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td class=\"instructionKind\">");
	outlet(1, a);
	outlet(1, "</td>");	
	outlet(1, "cr");	
}

function type()
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

function range()
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

function clipmode()
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

function ramp(i)
{
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "tab");
	outlet(1, "<td class=\"instructionRamp\">");
	if (i==0)
		outlet(1, "no");
	else
		outlet(1, "yes");
	outlet(1, "</td>");	
	outlet(1, "cr");	
}

function repetitions(i)
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

function description()
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

function title(s)
{
	this_module_name = s;
}

function size(s)
{
	this_module_size = s;
}

function module_type(s)
{
	this_module_type = s;
}

function num_inputs(i)
{
	this_module_inlets = i;
}

function num_outputs(i)
{
	this_module_outlets = i;
}

function module_documentation()
{
	this_module_description = arrayfromargs(arguments);
}

function anything()
{
	// any kind of message that's supposed to be ignored
}