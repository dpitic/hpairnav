Saturn Assembler                                       Mon May 25 21:10:39 2009
V3.0.9 (04/15/2007)                                      KB.a           Page    1

    1               * File  KB.s    1
    2               * RPL
    3               * File  KB.s    2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\ADDIT.s, part of the ADDIT.hpp project, created by <> on 9/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Begins counting until any key has been pressed.
    7               *                  The key buffer is flushed upon termination.
    8               * COMPATIBILITY:   HP48, HP50
    9               * USAGE:     ( -> %result )
   10               * File  KB.s    8
   11 00000 00000           CON(5)  =DOCOL
   12               * File  KB.s    9
   13 00005 00000           CON(5)  =0LASTOWDOB!
   14               * Clear protection word
   15               * File  KB.s    10
   16 0000A 00000           CON(5)  =CK0NOLASTWD
   17               * No arguments
   18               * File  KB.s    11
   19 0000F 00000           CON(5)  =ClrDA1IsStat
   20               * Turn off the clock
   21               * File  KB.s    12
   22 00014 00000           CON(5)  =RECLAIMDISP
   23               * Clear the stack
   24               * File  KB.s    13
   25 00019 00000           CON(5)  =TURNMENUOFF
   26               * Turn off the menu
   27               * File  KB.s    14
   28 0001E 00000           CON(5)  =%0
   29               * Initial counter value
   30               * File  KB.s    15
   31 00023 00000           CON(5)  =ATTNFLGCLR
   32               * Clear the attention flag
   33               * File  KB.s    16
   34 00028 00000           CON(5)  =BEGIN
   35               * File  KB.s    17
   36 0002D 00000           CON(5)  =KEYINBUFFER?
   37 00032 00000           CON(5)  =NOT
   38               * Run until any key has been pressed [except ON key]
   39               * File  KB.s    18
   40 00037 00000           CON(5)  =WHILE
   41 0003C 00000           CON(5)  =DOCOL
   42               * File  KB.s    19
   43 00041 00000           CON(5)  =DUP
   44               * Decompile and
   45               * File  KB.s    20
   46 00046 00000           CON(5)  =EDITDECOMP$
   47               * display
   48               * File  KB.s    21
   49 0004B 00000           CON(5)  =DISPROW4
   50               * counter
   51               * File  KB.s    22
   52 00050 00000           CON(5)  =%1+
   53               * Increment counter
   54               * File  KB.s    23
   55 00055 00000           CON(5)  =SEMI
   56 0005A 00000           CON(5)  =REPEAT
   57               * File  KB.s    24
   58 0005F 00000           CON(5)  =FLUSHKEYS
   59               * Flush key buffer
   60               * File  KB.s    25
   61 00064 00000           CON(5)  =ATTNFLGCLR
   62               * Clear attention flag
   63               * File  KB.s    26
   64 00069 00000           CON(5)  =ClrDAsOK
   65               * Redraw the display
   66               * File  KB.s    27
   67 0006E 00000           CON(5)  =SEMI
Saturn Assembler                                       Mon May 25 21:10:39 2009
V3.0.9 (04/15/2007)   Symbol Table                       KB.a           Page    2

 %0                                Ext                   -    28
 %1+                               Ext                   -    52
 0LASTOWDOB!                       Ext                   -    13
 ATTNFLGCLR                        Ext                   -    31    61
 BEGIN                             Ext                   -    34
 CK0NOLASTWD                       Ext                   -    16
 ClrDA1IsStat                      Ext                   -    19
 ClrDAsOK                          Ext                   -    64
 DISPROW4                          Ext                   -    49
 DOCOL                             Ext                   -    11    41
 DUP                               Ext                   -    43
 EDITDECOMP$                       Ext                   -    46
 FLUSHKEYS                         Ext                   -    58
 KEYINBUFFER?                      Ext                   -    36
 NOT                               Ext                   -    37
 RECLAIMDISP                       Ext                   -    22
 REPEAT                            Ext                   -    56
 SEMI                              Ext                   -    55    67
 TURNMENUOFF                       Ext                   -    25
 WHILE                             Ext                   -    40
Saturn Assembler                                       Mon May 25 21:10:39 2009
V3.0.9 (04/15/2007)   Statistics                         KB.a           Page    3

Input Parameters

  Source file name is KB.a

  Listing file name is KB.l

  Object file name is KB.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
