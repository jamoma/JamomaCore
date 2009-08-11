/*

	script for dealing with linked parameters or other parameters

*/


var mylink = 1;	// remember link state
var busy = 0;		// busy flag
var n = 1;		// number of parameters

if (jsarguments.length>1)
	n = jsarguments[1];
inlets = n;
outlets = n;

// set link state
function link(v)
{
	if (v== 0)
		mylink = 0;
	else
		mylink = 1;
}

// if linked
function msg_float(v)
{
	var i;
	var a = v;
	len = arguments.length;
	// busy flag prevents stack overflow
	if (busy==0)
	{
		busy=1;
		// if linked: send to all outlets, but prepend "set"
		// to the outlet it's recieved from
		if (mylink)
		{
			// iterate downwards to maintain right to left order of output
			for (i=n-1; i>=0; i--)
			{
				if (i==inlet)
					outlet(i, "set", a);
				else
					outlet(i, a);
			}
		}
		// if not linked: send only to same outlet
		// with "set" prepended
		else
			outlet(inlet, "set", a);
		busy = 0;
	}
}

function msg_int(v)
{
	msg_float(v);
}