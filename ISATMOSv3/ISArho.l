Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)                                      ISArho.a       Page    1

    1               * File  ISArho.s        1
    2               * RPL
    3               * File  ISArho.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISArho.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5               ********************************************************************
    6               * Name:         ISA\97
    7               * Library #:    326h = 806d
    8               * Description:  Calculates the standard density in the ISA for a
    9               *               given altitude. Output in SI units.
   10               * Version:                                1.21
   11               * Date:         02 April 2009
   12               * Input:        STACK     Geopotential altitude (with units)
   13               * Output:       STACK     Standard ISA density (SI units)
   14               * File  ISArho.s        12
   15
   16               * File  ISArho.s        13
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
   29               *|| Resuming file ISArho.s at line 13
   30 00000 000000          CON(6)  =~xISA\97
   31 00006         =xISA\97
   32               * File  ISArho.s        15
   33 00006 00000           CON(5)  =DOCOL
   34               * File  ISArho.s        16
   35 0000B 00000           CON(5)  =CK1&Dispatch
   36               * Check for 1 argument
   37               * File  ISArho.s        17
   38 00010 00000           CON(5)  =unitob
   39 00015 00000           CON(5)  =DOCOL
   40               * Must be unit object
   41               * File  ISArho.s        18
   42 0001A 00000           CON(5)  =UMSI
   43               * Convert to SI units
   44               * File  ISArho.s        19
   45 0001F 00000           CON(5)  =DOLIST
   46 00024 00000           CON(5)  =DOLAM
   47 00029 10              CON(2)  1
   48 0002B A5              NIBASC  \Z\
   49 0002D 00000           CON(5)  =SEMI
   50 00032 00000           CON(5)  =BIND
   51               * Z = geopotential altitude
   52               * File  ISArho.s        20
   53 00037 00000           CON(5)  =DOLAM
   54 0003C 10              CON(2)  1
   55 0003E A5              NIBASC  \Z\
   56               * Calc. ISA density at altitude
   57               * File  ISArho.s        21
   58 00040 00000           CON(5)  =DOROMP
   59 00045 000000          CON(6)  =~xISAP
   60 0004B 00000           CON(5)  =UMSI
   61               * File  ISArho.s        22
   62 00050 00000           CON(5)  =DOEXT
   63 00055 00000           CON(5)  =DOREAL
   64 0005A 200             NIBHEX  200
   65 0005D 0000082         NIBHEX  000008250782
            50782
   66 00069 0               NIBHEX  0
   67 0006A 00000           CON(5)  =DOCSTR
   68 0006F 70000           CON(5)  7
   69 00074 D6              NIBASC  \m\
   70 00076 00000           CON(5)  =%2
   71 0007B 00000           CON(5)  =um^
   72 00080 00000           CON(5)  =DOCSTR
   73 00085 70000           CON(5)  7
   74 0008A 37              NIBASC  \s\
   75 0008C 00000           CON(5)  =%2
   76 00091 00000           CON(5)  =um^
   77 00096 00000           CON(5)  =DOCSTR
   78 0009B 70000           CON(5)  7
   79 000A0 B4              NIBASC  \K\
   80 000A2 00000           CON(5)  =um*
   81 000A7 00000           CON(5)  =um/
   82 000AC 00000           CON(5)  =umEND
   83 000B1 00000           CON(5)  =SEMI
   84               * File  ISArho.s        23
   85 000B6 00000           CON(5)  =DOLAM
   86 000BB 10              CON(2)  1
   87 000BD A5              NIBASC  \Z\
   88               * File  ISArho.s        24
   89 000BF 00000           CON(5)  =DOROMP
   90 000C4 000000          CON(6)  =~xISAT
   91               * File  ISArho.s        25
   92 000CA 00000           CON(5)  =UM*
   93               * File  ISArho.s        26
   94 000CF 00000           CON(5)  =UM/
   95               * File  ISArho.s        27
   96 000D4 00000           CON(5)  =ABND
   97               * LAM Z
   98               * File  ISArho.s        28
   99 000D9 00000           CON(5)  =SEMI
  100               * Return ISA density in SI units
  101               * File  ISArho.s        29
  102 000DE 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISArho.a       Page    2

 %2                                Ext                   -    70    75
 ABND                              Ext                   -    96
 BIND                              Ext                   -    50
 CK1&Dispatch                      Ext                   -    35
 DOCOL                             Ext                   -    33    39
 DOCSTR                            Ext                   -    67    72    77
 DOEXT                             Ext                   -    62
 DOLAM                             Ext                   -    46    53    85
 DOLIST                            Ext                   -    45
 DOREAL                            Ext                   -    63
 DOROMP                            Ext                   -    58    89
=RomId                             Abs     806 #00000326 -    19
 SEMI                              Ext                   -    49    83    99
                                         102
 UM*                               Ext                   -    92
 UM/                               Ext                   -    94
 UMSI                              Ext                   -    42    60
 um*                               Ext                   -    80
 um/                               Ext                   -    81
 umEND                             Ext                   -    82
 um^                               Ext                   -    71    76
 unitob                            Ext                   -    38
=xISA\97                           Rel       6 #00000006 -    31
 ~xISAP                            Ext                   -    59
 ~xISAT                            Ext                   -    90
 ~xISA\97                          Ext                   -    30
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)   Statistics                         ISArho.a       Page    3

Input Parameters

  Source file name is ISArho.a

  Listing file name is ISArho.l

  Object file name is ISArho.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
