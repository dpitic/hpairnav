Saturn Assembler                                       Mon May 25 21:01:34 2009
V3.0.9 (04/15/2007)                                      ADDIT.a        Page    1

    1               * File  ADDIT.s 1
    2               * RPL
    3               * File  ADDIT.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\ADDIT.s, part of the ADDIT.hpp project, created by <> on 9/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Clears the key buffer and attention flag and then
    7               *                  begins counting until the ON key has been pressed.
    8               *                  The key buffer is flushed upon termination.
    9               * COMPATIBILITY:   HP48, HP50
   10               * USAGE:     ( -> %result )
   11               * File  ADDIT.s 9
   12 00000 00000           CON(5)  =DOCOL
   13               * File  ADDIT.s 10
   14 00005 00000           CON(5)  =0LASTOWDOB!
   15               * Clear protection word
   16               * File  ADDIT.s 11
   17 0000A 00000           CON(5)  =CK0NOLASTWD
   18               * No arguments
   19               * File  ADDIT.s 12
   20 0000F 00000           CON(5)  =ClrDA1IsStat
   21               * Turn off the clock
   22               * File  ADDIT.s 13
   23 00014 00000           CON(5)  =RECLAIMDISP
   24               * Clear the stack
   25               * File  ADDIT.s 14
   26 00019 00000           CON(5)  =TURNMENUOFF
   27               * Turn off the menu
   28               * File  ADDIT.s 15
   29 0001E 00000           CON(5)  =%0
   30               * Initial counter value
   31               * File  ADDIT.s 16
   32 00023 00000           CON(5)  =ATTNFLGCLR
   33               * Clear the attention flag
   34               * File  ADDIT.s 17
   35 00028 00000           CON(5)  =BEGIN
   36               * File  ADDIT.s 18
   37 0002D 00000           CON(5)  =ATTN?
   38 00032 00000           CON(5)  =NOT
   39               * Run until ON has been pressed
   40               * File  ADDIT.s 19
   41 00037 00000           CON(5)  =WHILE
   42 0003C 00000           CON(5)  =DOCOL
   43               * File  ADDIT.s 20
   44 00041 00000           CON(5)  =DUP
   45               * Decompile and
   46               * File  ADDIT.s 21
   47 00046 00000           CON(5)  =EDITDECOMP$
   48               * display
   49               * File  ADDIT.s 22
   50 0004B 00000           CON(5)  =DISPROW4
   51               * counter
   52               * File  ADDIT.s 23
   53 00050 00000           CON(5)  =%1+
   54               * Increment counter
   55               * File  ADDIT.s 24
   56 00055 00000           CON(5)  =SEMI
   57 0005A 00000           CON(5)  =REPEAT
   58               * File  ADDIT.s 25
   59 0005F 00000           CON(5)  =FLUSHKEYS
   60               * Flush key buffer
   61               * File  ADDIT.s 26
   62 00064 00000           CON(5)  =ATTNFLGCLR
   63               * Clear attention flag
   64               * File  ADDIT.s 27
   65 00069 00000           CON(5)  =ClrDAsOK
   66               * Redraw the display
   67               * File  ADDIT.s 28
   68 0006E 00000           CON(5)  =SEMI
Saturn Assembler                                       Mon May 25 21:01:34 2009
V3.0.9 (04/15/2007)   Symbol Table                       ADDIT.a        Page    2

 %0                                Ext                   -    29
 %1+                               Ext                   -    53
 0LASTOWDOB!                       Ext                   -    14
 ATTN?                             Ext                   -    37
 ATTNFLGCLR                        Ext                   -    32    62
 BEGIN                             Ext                   -    35
 CK0NOLASTWD                       Ext                   -    17
 ClrDA1IsStat                      Ext                   -    20
 ClrDAsOK                          Ext                   -    65
 DISPROW4                          Ext                   -    50
 DOCOL                             Ext                   -    12    42
 DUP                               Ext                   -    44
 EDITDECOMP$                       Ext                   -    47
 FLUSHKEYS                         Ext                   -    59
 NOT                               Ext                   -    38
 RECLAIMDISP                       Ext                   -    23
 REPEAT                            Ext                   -    57
 SEMI                              Ext                   -    56    68
 TURNMENUOFF                       Ext                   -    26
 WHILE                             Ext                   -    41
Saturn Assembler                                       Mon May 25 21:01:34 2009
V3.0.9 (04/15/2007)   Statistics                         ADDIT.a        Page    3

Input Parameters

  Source file name is ADDIT.a

  Listing file name is ADDIT.l

  Object file name is ADDIT.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
