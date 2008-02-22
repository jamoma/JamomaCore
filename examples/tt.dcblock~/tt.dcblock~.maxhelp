{
	"patcher" : 	{
		"rect" : [ 64., 47., 1215., 547. ],
		"bgcolor" : [ 1., 1., 1., 1. ],
		"bglocked" : 0,
		"defrect" : [ 64., 47., 1215., 547. ],
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
					"maxclass" : "scope~",
					"presentation_rect" : [ 619., 291., 0., 0. ],
					"numinlets" : 2,
					"patching_rect" : [ 1012., 291., 130., 130. ],
					"numoutlets" : 0,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"presentation_rect" : [ 619., 291., 0., 0. ],
					"numinlets" : 2,
					"patching_rect" : [ 881., 291., 130., 130. ],
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"presentation_rect" : [ 619., 291., 0., 0. ],
					"numinlets" : 2,
					"patching_rect" : [ 750., 291., 130., 130. ],
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 664., 140., 0., 0. ],
					"numinlets" : 1,
					"patching_rect" : [ 664., 140., 16., 16. ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"presentation_rect" : [ 668., 183., 0., 0. ],
					"fontsize" : 9.,
					"numinlets" : 1,
					"patching_rect" : [ 668., 183., 61., 16. ],
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"presentation_rect" : [ 595., 184., 0., 0. ],
					"fontsize" : 9.,
					"numinlets" : 1,
					"patching_rect" : [ 595., 184., 34., 16. ],
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"presentation_rect" : [ 487., 291., 0., 0. ],
					"numinlets" : 2,
					"patching_rect" : [ 487., 291., 130., 130. ],
					"numoutlets" : 0,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 1., 1., 1., 1. ],
					"presentation_rect" : [ 612., 107., 0., 0. ],
					"fontsize" : 9.,
					"numinlets" : 1,
					"patching_rect" : [ 612., 107., 50., 18. ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+~",
					"presentation_rect" : [ 550., 155., 0., 0. ],
					"fontsize" : 9.,
					"numinlets" : 2,
					"patching_rect" : [ 550., 155., 30.470589, 18. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 2.",
					"presentation_rect" : [ 495., 108., 0., 0. ],
					"fontsize" : 9.,
					"numinlets" : 2,
					"patching_rect" : [ 495., 108., 57., 18. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.dcblock~ 4",
					"fontsize" : 9.,
					"numinlets" : 4,
					"patching_rect" : [ 619., 249., 543., 18. ],
					"numoutlets" : 5,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "signal", "signal", "" ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"presentation_rect" : [ 619., 291., 0., 0. ],
					"numinlets" : 2,
					"patching_rect" : [ 619., 291., 130., 130. ],
					"numoutlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 272., 140., 16., 16. ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"presentation_rect" : [ 326., 195., 0., 0. ],
					"fontsize" : 9.,
					"numinlets" : 1,
					"patching_rect" : [ 276., 183., 61., 16. ],
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontsize" : 9.,
					"numinlets" : 1,
					"patching_rect" : [ 203., 184., 34., 16. ],
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"presentation_rect" : [ 145., 303., 0., 0. ],
					"numinlets" : 2,
					"patching_rect" : [ 95., 291., 130., 130. ],
					"numoutlets" : 0,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 1., 1., 1., 1. ],
					"fontsize" : 9.,
					"numinlets" : 1,
					"patching_rect" : [ 220., 107., 50., 18. ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+~",
					"fontsize" : 9.,
					"numinlets" : 2,
					"patching_rect" : [ 158., 155., 30.470589, 18. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 2.",
					"fontsize" : 9.,
					"numinlets" : 2,
					"patching_rect" : [ 103., 108., 57., 18. ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.dcblock~",
					"fontsize" : 9.,
					"numinlets" : 2,
					"patching_rect" : [ 176., 220., 67., 18. ],
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 227., 291., 130., 130. ],
					"numoutlets" : 0,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"patching_rect" : [ 10., 336., 45., 45. ],
					"numoutlets" : 0,
					"id" : "obj-8"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 559.5, 241., 628.5, 241. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 559.5, 235., 803.166687, 235. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [ 559.5, 229., 977.833313, 229. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 3 ],
					"hidden" : 0,
					"midpoints" : [ 559.5, 223., 1152.5, 223. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 3 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
