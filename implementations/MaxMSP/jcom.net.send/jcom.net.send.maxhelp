{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 64.0, 47.0, 677.0, 713.0 ],
		"bglocked" : 0,
		"defrect" : [ 64.0, 47.0, 677.0, 713.0 ],
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
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "not really sure what is going on here...\nIf you send some messages, they are indeed sent.  However, the mxj object will not dump them to its outlet until the connection is closed (e.g. you change the port.)",
					"linecount" : 6,
					"fontsize" : 10.0,
					"presentation_rect" : [ 386.0, 519.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 410.0, 465.0, 221.0, 79.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "can also send using TCP instead of UDP",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 80.0, 430.0, 253.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-26",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/egg/cooked? scrambled",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 205.0, 480.0, 134.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 80.0, 625.0, 157.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.tcp.recv @port 7490",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 595.0, 156.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "port 8000",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 160.0, 185.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "port 7491",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 160.0, 535.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/egg/cooked? fried",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 95.0, 480.0, 105.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "port 7490",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 95.0, 535.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend send",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 510.0, 79.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/egg/cooked?",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 80.0, 455.0, 79.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.net.send @address 127.0.0.1 @port 7490 @mode tcp",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 560.0, 311.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "however, udpreceive requires fully-compliant OSC formatted packets, not raw packets, so this will throw errors when it tries to receive our messages.",
					"linecount" : 3,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 320.0, 265.0, 284.0, 43.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "at the moment, messages send from jcom.net.send can be received from the java classes like this:",
					"linecount" : 3,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 80.0, 265.0, 198.0, 43.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 80.0, 340.0, 157.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/boo/who? it's me!",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 95.0, 130.0, 105.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.udp.recv @port 7419",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 310.0, 160.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "port 7419",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 95.0, 185.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend send",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 160.0, 79.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 320.0, 340.0, 157.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpreceive 8000 @quiet 1",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 320.0, 310.0, 143.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/boo/who?",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 80.0, 105.0, 64.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.net.send @address 127.0.0.1 @port 7419 @mode udp",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 210.0, 314.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ "@name", "jcom.net.send", "@description", "send data over a network socket" ],
					"bgmode" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 677.0, 70.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"name" : "jcom.maxhelpui.maxpat"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [ 89.5, 619.0, 227.5, 619.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [ 89.5, 334.0, 227.5, 334.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [ 329.5, 334.0, 467.5, 334.0 ]
				}

			}
 ]
	}

}
