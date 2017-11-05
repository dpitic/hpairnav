Saturn Assembler                                       Fri Jun 19 12:17:08 2009
V3.0.9 (04/15/2007)                                      ALTFRM.a       Page    1

    1               * File  ALTFRM.s        1
    2               * RPL
    3               * File  ALTFRM.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTFRM.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               **********************************************************************
    6               * NAME:            ALTFRM
    7               * LIBRARY #:       327h = 807d
    8               * AUTHOR:          Dan Pitic
    9               * VERSION:         1.15
   10               * DATE:            19 June 2009
   11               * COMPATIBILITY:   HP50, HP48
   12               * DESCRIPTION:     Input form and choose box for altitude calculations.
   13               * INPUT:     CA    Calibrated altitude (global) with units
   14               *            SAT   Static air temperature (global) [deg C]
   15               *            PA    Pressure altitude (global) with units
   16               *            GNDST Ground station elevation (global) with units
   17               * OUTPUT:    TA    True altitude (global) [same units as GNDST]
   18               *            DA    Density altitude (global) [same units as PA]
   19               * CALLS:           LIBRARY 326h = 806d
   20               *
   21               * File  ALTFRM.s        19
   22               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALT50\ALT50.h
   23
   24               =RomId  EQU     #327
   25               * ROMID set to 327
   26
   27
   28
   29
   30
   31
   32               *|| Resuming file ALTFRM.s at line 19
   33               * File  ALTFRM.s        21
   34 00000 000000          CON(6)  =~xALTFRM
   35 00006         =xALTFRM
   36               * File  ALTFRM.s        22
   37 00006 00000           CON(5)  =DOCOL
   38               * File  ALTFRM.s        23
   39 0000B 00000           CON(5)  =CK0
   40               * No arguments
   41               * File  ALTFRM.s        24
   42 00010 00000           CON(5)  =BEGIN
   43               * File  ALTFRM.s        25
   44 00015 00000           CON(5)  =DOROMP
   45 0001A 000000          CON(6)  =~ALTform
   46               * Run Input Form
   47               * File  ALTFRM.s        26
   48 00020 00000           CON(5)  =WHILE
   49 00025 00000           CON(5)  =DOCOL
   50               * File  ALTFRM.s        27
   51 0002A 00000           CON(5)  ='
   52 0002F 00000           CON(5)  =DOIDNT
   53 00034 20              CON(2)  2
   54 00036 4414            NIBASC  \DA\
   55 0003A 00000           CON(5)  =STO
   56               * If OK is pressed, then
   57               * File  ALTFRM.s        28
   58 0003F 00000           CON(5)  ='
   59 00044 00000           CON(5)  =DOIDNT
   60 00049 20              CON(2)  2
   61 0004B 4514            NIBASC  \TA\
   62 0004F 00000           CON(5)  =STO
   63               * STO output from input form
   64               * File  ALTFRM.s        29
   65 00054 00000           CON(5)  ='
   66 00059 00000           CON(5)  =DOIDNT
   67 0005E 50              CON(2)  5
   68 00060 74E4443         NIBASC  \GNDST\
            545
   69 0006A 00000           CON(5)  =STO
   70               * in global variables in
   71               * File  ALTFRM.s        30
   72 0006F 00000           CON(5)  ='
   73 00074 00000           CON(5)  =DOIDNT
   74 00079 30              CON(2)  3
   75 0007B 351445          NIBASC  \SAT\
   76 00081 00000           CON(5)  =STO
   77               * preparation to solve either TA
   78               * File  ALTFRM.s        31
   79 00086 00000           CON(5)  ='
   80 0008B 00000           CON(5)  =DOIDNT
   81 00090 20              CON(2)  2
   82 00092 0514            NIBASC  \PA\
   83 00096 00000           CON(5)  =STO
   84               * or DA
   85               * File  ALTFRM.s        32
   86 0009B 00000           CON(5)  ='
   87 000A0 00000           CON(5)  =DOIDNT
   88 000A5 30              CON(2)  3
   89 000A7 15E484          NIBASC  \QNH\
   90 000AD 00000           CON(5)  =STO
   91               * File  ALTFRM.s        33
   92 000B2 00000           CON(5)  ='
   93 000B7 00000           CON(5)  =DOIDNT
   94 000BC 20              CON(2)  2
   95 000BE 3414            NIBASC  \CA\
   96 000C2 00000           CON(5)  =STO
   97               * ELSE this loop is bypassed
   98               * File  ALTFRM.s        34
   99 000C7 00000           CON(5)  =DOCOL
  100               * File  ALTFRM.s        35
  101 000CC 00000           CON(5)  =DOIDNT
  102 000D1 20              CON(2)  2
  103 000D3 3414            NIBASC  \CA\
  104 000D7 00000           CON(5)  =NOVAL
  105 000DC 00000           CON(5)  =EQUALNOT
  106               * Check for CA and PA
  107               * File  ALTFRM.s        36
  108 000E1 00000           CON(5)  =DOIDNT
  109 000E6 20              CON(2)  2
  110 000E8 0514            NIBASC  \PA\
  111 000EC 00000           CON(5)  =NOVAL
  112 000F1 00000           CON(5)  =EQUALNOT
  113 000F6 00000           CON(5)  =AND
  114 000FB 00000           CON(5)  =case
  115 00100 00000           CON(5)  =DOCOL
  116               * IF they both exist
  117               * File  ALTFRM.s        37
  118 00105 00000           CON(5)  =DOIDNT
  119 0010A 20              CON(2)  2
  120 0010C 0514            NIBASC  \PA\
  121               * File  ALTFRM.s        38
  122 00110 00000           CON(5)  =DOIDNT
  123 00115 20              CON(2)  2
  124 00117 3414            NIBASC  \CA\
  125               * File  ALTFRM.s        39
  126 0011B 00000           CON(5)  =UM-
  127               *                                   ROMPTR 326 2                         ( ISAP[PA - CA] )
  128               * File  ALTFRM.s        41
  129 00120 00000           CON(5)  =DOROMP
  130 00125 623             CON(3)  #326
  131 00128 200             CON(3)  #2
  132               * File  ALTFRM.s        42
  133 0012B 00000           CON(5)  ='
  134 00130 00000           CON(5)  =DOIDNT
  135 00135 30              CON(2)  3
  136 00137 15E484          NIBASC  \QNH\
  137 0013D 00000           CON(5)  =STO
  138               * Calculate QNH
  139               * File  ALTFRM.s        43
  140 00142 00000           CON(5)  =SEMI
  141               * File  ALTFRM.s        44
  142 00147 00000           CON(5)  =DOIDNT
  143 0014C 20              CON(2)  2
  144 0014E 3414            NIBASC  \CA\
  145 00152 00000           CON(5)  =NOVAL
  146 00157 00000           CON(5)  =EQUALNOT
  147               * Check for CA and QNH
  148               * File  ALTFRM.s        45
  149 0015C 00000           CON(5)  =DOIDNT
  150 00161 30              CON(2)  3
  151 00163 15E484          NIBASC  \QNH\
  152 00169 00000           CON(5)  =NOVAL
  153 0016E 00000           CON(5)  =EQUALNOT
  154 00173 00000           CON(5)  =AND
  155 00178 00000           CON(5)  =case
  156 0017D 00000           CON(5)  =DOCOL
  157               * IF they both exist
  158               * File  ALTFRM.s        46
  159 00182 00000           CON(5)  =DOSYMB
  160               * File  ALTFRM.s        47
  161 00187 00000           CON(5)  =DOIDNT
  162 0018C 30              CON(2)  3
  163 0018E 15E484          NIBASC  \QNH\
  164               * File  ALTFRM.s        48
  165 00194 00000           CON(5)  =DOIDNT
  166 00199 30              CON(2)  3
  167 0019B 440514          NIBASC  \DPA\
  168               *                ROMPTR 326 2                       ( ISAP )
  169               * File  ALTFRM.s        50
  170 001A1 00000           CON(5)  =DOROMP
  171 001A6 623             CON(3)  #326
  172 001A9 200             CON(3)  #2
  173               * File  ALTFRM.s        51
  174 001AC 00000           CON(5)  =x=
  175               * 'QNH = ISAP[DPA]'
  176               * File  ALTFRM.s        52
  177 001B1 00000           CON(5)  =SEMI
  178               * File  ALTFRM.s        53
  179 001B6 00000           CON(5)  ='
  180 001BB 00000           CON(5)  =DOIDNT
  181 001C0 30              CON(2)  3
  182 001C2 440514          NIBASC  \DPA\
  183               * Solve for DPA
  184               * File  ALTFRM.s        54
  185 001C8 00000           CON(5)  =DOEXT
  186 001CD 00000           CON(5)  =DOREAL
  187 001D2 000             NIBHEX  000
  188 001D5 0000000         NIBHEX  000000000000
            00000
  189 001E1 0               NIBHEX  0
  190 001E2 00000           CON(5)  =DOCSTR
  191 001E7 90000           CON(5)  9
  192 001EC 6647            NIBASC  \ft\
  193 001F0 00000           CON(5)  =umEND
  194 001F5 00000           CON(5)  =SEMI
  195               * Guess value 0_ft
  196               * File  ALTFRM.s        55
  197 001FA 00000           CON(5)  =xROOT
  198 001FF 00000           CON(5)  =DROP
  199               * Solve and clear stack
  200               * File  ALTFRM.s        56
  201 00204 00000           CON(5)  =DOIDNT
  202 00209 20              CON(2)  2
  203 0020B 3414            NIBASC  \CA\
  204               * File  ALTFRM.s        57
  205 0020F 00000           CON(5)  =DOIDNT
  206 00214 30              CON(2)  3
  207 00216 440514          NIBASC  \DPA\
  208               * File  ALTFRM.s        58
  209 0021C 00000           CON(5)  =UM+
  210               * 'PA = CA + DPA'
  211               * File  ALTFRM.s        59
  212 00221 00000           CON(5)  ='
  213 00226 00000           CON(5)  =DOIDNT
  214 0022B 20              CON(2)  2
  215 0022D 0514            NIBASC  \PA\
  216 00231 00000           CON(5)  =STO
  217               * Calculate PA
  218               * File  ALTFRM.s        60
  219 00236 00000           CON(5)  =SEMI
  220               * File  ALTFRM.s        61
  221 0023B 00000           CON(5)  =DOIDNT
  222 00240 20              CON(2)  2
  223 00242 0514            NIBASC  \PA\
  224 00246 00000           CON(5)  =NOVAL
  225 0024B 00000           CON(5)  =EQUALNOT
  226               * Check for PA and QNH
  227               * File  ALTFRM.s        62
  228 00250 00000           CON(5)  =DOIDNT
  229 00255 30              CON(2)  3
  230 00257 15E484          NIBASC  \QNH\
  231 0025D 00000           CON(5)  =NOVAL
  232 00262 00000           CON(5)  =EQUALNOT
  233 00267 00000           CON(5)  =AND
  234 0026C 00000           CON(5)  =case
  235 00271 00000           CON(5)  =DOCOL
  236               * IF they both exist
  237               * File  ALTFRM.s        63
  238 00276 00000           CON(5)  =DOSYMB
  239               * File  ALTFRM.s        64
  240 0027B 00000           CON(5)  =DOIDNT
  241 00280 30              CON(2)  3
  242 00282 15E484          NIBASC  \QNH\
  243               * File  ALTFRM.s        65
  244 00288 00000           CON(5)  =DOIDNT
  245 0028D 30              CON(2)  3
  246 0028F 440514          NIBASC  \DPA\
  247               *                ROMPTR 326 2                       ( ISAP )
  248               * File  ALTFRM.s        67
  249 00295 00000           CON(5)  =DOROMP
  250 0029A 623             CON(3)  #326
  251 0029D 200             CON(3)  #2
  252               * File  ALTFRM.s        68
  253 002A0 00000           CON(5)  =x=
  254               * 'QNH = ISAP[DPA]'
  255               * File  ALTFRM.s        69
  256 002A5 00000           CON(5)  =SEMI
  257               * File  ALTFRM.s        70
  258 002AA 00000           CON(5)  ='
  259 002AF 00000           CON(5)  =DOIDNT
  260 002B4 30              CON(2)  3
  261 002B6 440514          NIBASC  \DPA\
  262               * Solve for DPA
  263               * File  ALTFRM.s        71
  264 002BC 00000           CON(5)  =DOEXT
  265 002C1 00000           CON(5)  =DOREAL
  266 002C6 000             NIBHEX  000
  267 002C9 0000000         NIBHEX  000000000000
            00000
  268 002D5 0               NIBHEX  0
  269 002D6 00000           CON(5)  =DOCSTR
  270 002DB 90000           CON(5)  9
  271 002E0 6647            NIBASC  \ft\
  272 002E4 00000           CON(5)  =umEND
  273 002E9 00000           CON(5)  =SEMI
  274               * Guess value
  275               * File  ALTFRM.s        72
  276 002EE 00000           CON(5)  =xROOT
  277 002F3 00000           CON(5)  =DROP
  278               * Solve and clear stack
  279               * File  ALTFRM.s        73
  280 002F8 00000           CON(5)  =DOIDNT
  281 002FD 20              CON(2)  2
  282 002FF 0514            NIBASC  \PA\
  283               * File  ALTFRM.s        74
  284 00303 00000           CON(5)  =DOIDNT
  285 00308 30              CON(2)  3
  286 0030A 440514          NIBASC  \DPA\
  287               * File  ALTFRM.s        75
  288 00310 00000           CON(5)  =UM-
  289               * 'CA = PA - DPA'
  290               * File  ALTFRM.s        76
  291 00315 00000           CON(5)  ='
  292 0031A 00000           CON(5)  =DOIDNT
  293 0031F 20              CON(2)  2
  294 00321 3414            NIBASC  \CA\
  295 00325 00000           CON(5)  =STO
  296               * Calculate CA
  297               * File  ALTFRM.s        77
  298 0032A 00000           CON(5)  =SEMI
  299               * File  ALTFRM.s        78
  300 0032F 00000           CON(5)  =SEMI
  301               * File  ALTFRM.s        79
  302 00334 00000           CON(5)  =DOIDNT
  303 00339 30              CON(2)  3
  304 0033B 351445          NIBASC  \SAT\
  305 00341 00000           CON(5)  =NOVAL
  306 00346 00000           CON(5)  =EQUALNOT
  307               * PA & SAT required minimum
  308               * File  ALTFRM.s        80
  309 0034B 00000           CON(5)  =DOIDNT
  310 00350 20              CON(2)  2
  311 00352 0514            NIBASC  \PA\
  312 00356 00000           CON(5)  =NOVAL
  313 0035B 00000           CON(5)  =EQUALNOT
  314 00360 00000           CON(5)  =AND
  315 00365 00000           CON(5)  =IT
  316 0036A 00000           CON(5)  =DOCOL
  317               * to perform any alt. calcs.
  318               * File  ALTFRM.s        81
  319 0036F 00000           CON(5)  =DOIDNT
  320 00374 20              CON(2)  2
  321 00376 3414            NIBASC  \CA\
  322 0037A 00000           CON(5)  =NOVAL
  323 0037F 00000           CON(5)  =EQUALNOT
  324 00384 00000           CON(5)  =IT
  325 00389 00000           CON(5)  =DOCOL
  326               * IF CA is available
  327               * File  ALTFRM.s        82
  328 0038E 00000           CON(5)  =DOIDNT
  329 00393 20              CON(2)  2
  330 00395 3414            NIBASC  \CA\
  331               * File  ALTFRM.s        83
  332 00399 00000           CON(5)  =DOIDNT
  333 0039E 30              CON(2)  3
  334 003A0 351445          NIBASC  \SAT\
  335               * File  ALTFRM.s        84
  336 003A6 00000           CON(5)  =DOIDNT
  337 003AB 20              CON(2)  2
  338 003AD 0514            NIBASC  \PA\
  339               * File  ALTFRM.s        85
  340 003B1 00000           CON(5)  =DOIDNT
  341 003B6 50              CON(2)  5
  342 003B8 74E4443         NIBASC  \GNDST\
            545
  343               * File  ALTFRM.s        86
  344 003C2 00000           CON(5)  =DOROMP
  345 003C7 000000          CON(6)  =~TRUALT
  346               * Calc. TA
  347               * File  ALTFRM.s        87
  348 003CD 00000           CON(5)  ='
  349 003D2 00000           CON(5)  =DOIDNT
  350 003D7 20              CON(2)  2
  351 003D9 4514            NIBASC  \TA\
  352 003DD 00000           CON(5)  =STO
  353               * File  ALTFRM.s        88
  354 003E2 00000           CON(5)  =SEMI
  355               * File  ALTFRM.s        89
  356 003E7 00000           CON(5)  =DOIDNT
  357 003EC 30              CON(2)  3
  358 003EE 351445          NIBASC  \SAT\
  359               * File  ALTFRM.s        90
  360 003F4 00000           CON(5)  =DOIDNT
  361 003F9 20              CON(2)  2
  362 003FB 0514            NIBASC  \PA\
  363               * File  ALTFRM.s        91
  364 003FF 00000           CON(5)  =DOROMP
  365 00404 000000          CON(6)  =~DENALT
  366               * Calc. DA
  367               * File  ALTFRM.s        92
  368 0040A 00000           CON(5)  ='
  369 0040F 00000           CON(5)  =DOIDNT
  370 00414 20              CON(2)  2
  371 00416 4414            NIBASC  \DA\
  372 0041A 00000           CON(5)  =STO
  373               * File  ALTFRM.s        93
  374 0041F 00000           CON(5)  =SEMI
  375               * File  ALTFRM.s        94
  376 00424 00000           CON(5)  =SEMI
  377 00429 00000           CON(5)  =REPEAT
  378               * File  ALTFRM.s        95
  379 0042E 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:17:08 2009
