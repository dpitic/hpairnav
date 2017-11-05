Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)                                      ISArho.a       Page    1

    1               * File  ISArho.s        1
    2               * RPL
    3               * File  ISArho.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOS\ISArho.s, part of the ISATM.hpp project, created by <> on 2/04/2009
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
   27               *|| Resuming file ISArho.s at line 13
   28 00000 000000          CON(6)  =~xISA\97
   29 00006         =xISA\97
   30               * File  ISArho.s        15
   31 00006 00000           CON(5)  =DOCOL
   32               * File  ISArho.s        16
   33 0000B 00000           CON(5)  =CK1&Dispatch
   34               * Check for 1 argument
   35               * File  ISArho.s        17
   36 00010 00000           CON(5)  =BINT14
   37 00015 00000           CON(5)  =DOCOL
   38               * Must be unit object
   39               * File  ISArho.s        18
   40 0001A 00000           CON(5)  =UMSI
   41               * Convert to SI units
   42               * File  ISArho.s        19
   43 0001F 00000           CON(5)  =DOLIST
   44 00024 00000           CON(5)  =DOLAM
   45 00029 10              CON(2)  1
   46 0002B A5              NIBASC  \Z\
   47 0002D 00000           CON(5)  =SEMI
   48 00032 00000           CON(5)  =BIND
   49               * Z = geopotential altitude
   50               * File  ISArho.s        20
   51 00037 00000           CON(5)  =DOLAM
   52 0003C 10              CON(2)  1
   53 0003E A5              NIBASC  \Z\
   54               * Calc. ISA density at altitude
   55               * File  ISArho.s        21
   56 00040 00000           CON(5)  =DOROMP
   57 00045 000000          CON(6)  =~xISAP
   58 0004B 00000           CON(5)  =UMSI
   59               * File  ISArho.s        22
   60 00050 00000           CON(5)  =DOEXT
   61 00055 00000           CON(5)  =DOREAL
   62 0005A 200             NIBHEX  200
   63 0005D 0000082         NIBHEX  000008250782
            50782
   64 00069 0               NIBHEX  0
   65 0006A 00000           CON(5)  =DOCSTR
   66 0006F 70000           CON(5)  7
   67 00074 D6              NIBASC  \m\
   68 00076 00000           CON(5)  =%2
   69 0007B 00000           CON(5)  =um^
   70 00080 00000           CON(5)  =DOCSTR
   71 00085 70000           CON(5)  7
   72 0008A 37              NIBASC  \s\
   73 0008C 00000           CON(5)  =%2
   74 00091 00000           CON(5)  =um^
   75 00096 00000           CON(5)  =DOCSTR
   76 0009B 70000           CON(5)  7
   77 000A0 B4              NIBASC  \K\
   78 000A2 00000           CON(5)  =um*
   79 000A7 00000           CON(5)  =um/
   80 000AC 00000           CON(5)  =umEND
   81 000B1 00000           CON(5)  =SEMI
   82               * File  ISArho.s        23
   83 000B6 00000           CON(5)  =DOLAM
   84 000BB 10              CON(2)  1
   85 000BD A5              NIBASC  \Z\
   86               * File  ISArho.s        24
   87 000BF 00000           CON(5)  =DOROMP
   88 000C4 000000          CON(6)  =~xISAT
   89               * File  ISArho.s        25
   90 000CA 00000           CON(5)  =UM*
   91               * File  ISArho.s        26
   92 000CF 00000           CON(5)  =UM/
   93               * File  ISArho.s        27
   94 000D4 00000           CON(5)  =ABND
   95               * LAM Z
   96               * File  ISArho.s        28
   97 000D9 00000           CON(5)  =SEMI
   98               * Return ISA density in SI units
   99               * File  ISArho.s        29
  100 000DE 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISArho.a       Page    2

 %2                                Ext                   -    68    73
 ABND                              Ext                   -    94
 BIND                              Ext                   -    48
 BINT14                            Ext                   -    36
 CK1&Dispatch                      Ext                   -    33
 DOCOL                             Ext                   -    31    37
 DOCSTR                            Ext                   -    65    70    75
 DOEXT                             Ext                   -    60
 DOLAM                             Ext                   -    44    51    83
 DOLIST                            Ext                   -    43
 DOREAL                            Ext                   -    61
 DOROMP                            Ext                   -    56    87
=RomId                             Abs     806 #00000326 -    19
 SEMI                              Ext                   -    47    81    97
                                         100
 UM*                               Ext                   -    90
 UM/                               Ext                   -    92
 UMSI                              Ext                   -    40    58
 um*                               Ext                   -    78
 um/                               Ext                   -    79
 umEND                             Ext                   -    80
 um^                               Ext                   -    69    74
=xISA\97                           Rel       6 #00000006 -    29
 ~xISAP                            Ext                   -    57
 ~xISAT                            Ext                   -    88
 ~xISA\97                          Ext                   -    28
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
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
