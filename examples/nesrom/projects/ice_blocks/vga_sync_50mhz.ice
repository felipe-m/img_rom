{
  "version": "1.2",
  "package": {
    "name": "VGA SYNC",
    "version": "1.0",
    "description": "Generate synchronization signals for VGA 640x480 at clk 50MHz",
    "author": "Felipe Machado",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22274.45%22%20height=%22182.634%22%20viewBox=%220%200%2072.615005%2048.321985%22%3E%3Cpath%20stroke=%22#000%22%20stroke-width=%22.5773976500000001%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M9.319%2046.007h53.977v2.026H9.32z%22/%3E%3Cpath%20fill=%22#ff0%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M9.237.213h9.023V45.33H9.237z%22/%3E%3Cpath%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M63.379.213h9.023V45.33H63.38z%22/%3E%3Cpath%20fill=%22#00f%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M54.355.213h9.023V45.33h-9.023z%22/%3E%3Cpath%20fill=%22#0ff%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M18.26.213h9.024V45.33H18.26z%22/%3E%3Cpath%20fill=%22#0f0%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M27.284.213h9.023V45.33h-9.023z%22/%3E%3Cpath%20fill=%22#f0f%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M36.308.213h9.023V45.33h-9.023z%22/%3E%3Cpath%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.21588465%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M45.331.213h9.024V45.33H45.33z%22/%3E%3Cpath%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.7625878000000001%22%20stroke-linejoin=%22round%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M.381.381h71.853v45.297H.38z%22/%3E%3Cpath%20fill=%22#fff%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M6.008%2015.166h61.487v13.542H6.008z%22/%3E%3Cpath%20fill=%22#fff%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M24.603%2026.717h25.573v13.541H24.603z%22/%3E%3Ctext%20transform=%22matrix(.27001%200%200%20.43078%20-8.81%20-1.82)%22%20y=%2267.814%22%20x=%2266.755%22%20style=%22line-height:82.9525528px;-inkscape-font-specification:Arial%22%20font-weight=%22400%22%20font-size=%2235.393%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%223.318%22%3E%3Ctspan%20y=%2267.814%22%20x=%2266.755%22%3EVGA%20SYNCH%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:53.80932617px;-inkscape-font-specification:Arial%22%20x=%22126.979%22%20y=%2295.11%22%20transform=%22matrix(.2808%200%200%20.41424%20-8.81%20-1.82)%22%20font-weight=%22400%22%20font-size=%2222.959%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%222.152%22%3E%3Ctspan%20x=%22126.979%22%20y=%2295.11%22%3E50MHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "c8fac79a-4c87-471a-863d-843267fb0fd5",
          "type": "basic.output",
          "data": {
            "name": "visible",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
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
            "name": "hsinc",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
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
            "name": "vsinc",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
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
  },
  "dependencies": {}
}