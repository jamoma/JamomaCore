{
	"patcher" : 	{
		"rect" : [ 125.0, 120.0, 629.0, 652.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 125.0, 120.0, 629.0, 652.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.teabox.count~",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 182.0, 168.0, 111.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "<~ 0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-2",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 141.0, 114.0, 36.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-increment column at each new start flag.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 190.0, 147.0, 228.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 544.0, 68.0, 59.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 217.0, 97.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 1200",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 217.0, 114.0, 75.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 for digital sensors",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 28.0, 366.0, 109.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "8 analog sensors",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 28.0, 353.0, 94.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "firmware version",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 28.0, 340.0, 94.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "start flag",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 28.0, 327.0, 55.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Time -------------> -------------> -------------> -------------> -------------> ------------->",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 138.0, 590.0, 477.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "-~ 1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-12",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 141.0, 168.0, 33.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+=~",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 141.0, 145.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"patching_rect" : [ 137.0, 313.0, 464.0, 273.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 138.0, 252.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 66",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-16",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 138.0, 271.0, 62.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrix tea 1 float32 4410 11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 138.0, 292.0, 168.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 8",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-18",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 100.0, 168.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.poke~ tea",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 100.0, 193.0, 75.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 100.0, 63.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adc~ 17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 100.0, 82.0, 52.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "11 demultiplexed values",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 8.0, 314.0, 132.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-the problem with using MSP's standard count here is that [count~] starts at an aleatoric position. When you bang or when you turn audio off and on, the order of row in jit.pwindow changes. I would like the [count~] to be synchronous with the teabox, i.e. to output 0 synchronously with the start flag.",
					"linecount" : 6,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 294.0, 170.0, 251.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Turn audio on ->",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-24",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 18.0, 63.0, 82.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 1.0, 0.733333, 0.356863, 1.0 ],
					"patching_rect" : [ 14.0, 56.0, 105.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "From teabox ->",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-26",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 18.0, 84.0, 89.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-27",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 1.0, 0.960784, 0.356863, 1.0 ],
					"patching_rect" : [ 292.0, 167.0, 253.0, 80.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "synchronization object for working with sensor inputs",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 16.0, 33.0, 276.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.teabox.count~",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-29",
					"numoutlets" : 0,
					"fontsize" : 17.555555,
					"patching_rect" : [ 16.0, 5.0, 269.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"numinlets" : 1,
					"embed" : 1,
					"id" : "obj-30",
					"numoutlets" : 0,
					"patching_rect" : [ 386.0, 2.0, 184.0, 48.0 ],
					"data" : [ 2370, "png", "IBkSG0fBZn....PCIgDQRA...fK....LHX....fnPCqb....DLmPIQEBHf.B7g.YHB..HjeRDEDU3wY6cEjiaxCE9kQ+QUcS.0ptncio6qDoa5VxrpKIRcUWA8DPtAjdAJYaUWPxIfjEcMom.Hm.xbBH4D3+E82HCwFLfIS9i7mDZlIyf4C6O+7yumsmQXLFCJnvcJd34l.JnvPBk.Wg6ZbUD3ooovxkKuFOJETnD5j.eznQvnQiD5uc0pUvG+3Ggu+8uC62uuKONETnyXTWljIQbW2sd5zIv00E1saWwmgPH33wismkJnPGw+LDE5oSmfYylAGNbn3yPHDrd85g3wofBbgz8Amk3111FRSSgYylI6GmBJTKjp.mk3122G1tcKnqqKyGkBJHDjpKJtttkD2gggfqqqLeDJnPqfzrfuZ0pRSnz22+tPbmlldSO2A0j1a.3N...L8slkkg0zzJ9baa6tTr2bHNNFC.fsrrdtoxEHIIAiPnaRtcKAoXAe4xkv4ymA.TQK4ZgSmNAO8zSO2z3lG8Vfe73QXylME+7pUqTSnTgaFz6IYRmBdKKKX974s592ueOjllBmNcBLLLfoSmBSmNsuzRAE9K5heMv+4qcdddw2C.fihhD59yxxvdddk7am9RSSC633fyxx5B85EBCCwNNNXDBcAuLMMwddd3jjjqNuv3+NmfaUtkmmiihhv999XKKqhKGGGbPPvyFu5k.OJJp36QHTi2WddN122monl2kiiCNOOuKzrUHLLjovg2kkk0UqQKNNt0bKNN9pvsrrLriiCWiUU6DFFFdU3EA8Rf633T78ddd0dO7ZjLMMw999E87YUQoooMXhorrLrkkUq5zQe466OH7Bi+qAAaa6NyslZS5KZqwJ5NfWqQm6k.mVXvy8DdMRDqLrBEWTTDSQmr68mjjbQGJMMMrmm2EbKOOGGFFxjW111ReTlrrLrooIyQzhhhtfaQQQbqmkM2xyyYVOfPHrmmGNLLrn9y22mIuzzzD1k19fdIvouX0iLLLjoEYZqd0Eq4fffASjmjjfmLYxEhGZw.OtwZzHSSSoIjX0wqpUu53V0NFxja444WT9HDpw1krrLlB8g1kkRBbRutltXIvIVUhiiwdddbcGopqFMkLkpM1u6cuq2tqjjjfeyadSiUz0ws777RtnA.f+7m+bu3Eobe6aeaoxMHHnUbCiwWvsO8oOIEt8gO7gZMJzDhhhtny6PJxKIv6h+Thbooow0WUQxVHwZ63wiKJutJxo6vLd7X7jIS3VVhvMhP5gGdnnAuqfXcb73w3QiFUaiea3For5C2vXL1xxB+xW9RliD2FP2F7vCOfe0qdUuMZ433f+xW9xEedIANc3cp6pMB6lB2mnoC+2+92kboXxjIstmOqg9+wO9Qu41W+5W6kUMLlsO2+7m+T5bqKyWnpaIu3Eun2SfMIIA+5W+5RsmcUjSOZUU2wjlO3NNNEc.788wQQQBUQ1l06Qbb7E9Maaa23Lx4Edxl5fzFtwxuWQavXMrsHQkRTtU0cEDBIbXDYMei9NR.ArlGDK2w3AVAvXvD3cMrOscAMwxJLoROJJpfGYYY3nnHlwnUTq+sga7hVjiiCWgNunxHRibaq2pJxIbimPmWjrjk3l.Vh7lhieddNNHH3h1UVSldvCSXSnKqXu9D651XYsKbiWrg0zzZzMu1D5rtvMVQkRTt0VqqsAjUFY0mGIriAAAEYI011lqANVdLzKAtmmmvCoxC8YIo1lrOhPnVOontxMVgpqoq152dW4VRRRqMNbMxZKqnRIxkllVsiFeUSUOKzUK3wwwEBhnnHrmm2EYB05+VKDUsJljjHjOn8oyWddN9W+5Wbs3Pag5vgCkdeDA8QfSBmacoXmDf.V0SwwwCVlHiiiEJ6sDCVMUm06EaEcETWbSoMMTQQQWXwVzL0QVyDrrbJCtQ9aIK6.R4S.svhHPXYoGgPBUO1FtkjjvTz344gyyyYxMBHV6IFQ5BW6BnW7Vj.XPpaaynI8dG8PKZ5hkNQanHiVPRkNYsq.ve8qtNPOwThkIOOOrooozE3zB15FUKLLrT8F86C.xMBOIIIE7g7tSpOZx0R55XxWqlHOQiHyyA5s.OKKqTu511iVzFJRCR0JSREecBB5FogxM.5L71zygdjupSbidhfxH+ADvKCxzixvBzFvnqioWOJc08zqA58N5wvv.bbbJ9YWWW3zoS8sXKgsa2BmOeFrssu3rUgrwl4crvkllB+4O+onbtF61nldNj2GDBAKVrnzuawhE.BgJ96jEn2DIU2nxooobuOCCC.f+tYVn2D4555EaMwmd5oZKimSHs8jollF...mOeV56ldRkG4vCh9hTIya2kSD9VVVEMVCIPHTiOGBW4s6mHchk4Nle+98v74ygQiFAu+8uGd7wGK9chXPh0g1jggQQmQYaTSVPJBbCCiRacsc61c0NxHz00AKKKtaysqcEuHchHBWdV4Ikgr3950qgGe7QX2tcfssM366CwwwRoruFFM5Cj1A+yhEKfzzzhMf7lMafYylIUgNsEaQAQDcKYggHJ3MrNYTGYIdHtAEDDbgKQ8E2ptlPfTO51VsZEXZZV7ye6aeSJBbh04sa21ZgJYn0CGNbyb7MSde1ue+EuOGOdrXNCxZyWSNROnE2ssdj07AHyk..4wUoitLyTnlYeyZAwW2JXSznAPGlJ5HBjkk0XH0Hy1uZVuZJgODtQu7b666Aq2G50OC8mWGn4F494wMR6.IhMUyZXc0AzwzmNaqwwwBGpwmSHcANFyVjyqRTTgAu0q.4povxwK04McJbUMSe888f98gtroe2DIblUSxVcbiNAMj5AMMshmoHBbdY7Tl6Vng.Cx4CtttNre+dXwhEvlMa.OOOtGcxFFFfuuei9aNc5zhyIP5gKMLLZ7XYVWWuz8RFd1vvnwywkiGOVbe555b4onuGzuOzkMoLbccg4ym2X3L000ElaqVsBLLLJdNNNNvxkKg862CGOdTHNuXwBX5zov50qKp+bccu8O+I6RuBRJSEAW6iI.EjKHVvGxSOfgDcxBda9GJ0MeObEtqg5eifJbWCk.WgZgggwUKKvCA5z+k0TPg+u.kEbEtqgRfqvcMTBbEtqgRfqvcM9WnkmJlJqGQNe.....jTQNQjqBAlf" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 553.5, 249.0, 147.0, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 108.0, 150.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 104.0, 191.5, 104.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-19", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 553.5, 90.0, 226.0, 90.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