V3.0.9 (04/15/2007)   Symbol Table                       ALTFRM.a       Page    2

 '                                 Ext                   -    51    58    65
                                          72    79    86    92   133   179   212
                                         258   291   348   368
 AND                               Ext                   -   113   154   233
                                         314
 BEGIN                             Ext                   -    42
 CK0                               Ext                   -    39
 DOCOL                             Ext                   -    37    49    99
                                         115   156   235   316   325
 DOCSTR                            Ext                   -   190   269
 DOEXT                             Ext                   -   185   264
 DOIDNT                            Ext                   -    52    59    66
                                          73    80    87    93   101   108   118
                                         122   134   142   149   161   165   180
                                         201   205   213   221   228   240   244
                                         259   280   284   292   302   309   319
                                         328   332   336   340   349   356   360
                                         369
 DOREAL                            Ext                   -   186   265
 DOROMP                            Ext                   -    44   129   170
                                         249   344   364
 DOSYMB                            Ext                   -   159   238
 DROP                              Ext                   -   198   277
 EQUALNOT                          Ext                   -   105   112   146
                                         153   225   232   306   313   323
 IT                                Ext                   -   315   324
 NOVAL                             Ext                   -   104   111   145
                                         152   224   231   305   312   322
 REPEAT                            Ext                   -   377
=RomId                             Abs     807 #00000327 -    24
 SEMI                              Ext                   -   140   177   194
                                         219   256   273   298   300   354   374
                                         376   379
 STO                               Ext                   -    55    62    69
                                          76    83    90    96   137   216   295
                                         352   372
 UM+                               Ext                   -   209
 UM-                               Ext                   -   126   288
 WHILE                             Ext                   -    48
 case                              Ext                   -   114   155   234
 umEND                             Ext                   -   193   272
 x=                                Ext                   -   174   253
=xALTFRM                           Rel       6 #00000006 -    35
 xROOT                             Ext                   -   197   276
 ~ALTform                          Ext                   -    45
 ~DENALT                           Ext                   -   365
 ~TRUALT                           Ext                   -   345
 ~xALTFRM                          Ext                   -    34
Saturn Assembler                                       Fri Jun 19 12:17:08 2009
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
