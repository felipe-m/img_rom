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
            "x": 1472,
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
            "x": 1472,
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
            "x": 1472,
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
          "id": "4c83abc8-dd84-45eb-a1ed-9474a00749ba",
          "type": "basic.info",
          "data": {
            "info": "Pixel generator",
            "readonly": false
          },
          "position": {
            "x": 1264,
            "y": 120
          },
          "size": {
            "width": 144,
            "height": 32
          }
        },
        {
          "id": "1fd91a64-b9fc-4ce4-ae3f-72a939d5cbe3",
          "type": "82cebd489cbe34773e2c5851892c6e3e0ae34871",
          "position": {
            "x": 688,
            "y": 208
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "30af3161-cac2-49b9-9ad2-427f3f90dcee",
          "type": "3ff344675dd7ed44ad9504b5ab138f654f5afdb8",
          "position": {
            "x": 984,
            "y": 136
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "76d135d5-dc6e-4c5a-a3fc-ceec7721156f",
          "type": "basic.info",
          "data": {
            "info": "Name Table",
            "readonly": false
          },
          "position": {
            "x": 976,
            "y": 96
          },
          "size": {
            "width": 104,
            "height": 32
          }
        },
        {
          "id": "9d987e28-642c-425a-8a89-761887ff0d74",
          "type": "c8e0430447abb12a7bfb9bdff7e7332703864b93",
          "position": {
            "x": 1280,
            "y": 168
          },
          "size": {
            "width": 96,
            "height": 96
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
            "port": "f79463ca-feb0-49f0-9c94-7ecdcb1ef6d4"
          },
          "target": {
            "block": "1fd91a64-b9fc-4ce4-ae3f-72a939d5cbe3",
            "port": "27375ea2-5fe8-4227-ac3a-e914cb2c5cf7"
          },
          "size": 10
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "c41b16c0-fc64-495f-bd40-7f2812553acb"
          },
          "target": {
            "block": "1fd91a64-b9fc-4ce4-ae3f-72a939d5cbe3",
            "port": "79a732ab-2619-4b24-8a39-70e62699bdd2"
          },
          "size": 10
        },
        {
          "source": {
            "block": "1fd91a64-b9fc-4ce4-ae3f-72a939d5cbe3",
            "port": "761b57b5-afb4-4409-b452-8ef6685217a1"
          },
          "target": {
            "block": "30af3161-cac2-49b9-9ad2-427f3f90dcee",
            "port": "8593ace3-4a73-434b-bf94-f2a959a81b65"
          },
          "size": 5
        },
        {
          "source": {
            "block": "1fd91a64-b9fc-4ce4-ae3f-72a939d5cbe3",
            "port": "b1078b85-9eff-4ec9-8e28-37587fea5d9a"
          },
          "target": {
            "block": "30af3161-cac2-49b9-9ad2-427f3f90dcee",
            "port": "371e3ddb-3232-4c76-87cb-cf04ee71335b"
          },
          "size": 5
        },
        {
          "source": {
            "block": "30af3161-cac2-49b9-9ad2-427f3f90dcee",
            "port": "3156d8d0-7df0-42f8-8709-e2c38220f2a2"
          },
          "target": {
            "block": "9d987e28-642c-425a-8a89-761887ff0d74",
            "port": "ceb71b0d-9d2c-4d2f-b16d-0129e53a7ff2"
          },
          "size": 8
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "c8fac79a-4c87-471a-863d-843267fb0fd5"
          },
          "target": {
            "block": "9d987e28-642c-425a-8a89-761887ff0d74",
            "port": "8d28a972-0af6-4365-b69c-0759ca472772"
          },
          "vertices": [
            {
              "x": 600,
              "y": 392
            }
          ]
        },
        {
          "source": {
            "block": "1fd91a64-b9fc-4ce4-ae3f-72a939d5cbe3",
            "port": "c8cbd9f7-a12d-4a19-baa2-182e19e2ebe4"
          },
          "target": {
            "block": "9d987e28-642c-425a-8a89-761887ff0d74",
            "port": "f333e39d-27ee-4a3e-a3dd-9227c58ed521"
          }
        },
        {
          "source": {
            "block": "9d987e28-642c-425a-8a89-761887ff0d74",
            "port": "8b73ebf1-bb59-460a-a6da-21c02c7c4186"
          },
          "target": {
            "block": "ea9b6e34-d5ab-4b85-a98f-c2f7b8dec4ae",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "9d987e28-642c-425a-8a89-761887ff0d74",
            "port": "a94667bf-8cfd-46f4-b06b-9fd7730745f6"
          },
          "target": {
            "block": "5b9ee5a3-3508-4eba-bf54-6562e586dd4f",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "9d987e28-642c-425a-8a89-761887ff0d74",
            "port": "fc256100-027b-47a5-8936-e2680ce4c1f9"
          },
          "target": {
            "block": "51f4b540-43e6-4afd-85a4-d21d9f0e94ee",
            "port": "in"
          },
          "size": 2
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
    "82cebd489cbe34773e2c5851892c6e3e0ae34871": {
      "package": {
        "name": "grid_signals",
        "version": "1.0",
        "description": "generation of grid signals",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22299.199%22%20height=%22394.773%22%20viewBox=%220%200%2079.163193%20104.4503%22%3E%3Ctext%20transform=%22matrix(.94206%200%200%201.0615%20-62.424%20-48.14)%22%20y=%2253.945%22%20x=%2266.91%22%20style=%22line-height:27.217px;-inkscape-font-specification:Arial%22%20font-weight=%22400%22%20font-size=%2211.613%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke=%22#000032%22%20stroke-width=%22.3%22%3E%3Ctspan%20y=%2253.945%22%20x=%2266.91%22%3EGRID%20SIGNALS%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:972.279%25;text-align:start%22%20x=%2274.685%22%20y=%2283.844%22%20transform=%22matrix(1.07559%200%200%20.92972%20-62.424%20-48.14)%22%20font-weight=%22700%22%20font-size=%225.197%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.246%22%3E%3Ctspan%20x=%2274.685%22%20y=%2283.844%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2274.685%22%20y=%22134.368%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M16.866%2079.225v-.357l12.734.04v.356z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M29.62%2079.869l-.159.208%202.775-.981-2.765-1.001.149.198.118.238.08.267.03.278-.03.287-.08.268z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M16.202%2032.156V31.8H30.83v.356z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M30.848%2032.76l-.148.209%202.764-.991-2.764-.991.148.198.12.238.079.258.03.287-.03.278-.08.267z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M34.832%2062.31v-.18l8.443.06v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2062.29l-1.853-.635-.01%201.239zM34.832%2066.164v-.179l8.443.06v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2066.144l-1.853-.634-.01%201.239zM34.832%2070.019v-.179l8.443.06v.179z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2069.999l-1.853-.634-.01%201.238zM34.832%2073.873v-.178l8.443.06v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2073.854l-1.853-.635-.01%201.24zM34.832%2077.728v-.179l8.443.06v.179z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2077.708l-1.853-.634-.01%201.239zM34.832%2081.583v-.178l8.443.06v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2081.563l-1.853-.634-.01%201.239zM34.832%2085.438v-.179l8.443.06v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2085.418l-1.853-.634-.01%201.239zM34.832%2089.293v-.179l8.443.06v.179z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2089.273l-1.853-.634-.01%201.238zM34.832%2093.147v-.178l8.443.06v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2093.128l-1.853-.635-.01%201.24zM34.832%2097.002v-.179l8.443.06v.179z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.049%2096.982l-1.853-.634-.01%201.239z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M35.744%2015.697v-.179l8.443.06v.179z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2015.677l-1.853-.634-.01%201.238zM35.744%2019.62v-.178l8.443.06v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2019.601l-1.853-.634-.01%201.238zM35.744%2023.476v-.179l8.443.06v.179z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2023.456l-1.853-.634-.01%201.238zM35.744%2027.33v-.178l8.443.06v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2027.31l-1.853-.634-.01%201.24zM35.744%2031.185v-.179l8.443.06v.179z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2031.165l-1.853-.634-.01%201.239zM35.744%2035.04v-.178l8.443.06v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2035.02l-1.853-.634-.01%201.239zM35.744%2038.825v-.178l8.443.06v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2038.806l-1.853-.635-.01%201.24zM35.744%2042.68v-.179l8.443.06v.179z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2042.66l-1.853-.634-.01%201.239zM35.744%2046.535v-.178l8.443.06v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2046.515l-1.853-.634-.01%201.239zM35.744%2050.39v-.179l8.443.06v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M45.96%2050.37l-1.853-.634-.01%201.239z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%22116.51%22%20y=%2274.439%22%20font-weight=%22700%22%20font-size=%224.548%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22116.51%22%20y=%2274.439%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila_cuad%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%22119.641%22%20y=%2279.414%22%20font-weight=%22400%22%20font-size=%223.506%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22119.641%22%20y=%2279.414%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila%5B8:4%5D%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M49.924%2027.568v-.356h3.815v.356z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M55.87%2027.39l-2.23-.743v1.486zM44.335%2019.66v-.178l4.49.05v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M50.598%2019.64l-1.853-.643-.01%201.238zM44.761%2023.535v-.178l4.49.05v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M51.024%2023.515l-1.853-.644-.01%201.239zM45.752%2027.4v-.179l4.49.05v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M52.015%2027.38l-1.853-.644-.01%201.239zM44.761%2031.274v-.178l4.49.05v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M51.024%2031.255l-1.853-.645-.01%201.24zM44.335%2035.07v-.179l4.49.05v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M50.598%2035.05l-1.853-.644-.01%201.239zM49.746%2018.59l.178-.04.179-.04%201.981%208.93-.178.04-.178.039z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M52.084%2027.44v.079l-.178-.04zM51.728%2027.44l.178.04.178.039-1.981%208.918-.179-.04-.178-.039z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%22117.55%22%20y=%22125.818%22%20font-weight=%22400%22%20font-size=%223.506%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22117.55%22%20y=%22125.818%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol%5B8:4%5D%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M50.122%2074.141v-.357h3.816v.357z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M56.068%2073.963l-2.23-.744v1.487zM43.305%2066.174v-.179l4.489.05v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M49.567%2066.154l-1.853-.644-.01%201.239zM43.73%2070.048v-.178l4.49.05v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M49.994%2070.029l-1.854-.645-.01%201.24zM44.722%2073.913v-.178l4.489.05v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M50.985%2073.893l-1.854-.644-.01%201.239zM43.73%2077.788v-.179l4.49.05v.179z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M49.994%2077.768l-1.854-.644-.01%201.238zM43.305%2081.583v-.178l4.489.05v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M49.567%2081.563l-1.853-.644-.01%201.239zM48.834%2065.163l.179-.04.178-.04%201.982%208.93-.179.039-.178.04z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M51.173%2074.012v.08l-.179-.04z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M50.816%2074.012l.178.04.179.04-1.982%208.918-.178-.04-.179-.04z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%22114.26%22%20y=%22120.645%22%20font-weight=%22700%22%20font-size=%224.548%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22114.26%22%20y=%22120.645%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol_cuad%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M54.69%2074.21v-.356H73.4v.356z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M73.578%2074.062c-.01.02-.01.04-.02.06-.02.029-.04.049-.069.069-.03.01-.06.02-.09.02v-.179zM68%2073.891c.01-.02.01-.04.019-.06.02-.03.04-.049.07-.069.029-.01.059-.02.089-.02v.179z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M73.5%2074.704l-.148.208%202.764-.991-2.764-.991.148.198.12.238.079.258.03.287-.03.277-.08.268z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M55.533%2027.628v-.357h21.375v.357zM77.076%2027.519c-.01.01-.01.01-.01.02a.23.23%200%200%201-.07.069c-.029.01-.059.02-.088.02v-.179z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M65.984%2027.4c.01-.009.01-.009.01-.019a.23.23%200%200%201%20.069-.07.29.29%200%200%201%20.09-.02v.18zM76.547%2028.253l-.149.208%202.765-.99-2.765-.992.15.198.118.238.08.258.029.287-.03.278-.079.267z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%22131.672%22%20y=%22125.17%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22131.672%22%20y=%22125.17%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E5%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%22133.98%22%20y=%2278.154%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22133.98%22%20y=%2278.154%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E5%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M71.94%2024.854l-2.974%204.261%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.01%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M8.69%20100.223H.269V14.636h16.846v85.587z%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M8.69%2099.688v.535H.269v-.535zM.268%20106.567a.2.2%200%200%201-.13-.04.177.177%200%200%201-.098-.089.248.248%200%200%201-.04-.139h.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M.535%20100.152H0V14.636h.535z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M0%2014.636a.2.2%200%200%201%20.04-.129c.02-.05.05-.079.089-.099.05-.03.089-.04.139-.04v.268zM.268%2014.904v-.535h16.846v.535zM17.114%2014.369c.05%200%20.089.01.138.04.04.02.07.049.09.098a.2.2%200%200%201%20.04.13h-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M17.114%2014.636h.267v85.587h-.267z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M17.381%2099.42c0%20.05-.01.09-.04.139-.02.04-.049.07-.088.09-.05.029-.09.039-.14.039v-.268zM17.114%2099.688v.535H8.69v-.535z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:111.155%25;text-align:start%22%20x=%2264.881%22%20y=%2269.385%22%20font-weight=%22400%22%20font-size=%225.242%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2264.881%22%20y=%2269.385%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Esincro%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2264.881%22%20y=%2275.212%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3EVGA%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:143.963%25;text-align:start%22%20x=%2298.811%22%20y=%2293.733%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2298.811%22%20y=%2293.733%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(1)%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2298.811%22%20y=%2297.756%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(0)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2298.811%22%20y=%2289.7%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2298.811%22%20y=%2289.7%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(2)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2298.811%22%20y=%2285.676%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2298.811%22%20y=%2285.676%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(3)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:143.963%25;text-align:start%22%20x=%2298.811%22%20y=%2278.323%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2298.811%22%20y=%2278.323%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(5)%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2298.811%22%20y=%2282.347%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(4)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2298.811%22%20y=%2274.29%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2298.811%22%20y=%2274.29%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(6)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2298.811%22%20y=%2270.267%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2298.811%22%20y=%2270.267%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(7)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2298.811%22%20y=%2266.581%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2298.811%22%20y=%2266.581%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(8)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2298.811%22%20y=%2262.716%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2298.811%22%20y=%2262.716%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila(9)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:141.835%25;text-align:start%22%20x=%2297.82%22%20y=%22140.345%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2297.82%22%20y=%22140.345%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(1)%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2297.82%22%20y=%22144.309%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(0)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2297.82%22%20y=%22136.381%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2297.82%22%20y=%22136.381%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(2)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2297.82%22%20y=%22132.418%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2297.82%22%20y=%22132.418%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(3)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2297.82%22%20y=%22128.692%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2297.82%22%20y=%22128.692%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(4)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2297.82%22%20y=%22124.906%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2297.82%22%20y=%22124.906%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(5)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2297.82%22%20y=%22120.853%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2297.82%22%20y=%22120.853%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(6)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2297.82%22%20y=%22117.206%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2297.82%22%20y=%22117.206%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(7)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2297.82%22%20y=%22113.243%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2297.82%22%20y=%22113.243%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(8)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2297.82%22%20y=%22109.467%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%2297.82%22%20y=%22109.467%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol(9)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M35.872%2013.09l.179.03.178.03-2.973%2018.868-.178-.03-.178-.03zM32.9%2032.018v-.03-.03l.178.03z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M32.9%2032.018l.178-.03.178-.03%202.973%2018.878-.178.03-.179.03z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M34.882%2059.723l.178.03.178.03-2.973%2018.867-.178-.03-.178-.03z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M31.909%2078.65v-.03-.03l.178.03zM31.909%2078.65l.178-.03.178-.03%202.973%2018.878-.178.03-.178.03z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:158.887%25;text-align:start%22%20x=%22116.411%22%20y=%2289.085%22%20font-weight=%22700%22%20font-size=%224.548%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22116.411%22%20y=%2289.085%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Efila_in%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%22116.411%22%20y=%2296.311%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20font-weight=%22400%22%20font-size=%223.506%22%20fill=%22#090%22%3Efila%5B3:1%5D%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M51.916%2042.849v-.357h2.824v.357z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M56.87%2042.67l-2.229-.743v1.487zM44.345%2038.835v-.178l4.49.05v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M50.608%2038.816l-1.853-.645-.01%201.24zM44.771%2046.674v-.179l4.49.05v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M51.034%2046.654l-1.853-.644-.01%201.239zM45.762%2042.61v-.178l4.49.05v.178z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M52.025%2042.591l-1.853-.644-.01%201.239z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M49.805%2037.726l.13-.05.128-.05%201.982%204.955-.129.05-.129.05z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M52.045%2042.581c.01.01.02.03.02.05%200%20.02-.01.04-.02.05l-.129-.05zM51.787%2042.581l.129.05.129.05-1.982%204.944-.129-.05-.129-.049z%22%20fill=%22#090%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:112.759%25;text-align:start%22%20x=%22110.069%22%20y=%2299.847%22%20font-style=%22italic%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22110.069%22%20y=%2299.847%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3E%C3%972:%20el%20bit%200%20no%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%22110.069%22%20y=%22102.998%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3Ees%20de%20la%20NES%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:158.887%25;text-align:start%22%20x=%22116.331%22%20y=%22135.718%22%20font-weight=%22700%22%20font-size=%224.548%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22116.331%22%20y=%22135.718%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ecol_in%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%22116.331%22%20y=%22142.943%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20font-weight=%22400%22%20font-size=%223.506%22%20fill=%22#c00%22%3Ecol%5B3:1%5D%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M51.837%2089.481v-.357h2.824v.357z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M56.791%2089.303l-2.23-.744v1.487zM44.266%2085.468v-.179l4.489.05v.179z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M50.529%2085.448l-1.853-.644-.01%201.238zM44.692%2093.306v-.178l4.489.05v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M50.955%2093.286l-1.853-.644-.01%201.239zM45.683%2089.243v-.178l4.489.05v.178z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M51.946%2089.223l-1.853-.644-.01%201.239z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M49.726%2084.358l.129-.05.129-.05%201.982%204.956-.13.049-.128.05z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M51.966%2089.213c.01.01.02.03.02.05%200%20.02-.01.04-.02.05l-.13-.05z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M51.708%2089.213l.129.05.129.05-1.982%204.944-.13-.05-.128-.049z%22%20fill=%22#c00%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:112.759%25;text-align:start%22%20x=%22109.087%22%20y=%22146.479%22%20font-style=%22italic%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-62.424%20-48.14)%22%3E%3Ctspan%20x=%22109.087%22%20y=%22146.479%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3E%C3%972:%20el%20bit%200%20no%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%22109.087%22%20y=%22149.631%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3Ees%20de%20la%20NES%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "761b57b5-afb4-4409-b452-8ef6685217a1",
              "type": "basic.output",
              "data": {
                "name": "fila_cuad",
                "range": "[4:0]",
                "size": 5
              },
              "position": {
                "x": 784,
                "y": 208
              }
            },
            {
              "id": "27375ea2-5fe8-4227-ac3a-e914cb2c5cf7",
              "type": "basic.input",
              "data": {
                "name": "fila",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 96,
                "y": 256
              }
            },
            {
              "id": "b1078b85-9eff-4ec9-8e28-37587fea5d9a",
              "type": "basic.output",
              "data": {
                "name": "col_cuad",
                "range": "[4:0]",
                "size": 5
              },
              "position": {
                "x": 792,
                "y": 272
              }
            },
            {
              "id": "57ecb7c9-d791-47d3-9456-a4a526413a8c",
              "type": "basic.output",
              "data": {
                "name": "fila_in",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 784,
                "y": 328
              }
            },
            {
              "id": "fb5977e3-397a-4480-b430-1efa86455c66",
              "type": "basic.output",
              "data": {
                "name": "col_in",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 776,
                "y": 392
              }
            },
            {
              "id": "79a732ab-2619-4b24-8a39-70e62699bdd2",
              "type": "basic.input",
              "data": {
                "name": "col",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 96,
                "y": 408
              }
            },
            {
              "id": "c8cbd9f7-a12d-4a19-baa2-182e19e2ebe4",
              "type": "basic.output",
              "data": {
                "name": "col9"
              },
              "position": {
                "x": 760,
                "y": 456
              }
            },
            {
              "id": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
              "type": "basic.code",
              "data": {
                "code": "// Generate grid signals\n\nassign col_cuad = col[8:4];\nassign fila_cuad = fila[8:4];\n\n// useful to know when we are over column 511\nassign col9 = col[9];\nassign fila_in = fila[3:1];\nassign col_in = col[3:1];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "fila",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "col",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ],
                  "out": [
                    {
                      "name": "fila_cuad",
                      "range": "[4:0]",
                      "size": 5
                    },
                    {
                      "name": "col_cuad",
                      "range": "[4:0]",
                      "size": 5
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
                "x": 312,
                "y": 208
              },
              "size": {
                "width": 376,
                "height": 312
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "27375ea2-5fe8-4227-ac3a-e914cb2c5cf7",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "fila"
              },
              "size": 10
            },
            {
              "source": {
                "block": "79a732ab-2619-4b24-8a39-70e62699bdd2",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "col"
              },
              "size": 10
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "fila_cuad"
              },
              "target": {
                "block": "761b57b5-afb4-4409-b452-8ef6685217a1",
                "port": "in"
              },
              "size": 5
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "col_cuad"
              },
              "target": {
                "block": "b1078b85-9eff-4ec9-8e28-37587fea5d9a",
                "port": "in"
              },
              "size": 5
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "fila_in"
              },
              "target": {
                "block": "57ecb7c9-d791-47d3-9456-a4a526413a8c",
                "port": "in"
              },
              "size": 3
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "col_in"
              },
              "target": {
                "block": "fb5977e3-397a-4480-b430-1efa86455c66",
                "port": "in"
              },
              "size": 3
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "col9"
              },
              "target": {
                "block": "c8cbd9f7-a12d-4a19-baa2-182e19e2ebe4",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "3ff344675dd7ed44ad9504b5ab138f654f5afdb8": {
      "package": {
        "name": "NameTable SMario sports",
        "version": "1.0",
        "description": "Name Table of a SuperMario screen, input ports are split in grid col & row",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22255.278%22%20height=%22274.631%22%20viewBox=%220%200%2067.542374%2072.662765%22%3E%3Cg%20transform=%22translate(-63.716%20-48.29)%22%3E%3Cimage%20y=%2257.641%22%20x=%2263.727%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAAB4CAMAAAANIQqNAAADAFBMVEX////+/v79/f38/Pz7+/v6%20+vr5+fn4+Pj39/f29vb19fX09PTz8/Py8vLx8fHw8PDv7+/u7u7t7e3s7Ozr6+vq6urp6eno6Ojn%205+fm5ubl5eXk5OTj4+Pi4uLh4eHg4ODf39/e3t7d3d3c3Nzb29va2trZ2dnY2NjX19fW1tbV1dXU%201NTT09PS0tLR0dHQ0NDPz8/Ozs7Nzc3MzMzLy8vKysrJycnIyMjHx8fGxsbFxcXExMTDw8PCwsLB%20wcHAwMC/v7++vr69vb28vLy7u7u6urq5ubm4uLi3t7e2tra1tbW0tLSzs7OysrKxsbGwsLCvr6+u%20rq6tra2srKyrq6uqqqqpqamoqKinp6empqalpaWkpKSjo6OioqKhoaGgoKCfn5+enp6dnZ2cnJyb%20m5uampqZmZmYmJiXl5eWlpaVlZWUlJSTk5OSkpKRkZGQkJCPj4+Ojo6NjY2MjIyLi4uKioqJiYmI%20iIiHh4eGhoaFhYWEhISDg4OCgoKBgYGAgIB/f39+fn59fX18fHx7e3t6enp5eXl4eHh3d3d2dnZ1%20dXV0dHRzc3NycnJxcXFwcHBvb29ubm5tbW1sbGxra2tqamppaWloaGhnZ2dmZmZlZWVkZGRjY2Ni%20YmJhYWFgYGBfX19eXl5dXV1cXFxbW1taWlpZWVlYWFhXV1dWVlZVVVVUVFRTU1NSUlJRUVFQUFBP%20T09OTk5NTU1MTExLS0tKSkpJSUlISEhHR0dGRkZFRUVERERDQ0NCQkJBQUFAQEA/Pz8+Pj49PT08%20PDw7Ozs6Ojo5OTk4ODg3Nzc2NjY1NTU0NDQzMzMyMjIxMTEwMDAvLy8uLi4tLS0sLCwrKysqKiop%20KSkoKCgnJycmJiYlJSUkJCQjIyMiIiIhISEgICAfHx8eHh4dHR0cHBwbGxsaGhoZGRkYGBgXFxcW%20FhYVFRUUFBQTExMSEhIREREQEBAPDw8ODg4NDQ0MDAwLCwsKCgoJCQkICAgHBwcGBgYFBQUEBAQD%20AwMCAgIBAQEAAADuruGUAAAACXBIWXMAAA7EAAAOxAGVKw4bAAABMUlEQVRoge3au0oEMRhA4VEL%20QdBCUAQRLFzRRrzf28UH8PKkXl7PE9jAEBxWdtU/mHOa7GxmMl+RJjDdXnCdAAECqgJs0gpt0zpt%200XcX2qV0f3p2g1Ypz+1QWi+tv0YC6gV0kxZomfJ1nj+iQyr/z6XnDiiN5dwSLVIaBdQLiEiAAAH/%20B3BJVySgTcAFjSZdk4D2ADd0S3d0TwLaA8yTgHYAj/REAtoFPNMLCWgXMJQAAQIECBAgQIAAAQLq%20B4yLpt0/dAid+XAqIBzwUDTt/qFD6MyHUwHhgN9OQH2AEzolAW0CjmmfzumMBLQFyC/v9xcIAXUA%20+psvvzz/nheRP24pRwH1AL7afD+1Gfsft5Tlj10ExANe6Y2iRgHxgHf6oKhRQDwgfBMKCAeEb0IB%200YBPcoIsFGPyIUEAAAAASUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2263.311%22%20width=%2267.532%22%20image-rendering=%22optimizeSpeed%22/%3E%3Ctext%20transform=%22scale(.94206%201.0615)%22%20y=%2253.945%22%20x=%2266.91%22%20style=%22line-height:27.21696854px;-inkscape-font-specification:Arial%22%20font-weight=%22400%22%20font-size=%2211.613%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke=%22#000032%22%20stroke-width=%22.3%22%3E%3Ctspan%20y=%2253.945%22%20x=%2266.91%22%3ENAME%20TABLE%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "8593ace3-4a73-434b-bf94-f2a959a81b65",
              "type": "basic.input",
              "data": {
                "name": "fila_cuad",
                "range": "[4:0]",
                "clock": false,
                "size": 5
              },
              "position": {
                "x": 80,
                "y": 224
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
              "id": "371e3ddb-3232-4c76-87cb-cf04ee71335b",
              "type": "basic.input",
              "data": {
                "name": "col_cuad",
                "range": "[4:0]",
                "clock": false,
                "size": 5
              },
              "position": {
                "x": 80,
                "y": 312
              }
            },
            {
              "id": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
              "type": "basic.code",
              "data": {
                "code": "// @include smario_traspas_nt_nt0.v\n\nwire [9:0] dir_ntable;\n\nassign dir_ntable = {fila_cuad, col_cuad};\n\nROM_NTABLE_SMARIO_TRASPAS NTABLE\n(\n  .addr(dir_ntable),\n  .dout(num_patron)\n);",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "fila_cuad",
                      "range": "[4:0]",
                      "size": 5
                    },
                    {
                      "name": "col_cuad",
                      "range": "[4:0]",
                      "size": 5
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
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "num_patron"
              },
              "target": {
                "block": "3156d8d0-7df0-42f8-8709-e2c38220f2a2",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "8593ace3-4a73-434b-bf94-f2a959a81b65",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "fila_cuad"
              },
              "size": 5
            },
            {
              "source": {
                "block": "371e3ddb-3232-4c76-87cb-cf04ee71335b",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "col_cuad"
              },
              "size": 5
            }
          ]
        }
      }
    },
    "c8e0430447abb12a7bfb9bdff7e7332703864b93": {
      "package": {
        "name": "Name Table Pixel generator",
        "version": "1.0",
        "description": "Pixel generation with just the NameTable ",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22211.322%22%20height=%22259.185%22%20viewBox=%220%200%2055.912194%2068.575992%22%3E%3Cdefs%3E%3Cpath%20id=%22a%22%20d=%22M40.879%2055.888h129.457v111.314H40.879z%22/%3E%3C/defs%3E%3Ctext%20transform=%22matrix(.94206%200%200%201.0615%20-64.785%20-50.256)%22%20y=%2255.939%22%20x=%2268.033%22%20style=%22line-height:27.217px;-inkscape-font-specification:Arial%22%20font-weight=%22400%22%20font-size=%2211.613%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke=%22#000032%22%20stroke-width=%22.3%22%3E%3Ctspan%20y=%2255.939%22%20x=%2268.033%22%3EPIXEL%20GEN%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M1.36%2040.448v-.4h9.632v.4z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M11.025%2041.348l-.211.289%203.877-1.389-3.877-1.389.21.278.167.333.112.367.033.4-.022.389-.123.377z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:187.365%25;text-align:center%22%20x=%2272.034%22%20y=%2286.292%22%20font-weight=%22400%22%20font-size=%223.836%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2272.034%22%20y=%2286.292%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Edato%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2272.519%22%20y=%2293.481%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20font-size=%223.489%22%3E%20%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20font-size=%223.489%22%3E8%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M9.136%2036.338l-5.554%208.476%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.0112397%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M16.046%2015.92V15.707h10.032V15.92z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M26.1%2016.686l-.167.233%203.1-1.11-3.1-1.112.167.222.133.267.089.289.033.322-.033.311-.089.3z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2281.594%22%20y=%2265.883%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2281.594%22%20y=%2265.883%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Edato(7)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M16.035%2013.564l.156.011.155.011-2.21%2026.451-.156-.011-.156-.011z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M13.824%2040.037v-.011-.011l.156.01zM13.824%2040.037l.156-.011.155-.011%202.211%2026.872-.155.011-.156.012zM16.002%2023.14V22.93h10.031V23.14z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M26.055%2023.907l-.166.233%203.1-1.11-3.1-1.112.166.222.134.267.089.289.033.322-.033.311-.09.3z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2281.555%22%20y=%2272.307%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2281.555%22%20y=%2272.307%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Edato(6)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M16.002%2030.916V30.706h10.031V30.915z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M26.055%2031.683l-.166.233%203.1-1.11-3.1-1.112.166.223.134.266.089.29.033.321-.033.311-.09.3z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2281.555%22%20y=%2279.226%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2281.555%22%20y=%2279.226%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Edato(5)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M15.957%2038.137V37.927H25.99V38.136z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M26.01%2038.904l-.166.233%203.1-1.11-3.1-1.112.167.223.133.266.09.289.032.322-.033.311-.089.3z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2281.515%22%20y=%2285.65%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2281.515%22%20y=%2285.65%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Edato(4)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M16.002%2045.358V45.148h10.031V45.357z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M26.055%2046.125l-.166.233%203.1-1.11-3.1-1.112.166.222.134.267.089.289.033.322-.033.311-.09.3z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2281.555%22%20y=%2292.074%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2281.555%22%20y=%2292.074%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Edato(3)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M15.957%2052.579V52.368H25.99V52.579z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M26.01%2053.346l-.166.233%203.1-1.111-3.1-1.111.167.222.133.267.09.289.032.322-.033.31-.089.3z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2281.515%22%20y=%2298.499%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2281.515%22%20y=%2298.499%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Edato(2)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M15.957%2060.355V60.145H25.99V60.354z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M26.01%2061.122l-.166.233%203.1-1.11-3.1-1.112.167.223.133.266.09.289.032.322-.033.311-.089.3z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2281.515%22%20y=%22105.417%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2281.515%22%20y=%22105.417%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Edato(1)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M15.913%2067.576V67.366h10.031V67.575z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M25.966%2068.343l-.166.233%203.1-1.11-3.1-1.112.166.222.134.267.089.289.033.322-.033.311-.09.3z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2281.476%22%20y=%22111.842%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2281.476%22%20y=%22111.842%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Edato(0)%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:441.348%25;text-align:start%22%20x=%2292.476%22%20y=%2275.064%22%20font-weight=%22400%22%20font-size=%223.142%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2292.476%22%20y=%2275.064%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22red%22%3Erojo%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2292.476%22%20y=%2288.931%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#0c0%22%3Everde%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2292.891%22%20y=%22102.284%22%20font-weight=%22400%22%20font-size=%223.489%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2292.891%22%20y=%22102.284%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#00f%22%3Eazul%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M30.921%2049.68v-.6h6.988v.6z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M37.942%2050.602l-.244.333%204.332-1.555-4.332-1.545.233.312.189.366.122.411.055.433-.044.445-.122.422z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M32.699%2051.768l2.021-4.255%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.0112397%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2294.245%22%20y=%2296.137%22%20font-weight=%22400%22%20font-size=%222.447%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2294.245%22%20y=%2296.137%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E2%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M30.01%2035.249v-.6h6.988v.6z%22%20fill=%22#0f0%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M37.031%2036.171l-.244.333%204.332-1.555-4.332-1.544.233.31.189.368.122.41.056.434-.045.444-.122.422z%22%20fill=%22#0f0%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M30.632%2019.585v-.6h6.988v.6z%22%20fill=%22red%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M37.653%2020.507l-.244.334%204.332-1.556-4.332-1.544.233.311.189.367.122.41.056.434-.045.444-.122.423z%22%20fill=%22red%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M32.71%2036.227l2.022-4.255%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.0112397%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2294.255%22%20y=%2282.309%22%20font-weight=%22400%22%20font-size=%222.447%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2294.255%22%20y=%2282.309%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E2%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M32.72%2020.685l2.023-4.255%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.0112397%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2294.265%22%20y=%2268.482%22%20font-weight=%22400%22%20font-size=%222.447%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%2294.265%22%20y=%2268.482%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E2%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M28.288%2014.253l.145-.067.144-.066%202.222%205.099-.145.066-.144.067z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M30.799%2019.219a.158.158%200%200%201%20.022.066c0%20.023-.011.045-.022.067l-.145-.067z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M30.51%2019.219l.144.066.145.067-2.222%205.177-.144-.067-.145-.067zM28.288%2029.806l.145-.067.144-.067%202.222%205.1-.145.066-.144.067z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M30.799%2034.771a.158.158%200%200%201%20.022.067c0%20.022-.011.044-.022.067l-.145-.067z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M30.51%2034.771l.144.067.145.067-2.222%205.176-.144-.066-.145-.067zM28.288%2044.247l.145-.066.144-.067%202.222%205.099-.145.067-.144.066zM30.799%2049.213c.011.022.022.044.022.067%200%20.022-.011.044-.022.066l-.145-.066z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M30.51%2049.213l.144.067.145.066-2.222%205.177-.144-.067-.145-.066z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M48.696%2039.67H43.14V28.561h11.11v11.11z%22%20fill=%22#ff0%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M48.696%2039.082v1.188H43.14v-1.188z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M43.141%2040.27a.59.59%200%200%201-.3-.089.577.577%200%200%201-.289-.511h.589zM43.74%2039.67h-1.188V28.561h1.189zM42.552%2028.561a.577.577%200%200%201%20.59-.588v.588z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M43.141%2029.161v-1.188h11.11v1.188z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M54.25%2027.973a.577.577%200%200%201%20.511.288c.056.1.089.19.089.3h-.6zM53.661%2028.561h1.189v11.11h-1.189z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M54.85%2039.67a.59.59%200%200%201-.089.3.638.638%200%200%201-.211.211.59.59%200%200%201-.3.09v-.6zM54.25%2039.082v1.188h-5.554v-1.188z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%22104.376%22%20y=%2294.407%22%20font-weight=%22400%22%20font-size=%224.878%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22matrix(1.12397%200%200%201.12397%20-74.175%20-59.23)%22%3E%3Ctspan%20x=%22104.376%22%20y=%2294.407%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3Ep%C3%ADxel%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "ceb71b0d-9d2c-4d2f-b16d-0129e53a7ff2",
              "type": "basic.input",
              "data": {
                "name": "num_patron",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 88,
                "y": 208
              }
            },
            {
              "id": "8b73ebf1-bb59-460a-a6da-21c02c7c4186",
              "type": "basic.output",
              "data": {
                "name": "red",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 752,
                "y": 208
              }
            },
            {
              "id": "f333e39d-27ee-4a3e-a3dd-9227c58ed521",
              "type": "basic.input",
              "data": {
                "name": "col9",
                "clock": false
              },
              "position": {
                "x": 88,
                "y": 272
              }
            },
            {
              "id": "a94667bf-8cfd-46f4-b06b-9fd7730745f6",
              "type": "basic.output",
              "data": {
                "name": "green",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 760,
                "y": 272
              }
            },
            {
              "id": "8d28a972-0af6-4365-b69c-0759ca472772",
              "type": "basic.input",
              "data": {
                "name": "visible",
                "clock": false
              },
              "position": {
                "x": 96,
                "y": 328
              }
            },
            {
              "id": "fc256100-027b-47a5-8936-e2680ce4c1f9",
              "type": "basic.output",
              "data": {
                "name": "blue",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 752,
                "y": 328
              }
            },
            {
              "id": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
              "type": "basic.code",
              "data": {
                "code": " reg [1:0] rojo, verde, azul;\r\n assign red = rojo;\r\n assign green = verde;\r\n assign blue = azul;\r\n \r\n always @(*)\r\n  begin\r\n    rojo   = 2'b00;\r\n    verde  = 2'b00;\r\n    azul   = 2'b00;\r\n    if (visible) begin\r\n      if (col9 == 1'b0) begin  // less than 512\r\n        rojo  = ~num_patron [7:6];\r\n        //verde = ~num_patron [7:6];\r\n        verde = num_patron [5:4]; //instead of num_patron [7:6], to have more colors\r\n        //azul  = ~num_patron [7:6];\r\n        azul  = num_patron [3:2]; //instead of num_patron [7:6], to have more colors\r\n      end\r\n    end\r\n  end",
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
                    },
                    {
                      "name": "visible"
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
                "block": "ceb71b0d-9d2c-4d2f-b16d-0129e53a7ff2",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "num_patron"
              },
              "size": 8
            },
            {
              "source": {
                "block": "f333e39d-27ee-4a3e-a3dd-9227c58ed521",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "col9"
              }
            },
            {
              "source": {
                "block": "8d28a972-0af6-4365-b69c-0759ca472772",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "visible"
              }
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "red"
              },
              "target": {
                "block": "8b73ebf1-bb59-460a-a6da-21c02c7c4186",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "green"
              },
              "target": {
                "block": "a94667bf-8cfd-46f4-b06b-9fd7730745f6",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "blue"
              },
              "target": {
                "block": "fc256100-027b-47a5-8936-e2680ce4c1f9",
                "port": "in"
              },
              "size": 2
            }
          ]
        }
      }
    }
  }
}