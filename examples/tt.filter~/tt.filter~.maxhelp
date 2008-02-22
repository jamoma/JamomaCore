{
	"patcher" : 	{
		"rect" : [ 66., 47., 1014., 533. ],
		"bgcolor" : [ 1., 1., 1., 1. ],
		"bglocked" : 0,
		"defrect" : [ 66., 47., 1014., 533. ],
		"openinpresentation" : 0,
		"default_fontsize" : 9.,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15., 15. ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 551., 66., 50., 18. ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.,
					"id" : "obj-17",
					"presentation_rect" : [ 551., 66., 0., 0. ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 1000.",
					"patching_rect" : [ 551., 90., 65., 18. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.,
					"id" : "obj-16",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"patching_rect" : [ 644., 181., 300., 100. ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"presentation_rect" : [ 341., 181., 0., 0. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"patching_rect" : [ 646., 308., 300., 100. ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~ 1000.",
					"patching_rect" : [ 374., 134., 84., 18. ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "" ],
					"fontsize" : 9.,
					"id" : "obj-13",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "type lowpass\/butterworth2",
					"patching_rect" : [ 346., 105., 144., 16. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.,
					"id" : "obj-12",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"presentation_rect" : [ 114., 236., 0., 0. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"patching_rect" : [ 145., 115., 61., 16. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.,
					"id" : "obj-10",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 145., 88., 18., 18. ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 145., 147., 50., 18. ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.,
					"id" : "obj-6",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"patching_rect" : [ 341., 181., 300., 100. ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"presentation_rect" : [ 341., 181., 0., 0. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise~",
					"patching_rect" : [ 262., 111., 45., 18. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.,
					"id" : "obj-3",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.filter~",
					"patching_rect" : [ 262., 197., 53., 18. ],
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 9.,
					"id" : "obj-1",
					"numinlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"patching_rect" : [ 343., 308., 300., 100. ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "frequency $1",
					"patching_rect" : [ 145., 169., 76., 16. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.,
					"id" : "obj-5",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 217., 351., 45., 45. ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 217., 325., 95., 16. ],
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-8",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "type lowpass\/onepole",
					"patching_rect" : [ 346., 85., 118., 16. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.,
					"id" : "obj-11",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 154.5, 135., 135., 135., 135., 194., 250., 194., 250., 194., 271.5, 194. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 271.5, 296., 352.5, 296. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 271.5, 156., 350.5, 156. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 154.5, 190., 250., 190., 250., 185., 271.5, 185. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 383.5, 170., 653.5, 170. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 288.5, 288., 655.5, 288. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
