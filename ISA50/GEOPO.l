Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)                                      GEOPO.a        Page    1

    1               * File  GEOPO.s 1
    2               * RPL
    3               * File  GEOPO.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\GEOPO.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5               ********************************************************************
    6               * Name:                         GEOPO
    7               * Library #:                            326h = 806d
    8               * Description:          Calculates the Geopotential Altitude from input of
    9               *               Geometric Altitude.  (The SysRPL version of GEOPO)
   10               * Version:                              1.23
   11               * Date:                                                                 10 June 2009
   12               * Machine:      HP50
   13               * Usage:       ( u -> u )
   14               * Input:                                        STACK                                   Geometric altitude (with units)
   15               * Output:    STACK     Geopotential altitude (in SI units)
   16               *
   17               * File  GEOPO.s 15
   18               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA50\ISA50.h
   19
   20               =RomId  EQU     #326
   21               * ROMID set to 326
   22
   23
   24
   25
   26
   27
   28
   29
   30
   31               *|| Resuming file GEOPO.s at line 15
   32 00000 000000          CON(6)  =~xGEOPO
   33 00006         =xGEOPO
   34               * File  GEOPO.s 17
   35 00006 00000           CON(5)  =DOCOL
   36               * File  GEOPO.s 18
   37 0000B 00000           CON(5)  =CK1&Dispatch
   38               * Check for geom. alt. argument
   39               * File  GEOPO.s 19
   40 00010 00000           CON(5)  =unitob
   41 00015 00000           CON(5)  =DOCOL
   42               * Unit object
   43               * File  GEOPO.s 20
   44 0001A 00000           CON(5)  =UMSI
   45               * Convert to SI units
   46               * File  GEOPO.s 21
   47 0001F 00000           CON(5)  =DOEXT
   48 00024 00000           CON(5)  =DOREAL
   49 00029 600             NIBHEX  600
   50 0002C 0000066         NIBHEX  000006676536
            76536
   51 00038 0               NIBHEX  0
   52 00039 00000           CON(5)  =DOCSTR
   53 0003E 70000           CON(5)  7
   54 00043 D6              NIBASC  \m\
   55 00045 00000           CON(5)  =umEND
   56 0004A 00000           CON(5)  =SEMI
   57               * Radius of the Earth
   58               * File  GEOPO.s 22
   59 0004F 00000           CON(5)  =DOLIST
   60 00054 00000           CON(5)  =DOLAM
   61 00059 10              CON(2)  1
   62 0005B 84              NIBASC  \H\
   63 0005D 00000           CON(5)  =DOLAM
   64 00062 20              CON(2)  2
   65 00064 2756            NIBASC  \re\
   66 00068 00000           CON(5)  =SEMI
   67 0006D 00000           CON(5)  =BIND
   68               * Create temporary environment
   69               * File  GEOPO.s 23
   70 00072 00000           CON(5)  =DOLAM
   71 00077 20              CON(2)  2
   72 00079 2756            NIBASC  \re\
   73               * Calculate the geopotential
   74               * File  GEOPO.s 24
   75 0007D 00000           CON(5)  =DOLAM
   76 00082 10              CON(2)  1
   77 00084 84              NIBASC  \H\
   78               * altitude and output on STACK
   79               * File  GEOPO.s 25
   80 00086 00000           CON(5)  =UM*
   81               * File  GEOPO.s 26
   82 0008B 00000           CON(5)  =DOLAM
   83 00090 20              CON(2)  2
   84 00092 2756            NIBASC  \re\
   85               * File  GEOPO.s 27
   86 00096 00000           CON(5)  =DOLAM
   87 0009B 10              CON(2)  1
   88 0009D 84              NIBASC  \H\
   89               * File  GEOPO.s 28
   90 0009F 00000           CON(5)  =UM+
   91               * File  GEOPO.s 29
   92 000A4 00000           CON(5)  =UM/
   93               * File  GEOPO.s 30
   94 000A9 00000           CON(5)  =UMSI
   95               * Convert to SI units [m]
   96               * File  GEOPO.s 31
   97 000AE 00000           CON(5)  =ABND
   98               * Abandon temporary environment
   99               * File  GEOPO.s 32
  100 000B3 00000           CON(5)  =SEMI
  101               * File  GEOPO.s 33
  102 000B8 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Symbol Table                       GEOPO.a        Page    2

 ABND                              Ext                   -    97
 BIND                              Ext                   -    67
 CK1&Dispatch                      Ext                   -    37
 DOCOL                             Ext                   -    35    41
 DOCSTR                            Ext                   -    52
 DOEXT                             Ext                   -    47
 DOLAM                             Ext                   -    60    63    70
                                          75    82    86
 DOLIST                            Ext                   -    59
 DOREAL                            Ext                   -    48
=RomId                             Abs     806 #00000326 -    20
 SEMI                              Ext                   -    56    66   100
                                         102
 UM*                               Ext                   -    80
 UM+                               Ext                   -    90
 UM/                               Ext                   -    92
 UMSI                              Ext                   -    44    94
 umEND                             Ext                   -    55
 unitob                            Ext                   -    40
=xGEOPO                            Rel       6 #00000006 -    33
 ~xGEOPO                           Ext                   -    32
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Statistics                         GEOPO.a        Page    3

Input Parameters

  Source file name is GEOPO.a

  Listing file name is GEOPO.l

  Object file name is GEOPO.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
