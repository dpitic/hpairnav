Saturn Assembler                                       Wed Apr 22 13:56:40 2009
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
   10               * Version:                              1.21
   11               * Date:                                                                 02 April 2009
   12               * Input:                                        STACK                                   Geometric altitude (with units)
   13               * Output:    STACK     Geopotential altitude (in SI units)
   14               * File  GEOPO.s 12
   15
   16               * File  GEOPO.s 13
   17               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISATM.h
   18
   19               =RomId  EQU     #326
   20               * ROMID set to 326
   21
   22
   23
   24
   25
   26
   27
   28
   29               *|| Resuming file GEOPO.s at line 13
   30 00000 000000          CON(6)  =~xGEOPO
   31 00006         =xGEOPO
   32               * File  GEOPO.s 15
   33 00006 00000           CON(5)  =DOCOL
   34               * File  GEOPO.s 16
   35 0000B 00000           CON(5)  =CK1&Dispatch
   36               * Check for geom. alt. argument
   37               * File  GEOPO.s 17
   38 00010 00000           CON(5)  =unitob
   39 00015 00000           CON(5)  =DOCOL
   40               * Must be unit object
   41               * File  GEOPO.s 18
   42 0001A 00000           CON(5)  =UMSI
   43               * Convert to SI units
   44               * File  GEOPO.s 19
   45 0001F 00000           CON(5)  =DOLIST
   46 00024 00000           CON(5)  =DOLAM
   47 00029 10              CON(2)  1
   48 0002B 84              NIBASC  \H\
   49 0002D 00000           CON(5)  =SEMI
   50 00032 00000           CON(5)  =BIND
   51               * H = geometric altitude [local]
   52               * File  GEOPO.s 20
   53 00037 00000           CON(5)  =DOEXT
   54 0003C 00000           CON(5)  =DOREAL
   55 00041 600             NIBHEX  600
   56 00044 0000066         NIBHEX  000006676536
            76536
   57 00050 0               NIBHEX  0
   58 00051 00000           CON(5)  =DOCSTR
   59 00056 70000           CON(5)  7
   60 0005B D6              NIBASC  \m\
   61 0005D 00000           CON(5)  =umEND
   62 00062 00000           CON(5)  =SEMI
   63               * Radius of the Earth
   64               * File  GEOPO.s 21
   65 00067 00000           CON(5)  =DOLIST
   66 0006C 00000           CON(5)  =DOLAM
   67 00071 20              CON(2)  2
   68 00073 2756            NIBASC  \re\
   69 00077 00000           CON(5)  =SEMI
   70 0007C 00000           CON(5)  =BIND
   71               * re = radius of Earth [local]
   72               * File  GEOPO.s 22
   73 00081 00000           CON(5)  =DOLAM
   74 00086 20              CON(2)  2
   75 00088 2756            NIBASC  \re\
   76               * Calculate the geopotential
   77               * File  GEOPO.s 23
   78 0008C 00000           CON(5)  =DOLAM
   79 00091 10              CON(2)  1
   80 00093 84              NIBASC  \H\
   81               * altitude and output on STACK
   82               * File  GEOPO.s 24
   83 00095 00000           CON(5)  =UM*
   84               * File  GEOPO.s 25
   85 0009A 00000           CON(5)  =DOLAM
   86 0009F 20              CON(2)  2
   87 000A1 2756            NIBASC  \re\
   88               * File  GEOPO.s 26
   89 000A5 00000           CON(5)  =DOLAM
   90 000AA 10              CON(2)  1
   91 000AC 84              NIBASC  \H\
   92               * File  GEOPO.s 27
   93 000AE 00000           CON(5)  =UM+
   94               * File  GEOPO.s 28
   95 000B3 00000           CON(5)  =UM/
   96               * File  GEOPO.s 29
   97 000B8 00000           CON(5)  =UMSI
   98               * Convert to SI units [m]
   99               * File  GEOPO.s 30
  100 000BD 00000           CON(5)  =ABND
  101               * LAM H
  102               * File  GEOPO.s 31
  103 000C2 00000           CON(5)  =ABND
  104               * LAM re
  105               * File  GEOPO.s 32
  106 000C7 00000           CON(5)  =SEMI
  107               * File  GEOPO.s 33
  108 000CC 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       GEOPO.a        Page    2

 ABND                              Ext                   -   100   103
 BIND                              Ext                   -    50    70
 CK1&Dispatch                      Ext                   -    35
 DOCOL                             Ext                   -    33    39
 DOCSTR                            Ext                   -    58
 DOEXT                             Ext                   -    53
 DOLAM                             Ext                   -    46    66    73
                                          78    85    89
 DOLIST                            Ext                   -    45    65
 DOREAL                            Ext                   -    54
=RomId                             Abs     806 #00000326 -    19
 SEMI                              Ext                   -    49    62    69
                                         106   108
 UM*                               Ext                   -    83
 UM+                               Ext                   -    93
 UM/                               Ext                   -    95
 UMSI                              Ext                   -    42    97
 umEND                             Ext                   -    61
 unitob                            Ext                   -    38
=xGEOPO                            Rel       6 #00000006 -    31
 ~xGEOPO                           Ext                   -    30
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
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
