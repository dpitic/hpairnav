Saturn Assembler                                       Sun May 17 16:27:22 2009
V3.0.9 (04/15/2007)                                      TIMEDONE.a     Page    1

    1               * File  TIMEDONE.s      1
    2               * RPL
    3               * File  TIMEDONE.s      2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\PgmFlowCntrl\TIMEDONE.s, part of the TIMEDONE.hpp project, created by <> on 17/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Program displays "Program complete" and either the
    7               *                  time of day if the clock is displayed OR "." if the
    8               *                  clock is not being displayed.
    9               * COMPATIBILITY:   HP48
   10               * USAGE:     ( -> $ )
   11               *
   12               * File  TIMEDONE.s      10
   13 00000 00000           CON(5)  =DOCOL
   14               * File  TIMEDONE.s      11
   15 00005 00000           CON(5)  =0LASTOWDOB!
   16               * Clear saved command name
   17               * File  TIMEDONE.s      12
   18 0000A 00000           CON(5)  =CK0NOLASTWD
   19               * No arguments
   20               * File  TIMEDONE.s      13
   21 0000F 00000           CON(5)  =DOCSTR
   22 00014 52000           CON(5)  37
   23 00019 0527F67         NIBASC  \Program complete\
            62716D6
            0236F6D607C6564756

   24               * File  TIMEDONE.s      14
   25 00039 00000           CON(5)  =FORTY
   26 0003E 00000           CON(5)  =SysITE
   27 00043 00000           CON(5)  =DOCOL
   28               * Test system falg 40 = clock display
   29               * File  TIMEDONE.s      15
   30 00048 00000           CON(5)  =DOCSTR
   31 0004D D0000           CON(5)  13
   32 00052 0216470         NIBASC  \ at \
            2
   33               * TRUE object
   34               * File  TIMEDONE.s      16
   35 0005A 00000           CON(5)  =TOD
   36               * -> current time of day
   37               * File  TIMEDONE.s      17
   38 0005F 00000           CON(5)  =TOD>t$
   39               * -> $
   40               * File  TIMEDONE.s      18
   41 00064 00000           CON(5)  =&$
   42               * File  TIMEDONE.s      19
   43 00069 00000           CON(5)  =SEMI
   44               * File  TIMEDONE.s      20
   45 0006E 00000           CON(5)  =DOCSTR
   46 00073 70000           CON(5)  7
   47 00078 E2              NIBASC  \.\
   48               * FALSE object
   49               * File  TIMEDONE.s      21
   50 0007A 00000           CON(5)  =&$
   51               * Append time or period $
   52               * File  TIMEDONE.s      22
   53 0007F 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun May 17 16:27:22 2009
V3.0.9 (04/15/2007)   Symbol Table                       TIMEDONE.a     Page    2

 &$                                Ext                   -    41    50
 0LASTOWDOB!                       Ext                   -    15
 CK0NOLASTWD                       Ext                   -    18
 DOCOL                             Ext                   -    13    27
 DOCSTR                            Ext                   -    21    30    45
 FORTY                             Ext                   -    25
 SEMI                              Ext                   -    43    53
 SysITE                            Ext                   -    26
 TOD                               Ext                   -    35
 TOD>t$                            Ext                   -    38
Saturn Assembler                                       Sun May 17 16:27:22 2009
V3.0.9 (04/15/2007)   Statistics                         TIMEDONE.a     Page    3

Input Parameters

  Source file name is TIMEDONE.a

  Listing file name is TIMEDONE.l

  Object file name is TIMEDONE.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
