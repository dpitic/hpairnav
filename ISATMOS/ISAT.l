Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)                                      ISAT.a         Page    1

    1               * File  ISAT.s  1
    2               * RPL
    3               * File  ISAT.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOS\ISAT.s, part of the ISATM.hpp project, created by <> on 2/04/2009
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
   27               *|| Resuming file ISAT.s at line 13
   28 00000 000000          CON(6)  =~xISAT
   29 00006         =xISAT
   30               * File  ISAT.s  15
   31 00006 00000           CON(5)  =DOCOL
   32               * File  ISAT.s  16
   33 0000B 00000           CON(5)  =CK1&Dispatch
   34               * File  ISAT.s  17
   35 00010 00000           CON(5)  =BINT14
   36 00015 00000           CON(5)  =DOCOL
   37               * Unit object ?
   38               * File  ISAT.s  18
   39 0001A 00000           CON(5)  =UMSI
   40               * Convert to SI units
   41               * File  ISAT.s  19
   42 0001F 00000           CON(5)  =DOLIST
   43 00024 00000           CON(5)  =DOLAM
   44 00029 10              CON(2)  1
   45 0002B A5              NIBASC  \Z\
   46 0002D 00000           CON(5)  =SEMI
   47 00032 00000           CON(5)  =BIND
   48               * Geopotential Altitude
   49               * File  ISAT.s  20
   50 00037 00000           CON(5)  =DOEXT
   51               * Temp. lapse rate for 0 m <= Z <= 11 km
   52               * File  ISAT.s  21
   53 0003C 00000           CON(5)  =DOREAL
   54 00041 799             NIBHEX  799
   55 00044 0000000         NIBHEX  000000000056
            00056
   56 00050 9               NIBHEX  9
   57               * File  ISAT.s  22
   58 00051 00000           CON(5)  =DOCSTR
   59 00056 70000           CON(5)  7
   60 0005B B4              NIBASC  \K\
   61               * File  ISAT.s  23
   62 0005D 00000           CON(5)  =DOCSTR
   63 00062 70000           CON(5)  7
   64 00067 D6              NIBASC  \m\
   65 00069 00000           CON(5)  =um/
   66 0006E 00000           CON(5)  =umEND
   67 00073 00000           CON(5)  =SEMI
   68               * File  ISAT.s  24
   69 00078 00000           CON(5)  =DOEXT
   70 0007D 00000           CON(5)  =DOREAL
   71 00082 200             NIBHEX  200
   72 00085 0000000         NIBHEX  000000051882
            51882
   73 00091 0               NIBHEX  0
   74 00092 00000           CON(5)  =DOCSTR
   75 00097 70000           CON(5)  7
   76 0009C B4              NIBASC  \K\
   77 0009E 00000           CON(5)  =umEND
   78 000A3 00000           CON(5)  =SEMI
   79               * Sea level ISA temperature
   80               * File  ISAT.s  25
   81 000A8 00000           CON(5)  =DOLIST
   82 000AD 00000           CON(5)  =DOLAM
   83 000B2 10              CON(2)  1
   84 000B4 FD              CON(2)  #DF
   85 000B6 00000           CON(5)  =DOLAM
   86 000BB 20              CON(2)  2
   87 000BD 4503            NIBASC  \T0\
   88 000C1 00000           CON(5)  =SEMI
   89 000C6 00000           CON(5)  =BIND
   90               * File  ISAT.s  26
   91               * Check if Z > 20 km
   92               * File  ISAT.s  27
   93 000CB 00000           CON(5)  =DOLAM
   94 000D0 10              CON(2)  1
   95 000D2 A5              NIBASC  \Z\
   96 000D4 00000           CON(5)  =DOEXT
   97 000D9 00000           CON(5)  =DOREAL
   98 000DE 400             NIBHEX  400
   99 000E1 0000000         NIBHEX  000000000002
            00002
  100 000ED 0               NIBHEX  0
  101 000EE 00000           CON(5)  =DOCSTR
  102 000F3 70000           CON(5)  7
  103 000F8 D6              NIBASC  \m\
  104 000FA 00000           CON(5)  =umEND
  105 000FF 00000           CON(5)  =SEMI
  106 00104 00000           CON(5)  =UM>?
  107 00109 00000           CON(5)  =%0<>
  108 0010E 00000           CON(5)  =case
  109 00113 00000           CON(5)  =DOCOL
  110               * File  ISAT.s  28
  111 00118 00000           CON(5)  =ClrDA1IsStat
  112               * Display error message and exit
  113               * File  ISAT.s  29
  114 0011D 00000           CON(5)  =DOCSTR
  115 00122 B2000           CON(5)  43
  116 00127 542525F         NIBASC  \ERROR: Alt. > 20 km\
            425A302
            14C647E202E302230302B6D6

  117               * File  ISAT.s  30
  118 0014D 00000           CON(5)  =DISPROW1
  119               * File  ISAT.s  31
  120 00152 00000           CON(5)  =DOREAL
  121 00157 200             NIBHEX  200
  122 0015A 0000000         NIBHEX  000000000044
            00044
  123 00166 0               NIBHEX  0
  124 00167 00000           CON(5)  =DOREAL
  125 0016C 999             NIBHEX  999
  126 0016F 0000000         NIBHEX  000000000052
            00052
  127 0017B 0               NIBHEX  0
  128 0017C 00000           CON(5)  =xBEEP
  129 00181 00000           CON(5)  =%3
  130 00186 00000           CON(5)  =xFREEZE
  131               * File  ISAT.s  32
  132 0018B 00000           CON(5)  =SEMI
  133               * File  ISAT.s  33
  134               * Check if Z <= 11 km
  135               * File  ISAT.s  34
  136 00190 00000           CON(5)  =DOLAM
  137 00195 10              CON(2)  1
  138 00197 A5              NIBASC  \Z\
  139 00199 00000           CON(5)  =DOEXT
  140 0019E 00000           CON(5)  =DOREAL
  141 001A3 400             NIBHEX  400
  142 001A6 0000000         NIBHEX  000000000011
            00011
  143 001B2 0               NIBHEX  0
  144 001B3 00000           CON(5)  =DOCSTR
  145 001B8 70000           CON(5)  7
  146 001BD D6              NIBASC  \m\
  147 001BF 00000           CON(5)  =umEND
  148 001C4 00000           CON(5)  =SEMI
  149 001C9 00000           CON(5)  =UM<=?
  150 001CE 00000           CON(5)  =%0<>
  151 001D3 00000           CON(5)  =case
  152 001D8 00000           CON(5)  =DOCOL
  153               * File  ISAT.s  35
  154 001DD 00000           CON(5)  =DOLAM
  155 001E2 20              CON(2)  2
  156 001E4 4503            NIBASC  \T0\
  157               * Calculate ISA temp. for
  158               * File  ISAT.s  36
  159 001E8 00000           CON(5)  =DOLAM
  160 001ED 10              CON(2)  1
  161 001EF FD              CON(2)  #DF
  162               * Z <= 11 km
  163               * File  ISAT.s  37
  164 001F1 00000           CON(5)  =DOLAM
  165 001F6 10              CON(2)  1
  166 001F8 A5              NIBASC  \Z\
  167               * UMSI
  168               * File  ISAT.s  38
  169 001FA 00000           CON(5)  =UM*
  170               * File  ISAT.s  39
  171 001FF 00000           CON(5)  =UM+
  172               * File  ISAT.s  40
  173 00204 00000           CON(5)  =UMSI
  174               * Return ISA temp. in Kelvin
  175               * File  ISAT.s  41
  176 00209 00000           CON(5)  =SEMI
  177               * File  ISAT.s  42
  178               * Check if Z > 11 km
  179               * File  ISAT.s  43
  180 0020E 00000           CON(5)  =DOLAM
  181 00213 10              CON(2)  1
  182 00215 A5              NIBASC  \Z\
  183 00217 00000           CON(5)  =DOEXT
  184 0021C 00000           CON(5)  =DOREAL
  185 00221 400             NIBHEX  400
  186 00224 0000000         NIBHEX  000000000011
            00011
  187 00230 0               NIBHEX  0
  188 00231 00000           CON(5)  =DOCSTR
  189 00236 70000           CON(5)  7
  190 0023B D6              NIBASC  \m\
  191 0023D 00000           CON(5)  =umEND
  192 00242 00000           CON(5)  =SEMI
  193 00247 00000           CON(5)  =UM>?
  194 0024C 00000           CON(5)  =%0<>
  195 00251 00000           CON(5)  =case
  196 00256 00000           CON(5)  =DOCOL
  197               * File  ISAT.s  44
  198 0025B 00000           CON(5)  =DOLAM
  199 00260 20              CON(2)  2
  200 00262 4503            NIBASC  \T0\
  201               * Calculate ISA temp. for
  202               * File  ISAT.s  45
  203 00266 00000           CON(5)  =DOLAM
  204 0026B 10              CON(2)  1
  205 0026D FD              CON(2)  #DF
  206               * Z > 11 km
  207               * File  ISAT.s  46
  208 0026F 00000           CON(5)  =DOEXT
  209 00274 00000           CON(5)  =DOREAL
  210 00279 400             NIBHEX  400
  211 0027C 0000000         NIBHEX  000000000011
            00011
  212 00288 0               NIBHEX  0
  213 00289 00000           CON(5)  =DOCSTR
  214 0028E 70000           CON(5)  7
  215 00293 D6              NIBASC  \m\
  216 00295 00000           CON(5)  =umEND
  217 0029A 00000           CON(5)  =SEMI
  218               * File  ISAT.s  47
  219 0029F 00000           CON(5)  =UM*
  220               * File  ISAT.s  48
  221 002A4 00000           CON(5)  =UM+
  222               * File  ISAT.s  49
  223 002A9 00000           CON(5)  =UMSI
  224               * Return ISA tmep. in Kelvin
  225               * File  ISAT.s  50
  226 002AE 00000           CON(5)  =SEMI
  227               * File  ISAT.s  51
  228 002B3 00000           CON(5)  =ABND
  229               * LAM \DF  LAM T0
  230               *                                                       ABND                             ( LAM T0 )
  231               * File  ISAT.s  53
  232 002B8 00000           CON(5)  =ABND
  233               * LAM Z
  234               * File  ISAT.s  54
  235 002BD 00000           CON(5)  =SEMI
  236               * File  ISAT.s  55
  237 002C2 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAT.a         Page    2

 %0<>                              Ext                   -   107   150   194
 %3                                Ext                   -   129
 ABND                              Ext                   -   228   232
 BIND                              Ext                   -    47    89
 BINT14                            Ext                   -    35
 CK1&Dispatch                      Ext                   -    33
 ClrDA1IsStat                      Ext                   -   111
 DISPROW1                          Ext                   -   118
 DOCOL                             Ext                   -    31    36   109
                                         152   196
 DOCSTR                            Ext                   -    58    62    74
                                         101   114   144   188   213
 DOEXT                             Ext                   -    50    69    96
                                         139   183   208
 DOLAM                             Ext                   -    43    82    85
                                          93   136   154   159   164   180   198
                                         203
 DOLIST                            Ext                   -    42    81
 DOREAL                            Ext                   -    53    70    97
                                         120   124   140   184   209
=RomId                             Abs     806 #00000326 -    19
 SEMI                              Ext                   -    46    67    78
                                          88   105   132   148   176   192   217
                                         226   235   237
 UM*                               Ext                   -   169   219
 UM+                               Ext                   -   171   221
 UM<=?                             Ext                   -   149
 UM>?                              Ext                   -   106   193
 UMSI                              Ext                   -    39   173   223
 case                              Ext                   -   108   151   195
 um/                               Ext                   -    65
 umEND                             Ext                   -    66    77   104
                                         147   191   216
 xBEEP                             Ext                   -   128
 xFREEZE                           Ext                   -   130
=xISAT                             Rel       6 #00000006 -    29
 ~xISAT                            Ext                   -    28
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
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
