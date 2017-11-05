Saturn Assembler                                       Fri Jun 19 11:51:27 2009
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
   10               * Version:                                                      1.23
   11               * Date:                                                                         10 June 2009
   12               * Machine:       HP50
   13               * Usage:         ( u -> u )
   14               * Input:                                STACK                                   Geopotential altitude (with units)
   15               * Output:         STACK                                 Standard ISA temperature in SI units (Kelvin)
   16               *
   17               * File  ISAT.s  15
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
   31               *|| Resuming file ISAT.s at line 15
   32 00000 000000          CON(6)  =~xISAT
   33 00006         =xISAT
   34               * File  ISAT.s  17
   35 00006 00000           CON(5)  =DOCOL
   36               * File  ISAT.s  18
   37 0000B 00000           CON(5)  =CK1&Dispatch
   38               * Require 1 argument
   39               * File  ISAT.s  19
   40 00010 00000           CON(5)  =unitob
   41 00015 00000           CON(5)  =DOCOL
   42               * Unit object
   43               * File  ISAT.s  20
   44 0001A 00000           CON(5)  =UMSI
   45               * Convert geopotential altitude to SI units
   46               * File  ISAT.s  21
   47 0001F 00000           CON(5)  =DOEXT
   48               * Temp. lapse rate for 0 m <= Z <= 11 km
   49               * File  ISAT.s  22
   50 00024 00000           CON(5)  =DOREAL
   51 00029 799             NIBHEX  799
   52 0002C 0000000         NIBHEX  000000000056
            00056
   53 00038 9               NIBHEX  9
   54 00039 00000           CON(5)  =DOCSTR
   55 0003E 70000           CON(5)  7
   56 00043 B4              NIBASC  \K\
   57 00045 00000           CON(5)  =DOCSTR
   58 0004A 70000           CON(5)  7
   59 0004F D6              NIBASC  \m\
   60 00051 00000           CON(5)  =um/
   61 00056 00000           CON(5)  =umEND
   62 0005B 00000           CON(5)  =SEMI
   63               * File  ISAT.s  23
   64 00060 00000           CON(5)  =DOEXT
   65 00065 00000           CON(5)  =DOREAL
   66 0006A 200             NIBHEX  200
   67 0006D 0000000         NIBHEX  000000051882
            51882
   68 00079 0               NIBHEX  0
   69 0007A 00000           CON(5)  =DOCSTR
   70 0007F 70000           CON(5)  7
   71 00084 B4              NIBASC  \K\
   72 00086 00000           CON(5)  =umEND
   73 0008B 00000           CON(5)  =SEMI
   74               * Sea level ISA temperature
   75               * File  ISAT.s  24
   76 00090 00000           CON(5)  =DOLIST
   77 00095 00000           CON(5)  =DOLAM
   78 0009A 10              CON(2)  1
   79 0009C A5              NIBASC  \Z\
   80 0009E 00000           CON(5)  =DOLAM
   81 000A3 10              CON(2)  1
   82 000A5 FD              CON(2)  #DF
   83 000A7 00000           CON(5)  =DOLAM
   84 000AC 20              CON(2)  2
   85 000AE 4503            NIBASC  \T0\
   86 000B2 00000           CON(5)  =SEMI
   87 000B7 00000           CON(5)  =BIND
   88               * Create temporary environment
   89               * Check if Z > 20 km
   90               * File  ISAT.s  26
   91 000BC 00000           CON(5)  =DOLAM
   92 000C1 10              CON(2)  1
   93 000C3 A5              NIBASC  \Z\
   94               * File  ISAT.s  27
   95 000C5 00000           CON(5)  =DOEXT
   96 000CA 00000           CON(5)  =DOREAL
   97 000CF 400             NIBHEX  400
   98 000D2 0000000         NIBHEX  000000000002
            00002
   99 000DE 0               NIBHEX  0
  100 000DF 00000           CON(5)  =DOCSTR
  101 000E4 70000           CON(5)  7
  102 000E9 D6              NIBASC  \m\
  103 000EB 00000           CON(5)  =umEND
  104 000F0 00000           CON(5)  =SEMI
  105               * File  ISAT.s  28
  106 000F5 00000           CON(5)  =UM>?
  107 000FA 00000           CON(5)  =%0<>
  108 000FF 00000           CON(5)  =case
  109 00104 00000           CON(5)  =DOCOL
  110               * File  ISAT.s  29
  111 00109 00000           CON(5)  =DOCSTR
  112 0010E 13000           CON(5)  49
  113 00113 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

  114 0013B B6D6            NIBASC  \km\
  115               * Display warning message and error beep
  116               * File  ISAT.s  30
  117 0013F 00000           CON(5)  =FlashWarning
  118               * and wait for key press to exit
  119               * File  ISAT.s  31
  120 00144 00000           CON(5)  =SEMI
  121               * Check if Z <= 11 km
  122               * File  ISAT.s  33
  123 00149 00000           CON(5)  =DOLAM
  124 0014E 10              CON(2)  1
  125 00150 A5              NIBASC  \Z\
  126               * File  ISAT.s  34
  127 00152 00000           CON(5)  =DOEXT
  128 00157 00000           CON(5)  =DOREAL
  129 0015C 400             NIBHEX  400
  130 0015F 0000000         NIBHEX  000000000011
            00011
  131 0016B 0               NIBHEX  0
  132 0016C 00000           CON(5)  =DOCSTR
  133 00171 70000           CON(5)  7
  134 00176 D6              NIBASC  \m\
  135 00178 00000           CON(5)  =umEND
  136 0017D 00000           CON(5)  =SEMI
  137               * File  ISAT.s  35
  138 00182 00000           CON(5)  =UM<=?
  139 00187 00000           CON(5)  =%0<>
  140 0018C 00000           CON(5)  =case
  141 00191 00000           CON(5)  =DOCOL
  142               * File  ISAT.s  36
  143 00196 00000           CON(5)  =DOLAM
  144 0019B 20              CON(2)  2
  145 0019D 4503            NIBASC  \T0\
  146               * Calculate ISA temp. for
  147               * File  ISAT.s  37
  148 001A1 00000           CON(5)  =DOLAM
  149 001A6 10              CON(2)  1
  150 001A8 FD              CON(2)  #DF
  151               * Z <= 11 km
  152               * File  ISAT.s  38
  153 001AA 00000           CON(5)  =DOLAM
  154 001AF 10              CON(2)  1
  155 001B1 A5              NIBASC  \Z\
  156               * File  ISAT.s  39
  157 001B3 00000           CON(5)  =UM*
  158               * File  ISAT.s  40
  159 001B8 00000           CON(5)  =UM+
  160               * File  ISAT.s  41
  161 001BD 00000           CON(5)  =UMSI
  162               * Return ISA temp. in Kelvin
  163               * File  ISAT.s  42
  164 001C2 00000           CON(5)  =SEMI
  165               * Check if Z > 11 km
  166               * File  ISAT.s  44
  167 001C7 00000           CON(5)  =DOLAM
  168 001CC 10              CON(2)  1
  169 001CE A5              NIBASC  \Z\
  170               * File  ISAT.s  45
  171 001D0 00000           CON(5)  =DOEXT
  172 001D5 00000           CON(5)  =DOREAL
  173 001DA 400             NIBHEX  400
  174 001DD 0000000         NIBHEX  000000000011
            00011
  175 001E9 0               NIBHEX  0
  176 001EA 00000           CON(5)  =DOCSTR
  177 001EF 70000           CON(5)  7
  178 001F4 D6              NIBASC  \m\
  179 001F6 00000           CON(5)  =umEND
  180 001FB 00000           CON(5)  =SEMI
  181               * File  ISAT.s  46
  182 00200 00000           CON(5)  =UM>?
  183 00205 00000           CON(5)  =%0<>
  184 0020A 00000           CON(5)  =case
  185 0020F 00000           CON(5)  =DOCOL
  186               * File  ISAT.s  47
  187 00214 00000           CON(5)  =DOLAM
  188 00219 20              CON(2)  2
  189 0021B 4503            NIBASC  \T0\
  190               * Calculate ISA temp. for
  191               * File  ISAT.s  48
  192 0021F 00000           CON(5)  =DOLAM
  193 00224 10              CON(2)  1
  194 00226 FD              CON(2)  #DF
  195               * Z > 11 km
  196               * File  ISAT.s  49
  197 00228 00000           CON(5)  =DOEXT
  198 0022D 00000           CON(5)  =DOREAL
  199 00232 400             NIBHEX  400
  200 00235 0000000         NIBHEX  000000000011
            00011
  201 00241 0               NIBHEX  0
  202 00242 00000           CON(5)  =DOCSTR
  203 00247 70000           CON(5)  7
  204 0024C D6              NIBASC  \m\
  205 0024E 00000           CON(5)  =umEND
  206 00253 00000           CON(5)  =SEMI
  207               * File  ISAT.s  50
  208 00258 00000           CON(5)  =UM*
  209               * File  ISAT.s  51
  210 0025D 00000           CON(5)  =UM+
  211               * File  ISAT.s  52
  212 00262 00000           CON(5)  =UMSI
  213               * Return ISA tmep. in Kelvin
  214               * File  ISAT.s  53
  215 00267 00000           CON(5)  =SEMI
  216               * File  ISAT.s  54
  217 0026C 00000           CON(5)  =ABND
  218               * Abandont temporary environment
  219               * File  ISAT.s  55
  220 00271 00000           CON(5)  =SEMI
  221               * File  ISAT.s  56
  222 00276 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAT.a         Page    2

 %0<>                              Ext                   -   107   139   183
 ABND                              Ext                   -   217
 BIND                              Ext                   -    87
 CK1&Dispatch                      Ext                   -    37
 DOCOL                             Ext                   -    35    41   109
                                         141   185
 DOCSTR                            Ext                   -    54    57    69
                                         100   111   132   176   202
 DOEXT                             Ext                   -    47    64    95
                                         127   171   197
 DOLAM                             Ext                   -    77    80    83
                                          91   123   143   148   153   167   187
                                         192
 DOLIST                            Ext                   -    76
 DOREAL                            Ext                   -    50    65    96
                                         128   172   198
 FlashWarning                      Ext                   -   117
=RomId                             Abs     806 #00000326 -    20
 SEMI                              Ext                   -    62    73    86
                                         104   120   136   164   180   206   215
                                         220   222
 UM*                               Ext                   -   157   208
 UM+                               Ext                   -   159   210
 UM<=?                             Ext                   -   138
 UM>?                              Ext                   -   106   182
 UMSI                              Ext                   -    44   161   212
 case                              Ext                   -   108   140   184
 um/                               Ext                   -    60
 umEND                             Ext                   -    61    72   103
                                         135   179   205
 unitob                            Ext                   -    40
=xISAT                             Rel       6 #00000006 -    33
 ~xISAT                            Ext                   -    32
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
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
