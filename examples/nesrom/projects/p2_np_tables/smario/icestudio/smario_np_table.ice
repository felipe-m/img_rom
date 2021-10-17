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
            "x": 2200,
            "y": 64
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
            "x": 2216,
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
            "x": 2216,
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
            "x": 2216,
            "y": 384
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
            "x": 2208,
            "y": 464
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
          "id": "ac4fbf1a-e569-4af0-a75c-1832697072b0",
          "type": "ac2f61335f84cc822618138db9c520e2e2ac2eb7",
          "position": {
            "x": 1160,
            "y": 128
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
            "x": 1776,
            "y": 160
          },
          "size": {
            "width": 192,
            "height": 32
          }
        },
        {
          "id": "84d5a1b0-15b8-4a89-bbad-27bdc5a93ed5",
          "type": "5d7f3a00e5a52749868b9f18c49a69546cc92aa9",
          "position": {
            "x": 1480,
            "y": -16
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "5c8ba9fe-f667-48c6-8c42-6aa6f03dc431",
          "type": "e87f4a6dde5cf003eb8b66c1f537aa495e2e5d86",
          "position": {
            "x": 1480,
            "y": 48
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c3998710-3779-45d0-8b17-910dd328714c",
          "type": "basic.info",
          "data": {
            "info": "Name Table",
            "readonly": false
          },
          "position": {
            "x": 1152,
            "y": 96
          },
          "size": {
            "width": 104,
            "height": 32
          }
        },
        {
          "id": "7d59fe09-ce4c-43c0-8017-dae2cb6d20ad",
          "type": "basic.info",
          "data": {
            "info": "Pattern Tables",
            "readonly": false
          },
          "position": {
            "x": 1464,
            "y": -56
          },
          "size": {
            "width": 144,
            "height": 32
          }
        },
        {
          "id": "c1dbab22-4648-4e50-b734-2f4071902d6e",
          "type": "basic.code",
          "data": {
            "code": "// Generate the address for the Name Table memory\n\n//assign col_cuad = col[8:4];\n//assign fila_cuad = fila[8:4];\nassign dir_ntable = {fila[8:4], col[8:4]};\n// useful to know when we are over column 511\nassign col9 = col[9];\nassign fila_in = fila[3:1];\nassign col_in = col[3:1];",
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
                  "name": "fila_in",
                  "range": "[2:0]",
                  "size": 3
                },
                {
                  "name": "col_in",
                  "range": "[2:0]",
                  "size": 3
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
            "height": 184
          }
        },
        {
          "id": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
          "type": "basic.code",
          "data": {
            "code": " reg [1:0] rojo, verde, azul;\r\n reg [1:0] rojo_rg, verde_rg, azul_rg;\r\n reg hsync_rg, vsync_rg;\r\n wire [1:0] color_index;\r\n assign red = rojo_rg;\r\n assign green = verde_rg;\r\n assign blue = azul_rg;\r\n assign hsync = hsync_rg;\r\n assign vsync = vsync_rg;\r\n \r\n assign color_index = {d_ptable1[~col_in],d_ptable0[~col_in]};\r\n \r\n always @(*)\r\n  begin\r\n    rojo   = 2'b00;\r\n    verde  = 2'b00;\r\n    azul   = 2'b00;\r\n    if (col9 == 1'b0) begin  // less than 512\r\n        case (color_index)\r\n          2'b00:\r\n            begin // background blue sky #22\r\n              rojo  = 2'b01;\r\n              verde = 2'b10;\r\n              azul  = 2'b11;\r\n            end\r\n          2'b01:\r\n            begin // color 1: light brown #36\r\n              rojo  = 2'b11;\r\n              verde = 2'b11;\r\n              azul  = 2'b10;\r\n            end\r\n          2'b10:\r\n            begin // color 2: dark brown #17\r\n              rojo  = 2'b10;\r\n              verde = 2'b01;\r\n              azul  = 2'b00;\r\n            end\r\n          default:\r\n            begin // color 3: black  #0F\r\n              rojo  = 2'b00;\r\n              verde = 2'b00;\r\n              azul  = 2'b00;\r\n            end\r\n        endcase\r\n    end\r\n    //end\r\n  end\r\n  // register to synchronize\r\n  always @ (posedge clk)\r\n  begin\r\n    rojo_rg   <= rojo; \r\n    verde_rg  <= verde; \r\n    azul_rg   <= azul; \r\n    hsync_rg <= hsinc; \r\n    vsync_rg <= vsinc; \r\n  end",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "d_ptable0",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "d_ptable1",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "col_in",
                  "range": "[2:0]",
                  "size": 3
                },
                {
                  "name": "col9"
                },
                {
                  "name": "hsinc"
                },
                {
                  "name": "vsinc"
                },
                {
                  "name": "clk"
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
                },
                {
                  "name": "hsync"
                },
                {
                  "name": "vsync"
                }
              ]
            }
          },
          "position": {
            "x": 1776,
            "y": 200
          },
          "size": {
            "width": 344,
            "height": 240
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
            "block": "84d5a1b0-15b8-4a89-bbad-27bdc5a93ed5",
            "port": "9b022bf6-047b-43b5-85dd-198534075588"
          },
          "size": 8
        },
        {
          "source": {
            "block": "ac4fbf1a-e569-4af0-a75c-1832697072b0",
            "port": "3156d8d0-7df0-42f8-8709-e2c38220f2a2"
          },
          "target": {
            "block": "5c8ba9fe-f667-48c6-8c42-6aa6f03dc431",
            "port": "9b022bf6-047b-43b5-85dd-198534075588"
          },
          "size": 8
        },
        {
          "source": {
            "block": "c1dbab22-4648-4e50-b734-2f4071902d6e",
            "port": "fila_in"
          },
          "target": {
            "block": "84d5a1b0-15b8-4a89-bbad-27bdc5a93ed5",
            "port": "afa1f958-1332-4524-8c53-6d2ed95b19d0"
          },
          "vertices": [
            {
              "x": 1368,
              "y": 56
            }
          ],
          "size": 3
        },
        {
          "source": {
            "block": "c1dbab22-4648-4e50-b734-2f4071902d6e",
            "port": "fila_in"
          },
          "target": {
            "block": "5c8ba9fe-f667-48c6-8c42-6aa6f03dc431",
            "port": "afa1f958-1332-4524-8c53-6d2ed95b19d0"
          },
          "vertices": [
            {
              "x": 1368,
              "y": 144
            }
          ],
          "size": 3
        },
        {
          "source": {
            "block": "84d5a1b0-15b8-4a89-bbad-27bdc5a93ed5",
            "port": "3156d8d0-7df0-42f8-8709-e2c38220f2a2"
          },
          "target": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "d_ptable0"
          },
          "size": 8
        },
        {
          "source": {
            "block": "5c8ba9fe-f667-48c6-8c42-6aa6f03dc431",
            "port": "3156d8d0-7df0-42f8-8709-e2c38220f2a2"
          },
          "target": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "d_ptable1"
          },
          "vertices": [
            {
              "x": 1656,
              "y": 248
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "c1dbab22-4648-4e50-b734-2f4071902d6e",
            "port": "col_in"
          },
          "target": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "col_in"
          },
          "size": 3
        },
        {
          "source": {
            "block": "53d08452-b84c-42b0-9223-f3308d77a9a8",
            "port": "584255ae-1237-4bc8-a669-c92466c9372d"
          },
          "target": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "ce9b9f02-391c-416d-a455-217278662a02"
          },
          "target": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "hsinc"
          }
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "354f80a2-bb32-4165-a271-37d15b197a7e"
          },
          "target": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "vsinc"
          }
        },
        {
          "source": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "hsync"
          },
          "target": {
            "block": "e5dd3879-f74b-46b9-b9aa-4506eadd42da",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5d29c88e-ce65-4eeb-b238-6ffba68efd58",
            "port": "vsync"
          },
          "target": {
            "block": "53f50215-a435-47c0-8ad4-ff7f76a22b18",
            "port": "in"
          }
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
    },
    "5d7f3a00e5a52749868b9f18c49a69546cc92aa9": {
      "package": {
        "name": "PTable0 SMario",
        "version": "1.0",
        "description": "Pattern Table plane 0 no sprites, of a SuperMario screen",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22208%22%20height=%22551.013%22%20viewBox=%220%200%2055.033333%20145.7888%22%3E%3Cg%20transform=%22translate(-68.867%20-36.119)%22%3E%3Ctext%20transform=%22scale(.88624%201.12836)%22%20y=%2239.985%22%20x=%22108.88%22%20style=%22line-height:10.3287px;-inkscape-font-specification:Arial;text-align:center%22%20font-weight=%22400%22%20font-size=%2210.965%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke=%22#000032%22%20stroke-width=%22.284%22%3E%3Ctspan%20style=%22text-align:center%22%20y=%2239.985%22%20x=%22108.88%22%3EPATTERN%3C/tspan%3E%3Ctspan%20style=%22text-align:center%22%20y=%2250.314%22%20x=%22108.88%22%3ETABLE%200%3C/tspan%3E%3C/text%3E%3Cimage%20width=%2255.033%22%20height=%22123.56%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANAAAAHTCAIAAADZJQE5AAAQTklEQVR4nO2dvY4bRxaFu6mVJzGg%20N1AmMjMW8ANQgO3cb2AbMCC/0kCBYmfOlI2HsWFgUw4j6Q0MAw5kgNygvYNZ/nQXu26fPtX9fYFg%20jkdHty4P+6fYp6qqAAAAIID69Ee3t7f5um/evAnRiZWKVbOVqqrqcDiEqNV1nSlV1//nsUVePQDX%20geFACoYDKRgOpGA4kILhQAqGAykYDqT8K/PvN9OMDZlTl0jpS6qeTMzmzxWnSGUd4Z6O/PQlUkNI%20BZZUnXwNIJDqf4R7HOrjh+zNmzf9vqJBSl+S3moNuafUwG85kVLqPJ718p13lVSH4Var1Xa7bf+d%205mMX9ZX/HKR+/fXXxWKx3+8dShLTdg23Wq0e/wwkXLAs2fv7+7qu7+7uYmWrwTqw2WwC1dqOcNvt%20drVaPTw8tEtc+zlrOWTmfGSPZKM+/dvtNvasut1ul8vlV199lalz+sPOc1E/1ut1oFrHXep2u22/%20W868S5qn1MPDQ/75tFD63zTc3t42I8+fFkJKX9LpBX7zkx6zcVdJZc3DHQ0159SDlL6kUWBapDyp%202GkRsRTfpYIUDAdSMBwATBdyqS5SVdCFfDMl4TPGo1lDTqkgBcOBFAwHUjAcSMFwIAXDgRQMB1Iw%20HEjBcCCFIHSRUlHpZf3oCEKXJxUVKR1ldAShS5IKTC+PNTqe+C1JKjC93KAfXcBNQ2PnfB2kRkE8%20Ou5SQUruKbUyO+nMRyoK8ehyj3DmkeOpSkWhHx1B6JKkAtPLY42u4wjXvj6KYU64CKn7+3uHc+so%20jeo4wnWuj+J5fWMu1XvVmcD0ckOR0yIA6WA4kILhAGC6zDEI7bN57VOpyq/zIWoEoWFMMBxIwXAg%20BcOBFAwHUjAcSMFwIAXDgRQMB1IIQncj3jM5Ec92dUoRhO5grI1s2/FsV4oUQeiLeFqtcm3XJamj%20XyMIfZGx9kxOxK1diVIEoQvGs13tUtylghSC0AXj2a52KYLQpeLZrk6prCd+T9Wf3qFc9aHRSFXX%20PPF76QL/6R1AoFTl1/lr1c5KRT7x6x85zpSyxbNdKVJMi1xkrD2TE3FrV6IUd6kgJWttEejHZrMZ%20u4TR6DBc71UwoIX1ej12CQDzoIwgdBV33V3XtWFC21MqRI0gNIwJhgMpGA6kYDiQguFACoYDKRgO%20pGA4kILhQMo0g9BVyXsm69UIQrukl20H6FnYHIPQE9gzudDCZhqEnsCeyXq1wp749YzjBmI7QM/C%20CEKDEZMNQgdiO0DPwuYYhA7EdoCehU0kCF0lT6elRI5DBlhFhIT7SbWrEYRWSwViO0DPwuYYhJ7A%20nsl6tcKmRQDSwXAgBcMBwHQhCN0fz/Ry2UFoFrMZgjl3lcVsRmDOXeWmAaRgOJCC4UAKhgMpGA6k%20YDiQguFACkHoDmwH6FkYQegsbAfoWRhB6Cw8B2hbGEFogtCOUgShu7EdoGdhBKHBCILQ3dgO0LMw%20gtBZ2A7QszCC0P9AEFpQGEHoXGwH6FkYQegA3AY4hFph0yIA6WA4kILhAGC6EITuj2d6uewgNEAs%20GA6kYDiQ0mG45XIZ+EgjNMy5q22GW61WdV0vl8vYf3KgpVw2m80QsuHVDtTVarDGxsq2GW673R4O%20h/CVVwZaymW9Xg8hO8TwD4fDw8NDrGw1WGNjZTu+Sx2iLzDnrnLTAFIwHEghCN2B7QA9CyMInYXt%20AD0LIwidhecAbQsjCE0Q2lGKIHQ3tgP0LIwgNBhBELob2wF6FkYQOgvbAXoWRhD6HwhCCwojCJ2L%207QA9CyMIHYDbAIdQK2xaBCAdDAdSMBwATJcBg9CG0eXKNXIcGPau6/pwOMSGdHKGeTQtEvBNAxgS%20+GkP0XmEaziQguFACoYDKRgOpGA4kILhQEqH4QZarmLmzLmrHYYbaLmKmTPnrnJKBSlGyfsqLi5f%20FRtMv4rAdoVIpYzOJXlfDZNhPvtyAlJVaLtCpBJHZ5G8j/3Crqxg+rjtCl8To3N0Fo+Yh8flq2Kf%20wE4hsF2xnU8ZnVfyPpYSg+ml0zk67lJBilfyPha3U2G4lCGDp7Zszw6FBtOLJmV0/Y9wj6Hq/Lml%200yvW5if95oQCC/OUCmxXlFT66FyS97GUG0wvl8TReU2LBOJ51eXWrtjOi6ZFANLBcAAwXc58oREV%20xzXMG8eqpYe9E784ioqgW7WLIPQIdPpyPrtZcg0HUjAcSMFwIAXDgRQMB1IwHEjBcCAFw4EUDAdS%20Ar5pYLPvq5h2u3IfwNxsNu2/wGbfV9G06/7+PkfktAyTdqVIdRzh1uv1pf/FZt9X8bRdr1+/7lHM%20EFUJpI5+rf8plc2+r2Im7Spsry3bvLFnetmzXe1SXoaDyeP1PJznaSJcLQrPdg27BXkgtnljw5Np%205dquTqn+j5i3b/Z97SPmp4U67KndWVj6XFpnu6prDjOe7TordfRDlyOcbd7YM73s2a5htyBns++r%20mEm7CpsWgcmD4QAAAAAAAMCHQRazqes6atqpruv3799//PgxRC12JRtDqVi1ECnTbxpgJmA4kILh%20QAqGAykYDqQY5VIDpQwzm4YlhaulSOUe4Zz37jz7chQpw5LC1RKl+h/hDK1WWWY2DUsasTCLXOoc%20MpuGJYWrzXonGsPMpmFJ4WqdUrlri0AP8tcWKZf+a4uYY3gKe9TJXFukKvmsOs1TqmFm07CkcLUU%20qci71NG3ia0st9Q1LGnEwiZ4hDPMbBqWFK6WKGWRS51DZtOwpHC1WU+LgCcYDqR4Ldd1lufPn9/c%203ESpHQ6H+ewVCTB3znzWQ554CcxxfPjw4eXLlyFqdV2/fft2v9/nS7llVYZQI0QDxYPhQAqGAykY%20DqRgOJCC4UAKhgMpGA6kYDiQkvtdqm2+1y1TbduokoLQtvlet0y1baNKCkJ75nsNM9WejRqrsNxT%20qtuDrLaZardGDaEmeuLXNt8bBUHoQCnuUkFKwBO/tieLKDirBkrlHuFs871REISOleo4wi2Xy91u%20d3YqyzPfa5ipPtW5u7vb7XbX6gSWFK4WE4ReLpd1Xb969arln2l5eYnVahUl9ZQh1t25vb19uvBM%20SBD67u5usVicbcK1Ukcve2imtD1RNiAIvdvtXr161f5Z7PEebLfbKKmnNOvuhGeqt9ttyCXOo8hu%20t1utVpeacJXUEf00O0eXLpvSqDbDHQ6Hh4eHxH8M0slxW+kwLQJSCghCHw6HkGDfYrGoqmq/3zf/%20AQDTp4AgdJTUs2fPfvzxx8BtDt+9e/fp06d8KYLQAEOB4UAKhgMpGA6kYDiQguFACoYDKRgOpGA4%20kDLNILRhptpzdHqpCQahDTPVnqMbRWpqQWjDTLXn6MaSmloQOlAqNlPtNrqxpCYbhDbMVHuOTizF%20XSpImWwQ2jBT7Tm6wtYW8cz3up1MK9fR6aX6H+E8g9CGmWrP0Y0llXWEy08vm0tF4Tm6UaSYFrlI%20bKbabXRjSXGXClIwHEjpOKVmroIBZznt6osXL8JXRQEAgtB9iQ1CR1W13++fPXtm1XyC0DAmGA6k%20YDiQguFACoYDKRgOpGA4kILhQAqGAykEobtxC0JHldQQVRhB6ACpyi8IXQ2zCfHZl0PoEIS+iGEQ%20OtBqgYURhJ5sEDp8v+tKvjknQWgdhiU1RBVGEBrsIAitw7CkBuVZlSC0CMOSGgKvYVJ+jSD0RQyD%200IH7XQcWRhB6ykHoWKIKIwg9zSD0EMmu8qZFANLBcAAwXWaUSz0cDj/99NO7d+9C1H744YfAiOvP%20P//8119/5UstFovvvvsusLDwXGoBe95H0cwghESXw/n06VNIYYuF+zVSR32r1UpTx6zYbDZjlzAa%20HYZjJZshWK/XY5cwGu5HYJgYGA6kYDiQguFACoYDKRgOpGA4kEIQWidlmF5uiCps8AcwPdPLnlKG%206eWG8Pjt2ZePEIQeXMozvRxbWHpVPPE7uJRtejm8MEVqq3JNL3tKBVJoVdylghSC0FKpQAqtiiC0%20TiqQcqsiCD24lGd6Obaw9KoIQoukAim6KqZFBpeyTS+HFyaaFgFIZ6jUVl3XgfOch8Mhdr4eEgmP%20gQ1luC+++OKzzz4LkXrx4sUff/wRIhXL77//vt/vQ6SiwovNWfK3334LUauq6ssvv4ySAhiBoZL3%20f/755+eff56pU1VVXdfv37//+PFjvlTluiRAoFSg2s3Nzffff59/Y3F0LcRNA0jBcCAFw4EUDAdS%20WMxmBObcVRazGYE5d5VTKkjBcCDFKJdaaQOSYqnYRhkOsKHzHXTJpVbygKRSKrZRhgNsSHkHLXKp%20owQkZVKBJcWqjfIOWjyAOUpAUiwV+1yu2wDT30GvXGoghrnU2EYZDjAF7lJBilcuNRC3k06gTria%208h00yqUGYphLjW2U4QATsciljhKQlEkFlhSrNso76JJLDcQwlxrbKMMBpuM1LRKF4fXNtC/g0t9B%207lJBCoYDKQVsX/n8+fObm5soNTLVADOigB2hP3z48PLlyxC1uq7fvn0bEpcnl5oIuVQYEwwHUjAc%20SMFwIAXDgRQMB1IwHEjBcCCFtUVGYM5dbfsutenLarVqWQujx7N7lwQzHwPcbDbr9frxZVSmerVa%20vX79OqewR5oB3t3dVV1dTZQ6KqmfZmfbjxrbTlYQuqk+0W2nL9tlQ6SectZt+Tx1WxWRhf7666/3%20+/0333zTu6RLvcp02+nLhh5ua6HjaZEUtxWayFUWdqSz2+3+/vvv0Xs13yB0oJTtbriBOoZSpQah%20PTPVlWUW2lOqE6ZFQIpXENok93UKZ9UojILQnifTyjIL7SmVgkUQ2jNTHViYZ69mHYT2zFRXlllo%20T6lEJjstEggXcJ0QhAZTMBxIwXAAMF0KCEIbhoRtpQLVCELDFMBwIAXDgRQMB1IwHEjBcCAFw4EU%20DAdSMBxIMdoRGqnSpVLC5y47QiNVulRiLtNiR2ikipa6KgKcu5iN26OnRUjlL2ZjNcDD/0j55f5L%20PTzSfFBCWoBU6VKdcJcKUiYbhEZqFKlOphmERmoUqRSmFoRGSi91Vfh8gkFopEaRSmRqQWik9FJX%205R64SwUAAAAAAAAf/m/KbojF1WDmsNQDjAmGAykYDqRgOJCC4UAKhgMpGA6kYDiQguFACoYDKRgO%20pGA4kILhQAqGAykdhttsNpo6ZsWcu8rzcDAsPA8HY4LhQAqGAykYDqQErA8n49/ffnv25//55Rdx%20JdCbMu5SL1ntKRrbtVSi9L1JGSkc3aUWYLgUtzUM2uvEMoZ+v03KSKcww6W7rWGgRpdYhonnSpqH%20u/Zt7vdXRtHswbVlmJR9hLXhysXzzXbA13C937PYN7voMgx972s4mCQYDqSYGs7kXEAZ4ZgazuSW%20njLCMTUcTBUMB1IwHEjxNVzvC5fYK56iyzC8+PM1XNWrXyYtNinDEGvDVR7v3LU1DFSzSRmZuD8t%200uDwPJzJc0EmZaRT2ONJT3F46tChBp8yUijYcFAiJT0PB9MDw4EUDAdSWMxmBObcVW4aYFi4aYAx%20wXAgBcOBFAwHUjAcSMFwIAXDgRQMB1IwHEjBcCAFw4EUDAdSMBxIwXAAAAAAANDKfwHIZQaBrL8G%20JgAAAABJRU5ErkJggg==%22%20x=%2268.867%22%20y=%2258.347%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9b022bf6-047b-43b5-85dd-198534075588",
              "type": "basic.input",
              "data": {
                "name": "i_ptrn",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 88,
                "y": 224
              }
            },
            {
              "id": "3156d8d0-7df0-42f8-8709-e2c38220f2a2",
              "type": "basic.output",
              "data": {
                "name": "d_ptable0",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 792,
                "y": 272
              }
            },
            {
              "id": "afa1f958-1332-4524-8c53-6d2ed95b19d0",
              "type": "basic.input",
              "data": {
                "name": "fila_in",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": 88,
                "y": 312
              }
            },
            {
              "id": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
              "type": "basic.code",
              "data": {
                "code": "// @include smario_traspas_patronbg_0.v\nwire [10:0] addr_ptable;\n\nassign addr_ptable = {i_ptrn,fila_in};\n\nROM_PTABLE_MARIO_TRASPAS_BG_PLN0 PTABLE0\n(\n  .addr(addr_ptable),\n  .dout(d_ptable0)\n);",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i_ptrn",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "fila_in",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ],
                  "out": [
                    {
                      "name": "d_ptable0",
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
                "block": "9b022bf6-047b-43b5-85dd-198534075588",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "i_ptrn"
              },
              "size": 8
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "d_ptable0"
              },
              "target": {
                "block": "3156d8d0-7df0-42f8-8709-e2c38220f2a2",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "afa1f958-1332-4524-8c53-6d2ed95b19d0",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "fila_in"
              },
              "size": 3
            }
          ]
        }
      }
    },
    "e87f4a6dde5cf003eb8b66c1f537aa495e2e5d86": {
      "package": {
        "name": "PTable1 SMario",
        "version": "1.0",
        "description": "Pattern Table plane 1 no sprites, of a SuperMario screen",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22208%22%20height=%22551.013%22%20viewBox=%220%200%2055.033333%20145.7888%22%3E%3Cg%20transform=%22translate(-68.867%20-36.119)%22%3E%3Cimage%20width=%2255.033%22%20height=%22123.825%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANAAAAHUCAIAAADEIDGBAAAOpElEQVR4nO3dsW7byBrF8aFzkQBB%200rpLYTU2Ul3gImUs+w22TO1GrxQ3foZ9gsByf4HbJW5iI13q1IFuwbVWa8vSkPzmzDcz/1+x2GSd%20k7H8LSlSPGQIAAAAALBD9/S3Li8vp+cuFguTHLdRtmk+o6zSFovF+t8PJmYBgzBwkGLgIMXAQYqB%20g9S/Rv/JzUOPiQcyROmXZJsWHzVyC7f5Fzz9JVEpogyXZJs2KGrMwK0TLx/s/WuImhhluCTbtKFR%2049/DGZ5dJEqcY54WHzXpoGGxWEzcsBOVK8c8LTKKo1RIjT9KDS53Ojuijo+PraJGqHWven19fXZ2%20Fh81fgu3WCxG/Aifi9r85fX1tVXUWr/UQckxO4jIV2Dobuu52Im7v0ex03em61c1Pmrk1SJP/4JH%20fyr+KgNZ1PHx8dnZmdWq4hdmFRWTY7uqmLSTk5Ozs7PVarUjyuBqkUeJU7bMsqjb21uHq8qyJMO0%20b9++ff78OT5q/Hs4h+9vqo/y9gZuRBRHqZBi4CDFwEGKgYMUAwcpBg5AveilukizjQohPDr1P1rX%20ddOjuu7vMWOXCikGDlIMHKQYOEgxcJBi4CBFEbrdqLBxwsLw3MfuKIrQjUaFf54emyg+aswWbrP7%20uv6dcacuicoSlWXUelzx22LUeq83ffKGRlGEbjpKj6NUSDVUhCbKg0lFaKtFEJUlKosxW7jLy8v+%20255+ToioLFFP3+D3vzPibNzQqIaK0ER5wGmRFqOsLs8cEdXQUarVrXewablcDvr6hgZu0L1FEGk+%20nw/6+oYGDh4wcJBi4CDFwAGoF0VoF2mG7WWT6rJtGkVoZMPAQYqBgxQDBykGDlIMHKQYOEjRvC8s%20qqdvzFtF0bwvKaqXscY8PYrmfTFRofBR63GJeUlRGRvzVlE078uLKhpHqZCieV9eVNFo3hcWVTqa%2098VEhayNeasomvclRVWA0yIlRWVszFtFcZQKKQYOUg0NHPcWSYF7izyLe4ukwL1FAOBBi0XoxWLh%20rXLsM8oqjSI0smHgIMXAQYqBgxQDBykGDlIMHKQoQu/is29sm0YR2kVU8FoCtU2jCO0iyudP1DaN%20IrSjKJ99Y9s0itAeo2COo1RIUYSGFEVoSFGE3sJn39jtwihCG0QhEU6LbOGzb2ybRhEaTWDgIMXA%20QYqBgxQDBykGDkjj+vo69xIqNPRV3XIertbmfX8zG5r35ml7v4DmPbJh4CDFwEGKgYMUAwcpBg5S%20FKF38dk3tk2jCO0iKngtgdqmUYR2EeXzJ2qbRhHaUZTPvrFtGkVoj1Ewx1EqpChCQ4oiNKQoQm/h%20s2/sdmEUoQ2ikAinRbbw2Te2TaMIjSYwcJBi4CDFwEGKgYMUAwegXjyCfDyf7WUeQQ78raGBOz4+%20zr2ECi2Xy0FfP2ngEv0IU8SenJyEBPezGfpyVxbbBw6KnTRw/e1hzKWI/fr1awjh/PzcNnY+n9sG%20lhXbB56ensb/kUkXYBak67rb21vbj9IRhg9xQ+/h4AEDByma97v4LLjbptG8dxEVvLaObdNo3ruI%208vkTtU2jee8oymfB3TaN5r3HKJjjKBVSNO8hRfMeUjTvt/BZcHe7MJr3BlFIhNMiW/gsuNum0bxH%20Exg4SDFwkGLgIMXAAahXGUVok5xNFKGVaZtnhosp0XgbEYzDezhIMXCQYuAgxcBBqqGBS3TDjsZJ%20b2ZTlkQ37Gjc0Fe1tiJ0r9yecLlRkTlVFaF7FZQ3i4uKz6mnCB1c/iSqjxqaU9UVvxX0hIuLGppT%20YREanjV0lAoPKixCw7PaitBwrp4idKiiJ1xc1NCcqorQ8K/O0yJEyaKG5nCUCikGDlIMHKQYOEgx%20cADqlbAIPT1kk8Neqs/2ssPvUVeEdjglyIv3cJBi4CDFwEGKgYMUAwcpBg5SLorQwWWzl6gUUfmL%200MFl3ZKoRFFjBm6zvdwLY2eu6zrDRu7uqPjbrihXVXrUcrks6YnQymZv/G1XHPaN3UbN5/M+rbAi%20NBrBUSqkvBSh0QgXRWi0I3MR2mGzl6ikUfmL0GiKl9MiRDUSxVEqpBg4SDFwAAAAAAA/tlzDdHV1%20NTH04uJieoj/NBYWn7D+d06LQIqBgxQDB6kxH95v7pIN9+4m7x2t0qqPShEYkzZ4C7cZ+vSXuaJs%2006qPShEYmTZs4NYpVw92RMui3C7MZ1SKwPi0Me/hDA+5DaNs06qPShEYkzbyoOHi4mL6Jt08yjat%20+qgUgXvTOEqF1MhLzN3uJnwuzGdUisC9aWO2cLZbYKuovWmz2cwqahCfUVaBm69qTNrgz1Kfhj79%20+shP32KisqTpo2LSDKMGBU5Pm/RZ6qO/e8oG2TDKNq36qBSBkWlj3sO5fUfic2E+o1IEJjwtAozD%20wEGKgYMUAwcpBg5SDByAem35pOHXr18TQ9++fTs9pPfq1auXL1+66iCliLJN87awzU8atpz4ffPm%20zZR0wxDUh/dwkGLgIMXAQYqBgxQDB6mRl5j7fGSnz8qx27K3bVpk1JgtnM9HdvqsHLste9umxUcN%2028L5HLXwzyLu+nfGnbH0GeU5bVDUsIHz+cjONZ/X1rq9qtk2LTKqtoMGn5Vjt2Vv27SYqNoGDs5N%20el6qQz53hW73g7ZpzZVofFaOlWXvjGmRUVOPUj08sjOEcHV11X/D008s+YzynDYoqp4tnM/Ksduy%20t21afNTI0yLTGUat7X7JZrPZ9+/fTaIGcfuWyyRt/aoqTossl8spf1wZ299zZdD9bOJjzZUSe3R0%20tP5npEkDN5/Pp/xxZWz/f+Hd3V2KWHOlxN7f34eBr2ptp0V2SPRTbNlqtRr6qtZz0IAiMHCQYuAA%201GvLpUEmF/Eanmbruu7Hjx8mUT9//vzw4UOtfeMUUSZpe4rQDr17984k5/fv3yY5GI33cJBi4CDF%20wEGKgYMUAwepqorQtmmlV471aakuwHTbTvVZq7ZNK31hlRSh3daqbdMqWFglRWjntWrbtKIXxkHD%20LkVXjrOk7Y1i4CBVxmepuRS988qStjeKLdyzSq8c69NioiopQrutVdumVbAwtnDbVVA5FqcleSK0%202yK0vladMa3ohbGFgxQDBykGDlIMHKQaGrhEt95p3NAb5DQ0cIluvdM47tgC18ooQlul3d/fHx0d%201do3ThFlkrb58UNDu1R4wMBBioGDFAMHKQYOUgwcpChCP8tnddm2BW0bSBF6PJ/VZdsWtG0gRejx%20fFaXbVvQudZGEfpZPq/Rtb3c1zaQK36n8lldtm1B2wZShIYvFKF38bkrLHqvyhbuWT6ry7Y7U9tA%20itD5i9A+ozKujS3cdj6ry7YtaNtAitBT+XzXVfQbuMAWDmIMHKQYOEgxcJBi4CDFwAGoV0NF6OVy%20+f79+8PDwy9fvkxPe/HixXw+tzqJ9fr160+fPjlcWNhXhJ7NZnvv9rD58UNDH96v7y1yfn6edyVP%20HR4eBpcL22vovUV4DwcpBg5SDBykGDhIMXCQYuAgRfNekWZelw9e15bkit9G6tBWaeZ1+eB1bTFp%20NO/TppnX5d2uLTKN5n3ytGB6GbfntcWkcdAgYl6XN2S7tt1pDBykGvrwPi/ztpUh5V6VLZyC251p%20kD/QnOZ92jTzurzbtUWmsYVLzrwub0j/QHOa98nTQprTIlY4LYKaMXCQYuAgxcBBioGDFAMHoF4N%20Ne/N01pYmMlD23kEObJh4CDV0MAtl8vcS6jQbDYb9PUNDdz6ZjYwxM1s4BoDBymK0KI024XZBiqf%20204RWpFmuzDbQPFz2ylCp01rZNQCRWgnaea9Zc9rC1zxCz2K0HCEIjSMUYSGDkXozGm2C/O8NorQ%20UKMInT/NvLfseW2B0yLwhoGDFAMHKQYOUgwcpBg4APWiCO0iyjaNIjTwFwYOUgwcpBg4SDFwkGpo%204G5ublJcH9E40b1Fuq7rus7q9jDdg/6X02MfBfaZq9Xq5uZmetSmoUvdnTYoNjIqJnZEVO/o6Gj9%20z/BQn9ldohlzHm5zZVu/eNB5INu0HYE3NzcfP348ODiwWpvVwkakyaJ2n4fruu7o6Oju7m61Wj0d%20ss2C6vo3sxWhzdP2Bp6enlpFDeWzvWzSbO3vnhT/cOlsRWjzNNtAt9+pz6hezAcSDR00QGDvw6UZ%20OEhRhIYlSjTQiXm4dLYitHmabaDb79RnVPzDpdnCwUbkw6WzFaHN02wD3X6nPqN6nBaBOwwcpBg4%20SDFwkGLgANSLXqqLKNs0eqnAXw5C+G/uNaAh/ScN65n7T7aFoA2PPtpia4e0Hg1cv4WjS4dU+oFj%20TwqRA6YNSjwRWpRW/cL2XnrZ44nQirTqFxbzLOgeT4ROm9bCwuJb0GHoFm71YOISbaMi0+LvA1L0%20tymOWt/MJvLjr4Y+2prP57mXUKH+Vg+9vS3o0NTAwQOK0DBDiQY6MS3owBOhU6e1sLD4FnRgCwcT%20kS3owBOhU6c1srDAaRH4xMABAAAA2ClJEdoz2/ayT56L0IDU4y1c9f/3Q2/zYzTOw0GKgYMUAwcp%20Bg5SDBykGDhIMXCQYuAgxcBBioGDFAMHKQYOUg0NXPzNbBBv6KvK1SJIjqtFkA0DBykGDlIMHKQY%20OEi5uyHhv//447n/9L8//2xqGR7WYM7XaZEdL/Fa6tc6Zg1OllHK2G2eFvEycJE/5l66F9rDMjys%20wVbx5+EG/UjSxSZaRnFrGMTFwHl41TysIbhZRjr5B27cS2z7gxmd5mEZZc1o/oFDUxg4SDFwkMo8%20cB7ef3hYQ3CzjNQyD5yH00ge1hDcLCM1dqmQYuAglX/gPOxKPKwhuFlGUvkHbhwnPxsPy/Cwhngu%20Bm7oS5biJR6R6WEZZU1bcDJwwccL52ENwc0yEvFyeVJv77kowQ/DyYVoHl4KKx6vh9v03Gvd2hW/%20O5ZR0LQF/wOHyhR/ASbKxcBBqqGB42Y2KXAzG7jDezhkw8BBioGDFAMHKQYOUgwcpBg4SDFwkGLg%20IMXAQYqBgxQDBykGDlIMHAAAAICd/g+wyessRLaewQAAAABJRU5ErkJggg==%22%20x=%2268.867%22%20y=%2258.347%22/%3E%3Ctext%20transform=%22scale(.88624%201.12836)%22%20y=%2239.985%22%20x=%22108.88%22%20style=%22line-height:10.3287px;-inkscape-font-specification:Arial;text-align:center%22%20font-weight=%22400%22%20font-size=%2210.965%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke=%22#000032%22%20stroke-width=%22.284%22%3E%3Ctspan%20style=%22text-align:center%22%20y=%2239.985%22%20x=%22108.88%22%3EPATTERN%3C/tspan%3E%3Ctspan%20style=%22text-align:center%22%20y=%2250.314%22%20x=%22108.88%22%3ETABLE%201%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9b022bf6-047b-43b5-85dd-198534075588",
              "type": "basic.input",
              "data": {
                "name": "i_ptrn",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 88,
                "y": 224
              }
            },
            {
              "id": "3156d8d0-7df0-42f8-8709-e2c38220f2a2",
              "type": "basic.output",
              "data": {
                "name": "d_ptable1",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 792,
                "y": 272
              }
            },
            {
              "id": "afa1f958-1332-4524-8c53-6d2ed95b19d0",
              "type": "basic.input",
              "data": {
                "name": "fila_in",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": 88,
                "y": 312
              }
            },
            {
              "id": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
              "type": "basic.code",
              "data": {
                "code": "// @include smario_traspas_patronbg_1.v\nwire [10:0] addr_ptable;\n\nassign addr_ptable = {i_ptrn,fila_in};\n\nROM_PTABLE_MARIO_TRASPAS_BG_PLN1 PTABLE1\n(\n  .addr(addr_ptable),\n  .dout(d_ptable1)\n);",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i_ptrn",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "fila_in",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ],
                  "out": [
                    {
                      "name": "d_ptable1",
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
                "block": "9b022bf6-047b-43b5-85dd-198534075588",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "i_ptrn"
              },
              "size": 8
            },
            {
              "source": {
                "block": "afa1f958-1332-4524-8c53-6d2ed95b19d0",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "fila_in"
              },
              "size": 3
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "d_ptable1"
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