{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 65.0, 101.0, 1151.0, 516.0 ],
		"bglocked" : 0,
		"defrect" : [ 65.0, 101.0, 1151.0, 516.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"text" : "jit.rgb2luma",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"id" : "obj-1",
					"fontsize" : 9.0,
					"patching_rect" : [ 492.0, 109.0, 66.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Note: Background subtraction rarely works well if you have a camera with autofocus other types of automatic adjustments (e.g. lighting). This is because the image will change when a person is moving in or out of the camera. Sometimes it is possible to turn off the automatic features in the control panel.",
					"linecount" : 5,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-2",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 15.0, 263.0, 274.0, 58.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mode 1: is a simple background removal based on recording the background and subtracting this recorded image from the input image. A low-pass filter is applied to the recorded image to remove any unwanted movements, changing light, or other types of artifacts that may reduce the quality of the background removal process. \r\rMode 2: is a more advanced background removal based on finding a \"foreground mask\" which is used for subtraction. This technique results in a better foreground/background separation. Unfortunately, this technique is much more computationally expensive than the simple background removal technique. Choosing one of these therefore depends on the processing load of the rest of the patch.\r",
					"linecount" : 14,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-3",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 867.0, 222.0, 274.0, 151.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In computer vision it is common to talk about the background and the foreground of an image. The foreground is typically an object or a person which is the focus of the analysis, while the background may be considered \"noise\" that should be removed to enhance the foreground. \r\rBackground subtraction is still a hot research topic, and much work still has to be done before it is properly understood. While there are several techniques that work fairly well for static backgrounds, it is far more difficult to be able to subtract the background when it is changing over time. \r\rThis module contains two of the simplest algorithms for carrying out background subtraction: \r",
					"linecount" : 14,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-4",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 866.0, 31.0, 275.0, 151.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-5",
					"args" : [ "/input%" ],
					"name" : "jmod.input%.maxpat",
					"patching_rect" : [ 306.0, 26.0, 303.0, 70.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-6",
					"args" : [  ],
					"name" : "jmod.video_params.maxpat",
					"patching_rect" : [ 13.0, 87.0, 273.0, 146.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.background%",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-7",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 18.0,
					"patching_rect" : [ 19.0, 34.0, 189.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Background video subtraction",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-8",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 60.0, 242.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-9",
					"patching_rect" : [ 13.0, 18.0, 273.0, 63.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"fontsize" : 9.0,
					"patching_rect" : [ 305.0, 428.0, 60.0, 31.682453 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numoutlets" : 2,
					"depthbuffer" : 0,
					"outlettype" : [ "", "" ],
					"id" : "obj-11",
					"patching_rect" : [ 304.0, 241.0, 240.0, 180.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.background%",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-12",
					"args" : [ "/background%" ],
					"name" : "jmod.background%.maxpat",
					"patching_rect" : [ 306.0, 139.0, 301.0, 70.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Usually works best in b/w",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-13",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 362.0, 112.0, 129.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numoutlets" : 2,
					"depthbuffer" : 0,
					"outlettype" : [ "", "" ],
					"id" : "obj-14",
					"patching_rect" : [ 612.0, 241.0, 240.0, 180.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 599.5, 100.0, 621.5, 100.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 501.5, 132.0, 597.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 599.5, 100.0, 501.5, 100.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 597.5, 224.0, 313.5, 224.0 ]
				}

			}
 ]
	}

}
