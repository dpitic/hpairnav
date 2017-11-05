Saturn Assembler                                       Sun May 24 16:12:51 2009
V3.0.9 (04/15/2007)                                      BDISPN.a       Page    1

    1               * File  BDISPN.s        1
    2               * RPL
    3               * File  BDISPN.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\DISPtest\MDISPN.s, part of the MDISPN.hpp project, created by <> on 8/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Illustrates the large font display lines.
    7               * COMPATIBILITY:   HP48
    8               *
    9               * File  BDISPN.s        7
   10 00000 00000           CON(5)  =DOCOL
   11               * File  BDISPN.s        8
   12 00005 00000           CON(5)  =CK0NOLASTWD
   13               * Clear saved command name
   14               * File  BDISPN.s        9
   15 0000A 00000           CON(5)  =0LASTOWDOB!
   16               * No arguments
   17               * File  BDISPN.s        10
   18 0000F 00000           CON(5)  =RECLAIMDISP
   19               * Claim stack display
   20               * File  BDISPN.s        11
   21 00014 00000           CON(5)  =ClrDA1IsStat
   22               * Disable ticking clock
   23               * File  BDISPN.s        12
   24 00019 00000           CON(5)  =FIVE
   25 0001E 00000           CON(5)  =ONE
   26 00023 00000           CON(5)  =DO
   27               * Loop for 4 lines
   28               * File  BDISPN.s        13
   29 00028 00000           CON(5)  =INDEX@
   30               * Loop index counter # [ -> # ]
   31               * File  BDISPN.s        14
   32 0002D 00000           CON(5)  =DOCSTR
   33 00032 F0000           CON(5)  15
   34 00037 C496E65         NIBASC  \Line \
            602
   35               * String [ -> # $ ]
   36               * File  BDISPN.s        15
   37 00041 00000           CON(5)  =OVER
   38               * Take loop index counter # [ -> # $ # ]
   39               * File  BDISPN.s        16
   40 00046 00000           CON(5)  =UNCOERCE
   41               * Convert # to % [ -> # $ % ]
   42               * File  BDISPN.s        17
   43 0004B 00000           CON(5)  =DECOMP$
   44               * Convert % to $ [ -> # $ $' ]
   45               * File  BDISPN.s        18
   46 00050 00000           CON(5)  =&$
   47               * Combine "Line " and $ [ -> # $'' ]
   48               * File  BDISPN.s        19
   49 00055 00000           CON(5)  =SWAP
   50               * SWAP for next command [ -> $'' # ]
   51               * File  BDISPN.s        20
   52 0005A 00000           CON(5)  =BIGDISPN
   53               * Display combined $ at row # [ $ #row -> ]
   54               * File  BDISPN.s        21
   55 0005F 00000           CON(5)  =LOOP
   56               * File  BDISPN.s        22
   57 00064 00000           CON(5)  =SetDAsTemp
   58               * Freeze the display
   59               * File  BDISPN.s        23
   60 00069 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun May 24 16:12:51 2009
V3.0.9 (04/15/2007)   Symbol Table                       BDISPN.a       Page    2

 &$                                Ext                   -    46
 0LASTOWDOB!                       Ext                   -    15
 BIGDISPN                          Ext                   -    52
 CK0NOLASTWD                       Ext                   -    12
 ClrDA1IsStat                      Ext                   -    21
 DECOMP$                           Ext                   -    43
 DO                                Ext                   -    26
 DOCOL                             Ext                   -    10
 DOCSTR                            Ext                   -    32
 FIVE                              Ext                   -    24
 INDEX@                            Ext                   -    29
 LOOP                              Ext                   -    55
 ONE                               Ext                   -    25
 OVER                              Ext                   -    37
 RECLAIMDISP                       Ext                   -    18
 SEMI                              Ext                   -    60
 SWAP                              Ext                   -    49
 SetDAsTemp                        Ext                   -    57
 UNCOERCE                          Ext                   -    40
Saturn Assembler                                       Sun May 24 16:12:51 2009
V3.0.9 (04/15/2007)   Statistics                         BDISPN.a       Page    3

Input Parameters

  Source file name is BDISPN.a

  Listing file name is BDISPN.l

  Object file name is BDISPN.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
