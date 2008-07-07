{
	"patcher" : 	{
		"rect" : [ 55., 75., 547., 376. ],
		"bgcolor" : [ 0.85, 0.81, 0.75, 0.6 ],
		"bglocked" : 0,
		"defrect" : [ 55., 75., 547., 376. ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tap.ramp~ can be used as an alternative to msp's line~ object. The two objects are very similar, though tap.ramp~ has some extra options available.",
					"linecount" : 7,
					"id" : "obj-1",
					"fontsize" : 7.9,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"numinlets" : 1,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"patching_rect" : [ 402., 228., 120., 80. ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0., 1. 10000",
					"id" : "obj-2",
					"fontsize" : 7.9,
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1. ],
					"numinlets" : 2,
					"patching_rect" : [ 262., 226., 65., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "-0.5 5000",
					"id" : "obj-3",
					"fontsize" : 7.9,
					"bgcolor" : [ 0.32549, 0.32549, 0.32549, 1. ],
					"numinlets" : 2,
					"patching_rect" : [ 181., 226., 55., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.7",
					"id" : "obj-4",
					"fontsize" : 7.9,
					"bgcolor" : [ 0.333333, 0.333333, 0.333333, 1. ],
					"numinlets" : 2,
					"patching_rect" : [ 132., 226., 23., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"id" : "obj-5",
					"bgcolor" : [ 0.129412, 0.129412, 0.129412, 1. ],
					"numinlets" : 2,
					"patching_rect" : [ 271., 274., 126., 50. ],
					"rounded" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"id" : "obj-6",
					"fontsize" : 7.9,
					"numinlets" : 2,
					"patching_rect" : [ 271., 254., 31., 17. ],
					"bordercolor" : [ 0.545098, 0.85098, 0.592157, 1. ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"id" : "obj-7",
					"bgcolor" : [ 0.129412, 0.129412, 0.129412, 1. ],
					"numinlets" : 2,
					"patching_rect" : [ 132., 274., 126., 50. ],
					"rounded" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.ramp~",
					"id" : "obj-8",
					"fontsize" : 7.9,
					"numinlets" : 2,
					"patching_rect" : [ 132., 254., 44., 17. ],
					"bordercolor" : [ 0.545098, 0.85098, 0.592157, 1. ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example",
					"id" : "obj-9",
					"fontsize" : 10.533333,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"numinlets" : 1,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"patching_rect" : [ 130., 198., 253., 21. ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-10",
					"bgcolor" : [ 0.501961, 0.54902, 0.733333, 1. ],
					"numinlets" : 1,
					"patching_rect" : [ 128., 196., 402., 20. ],
					"rounded" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-11",
					"bgcolor" : [ 0.807843, 0.807843, 0.807843, 1. ],
					"numinlets" : 1,
					"patching_rect" : [ 128., 218., 402., 115. ],
					"rounded" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode vector_accurate",
					"id" : "obj-12",
					"fontsize" : 7.9,
					"numinlets" : 2,
					"patching_rect" : [ 139., 158., 110., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode sample_accurate",
					"id" : "obj-13",
					"fontsize" : 7.9,
					"numinlets" : 2,
					"patching_rect" : [ 139., 174., 111., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-15",
					"numinlets" : 2,
					"patching_rect" : [ 3., 146., 33., 33. ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Type of envelope-following operation to use.",
					"linecount" : 2,
					"id" : "obj-16",
					"fontsize" : 7.9,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"numinlets" : 1,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"patching_rect" : [ 318., 161., 138., 28. ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes",
					"id" : "obj-17",
					"fontsize" : 10.533333,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"numinlets" : 1,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"patching_rect" : [ 130., 135., 253., 21. ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generate ramping signals",
					"id" : "obj-18",
					"fontsize" : 10.533333,
					"textcolor" : [ 0.87451, 0.87451, 0.87451, 1. ],
					"numinlets" : 1,
					"frgb" : [ 0.87451, 0.87451, 0.87451, 1. ],
					"patching_rect" : [ 133., 34., 309., 21. ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tt.ramp~",
					"id" : "obj-19",
					"fontsize" : 21.066666,
					"textcolor" : [ 0.87451, 0.87451, 0.87451, 1. ],
					"numinlets" : 1,
					"frgb" : [ 0.87451, 0.87451, 0.87451, 1. ],
					"patching_rect" : [ 133., 5., 309., 35. ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-25",
					"bgcolor" : [ 0.501961, 0.54902, 0.733333, 1. ],
					"numinlets" : 1,
					"patching_rect" : [ 128., 133., 402., 20. ],
					"rounded" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-26",
					"bgcolor" : [ 0.807843, 0.807843, 0.807843, 1. ],
					"numinlets" : 1,
					"patching_rect" : [ 128., 155., 402., 36. ],
					"rounded" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "by timothy place",
					"id" : "obj-31",
					"background" : 1,
					"fontsize" : 12.288889,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"numinlets" : 1,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1. ],
					"patching_rect" : [ 133., 87., 125., 23. ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-32",
					"background" : 1,
					"bgcolor" : [ 0.388235, 0.388235, 0.388235, 1. ],
					"numinlets" : 1,
					"patching_rect" : [ 128., 0., 402., 128. ],
					"rounded" : 0,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
