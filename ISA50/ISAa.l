Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)                                      ISAa.a         Page    1

    1               * File  ISAa.s  1
    2               * RPL
    3               * File  ISAa.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAa.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5               ********************************************************************
    6               * Name:                           ISAa
    7               * Library #:    326h = 806d
    8               * Description:  Calculates the speed of sound in air for the standard
    9               *                                                                                                                       atmosphere ISA for a given altitude.
   10               *               Output in SI units.
   11               * Version:      1.23
   12               * Date:         10 June 2009
   13               * Machine:      HP50
   14               * Usage:        ( u -> u )
   15               * Input:      STACK                             Geopotential altitude (with units)
   16               * Output:     STACK                             Speed of sound in ISA (m/s)
   17               *
   18               * File  ISAa.s  16
   19               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA50\ISA50.h
   20
   21               =RomId  EQU     #326
   22               * ROMID set to 326
   23
   24
   25
   26
   27
   28
   29
   30
   31
   32               *|| Resuming file ISAa.s at line 16
   33 00000 000000          CON(6)  =~xISAa
   34 00006         =xISAa
   35               * File  ISAa.s  18
   36 00006 00000           CON(5)  =DOCOL
   37               * File  ISAa.s  19
   38 0000B 00000           CON(5)  =CK1&Dispatch
   39               * Check for 1 argument
   40               * File  ISAa.s  20
   41 00010 00000           CON(5)  =unitob
   42 00015 00000           CON(5)  =DOCOL
   43               * Unit object
   44               * File  ISAa.s  21
   45 0001A 00000           CON(5)  =UMSI
   46               * Convert to SI units
   47               * Check if Z > 20 km
   48               * File  ISAa.s  23
   49 0001F 00000           CON(5)  =DUP
   50               * File  ISAa.s  24
   51 00024 00000           CON(5)  =DOEXT
   52 00029 00000           CON(5)  =DOREAL
   53 0002E 400             NIBHEX  400
   54 00031 0000000         NIBHEX  000000000002
            00002
   55 0003D 0               NIBHEX  0
   56 0003E 00000           CON(5)  =DOCSTR
   57 00043 70000           CON(5)  7
   58 00048 D6              NIBASC  \m\
   59 0004A 00000           CON(5)  =umEND
   60 0004F 00000           CON(5)  =SEMI
   61               * File  ISAa.s  25
   62 00054 00000           CON(5)  =UM>?
   63 00059 00000           CON(5)  =%0<>
   64 0005E 00000           CON(5)  =casedrop
   65 00063 00000           CON(5)  =DOCOL
   66               * File  ISAa.s  26
   67 00068 00000           CON(5)  =DOCSTR
   68 0006D 13000           CON(5)  49
   69 00072 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

   70 0009A B6D6            NIBASC  \km\
   71               * Display warning message and error beep
   72               * File  ISAa.s  27
   73 0009E 00000           CON(5)  =FlashWarning
   74               * and wait for key press to exit
   75               * File  ISAa.s  28
   76 000A3 00000           CON(5)  =SEMI
   77               * File  ISAa.s  29
   78 000A8 00000           CON(5)  =DOROMP
   79 000AD 000000          CON(6)  =~xISAT
   80               * File  ISAa.s  30
   81 000B3 00000           CON(5)  =DOEXT
   82 000B8 00000           CON(5)  =DOREAL
   83 000BD 200             NIBHEX  200
   84 000C0 0000082         NIBHEX  000008250782
            50782
   85 000CC 0               NIBHEX  0
   86 000CD 00000           CON(5)  =DOCSTR
   87 000D2 70000           CON(5)  7
   88 000D7 D6              NIBASC  \m\
   89 000D9 00000           CON(5)  =%2
   90 000DE 00000           CON(5)  =um^
   91 000E3 00000           CON(5)  =DOCSTR
   92 000E8 70000           CON(5)  7
   93 000ED 37              NIBASC  \s\
   94 000EF 00000           CON(5)  =%2
   95 000F4 00000           CON(5)  =um^
   96 000F9 00000           CON(5)  =DOCSTR
   97 000FE 70000           CON(5)  7
   98 00103 B4              NIBASC  \K\
   99 00105 00000           CON(5)  =um*
  100 0010A 00000           CON(5)  =um/
  101 0010F 00000           CON(5)  =umEND
  102 00114 00000           CON(5)  =SEMI
  103               * File  ISAa.s  31
  104 00119 00000           CON(5)  =UM*
  105               * File  ISAa.s  32
  106 0011E 00000           CON(5)  =DOREAL
  107 00123 000             NIBHEX  000
  108 00126 0000000         NIBHEX  000000000041
            00041
  109 00132 0               NIBHEX  0
  110               * File  ISAa.s  33
  111 00133 00000           CON(5)  =UM*
  112               * File  ISAa.s  34
  113 00138 00000           CON(5)  =UMSQRT
  114               * File  ISAa.s  35
  115 0013D 00000           CON(5)  =SEMI
  116               * Return ISA speed of sound [m/s]
  117               * File  ISAa.s  36
  118 00142 00000           CON(5)  =SEMI
  119               * in air at altitude
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAa.a         Page    2

 %0<>                              Ext                   -    63
 %2                                Ext                   -    89    94
 CK1&Dispatch                      Ext                   -    38
 DOCOL                             Ext                   -    36    42    65
 DOCSTR                            Ext                   -    56    67    86
                                          91    96
 DOEXT                             Ext                   -    51    81
 DOREAL                            Ext                   -    52    82   106
 DOROMP                            Ext                   -    78
 DUP                               Ext                   -    49
 FlashWarning                      Ext                   -    73
=RomId                             Abs     806 #00000326 -    21
 SEMI                              Ext                   -    60    76   102
                                         115   118
 UM*                               Ext                   -   104   111
 UM>?                              Ext                   -    62
 UMSI                              Ext                   -    45
 UMSQRT                            Ext                   -   113
 casedrop                          Ext                   -    64
 um*                               Ext                   -    99
 um/                               Ext                   -   100
 umEND                             Ext                   -    59   101
 um^                               Ext                   -    90    95
 unitob                            Ext                   -    41
=xISAa                             Rel       6 #00000006 -    34
 ~xISAT                            Ext                   -    79
 ~xISAa                            Ext                   -    33
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Statistics                         ISAa.a         Page    3

Input Parameters

  Source file name is ISAa.a

  Listing file name is ISAa.l

  Object file name is ISAa.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
