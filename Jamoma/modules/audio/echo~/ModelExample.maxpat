{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 556.0, 73.0, 738.0, 283.0 ],
		"bglocked" : 0,
		"defrect" : [ 556.0, 73.0, 738.0, 283.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this is an extension of Tim's proposition :",
					"presentation_rect" : [ 57.0, 53.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"numinlets" : 1,
					"patching_rect" : [ 55.0, 50.0, 227.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "it could implement multi-channel management",
					"presentation_rect" : [ 273.0, 121.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 275.0, 125.0, 349.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- the filename of the model (or algorithm) could be infered : (e.g. here only using echo~ )",
					"linecount" : 2,
					"presentation_rect" : [ 319.0, 186.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 295.0, 180.0, 327.0, 31.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1st argument : (nOSC)name of the model, \n2d argument : filename of the model,\n2d argument :  number of channels, \n3d argument : description",
					"linecount" : 4,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"patching_rect" : [ 55.0, 165.0, 234.0, 55.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.model could be a wrapper around the algorithm (or model)",
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 1,
					"patching_rect" : [ 55.0, 85.0, 349.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.model /echo~.3 jalg.echoP~ 5",
					"fontname" : "Arial",
					"id" : "obj-2",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 120.0, 198.0, 20.0 ],
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "signal" ]
				}

			}
 ],
		"lines" : [  ]
	}

}
