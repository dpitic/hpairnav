Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)                                      ISArho.a       Page    1

    1             * File  ISArho.s        1
    2             * RPL
    3             * File  ISArho.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISArho.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5             ********************************************************************
    6             * Name:         ISA\97
    7             * Library #:    326h = 806d
    8             * Description:  Calculates the standard density in the ISA for a
    9             *               given altitude. Output in SI units.
   10             * Version:                                1.23
   11             * Date:         10 June 2009
   12             * Machine:      HP48
   13             *               HP50
   14             * Usage:        ( u -> u )
   15             * Input:        STACK     Geopotential altitude (with units)
   16             * Output:       STACK     Standard ISA density (SI units)
   17             *
   18             * File  ISArho.s        16
   19             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\ISA48.h
   20
   21             =RomId  EQU     #326
   22             * ROMID set to 326
   23
   24
   25
   26
   27
   28
   29
   30
   31
   32
   33             *|| Resuming file ISArho.s at line 16
   34             * File  ISArho.s        18
   35             * File  ISArho.s        19
   36             * File  ISArho.s        20
   37 00000 00000         CON(6)  =~xISA\97
            0
   38 00006       =xISA\97
   39             * File  ISArho.s        21
   40 00006 00000         CON(5)  =DOCOL
   41             * File  ISArho.s        22
   42 0000B 00000         CON(5)  =CK1&Dispatch
   43             * Check for 1 argument
   44             * File  ISArho.s        23
   45 00010 00000         CON(5)  =unitob
   46 00015 00000         CON(5)  =DOCOL
   47             * Unit object
   48             * File  ISArho.s        24
   49 0001A 00000         CON(5)  =UMSI
   50             * Convert to SI units
   51             * File  ISArho.s        25
   52 0001F 00000         CON(5)  =DOLIST
   53 00024 00000         CON(5)  =DOLAM
   54 00029 10            CON(2)  1
   55 0002B A5            NIBASC  \Z\
   56 0002D 00000         CON(5)  =SEMI
   57 00032 00000         CON(5)  =BIND
   58             * Z = geopotential altitude
   59             * Check if Z > 20 km
   60             * File  ISArho.s        27
   61 00037 00000         CON(5)  =DOLAM
   62 0003C 10            CON(2)  1
   63 0003E A5            NIBASC  \Z\
   64             * File  ISArho.s        28
   65 00040 00000         CON(5)  =DOEXT
   66 00045 00000         CON(5)  =DOREAL
   67 0004A 400           NIBHEX  400
   68 0004D 00000         NIBHEX  000000000002
            00000
            02
   69 00059 0             NIBHEX  0
   70 0005A 00000         CON(5)  =DOCSTR
   71 0005F 70000         CON(5)  7
   72 00064 D6            NIBASC  \m\
   73 00066 00000         CON(5)  =umEND
   74 0006B 00000         CON(5)  =SEMI
   75             * File  ISArho.s        29
   76 00070 00000         CON(5)  =UM>?
   77 00075 00000         CON(5)  =%0<>
   78 0007A 00000         CON(5)  =case
   79 0007F 00000         CON(5)  =DOCOL
   80             * Display warning message and error beep
   81             * File  ISArho.s        30
   82 00084 00000         CON(5)  =ERRBEEP
   83             * Message box parameters
   84             * File  ISArho.s        32
   85 00089 00000         CON(5)  =DOCSTR
   86 0008E F2000         CON(5)  47
   87 00093 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

   88 000BB D6            NIBASC  \m\
   89             * message$
   90             * File  ISArho.s        33
   91 000BD 00000         CON(5)  =TWELVE
   92             * #maxwidth
   93             * File  ISArho.s        34
   94 000C2 00000         CON(5)  =TEN
   95             * #minwidth
   96             * File  ISArho.s        35
   97 000C7 00000         CON(5)  =DOROMP
   98 000CC 00000         CON(6)  =~grobAlertIcon
            0
   99             * grob
  100             * File  ISArho.s        36
  101 000D2 00000         CON(5)  =DOROMP
  102 000D7 00000         CON(6)  =~MsgBoxMenu
            0
  103             * menuobject
  104             * File  ISArho.s        37
  105 000DD 00000         CON(5)  =DOROMP
  106 000E2 00000         CON(6)  =~DoMsgBox
            0
  107 000E8 00000         CON(5)  =DROP
  108             * Draw the message box, DROP FLAG
  109             * File  ISArho.s        38
  110 000ED 00000         CON(5)  =SEMI
  111             * ELSE Calc. ISA density at altitude
  112             * File  ISArho.s        40
  113 000F2 00000         CON(5)  =DOLAM
  114 000F7 10            CON(2)  1
  115 000F9 A5            NIBASC  \Z\
  116             * File  ISArho.s        41
  117 000FB 00000         CON(5)  =DOROMP
  118 00100 00000         CON(6)  =~xISAP
            0
  119 00106 00000         CON(5)  =UMSI
  120             * File  ISArho.s        42
  121 0010B 00000         CON(5)  =DOEXT
  122 00110 00000         CON(5)  =DOREAL
  123 00115 200           NIBHEX  200
  124 00118 00000         NIBHEX  000008250782
            82507
            82
  125 00124 0             NIBHEX  0
  126 00125 00000         CON(5)  =DOCSTR
  127 0012A 70000         CON(5)  7
  128 0012F D6            NIBASC  \m\
  129 00131 00000         CON(5)  =%2
  130 00136 00000         CON(5)  =um^
  131 0013B 00000         CON(5)  =DOCSTR
  132 00140 70000         CON(5)  7
  133 00145 37            NIBASC  \s\
  134 00147 00000         CON(5)  =%2
  135 0014C 00000         CON(5)  =um^
  136 00151 00000         CON(5)  =DOCSTR
  137 00156 70000         CON(5)  7
  138 0015B B4            NIBASC  \K\
  139 0015D 00000         CON(5)  =um*
  140 00162 00000         CON(5)  =um/
  141 00167 00000         CON(5)  =umEND
  142 0016C 00000         CON(5)  =SEMI
  143             * File  ISArho.s        43
  144 00171 00000         CON(5)  =DOLAM
  145 00176 10            CON(2)  1
  146 00178 A5            NIBASC  \Z\
  147             * File  ISArho.s        44
  148 0017A 00000         CON(5)  =DOROMP
  149 0017F 00000         CON(6)  =~xISAT
            0
  150             * File  ISArho.s        45
  151 00185 00000         CON(5)  =UM*
  152             * File  ISArho.s        46
  153 0018A 00000         CON(5)  =UM/
  154             * Return units in kg/m^3
  155             * File  ISArho.s        47
  156 0018F 00000         CON(5)  =ABND
  157             * LAM Z
  158             * File  ISArho.s        48
  159 00194 00000         CON(5)  =SEMI
  160             * Return ISA density in SI units
  161             * File  ISArho.s        49
  162 00199 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISArho.a       Page    2

 %0<>                              Ext                   -    77
 %2                                Ext                   -   129   134
 ABND                              Ext                   -   156
 BIND                              Ext                   -    57
 CK1&Dispatch                      Ext                   -    42
 DOCOL                             Ext                   -    40    46    79
 DOCSTR                            Ext                   -    70    85   126
                                         131   136
 DOEXT                             Ext                   -    65   121
 DOLAM                             Ext                   -    53    61   113
                                         144
 DOLIST                            Ext                   -    52
 DOREAL                            Ext                   -    66   122
 DOROMP                            Ext                   -    97   101   105
                                         117   148
 DROP                              Ext                   -   107
 ERRBEEP                           Ext                   -    82
=RomId                             Abs     806 #00000326 -    21
 SEMI                              Ext                   -    56    74   110
                                         142   159   162
 TEN                               Ext                   -    94
 TWELVE                            Ext                   -    91
 UM*                               Ext                   -   151
 UM/                               Ext                   -   153
 UM>?                              Ext                   -    76
 UMSI                              Ext                   -    49   119
 case                              Ext                   -    78
 um*                               Ext                   -   139
 um/                               Ext                   -   140
 umEND                             Ext                   -    73   141
 um^                               Ext                   -   130   135
 unitob                            Ext                   -    45
=xISA\97                           Rel       6 #00000006 -    38
 ~DoMsgBox                         Ext                   -   106
 ~MsgBoxMenu                       Ext                   -   102
 ~grobAlertIcon                    Ext                   -    98
 ~xISAP                            Ext                   -   118
 ~xISAT                            Ext                   -   149
 ~xISA\97                          Ext                   -    37
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
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
