/*

simple text toggle
created on 24-March-2005
author tl

*/

outlets = 2;
sketch.default2d();
var myval = 0;
var mytexton = "on";
var mytextoff = "off";
var mybrgb = [0.8,0.8,0.8];
var myfrgb = [0.,0.,0.];
var myfont = "Sans Serif";  // Geneva on Mac, Arial on PC
var myfontsize = 0.5; // relative to height
var mybevel = 0.25;
var mysmooth = 0;
var myshade = 0.2;
var mousedown = 0;
var inbox = 0;

// process arguments
if (jsarguments.length>1)
	mytextoff = jsarguments[1];
if (jsarguments.length>2)
	mytexton = jsarguments[2];
if (jsarguments.length>3)
	mybrgb[0] = jsarguments[3]/255.;
if (jsarguments.length>4)
	mybrgb[1] = jsarguments[4]/255.;
if (jsarguments.length>5)
	mybrgb[2] = jsarguments[5]/255.;
if (jsarguments.length>6)
	myfrgb[0] = jsarguments[6]/255.;
if (jsarguments.length>7)
	myfrgb[1] = jsarguments[7]/255.;
if (jsarguments.length>8)
	myfrgb[2] = jsarguments[8]/255.;
if (jsarguments.length>9)
	myfont = jsarguments[9];
if (jsarguments.length>10)
	myfontsize = jsarguments[10];
if (jsarguments.length>11)
	mybevel = jsarguments[11];
if (jsarguments.length>12)
	mysmooth = jsarguments[12];

draw();
refresh();

function getvalueof()
{
	return myval;
}

function setvalueof(v)
{
	msg_int(v);
}

function smooth(v)
{
	mysmooth = v;
	draw();
	refresh();
}

function frgb(r,g,b)
{
	myfrgb[0] = r/255.;
	myfrgb[1] = g/255.;
	myfrgb[2] = b/255.;
	draw();
	refresh();
}

function brgb(r,g,b)
{
	mybrgb[0] = r/255.;
	mybrgb[1] = g/255.;
	mybrgb[2] = b/255.;
	draw();
	refresh();
}

function fsaa(v)
{
	sketch.fsaa = v;
	draw();
	refresh();
}

function texton(v)
{
	mytexton = v.toString();
	draw();
	refresh();
}

function textoff(v)
{
	mytextoff = v.toString();
	draw();
	refresh();
}

function font(v)
{
	myfont = v.toString();
	draw();
	refresh();
}

function fontsize(v)
{
	myfontsize = v;
	draw();
	refresh();
}

function bevel(v)
{
	mybevel = v;
	draw();
	refresh();
}

function bang()
{
	if  (myval==0)
		msg_int(1);
	else 
		msg_int(0);
}

function msg_int(v)
{
	if (v==0)
		myval = 0;
	else
		myval = 1;
	draw();
	refresh();
	notifyclients();
	if (myval)
		outlet(1,mytexton);
	else
		outlet(1,mytextoff);
	outlet(0,myval);
}

