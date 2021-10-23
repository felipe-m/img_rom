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
            "x": 1816,
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
            "x": 1832,
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
            "x": 1832,
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
            "x": 1832,
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
            "x": 1824,
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
          "id": "4c83abc8-dd84-45eb-a1ed-9474a00749ba",
          "type": "basic.info",
          "data": {
            "info": "Color assignment",
            "readonly": false
          },
          "position": {
            "x": 1576,
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
            "x": 1280,
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
            "x": 1280,
            "y": 48
          },
          "size": {
            "width": 96,
            "height": 64
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
            "x": 1264,
            "y": -56
          },
          "size": {
            "width": 144,
            "height": 32
          }
        },
        {
          "id": "a15c10dc-ad5c-4ee7-999b-9adf7ca2db90",
          "type": "82cebd489cbe34773e2c5851892c6e3e0ae34871",
          "position": {
            "x": 672,
            "y": 232
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "7d4ecdd0-ea20-46ec-a641-3debb87a2229",
          "type": "3ff344675dd7ed44ad9504b5ab138f654f5afdb8",
          "position": {
            "x": 968,
            "y": 232
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "575e4198-f879-46d6-bc39-022b72280053",
          "type": "basic.info",
          "data": {
            "info": "Name Table",
            "readonly": false
          },
          "position": {
            "x": 968,
            "y": 192
          },
          "size": {
            "width": 104,
            "height": 40
          }
        },
        {
          "id": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
          "type": "47ab07ffc9f74498587b9576ce2382bd13665682",
          "position": {
            "x": 1624,
            "y": 200
          },
          "size": {
            "width": 96,
            "height": 256
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
            "block": "a15c10dc-ad5c-4ee7-999b-9adf7ca2db90",
            "port": "79a732ab-2619-4b24-8a39-70e62699bdd2"
          },
          "size": 10
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "f79463ca-feb0-49f0-9c94-7ecdcb1ef6d4"
          },
          "target": {
            "block": "a15c10dc-ad5c-4ee7-999b-9adf7ca2db90",
            "port": "27375ea2-5fe8-4227-ac3a-e914cb2c5cf7"
          },
          "size": 10
        },
        {
          "source": {
            "block": "a15c10dc-ad5c-4ee7-999b-9adf7ca2db90",
            "port": "761b57b5-afb4-4409-b452-8ef6685217a1"
          },
          "target": {
            "block": "7d4ecdd0-ea20-46ec-a641-3debb87a2229",
            "port": "8593ace3-4a73-434b-bf94-f2a959a81b65"
          },
          "size": 5
        },
        {
          "source": {
            "block": "a15c10dc-ad5c-4ee7-999b-9adf7ca2db90",
            "port": "b1078b85-9eff-4ec9-8e28-37587fea5d9a"
          },
          "target": {
            "block": "7d4ecdd0-ea20-46ec-a641-3debb87a2229",
            "port": "371e3ddb-3232-4c76-87cb-cf04ee71335b"
          },
          "size": 5
        },
        {
          "source": {
            "block": "7d4ecdd0-ea20-46ec-a641-3debb87a2229",
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
            "block": "a15c10dc-ad5c-4ee7-999b-9adf7ca2db90",
            "port": "57ecb7c9-d791-47d3-9456-a4a526413a8c"
          },
          "target": {
            "block": "84d5a1b0-15b8-4a89-bbad-27bdc5a93ed5",
            "port": "afa1f958-1332-4524-8c53-6d2ed95b19d0"
          },
          "vertices": [
            {
              "x": 872,
              "y": 264
            }
          ],
          "size": 3
        },
        {
          "source": {
            "block": "7d4ecdd0-ea20-46ec-a641-3debb87a2229",
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
            "block": "a15c10dc-ad5c-4ee7-999b-9adf7ca2db90",
            "port": "57ecb7c9-d791-47d3-9456-a4a526413a8c"
          },
          "target": {
            "block": "5c8ba9fe-f667-48c6-8c42-6aa6f03dc431",
            "port": "afa1f958-1332-4524-8c53-6d2ed95b19d0"
          },
          "size": 3
        },
        {
          "source": {
            "block": "84d5a1b0-15b8-4a89-bbad-27bdc5a93ed5",
            "port": "3156d8d0-7df0-42f8-8709-e2c38220f2a2"
          },
          "target": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "808b3586-c354-4732-a3d2-8f876e1dfeef"
          },
          "size": 8
        },
        {
          "source": {
            "block": "5c8ba9fe-f667-48c6-8c42-6aa6f03dc431",
            "port": "3156d8d0-7df0-42f8-8709-e2c38220f2a2"
          },
          "target": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "ceb71b0d-9d2c-4d2f-b16d-0129e53a7ff2"
          },
          "vertices": [
            {
              "x": 1496,
              "y": 224
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "a15c10dc-ad5c-4ee7-999b-9adf7ca2db90",
            "port": "fb5977e3-397a-4480-b430-1efa86455c66"
          },
          "target": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "cae90750-e98b-40cc-821c-a7eb30a26c6d"
          },
          "vertices": [
            {
              "x": 1360,
              "y": 288
            }
          ],
          "size": 3
        },
        {
          "source": {
            "block": "a15c10dc-ad5c-4ee7-999b-9adf7ca2db90",
            "port": "c8cbd9f7-a12d-4a19-baa2-182e19e2ebe4"
          },
          "target": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "f333e39d-27ee-4a3e-a3dd-9227c58ed521"
          },
          "vertices": [
            {
              "x": 1392,
              "y": 328
            }
          ]
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "ce9b9f02-391c-416d-a455-217278662a02"
          },
          "target": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "2f5a72ee-6275-4639-bc4a-d20fe28ed879"
          },
          "vertices": [
            {
              "x": 608,
              "y": 416
            },
            {
              "x": 1552,
              "y": 360
            }
          ]
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "354f80a2-bb32-4165-a271-37d15b197a7e"
          },
          "target": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "1cf17be6-8361-44f0-89e2-f2e1c95e128a"
          },
          "vertices": [
            {
              "x": 592,
              "y": 432
            }
          ]
        },
        {
          "source": {
            "block": "68a2c72e-69ce-49b2-98ab-ce73d2abf5f1",
            "port": "c8fac79a-4c87-471a-863d-843267fb0fd5"
          },
          "target": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "8d28a972-0af6-4365-b69c-0759ca472772"
          },
          "vertices": [
            {
              "x": 576,
              "y": 448
            }
          ]
        },
        {
          "source": {
            "block": "53d08452-b84c-42b0-9223-f3308d77a9a8",
            "port": "584255ae-1237-4bc8-a669-c92466c9372d"
          },
          "target": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "ce19a0d9-ce92-4aa7-b8bd-65f1a9a5b1ed"
          },
          "vertices": [
            {
              "x": 504,
              "y": 456
            }
          ]
        },
        {
          "source": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
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
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
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
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "fc256100-027b-47a5-8936-e2680ce4c1f9"
          },
          "target": {
            "block": "51f4b540-43e6-4afd-85a4-d21d9f0e94ee",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "c3d7d71c-dd5f-4f01-9d02-0d98addd76b2"
          },
          "target": {
            "block": "e5dd3879-f74b-46b9-b9aa-4506eadd42da",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "da4e6b3a-e8bb-45b6-89e3-338d900cffaa",
            "port": "9a83c713-bf95-4d25-a91f-9e548e454bb0"
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
    "47ab07ffc9f74498587b9576ce2382bd13665682": {
      "package": {
        "name": "Name & Pattern Tables Pxl Gen",
        "version": "1.0",
        "description": "Pixel generator for Name Table and pattern tables",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22282.686%22%20height=%22234.896%22%20viewBox=%220%200%2074.793962%2062.149669%22%3E%3Cdefs%3E%3Cpath%20id=%22a%22%20d=%22M40.879%2055.888h129.457v111.314H40.879z%22/%3E%3C/defs%3E%3Cg%20transform=%22translate(-59.044%20-50.256)%22%3E%3Cpath%20d=%22M59.044%2068.446H99%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.547%22/%3E%3Ctext%20transform=%22scale(.94206%201.0615)%22%20y=%2256.937%22%20x=%2271.965%22%20style=%22line-height:27.217px;-inkscape-font-specification:Arial%22%20font-weight=%22400%22%20font-size=%2211.613%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke=%22#000032%22%20stroke-width=%22.3%22%3E%3Ctspan%20y=%2256.937%22%20x=%2271.965%22%3EPIXEL%20GEN%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M93.265%2082.38v29.758l5.654-2.708V85.087z%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M92.997%2082.38a.2.2%200%200%201%20.04-.13c.02-.049.05-.079.099-.099a.2.2%200%200%201%20.129-.04c.04%200%20.079.01.119.03l-.12.239zM92.997%2082.38h.535v29.758h-.535zM93.384%20112.376c-.04.02-.08.03-.12.03a.2.2%200%200%201-.128-.04.177.177%200%200%201-.1-.09.248.248%200%200%201-.04-.138h.269z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M93.384%20112.376l-.12-.238-.118-.238%205.654-2.708.119.238.119.238z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M99.186%20109.43c0%20.05-.01.089-.04.138-.02.04-.049.07-.089.09-.01.01-.02.01-.02.01l-.118-.238zM99.186%20109.43h-.535V85.087h.535z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M99.038%2084.85s.01%200%20.02.01c.04.02.069.049.089.099a.2.2%200%200%201%20.04.129h-.268zM99.038%2084.85l-.12.238-.118.238-5.654-2.708.119-.238.119-.239z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:198.063%25;text-align:start%22%20x=%2294.157%22%20y=%2287.915%22%20font-weight=%22400%22%20font-size=%223.506%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2294.157%22%20y=%2287.915%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E00%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2294.157%22%20y=%2294.858%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E01%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2294.157%22%20y=%22101.802%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E10%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2294.157%22%20y=%22108.745%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E11%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M87.214%2086.942V86.654h3.313V86.943z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M90.547%2087.577l-.15.209%202.768-.992-2.767-.992.149.198.119.238.08.258.029.288-.03.277-.08.268zM87.144%2093.648V93.36h3.313V93.648z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M90.477%2094.283l-.149.208%202.768-.992-2.768-.992.15.199.118.238.08.258.03.287-.03.278-.08.268zM87.075%20100.591V100.303h3.313V100.592z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M90.408%20101.226l-.149.209%202.768-.992-2.768-.992.149.198.119.238.08.258.029.288-.03.277-.08.268zM87.005%20107.535V107.247h3.314V107.535z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M90.338%20108.17l-.148.208%202.767-.992-2.767-.992.148.199.12.238.079.258.03.287-.03.278-.08.268zM98.74%2096.98v-.535h5.297v.536z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M104.057%2097.497l-.149.208%202.768-.992-2.768-.992.149.198.119.239.08.257.03.288-.03.278-.08.268zM81.272%2063.77H81.56v1.618H81.272z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M81.014%2065.398l-.099-.08.496%201.389.496-1.389-.1.08-.118.06-.13.039-.138.01-.149-.01-.129-.04zM90.606%2063.77H90.894v1.618H90.606z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M90.348%2065.398l-.099-.08.496%201.389.496-1.389-.1.08-.118.06-.13.039-.138.01-.149-.01-.129-.04zM88.265%2063.77H88.553v1.618H88.265z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M88.007%2065.398l-.099-.08.496%201.389.496-1.389-.1.08-.118.06-.13.039-.138.01-.149-.01-.129-.04zM85.934%2063.77H86.222v1.618H85.934z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M85.676%2065.398l-.099-.08.496%201.389.496-1.389-.1.08-.118.06-.13.039-.138.01-.149-.01-.129-.04zM83.593%2063.77H83.881v1.618H83.593z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M83.335%2065.398l-.099-.08.496%201.389.496-1.389-.1.08-.118.06-.13.039-.138.01-.149-.01-.129-.04zM74.26%2063.77H74.546v1.618H74.259z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M74.001%2065.398l-.099-.08.496%201.389.496-1.389-.1.08-.118.06-.13.039-.138.01-.149-.01-.129-.04zM78.931%2063.77H79.22v1.618H78.93z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M78.673%2065.398l-.099-.08.496%201.389.496-1.389-.1.08-.118.06-.13.039-.138.01-.149-.01-.129-.04zM76.59%2063.77H76.878v1.618H76.59z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M76.332%2065.398l-.099-.08.496%201.389.496-1.389-.1.08-.118.06-.13.039-.138.01-.149-.01-.129-.04zM107.062%2063.701H107.35v1.617H107.062z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M106.805%2065.328l-.1-.08.496%201.39.496-1.39-.099.08-.119.06-.129.04-.139.01-.149-.01-.129-.04zM116.397%2063.701H116.685v1.617H116.396z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M116.139%2065.328l-.1-.08.496%201.39.496-1.39-.099.08-.119.06-.129.04-.139.01-.149-.01-.128-.04zM114.056%2063.701H114.344v1.617H114.055z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M113.798%2065.328l-.1-.08.496%201.39.496-1.39-.099.08-.119.06-.129.04-.139.01-.148-.01-.13-.04zM111.725%2063.701H112.013v1.617H111.724z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M111.467%2065.328l-.1-.08.496%201.39.496-1.39-.099.08-.119.06-.129.04-.139.01-.148-.01-.13-.04zM109.384%2063.701H109.672v1.617H109.383z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M109.126%2065.328l-.1-.08.496%201.39.496-1.39-.099.08-.119.06-.129.04-.139.01-.148-.01-.13-.04zM100.05%2063.701H100.337v1.617H100.048z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M99.792%2065.328l-.1-.08.496%201.39.496-1.39-.099.08-.119.06-.129.04-.139.01-.149-.01-.129-.04zM104.721%2063.701H105.01v1.617H104.721z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M104.464%2065.328l-.1-.08.496%201.39.496-1.39-.099.08-.119.06-.129.04-.139.01-.149-.01-.129-.04zM102.38%2063.701H102.668v1.617H102.38z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M102.123%2065.328l-.1-.08.496%201.39.496-1.39-.099.08-.119.06-.129.04-.139.01-.149-.01-.128-.04z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M72.612%2066.647h20.93l-1.904%203.968H74.517z%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M72.374%2066.766a.264.264%200%200%201-.03-.119.2.2%200%200%201%20.04-.129c.02-.05.05-.079.1-.099a.2.2%200%200%201%20.128-.04v.268zM72.612%2066.915v-.535h20.93v.535zM93.542%2066.38c.05%200%20.09.01.14.04.039.02.069.049.088.099a.2.2%200%200%201%20.04.128c0%20.04-.01.08-.03.12l-.238-.12z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M93.304%2066.528l.238.12.238.118-1.904%203.968-.238-.119-.238-.119z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M91.876%2070.734s0%20.01-.01.02c-.02.04-.05.07-.09.09-.049.03-.089.039-.138.039v-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M91.638%2070.347v.536H74.517v-.536zM74.517%2070.883a.2.2%200%200%201-.129-.04.177.177%200%200%201-.1-.089c-.009-.01-.009-.02-.009-.02l.238-.119z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M74.755%2070.496l-.238.12-.238.118-1.905-3.968.238-.119.239-.119z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M98.403%2066.717h20.93l-1.905%203.968h-17.12z%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M98.165%2066.836a.264.264%200%200%201-.03-.12.2.2%200%200%201%20.04-.128c.02-.05.05-.08.099-.1a.2.2%200%200%201%20.129-.039v.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M98.403%2066.985v-.536h20.93v.536zM119.333%2066.449c.05%200%20.089.01.139.04.04.02.069.05.089.099a.2.2%200%200%201%20.04.129c0%20.04-.01.08-.03.119l-.238-.12z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M119.095%2066.598l.238.119.238.119-1.905%203.968-.238-.12-.238-.118zM117.666%2070.804s0%20.01-.01.02c-.02.04-.05.069-.09.089-.049.03-.088.04-.138.04v-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M117.428%2070.417v.535h-17.12v-.535zM100.307%2070.952a.2.2%200%200%201-.129-.04.177.177%200%200%201-.099-.089c-.01-.01-.01-.02-.01-.02l.238-.118z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M100.545%2070.566l-.238.119-.238.119-1.904-3.968.238-.12.238-.118zM82.67%2070.456H82.959v2.649H82.67z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M82.413%2073.115l-.1-.08.497%201.39.496-1.39-.1.08-.119.06-.129.04-.138.009-.15-.01-.128-.04zM108.461%2070.456H108.749v2.649H108.46z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M108.203%2073.115l-.1-.08.497%201.39.496-1.39-.1.08-.118.06-.13.04-.138.009-.149-.01-.129-.04z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2263.875%22%20y=%2280.652%22%20transform=%22scale(1.15692%20.86436)%22%20font-weight=%22400%22%20font-size=%223.233%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.306%22%3E%3Ctspan%20x=%2263.875%22%20y=%2280.652%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#ce181e%22%3E76543210%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2286.176%22%20y=%2280.664%22%20transform=%22scale(1.15692%20.86436)%22%20font-weight=%22400%22%20font-size=%223.233%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.306%22%3E%3Ctspan%20x=%2286.176%22%20y=%2280.664%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#ce181e%22%3E76543210%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M63.704%2066.525v3.57l4.464-1.785z%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M63.436%2066.525a.2.2%200%200%201%20.04-.13c.02-.049.05-.078.099-.098a.2.2%200%200%201%20.129-.04c.04%200%20.07.01.099.02l-.1.248zM63.436%2066.525h.536v3.57h-.536zM63.803%2070.344c-.03.01-.06.02-.1.02a.2.2%200%200%201-.128-.04.177.177%200%200%201-.1-.09.248.248%200%200%201-.039-.138h.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M63.803%2070.344l-.1-.248-.098-.248%204.463-1.786.1.248.099.248z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M68.267%2068.062c.01%200%20.02.01.04.02.04.02.069.05.089.1a.2.2%200%200%201%20.04.128c0%20.05-.01.09-.04.14-.02.039-.05.069-.09.088-.02.01-.03.02-.04.02l-.098-.248zM68.267%2068.062l-.1.248-.099.248-4.463-1.785.099-.248.099-.248z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M68.644%2067.368c.565%200%201.001.407%201.001.942%200%20.536-.436.943-1.001.943-.566%200-.992-.407-.992-.943%200-.535.426-.942.992-.942z%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M68.644%2067.368V67.1c.178%200%20.337.03.496.09l-.1.247-.099.248a.934.934%200%200%200-.297-.05z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M69.04%2067.437l.1-.248c.148.06.287.15.396.258l-.178.189-.189.198a.758.758%200%200%200-.228-.149z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M69.358%2067.636l.178-.189c.12.11.209.238.278.387l-.248.1-.238.108a.647.647%200%200%200-.159-.208z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M69.566%2067.933l.248-.099c.06.139.1.308.1.476h-.536c0-.099-.02-.188-.05-.268zM69.645%2068.31h.268c0%20.169-.04.338-.099.476l-.248-.099-.238-.109c.03-.08.05-.169.05-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M69.566%2068.687l.248.1c-.07.148-.159.277-.278.386l-.178-.188-.189-.199a.647.647%200%200%200%20.16-.208z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M69.358%2068.985l.178.188c-.109.11-.248.199-.396.258l-.1-.248-.099-.248c.09-.04.169-.09.228-.149z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M69.04%2069.183l.1.248c-.16.06-.318.09-.496.09v-.536c.109%200%20.208-.02.297-.05zM68.644%2069.253v.267c-.179%200-.338-.03-.486-.089l.089-.248.1-.248c.088.03.188.05.297.05z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M68.247%2069.183l-.09.248a1.141%201.141%200%200%201-.406-.258l.188-.188.179-.199c.07.06.139.11.228.15z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M67.94%2068.985l-.19.188a1.045%201.045%200%200%201-.267-.387l.248-.099.238-.109c.04.08.09.149.149.208z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M67.731%2068.687l-.248.1c-.07-.14-.1-.308-.1-.477h.537c0%20.1.02.189.05.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M67.652%2068.31h-.268c0-.168.03-.337.1-.476l.247.1.238.108a.757.757%200%200%200-.05.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M67.731%2067.933l-.248-.099c.06-.149.149-.278.268-.387l.188.189.179.198a.794.794%200%200%200-.149.208z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M67.94%2067.636l-.19-.189c.11-.109.249-.198.408-.258l.089.248.1.248a.907.907%200%200%200-.23.15z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M68.247%2067.437l-.09-.248c.15-.06.308-.089.487-.089v.536c-.11%200-.209.02-.298.05z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.975%2073.442l.03-.139.029-.139%2015.375%202.867-.03.139-.03.139zM96.409%2076.309c-.01%200-.02.01-.03.01-.01%200-.02-.01-.03-.01l.03-.139z%22%20fill=%22#8b4513%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M96.409%2076.309l-.03-.139-.03-.139%2015.375-2.867.03.14.03.138z%22%20fill=%22#8b4513%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M96.24%2076.17H96.528v4.186H96.24z%22%20fill=%22#8b4513%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M95.397%2080.386l-.258-.189%201.24%203.462%201.24-3.462-.248.189-.297.149-.328.099-.357.03-.347-.02-.337-.11z%22%20fill=%22#8b4513%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M83.682%2090.166h-2.975v-5.951h5.951v5.951z%22%20fill=%22#5d95fd%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M83.682%2089.898v.536h-2.975v-.536zM80.707%2090.434a.2.2%200%200%201-.13-.04.177.177%200%200%201-.098-.089.248.248%200%200%201-.04-.139h.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.975%2090.166h-.536v-5.951h.536zM80.439%2084.215a.2.2%200%200%201%20.04-.13c.02-.049.05-.079.099-.099a.2.2%200%200%201%20.129-.04v.269z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.707%2084.482v-.535h5.951v.535zM86.658%2083.947c.05%200%20.09.01.14.04.039.02.069.05.088.099a.2.2%200%200%201%20.04.129h-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M86.39%2084.215h.536v5.951h-.536zM86.926%2090.166c0%20.05-.01.09-.04.14-.02.039-.05.068-.089.088-.05.03-.09.04-.139.04v-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M86.658%2089.898v.536h-2.976v-.536z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M83.682%2096.118h-2.975v-5.952h5.951v5.952z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M83.682%2095.85v.536h-2.975v-.536zM80.707%2096.386a.2.2%200%200%201-.13-.04.177.177%200%200%201-.098-.09.248.248%200%200%201-.04-.138h.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.975%2096.118h-.536v-5.952h.536zM80.439%2090.166a.2.2%200%200%201%20.04-.129c.02-.05.05-.08.099-.099a.2.2%200%200%201%20.129-.04v.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.707%2090.434v-.536h5.951v.536zM86.658%2089.898c.05%200%20.09.01.14.04.039.02.069.05.088.1a.2.2%200%200%201%20.04.128h-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M86.39%2090.166h.536v5.952h-.536zM86.926%2096.118c0%20.05-.01.09-.04.139-.02.04-.05.07-.089.089-.05.03-.09.04-.139.04v-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M86.658%2095.85v.536h-2.976v-.536z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M83.682%20102.07h-2.975v-5.952h5.951v5.951z%22%20fill=%22#feccc5%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M83.682%20101.802v.535h-2.975v-.535zM80.707%20102.337a.2.2%200%200%201-.13-.04.177.177%200%200%201-.098-.089.248.248%200%200%201-.04-.139h.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.975%20102.07h-.536v-5.952h.536zM80.439%2096.118a.2.2%200%200%201%20.04-.13c.02-.049.05-.079.099-.098a.2.2%200%200%201%20.129-.04v.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.707%2096.386v-.536h5.951v.536zM86.658%2095.85c.05%200%20.09.01.14.04.039.02.069.05.088.099a.2.2%200%200%201%20.04.129h-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M86.39%2096.118h.536v5.951h-.536zM86.926%20102.07c0%20.049-.01.089-.04.138-.02.04-.05.07-.089.09-.05.03-.09.04-.139.04v-.269z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M86.658%20101.802v.535h-2.976v-.535z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M83.682%20108.021h-2.975v-5.952h5.951v5.952z%22%20fill=%22#a40%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M83.682%20107.753v.536h-2.975v-.536zM80.707%20108.289a.2.2%200%200%201-.13-.04.177.177%200%200%201-.098-.09.248.248%200%200%201-.04-.138h.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.975%20108.021h-.536v-5.952h.536z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.439%20102.07a.2.2%200%200%201%20.04-.13c.02-.05.05-.079.099-.099a.2.2%200%200%201%20.129-.04v.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M80.707%20102.337v-.535h5.951v.535zM86.658%20101.802c.05%200%20.09.01.14.04.039.02.069.049.088.099a.2.2%200%200%201%20.04.128h-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M86.39%20102.07h.536v5.951h-.536zM86.926%20108.021c0%20.05-.01.09-.04.139-.02.04-.05.07-.089.09-.05.029-.09.039-.139.039v-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M86.658%20107.753v.536h-2.976v-.536z%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:141.696%25;text-align:start%22%20x=%2274.358%22%20y=%2288.956%22%20font-weight=%22700%22%20font-size=%224.2%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2274.358%22%20y=%2288.956%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E00%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2274.358%22%20y=%2294.908%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E01%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2274.358%22%20y=%22100.859%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E10%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2274.358%22%20y=%22106.811%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E11%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2274.041%22%20y=%2283.153%22%20font-weight=%22400%22%20font-size=%222.795%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2274.041%22%20y=%2283.153%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E4%20colores%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2260.997%22%20y=%22100.472%22%20font-weight=%22700%22%20font-size=%222.795%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2260.997%22%20y=%22100.472%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E#%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3EFE%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3ECC%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#00c%22%3EC5%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:214.738%25;text-align:start%22%20x=%2260.997%22%20y=%2288.688%22%20font-weight=%22700%22%20font-size=%222.795%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2260.997%22%20y=%2288.688%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E#%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3E5D%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3E95%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#00c%22%3EFD%3C/tspan%3E%3C/tspan%3E%3Ctspan%20x=%2260.997%22%20y=%2294.689%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E#%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3E00%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3E00%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#00c%22%3E00%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%2260.997%22%20y=%22106.374%22%20font-weight=%22700%22%20font-size=%222.795%22%20font-family=%22Liberation%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2260.997%22%20y=%22106.374%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%3E#%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#c00%22%3EAA%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#090%22%3E44%3C/tspan%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#00c%22%3E00%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%22104.424%22%20y=%2283.153%22%20font-weight=%22400%22%20font-size=%223.506%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%22104.424%22%20y=%2283.153%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22#8b4513%22%3E%C3%8Dndice%20de%20color%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cimage%20y=%2293.787%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2293.787%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2293.787%22%20x=%22123.281%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2293.787%22%20x=%22123.281%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2293.787%22%20x=%22124.679%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2293.787%22%20x=%22124.679%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2293.787%22%20x=%22126.078%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2293.787%22%20x=%22126.078%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2293.787%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2293.787%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2295.185%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2295.185%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2295.185%22%20x=%22123.281%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2295.185%22%20x=%22124.679%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2295.185%22%20x=%22126.078%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2295.185%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2295.185%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2296.584%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2296.584%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2296.584%22%20x=%22123.281%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2296.584%22%20x=%22124.679%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2296.584%22%20x=%22126.078%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2296.584%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2296.584%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2297.983%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2297.983%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2297.983%22%20x=%22123.281%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2297.983%22%20x=%22124.679%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2297.983%22%20x=%22126.078%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2297.983%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2297.983%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22121.882%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22123.281%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22123.281%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22124.679%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22124.679%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22126.078%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22126.078%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAFUlEQVQImWP8//8/AzbAhFV00EoAAFbUAw00q2Z5AAAAAElFTkSuQmCC%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cimage%20y=%2299.381%22%20x=%22127.476%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAIAAABLbSncAAAAJUlEQVQImWP8//8/AzbAxMDAwMjICOfD2Yz4dKCphbDx6qCSHQDMcwwZxzhMfQAAAABJRU5ErkJggg==%22%20height=%221.399%22%20width=%221.399%22%20preserveAspectRatio=%22none%22/%3E%3Cpath%20d=%22M125.374%20100.482v.536h-3.472v-.536zM121.902%20101.018a.2.2%200%200%201-.13-.04.177.177%200%200%201-.098-.089.248.248%200%200%201-.04-.139h.268z%22%20fill=%22gray%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M122.17%20100.75h-.536v-6.943h.536zM121.634%2093.807a.2.2%200%200%201%20.04-.13c.02-.049.05-.079.099-.099a.2.2%200%200%201%20.129-.04v.269z%22%20fill=%22gray%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M121.902%2094.074v-.535h6.943v.535z%22%20fill=%22gray%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M128.845%2093.539c.05%200%20.09.01.14.04.039.02.069.05.088.099a.2.2%200%200%201%20.04.129h-.268z%22%20fill=%22gray%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M128.577%2093.807h.536v6.943h-.536zM129.113%20100.75c0%20.05-.01.09-.04.139-.02.04-.05.07-.089.09-.05.03-.09.039-.139.039v-.268z%22%20fill=%22gray%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M128.845%20100.482v.536h-3.471v-.536z%22%20fill=%22gray%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:start%22%20x=%22115.97%22%20y=%2290.93%22%20font-weight=%22700%22%20font-size=%223.506%22%20font-family=%22Liberation%20Sans%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%22115.97%22%20y=%2290.93%22%3E%3Ctspan%20dx=%220%22%20dy=%220%22%20fill=%22red%22%3EColor%20p%C3%ADxel%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M111.427%20104.827v.536h-4.444v-.536zM106.983%20105.363a.2.2%200%200%201-.129-.04.177.177%200%200%201-.1-.09.248.248%200%200%201-.039-.138h.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M107.25%20105.095h-.535V94.362h.536zM106.715%2094.362a.2.2%200%200%201%20.04-.129c.02-.05.05-.08.1-.1a.2.2%200%200%201%20.128-.039v.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M106.983%2094.63v-.536h8.888v.536z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M115.87%2094.094c.05%200%20.09.01.14.04.04.02.07.05.089.1a.2.2%200%200%201%20.04.128h-.268zM115.603%2094.362h.536v10.733h-.536zM116.139%20105.095c0%20.05-.01.09-.04.139-.02.04-.05.07-.09.089-.049.03-.089.04-.138.04v-.268z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M115.87%20104.827v.536h-4.443v-.536zM106.924%20101.89l.099-.148.099-.149%202.48%201.677-.1.148-.099.15z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M109.602%20103.27l.06.06c.01.029.02.059.02.088%200%20.03-.01.06-.02.09l-.06.06-.1-.15z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M109.403%20103.27l.1.148.099.15-2.48%201.676-.1-.15-.098-.148zM101.23%2096.961v-.357h5.753v.357zM116.109%2096.961v-.357h5.753v.357z%22%20fill-rule=%22evenodd%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
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
              "id": "808b3586-c354-4732-a3d2-8f876e1dfeef",
              "type": "basic.input",
              "data": {
                "name": "d_ptable0",
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
              "id": "ceb71b0d-9d2c-4d2f-b16d-0129e53a7ff2",
              "type": "basic.input",
              "data": {
                "name": "d_ptable1",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 88,
                "y": 256
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
              "id": "cae90750-e98b-40cc-821c-a7eb30a26c6d",
              "type": "basic.input",
              "data": {
                "name": "col_in",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": 88,
                "y": 296
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
                "y": 352
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
                "y": 352
              }
            },
            {
              "id": "2f5a72ee-6275-4639-bc4a-d20fe28ed879",
              "type": "basic.input",
              "data": {
                "name": "hsinc",
                "clock": false
              },
              "position": {
                "x": 88,
                "y": 400
              }
            },
            {
              "id": "c3d7d71c-dd5f-4f01-9d02-0d98addd76b2",
              "type": "basic.output",
              "data": {
                "name": "hsync"
              },
              "position": {
                "x": 744,
                "y": 416
              }
            },
            {
              "id": "1cf17be6-8361-44f0-89e2-f2e1c95e128a",
              "type": "basic.input",
              "data": {
                "name": "vsinc",
                "clock": false
              },
              "position": {
                "x": 88,
                "y": 448
              }
            },
            {
              "id": "9a83c713-bf95-4d25-a91f-9e548e454bb0",
              "type": "basic.output",
              "data": {
                "name": "vsync"
              },
              "position": {
                "x": 728,
                "y": 488
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
                "y": 496
              }
            },
            {
              "id": "ce19a0d9-ce92-4aa7-b8bd-65f1a9a5b1ed",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 96,
                "y": 544
              }
            },
            {
              "id": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
              "type": "basic.code",
              "data": {
                "code": " reg [1:0] rojo, verde, azul;\r\n reg [1:0] rojo_rg, verde_rg, azul_rg;\r\n reg hsync_rg, vsync_rg;\r\n wire [1:0] color_index;\r\n assign red = rojo_rg;\r\n assign green = verde_rg;\r\n assign blue = azul_rg;\r\n assign hsync = hsync_rg;\r\n assign vsync = vsync_rg;\r\n \r\n assign color_index = {d_ptable1[~col_in],d_ptable0[~col_in]};\r\n \r\n always @(*)\r\n  begin\r\n    rojo   = 2'b00;\r\n    verde  = 2'b00;\r\n    azul   = 2'b00;\r\n    if (visible) begin\r\n    if (col9 == 1'b0) begin  // less than 512\r\n        case (color_index)\r\n          2'b00:\r\n            begin // background blue sky #22\r\n              rojo  = 2'b01;\r\n              verde = 2'b10;\r\n              azul  = 2'b11;\r\n            end\r\n          2'b01:\r\n            begin // color 1: light brown #36\r\n              rojo  = 2'b11;\r\n              verde = 2'b11;\r\n              azul  = 2'b10;\r\n            end\r\n          2'b10:\r\n            begin // color 2: dark brown #17\r\n              rojo  = 2'b10;\r\n              verde = 2'b01;\r\n              azul  = 2'b00;\r\n            end\r\n          default:\r\n            begin // color 3: black  #0F\r\n              rojo  = 2'b00;\r\n              verde = 2'b00;\r\n              azul  = 2'b00;\r\n            end\r\n        endcase\r\n    end\r\n    end\r\n  end\r\n  // register to synchronize\r\n  always @ (posedge clk)\r\n  begin\r\n    rojo_rg   <= rojo; \r\n    verde_rg  <= verde; \r\n    azul_rg   <= azul; \r\n    hsync_rg <= hsinc; \r\n    vsync_rg <= vsinc; \r\n  end",
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
                      "name": "visible"
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
                "x": 312,
                "y": 216
              },
              "size": {
                "width": 352,
                "height": 392
              }
            }
          ],
          "wires": [
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
            },
            {
              "source": {
                "block": "ceb71b0d-9d2c-4d2f-b16d-0129e53a7ff2",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "d_ptable1"
              },
              "size": 8
            },
            {
              "source": {
                "block": "cae90750-e98b-40cc-821c-a7eb30a26c6d",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "col_in"
              },
              "size": 3
            },
            {
              "source": {
                "block": "2f5a72ee-6275-4639-bc4a-d20fe28ed879",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "hsinc"
              }
            },
            {
              "source": {
                "block": "1cf17be6-8361-44f0-89e2-f2e1c95e128a",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "vsinc"
              }
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "hsync"
              },
              "target": {
                "block": "c3d7d71c-dd5f-4f01-9d02-0d98addd76b2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "vsync"
              },
              "target": {
                "block": "9a83c713-bf95-4d25-a91f-9e548e454bb0",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "ce19a0d9-ce92-4aa7-b8bd-65f1a9a5b1ed",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "808b3586-c354-4732-a3d2-8f876e1dfeef",
                "port": "out"
              },
              "target": {
                "block": "a0a37fca-bb24-483b-ab0b-30e4cf211138",
                "port": "d_ptable0"
              },
              "size": 8
            }
          ]
        }
      }
    }
  }
}