# 1D16bitALUmojo

by T1-2 ISTD (05/11/2019)



## Main Functionality

### IO SHIELD CONFIG

* io_buttons

  * UP: select confirmation for ALUFN input opcode
  * DOWN: press to exit **AUTO** mode and go back to **MANUAL**
  * LEFT: select confirmation to store the 16bits value for input A and B
  * RIGHT: null

* DIP switches: ||||||2|||||| ||||||1|||||| ||||||0||||||

  * Row 2: [5:0] are assigned for 6bits OPCODE in **MANUAL** mode
  * Row 1 & Row 0: The 16bits inputs for A and B in **MANUAL** mode

* io_leds: ------2------ ------1------ ------0------

  * Row 2: [7:5] are assigned for Z, V, N outputs respectively for **AUTO** & **MANUAL** modes
  * Row 1 & Row 0:
    *  The 16bits outputs from ALU in **MANUAL** mode.
    *  Start from Row[0] [0] to Row[2] [0] to show the output status for the 17 test cases in **AUTO** mode

* seven seg display

  * Display the current modes in text labels as follows

    | display | state                         |
    | ------- | ----------------------------- |
    | man     | MANUAL                        |
    | a       | MANUAL - select input for A   |
    | b       | MANUAL - select input for B   |
    | res     | MANUAL - show results         |
    |         |                               |
    | add1    | AUTO - ADD Test case 1        |
    | add2    | AUTO - ADD Test case 2        |
    | addo    | AUTO - ADD Test case overflow |
    | sub1    | AUTO - SUB Test case 1        |
    | subo    | AUTO - SUB Test case overflow |
    | and1    | AUTO - AND Test case 1        |
    | and2    | AUTO - AND Test case 2        |
    | or      | AUTO - OR Test case           |
    | xor     | AUTO - XOR Test case          |
    | ldr     | AUTO - LDR Test case          |
    | shl     | AUTO - SHL Test case          |
    | shr     | AUTO - SHR Test case          |
    | sra1    | AUTO - SRA Test case 1        |
    | sra2    | AUTO - SRA Test case 2        |
    | ceq     | AUTO - CMPEQ Test case        |
    | clt     | AUTO - CMPLT Test case        |
    | cle     | AUTO - CMPLE Test case        |

* reset button: reset the mojo

