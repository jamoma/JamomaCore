{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 108.0, 106.0, 834.0, 325.0 ],
		"bglocked" : 0,
		"defrect" : [ 108.0, 106.0, 834.0, 325.0 ],
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
					"maxclass" : "comment",
					"text" : "Abstraction for converting Max list-formatted lst data is into FTM float matrices\n",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 119.0, 278.0, 453.0, 20.0 ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set 0 0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 580.0, 158.0, 80.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 580.0, 182.0, 27.0, 17.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"numinlets" : 1,
					"presentation_rect" : [ 580.0, 209.0, 82.865227, 16.349121 ],
					"scope" : 0,
					"numoutlets" : 2,
					"ftm_scope" : 1,
					"persistence" : 0,
					"description" : "fmat 1 1",
					"patching_rect" : [ 580.0, 209.0, 82.865227, 16.349121 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"name" : "stream6",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set 0 0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 674.0, 158.0, 80.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 674.0, 182.0, 27.0, 17.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"numinlets" : 1,
					"presentation_rect" : [ 674.0, 209.0, 82.865227, 16.349121 ],
					"scope" : 0,
					"numoutlets" : 2,
					"ftm_scope" : 0,
					"persistence" : 0,
					"description" : "fmat 1 1",
					"patching_rect" : [ 674.0, 209.0, 82.865227, 16.349121 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"name" : "stream7",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set 0 0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 392.0, 158.0, 80.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 392.0, 182.0, 27.0, 17.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"numinlets" : 1,
					"presentation_rect" : [ 392.0, 209.0, 82.865227, 16.349121 ],
					"scope" : 0,
					"numoutlets" : 2,
					"ftm_scope" : 0,
					"persistence" : 0,
					"description" : "fmat 1 1",
					"patching_rect" : [ 392.0, 209.0, 82.865227, 16.349121 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"name" : "stream4",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set 0 0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 486.0, 158.0, 80.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 486.0, 182.0, 27.0, 17.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"numinlets" : 1,
					"presentation_rect" : [ 486.0, 209.0, 82.865227, 16.349121 ],
					"scope" : 0,
					"numoutlets" : 2,
					"ftm_scope" : 0,
					"persistence" : 0,
					"description" : "fmat 1 1",
					"patching_rect" : [ 486.0, 209.0, 82.865227, 16.349121 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"name" : "stream5",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set 0 0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 204.0, 158.0, 80.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 204.0, 182.0, 27.0, 17.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"numinlets" : 1,
					"presentation_rect" : [ 204.0, 209.0, 82.865227, 16.349121 ],
					"scope" : 0,
					"numoutlets" : 2,
					"ftm_scope" : 0,
					"persistence" : 0,
					"description" : "fmat 1 1",
					"patching_rect" : [ 204.0, 209.0, 82.865227, 16.349121 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"name" : "stream2",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set 0 0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 298.0, 158.0, 80.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 298.0, 182.0, 27.0, 17.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"numinlets" : 1,
					"presentation_rect" : [ 298.0, 209.0, 82.865227, 16.349121 ],
					"scope" : 0,
					"numoutlets" : 2,
					"ftm_scope" : 0,
					"persistence" : 0,
					"description" : "fmat 1 1",
					"patching_rect" : [ 298.0, 209.0, 82.865227, 16.349121 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"name" : "stream3",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"presentation_rect" : [ 760.0, 89.0, 59.855953, 16.001465 ],
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"patching_rect" : [ 760.0, 89.0, 59.855953, 16.001465 ],
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"fontname" : "Geneva",
					"#init" : "",
					"#triggerall" : 0,
					"text" : [ "_size $1 $2" ],
					"fontsize" : 9.0,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"presentation_rect" : [ 677.0, 89.0, 59.855953, 16.001465 ],
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"patching_rect" : [ 677.0, 89.0, 59.855953, 16.001465 ],
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontname" : "Geneva",
					"#init" : "",
					"#triggerall" : 0,
					"text" : [ "_size $1 $2" ],
					"fontsize" : 9.0,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"presentation_rect" : [ 594.0, 89.0, 59.855953, 16.001465 ],
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"patching_rect" : [ 594.0, 89.0, 59.855953, 16.001465 ],
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"fontname" : "Geneva",
					"#init" : "",
					"#triggerall" : 0,
					"text" : [ "_size $1 $2" ],
					"fontsize" : 9.0,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"presentation_rect" : [ 428.0, 89.0, 59.855953, 16.001465 ],
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"patching_rect" : [ 428.0, 89.0, 59.855953, 16.001465 ],
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontname" : "Geneva",
					"#init" : "",
					"#triggerall" : 0,
					"text" : [ "_size $1 $2" ],
					"fontsize" : 9.0,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"presentation_rect" : [ 511.0, 89.0, 59.855953, 16.001465 ],
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"patching_rect" : [ 511.0, 89.0, 59.855953, 16.001465 ],
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Geneva",
					"#init" : "",
					"#triggerall" : 0,
					"text" : [ "_size $1 $2" ],
					"fontsize" : 9.0,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"presentation_rect" : [ 345.0, 89.0, 59.855953, 16.001465 ],
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"patching_rect" : [ 345.0, 89.0, 59.855953, 16.001465 ],
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Geneva",
					"#init" : "",
					"#triggerall" : 0,
					"text" : [ "_size $1 $2" ],
					"fontsize" : 9.0,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"presentation_rect" : [ 262.0, 89.0, 59.855953, 16.001465 ],
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"patching_rect" : [ 262.0, 89.0, 59.855953, 16.001465 ],
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Geneva",
					"#init" : "",
					"#triggerall" : 0,
					"text" : [ "_size $1 $2" ],
					"fontsize" : 9.0,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set 0 0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 110.0, 158.0, 80.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 110.0, 182.0, 27.0, 17.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"numinlets" : 1,
					"presentation_rect" : [ 110.0, 209.0, 82.865227, 16.349121 ],
					"scope" : 0,
					"numoutlets" : 2,
					"ftm_scope" : 0,
					"persistence" : 0,
					"description" : "fmat 1 1",
					"patching_rect" : [ 110.0, 209.0, 82.865227, 16.349121 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"name" : "stream1",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"presentation_rect" : [ 179.0, 89.0, 59.855953, 16.001465 ],
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"patching_rect" : [ 179.0, 89.0, 59.855953, 16.001465 ],
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"fontname" : "Geneva",
					"#init" : "",
					"#triggerall" : 0,
					"text" : [ "_size $1 $2" ],
					"fontsize" : 9.0,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
					"numinlets" : 1,
					"numoutlets" : 16,
					"patching_rect" : [ 179.0, 60.0, 641.0, 17.0 ],
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 179.0, 33.0, 185.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set 0 0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 158.0, 80.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 16.0, 182.0, 27.0, 17.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"numinlets" : 1,
					"presentation_rect" : [ 16.0, 209.0, 82.865227, 16.349121 ],
					"scope" : 0,
					"numoutlets" : 2,
					"ftm_scope" : 2,
					"persistence" : 0,
					"description" : "fmat 1 1",
					"patching_rect" : [ 16.0, 209.0, 82.865227, 16.349121 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-34",
					"fontname" : "Arial",
					"name" : "stream0",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 674.0, 112.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"comment" : "Data to be recorded to stream 7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 298.0, 112.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"comment" : "Data to be recorded to stream 3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 392.0, 112.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"comment" : "Data to be recorded to stream 4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 486.0, 112.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"comment" : "Data to be recorded to stream 5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 580.0, 112.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-39",
					"comment" : "Data to be recorded to stream 6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 204.0, 112.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"comment" : "Data to be recorded to stream 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 110.0, 112.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"comment" : "Data to be recorded to stream 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /data/7",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 674.0, 239.0, 73.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /data/6",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 580.0, 239.0, 73.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-43",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /data/5",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 486.0, 239.0, 73.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /data/4",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 392.0, 239.0, 73.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /data/3",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 298.0, 239.0, 73.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /data/2",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 204.0, 239.0, 73.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /data/1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 110.0, 239.0, 73.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /data/0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 239.0, 73.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"fontname" : "Arial",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 277.0, 15.0, 15.0 ],
					"id" : "obj-50",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 112.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"comment" : "Data to be recorded to stream 0"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 15 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 14 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 13 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 12 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 11 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 10 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 9 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-43", 0 ],
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
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
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
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 8 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 7 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
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
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 6 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 5 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
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
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 4 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 3 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-29", 1 ],
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
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 267.0, 25.0, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 267.0, 25.0, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 213.5, 267.0, 25.0, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 307.5, 267.0, 25.0, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 401.5, 267.0, 25.0, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 495.5, 267.0, 25.0, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 589.5, 267.0, 25.0, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 683.5, 267.0, 25.0, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
