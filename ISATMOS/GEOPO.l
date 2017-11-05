Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)                                      GEOPO.a        Page    1

    1               * File  GEOPO.s 1
    2               * RPL
    3               * File  GEOPO.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOS\GEOPO.s, part of the ISATM.hpp project, created by <> on 2/04/2009
    5               ********************************************************************
    6               * Name:                         GEOPO
    7               * Library #:                            326h = 806d
    8               * Description:          Calculates the Geopotential Altitude from input of
    9               *               Geometric Altitude.  (The SysRPL version of GEOPO)
   10               * Version:                              1.21
   11               * Date:                                                                 02 April 2009
   12               * Input:                                        STACK                                   Geometric altitude (with units)
   13               * Output:    STACK     Geopotential altitude (in SI units)
   14               * File  GEOPO.s 12
   15
   16               * File  GEOPO.s 13
   17               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOS\ISATM.h
   18
   19               =RomId  EQU     #326
   20               * ROMID set to 326
   21
   22
   23
   24
   25
   26
   27               *|| Resuming file GEOPO.s at line 13
   28 00000 000000          CON(6)  =~xGEOPO
   29 00006         =xGEOPO
   30               * File  GEOPO.s 15
   31 00006 00000           CON(5)  =DOCOL
   32               * File  GEOPO.s 16
   33 0000B 00000           CON(5)  =CK1&Dispatch
   34               * Check for geom. alt. argument
   35               * File  GEOPO.s 17
   36 00010 00000           CON(5)  =BINT1
   37 00015 00000           CON(5)  =DOCOL
   38 0001A 00000           CON(5)  =DOCSTR
   39 0001F 90000           CON(5)  9
   40 00024 6647            NIBASC  \ft\
   41 00028 00000           CON(5)  =umEND
   42 0002D 00000           CON(5)  =BINT3
   43 00032 00000           CON(5)  =EXTN
   44 00037 00000           CON(5)  =DOROMP
   45 0003C 000000          CON(6)  =~xGEOPO
   46 00042 00000           CON(5)  =SEMI
   47               * File  GEOPO.s 18
   48 00047 00000           CON(5)  =BINT14
   49 0004C 00000           CON(5)  =DOCOL
   50               * Must be unit object
   51               * File  GEOPO.s 19
   52 00051 00000           CON(5)  =UMSI
   53               * Convert to SI units
   54               * File  GEOPO.s 20
   55 00056 00000           CON(5)  =DOLIST
   56 0005B 00000           CON(5)  =DOLAM
   57 00060 10              CON(2)  1
   58 00062 84              NIBASC  \H\
   59 00064 00000           CON(5)  =SEMI
   60 00069 00000           CON(5)  =BIND
   61               * H = geometric altitude [local]
   62               * File  GEOPO.s 21
   63 0006E 00000           CON(5)  =DOEXT
   64 00073 00000           CON(5)  =DOREAL
   65 00078 600             NIBHEX  600
   66 0007B 0000066         NIBHEX  000006676536
            76536
   67 00087 0               NIBHEX  0
   68 00088 00000           CON(5)  =DOCSTR
   69 0008D 70000           CON(5)  7
   70 00092 D6              NIBASC  \m\
   71 00094 00000           CON(5)  =umEND
   72 00099 00000           CON(5)  =SEMI
   73               * Radius of the Earth
   74               * File  GEOPO.s 22
   75 0009E 00000           CON(5)  =DOLIST
   76 000A3 00000           CON(5)  =DOLAM
   77 000A8 20              CON(2)  2
   78 000AA 2756            NIBASC  \re\
   79 000AE 00000           CON(5)  =SEMI
   80 000B3 00000           CON(5)  =BIND
   81               * re = radius of Earth [local]
   82               * File  GEOPO.s 23
   83 000B8 00000           CON(5)  =DOLAM
   84 000BD 20              CON(2)  2
   85 000BF 2756            NIBASC  \re\
   86               * Calculate the geopotential
   87               * File  GEOPO.s 24
   88 000C3 00000           CON(5)  =DOLAM
   89 000C8 10              CON(2)  1
   90 000CA 84              NIBASC  \H\
   91               * altitude and output on STACK
   92               * File  GEOPO.s 25
   93 000CC 00000           CON(5)  =UM*
   94               * File  GEOPO.s 26
   95 000D1 00000           CON(5)  =DOLAM
   96 000D6 20              CON(2)  2
   97 000D8 2756            NIBASC  \re\
   98               * File  GEOPO.s 27
   99 000DC 00000           CON(5)  =DOLAM
  100 000E1 10              CON(2)  1
  101 000E3 84              NIBASC  \H\
  102               * File  GEOPO.s 28
  103 000E5 00000           CON(5)  =UM+
  104               * File  GEOPO.s 29
  105 000EA 00000           CON(5)  =UM/
  106               * File  GEOPO.s 30
  107 000EF 00000           CON(5)  =UMSI
  108               * Convert to SI units [m]
  109               * File  GEOPO.s 31
  110 000F4 00000           CON(5)  =ABND
  111               * LAM H
  112               * File  GEOPO.s 32
  113 000F9 00000           CON(5)  =ABND
  114               * LAM re
  115               * File  GEOPO.s 33
  116 000FE 00000           CON(5)  =SEMI
  117               * File  GEOPO.s 34
  118 00103 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)   Symbol Table                       GEOPO.a        Page    2

 ABND                              Ext                   -   110   113
 BIND                              Ext                   -    60    80
 BINT1                             Ext                   -    36
 BINT14                            Ext                   -    48
 BINT3                             Ext                   -    42
 CK1&Dispatch                      Ext                   -    33
 DOCOL                             Ext                   -    31    37    49
 DOCSTR                            Ext                   -    38    68
 DOEXT                             Ext                   -    63
 DOLAM                             Ext                   -    56    76    83
                                          88    95    99
 DOLIST                            Ext                   -    55    75
 DOREAL                            Ext                   -    64
 DOROMP                            Ext                   -    44
 EXTN                              Ext                   -    43
=RomId                             Abs     806 #00000326 -    19
 SEMI                              Ext                   -    46    59    72
                                          79   116   118
 UM*                               Ext                   -    93
 UM+                               Ext                   -   103
 UM/                               Ext                   -   105
 UMSI                              Ext                   -    52   107
 umEND                             Ext                   -    41    71
=xGEOPO                            Rel       6 #00000006 -    29
 ~xGEOPO                           Ext                   -    28    45
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
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
