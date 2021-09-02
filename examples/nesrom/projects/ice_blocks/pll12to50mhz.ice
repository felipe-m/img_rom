{
  "version": "1.2",
  "package": {
    "name": "pll12to50mhz",
    "version": "1.0",
    "description": "Generates a 50MHz clock from a 12MHz clock",
    "author": "Felipe Machado",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22394.691%22%20height=%22103.671%22%20viewBox=%220%200%20104.42855%2027.429573%22%3E%3Cpath%20d=%22M0%2026.946h7.143V.484h7.143v26.462h7.143V.484h7.142v26.462h7.143V.484h7.143v26.462H50%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.8%22/%3E%3Cg%20stroke=%22#000%22%20stroke-width=%22.953%22%20fill=%22none%22%3E%3Cpath%20d=%22M.454%2032.417h3.715V5.958h3.714v26.459h3.715V5.958h3.715v26.459h3.715V5.958h3.715v26.459h3.715%22%20transform=%22matrix(.70385%200%200%201.00066%2054.11%20-5.485)%22/%3E%3Cpath%20d=%22M22.679%2032.417h3.715V5.958h3.715v26.459h3.714V5.958h3.715v26.459h3.715V5.958h3.715v26.459h3.715%22%20transform=%22matrix(.70385%200%200%201.00066%2054.11%20-5.485)%22/%3E%3Cpath%20d=%22M45.487%2032.417h3.715V5.958h3.715v26.459h3.715V5.958h3.715v26.459h3.715V5.958h3.715v26.459h3.715%22%20transform=%22matrix(.70385%200%200%201.00066%2054.11%20-5.485)%22/%3E%3C/g%3E%3Cpath%20fill=%22#fff%22%20fill-opacity=%22.941%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M65.422%203.893H91.88v19.498H65.422zM10.917%203.893h26.458v19.498H10.917z%22/%3E%3Ctext%20transform=%22matrix(.60486%200%200%201.65328%2075.142%20-5.473)%22%20y=%2216.209%22%20x=%22-105.693%22%20style=%22line-height:28.74709511px;-inkscape-font-specification:Arial%22%20font-weight=%22400%22%20font-size=%2212.265%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%221.15%22%3E%3Ctspan%20y=%2216.209%22%20x=%22-105.693%22%20fill=%22maroon%22%3E12%20MHz%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M46.415%2012.864h6.615v-1.653l6.615%203.307-6.615%203.307v-1.653h-6.615v-1.654z%22%20fill=%22#ff0%22%20fill-opacity=%22.941%22%20stroke=%22#000%22%20stroke-width=%22.633%22/%3E%3Ctext%20style=%22line-height:29.150383px;-inkscape-font-specification:Arial%22%20x=%22-14.684%22%20y=%2216.437%22%20transform=%22matrix(.61334%200%200%201.63041%2075.142%20-5.473)%22%20font-weight=%22400%22%20font-size=%2212.438%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%221.166%22%3E%3Ctspan%20x=%22-14.684%22%20y=%2216.437%22%20fill=%22maroon%22%3E50%20MHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "ec5f8ec7-9259-4ff7-9376-e75e5bb64ef1",
          "type": "basic.input",
          "data": {
            "name": "clk_brd",
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
            "x": 48,
            "y": 232
          }
        },
        {
          "id": "584255ae-1237-4bc8-a669-c92466c9372d",
          "type": "basic.output",
          "data": {
            "name": "clk50mhz",
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
  },
  "dependencies": {}
}