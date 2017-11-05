Saturn Assembler                                       Sun May 24 16:07:45 2009
V3.0.9 (04/15/2007)                                      MDISPN.a       Page    1

    1               * File  MDISPN.s        1
    2               * RPL
    3               * File  MDISPN.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\DISPtest\MDISPN.s, part of the MDISPN.hpp project, created by <> on 8/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Illustrates the medium font display lines.
    7               * COMPATIBILITY:   HP48, HP50
    8               *
    9               * File  MDISPN.s        7
   10 00000 00000           CON(5)  =DOCOL
   11               * File  MDISPN.s        8
   12 00005 00000           CON(5)  =CK0NOLASTWD
   13               * Clear saved command name
   14               * File  MDISPN.s        9
   15 0000A 00000           CON(5)  =0LASTOWDOB!
   16               * No arguments
   17               * File  MDISPN.s        10
   18 0000F 00000           CON(5)  =RECLAIMDISP
   19               * Claim stack display
   20               * File  MDISPN.s        11
   21 00014 00000           CON(5)  =ClrDA1IsStat
   22               * Disable ticking clock
   23               * File  MDISPN.s        12
   24 00019 00000           CON(5)  =EIGHT
   25 0001E 00000           CON(5)  =ONE
   26 00023 00000           CON(5)  =DO
   27               * Loop for 7 lines
   28               * File  MDISPN.s        13
   29 00028 00000           CON(5)  =INDEX@
   30               * Loop index counter [ -> # ]
   31               * File  MDISPN.s        14
   32 0002D 00000           CON(5)  =DOCSTR
   33 00032 F0000           CON(5)  15
   34 00037 C496E65         NIBASC  \Line \
            602
   35               * String [ -> # $ ]
   36               * File  MDISPN.s        15
   37 00041 00000           CON(5)  =OVER
   38               * Take loop index counter # [ -> # $ # ]
   39               * File  MDISPN.s        16
   40 00046 00000           CON(5)  =UNCOERCE
   41               * Convert # to % [ -> # $ % ]
   42               * File  MDISPN.s        17
   43 0004B 00000           CON(5)  =DECOMP$
   44               * Convert % to $ [ -> # $ $' ]
   45               * File  MDISPN.s        18
   46 00050 00000           CON(5)  =&$
   47               * Combine "Line " and $ [ -> # $''
   48               * File  MDISPN.s        19
   49 00055 00000           CON(5)  =SWAP
   50               * SWAP for next command [ -> $'' # ]
   51               * File  MDISPN.s        20
   52 0005A 00000           CON(5)  =DISPN
   53               * Display combined $ at row # [ $ #row -> ]
   54               * File  MDISPN.s        21
   55 0005F 00000           CON(5)  =LOOP
   56               * File  MDISPN.s        22
   57 00064 00000           CON(5)  =SetDAsTemp
   58               * Freeze the display
   59               * File  MDISPN.s        23
   60 00069 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun May 24 16:07:45 2009
V3.0.9 (04/15/2007)   Symbol Table                       MDISPN.a       Page    2

 &$                                Ext                   -    46
 0LASTOWDOB!                       Ext                   -    15
 CK0NOLASTWD                       Ext                   -    12
 ClrDA1IsStat                      Ext                   -    21
 DECOMP$                           Ext                   -    43
 DISPN                             Ext                   -    52
 DO                                Ext                   -    26
 DOCOL                             Ext                   -    10
 DOCSTR                            Ext                   -    32
 EIGHT                             Ext                   -    24
 INDEX@                            Ext                   -    29
 LOOP                              Ext                   -    55
 ONE                               Ext                   -    25
 OVER                              Ext                   -    37
 RECLAIMDISP                       Ext                   -    18
 SEMI                              Ext                   -    60
 SWAP                              Ext                   -    49
 SetDAsTemp                        Ext                   -    57
 UNCOERCE                          Ext                   -    40
Saturn Assembler                                       Sun May 24 16:07:45 2009
V3.0.9 (04/15/2007)   Statistics                         MDISPN.a       Page    3

Input Parameters

  Source file name is MDISPN.a

  Listing file name is MDISPN.l

  Object file name is MDISPN.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
