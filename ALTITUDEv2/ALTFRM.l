Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)                                      ALTFRM.a       Page    1

    1               * File  ALTFRM.s        1
    2               * RPL
    3               * File  ALTFRM.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTFRM.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               *********************************************************************
    6               * NAME:            ALTFRM
    7               * LIBRARY #:       327h = 807d
    8               * AUTHOR:          Dan Pitic
    9               * VERSION:         1.13
   10               * DATE:            22 April 2009
   11               * DESCRIPTION:     Input form and choose box for altitude calculations.
   12               * INPUT:     CA    Calibrated altitude (global) with units
   13               *            SAT   Static air temperature (global) [deg C]
   14               *            PA    Pressure altitude (global) with units
   15               *            GNDST Ground station elevation (global) with units
   16               * OUTPUT:    TA    True altitude (global) [same units as GNDST]
   17               *            DA    Density altitude (global) [same units as PA]
   18               * CALLS:           LIBRARY 326h = 807d
   19               *
   20               * File  ALTFRM.s        18
   21               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALT.h
   22
   23               =RomId  EQU     #327
   24               * ROMID set to 327
   25
   26
   27
   28
   29
   30
   31               *|| Resuming file ALTFRM.s at line 18
   32               * File  ALTFRM.s        20
   33 00000 000000          CON(6)  =~xALTFRM
   34 00006         =xALTFRM
   35               * File  ALTFRM.s        21
   36 00006 00000           CON(5)  =DOCOL
   37               * File  ALTFRM.s        22
   38 0000B 00000           CON(5)  =BEGIN
   39               * File  ALTFRM.s        23
   40 00010 00000           CON(5)  =DOROMP
   41 00015 000000          CON(6)  =~ALTform
   42               * Run Input Form
   43               * File  ALTFRM.s        24
   44 0001B 00000           CON(5)  =WHILE
   45 00020 00000           CON(5)  =DOCOL
   46               * File  ALTFRM.s        25
   47 00025 00000           CON(5)  ='
   48 0002A 00000           CON(5)  =DOIDNT
   49 0002F 20              CON(2)  2
   50 00031 4414            NIBASC  \DA\
   51 00035 00000           CON(5)  =STO
   52               * If OK is pressed, then
   53               * File  ALTFRM.s        26
   54 0003A 00000           CON(5)  ='
   55 0003F 00000           CON(5)  =DOIDNT
   56 00044 20              CON(2)  2
   57 00046 4514            NIBASC  \TA\
   58 0004A 00000           CON(5)  =STO
   59               * STO output from input form
   60               * File  ALTFRM.s        27
   61 0004F 00000           CON(5)  ='
   62 00054 00000           CON(5)  =DOIDNT
   63 00059 50              CON(2)  5
   64 0005B 74E4443         NIBASC  \GNDST\
            545
   65 00065 00000           CON(5)  =STO
   66               * in global variables in
   67               * File  ALTFRM.s        28
   68 0006A 00000           CON(5)  ='
   69 0006F 00000           CON(5)  =DOIDNT
   70 00074 30              CON(2)  3
   71 00076 351445          NIBASC  \SAT\
   72 0007C 00000           CON(5)  =STO
   73               * preparation to solve either TA
   74               * File  ALTFRM.s        29
   75 00081 00000           CON(5)  ='
   76 00086 00000           CON(5)  =DOIDNT
   77 0008B 20              CON(2)  2
   78 0008D 0514            NIBASC  \PA\
   79 00091 00000           CON(5)  =STO
   80               * or DA
   81               * File  ALTFRM.s        30
   82 00096 00000           CON(5)  ='
   83 0009B 00000           CON(5)  =DOIDNT
   84 000A0 30              CON(2)  3
   85 000A2 15E484          NIBASC  \QNH\
   86 000A8 00000           CON(5)  =STO
   87               * File  ALTFRM.s        31
   88 000AD 00000           CON(5)  ='
   89 000B2 00000           CON(5)  =DOIDNT
   90 000B7 20              CON(2)  2
   91 000B9 3414            NIBASC  \CA\
   92 000BD 00000           CON(5)  =STO
   93               * ELSE this loop is bypassed
   94               * File  ALTFRM.s        32
   95 000C2 00000           CON(5)  =DOCOL
   96               * File  ALTFRM.s        33
   97 000C7 00000           CON(5)  =DOIDNT
   98 000CC 20              CON(2)  2
   99 000CE 3414            NIBASC  \CA\
  100 000D2 00000           CON(5)  =NOVAL
  101 000D7 00000           CON(5)  =EQUALNOT
  102               * Check for CA and PA
  103               * File  ALTFRM.s        34
  104 000DC 00000           CON(5)  =DOIDNT
  105 000E1 20              CON(2)  2
  106 000E3 0514            NIBASC  \PA\
  107 000E7 00000           CON(5)  =NOVAL
  108 000EC 00000           CON(5)  =EQUALNOT
  109 000F1 00000           CON(5)  =AND
  110 000F6 00000           CON(5)  =case
  111 000FB 00000           CON(5)  =DOCOL
  112               * IF they both exist
  113               * File  ALTFRM.s        35
  114 00100 00000           CON(5)  =DOIDNT
  115 00105 20              CON(2)  2
  116 00107 0514            NIBASC  \PA\
  117               * File  ALTFRM.s        36
  118 0010B 00000           CON(5)  =DOIDNT
  119 00110 20              CON(2)  2
  120 00112 3414            NIBASC  \CA\
  121               * File  ALTFRM.s        37
  122 00116 00000           CON(5)  =UM-
  123               *                                   ROMPTR 326 2                         ( ISAP[PA - CA] )
  124               * File  ALTFRM.s        39
  125 0011B 00000           CON(5)  =DOROMP
  126 00120 623             CON(3)  #326
  127 00123 200             CON(3)  #2
  128               * File  ALTFRM.s        40
  129 00126 00000           CON(5)  ='
  130 0012B 00000           CON(5)  =DOIDNT
  131 00130 30              CON(2)  3
  132 00132 15E484          NIBASC  \QNH\
  133 00138 00000           CON(5)  =STO
  134               * Calculate QNH
  135               * File  ALTFRM.s        41
  136 0013D 00000           CON(5)  =SEMI
  137               * File  ALTFRM.s        42
  138 00142 00000           CON(5)  =DOIDNT
  139 00147 20              CON(2)  2
  140 00149 3414            NIBASC  \CA\
  141 0014D 00000           CON(5)  =NOVAL
  142 00152 00000           CON(5)  =EQUALNOT
  143               * Check for CA and QNH
  144               * File  ALTFRM.s        43
  145 00157 00000           CON(5)  =DOIDNT
  146 0015C 30              CON(2)  3
  147 0015E 15E484          NIBASC  \QNH\
  148 00164 00000           CON(5)  =NOVAL
  149 00169 00000           CON(5)  =EQUALNOT
  150 0016E 00000           CON(5)  =AND
  151 00173 00000           CON(5)  =case
  152 00178 00000           CON(5)  =DOCOL
  153               * IF they both exist
  154               * File  ALTFRM.s        44
  155 0017D 00000           CON(5)  =DOSYMB
  156               * File  ALTFRM.s        45
  157 00182 00000           CON(5)  =DOIDNT
  158 00187 30              CON(2)  3
  159 00189 15E484          NIBASC  \QNH\
  160               * File  ALTFRM.s        46
  161 0018F 00000           CON(5)  =DOIDNT
  162 00194 30              CON(2)  3
  163 00196 440514          NIBASC  \DPA\
  164               *                ROMPTR 326 2                       ( ISAP )
  165               * File  ALTFRM.s        48
  166 0019C 00000           CON(5)  =DOROMP
  167 001A1 623             CON(3)  #326
  168 001A4 200             CON(3)  #2
  169               * File  ALTFRM.s        49
  170 001A7 00000           CON(5)  =x=
  171               * 'QNH = ISAP[DPA]'
  172               * File  ALTFRM.s        50
  173 001AC 00000           CON(5)  =SEMI
  174               * File  ALTFRM.s        51
  175 001B1 00000           CON(5)  ='
  176 001B6 00000           CON(5)  =DOIDNT
  177 001BB 30              CON(2)  3
  178 001BD 440514          NIBASC  \DPA\
  179               * Solve for DPA
  180               * File  ALTFRM.s        52
  181 001C3 00000           CON(5)  =DOEXT
  182 001C8 00000           CON(5)  =DOREAL
  183 001CD 000             NIBHEX  000
  184 001D0 0000000         NIBHEX  000000000000
            00000
  185 001DC 0               NIBHEX  0
  186 001DD 00000           CON(5)  =DOCSTR
  187 001E2 90000           CON(5)  9
  188 001E7 6647            NIBASC  \ft\
  189 001EB 00000           CON(5)  =umEND
  190 001F0 00000           CON(5)  =SEMI
  191               * Guess value 0_ft
  192               * File  ALTFRM.s        53
  193 001F5 00000           CON(5)  =xROOT
  194 001FA 00000           CON(5)  =DROP
  195               * Solve and clear stack
  196               * File  ALTFRM.s        54
  197 001FF 00000           CON(5)  =DOIDNT
  198 00204 20              CON(2)  2
  199 00206 3414            NIBASC  \CA\
  200               * File  ALTFRM.s        55
  201 0020A 00000           CON(5)  =DOIDNT
  202 0020F 30              CON(2)  3
  203 00211 440514          NIBASC  \DPA\
  204               * File  ALTFRM.s        56
  205 00217 00000           CON(5)  =UM+
  206               * 'PA = CA + DPA'
  207               * File  ALTFRM.s        57
  208 0021C 00000           CON(5)  ='
  209 00221 00000           CON(5)  =DOIDNT
  210 00226 20              CON(2)  2
  211 00228 0514            NIBASC  \PA\
  212 0022C 00000           CON(5)  =STO
  213               * Calculate PA
  214               * File  ALTFRM.s        58
  215 00231 00000           CON(5)  =SEMI
  216               * File  ALTFRM.s        59
  217 00236 00000           CON(5)  =DOIDNT
  218 0023B 20              CON(2)  2
  219 0023D 0514            NIBASC  \PA\
  220 00241 00000           CON(5)  =NOVAL
  221 00246 00000           CON(5)  =EQUALNOT
  222               * Check for PA and QNH
  223               * File  ALTFRM.s        60
  224 0024B 00000           CON(5)  =DOIDNT
  225 00250 30              CON(2)  3
  226 00252 15E484          NIBASC  \QNH\
  227 00258 00000           CON(5)  =NOVAL
  228 0025D 00000           CON(5)  =EQUALNOT
  229 00262 00000           CON(5)  =AND
  230 00267 00000           CON(5)  =case
  231 0026C 00000           CON(5)  =DOCOL
  232               * IF they both exist
  233               * File  ALTFRM.s        61
  234 00271 00000           CON(5)  =DOSYMB
  235               * File  ALTFRM.s        62
  236 00276 00000           CON(5)  =DOIDNT
  237 0027B 30              CON(2)  3
  238 0027D 15E484          NIBASC  \QNH\
  239               * File  ALTFRM.s        63
  240 00283 00000           CON(5)  =DOIDNT
  241 00288 30              CON(2)  3
  242 0028A 440514          NIBASC  \DPA\
  243               *                ROMPTR 326 2                       ( ISAP )
  244               * File  ALTFRM.s        65
  245 00290 00000           CON(5)  =DOROMP
  246 00295 623             CON(3)  #326
  247 00298 200             CON(3)  #2
  248               * File  ALTFRM.s        66
  249 0029B 00000           CON(5)  =x=
  250               * 'QNH = ISAP[DPA]'
  251               * File  ALTFRM.s        67
  252 002A0 00000           CON(5)  =SEMI
  253               * File  ALTFRM.s        68
  254 002A5 00000           CON(5)  ='
  255 002AA 00000           CON(5)  =DOIDNT
  256 002AF 30              CON(2)  3
  257 002B1 440514          NIBASC  \DPA\
  258               * Solve for DPA
  259               * File  ALTFRM.s        69
  260 002B7 00000           CON(5)  =DOEXT
  261 002BC 00000           CON(5)  =DOREAL
  262 002C1 000             NIBHEX  000
  263 002C4 0000000         NIBHEX  000000000000
            00000
  264 002D0 0               NIBHEX  0
  265 002D1 00000           CON(5)  =DOCSTR
  266 002D6 90000           CON(5)  9
  267 002DB 6647            NIBASC  \ft\
  268 002DF 00000           CON(5)  =umEND
  269 002E4 00000           CON(5)  =SEMI
  270               * Guess value
  271               * File  ALTFRM.s        70
  272 002E9 00000           CON(5)  =xROOT
  273 002EE 00000           CON(5)  =DROP
  274               * Solve and clear stack
  275               * File  ALTFRM.s        71
  276 002F3 00000           CON(5)  =DOIDNT
  277 002F8 20              CON(2)  2
  278 002FA 0514            NIBASC  \PA\
  279               * File  ALTFRM.s        72
  280 002FE 00000           CON(5)  =DOIDNT
  281 00303 30              CON(2)  3
  282 00305 440514          NIBASC  \DPA\
  283               * File  ALTFRM.s        73
  284 0030B 00000           CON(5)  =UM-
  285               * 'CA = PA - DPA'
  286               * File  ALTFRM.s        74
  287 00310 00000           CON(5)  ='
  288 00315 00000           CON(5)  =DOIDNT
  289 0031A 20              CON(2)  2
  290 0031C 3414            NIBASC  \CA\
  291 00320 00000           CON(5)  =STO
  292               * Calculate CA
  293               * File  ALTFRM.s        75
  294 00325 00000           CON(5)  =SEMI
  295               * File  ALTFRM.s        76
  296 0032A 00000           CON(5)  =SEMI
  297               * File  ALTFRM.s        77
  298 0032F 00000           CON(5)  =DOIDNT
  299 00334 30              CON(2)  3
  300 00336 351445          NIBASC  \SAT\
  301 0033C 00000           CON(5)  =NOVAL
  302 00341 00000           CON(5)  =EQUALNOT
  303               * PA & SAT required minimum
  304               * File  ALTFRM.s        78
  305 00346 00000           CON(5)  =DOIDNT
  306 0034B 20              CON(2)  2
  307 0034D 0514            NIBASC  \PA\
  308 00351 00000           CON(5)  =NOVAL
  309 00356 00000           CON(5)  =EQUALNOT
  310 0035B 00000           CON(5)  =AND
  311 00360 00000           CON(5)  =IT
  312 00365 00000           CON(5)  =DOCOL
  313               * to perform any alt. calcs.
  314               * File  ALTFRM.s        79
  315 0036A 00000           CON(5)  =DOIDNT
  316 0036F 20              CON(2)  2
  317 00371 3414            NIBASC  \CA\
  318 00375 00000           CON(5)  =NOVAL
  319 0037A 00000           CON(5)  =EQUALNOT
  320 0037F 00000           CON(5)  =IT
  321 00384 00000           CON(5)  =DOCOL
  322               * IF CA is available
  323               * File  ALTFRM.s        80
  324 00389 00000           CON(5)  =DOIDNT
  325 0038E 20              CON(2)  2
  326 00390 3414            NIBASC  \CA\
  327               * File  ALTFRM.s        81
  328 00394 00000           CON(5)  =DOIDNT
  329 00399 30              CON(2)  3
  330 0039B 351445          NIBASC  \SAT\
  331               * File  ALTFRM.s        82
  332 003A1 00000           CON(5)  =DOIDNT
  333 003A6 20              CON(2)  2
  334 003A8 0514            NIBASC  \PA\
  335               * File  ALTFRM.s        83
  336 003AC 00000           CON(5)  =DOIDNT
  337 003B1 50              CON(2)  5
  338 003B3 74E4443         NIBASC  \GNDST\
            545
  339               * File  ALTFRM.s        84
  340 003BD 00000           CON(5)  =DOROMP
  341 003C2 000000          CON(6)  =~TRUALT
  342               * Calc. TA
  343               * File  ALTFRM.s        85
  344 003C8 00000           CON(5)  ='
  345 003CD 00000           CON(5)  =DOIDNT
  346 003D2 20              CON(2)  2
  347 003D4 4514            NIBASC  \TA\
  348 003D8 00000           CON(5)  =STO
  349               * File  ALTFRM.s        86
  350 003DD 00000           CON(5)  =SEMI
  351               * File  ALTFRM.s        87
  352 003E2 00000           CON(5)  =DOIDNT
  353 003E7 30              CON(2)  3
  354 003E9 351445          NIBASC  \SAT\
  355               * File  ALTFRM.s        88
  356 003EF 00000           CON(5)  =DOIDNT
  357 003F4 20              CON(2)  2
  358 003F6 0514            NIBASC  \PA\
  359               * File  ALTFRM.s        89
  360 003FA 00000           CON(5)  =DOROMP
  361 003FF 000000          CON(6)  =~DENALT
  362               * Calc. DA
  363               * File  ALTFRM.s        90
  364 00405 00000           CON(5)  ='
  365 0040A 00000           CON(5)  =DOIDNT
  366 0040F 20              CON(2)  2
  367 00411 4414            NIBASC  \DA\
  368 00415 00000           CON(5)  =STO
  369               * File  ALTFRM.s        91
  370 0041A 00000           CON(5)  =SEMI
  371               * File  ALTFRM.s        92
  372 0041F 00000           CON(5)  =SEMI
  373 00424 00000           CON(5)  =REPEAT
  374               * File  ALTFRM.s        93
  375 00429 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       ALTFRM.a       Page    2

 '                                 Ext                   -    47    54    61
                                          68    75    82    88   129   175   208
                                         254   287   344   364
 AND                               Ext                   -   109   150   229
                                         310
 BEGIN                             Ext                   -    38
 DOCOL                             Ext                   -    36    45    95
                                         111   152   231   312   321
 DOCSTR                            Ext                   -   186   265
 DOEXT                             Ext                   -   181   260
 DOIDNT                            Ext                   -    48    55    62
                                          69    76    83    89    97   104   114
                                         118   130   138   145   157   161   176
                                         197   201   209   217   224   236   240
                                         255   276   280   288   298   305   315
                                         324   328   332   336   345   352   356
                                         365
 DOREAL                            Ext                   -   182   261
 DOROMP                            Ext                   -    40   125   166
                                         245   340   360
 DOSYMB                            Ext                   -   155   234
 DROP                              Ext                   -   194   273
 EQUALNOT                          Ext                   -   101   108   142
                                         149   221   228   302   309   319
 IT                                Ext                   -   311   320
 NOVAL                             Ext                   -   100   107   141
                                         148   220   227   301   308   318
 REPEAT                            Ext                   -   373
=RomId                             Abs     807 #00000327 -    23
 SEMI                              Ext                   -   136   173   190
                                         215   252   269   294   296   350   370
                                         372   375
 STO                               Ext                   -    51    58    65
                                          72    79    86    92   133   212   291
                                         348   368
 UM+                               Ext                   -   205
 UM-                               Ext                   -   122   284
 WHILE                             Ext                   -    44
 case                              Ext                   -   110   151   230
 umEND                             Ext                   -   189   268
 x=                                Ext                   -   170   249
=xALTFRM                           Rel       6 #00000006 -    34
 xROOT                             Ext                   -   193   272
 ~ALTform                          Ext                   -    41
 ~DENALT                           Ext                   -   361
 ~TRUALT                           Ext                   -   341
 ~xALTFRM                          Ext                   -    33
Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)   Statistics                         ALTFRM.a       Page    3

Input Parameters

  Source file name is ALTFRM.a

  Listing file name is ALTFRM.l

  Object file name is ALTFRM.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
