{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 127.0, 71.0, 394.0, 265.0 ],
		"bglocked" : 0,
		"defrect" : [ 127.0, 71.0, 394.0, 265.0 ],
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
					"maxclass" : "message",
					"text" : "No.",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 44.0, 108.0, 32.5, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 44.0, 233.0, 246.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive jcom.post",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 44.0, 184.0, 98.0, 19.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Hi. Is your name Fahubagatz?",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.0, 88.0, 160.0, 17.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.post \"My Message\"",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 29.0, 135.0, 132.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.post",
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 15.0, 21.0, 189.0, 28.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "post messages to the max/status window",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 16.0, 47.0, 218.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"patching_rect" : [ 14.0, 15.0, 324.0, 51.0 ],
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This abstraction acts as a replacement for Max's standard 'print' object. The benefit of using jcom.post is that it not only posts to the Max window, but also sends the messages to a receive object so you can further process or handle messages if you like.",
					"linecount" : 7,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 173.0, 112.0, 211.0, 92.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 53.5, 219.0, 280.5, 219.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
