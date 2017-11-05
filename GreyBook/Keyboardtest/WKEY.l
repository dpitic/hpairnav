Saturn Assembler                                       Wed May 27 15:01:19 2009
V3.0.9 (04/15/2007)                                      WKEY.a         Page    1

    1               * File  WKEY.s  1
    2               * RPL
    3               * File  WKEY.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\WKEY.s, part of the WKEY.hpp project, created by <> on 9/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Displays the keycode and shift plane detected by
    7               *                  WaitForKey.
    8               * COMPATIBILITY:   HP48, HP50
    9               * USAGE:     ( -> )
   10               *
   11               * File  WKEY.s  9
   12 00000 00000           CON(5)  =DOCOL
   13               * File  WKEY.s  10
   14 00005 00000           CON(5)  =0LASTOWDOB!
   15               * Clear protection word
   16               * File  WKEY.s  11
   17 0000A 00000           CON(5)  =CK0NOLASTWD
   18               * No arguments
   19               * File  WKEY.s  12
   20 0000F 00000           CON(5)  =ClrDA1IsStat
   21               * Turn off the clock
   22               * File  WKEY.s  13
   23 00014 00000           CON(5)  =RECLAIMDISP
   24               * Clear the screen
   25               * File  WKEY.s  14
   26 00019 00000           CON(5)  =TURNMENUOFF
   27               * Turn off the menu
   28               *        BEGIN
   29               * File  WKEY.s  16
   30 0001E 00000           CON(5)  =WaitForKey
   31               * Wait for key press -> #keycode #plane
   32               * File  WKEY.s  17
   33 00023 00000           CON(5)  =UNCOERCE2
   34               * #keycode #plane -> %keycode %plane
   35               * File  WKEY.s  18
   36 00028 00000           CON(5)  =DOCSTR
   37 0002D 71000           CON(5)  23
   38 00032 B456973         NIBASC  \Keycode: \
            6F64656
            A302
   39               *          3PICK                           ( %keycode )
   40               * File  WKEY.s  20
   41 00044 00000           CON(5)  =ROT
   42               * %keycode
   43               * File  WKEY.s  21
   44 00049 00000           CON(5)  =EDITDECOMP$
   45               * %keycode -> $keycode
   46               * File  WKEY.s  22
   47 0004E 00000           CON(5)  =&$
   48               * "Keycode: " $keycode -> "Keycode: $keycode"
   49               * File  WKEY.s  23
   50 00053 00000           CON(5)  =DISPROW3
   51               * Display keycode string
   52               * File  WKEY.s  24
   53 00058 00000           CON(5)  =DOCSTR
   54 0005D 71000           CON(5)  23
   55 00062 05C616E         NIBASC  \Plane:   \
            656A302
            0202
   56               * File  WKEY.s  25
   57 00074 00000           CON(5)  =SWAP
   58               * %plane
   59               * File  WKEY.s  26
   60 00079 00000           CON(5)  =EDITDECOMP$
   61               * %plane -> $plane
   62               * File  WKEY.s  27
   63 0007E 00000           CON(5)  =&$
   64               * "Plane:   " $plane -> "Plane:   $plane"
   65               * File  WKEY.s  28
   66 00083 00000           CON(5)  =DISPROW4
   67               * Display shift plane string
   68               *        UNTIL
   69               * File  WKEY.s  30
   70 00088 00000           CON(5)  =SetDAsTemp
   71               * Freeze the display
   72               * File  WKEY.s  31
   73 0008D 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed May 27 15:01:19 2009
V3.0.9 (04/15/2007)   Symbol Table                       WKEY.a         Page    2

 &$                                Ext                   -    47    63
 0LASTOWDOB!                       Ext                   -    14
 CK0NOLASTWD                       Ext                   -    17
 ClrDA1IsStat                      Ext                   -    20
 DISPROW3                          Ext                   -    50
 DISPROW4                          Ext                   -    66
 DOCOL                             Ext                   -    12
 DOCSTR                            Ext                   -    36    53
 EDITDECOMP$                       Ext                   -    44    60
 RECLAIMDISP                       Ext                   -    23
 ROT                               Ext                   -    41
 SEMI                              Ext                   -    73
 SWAP                              Ext                   -    57
 SetDAsTemp                        Ext                   -    70
 TURNMENUOFF                       Ext                   -    26
 UNCOERCE2                         Ext                   -    33
 WaitForKey                        Ext                   -    30
Saturn Assembler                                       Wed May 27 15:01:19 2009
V3.0.9 (04/15/2007)   Statistics                         WKEY.a         Page    3

Input Parameters

  Source file name is WKEY.a

  Listing file name is WKEY.l

  Object file name is WKEY.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
