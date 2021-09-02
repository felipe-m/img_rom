{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "e5dd3879-f74b-46b9-b9aa-4506eadd42da",
          "type": "basic.output",
          "data": {
            "name": "hsync",
            "pins": [
              {
                "index": "0",
                "name": "D6",
                "value": "10"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 632,
            "y": 8
          }
        },
        {
          "id": "ea9b6e34-d5ab-4b85-a98f-c2f7b8dec4ae",
          "type": "basic.output",
          "data": {
            "name": "red",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "D0",
                "value": "2"
              },
              {
                "index": "0",
                "name": "D1",
                "value": "1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1776,
            "y": 64
          }
        },
        {
          "id": "53f50215-a435-47c0-8ad4-ff7f76a22b18",
          "type": "basic.output",
          "data": {
            "name": "vsync",
            "pins": [
              {
                "index": "0",
                "name": "D7",
                "value": "9"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 648,
            "y": 88
          }
        },
        {
          "id": "581d2534-1d26-42cb-ae4b-dcec624e963b",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "34"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 240,
            "y": 136
          }
        },
        {
          "id": "5b9ee5a3-3508-4eba-bf54-6562e586dd4f",
          "type": "basic.output",
          "data": {
            "name": "green",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "D2",
                "value": "4"
              },
              {
                "index": "0",
                "name": "D3",
                "value": "3"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1776,
            "y": 168
          }
        },
        {
          "id": "51f4b540-43e6-4afd-85a4-d21d9f0e94ee",
          "type": "basic.output",
          "data": {
            "name": "blue",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "D4",
                "value": "8"
              },
              {
                "index": "0",
                "name": "D5",
                "value": "7"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1776,
            "y": 272
          }
        },
        {
          "id": "6549b453-419b-4f79-8920-0cbf4664dc39",
          "type": "basic.input",
          "data": {
            "name": "clk_brd",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "49"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": 128,
            "y": 288
          }
        },
        {
          "id": "53d08452-b84c-42b0-9223-f3308d77a9a8",
          "type": "d8d107dfabc12f0309b4721f237038d492c15ec3",
          "position": {
            "x": 264,
            "y": 248
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
          "type": "ec49d1e47028e02ece23b54d0b32f6631b537d21",
          "position": {
            "x": 424,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "c1dbab22-4648-4e50-b734-2f4071902d6e",
          "type": "basic.code",
          "data": {
            "code": "// Generate the address for the Name Table memory\n\n//assign cuad_col = col[8:4];\n//assign cuad_fila = fila[8:4];\nassign dir_ntable = {fila[8:4], col[8:4]};\n// useful to know when we are over column 511\nassign col9 = col[9];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "col",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "fila",
                  "range": "[9:0]",
                  "size": 10
                }
              ],
              "out": [
                {
                  "name": "dir_ntable",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "col9"
                }
              ]
            }
          },
          "position": {
            "x": 656,
            "y": 200
          },
          "size": {
            "width": 352,
            "height": 152
          }
        },
        {
          "id": "c4625e17-5e72-43cd-88f7-6a6ebb32239c",
          "type": "basic.info",
          "data": {
            "info": "Wire connections",
            "readonly": false
          },
          "position": {
            "x": 656,
            "y": 160
          },
          "size": {
            "width": 176,
            "height": 40
          }
        },
        {
          "id": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
          "type": "basic.code",
          "data": {
            "code": " reg [1:0] rojo, verde, azul;\r\n assign red = rojo;\r\n assign green = verde;\r\n assign blue = azul;\r\n \r\n always @(*)\r\n  begin\r\n    rojo   = 2'b00;\r\n    verde  = 2'b00;\r\n    azul   = 2'b00;\r\n    //if (visible) begin\r\n      if (col9 == 1'b0) begin  // less than 512\r\n        rojo  = ~num_patron [7:6];\r\n        //verde = ~num_patron [7:6];\r\n        verde = num_patron [5:4]; //instead of num_patron [7:6], to have more colors\r\n        //azul  = ~num_patron [7:6];\r\n        azul  = num_patron [3:2]; //instead of num_patron [7:6], to have more colors\r\n      end\r\n    //end\r\n  end",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "num_patron",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "col9"
                }
              ],
              "out": [
                {
                  "name": "red",
                  "range": "[1:0]",
                  "size": 2
                },
                {
                  "name": "green",
                  "range": "[1:0]",
                  "size": 2
                },
                {
                  "name": "blue",
                  "range": "[1:0]",
                  "size": 2
                }
              ]
            }
          },
          "position": {
            "x": 1344,
            "y": 136
          },
          "size": {
            "width": 344,
            "height": 232
          }
        },
        {
          "id": "ac4fbf1a-e569-4af0-a75c-1832697072b0",
          "type": "ac2f61335f84cc822618138db9c520e2e2ac2eb7",
          "position": {
            "x": 1120,
            "y": 144
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "4c83abc8-dd84-45eb-a1ed-9474a00749ba",
          "type": "basic.info",
          "data": {
            "info": "Color assignment",
            "readonly": false
          },
          "position": {
            "x": 1344,
            "y": 104
          },
          "size": {
            "width": 192,
            "height": 32
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "53d08452-b84c-42b0-9223-f3308d77a9a8",
            "port": "584255ae-1237-4bc8-a669-c92466c9372d"
          },
          "target": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "fcec189e-1ce5-4081-a0cd-f84edd905738"
          }
        },
        {
          "source": {
            "block": "6549b453-419b-4f79-8920-0cbf4664dc39",
            "port": "out"
          },
          "target": {
            "block": "53d08452-b84c-42b0-9223-f3308d77a9a8",
            "port": "ec5f8ec7-9259-4ff7-9376-e75e5bb64ef1"
          }
        },
        {
          "source": {
            "block": "581d2534-1d26-42cb-ae4b-dcec624e963b",
            "port": "out"
          },
          "target": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "4961a007-9b0f-474f-a73e-c02e99461b95"
          }
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "ce9b9f02-391c-416d-a455-217278662a02"
          },
          "target": {
            "block": "e5dd3879-f74b-46b9-b9aa-4506eadd42da",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "354f80a2-bb32-4165-a271-37d15b197a7e"
          },
          "target": {
            "block": "53f50215-a435-47c0-8ad4-ff7f76a22b18",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "c41b16c0-fc64-495f-bd40-7f2812553acb"
          },
          "target": {
            "block": "c1dbab22-4648-4e50-b734-2f4071902d6e",
            "port": "col"
          },
          "size": 10
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "f79463ca-feb0-49f0-9c94-7ecdcb1ef6d4"
          },
          "target": {
            "block": "c1dbab22-4648-4e50-b734-2f4071902d6e",
            "port": "fila"
          },
          "size": 10
        },
        {
          "source": {
            "block": "c1dbab22-4648-4e50-b734-2f4071902d6e",
            "port": "col9"
          },
          "target": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "col9"
          }
        },
        {
          "source": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "red"
          },
          "target": {
            "block": "ea9b6e34-d5ab-4b85-a98f-c2f7b8dec4ae",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "green"
          },
          "target": {
            "block": "5b9ee5a3-3508-4eba-bf54-6562e586dd4f",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "blue"
          },
          "target": {
            "block": "51f4b540-43e6-4afd-85a4-d21d9f0e94ee",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "c1dbab22-4648-4e50-b734-2f4071902d6e",
            "port": "dir_ntable"
          },
          "target": {
            "block": "ac4fbf1a-e569-4af0-a75c-1832697072b0",
            "port": "f60e7ccd-ea83-4c70-bcf4-c4a32d17f64b"
          },
          "size": 10
        },
        {
          "source": {
            "block": "ac4fbf1a-e569-4af0-a75c-1832697072b0",
            "port": "3156d8d0-7df0-42f8-8709-e2c38220f2a2"
          },
          "target": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "num_patron"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {
    "d8d107dfabc12f0309b4721f237038d492c15ec3": {
      "package": {
        "name": "pll12to50mhz",
        "version": "1.0",
        "description": "Generates a 50MHz clock from a 12MHz clock",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22394.691%22%20height=%22103.671%22%20viewBox=%220%200%20104.42855%2027.429573%22%3E%3Cpath%20d=%22M0%2026.946h7.143V.484h7.143v26.462h7.143V.484h7.142v26.462h7.143V.484h7.143v26.462H50%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.8%22/%3E%3Cg%20stroke=%22#000%22%20stroke-width=%22.953%22%20fill=%22none%22%3E%3Cpath%20d=%22M.454%2032.417h3.715V5.958h3.714v26.459h3.715V5.958h3.715v26.459h3.715V5.958h3.715v26.459h3.715%22%20transform=%22matrix(.70385%200%200%201.00066%2054.11%20-5.485)%22/%3E%3Cpath%20d=%22M22.679%2032.417h3.715V5.958h3.715v26.459h3.714V5.958h3.715v26.459h3.715V5.958h3.715v26.459h3.715%22%20transform=%22matrix(.70385%200%200%201.00066%2054.11%20-5.485)%22/%3E%3Cpath%20d=%22M45.487%2032.417h3.715V5.958h3.715v26.459h3.715V5.958h3.715v26.459h3.715V5.958h3.715v26.459h3.715%22%20transform=%22matrix(.70385%200%200%201.00066%2054.11%20-5.485)%22/%3E%3C/g%3E%3Cpath%20fill=%22#fff%22%20fill-opacity=%22.941%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M65.422%203.893H91.88v19.498H65.422zM10.917%203.893h26.458v19.498H10.917z%22/%3E%3Ctext%20transform=%22matrix(.60486%200%200%201.65328%2075.142%20-5.473)%22%20y=%2216.209%22%20x=%22-105.693%22%20style=%22line-height:28.74709511px;-inkscape-font-specification:Arial%22%20font-weight=%22400%22%20font-size=%2212.265%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%221.15%22%3E%3Ctspan%20y=%2216.209%22%20x=%22-105.693%22%20fill=%22maroon%22%3E12%20MHz%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M46.415%2012.864h6.615v-1.653l6.615%203.307-6.615%203.307v-1.653h-6.615v-1.654z%22%20fill=%22#ff0%22%20fill-opacity=%22.941%22%20stroke=%22#000%22%20stroke-width=%22.633%22/%3E%3Ctext%20style=%22line-height:29.150383px;-inkscape-font-specification:Arial%22%20x=%22-14.684%22%20y=%2216.437%22%20transform=%22matrix(.61334%200%200%201.63041%2075.142%20-5.473)%22%20font-weight=%22400%22%20font-size=%2212.438%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%221.166%22%3E%3Ctspan%20x=%22-14.684%22%20y=%2216.437%22%20fill=%22maroon%22%3E50%20MHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "ec5f8ec7-9259-4ff7-9376-e75e5bb64ef1",
              "type": "basic.input",
              "data": {
                "name": "clk_brd",
                "clock": true
              },
              "position": {
                "x": 48,
                "y": 232
              }
            },
            {
              "id": "584255ae-1237-4bc8-a669-c92466c9372d",
              "type": "basic.output",
              "data": {
                "name": "clk50mhz"
              },
              "position": {
                "x": 752,
                "y": 232
              }
            },
            {
              "id": "0c4bef44-3f1d-4f80-84c9-e92607a3d2ce",
              "type": "basic.info",
              "data": {
                "info": "Generates a 50 MHz clock from a 12MHz clock",
                "readonly": false
              },
              "position": {
                "x": 208,
                "y": 72
              },
              "size": {
                "width": 464,
                "height": 40
              }
            },
            {
              "id": "767980ff-793e-4d87-9fa3-ac4d5e4a2552",
              "type": "basic.code",
              "data": {
                "code": "  // Generates a 50 MHz clock from a 12MHz clock\r\n   SB_PLL40_CORE\r\n            #(.FEEDBACK_PATH(\"SIMPLE\"),\r\n                .PLLOUT_SELECT(\"GENCLK\"),\r\n                .DIVR(4'd5),\r\n                .DIVF(6'd49),\r\n                .DIVQ(3'd1),\r\n                .FILTER_RANGE(3'b001)\r\n            )\r\n            uut\r\n            (\r\n                .REFERENCECLK(clk_brd),\r\n                .PLLOUTCORE(clk50mhz),\r\n                .RESETB(1'b1),\r\n                .BYPASS(1'b0)\r\n             );",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk_brd"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk50mhz"
                    }
                  ]
                }
              },
              "position": {
                "x": 208,
                "y": 120
              },
              "size": {
                "width": 464,
                "height": 288
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ec5f8ec7-9259-4ff7-9376-e75e5bb64ef1",
                "port": "out"
              },
              "target": {
                "block": "767980ff-793e-4d87-9fa3-ac4d5e4a2552",
                "port": "clk_brd"
              }
            },
            {
              "source": {
                "block": "767980ff-793e-4d87-9fa3-ac4d5e4a2552",
                "port": "clk50mhz"
              },
              "target": {
                "block": "584255ae-1237-4bc8-a669-c92466c9372d",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "ec49d1e47028e02ece23b54d0b32f6631b537d21": {
      "package": {
        "name": "VGA SYNC",
        "version": "1.0",
        "description": "Generate synchronization signals for VGA 640x480 at clk 50MHz",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22274.45%22%20height=%22182.634%22%20viewBox=%220%200%2072.615005%2048.321985%22%3E%3Cpath%20stroke=%22#000%22%20stroke-width=%22.5773976500000001%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M9.319%2046.007h53.977v2.026H9.32z%22/%3E%3Cpath%20fill=%22#ff0%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M9.237.213h9.023V45.33H9.237z%22/%3E%3Cpath%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M63.379.213h9.023V45.33H63.38z%22/%3E%3Cpath%20fill=%22#00f%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M54.355.213h9.023V45.33h-9.023z%22/%3E%3Cpath%20fill=%22#0ff%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M18.26.213h9.024V45.33H18.26z%22/%3E%3Cpath%20fill=%22#0f0%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M27.284.213h9.023V45.33h-9.023z%22/%3E%3Cpath%20fill=%22#f0f%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M36.308.213h9.023V45.33h-9.023z%22/%3E%3Cpath%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M45.331.213h9.024V45.33H45.33z%22/%3E%3Cpath%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.7625878000000001%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M.381.381h71.853v45.297H.38z%22/%3E%3Cpath%20fill=%22#fff%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M6.008%2015.166h61.487v13.542H6.008z%22/%3E%3Cpath%20fill=%22#fff%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M24.603%2026.717h25.573v13.541H24.603z%22/%3E%3Ctext%20transform=%22matrix(.27001%200%200%20.43078%20-8.81%20-1.82)%22%20y=%2267.814%22%20x=%2266.755%22%20style=%22line-height:82.9525528px;-inkscape-font-specification:Arial%22%20font-weight=%22400%22%20font-size=%2235.393%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%223.318%22%3E%3Ctspan%20y=%2267.814%22%20x=%2266.755%22%3EVGA%20SYNCH%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:53.80932617px;-inkscape-font-specification:Arial%22%20x=%22126.979%22%20y=%2295.11%22%20transform=%22matrix(.2808%200%200%20.41424%20-8.81%20-1.82)%22%20font-weight=%22400%22%20font-size=%2222.959%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%222.152%22%3E%3Ctspan%20x=%22126.979%22%20y=%2295.11%22%3E50MHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c8fac79a-4c87-471a-863d-843267fb0fd5",
              "type": "basic.output",
              "data": {
                "name": "visible"
              },
              "position": {
                "x": 768,
                "y": 160
              }
            },
            {
              "id": "4961a007-9b0f-474f-a73e-c02e99461b95",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 184,
                "y": 200
              }
            },
            {
              "id": "ce9b9f02-391c-416d-a455-217278662a02",
              "type": "basic.output",
              "data": {
                "name": "hsinc"
              },
              "position": {
                "x": 768,
                "y": 216
              }
            },
            {
              "id": "354f80a2-bb32-4165-a271-37d15b197a7e",
              "type": "basic.output",
              "data": {
                "name": "vsinc"
              },
              "position": {
                "x": 768,
                "y": 272
              }
            },
            {
              "id": "c41b16c0-fc64-495f-bd40-7f2812553acb",
              "type": "basic.output",
              "data": {
                "name": "col",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 768,
                "y": 320
              }
            },
            {
              "id": "fcec189e-1ce5-4081-a0cd-f84edd905738",
              "type": "basic.input",
              "data": {
                "name": "clk50mhz",
                "clock": true
              },
              "position": {
                "x": 160,
                "y": 336
              }
            },
            {
              "id": "f79463ca-feb0-49f0-9c94-7ecdcb1ef6d4",
              "type": "basic.output",
              "data": {
                "name": "fila",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 768,
                "y": 376
              }
            },
            {
              "id": "778efce8-8a2b-4961-bce9-02454ecd49df",
              "type": "basic.info",
              "data": {
                "info": "Generate syncronization signals\nfor VGA 640x480 \nusing a 50MHz clock",
                "readonly": false
              },
              "position": {
                "x": 328,
                "y": 88
              },
              "size": {
                "width": 376,
                "height": 72
              }
            },
            {
              "id": "9c9ac20b-eaf6-4b65-be75-a03f7c30adbf",
              "type": "basic.code",
              "data": {
                "code": "// @include vga_sync_50mhz.v\n\n   vga_sync i_vga \n   (\n     .rst     (rst),\n     .clk     (clk50mhz),\n     .visible (visible),\n     //.new_pxl (new_pxl),\n     .hsync   (hsinc),\n     .vsync   (vsinc),\n     .col     (col),\n     .row     (fila)\n  );\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk50mhz"
                    }
                  ],
                  "out": [
                    {
                      "name": "visible"
                    },
                    {
                      "name": "hsinc"
                    },
                    {
                      "name": "vsinc"
                    },
                    {
                      "name": "col",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "fila",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 328,
                "y": 168
              },
              "size": {
                "width": 384,
                "height": 264
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "4961a007-9b0f-474f-a73e-c02e99461b95",
                "port": "out"
              },
              "target": {
                "block": "9c9ac20b-eaf6-4b65-be75-a03f7c30adbf",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "9c9ac20b-eaf6-4b65-be75-a03f7c30adbf",
                "port": "visible"
              },
              "target": {
                "block": "c8fac79a-4c87-471a-863d-843267fb0fd5",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "9c9ac20b-eaf6-4b65-be75-a03f7c30adbf",
                "port": "hsinc"
              },
              "target": {
                "block": "ce9b9f02-391c-416d-a455-217278662a02",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "9c9ac20b-eaf6-4b65-be75-a03f7c30adbf",
                "port": "vsinc"
              },
              "target": {
                "block": "354f80a2-bb32-4165-a271-37d15b197a7e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "9c9ac20b-eaf6-4b65-be75-a03f7c30adbf",
                "port": "col"
              },
              "target": {
                "block": "c41b16c0-fc64-495f-bd40-7f2812553acb",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "9c9ac20b-eaf6-4b65-be75-a03f7c30adbf",
                "port": "fila"
              },
              "target": {
                "block": "f79463ca-feb0-49f0-9c94-7ecdcb1ef6d4",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "fcec189e-1ce5-4081-a0cd-f84edd905738",
                "port": "out"
              },
              "target": {
                "block": "9c9ac20b-eaf6-4b65-be75-a03f7c30adbf",
                "port": "clk50mhz"
              }
            }
          ]
        }
      }
    },
    "ac2f61335f84cc822618138db9c520e2e2ac2eb7": {
      "package": {
        "name": "NameTable SMario",
        "version": "1.0",
        "description": "Name Table of a SuperMario screen",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22255.278%22%20height=%22274.631%22%20viewBox=%220%200%2067.542374%2072.662765%22%3E%3Cg%20transform=%22translate(-63.716%20-48.29)%22%3E%3Cimage%20y=%2257.641%22%20x=%2263.727%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAAB4CAMAAAANIQqNAAADAFBMVEX////+/v79/f38/Pz7+/v6%20+vr5+fn4+Pj39/f29vb19fX09PTz8/Py8vLx8fHw8PDv7+/u7u7t7e3s7Ozr6+vq6urp6eno6Ojn%205+fm5ubl5eXk5OTj4+Pi4uLh4eHg4ODf39/e3t7d3d3c3Nzb29va2trZ2dnY2NjX19fW1tbV1dXU%201NTT09PS0tLR0dHQ0NDPz8/Ozs7Nzc3MzMzLy8vKysrJycnIyMjHx8fGxsbFxcXExMTDw8PCwsLB%20wcHAwMC/v7++vr69vb28vLy7u7u6urq5ubm4uLi3t7e2tra1tbW0tLSzs7OysrKxsbGwsLCvr6+u%20rq6tra2srKyrq6uqqqqpqamoqKinp6empqalpaWkpKSjo6OioqKhoaGgoKCfn5+enp6dnZ2cnJyb%20m5uampqZmZmYmJiXl5eWlpaVlZWUlJSTk5OSkpKRkZGQkJCPj4+Ojo6NjY2MjIyLi4uKioqJiYmI%20iIiHh4eGhoaFhYWEhISDg4OCgoKBgYGAgIB/f39+fn59fX18fHx7e3t6enp5eXl4eHh3d3d2dnZ1%20dXV0dHRzc3NycnJxcXFwcHBvb29ubm5tbW1sbGxra2tqamppaWloaGhnZ2dmZmZlZWVkZGRjY2Ni%20YmJhYWFgYGBfX19eXl5dXV1cXFxbW1taWlpZWVlYWFhXV1dWVlZVVVVUVFRTU1NSUlJRUVFQUFBP%20T09OTk5NTU1MTExLS0tKSkpJSUlISEhHR0dGRkZFRUVERERDQ0NCQkJBQUFAQEA/Pz8+Pj49PT08%20PDw7Ozs6Ojo5OTk4ODg3Nzc2NjY1NTU0NDQzMzMyMjIxMTEwMDAvLy8uLi4tLS0sLCwrKysqKiop%20KSkoKCgnJycmJiYlJSUkJCQjIyMiIiIhISEgICAfHx8eHh4dHR0cHBwbGxsaGhoZGRkYGBgXFxcW%20FhYVFRUUFBQTExMSEhIREREQEBAPDw8ODg4NDQ0MDAwLCwsKCgoJCQkICAgHBwcGBgYFBQUEBAQD%20AwMCAgIBAQEAAADuruGUAAAACXBIWXMAAA7EAAAOxAGVKw4bAAABMUlEQVRoge3au0oEMRhA4VEL%20QdBCUAQRLFzRRrzf28UH8PKkXl7PE9jAEBxWdtU/mHOa7GxmMl+RJjDdXnCdAAECqgJs0gpt0zpt%200XcX2qV0f3p2g1Ypz+1QWi+tv0YC6gV0kxZomfJ1nj+iQyr/z6XnDiiN5dwSLVIaBdQLiEiAAAH/%20B3BJVySgTcAFjSZdk4D2ADd0S3d0TwLaA8yTgHYAj/REAtoFPNMLCWgXMJQAAQIECBAgQIAAAQLq%20B4yLpt0/dAid+XAqIBzwUDTt/qFD6MyHUwHhgN9OQH2AEzolAW0CjmmfzumMBLQFyC/v9xcIAXUA%20+psvvzz/nheRP24pRwH1AL7afD+1Gfsft5Tlj10ExANe6Y2iRgHxgHf6oKhRQDwgfBMKCAeEb0IB%200YBPcoIsFGPyIUEAAAAASUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2263.311%22%20width=%2267.532%22%20image-rendering=%22optimizeSpeed%22/%3E%3Ctext%20transform=%22scale(.94206%201.0615)%22%20y=%2253.945%22%20x=%2266.91%22%20style=%22line-height:27.21696854px;-inkscape-font-specification:Arial%22%20font-weight=%22400%22%20font-size=%2211.613%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke=%22#000032%22%20stroke-width=%22.3%22%3E%3Ctspan%20y=%2253.945%22%20x=%2266.91%22%3ENAME%20TABLE%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f60e7ccd-ea83-4c70-bcf4-c4a32d17f64b",
              "type": "basic.input",
              "data": {
                "name": "dir_ntable",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 64,
                "y": 272
              }
            },
            {
              "id": "3156d8d0-7df0-42f8-8709-e2c38220f2a2",
              "type": "basic.output",
              "data": {
                "name": "num_patron",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 792,
                "y": 272
              }
            },
            {
              "id": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
              "type": "basic.code",
              "data": {
                "code": "// @include smario_traspas_nt_nt0.v\n\nROM_NTABLE_SMARIO_TRASPAS NTABLE\n(\n  .addr(dir_ntable),\n  .dout(num_patron)\n);",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "dir_ntable",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ],
                  "out": [
                    {
                      "name": "num_patron",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 312,
                "y": 208
              },
              "size": {
                "width": 352,
                "height": 184
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f60e7ccd-ea83-4c70-bcf4-c4a32d17f64b",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "dir_ntable"
              },
              "size": 10
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "num_patron"
              },
              "target": {
                "block": "3156d8d0-7df0-42f8-8709-e2c38220f2a2",
                "port": "in"
              },
              "size": 8
            }
          ]
        }
      }
    }
  }
}