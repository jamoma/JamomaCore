{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 78.0, 118.0, 803.0, 490.0 ],
		"bglocked" : 0,
		"defrect" : [ 78.0, 118.0, 803.0, 490.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /send",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numoutlets" : 2,
					"patching_rect" : [ 674.0, 171.0, 110.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numoutlets" : 1,
					"patching_rect" : [ 83.0, 212.0, 67.0, 18.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "maxqueuesize 4096",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numoutlets" : 1,
					"patching_rect" : [ 83.0, 237.0, 108.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpsend 127.0.0.1 7400",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 272.0, 131.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numoutlets" : 1,
					"patching_rect" : [ 623.0, 192.0, 22.0, 18.0 ],
					"outlettype" : [ "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "1",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numoutlets" : 1,
					"patching_rect" : [ 591.0, 192.0, 27.0, 18.0 ],
					"outlettype" : [ "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 1",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numoutlets" : 2,
					"patching_rect" : [ 591.0, 221.0, 50.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel null",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numoutlets" : 2,
					"patching_rect" : [ 591.0, 171.0, 44.0, 18.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numoutlets" : 1,
					"patching_rect" : [ 296.0, 80.0, 68.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b s",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numoutlets" : 2,
					"patching_rect" : [ 367.0, 80.0, 31.0, 18.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack s s",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numoutlets" : 1,
					"patching_rect" : [ 296.0, 105.0, 101.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numoutlets" : 1,
					"patching_rect" : [ 367.0, 59.0, 54.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %s%s",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numoutlets" : 1,
					"patching_rect" : [ 296.0, 126.0, 75.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numoutlets" : 1,
					"patching_rect" : [ 296.0, 59.0, 54.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 1,
					"patching_rect" : [ 259.0, 242.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Regular IP send, using udpsend/receive which are more efficient than the mxj ones.",
					"linecount" : 4,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 292.0, 124.0, 54.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 1,
					"patching_rect" : [ 508.0, 286.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend group",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numoutlets" : 1,
					"patching_rect" : [ 425.0, 281.0, 81.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.multi.recv @port 7500",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numoutlets" : 2,
					"patching_rect" : [ 508.0, 366.0, 162.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack leave l",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numoutlets" : 1,
					"patching_rect" : [ 575.0, 333.0, 67.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack join l",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numoutlets" : 1,
					"patching_rect" : [ 508.0, 333.0, 60.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numoutlets" : 1,
					"patching_rect" : [ 342.0, 281.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 0",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numoutlets" : 3,
					"patching_rect" : [ 508.0, 309.0, 42.0, 18.0 ],
					"outlettype" : [ "bang", "bang", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numoutlets" : 1,
					"patching_rect" : [ 259.0, 262.0, 27.0, 18.0 ],
					"outlettype" : [ "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 1",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numoutlets" : 2,
					"patching_rect" : [ 259.0, 282.0, 50.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.multi.send @port 7500",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numoutlets" : 1,
					"patching_rect" : [ 342.0, 366.0, 165.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend host",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 174.0, 74.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numoutlets" : 1,
					"patching_rect" : [ 93.0, 174.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numoutlets" : 1,
					"patching_rect" : [ 176.0, 337.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 0,
					"patching_rect" : [ 176.0, 413.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-31",
					"numoutlets" : 1,
					"patching_rect" : [ 707.0, 27.0, 27.0, 27.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpreceive 7400",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numoutlets" : 1,
					"patching_rect" : [ 176.0, 359.0, 91.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /send_host /send_port /receive_port /mode /multicast_port /multicast_ip /multicast_join /osc_prefix",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numoutlets" : 9,
					"patching_rect" : [ 10.0, 149.0, 676.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-34",
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 28.0, 27.0, 27.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This part is dealing with the multicast stuff.",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numoutlets" : 0,
					"patching_rect" : [ 422.0, 405.0, 225.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC-messages coming in and being routed to either the single or multicast objects.",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numoutlets" : 0,
					"patching_rect" : [ 280.0, 19.0, 426.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-33", 8 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 5 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 716.5, 217.0, 631.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 683.5, 217.0, 631.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 7 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 5 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 6 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 5 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 4 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 3 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 517.5, 390.0, 185.5, 390.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
