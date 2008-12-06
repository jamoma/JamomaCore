{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 202.0, 94.0, 1006.0, 491.0 ],
		"bglocked" : 0,
		"defrect" : [ 202.0, 94.0, 1006.0, 491.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 2.0, 2.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jalg.Zin~ 1",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 226.0, 338.0, 145.0, 17.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-34",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[1]",
					"text" : "jcom.parameter inputnumber @type msg_int @description \"Number of the audio channel input\" @priority 30 @value/default 1",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 438.0, 208.0, 409.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-24",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"minimum" : 1,
					"triangle" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"maximum" : 64,
					"patching_rect" : [ 438.0, 184.0, 47.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"fontname" : "Arial",
					"id" : "obj-22",
					"numinlets" : 1,
					"presentation_rect" : [ 12.0, 34.0, 26.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set type-in the name",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 434.0, 64.0, 125.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 434.0, 44.0, 48.0, 17.0 ],
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "number & name for the audio input",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 264.0, 64.0, 150.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"numinlets" : 1,
					"presentation_rect" : [ 2.0, 18.0, 162.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"patching_rect" : [ 244.0, 364.0, 100.0, 12.0 ],
					"presentation" : 1,
					"id" : "obj-9",
					"numinlets" : 1,
					"presentation_rect" : [ 6.0, 54.0, 140.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[7]",
					"text" : "jcom.parameter inputname @type msg_symbol @description \"Name of the audio channel input\" @priority 31",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 432.0, 138.0, 399.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 432.0, 116.0, 48.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "type-in the name",
					"fontsize" : 9.0,
					"lines" : 1,
					"numoutlets" : 4,
					"keymode" : 1,
					"patching_rect" : [ 436.0, 90.0, 142.0, 21.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"presentation" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"numinlets" : 1,
					"presentation_rect" : [ 42.0, 34.0, 103.0, 16.0 ],
					"outputmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 40.0, 180.0, 192.0, 15.0 ],
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-47",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 226.0, 296.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 226.0, 364.0, 13.0, 13.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 102.0, 258.0, 78.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-60",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "source position",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 156.0, 102.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 102.0, 305.0, 45.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-29",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.panelopen",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 102.0, 282.0, 78.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-30",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 39.0, 201.0, 125.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-31",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub Z.in~ @module_type audio @description \"Audio input module\"",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 18.0, 228.0, 298.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-35",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 20.0, 180.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 428.0, 13.0, 13.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.2",
					"numoutlets" : 1,
					"prefix" : "audio",
					"patching_rect" : [ 2.0, 2.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"has_gain" : 1,
					"has_panel" : 1,
					"has_meters" : 1,
					"id" : "obj-59",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, -2.0, 150.0, 70.0 ],
					"has_mute" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 447.5, 235.0, 423.0, 235.0, 423.0, 181.0, 447.5, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 441.5, 163.0, 419.0, 163.0, 419.0, 86.0, 445.5, 86.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 441.5, 134.0, 441.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 220.0, 27.5, 220.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 198.0, 30.0, 198.0, 30.0, 225.0, 27.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 443.5, 60.0, 443.5, 60.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 443.5, 87.0, 445.5, 87.0 ]
				}

			}
 ]
	}

}
