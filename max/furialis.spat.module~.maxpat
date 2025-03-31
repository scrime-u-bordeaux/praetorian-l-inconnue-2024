{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 492.0, 503.0, 790.0, 401.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 238.0, 33.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 237.0, 68.0, 52.0, 22.0 ],
					"text" : "open $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 119.0, 304.0, 485.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 137.5, 78.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 138.0, 383.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 158.0, 327.0, 56.0, 22.0 ],
									"text" : "target $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 117.0, 254.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 158.0, 297.0, 29.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 125.0, 158.0, 55.0, 22.0 ],
									"text" : "zl slice 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 82.0, 78.0, 49.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p target"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 550.0, 78.0, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 507.0, 78.0, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 464.0, 78.0, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 421.0, 78.0, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "float", "float", "float" ],
					"patching_rect" : [ 421.0, 46.0, 148.0, 22.0 ],
					"text" : "unpack f f f f"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 82.0, 337.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 627.0, 213.0, 55.0, 22.0 ],
					"text" : "pak f f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 683.0, 60.0, 20.0, 140.0 ],
					"size" : 1000.0
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-23",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 639.0, 60.0, 20.0, 140.0 ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-22",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 617.0, 60.0, 20.0, 140.0 ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-21",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 661.0, 60.0, 20.0, 140.0 ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 443.0, 195.0, 136.0, 22.0 ],
					"text" : "0.9 0.5 0.24 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 373.0, 153.0, 19.0, 22.0 ],
					"text" : "t l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 373.0, 195.0, 64.0, 62.0 ],
					"text" : "fb1 $1, fb2 $2, damp $3, spread $4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 373.0, 119.0, 137.0, 22.0 ],
					"text" : "loadmess 0.9 0.5 0.24 0"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-6",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 82.0, 42.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.0, 275.0, 152.0, 20.0 ],
					"text" : "< 4 channel mono freeverb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 82.0, 304.0, 102.0, 22.0 ],
					"text" : "mc.+~ @chans 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 82.0, 153.0, 276.0, 22.0 ],
					"text" : "mc.receive~ furialis-spatialized-sources @chans 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"library_path0" : "/Users/josephlarralde/Documents/Max 8/Packages/faustgen/externals/msp/faustgen~.mxo/Contents/Resources/",
					"machinecode" : "z/rt/gwAAAEAAAAAAQAAAAUAAAB4AQAAACAAAAAAAAAZAAAA6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKQhAAAAAAAAmAEAAAAAAACkIQAAAAAAAAcAAAAHAAAAAgAAAAAAAABfX3RleHQAAAAAAAAAAAAAX19URVhUAAAAAAAAAAAAAAAAAAAAAAAAoBYAAAAAAACYAQAAAgAAAEAjAAAEAAAAAAQAgAAAAAAAAAAAAAAAAF9fY29uc3QAAAAAAAAAAABfX1RFWFQAAAAAAAAAAAAAoBYAAAAAAAAECwAAAAAAADgYAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMgAAABgAAAABAAAAAAANAAAAAAAAAAAALgAAABAAAABgIwAAEAAAAAIAAAAYAAAAcCMAAAsAAAAgJAAAkAsAAAsAAABQAAAAAAAAAAMAAAADAAAABwAAAAoAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwANf1v8DAtH8bwKp+mcDqfhfBKn2VwWp9E8Gqf17B6nzAwCqF0AAkQhAQJEYAQGRCIBAkRmhAZEIwECRGkECkQgAQZEb4QKRCEBBkRyBA5EIgEGRCSEEkQjAQZEIwQSR6SMBqQDkAG8IK4BSCAGgcgBoqDwIAEKRAMEFkRYAAJDWAkD5AQCIUsACP9ZoEkKRFOEFkWgiQpEVQQaRaDJCkQihBpHoBwD5aEJCkRMBB5HgAxeqgQKAUiEAoHLAAj/W4AMYqgEEgFIhAKBywAI/1uADGaoBBIBSIQCgcsACP9bgAxqqAQSAUiEAoHLAAj/W4AMbqgEEgFIhAKBywAI/1uADHKoBBIBSIQCgcsACP9bgC0D5AQSAUiEAoHLAAj/W4A9A+QEEgFIhAKBywAI/1uADFKoBAohSwAI/1uADFaoBAohSwAI/1uAHQPkBAohSwAI/1uADE6oBeoBSYQOgcsACP9b9e0ep9E9GqfZXRan4X0Sp+mdDqfxvQqn/AwKRwANf1iAAYh4BEG4eAGhhHggAztLoIOjyAQFnngB4YR5oJILSyOez8si60vJo8+fyAQFnngEIYR4oAHgeAQFiHggMgFJIAKByAWgo/OgLntII0rfyKNzU8qjz5/IBAWeeAQhhHigAeB4BAWIeCBGAUmgAoHIBaCj8aIaV0ghRvPKIdMLySPTn8gEBZ54BCGEeKAB4HgEBYh4IFoBSiACgcgFoKPxoBYnSiMOr8mjvyfIo9OfyAQFnngEIYR4oAHgeAQFiHggbgFKoAKByAWgo/AggQpHJWJLS6Yul8im/2PJJ9OfyIQFnngEIYR4pAHgeCkBAkSEBYh4JIIBSyQCgcgFoKfxJkQCRCliQ0ir+rfJqj8/y6vPn8kEBZ54BCGEeKgB4HiEBALkrxYnSSyek8is73fIr8+fyYQFnngEIYR4rAHgeCCEGkUEBYh4KAEKRSkEFkSBBAPwhwQD8YQFiHgklgFLpAKByAWgp/AmthNKpjKfy6UzQ8gn05/IhAWeeAQhhHikAeB7rhp/SSw6l8ktC2vIr8efyYQFnngEIYR4rAHgeIQFiHkEBAP1hAWIeQREg/WmPgtLJ9ajyKVzP8onw5/IhAWeeAQhhHikAeB4hAWIeAQEA/WnUhNIJMKzyKYHV8unv5/IhAWeeAQhhHikAeB4qp4DS6uW08gq83PKK7ufyQQFnngAIYR4hAWIeCQB4HgENIP0gAWIeCDeAUigBoHIAaCj8wANf1sADX9bAA1/WAAAAkAAAQPnAA1/W6SO5bfxvAan6ZwKp+F8DqfZXBKn0TwWp/XsGqf/DDdHgtwH5PwQAcauUAFTqAwOq4LdB+QjwSJEIwRWR6CsB+QjgSJEIoRWR6LMB+QjASJETARWRCIBIkQiBFJHoIwH5CEBIkQgBFJHoHwH5CABIkQiBE5HoGwH5CMBHkQgBE5HoFwH5CIBHkQiBEpHoEwH5CEBHkQgBEpHoDwH5CABHkQiBEZHoCwH5CLBGkQjBEJHo0wD5CKBGkQihEJHorwH5CIBGkQQBEJEIQEaRCYEPkQgARpEIAQ+R6KcfqQjARZEJgQ6RCIBFkQgBDpHopx6pCEBFkQmBDZEIAEWRCAENkeinHakIwESRCIEMkejrAPkIcESRCMELkejPAPkIYESRCKELkeirAfkIQESRCwELkQgARJEJgQqRCMBDkQgBCpHopxupCIBDkQmBCZEIQEORCAEJkeinGqkIEujSAwFnnggAQ5EIgQiR6KcB+VFQQKlDIEGp6KMB+UkVQKlbGUGpCMBCkQgBCJHonwH5CIBCkQiBB5HomwH5CEBCkQgBB5HolwH5CDBCkRChBpEIIEKRB0EGkQiAQJEIgQGRCkBAkQAEQG1ECcNt6ocB+YQoYh7oiwH5BQFA/aUoYh4KEEKRSOEFkQoAQpFCQQWRCsBBkUqhBJEMgEGRjAEEkQ1AQZGtYQORDgBBkc7BApEPwECR7yECke9rAfnmAUD9xihiHu5vAfnHAUD95yhiHu1zAfmwAUD9ECpiHux3AfmRAUD9MSpiHup7AflSAUD9UipiHlMAQP1zKmIeFBB+HkIodB5UEGD9lCpiHuiDAfkVCWD9tSpiHuePAfn2CGD91ipiHvCTAfkXCmD94ipiHhfkAC+UancetWp3HtZqdx5XaHceAhBuHhBAQJEKggGRQjhhHhCAQJEIIgKR6KsYqZR6Yx4QwECRCsICkbV6Yx4QAEGRCGIDkeirF6nWemMeEEBBkQoCBJH3emMeEIBBkQiiBJHoqxap4n8B+UMMQP0QwEGRCkIFkRAAQpEIwgWR6KsVqRAQQpEKIgaRECBCkQiCBpHoqxSpEDBCkQriBpEQQEKRCIIHkeirE6kQgEKRCgIIkRDAQpEIggiR6KsSqRAAQ5EKAgmREEBDkQiCCZHoqxGpEIBDkQoCCpEQwEORCIIKkeirEKkQAESRCgILkRBARJEIQguR6KsPqRBQRJEKgguREGBEkQjCC5Hoqw6pEHBEkQoCDJEQgESRCIIMkeirDakQwESRCgINkRAARZEIgg2R6KsMqRBARZEKAg6REIBFkQiCDpHoqwupEMBFkQoCD5EQAEaRCIIPkeirCqkQQEaRCgIQkRCARpEIQhCR6KsJqRCQRpEKghCREKBGkQjCEJHoqwipELBGkQoCEZEQwEaRCIIRkeirB6kQAEeRCgISkRBAR5EIghKR6KsGqRCAR5EKAhOREMBHkQiCE5HoqwWpEABIkQoCFJEQQEiRCIIUkeirBKkQgEiRCgIVkRDASJEIQhWR6KsDqRAEkFLr5wD5aAEQi+hnAfnkBwH5iAAQi+hjAfnzJwH5aAIQi+gbAPkQ0EiRCoIVkRDgSJEIwhWR6CsCqRDwSJEIAhaR6A8A+YgAeB7ovwK5qgB4HsgAeB7ouwK56AB4HugrAikIAnge6LcCuSgCeB7oswK5SAJ4HuivArloAnge6KsCuYgCeB7opwK5qAJ4HuijArnoAwEqygJ4HuqfArnqAnge6psCuQqQAJHqBwD56C8B+eYzAfkkhkD88UsB+ei3QfkFDUD9pQhhHuqHQflGDUD9xRRCHxEhQLkFCQD96wMIqicyQJLn8H3TpRBAH+i/QrkmAghL4AMIqugHQPkFaSf8xjAAEkUVQP2mCGEe7ItB+YcJQP0FWWb85hhCH0YRAP3GEEAf6BdAuSYCCEvkAwiq6MtA+QZpJ/zGMAAShhFA/cYIYR7ta0H5pwlA/RBZZvzmGEIfhg0A/cYQQB/ou0K5JgIIS+EDCKrox0D5Bmkn/MYwABKmEUD9xghhHu5vQfnHCUD9EVlm/OYYQh+mDQD9xhBAH/wTQLkmAhxL6MNA+QZpJ/zGMAASxhFA/cYIYR7vc0H55wlA/RJZZvzmGEIfxg0A/cYQQB/6t0K5JgIaS+i/QPkGaSf8xjAAEuYRQP3wAw+qxghhHu93QfnnCUD9E1lm/OYYQh/HEEAf6LtA+QdpJ/zzs0K5JgITS/gDE6pFCQD9xjAAEgdZZvz0EUD9lAphHpAFAP3qe0H5VQlA/bRSQh+VEkAf6LdA+RVpJ/yxBQD9Bg4A/eyvQrkmAgxL9QMMqsYwABIGWWb80gUA/fQNAP1UEUD9lAphHuh/QfkVCUD97AMIqrRSQh8TBgD9VA0A/YQSQB/os0D5BGkn/POrQrkmAhNL5wUA/cYwABIEWWb86INB+RQFQP3tAwiqBSplHkYFAP2lKHEepShyHqUocx6lKGcepShmHoQFAP2kKGQehBJDHyYqQJLG8H3T6K9A+QRpJvzqp0K5JwIKS/YDCqrnKAASBVln/OiPQfkGBUD96gMIqqUBAP3EOGQehFBDH+ijQrknAghL/gMIqucoABLoq0D5BGkm/AVZZ/zsk0H5hwVA/eQ4ZB6EGEMfRQEA/einQPkEaSb87p9CuScCDkvnKAASBVln/IUBAP3ql0H5RQVA/aQ4ZB6EHEMf6KNA+QRpJvz3m0K5MQIXSzEqABIGWXH8hJRDH0YBAP0khQD86T8B+YSGQPz0RwH5RQ1A/egDCqqlCGEe6ZtB+SYFQP3FFEIf6gMLqnEhQLkmMkCSx/B90wUJAP2lEEAf7AMAqiYCAEvGMAASJg1A/eifQPkFaSf8xQhhHuufQflmBUD9xhRCHyYJAP0FWWb8xhBAH+IDBKomAgRLxjAAEmcNQP3om0D5Bmkn/OYIYR7tp0H5pwVA/eYYQh9mCQD9B1lm/MYQQB8mAhNLxjAAErANQP3ol0D5Bmkn/AYKYR70k1qpkAZA/QYaQh+mCQD9EFlm/MYQQB/wAwGqJgIBS8YwABKRDkD96JNA+QZpJ/wmCmEekQRA/SYaQh+GCgD9EVlm/MYQQB8mAhxLxjAAEpIMQP3oj0D5Bmkn/EYKYR7hg1upMgRA/UYaQh+GCAD9Ellm/MYQQB/oi0D5Bmkn/CYCGkvGMAASJQEA/QZZZvwzDED9cwphHhQEQP1nAQD9k05CH3QSQB/oh0D5FGkn/CYCFUuwAQD9xjAAEhRZZvwVDED9tQphHpECAP3v50D59gVA/dVWQh+kEkAf6INA+QRpJ/ySAAD9MwgA/SYCGEvGMAASBFlm/CYAAP0VCAD98w1g/eUoZR6lKHAepShxHhQAAP2lKHIepShmHqUodB6lKGQeZRZDH+QBAP0mKkCSxvB90/kDFqonAhZL5ygAEuh/QPkFaSb8BFln/OirQfkGAUD9xThlHqVMQx/kCSD96aNOqQVpJvwnAh5L9gMequcoABIEWWf86GdB+QQBAP3rz0D5ZAVA/YU4ZR6lGEMfJWkm/P4DDqonAg5L5ygAEiZZZ/xnDWD9ZgEA/eU4ZR6kEEMf6AMXqjECF0sxKgAS6XNA+SRpJvwlWXH8ZQkg/YScQx+khAD85TsB+WSEQPzjQwH5ZRVg/aUIYR7uN12pxgVA/cUUQh9RIUC59QMKqiYyQJLH8H3TphBAHyYCDEtlESD9xjAAEsUNQP2lCGEepwVA/eonTakmaSf85hRCH8UQQB9FaSf8JVlm/MYJAP0mAhBLxjAAEqcNQP1GWWb85whhHuwXXqmQBUD9Bx5CH/AQQB8mAhhLpwkA/cYwABKHDUD95whhHrEEQP3wJ0ypMGkn/CceQh/wEEAfEGon/DBZZvyHCQD9JgICS/gDAqrGMAASpwxA/RFaZvznCGEe4vtA+VIEQP1HHkIf8hBAHyYCGkunCAD9xjAAEkcMQP3nCGEe+o9fqVMHQP3wJ0upMmkn/GceQh/yEEAfEmon/DJZZvxHCAD9JgITS8YwABIHWmb8xQEA/VMPQP1zCmEedARA/ZNOQh9TCwD9pgEA/XMSQB/pV0D5M2kn/CYCHEv3AxyqxjAAEpABAP0zWWb8dAxA/ZQKYR7wB0H5FQZA/bEAAP20UkIfdAgA/YQSQB/pU0D5JGkn/FIAAP3zr0K5JgITS8YwABIkWWb8FA5g/UcDAP3FKGUepShwHqUocR6lKHIepShnHnMAAP2lKHMepShkHoUWQx8mKkCSxvB90wQCAP3pT0D5JWkm/CcCGUvnKAASJFln/AQKIP3pr0H5JAFA/YU4ZR6lUEMf6UtA+SVpJvwnAhZL5ygAEiZZZ/z500D5JwdA/eljQfkmAQD95ThlHqQQQx8nAh5L5ygAEulHQPkkaSb8JVln/CYPYP3EOGQehBxDHyUDAP3pQ0D5JGkm/DECCEsxKgASJVlx/CULIP2EmEMfZIcA/Ps3Afnoo0H5E4VA/OijAfkkF2D9hAhhHuoLQflFBUD9sSJAuSYyQJKkEEIfx/B904VMQB8mAhNLxjAAEvM/QPllaif8RQ1A/aUIYR7+D0H5xgdA/cUUQh9mWmb8p0xAHyYCGEvGMAAS0A9A/fM7QPlnaif8BwphHvsTQflwB0D9Bx5CH/FMQB9wWmb88zdA+XFqJ/zos0K5JgIIS8YwABJxWmb8cg9A/VIKYR78F0H5lAdA/ZJKQh8mAhdLVE5AH8YwABKVD0D9tQphHvgbQfkWB0D99c9FqXRqJ/zUVkIflU5AH7VqJ/x1Wmb86LdCuSYCCEvGMAASFg9A/dcKYR62Wmb89x9B+fgGQP0XX0If6KtCuSYCCEvGMAAS+A5A/flOQB8YC2Ee9iNB+doGQP1YY0IfGk9AH+jPRKl5aif82Q5A/TkLYR71J0H5uwZA/XlnQh8aaSf8M09AH+kjQPkzaSf8579CuScCB0tzWmb85jAAEue7QrknAgdL5zAAEroOYP0bWWb8HCpmHpwrcR6cK3UenCt2Hj1ZZ/ycK3MenCt7HpwrfR5cc0MfJipAksbwfdPoH0D5HGkm/OmnQrknAglL5ygAEh5ZZ/zos0H5HwFA/fw7fB6aa0Mf6KNCuScCCEvoF0D5Gmkm/OcoABLzK0H5fAZA/Zo7eh5af0MfH1ln/OgTQPkaaSb86Z9CuScCCUvnKAASCFln/GkOYP06OXoeWnNDH+kPQPk6aSb85jNB+SQTIP1GAQD9RQkA/ccLAP3QAwD9cQMA/XILAP2VAwD9lAsA/RcLAP0WAwD98wIA/fgKAP3bAgD92QoA/b0CAP2+CiD96BtA+R8BAP1oAgD955tCuTECB0sxKgASJFlx/GQKIP1Ep0MfxIQA/Om3QfkxIUC5MQYAETEhALkkCUD9JA0A/emHQfkkCUD9JRFA/SQNAP0lFQD96YtB+SQFQP0kCQD9JA1A/fFrQfklBkD9JBEA/SUKAP0kDkD9JBIA/elvQfkkBUD9JQ1A/SQJAP0lEQD96XNB+SQFQP0kCQD9JA1A/fF3QfklBkD9JBEA/SUKAP0kDkD9JBIA/el7QfkkBUD9JQ1A/SQJAP0lEQD96X9B+SQFQP0kCQD96YNB+SQBQP3xj0H5JQJA/SQFAP0lBgD96ZNB+SQBQP0kBQD96ZdB+SQBQP0lCUD9JAUA/SUNAP3pm0H5JAFA/SQFAP0kCUD98Z9B+SUCQP0kDQD9JQYA/SQKQP0kDgD96adB+SQBQP0lCUD9JAUA/SUNAP3xS0H5hAJA/YQGAP2ECkD9hQBA/YQOAP3pP0H5hQQA/YQIQP2EDAD9JABA/SUIQP0kBAD9JQwA/QQAQP0EBAD9BAhA/eUBQP0EDAD95QUA/eQJYP3kDSD972dB+eQBQP1lAUD976tB+eQBAP1lBQD9ZAlg/WQNIP1kEWD9xQFA/WQVIP3FBQD9xAlA/cQNAP2kAUD9pQlA/aQFAP2lDQD9hAFA/YQFAP2ECUD9pQBA/YQNAP2lBAD9pAhA/aQMAP3lO0H5RABA/UUIQP1EBAD9RQwA/fRHQflEA0D9RAcA/UQLQP1lAED9RA8A/WUEAP1kCED9ZAwA/eNDQfkEAkD9BQpg/QQGAP0FDiD962NB+WQBQP3rr0H5ZAEA/SQDQP0lC2D9JAcA/SUPIP0kE2D9JBcg/UQBQP1FCUD9RAUA/UUNAP3EA0D9xAcA/cQLQP1lA0D9xA8A/WUHAP1kC0D9ZA8A/YQDQP2FC0D9hAcA/YUPAP0EA0D9BAcA/QQLQP3lAkD9BA8A/eUGAP3kCkD95A4A/cQCQP3FCkD9xAYA/cUOAP2kAkD9pAYA/aQKYP0FAUD96C9B+aQOIP37N0H56rNB+UUBAP1kAkD9ZAYA/WQKYP1kDiD9CAUA8YGT/1T/ww2R/XtGqfRPRan2V0Sp+F9DqfpnQqn8b0Gp6SPHbMADX9Z7Im5hbWUiOiAiZmF1c3RnZW4tNTEiLCJmaWxlbmFtZSI6ICJmYXVzdGdlbi01MSIsInZlcnNpb24iOiAiMi43NC42IiwiY29tcGlsZV9vcHRpb25zIjogIi1sYW5nIGxsdm0gMTUuMC43IC1jdCAxIC1lcyAxIC1tY2QgMTYgLW1kZCAxMDI0IC1tZHkgMzMgLWRvdWJsZSAtZnR6IDAiLCJsaWJyYXJ5X2xpc3QiOiBbIi9Vc2Vycy9qb3NlcGhsYXJyYWxkZS9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcy9zdGRmYXVzdC5saWIiLCIvVXNlcnMvam9zZXBobGFycmFsZGUvRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvcmV2ZXJicy5saWIiLCIvVXNlcnMvam9zZXBobGFycmFsZGUvRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvbWF0aHMubGliIiwiL1VzZXJzL2pvc2VwaGxhcnJhbGRlL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL3BsYXRmb3JtLmxpYiIsIi9Vc2Vycy9qb3NlcGhsYXJyYWxkZS9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcy9maWx0ZXJzLmxpYiIsIi9Vc2Vycy9qb3NlcGhsYXJyYWxkZS9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcy9kZWxheXMubGliIl0sImluY2x1ZGVfcGF0aG5hbWVzIjogWyIvVXNlcnMvam9zZXBobGFycmFsZGUvRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMiLCIvc2hhcmUvZmF1c3QiLCIvdXNyL2xvY2FsL3NoYXJlL2ZhdXN0IiwiL3Vzci9zaGFyZS9mYXVzdCIsIi4iXSwic2l6ZSI6IDIzNjA3MjAsImlucHV0cyI6IDQsIm91dHB1dHMiOiA0LCJzcl9pbmRleCI6IDY1NTcyLCJtZXRhIjogWyB7ICJjb21waWxlX29wdGlvbnMiOiAiLWxhbmcgbGx2bSAxNS4wLjcgLWN0IDEgLWVzIDEgLW1jZCAxNiAtbWRkIDEwMjQgLW1keSAzMyAtZG91YmxlIC1mdHogMCIgfSx7ICJkZWxheXMubGliL25hbWUiOiAiRmF1c3QgRGVsYXkgTGlicmFyeSIgfSx7ICJkZWxheXMubGliL3ZlcnNpb24iOiAiMS4xLjAiIH0seyAiZmlsZW5hbWUiOiAiZmF1c3RnZW4tNTEiIH0seyAiZmlsdGVycy5saWIvYWxscGFzc19jb21iOmF1dGhvciI6ICJKdWxpdXMgTy4gU21pdGggSUlJIiB9LHsgImZpbHRlcnMubGliL2FsbHBhc3NfY29tYjpjb3B5cmlnaHQiOiAiQ29weXJpZ2h0IChDKSAyMDAzLTIwMTkgYnkgSnVsaXVzIE8uIFNtaXRoIElJSSA8am9zX2Njcm1hLnN0YW5mb3JkLmVkdT4iIH0seyAiZmlsdGVycy5saWIvYWxscGFzc19jb21iOmxpY2Vuc2UiOiAiTUlULXN0eWxlIFNUSy00LjMgbGljZW5zZSIgfSx7ICJmaWx0ZXJzLmxpYi9sb3dwYXNzMF9oaWdocGFzczEiOiAiTUlULXN0eWxlIFNUSy00LjMgbGljZW5zZSIgfSx7ICJmaWx0ZXJzLmxpYi9uYW1lIjogIkZhdXN0IEZpbHRlcnMgTGlicmFyeSIgfSx7ICJmaWx0ZXJzLmxpYi92ZXJzaW9uIjogIjEuMy4wIiB9LHsgIm1hdGhzLmxpYi9hdXRob3IiOiAiR1JBTUUiIH0seyAibWF0aHMubGliL2NvcHlyaWdodCI6ICJHUkFNRSIgfSx7ICJtYXRocy5saWIvbGljZW5zZSI6ICJMR1BMIHdpdGggZXhjZXB0aW9uIiB9LHsgIm1hdGhzLmxpYi9uYW1lIjogIkZhdXN0IE1hdGggTGlicmFyeSIgfSx7ICJtYXRocy5saWIvdmVyc2lvbiI6ICIyLjguMCIgfSx7ICJuYW1lIjogImZhdXN0Z2VuLTUxIiB9LHsgInBsYXRmb3JtLmxpYi9uYW1lIjogIkdlbmVyaWMgUGxhdGZvcm0gTGlicmFyeSIgfSx7ICJwbGF0Zm9ybS5saWIvdmVyc2lvbiI6ICIxLjMuMCIgfSx7ICJyZXZlcmJzLmxpYi9tb25vX2ZyZWV2ZXJiOmF1dGhvciI6ICJSb21haW4gTWljaG9uIiB9LHsgInJldmVyYnMubGliL25hbWUiOiAiRmF1c3QgUmV2ZXJiIExpYnJhcnkiIH0seyAicmV2ZXJicy5saWIvdmVyc2lvbiI6ICIxLjMuMCIgfV0sInVpIjogWyB7InR5cGUiOiAidmdyb3VwIiwibGFiZWwiOiAiZmF1c3RnZW4tNTEiLCJpdGVtcyI6IFsgeyJ0eXBlIjogImhzbGlkZXIiLCJsYWJlbCI6ICJkYW1wIiwic2hvcnRuYW1lIjogImRhbXAiLCJhZGRyZXNzIjogIi9mYXVzdGdlbi01MS9kYW1wIiwiaW5kZXgiOiA4LCJpbml0IjogMC4yNSwibWluIjogMC4xLCJtYXgiOiAxLCJzdGVwIjogMC4wMX0seyJ0eXBlIjogImhzbGlkZXIiLCJsYWJlbCI6ICJmYjEiLCJzaG9ydG5hbWUiOiAiZmIxIiwiYWRkcmVzcyI6ICIvZmF1c3RnZW4tNTEvZmIxIiwiaW5kZXgiOiAwLCJpbml0IjogMC45LCJtaW4iOiAwLCJtYXgiOiAxLCJzdGVwIjogMC4wMX0seyJ0eXBlIjogImhzbGlkZXIiLCJsYWJlbCI6ICJmYjIiLCJzaG9ydG5hbWUiOiAiZmIyIiwiYWRkcmVzcyI6ICIvZmF1c3RnZW4tNTEvZmIyIiwiaW5kZXgiOiA1MjQ2NDgsImluaXQiOiAwLjUsIm1pbiI6IDAsIm1heCI6IDEsInN0ZXAiOiAwLjAxfSx7InR5cGUiOiAiaHNsaWRlciIsImxhYmVsIjogInNwcmVhZCIsInNob3J0bmFtZSI6ICJzcHJlYWQiLCJhZGRyZXNzIjogIi9mYXVzdGdlbi01MS9zcHJlYWQiLCJpbmRleCI6IDY1NTkyLCJpbml0IjogMCwibWluIjogMCwibWF4IjogMTAwMCwic3RlcCI6IDF9XX1dfQAAAAAAuAMAAAEAAGy0AwAAAQAAXYAAAAAKAABsfAAAAAoAAF0IAnyAAQgCtAe4BwAAAAAAiAsAAA4BAAAAAAAAAAAAAAEAAAAOAgAAoBYAAAAAAACCCwAADgIAAKAWAAAAAAAAXgsAAA8BAACsAwAAAAAAABQLAAAPAQAAAAAAAAAAAABQCwAADwEAAMADAAAAAAAABgsAAA8BAACwAwAAAAAAAG0LAAAPAQAAtAMAAAAAAAA8CwAADwEAAAQAAAAAAAAAJAsAAA8BAACEAQAAAAAAAHsLAAABAAAAAAAAAAAAAAAAX3sibmFtZSI6ICJmYXVzdGdlbi01MSIsImZpbGVuYW1lIjogImZhdXN0Z2VuLTUxIiwidmVyc2lvbiI6ICIyLjc0LjYiLCJjb21waWxlX29wdGlvbnMiOiAiLWxhbmcgbGx2bSAxNS4wLjcgLWN0IDEgLWVzIDEgLW1jZCAxNiAtbWRkIDEwMjQgLW1keSAzMyAtZG91YmxlIC1mdHogMCIsImxpYnJhcnlfbGlzdCI6IFsiL1VzZXJzL2pvc2VwaGxhcnJhbGRlL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL3N0ZGZhdXN0LmxpYiIsIi9Vc2Vycy9qb3NlcGhsYXJyYWxkZS9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcy9yZXZlcmJzLmxpYiIsIi9Vc2Vycy9qb3NlcGhsYXJyYWxkZS9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcy9tYXRocy5saWIiLCIvVXNlcnMvam9zZXBobGFycmFsZGUvRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvcGxhdGZvcm0ubGliIiwiL1VzZXJzL2pvc2VwaGxhcnJhbGRlL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL2ZpbHRlcnMubGliIiwiL1VzZXJzL2pvc2VwaGxhcnJhbGRlL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL2RlbGF5cy5saWIiXSwiaW5jbHVkZV9wYXRobmFtZXMiOiBbIi9Vc2Vycy9qb3NlcGhsYXJyYWxkZS9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcyIsIi9zaGFyZS9mYXVzdCIsIi91c3IvbG9jYWwvc2hhcmUvZmF1c3QiLCIvdXNyL3NoYXJlL2ZhdXN0IiwiLiJdLCJzaXplIjogMjM2MDcyMCwiaW5wdXRzIjogNCwib3V0cHV0cyI6IDQsInNyX2luZGV4IjogNjU1NzIsIm1ldGEiOiBbIHsgImNvbXBpbGVfb3B0aW9ucyI6ICItbGFuZyBsbHZtIDE1LjAuNyAtY3QgMSAtZXMgMSAtbWNkIDE2IC1tZGQgMTAyNCAtbWR5IDMzIC1kb3VibGUgLWZ0eiAwIiB9LHsgImRlbGF5cy5saWIvbmFtZSI6ICJGYXVzdCBEZWxheSBMaWJyYXJ5IiB9LHsgImRlbGF5cy5saWIvdmVyc2lvbiI6ICIxLjEuMCIgfSx7ICJmaWxlbmFtZSI6ICJmYXVzdGdlbi01MSIgfSx7ICJmaWx0ZXJzLmxpYi9hbGxwYXNzX2NvbWI6YXV0aG9yIjogIkp1bGl1cyBPLiBTbWl0aCBJSUkiIH0seyAiZmlsdGVycy5saWIvYWxscGFzc19jb21iOmNvcHlyaWdodCI6ICJDb3B5cmlnaHQgKEMpIDIwMDMtMjAxOSBieSBKdWxpdXMgTy4gU21pdGggSUlJIDxqb3NfY2NybWEuc3RhbmZvcmQuZWR1PiIgfSx7ICJmaWx0ZXJzLmxpYi9hbGxwYXNzX2NvbWI6bGljZW5zZSI6ICJNSVQtc3R5bGUgU1RLLTQuMyBsaWNlbnNlIiB9LHsgImZpbHRlcnMubGliL2xvd3Bhc3MwX2hpZ2hwYXNzMSI6ICJNSVQtc3R5bGUgU1RLLTQuMyBsaWNlbnNlIiB9LHsgImZpbHRlcnMubGliL25hbWUiOiAiRmF1c3QgRmlsdGVycyBMaWJyYXJ5IiB9LHsgImZpbHRlcnMubGliL3ZlcnNpb24iOiAiMS4zLjAiIH0seyAibWF0aHMubGliL2F1dGhvciI6ICJHUkFNRSIgfSx7ICJtYXRocy5saWIvY29weXJpZ2h0IjogIkdSQU1FIiB9LHsgIm1hdGhzLmxpYi9saWNlbnNlIjogIkxHUEwgd2l0aCBleGNlcHRpb24iIH0seyAibWF0aHMubGliL25hbWUiOiAiRmF1c3QgTWF0aCBMaWJyYXJ5IiB9LHsgIm1hdGhzLmxpYi92ZXJzaW9uIjogIjIuOC4wIiB9LHsgIm5hbWUiOiAiZmF1c3RnZW4tNTEiIH0seyAicGxhdGZvcm0ubGliL25hbWUiOiAiR2VuZXJpYyBQbGF0Zm9ybSBMaWJyYXJ5IiB9LHsgInBsYXRmb3JtLmxpYi92ZXJzaW9uIjogIjEuMy4wIiB9LHsgInJldmVyYnMubGliL21vbm9fZnJlZXZlcmI6YXV0aG9yIjogIlJvbWFpbiBNaWNob24iIH0seyAicmV2ZXJicy5saWIvbmFtZSI6ICJGYXVzdCBSZXZlcmIgTGlicmFyeSIgfSx7ICJyZXZlcmJzLmxpYi92ZXJzaW9uIjogIjEuMy4wIiB9XSwidWkiOiBbIHsidHlwZSI6ICJ2Z3JvdXAiLCJsYWJlbCI6ICJmYXVzdGdlbi01MSIsIml0ZW1zIjogWyB7InR5cGUiOiAiaHNsaWRlciIsImxhYmVsIjogImRhbXAiLCJzaG9ydG5hbWUiOiAiZGFtcCIsImFkZHJlc3MiOiAiL2ZhdXN0Z2VuLTUxL2RhbXAiLCJpbmRleCI6IDgsImluaXQiOiAwLjI1LCJtaW4iOiAwLjEsIm1heCI6IDEsInN0ZXAiOiAwLjAxfSx7InR5cGUiOiAiaHNsaWRlciIsImxhYmVsIjogImZiMSIsInNob3J0bmFtZSI6ICJmYjEiLCJhZGRyZXNzIjogIi9mYXVzdGdlbi01MS9mYjEiLCJpbmRleCI6IDAsImluaXQiOiAwLjksIm1pbiI6IDAsIm1heCI6IDEsInN0ZXAiOiAwLjAxfSx7InR5cGUiOiAiaHNsaWRlciIsImxhYmVsIjogImZiMiIsInNob3J0bmFtZSI6ICJmYjIiLCJhZGRyZXNzIjogIi9mYXVzdGdlbi01MS9mYjIiLCJpbmRleCI6IDUyNDY0OCwiaW5pdCI6IDAuNSwibWluIjogMCwibWF4IjogMSwic3RlcCI6IDAuMDF9LHsidHlwZSI6ICJoc2xpZGVyIiwibGFiZWwiOiAic3ByZWFkIiwic2hvcnRuYW1lIjogInNwcmVhZCIsImFkZHJlc3MiOiAiL2ZhdXN0Z2VuLTUxL3NwcmVhZCIsImluZGV4IjogNjU1OTIsImluaXQiOiAwLCJtaW4iOiAwLCJtYXgiOiAxMDAwLCJzdGVwIjogMX1dfV19AF9kZXN0cm95bXlkc3AAX2NsYXNzSW5pdG15ZHNwAF9pbnN0YW5jZUNvbnN0YW50c215ZHNwAF9pbnN0YW5jZUNsZWFybXlkc3AAX2NvbXB1dGVteWRzcABfYWxsb2NhdGVteWRzcABfZ2V0SlNPTm15ZHNwAF9iemVybwBsdG1wMQBsdG1wMAAAAA==",
					"machinecode_size" : 16280,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "multichannelsignal", "", "" ],
					"patching_rect" : [ 165.0, 274.0, 81.0, 22.0 ],
					"sample_format" : 1,
					"serial_number" : "WCYDXQXPNQ64 bits",
					"sourcecode" : "import(\"stdfaust.lib\");\n\r\nfb1 = hslider(\"fb1\", 0.9, 0, 1, 0.01);\r\nfb2 = hslider(\"fb2\", 0.5, 0, 1, 0.01);\r\ndamp = hslider(\"damp\", 0.25, 0.1, 1, 0.01);\r\nspread = hslider(\"spread\", 0, 0, 1000, 1);\r\n\r\nprocess = par(i, 4, re.mono_freeverb(fb1, fb2, damp, spread));",
					"sourcecode_size" : 259,
					"text" : "mc.faustgen~",
					"varname" : "faustgen-5729763552",
					"version" : "1.71"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 82.0, 195.0, 185.0, 22.0 ],
					"text" : "mc.separate~ 4 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 82.0, 106.0, 225.0, 22.0 ],
					"text" : "poly~ furialis.spat.unit~ 10 @args furialis"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-10", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 2 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 3 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 2,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"order" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ]
	}

}
