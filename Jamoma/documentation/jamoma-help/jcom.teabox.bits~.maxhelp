{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 125.0, 120.0, 410.0, 426.0 ],
		"bglocked" : 0,
		"defrect" : [ 125.0, 120.0, 410.0, 426.0 ],
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
					"maxclass" : "comment",
					"text" : "The teabox.bits~ object decodes the bitmask into individual bits, represented as signals.",
					"linecount" : 4,
					"fontsize" : 9.873845,
					"patching_rect" : [ 278.0, 95.0, 131.0, 54.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This input is a 16-bit integer which is a bitmask of the 16 toggle inputs on the Teabox.",
					"linecount" : 3,
					"fontsize" : 9.873845,
					"patching_rect" : [ 128.0, 62.0, 240.0, 42.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.teabox.bits~",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 35.0, 100.0, 212.5, 18.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 16
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 35.0, 67.0, 89.0, 18.0 ],
					"mode" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-4",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 35.0, 363.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-5",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 48.0, 347.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-6",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 61.0, 331.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-7",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 74.0, 315.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-8",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 87.0, 299.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-9",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 100.0, 283.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-10",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 113.0, 267.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-11",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 126.0, 251.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-12",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 139.0, 235.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-13",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 152.0, 219.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-14",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 165.0, 203.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-15",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 178.0, 187.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-16",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 191.0, 171.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-17",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 204.0, 155.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-18",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 217.0, 139.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-19",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 230.0, 123.0, 43.0, 18.0 ],
					"mode" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-20",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"interval" : 50.0,
					"numoutlets" : 2,
					"sig" : 0.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "decode a 16-bit integer signal into individual toggles",
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 33.0, 333.0, 18.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.teabox.bits~",
					"fontsize" : 19.260092,
					"patching_rect" : [ 16.0, 5.0, 269.0, 30.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 249.0, 263.0, 33.0, 33.0 ],
					"id" : "obj-23",
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• start/stop audio",
					"fontsize" : 9.873845,
					"patching_rect" : [ 295.0, 273.0, 99.0, 18.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"embed" : 1,
					"patching_rect" : [ 167.0, 332.0, 184.0, 48.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 0,
					"data" : [ 2370, "", "IBkSG0fBZn....PCIgDQRA...fK....LHX....fnPCqb....DLmPIQEBHf.B7g.YHB..HjeRDEDU3wY6cEjiaxCE9kQ+QUcS.0ptncio6qDoa5VxrpKIRcUWA8DPtAjdAJYaUWPxIfjEcMom.Hm.xbBH4D3+E82HCwFLfIS9i7mDZlIyf4C6O+7yumsmQXLFCJnvcJd34l.JnvPBk.Wg6ZbUD3ooovxkKuFOJETnD5j.eznQvnQiD5uc0pUvG+3Ggu+8uC62uuKONETnyXTWljIQbW2sd5zIv00E1saWwmgPH33wismkJnPGw+LDE5oSmfYylAGNbn3yPHDrd85g3wofBbgz8Amk3111FRSSgYylI6GmBJTKjp.mk3122G1tcKnqqKyGkBJHDjpKJtttkD2gggfqqqLeDJnPqfzrfuZ0pRSnz22+tPbmlldSO2A0j1a.3N...L8slkkg0zzJ9baa6tTr2bHNNFC.fsrrdtoxEHIIAiPnaRtcKAoXAe4xkv4ymA.TQK4ZgSmNAO8zSO2z3lG8Vfe73QXylME+7pUqTSnTgaFz6IYRmBdKKKX974s592ueOjllBmNcBLLLfoSmBSmNsuzRAE9K5heMv+4qcdddw2C.fihhD59yxxvdddk7am9RSSC633fyxx5B85EBCCwNNNXDBcAuLMMwddd3jjjqNuv3+NmfaUtkmmiihhv999XKKqhKGGGbPPvyFu5k.OJJp36QHTi2WddN122monl2kiiCNOOuKzrUHLLjovg2kkk0UqQKNNt0bKNN9pvsrrLriiCWiUU6DFFFdU3EA8Rf633T78ddd0dO7ZjLMMw999E87YUQoooMXhorrLrkkUq5zQe466OH7Bi+qAAaa6NyslZS5KZqwJ5NfWqQm6k.mVXvy8DdMRDqLrBEWTTDSQmr68mjjbQGJMMMrmm2EbKOOGGFFxjW111ReTlrrLrooIyQzhhhtfaQQQbqmkM2xyyYVOfPHrmmGNLLrn9y22mIuzzzD1k19fdIvouX0iLLLjoEYZqd0Eq4fffASjmjjfmLYxEhGZw.OtwZzHSSSoIjX0wqpUu53V0NFxja444WT9HDpw1krrLlB8g1kkRBbRutltXIvIVUhiiwdddbcGopqFMkLkpM1u6cuq2tqjjjfeyadSiUz0ws777RtnA.f+7m+bu3Eobe6aeaoxMHHnUbCiwWvsO8oOIEt8gO7gZMJzDhhhtny6PJxKIv6h+Thbooow0WUQxVHwZ63wiKJutJxo6vLd7X7jIS3VVhvMhP5gGdnnAuqfXcb73w3QiFUaiea3For5C2vXL1xxB+xW9RliD2FP2F7vCOfe0qdUuMZ433f+xW9xEedIANc3cp6pMB6lB2mnoC+2+92kboXxjIstmOqg9+wO9Qu41W+5W6kUMLlsO2+7m+T5bqKyWnpaIu3Eun2SfMIIA+5W+5RsmcUjSOZUU2wjlO3NNNEc.788wQQQBUQ1l06Qbb7E9Maaa23Lx4Edxl5fzFtwxuWQavXMrsHQkRTtU0cEDBIbXDYMei9NR.ArlGDK2w3AVAvXvD3cMrOscAMwxJLoROJJpfGYYY3nnHlwnUTq+sga7hVjiiCWgNunxHRibaq2pJxIbimPmWjrjk3l.Vh7lhieddNNHH3h1UVSldvCSXSnKqXu9D651XYsKbiWrg0zzZzMu1D5rtvMVQkRTt0VqqsAjUFY0mGIriAAAEYI011lqANVdLzKAtmmmvCoxC8YIo1lrOhPnVOontxMVgpqoq152dW4VRRRqMNbMxZKqnRIxkllVsiFeUSUOKzUK3wwwEBhnnHrmm2EYB05+VKDUsJljjHjOn8oyWddN9W+5Wbs3Pag5vgCkdeDA8QfSBmacoXmDf.V0SwwwCVlHiiiEJ6sDCVMUm06EaEcETWbSoMMTQQQWXwVzL0QVyDrrbJCtQ9aIK6.R4S.svhHPXYoGgPBUO1FtkjjvTz344gyyyYxMBHV6IFQ5BW6BnW7Vj.XPpaaynI8dG8PKZ5hkNQanHiVPRkNYsq.ve8qtNPOwThkIOOOrooozE3zB15FUKLLrT8F86C.xMBOIIIE7g7tSpOZx0R55XxWqlHOQiHyyA5s.OKKqTu511iVzFJRCR0JSREecBB5FogxM.5L71zygdjupSbidhfxH+ADvKCxzixvBzFvnqioWOJc08zqA58N5wvv.bbbJ9YWWW3zoS8sXKgsa2BmOeFrssu3rUgrwl4crvkllB+4O+onbtF61nldNj2GDBAKVrnzuawhE.BgJ96jEn2DIU2nxooobuOCCC.f+tYVn2D4555EaMwmd5oZKimSHs8jollF...mOeV56ldRkG4vCh9hTIya2kSD9VVVEMVCIPHTiOGBW4s6mHchk4Nle+98v74ygQiFAu+8uGd7wGK9chXPh0g1jggQQmQYaTSVPJBbCCiRacsc61c0NxHz00AKKKtaysqcEuHchHBWdV4Ikgr3950qgGe7QX2tcfssM366CwwwRoruFFM5Cj1A+yhEKfzzzhMf7lMafYylIUgNsEaQAQDcKYggHJ3MrNYTGYIdHtAEDDbgKQ8E2ptlPfTO51VsZEXZZV7ye6aeSJBbh04sa21ZgJYn0CGNbyb7MSde1ue+EuOGOdrXNCxZyWSNROnE2ssdj07AHyk..4wUoitLyTnlYeyZAwW2JXSznAPGlJ5HBjkk0XH0Hy1uZVuZJgODtQu7b666Aq2G50OC8mWGn4F494wMR6.IhMUyZXc0AzwzmNaqwwwBGpwmSHcANFyVjyqRTTgAu0q.4povxwK04McJbUMSe888f98gtroe2DIblUSxVcbiNAMj5AMMshmoHBbdY7Tl6Vng.Cx4CtttNre+dXwhEvlMa.OOOtGcxFFFfuuei9aNc5zhyIP5gKMLLZ7XYVWWuz8RFd1vvnwywkiGOVbe555b4onuGzuOzkMoLbccg4ym2X3L000ElaqVsBLLLJdNNNNvxkKg862CGOdTHNuXwBX5zov50qKp+bccu8O+I6RuBRJSEAW6iI.EjKHVvGxSOfgDcxBda9GJ0MeObEtqg5eifJbWCk.WgZgggwUKKvCA5z+k0TPg+u.kEbEtqgRfqvcMTBbEtqgRfqvcM9WnkmJlJqGQNe.....jTQNQjqBAlf" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 15 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 14 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 13 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 12 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 11 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 10 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 9 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 8 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 7 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 6 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 5 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 4 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 3 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
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
 ]
	}

}
