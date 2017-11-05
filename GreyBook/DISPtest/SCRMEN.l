Saturn Assembler                                       Sun May 24 14:00:26 2009
V3.0.9 (04/15/2007)                                      SCRMEN.a       Page    1

    1             * File  SCRMEN.s        1
    2             * RPL
    3             * File  SCRMEN.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\DISPtest\SCRMEN.s, part of the SCRMEN.hpp project, created by <> on 8/05/2009
    5             ********************************************************************
    6             * DESCRIPTION:     Scrolls the menu off the bottom of the screen.
    7             *                  Waits for user to press any key.
    8             *                  Scrolls the menu back up from the bottom of the
    9             *                  screen to it's original position.
   10             * COMPATIBILITY:   HP48, HP50 (Runs too fast on the HP50)
   11             *
   12             * File  SCRMEN.s        10
   13 00000       =SCRMEN
   14             * File  SCRMEN.s        11
   15 00000 00000         CON(5)  =DOCOL
   16             * File  SCRMEN.s        12
   17 00005 00000         CON(5)  =0LASTOWDOB!
   18             * Clear saved command name
   19             * File  SCRMEN.s        13
   20 0000A 00000         CON(5)  =CK0NOLASTWD
   21             * No arguments
   22             * File  SCRMEN.s        14
   23 0000F 00000         CON(5)  =HARDBUFF
   24             * Pointer to the stack grob [ -> grob ]
   25             * File  SCRMEN.s        15
   26 00014 00000         CON(5)  =DUPGROBDIM
   27             * Get grob height and length [ grob -> grob #height #width ]
   28             * File  SCRMEN.s        16
   29 00019 00000         CON(5)  =DROP
   30             * DROP width [ -> grob #height ]
   31             * File  SCRMEN.s        17
   32 0001E 00000         CON(5)  =CHECKHEIGHT
   33             * Ensure stack grob is at leaset 64 rows high [ grob #height -> ]
   34             * File  SCRMEN.s        18
   35 00023 00000         CON(5)  =SIXTYFOUR
   36 00028 00000         CON(5)  =FIFTYSIX
   37 0002D 00000         CON(5)  =DO
   38             * Menu scroll down loop
   39             * File  SCRMEN.s        19
   40 00032 00000         CON(5)  =INDEX@
   41             * Loop counter [ -> # ]
   42             * File  SCRMEN.s        20
   43 00037 00000         CON(5)  =LINECHANGE
   44             * Display HARDBUFF2 at row INDEX@ [ #row -> grob ]
   45             * File  SCRMEN.s        21
   46 0003C 00000         CON(5)  =SLOW
   47             * Delay
   48             * File  SCRMEN.s        22
   49 00041 00000         CON(5)  =SLOW
   50             * Delay
   51             * File  SCRMEN.s        23
   52 00046 00000         CON(5)  =LOOP
   53             * File  SCRMEN.s        24
   54 0004B 00000         CON(5)  =WaitForKey
   55             * Wait for a key [ -> #keycode #plane ]
   56             * File  SCRMEN.s        25
   57 00050 00000         CON(5)  =2DROP
   58             * DROP #keycode and #plane
   59             * File  SCRMEN.s        26
   60 00055 00000         CON(5)  =NINE
   61 0005A 00000         CON(5)  =ONE
   62 0005F 00000         CON(5)  =DO
   63             * Menu scroll up loop
   64             * File  SCRMEN.s        27
   65 00064 00000         CON(5)  =SIXTYTHREE
   66 00069 00000         CON(5)  =INDEX@
   67 0006E 00000         CON(5)  =#-
   68             * -> #
   69             * File  SCRMEN.s        28
   70 00073 00000         CON(5)  =LINECHANGE
   71             * Display HARDBUFF2 at row SIXTYTHREE-#INDEX [ # -> grob ]
   72             * File  SCRMEN.s        29
   73 00078 00000         CON(5)  =SLOW
   74             * Delay
   75             * File  SCRMEN.s        30
   76 0007D 00000         CON(5)  =SLOW
   77             * Delay
   78             * File  SCRMEN.s        31
   79 00082 00000         CON(5)  =LOOP
   80             * File  SCRMEN.s        32
   81 00087 00000         CON(5)  =SEMI
Saturn Assembler                                       Sun May 24 14:00:26 2009
V3.0.9 (04/15/2007)   Symbol Table                       SCRMEN.a       Page    2

 #-                                Ext                   -    67
 0LASTOWDOB!                       Ext                   -    17
 2DROP                             Ext                   -    57
 CHECKHEIGHT                       Ext                   -    32
 CK0NOLASTWD                       Ext                   -    20
 DO                                Ext                   -    37    62
 DOCOL                             Ext                   -    15
 DROP                              Ext                   -    29
 DUPGROBDIM                        Ext                   -    26
 FIFTYSIX                          Ext                   -    36
 HARDBUFF                          Ext                   -    23
 INDEX@                            Ext                   -    40    66
 LINECHANGE                        Ext                   -    43    70
 LOOP                              Ext                   -    52    79
 NINE                              Ext                   -    60
 ONE                               Ext                   -    61
=SCRMEN                            Rel       0 #00000000 -    13
 SEMI                              Ext                   -    81
 SIXTYFOUR                         Ext                   -    35
 SIXTYTHREE                        Ext                   -    65
 SLOW                              Ext                   -    46    49    73
                                          76
 WaitForKey                        Ext                   -    54
Saturn Assembler                                       Sun May 24 14:00:26 2009
V3.0.9 (04/15/2007)   Statistics                         SCRMEN.a       Page    3

Input Parameters

  Source file name is SCRMEN.a

  Listing file name is SCRMEN.l

  Object file name is SCRMEN.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
