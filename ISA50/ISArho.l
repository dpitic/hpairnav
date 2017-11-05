Saturn Assembler                                       Fri Jun 19 11:51:27 2009
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
   10               * Version:                                1.23
   11               * Date:         10 June 2009
   12               * Machine:      HP50
   13               * Usage:        ( u -> u )
   14               * Input:        STACK     Geopotential altitude (with units)
   15               * Output:       STACK     Standard ISA density (SI units)
   16               *
   17               * File  ISArho.s        15
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
   31               *|| Resuming file ISArho.s at line 15
   32 00000 000000          CON(6)  =~xISA\97
   33 00006         =xISA\97
   34               * File  ISArho.s        17
   35 00006 00000           CON(5)  =DOCOL
   36               * File  ISArho.s        18
   37 0000B 00000           CON(5)  =CK1&Dispatch
   38               * Check for 1 argument
   39               * File  ISArho.s        19
   40 00010 00000           CON(5)  =unitob
   41 00015 00000           CON(5)  =DOCOL
   42               * Unit object
   43               * File  ISArho.s        20
   44 0001A 00000           CON(5)  =UMSI
   45               * Convert to SI units
   46               * File  ISArho.s        21
   47 0001F 00000           CON(5)  =DOLIST
   48 00024 00000           CON(5)  =DOLAM
   49 00029 10              CON(2)  1
   50 0002B A5              NIBASC  \Z\
   51 0002D 00000           CON(5)  =SEMI
   52 00032 00000           CON(5)  =BIND
   53               * Z = geopotential altitude
   54               * Check if Z > 20 km
   55               * File  ISArho.s        23
   56 00037 00000           CON(5)  =DOLAM
   57 0003C 10              CON(2)  1
   58 0003E A5              NIBASC  \Z\
   59               * File  ISArho.s        24
   60 00040 00000           CON(5)  =DOEXT
   61 00045 00000           CON(5)  =DOREAL
   62 0004A 400             NIBHEX  400
   63 0004D 0000000         NIBHEX  000000000002
            00002
   64 00059 0               NIBHEX  0
   65 0005A 00000           CON(5)  =DOCSTR
   66 0005F 70000           CON(5)  7
   67 00064 D6              NIBASC  \m\
   68 00066 00000           CON(5)  =umEND
   69 0006B 00000           CON(5)  =SEMI
   70               * File  ISArho.s        25
   71 00070 00000           CON(5)  =UM>?
   72 00075 00000           CON(5)  =%0<>
   73 0007A 00000           CON(5)  =case
   74 0007F 00000           CON(5)  =DOCOL
   75               * File  ISArho.s        26
   76 00084 00000           CON(5)  =DOCSTR
   77 00089 13000           CON(5)  49
   78 0008E 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

   79 000B6 B6D6            NIBASC  \km\
   80               * Display warning message and error beep
   81               * File  ISArho.s        27
   82 000BA 00000           CON(5)  =FlashWarning
   83               * and wait for key press to exit
   84               * File  ISArho.s        28
   85 000BF 00000           CON(5)  =SEMI
   86               * ELSE Calc. ISA density at altitude
   87               * File  ISArho.s        30
   88 000C4 00000           CON(5)  =DOLAM
   89 000C9 10              CON(2)  1
   90 000CB A5              NIBASC  \Z\
   91               * File  ISArho.s        31
   92 000CD 00000           CON(5)  =DOROMP
   93 000D2 000000          CON(6)  =~xISAP
   94 000D8 00000           CON(5)  =UMSI
   95               * File  ISArho.s        32
   96 000DD 00000           CON(5)  =DOEXT
   97 000E2 00000           CON(5)  =DOREAL
   98 000E7 200             NIBHEX  200
   99 000EA 0000082         NIBHEX  000008250782
            50782
  100 000F6 0               NIBHEX  0
  101 000F7 00000           CON(5)  =DOCSTR
  102 000FC 70000           CON(5)  7
  103 00101 D6              NIBASC  \m\
  104 00103 00000           CON(5)  =%2
  105 00108 00000           CON(5)  =um^
  106 0010D 00000           CON(5)  =DOCSTR
  107 00112 70000           CON(5)  7
  108 00117 37              NIBASC  \s\
  109 00119 00000           CON(5)  =%2
  110 0011E 00000           CON(5)  =um^
  111 00123 00000           CON(5)  =DOCSTR
  112 00128 70000           CON(5)  7
  113 0012D B4              NIBASC  \K\
  114 0012F 00000           CON(5)  =um*
  115 00134 00000           CON(5)  =um/
  116 00139 00000           CON(5)  =umEND
  117 0013E 00000           CON(5)  =SEMI
  118               * File  ISArho.s        33
  119 00143 00000           CON(5)  =DOLAM
  120 00148 10              CON(2)  1
  121 0014A A5              NIBASC  \Z\
  122               * File  ISArho.s        34
  123 0014C 00000           CON(5)  =DOROMP
  124 00151 000000          CON(6)  =~xISAT
  125               * File  ISArho.s        35
  126 00157 00000           CON(5)  =UM*
  127               * File  ISArho.s        36
  128 0015C 00000           CON(5)  =UM/
  129               * Return units in kg/m^3
  130               * File  ISArho.s        37
  131 00161 00000           CON(5)  =ABND
  132               * LAM Z
  133               * File  ISArho.s        38
  134 00166 00000           CON(5)  =SEMI
  135               * Return ISA density in SI units
  136               * File  ISArho.s        39
  137 0016B 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISArho.a       Page    2

 %0<>                              Ext                   -    72
 %2                                Ext                   -   104   109
 ABND                              Ext                   -   131
 BIND                              Ext                   -    52
 CK1&Dispatch                      Ext                   -    37
 DOCOL                             Ext                   -    35    41    74
 DOCSTR                            Ext                   -    65    76   101
                                         106   111
 DOEXT                             Ext                   -    60    96
 DOLAM                             Ext                   -    48    56    88
                                         119
 DOLIST                            Ext                   -    47
 DOREAL                            Ext                   -    61    97
 DOROMP                            Ext                   -    92   123
 FlashWarning                      Ext                   -    82
=RomId                             Abs     806 #00000326 -    20
 SEMI                              Ext                   -    51    69    85
                                         117   134   137
 UM*                               Ext                   -   126
 UM/                               Ext                   -   128
 UM>?                              Ext                   -    71
 UMSI                              Ext                   -    44    94
 case                              Ext                   -    73
 um*                               Ext                   -   114
 um/                               Ext                   -   115
 umEND                             Ext                   -    68   116
 um^                               Ext                   -   105   110
 unitob                            Ext                   -    40
=xISA\97                           Rel       6 #00000006 -    33
 ~xISAP                            Ext                   -    93
 ~xISAT                            Ext                   -   124
 ~xISA\97                          Ext                   -    32
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
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
