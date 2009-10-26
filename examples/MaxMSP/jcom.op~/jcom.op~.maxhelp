{
	"patcher" : 	{
		"fileversion" : 1,
<<<<<<< HEAD
		"rect" : [ 65.0, 47.0, 596.0, 417.0 ],
		"bglocked" : 0,
		"defrect" : [ 65.0, 47.0, 596.0, 417.0 ],
=======
		"rect" : [ 98.0, 96.0, 671.0, 489.0 ],
		"bglocked" : 0,
		"defrect" : [ 98.0, 96.0, 671.0, 489.0 ],
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
<<<<<<< HEAD
					"args" : [ "@name", "jcom.op~", "@description", "standard math operations on audio signals" ],
					"bgmode" : 1,
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 596.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 1197.0, 68.0 ],
					"prototypename" : "bphelp",
					"varname" : "maxhelpui"
=======
					"maxclass" : "bpatcher",
					"id" : "obj-21",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 746.0, 70.0 ],
					"numoutlets" : 0,
					"name" : "jcom.maxhelpui.maxpat",
					"args" : [ "@name", "jcom.op~", "@description", "A multi-operator DSP object" ],
					"bgmode" : 1
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"items" : [ "+", ",", "-", " ", ",", "*", ",", "/", ",", "%" ],
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "umenu",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 135.0, 151.0, 52.0, 19.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "+", ",", "-", " ", ",", "*", ",", "/", ",", "%" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 98.0, 214.0, 50.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "operand $1",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 152.0, 215.0, 68.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-12",
					"numinlets" : 2,
					"patching_rect" : [ 99.0, 286.0, 45.0, 45.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "operator $1",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 152.0, 173.0, 70.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 365.0, 353.0, 56.0, 19.0 ],
					"numoutlets" : 2,
<<<<<<< HEAD
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 438.0, 364.0, 56.0, 19.0 ],
					"sig" : 0.0
=======
					"sig" : 0.0,
					"mode" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "float" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 306.0, 353.0, 56.0, 19.0 ],
					"numoutlets" : 2,
<<<<<<< HEAD
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 378.0, 364.0, 56.0, 19.0 ],
					"sig" : 0.0
=======
					"sig" : 0.0,
					"mode" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "float" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 247.0, 353.0, 56.0, 19.0 ],
					"numoutlets" : 2,
					"sig" : 0.0,
					"mode" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 300",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 423.0, 123.0, 55.0, 19.0 ],
					"numoutlets" : 1,
<<<<<<< HEAD
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 499.0, 134.0, 55.0, 19.0 ],
					"text" : "sig~ 300"
=======
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 20",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 335.0, 123.0, 49.0, 19.0 ],
					"numoutlets" : 1,
<<<<<<< HEAD
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 408.0, 134.0, 49.0, 19.0 ],
					"text" : "sig~ 20"
=======
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 10",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 247.0, 123.0, 49.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-2",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "newobj",
					"text" : "jcom.op~ 3 @operator + @operand 5",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 247.0, 243.0, 201.0, 19.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 161.5, 238.0, 256.5, 238.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 107.5, 233.0, 148.0, 233.0, 148.0, 212.0, 161.5, 212.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 161.5, 194.0, 256.5, 194.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