function draw()
{
	var str,width,height,aspect;
	var localrgb = new Array();
	var bglo = new Array();
	var bglo2 = new Array();
	var bghi = new Array();
	var bghi2 = new Array();
	var bg1,bg2,bg3,bg4;

	height = box.rect[3] - box.rect[1]; 
	width = box.rect[2] - box.rect[0]; 
	aspect = width/height;

	if (mysmooth)
		sh = myshade * 2;
	else
		sh = myshade;
	
	if (myval) {
		localrgb[0] = mybrgb[0] * 0.8 + myfrgb[0] * 0.2;
		localrgb[1] = mybrgb[1] * 0.8 + myfrgb[1] * 0.2;
		localrgb[2] = mybrgb[2] * 0.8 + myfrgb[2] * 0.2;
	} else {
		localrgb[0] = mybrgb[0];
		localrgb[1] = mybrgb[1];
		localrgb[2] = mybrgb[2];
	}
	bglo[0] = localrgb[0] * (1-sh);
	bglo[1] = localrgb[1] * (1-sh);
	bglo[2] = localrgb[2] * (1-sh);

	bglo2[0] = localrgb[0] * (1-sh/2);
	bglo2[1] = localrgb[1] * (1-sh/2);
	bglo2[2] = localrgb[2] * (1-sh/2);

	bghi[0] = localrgb[0] * (1+sh);
	bghi[1] = localrgb[1] * (1+sh);
	bghi[2] = localrgb[2] * (1+sh);

	bghi2[0] = localrgb[0] * (1+sh/2);
	bghi2[1] = localrgb[1] * (1+sh/2);
	bghi2[2] = localrgb[2] * (1+sh/2);

	bg0 = localrgb;

	if (myval) {
		bg1 = bglo;
		bg2 = bglo2;
		bg3 = bghi;
		bg4 = bghi2;
	} else {
		bg1 = bghi;
		bg2 = bghi2;
		bg3 = bglo;
		bg4 = bglo2;
	}

	with (sketch) {
		//erase background
		glclearcolor(bg0);
		glclear();

		if (mysmooth)
		{
		// left/top
		glbegin("tri_strip");
			glcolor(bg2);
			glvertex(-aspect,-1);
			glcolor(bg0);
			glvertex(-aspect+mybevel,-1+mybevel);
			glcolor(bg1);
			glvertex(-aspect,1);
			glcolor(bg0);
			glvertex(-aspect+mybevel,1-mybevel);
			glcolor(bg2);
			glvertex(aspect,1);
			glcolor(bg0);
			glvertex(aspect-mybevel,1-mybevel);
		glend();

		// bottom/right
		glbegin("tri_strip");
			glcolor(bg4);
			glvertex(aspect,1);
			glcolor(bg0);
			glvertex(aspect-mybevel,1-mybevel);
			glcolor(bg3);
			glvertex(aspect,-1);
			glcolor(bg0);
			glvertex(aspect-mybevel,-1+mybevel);
			glcolor(bg4);
			glvertex(-aspect,-1);
			glcolor(bg0);
			glvertex(-aspect+mybevel,-1+mybevel);
		glend();

		} 
		else 
		{
		// left tapezoid
		glbegin("tri_strip");
			glcolor(bg2);
			glvertex(-aspect,-1);
			glvertex(-aspect+mybevel,-1+mybevel);
			glvertex(-aspect,1);
			glvertex(-aspect+mybevel,1-mybevel);
		glend();

		// top tapezoid
		glbegin("tri_strip");
			glcolor(bg1);
			glvertex(-aspect,1);
			glvertex(-aspect+mybevel,1-mybevel);
			glvertex(aspect,1);
			glvertex(aspect-mybevel,1-mybevel);
		glend();

		// right tapezoid
		glbegin("tri_strip");
			glcolor(bg4);
			glvertex(aspect,1);
			glvertex(aspect-mybevel,1-mybevel);
			glvertex(aspect,-1);
			glvertex(aspect-mybevel,-1+mybevel);
		glend();

		// bottom tapezoid
		glbegin("tri_strip");
			glcolor(bg3);
			glvertex(aspect,-1);
			glvertex(aspect-mybevel,-1+mybevel);
			glvertex(-aspect,-1);
			glvertex(-aspect+mybevel,-1+mybevel);
		glend();
		}
		glcolor(myfrgb);		
		if (myval)
			moveto(0.02*aspect,-0.02 );
		else
			moveto(0,0);
		font(myfont);
		fontsize(myfontsize*height);
		textalign("center","center");
		if (myval)
			text(mytexton);
		else
			text(mytextoff);
	}
}

function onresize(w,h)
{
	draw();
	refresh();
}
onresize.local = 1; //private

// not using any mouse args
function onclick()
{
	bang();
}
onclick.local = 1; //private

function ondblclick()
{
	bang();
}
ondblclick.local = 1; //private