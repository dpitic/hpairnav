Saturn Assembler                                       Wed May 27 15:12:47 2009
V3.0.9 (04/15/2007)                                      KCODE.a        Page    1

    1               * File  KCODE.s 1
    2               * RPL
    3               * File  KCODE.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\KCODE.s, part of the KCODE.hpp project, created by <> on 9/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Displays the keycode returned by GETTOUCH.  The
    7               *                  program runs until the ON key is pressed.
    8               * COMPATIBILITY:   HP48, HP50
    9               * USAGE:     ( -> )
   10               *
   11               * File  KCODE.s 9
   12 00000 00000           CON(5)  =DOCOL
   13               * File  KCODE.s 10
   14 00005 00000           CON(5)  =0LASTOWDOB!
   15               * Clear protection word
   16               * File  KCODE.s 11
   17 0000A 00000           CON(5)  =CK0NOLASTWD
   18               * No arguments
   19               * File  KCODE.s 12
   20 0000F 00000           CON(5)  =ClrDA1IsStat
   21               * Suspend clock
   22               * File  KCODE.s 13
   23 00014 00000           CON(5)  =RECLAIMDISP
   24               * Clear screen
   25               * File  KCODE.s 14
   26 00019 00000           CON(5)  =TURNMENUOFF
   27               * Turn menu off
   28               * File  KCODE.s 15
   29 0001E 00000           CON(5)  =BEGIN
   30               * File  KCODE.s 16
   31 00023 00000           CON(5)  =ATTN?
   32 00028 00000           CON(5)  =NOT
   33               * Run until ON pressed
   34               * File  KCODE.s 17
   35 0002D 00000           CON(5)  =WHILE
   36 00032 00000           CON(5)  =DOCOL
   37               * File  KCODE.s 18
   38 00037 00000           CON(5)  =GETTOUCH
   39               * -> #keycode TRUE if key pressed, or
   40               * File  KCODE.s 19
   41               * -> FALSE if no key pressed
   42               * File  KCODE.s 20
   43 0003C 00000           CON(5)  =NOT?SEMI
   44               * Loop again if no key in buffer
   45               * File  KCODE.s 21
   46 00041 00000           CON(5)  =UNCOERCE
   47               * #keycode -> %keycode
   48               * File  KCODE.s 22
   49 00046 00000           CON(5)  =EDITDECOMP$
   50               * %keycode -> $keycode
   51               * File  KCODE.s 23
   52 0004B 00000           CON(5)  =DISPROW4
   53               * Display $keycode
   54               * File  KCODE.s 24
   55 00050 00000           CON(5)  =SEMI
   56 00055 00000           CON(5)  =REPEAT
   57               * File  KCODE.s 25
   58 0005A 00000           CON(5)  =FLUSHKEYS
   59               * Flush key buffer
   60               * File  KCODE.s 26
   61 0005F 00000           CON(5)  =ATTNFLGCLR
   62               * Clear attention flag
   63               * File  KCODE.s 27
   64 00064 00000           CON(5)  =ClrDAsOK
   65               * Redraw display
   66               * File  KCODE.s 28
   67 00069 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed May 27 15:12:47 2009
V3.0.9 (04/15/2007)   Symbol Table                       KCODE.a        Page    2

 0LASTOWDOB!                       Ext                   -    14
 ATTN?                             Ext                   -    31
 ATTNFLGCLR                        Ext                   -    61
 BEGIN                             Ext                   -    29
 CK0NOLASTWD                       Ext                   -    17
 ClrDA1IsStat                      Ext                   -    20
 ClrDAsOK                          Ext                   -    64
 DISPROW4                          Ext                   -    52
 DOCOL                             Ext                   -    12    36
 EDITDECOMP$                       Ext                   -    49
 FLUSHKEYS                         Ext                   -    58
 GETTOUCH                          Ext                   -    38
 NOT                               Ext                   -    32
 NOT?SEMI                          Ext                   -    43
 RECLAIMDISP                       Ext                   -    23
 REPEAT                            Ext                   -    56
 SEMI                              Ext                   -    55    67
 TURNMENUOFF                       Ext                   -    26
 UNCOERCE                          Ext                   -    46
 WHILE                             Ext                   -    35
Saturn Assembler                                       Wed May 27 15:12:47 2009
V3.0.9 (04/15/2007)   Statistics                         KCODE.a        Page    3

Input Parameters

  Source file name is KCODE.a

  Listing file name is KCODE.l

  Object file name is KCODE.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
