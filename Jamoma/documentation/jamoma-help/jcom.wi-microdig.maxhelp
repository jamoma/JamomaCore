{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 107.0, 89.0, 754.0, 712.0 ],
		"bglocked" : 0,
		"defrect" : [ 107.0, 89.0, 754.0, 712.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "slide 3. 3.",
					"outlettype" : [ "float" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 565.0, 58.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 5,
					"settype" : 0,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 30.0, 590.0, 171.0, 91.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 127.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "abs 0.",
					"outlettype" : [ "float" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 540.0, 39.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 5,
					"settype" : 0,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 30.0, 445.0, 171.0, 91.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ -127.0, 127.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.delta",
					"outlettype" : [ "float", "float", "float", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 420.0, 61.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 5,
					"settype" : 0,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 30.0, 320.0, 171.0, 91.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 127.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 435.0, 485.0, 21.0, 21.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 435.0, 510.0, 35.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 69.0, 101.0, 74.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 10.0,
					"items" : [ "Bluetooth-PDA-Sync", ",", "Bluetooth-Modem", ",", "I-CubeXWi-microDig0106--1" ],
					"patching_rect" : [ 70.0, 80.0, 147.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"labelclick" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p bluetooth-setup",
					"fontsize" : 10.0,
					"patching_rect" : [ 360.0, 50.0, 98.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 304.0, 114.0, 437.0, 487.0 ],
						"bglocked" : 0,
						"defrect" : [ 304.0, 114.0, 437.0, 487.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Wi-microDig Max/MSP patch - I-cubeX\r\rThis patch uses the Max/MSP serial object, so you need to establish a virtual serial port with the wi-microDig. To use the object, the simplest way is just to open the included help patch. \r\rMac OS X:\r\rThis step only needs to be done once per wi-microdig\r\r1) In System Preferences open Bluetooth Preferences\r\rIf you don't see your wi-microdig listed under devices, do the following:\r\r2) If you've never connected to the wi-microDig before, click on \"Set Up new Device\" in the Devices tab\r2b) Select \"Any Device\" and click Continue\r2c) Once it finds the Wi-microDig, Select it and click on \"Passkey Options\"\r2d) Select \"Use a Specific Passkey\" - use passkey \"1\"\r2e) The wi-microDig should now be listed in your device\r\rOnce you see the wi-microDig\r\r3) Click on the wi-microDig under Devices and click on \"Edit Serial Ports\"\r4) Select \"Require Pairing for Security\"\r\rWindows XP:\r\r1) In windows explorer, go to \"My Bluetooth Places\"\r2) Click \"Add a device\"\r3) Once the wi-microdig appears, select the SPP slave service\r4) In \"My Bluetooth Places\" click on the object and connect to it.\r",
									"linecount" : 32,
									"fontsize" : 10.0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"patching_rect" : [ 27.0, 30.0, 478.0, 395.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "slide 3. 3.",
					"outlettype" : [ "float" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 210.0, 565.0, 58.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 5,
					"settype" : 0,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 210.0, 590.0, 171.0, 91.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 127.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "abs 0.",
					"outlettype" : [ "float" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 210.0, 540.0, 39.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "50",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 435.0, 610.0, 42.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 435.0, 585.0, 22.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 435.0, 560.0, 38.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "> 10",
					"outlettype" : [ "int" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 435.0, 535.0, 38.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "40",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 610.0, 42.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 480.0, 585.0, 22.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 560.0, 38.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "< -10",
					"outlettype" : [ "int" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 535.0, 44.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontsize" : 10.0,
					"patching_rect" : [ 435.0, 670.0, 53.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 100 500",
					"outlettype" : [ "int", "int" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 435.0, 640.0, 115.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 5,
					"settype" : 0,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 210.0, 445.0, 171.0, 91.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ -127.0, 127.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.delta",
					"outlettype" : [ "float", "float", "float", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 210.0, 420.0, 61.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 5,
					"settype" : 0,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 210.0, 320.0, 171.0, 91.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-27",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 127.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 310.0, 140.0, 30.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 to open, 0 to close",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 360.0, 200.0, 112.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 310.0, 195.0, 30.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 275.0, 195.0, 30.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-31",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 240.0, 195.0, 30.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-32",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 205.0, 195.0, 30.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 170.0, 195.0, 30.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-34",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 135.0, 195.0, 30.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 100.0, 195.0, 30.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-36",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 65.0, 195.0, 30.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 275.0, 265.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 240.0, 265.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 205.0, 265.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 170.0, 265.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 135.0, 265.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 100.0, 265.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 65.0, 265.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 30.0, 265.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.wi-microdig",
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 235.0, 299.0, 19.0 ],
					"numinlets" : 9,
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numoutlets" : 9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 16383,
					"fontsize" : 10.0,
					"patching_rect" : [ 175.0, 110.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"minimum" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "interval $1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 175.0, 130.0, 62.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reset",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 130.0, 34.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-49",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 80.0, 32.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Procedure:\r- turn on the device and set it up (pair) with your system\r- Click print to list the available serial ports in the max window\r- Choose the port that corresponds to the wi-microdig\r- Set the sampling interval in milliseconds (1-16383, default 100)\r- Open the gates for the various inputs\r",
					"linecount" : 7,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 360.0, 85.0, 393.0, 92.0 ],
					"numinlets" : 1,
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.wi-microdig",
					"fontsize" : 18.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 25.0, 20.0, 165.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-52",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Play some notes",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 475.0, 510.0, 99.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-55",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "receives values from Infusion System's wi-microDig",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 25.0, 45.0, 281.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"patching_rect" : [ 10.0, 10.0, 339.0, 59.0 ],
					"numinlets" : 1,
					"id" : "obj-54",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 78.5, 126.0, 39.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 171.0, 39.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 153.0, 39.5, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 132.0, 39.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 179.0, 74.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 8 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 255.0, 345.0, 255.0, 345.0, 76.0, 79.5, 76.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 179.0, 109.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-46", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 2 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 179.0, 144.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-46", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 3 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 179.0, 179.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-46", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 4 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 179.0, 214.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-46", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 74.5, 303.0, 219.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 5 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 179.0, 249.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-46", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 6 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 179.0, 284.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-46", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 7 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 179.0, 319.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-46", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 636.0, 444.5, 636.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [ 540.5, 664.0, 461.5, 664.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 442.0, 460.5, 442.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.5, 531.0, 489.5, 531.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
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
 ]
	}

}
