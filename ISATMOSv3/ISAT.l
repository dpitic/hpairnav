Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)                                      ISAT.a         Page    1

    1               * File  ISAT.s  1
    2               * RPL
    3               * File  ISAT.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAT.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5               ********************************************************************
    6               * Name:                                                                         ISAT
    7               * Library #:     326h = 806d
    8               * Description:                  Calculates the standard temperature in the ISA for
    9               *                                                                                                                               a given altitude.  Output in SI units Kelvin.
   10               * Version:                                                      1.21
   11               * Date:                                                                         02 April 2009
   12               * Input:                                STACK                                   Geopotential altitude (with units)
   13               * Output:         STACK                                 Standard ISA temperature in SI units (Kelvin)
   14               * File  ISAT.s  12
   15
   16               * File  ISAT.s  13
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
   29               *|| Resuming file ISAT.s at line 13
   30 00000 000000          CON(6)  =~xISAT
   31 00006         =xISAT
   32               * File  ISAT.s  15
   33 00006 00000           CON(5)  =DOCOL
   34               * File  ISAT.s  16
   35 0000B 00000           CON(5)  =CK1&Dispatch
   36               * File  ISAT.s  17
   37 00010 00000           CON(5)  =unitob
   38 00015 00000           CON(5)  =DOCOL
   39               * Unit object ?
   40               * File  ISAT.s  18
   41 0001A 00000           CON(5)  =UMSI
   42               * Convert to SI units
   43               * File  ISAT.s  19
   44 0001F 00000           CON(5)  =DOLIST
   45 00024 00000           CON(5)  =DOLAM
   46 00029 10              CON(2)  1
   47 0002B A5              NIBASC  \Z\
   48 0002D 00000           CON(5)  =SEMI
   49 00032 00000           CON(5)  =BIND
   50               * Geopotential Altitude
   51               * File  ISAT.s  20
   52 00037 00000           CON(5)  =DOEXT
   53               * Temp. lapse rate for 0 m <= Z <= 11 km
   54               * File  ISAT.s  21
   55 0003C 00000           CON(5)  =DOREAL
   56 00041 799             NIBHEX  799
   57 00044 0000000         NIBHEX  000000000056
            00056
   58 00050 9               NIBHEX  9
   59               * File  ISAT.s  22
   60 00051 00000           CON(5)  =DOCSTR
   61 00056 70000           CON(5)  7
   62 0005B B4              NIBASC  \K\
   63               * File  ISAT.s  23
   64 0005D 00000           CON(5)  =DOCSTR
   65 00062 70000           CON(5)  7
   66 00067 D6              NIBASC  \m\
   67 00069 00000           CON(5)  =um/
   68 0006E 00000           CON(5)  =umEND
   69 00073 00000           CON(5)  =SEMI
   70               * File  ISAT.s  24
   71 00078 00000           CON(5)  =DOEXT
   72 0007D 00000           CON(5)  =DOREAL
   73 00082 200             NIBHEX  200
   74 00085 0000000         NIBHEX  000000051882
            51882
   75 00091 0               NIBHEX  0
   76 00092 00000           CON(5)  =DOCSTR
   77 00097 70000           CON(5)  7
   78 0009C B4              NIBASC  \K\
   79 0009E 00000           CON(5)  =umEND
   80 000A3 00000           CON(5)  =SEMI
   81               * Sea level ISA temperature
   82               * File  ISAT.s  25
   83 000A8 00000           CON(5)  =DOLIST
   84 000AD 00000           CON(5)  =DOLAM
   85 000B2 10              CON(2)  1
   86 000B4 FD              CON(2)  #DF
   87 000B6 00000           CON(5)  =DOLAM
   88 000BB 20              CON(2)  2
   89 000BD 4503            NIBASC  \T0\
   90 000C1 00000           CON(5)  =SEMI
   91 000C6 00000           CON(5)  =BIND
   92               * File  ISAT.s  26
   93               * Check if Z > 20 km
   94               * File  ISAT.s  27
   95 000CB 00000           CON(5)  =DOLAM
   96 000D0 10              CON(2)  1
   97 000D2 A5              NIBASC  \Z\
   98 000D4 00000           CON(5)  =DOEXT
   99 000D9 00000           CON(5)  =DOREAL
  100 000DE 400             NIBHEX  400
  101 000E1 0000000         NIBHEX  000000000002
            00002
  102 000ED 0               NIBHEX  0
  103 000EE 00000           CON(5)  =DOCSTR
  104 000F3 70000           CON(5)  7
  105 000F8 D6              NIBASC  \m\
  106 000FA 00000           CON(5)  =umEND
  107 000FF 00000           CON(5)  =SEMI
  108 00104 00000           CON(5)  =UM>?
  109 00109 00000           CON(5)  =%0<>
  110 0010E 00000           CON(5)  =case
  111 00113 00000           CON(5)  =DOCOL
  112               * File  ISAT.s  28
  113 00118 00000           CON(5)  =ClrDA1IsStat
  114               * Display error message and exit
  115               * File  ISAT.s  29
  116 0011D 00000           CON(5)  =DOCSTR
  117 00122 B2000           CON(5)  43
  118 00127 542525F         NIBASC  \ERROR: Alt. > 20 km\
            425A302
            14C647E202E302230302B6D6

  119               * File  ISAT.s  30
  120 0014D 00000           CON(5)  =DISPROW1
  121               * File  ISAT.s  31
  122 00152 00000           CON(5)  =ERRBEEP
  123               * Generage error beep
  124               * File  ISAT.s  32
  125 00157 00000           CON(5)  =%3
  126 0015C 00000           CON(5)  =xFREEZE
  127               * Freeze display until key press
  128               * File  ISAT.s  33
  129 00161 00000           CON(5)  =SEMI
  130               * File  ISAT.s  34
  131               * Check if Z <= 11 km
  132               * File  ISAT.s  35
  133 00166 00000           CON(5)  =DOLAM
  134 0016B 10              CON(2)  1
  135 0016D A5              NIBASC  \Z\
  136 0016F 00000           CON(5)  =DOEXT
  137 00174 00000           CON(5)  =DOREAL
  138 00179 400             NIBHEX  400
  139 0017C 0000000         NIBHEX  000000000011
            00011
  140 00188 0               NIBHEX  0
  141 00189 00000           CON(5)  =DOCSTR
  142 0018E 70000           CON(5)  7
  143 00193 D6              NIBASC  \m\
  144 00195 00000           CON(5)  =umEND
  145 0019A 00000           CON(5)  =SEMI
  146 0019F 00000           CON(5)  =UM<=?
  147 001A4 00000           CON(5)  =%0<>
  148 001A9 00000           CON(5)  =case
  149 001AE 00000           CON(5)  =DOCOL
  150               * File  ISAT.s  36
  151 001B3 00000           CON(5)  =DOLAM
  152 001B8 20              CON(2)  2
  153 001BA 4503            NIBASC  \T0\
  154               * Calculate ISA temp. for
  155               * File  ISAT.s  37
  156 001BE 00000           CON(5)  =DOLAM
  157 001C3 10              CON(2)  1
  158 001C5 FD              CON(2)  #DF
  159               * Z <= 11 km
  160               * File  ISAT.s  38
  161 001C7 00000           CON(5)  =DOLAM
  162 001CC 10              CON(2)  1
  163 001CE A5              NIBASC  \Z\
  164               * UMSI
  165               * File  ISAT.s  39
  166 001D0 00000           CON(5)  =UM*
  167               * File  ISAT.s  40
  168 001D5 00000           CON(5)  =UM+
  169               * File  ISAT.s  41
  170 001DA 00000           CON(5)  =UMSI
  171               * Return ISA temp. in Kelvin
  172               * File  ISAT.s  42
  173 001DF 00000           CON(5)  =SEMI
  174               * File  ISAT.s  43
  175               * Check if Z > 11 km
  176               * File  ISAT.s  44
  177 001E4 00000           CON(5)  =DOLAM
  178 001E9 10              CON(2)  1
  179 001EB A5              NIBASC  \Z\
  180 001ED 00000           CON(5)  =DOEXT
  181 001F2 00000           CON(5)  =DOREAL
  182 001F7 400             NIBHEX  400
  183 001FA 0000000         NIBHEX  000000000011
            00011
  184 00206 0               NIBHEX  0
  185 00207 00000           CON(5)  =DOCSTR
  186 0020C 70000           CON(5)  7
  187 00211 D6              NIBASC  \m\
  188 00213 00000           CON(5)  =umEND
  189 00218 00000           CON(5)  =SEMI
  190 0021D 00000           CON(5)  =UM>?
  191 00222 00000           CON(5)  =%0<>
  192 00227 00000           CON(5)  =case
  193 0022C 00000           CON(5)  =DOCOL
  194               * File  ISAT.s  45
  195 00231 00000           CON(5)  =DOLAM
  196 00236 20              CON(2)  2
  197 00238 4503            NIBASC  \T0\
  198               * Calculate ISA temp. for
  199               * File  ISAT.s  46
  200 0023C 00000           CON(5)  =DOLAM
  201 00241 10              CON(2)  1
  202 00243 FD              CON(2)  #DF
  203               * Z > 11 km
  204               * File  ISAT.s  47
  205 00245 00000           CON(5)  =DOEXT
  206 0024A 00000           CON(5)  =DOREAL
  207 0024F 400             NIBHEX  400
  208 00252 0000000         NIBHEX  000000000011
            00011
  209 0025E 0               NIBHEX  0
  210 0025F 00000           CON(5)  =DOCSTR
  211 00264 70000           CON(5)  7
  212 00269 D6              NIBASC  \m\
  213 0026B 00000           CON(5)  =umEND
  214 00270 00000           CON(5)  =SEMI
  215               * File  ISAT.s  48
  216 00275 00000           CON(5)  =UM*
  217               * File  ISAT.s  49
  218 0027A 00000           CON(5)  =UM+
  219               * File  ISAT.s  50
  220 0027F 00000           CON(5)  =UMSI
  221               * Return ISA tmep. in Kelvin
  222               * File  ISAT.s  51
  223 00284 00000           CON(5)  =SEMI
  224               * File  ISAT.s  52
  225 00289 00000           CON(5)  =ABND
  226               * LAM \DF  LAM T0
  227               * File  ISAT.s  53
  228 0028E 00000           CON(5)  =ABND
  229               * LAM Z
  230               * File  ISAT.s  54
  231 00293 00000           CON(5)  =SEMI
  232               * File  ISAT.s  55
  233 00298 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAT.a         Page    2

 %0<>                              Ext                   -   109   147   191
 %3                                Ext                   -   125
 ABND                              Ext                   -   225   228
 BIND                              Ext                   -    49    91
 CK1&Dispatch                      Ext                   -    35
 ClrDA1IsStat                      Ext                   -   113
 DISPROW1                          Ext                   -   120
 DOCOL                             Ext                   -    33    38   111
                                         149   193
 DOCSTR                            Ext                   -    60    64    76
                                         103   116   141   185   210
 DOEXT                             Ext                   -    52    71    98
                                         136   180   205
 DOLAM                             Ext                   -    45    84    87
                                          95   133   151   156   161   177   195
                                         200
 DOLIST                            Ext                   -    44    83
 DOREAL                            Ext                   -    55    72    99
                                         137   181   206
 ERRBEEP                           Ext                   -   122
=RomId                             Abs     806 #00000326 -    19
 SEMI                              Ext                   -    48    69    80
                                          90   107   129   145   173   189   214
                                         223   231   233
 UM*                               Ext                   -   166   216
 UM+                               Ext                   -   168   218
 UM<=?                             Ext                   -   146
 UM>?                              Ext                   -   108   190
 UMSI                              Ext                   -    41   170   220
 case                              Ext                   -   110   148   192
 um/                               Ext                   -    67
 umEND                             Ext                   -    68    79   106
                                         144   188   213
 unitob                            Ext                   -    37
 xFREEZE                           Ext                   -   126
=xISAT                             Rel       6 #00000006 -    31
 ~xISAT                            Ext                   -    30
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)   Statistics                         ISAT.a         Page    3

Input Parameters

  Source file name is ISAT.a

  Listing file name is ISAT.l

  Object file name is ISAT.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
