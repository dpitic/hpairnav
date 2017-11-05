Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)                                      ISAP.a         Page    1

    1               * File  ISAP.s  1
    2               * RPL
    3               * File  ISAP.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAP.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5               ********************************************************************
    6               * Name:                                 ISAP
    7               * Library #:    326h = 806d
    8               * Description:  Calculates the standard pressure in the ISA for a
    9               *               given altitude.  Output in mbar units.
   10               * Versioin:     1.23
   11               * Date:         10 June 2009
   12               * Machine:      HP50
   13               * Usage:        ( u -> u )
   14               * Input:                                                                STACK                                   Geopotential altitude (with units)
   15               * Output:       STACK     Standard ISA pressure (mbar)
   16               *
   17               * File  ISAP.s  15
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
   31               *|| Resuming file ISAP.s at line 15
   32 00000 000000          CON(6)  =~xISAP
   33 00006         =xISAP
   34               * File  ISAP.s  17
   35 00006 00000           CON(5)  =DOCOL
   36               * File  ISAP.s  18
   37 0000B 00000           CON(5)  =CK1&Dispatch
   38               * Check for 1 argument
   39               * File  ISAP.s  19
   40 00010 00000           CON(5)  =unitob
   41 00015 00000           CON(5)  =DOCOL
   42               * Unit object
   43               * File  ISAP.s  20
   44 0001A 00000           CON(5)  =UMSI
   45               * Conver geopotential altitude to SI units
   46               * File  ISAP.s  21
   47 0001F 00000           CON(5)  =DOEXT
   48               * Temp. lapse rate 0 m <= Z <= 11 km
   49               * File  ISAP.s  22
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
   63               * File  ISAP.s  23
   64 00060 00000           CON(5)  =DOEXT
   65 00065 00000           CON(5)  =DOREAL
   66 0006A 500             NIBHEX  500
   67 0006D 0000005         NIBHEX  000000523101
            23101
   68 00079 0               NIBHEX  0
   69 0007A 00000           CON(5)  =DOCSTR
   70 0007F 90000           CON(5)  9
   71 00084 0516            NIBASC  \Pa\
   72 00088 00000           CON(5)  =umEND
   73 0008D 00000           CON(5)  =SEMI
   74 00092 00000           CON(5)  =UMSI
   75               * ISA sea level pressure
   76               * File  ISAP.s  24
   77 00097 00000           CON(5)  =DOEXT
   78 0009C 00000           CON(5)  =DOREAL
   79 000A1 200             NIBHEX  200
   80 000A4 0000000         NIBHEX  000000051882
            51882
   81 000B0 0               NIBHEX  0
   82 000B1 00000           CON(5)  =DOCSTR
   83 000B6 70000           CON(5)  7
   84 000BB B4              NIBASC  \K\
   85 000BD 00000           CON(5)  =umEND
   86 000C2 00000           CON(5)  =SEMI
   87               * ISA sea level temperature
   88               * File  ISAP.s  25
   89 000C7 00000           CON(5)  =DOEXT
   90               * Sea level acceleration of gravity
   91               * File  ISAP.s  26
   92 000CC 00000           CON(5)  =DOREAL
   93 000D1 000             NIBHEX  000
   94 000D4 0000054         NIBHEX  000005466089
            66089
   95 000E0 0               NIBHEX  0
   96 000E1 00000           CON(5)  =DOCSTR
   97 000E6 70000           CON(5)  7
   98 000EB D6              NIBASC  \m\
   99 000ED 00000           CON(5)  =DOCSTR
  100 000F2 70000           CON(5)  7
  101 000F7 37              NIBASC  \s\
  102 000F9 00000           CON(5)  =%2
  103 000FE 00000           CON(5)  =um^
  104 00103 00000           CON(5)  =um/
  105 00108 00000           CON(5)  =umEND
  106 0010D 00000           CON(5)  =SEMI
  107               * File  ISAP.s  27
  108 00112 00000           CON(5)  =DOEXT
  109               * Gas constant for the ISA
  110               * File  ISAP.s  28
  111 00117 00000           CON(5)  =DOREAL
  112 0011C 200             NIBHEX  200
  113 0011F 0000082         NIBHEX  000008250782
            50782
  114 0012B 0               NIBHEX  0
  115               * File  ISAP.s  29
  116 0012C 00000           CON(5)  =DOCSTR
  117 00131 70000           CON(5)  7
  118 00136 D6              NIBASC  \m\
  119 00138 00000           CON(5)  =%2
  120 0013D 00000           CON(5)  =um^
  121 00142 00000           CON(5)  =DOCSTR
  122 00147 70000           CON(5)  7
  123 0014C 37              NIBASC  \s\
  124 0014E 00000           CON(5)  =%2
  125 00153 00000           CON(5)  =um^
  126 00158 00000           CON(5)  =DOCSTR
  127 0015D 70000           CON(5)  7
  128 00162 B4              NIBASC  \K\
  129 00164 00000           CON(5)  =um*
  130 00169 00000           CON(5)  =um/
  131               * File  ISAP.s  30
  132 0016E 00000           CON(5)  =umEND
  133 00173 00000           CON(5)  =SEMI
  134               * File  ISAP.s  31
  135 00178 00000           CON(5)  =DOLIST
  136 0017D 00000           CON(5)  =DOLAM
  137 00182 10              CON(2)  1
  138 00184 A5              NIBASC  \Z\
  139 00186 00000           CON(5)  =DOLAM
  140 0018B 10              CON(2)  1
  141 0018D FD              CON(2)  #DF
  142 0018F 00000           CON(5)  =DOLAM
  143 00194 20              CON(2)  2
  144 00196 0703            NIBASC  \p0\
  145 0019A 00000           CON(5)  =DOLAM
  146 0019F 20              CON(2)  2
  147 001A1 4503            NIBASC  \T0\
  148 001A5 00000           CON(5)  =DOLAM
  149 001AA 20              CON(2)  2
  150 001AC 7603            NIBASC  \g0\
  151 001B0 00000           CON(5)  =DOLAM
  152 001B5 10              CON(2)  1
  153 001B7 25              NIBASC  \R\
  154 001B9 00000           CON(5)  =SEMI
  155 001BE 00000           CON(5)  =BIND
  156               * Check if Z > 20 km
  157               * File  ISAP.s  33
  158 001C3 00000           CON(5)  =DOLAM
  159 001C8 10              CON(2)  1
  160 001CA A5              NIBASC  \Z\
  161               * File  ISAP.s  34
  162 001CC 00000           CON(5)  =DOEXT
  163 001D1 00000           CON(5)  =DOREAL
  164 001D6 400             NIBHEX  400
  165 001D9 0000000         NIBHEX  000000000002
            00002
  166 001E5 0               NIBHEX  0
  167 001E6 00000           CON(5)  =DOCSTR
  168 001EB 70000           CON(5)  7
  169 001F0 D6              NIBASC  \m\
  170 001F2 00000           CON(5)  =umEND
  171 001F7 00000           CON(5)  =SEMI
  172               * File  ISAP.s  35
  173 001FC 00000           CON(5)  =UM>?
  174 00201 00000           CON(5)  =%0<>
  175 00206 00000           CON(5)  =case
  176 0020B 00000           CON(5)  =DOCOL
  177               * File  ISAP.s  36
  178 00210 00000           CON(5)  =DOCSTR
  179 00215 13000           CON(5)  49
  180 0021A 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

  181 00242 B6D6            NIBASC  \km\
  182               * Display warning message and error beep
  183               * File  ISAP.s  37
  184 00246 00000           CON(5)  =FlashWarning
  185               * and wait for key press to exit
  186               * File  ISAP.s  38
  187 0024B 00000           CON(5)  =SEMI
  188               * Check if Z <= 11 km
  189               * File  ISAP.s  40
  190 00250 00000           CON(5)  =DOLAM
  191 00255 10              CON(2)  1
  192 00257 A5              NIBASC  \Z\
  193               * File  ISAP.s  41
  194 00259 00000           CON(5)  =DOEXT
  195 0025E 00000           CON(5)  =DOREAL
  196 00263 400             NIBHEX  400
  197 00266 0000000         NIBHEX  000000000011
            00011
  198 00272 0               NIBHEX  0
  199 00273 00000           CON(5)  =DOCSTR
  200 00278 70000           CON(5)  7
  201 0027D D6              NIBASC  \m\
  202 0027F 00000           CON(5)  =umEND
  203 00284 00000           CON(5)  =SEMI
  204               * File  ISAP.s  42
  205 00289 00000           CON(5)  =UM<=?
  206 0028E 00000           CON(5)  =%0<>
  207 00293 00000           CON(5)  =case
  208 00298 00000           CON(5)  =DOCOL
  209               * File  ISAP.s  43
  210 0029D 00000           CON(5)  =DOLAM
  211 002A2 20              CON(2)  2
  212 002A4 0703            NIBASC  \p0\
  213               * Calculate ISA pressure for
  214               * File  ISAP.s  44
  215 002A8 00000           CON(5)  =DOLAM
  216 002AD 20              CON(2)  2
  217 002AF 4503            NIBASC  \T0\
  218               * 0 m <= Z <= 11 km
  219               * File  ISAP.s  45
  220 002B3 00000           CON(5)  =DOLAM
  221 002B8 10              CON(2)  1
  222 002BA FD              CON(2)  #DF
  223               * File  ISAP.s  46
  224 002BC 00000           CON(5)  =DOLAM
  225 002C1 10              CON(2)  1
  226 002C3 A5              NIBASC  \Z\
  227               * File  ISAP.s  47
  228 002C5 00000           CON(5)  =UM*
  229               * File  ISAP.s  48
  230 002CA 00000           CON(5)  =UM+
  231               * File  ISAP.s  49
  232 002CF 00000           CON(5)  =DOLAM
  233 002D4 20              CON(2)  2
  234 002D6 4503            NIBASC  \T0\
  235               * File  ISAP.s  50
  236 002DA 00000           CON(5)  =UM/
  237               * File  ISAP.s  51
  238 002DF 00000           CON(5)  =DOLAM
  239 002E4 20              CON(2)  2
  240 002E6 7603            NIBASC  \g0\
  241               * File  ISAP.s  52
  242 002EA 00000           CON(5)  =DOLAM
  243 002EF 10              CON(2)  1
  244 002F1 25              NIBASC  \R\
  245               * File  ISAP.s  53
  246 002F3 00000           CON(5)  =DOLAM
  247 002F8 10              CON(2)  1
  248 002FA FD              CON(2)  #DF
  249               * File  ISAP.s  54
  250 002FC 00000           CON(5)  =UM*
  251               * File  ISAP.s  55
  252 00301 00000           CON(5)  =UM/
  253               * File  ISAP.s  56
  254 00306 00000           CON(5)  =%CHS
  255               * File  ISAP.s  57
  256 0030B 00000           CON(5)  =%^
  257               * File  ISAP.s  58
  258 00310 00000           CON(5)  =UM*
  259               * File  ISAP.s  59
  260 00315 00000           CON(5)  =DOEXT
  261 0031A 00000           CON(5)  =DOREAL
  262 0031F 000             NIBHEX  000
  263 00322 0000000         NIBHEX  000000000001
            00001
  264 0032E 0               NIBHEX  0
  265 0032F 00000           CON(5)  =CHR_m
  266 00334 00000           CON(5)  =DOCSTR
  267 00339 B0000           CON(5)  11
  268 0033E 261627          NIBASC  \bar\
  269 00344 00000           CON(5)  =umP
  270 00349 00000           CON(5)  =umEND
  271 0034E 00000           CON(5)  =SEMI
  272               * File  ISAP.s  60
  273 00353 00000           CON(5)  =UMCONV
  274               * Return ISA pressure in mbar
  275               * File  ISAP.s  61
  276 00358 00000           CON(5)  =SEMI
  277               * Check if Z > 11 km`
  278               * File  ISAP.s  63
  279 0035D 00000           CON(5)  =DOLAM
  280 00362 10              CON(2)  1
  281 00364 A5              NIBASC  \Z\
  282               * File  ISAP.s  64
  283 00366 00000           CON(5)  =DOEXT
  284 0036B 00000           CON(5)  =DOREAL
  285 00370 400             NIBHEX  400
  286 00373 0000000         NIBHEX  000000000011
            00011
  287 0037F 0               NIBHEX  0
  288 00380 00000           CON(5)  =DOCSTR
  289 00385 70000           CON(5)  7
  290 0038A D6              NIBASC  \m\
  291 0038C 00000           CON(5)  =umEND
  292 00391 00000           CON(5)  =SEMI
  293               * File  ISAP.s  65
  294 00396 00000           CON(5)  =UM>?
  295 0039B 00000           CON(5)  =%0<>
  296 003A0 00000           CON(5)  =case
  297 003A5 00000           CON(5)  =DOCOL
  298               * File  ISAP.s  66
  299 003AA 00000           CON(5)  =DOLAM
  300 003AF 20              CON(2)  2
  301 003B1 0703            NIBASC  \p0\
  302               * Calculate ISA pressure for
  303               * File  ISAP.s  67
  304 003B5 00000           CON(5)  =DOLAM
  305 003BA 20              CON(2)  2
  306 003BC 4503            NIBASC  \T0\
  307               * 11 km < Z <= 20 km
  308               * File  ISAP.s  68
  309 003C0 00000           CON(5)  =DOLAM
  310 003C5 10              CON(2)  1
  311 003C7 FD              CON(2)  #DF
  312               * File  ISAP.s  69
  313 003C9 00000           CON(5)  =DOEXT
  314 003CE 00000           CON(5)  =DOREAL
  315 003D3 400             NIBHEX  400
  316 003D6 0000000         NIBHEX  000000000011
            00011
  317 003E2 0               NIBHEX  0
  318 003E3 00000           CON(5)  =DOCSTR
  319 003E8 70000           CON(5)  7
  320 003ED D6              NIBASC  \m\
  321 003EF 00000           CON(5)  =umEND
  322 003F4 00000           CON(5)  =SEMI
  323               * File  ISAP.s  70
  324 003F9 00000           CON(5)  =UM*
  325               * File  ISAP.s  71
  326 003FE 00000           CON(5)  =UM+
  327               * File  ISAP.s  72
  328 00403 00000           CON(5)  =DOLAM
  329 00408 20              CON(2)  2
  330 0040A 4503            NIBASC  \T0\
  331               * File  ISAP.s  73
  332 0040E 00000           CON(5)  =UM/
  333               * File  ISAP.s  74
  334 00413 00000           CON(5)  =DOLAM
  335 00418 20              CON(2)  2
  336 0041A 7603            NIBASC  \g0\
  337               * File  ISAP.s  75
  338 0041E 00000           CON(5)  =DOLAM
  339 00423 10              CON(2)  1
  340 00425 25              NIBASC  \R\
  341               * File  ISAP.s  76
  342 00427 00000           CON(5)  =DOLAM
  343 0042C 10              CON(2)  1
  344 0042E FD              CON(2)  #DF
  345               * File  ISAP.s  77
  346 00430 00000           CON(5)  =UM*
  347               * File  ISAP.s  78
  348 00435 00000           CON(5)  =UM/
  349               * File  ISAP.s  79
  350 0043A 00000           CON(5)  =%CHS
  351               * File  ISAP.s  80
  352 0043F 00000           CON(5)  =%^
  353               * File  ISAP.s  81
  354 00444 00000           CON(5)  =DOLAM
  355 00449 20              CON(2)  2
  356 0044B 7603            NIBASC  \g0\
  357               * File  ISAP.s  82
  358 0044F 00000           CON(5)  =DOLAM
  359 00454 10              CON(2)  1
  360 00456 A5              NIBASC  \Z\
  361               * File  ISAP.s  83
  362 00458 00000           CON(5)  =DOEXT
  363 0045D 00000           CON(5)  =DOREAL
  364 00462 400             NIBHEX  400
  365 00465 0000000         NIBHEX  000000000011
            00011
  366 00471 0               NIBHEX  0
  367 00472 00000           CON(5)  =DOCSTR
  368 00477 70000           CON(5)  7
  369 0047C D6              NIBASC  \m\
  370 0047E 00000           CON(5)  =umEND
  371 00483 00000           CON(5)  =SEMI
  372               * File  ISAP.s  84
  373 00488 00000           CON(5)  =UM-
  374               * File  ISAP.s  85
  375 0048D 00000           CON(5)  =UM*
  376               * File  ISAP.s  86
  377 00492 00000           CON(5)  =DOLAM
  378 00497 10              CON(2)  1
  379 00499 25              NIBASC  \R\
  380               * File  ISAP.s  87
  381 0049B 00000           CON(5)  =DOEXT
  382 004A0 00000           CON(5)  =DOREAL
  383 004A5 400             NIBHEX  400
  384 004A8 0000000         NIBHEX  000000000011
            00011
  385 004B4 0               NIBHEX  0
  386 004B5 00000           CON(5)  =DOCSTR
  387 004BA 70000           CON(5)  7
  388 004BF D6              NIBASC  \m\
  389 004C1 00000           CON(5)  =umEND
  390 004C6 00000           CON(5)  =SEMI
  391               * File  ISAP.s  88
  392 004CB 00000           CON(5)  =DOROMP
  393 004D0 000000          CON(6)  =~xISAT
  394               * File  ISAP.s  89
  395 004D6 00000           CON(5)  =UM*
  396               * File  ISAP.s  90
  397 004DB 00000           CON(5)  =UM/
  398               * File  ISAP.s  91
  399 004E0 00000           CON(5)  =%CHS
  400               * File  ISAP.s  92
  401 004E5 00000           CON(5)  =%EXP
  402               * File  ISAP.s  93
  403 004EA 00000           CON(5)  =%*
  404               * File  ISAP.s  94
  405 004EF 00000           CON(5)  =UM*
  406               * File  ISAP.s  95
  407 004F4 00000           CON(5)  =DOEXT
  408 004F9 00000           CON(5)  =DOREAL
  409 004FE 000             NIBHEX  000
  410 00501 0000000         NIBHEX  000000000001
            00001
  411 0050D 0               NIBHEX  0
  412 0050E 00000           CON(5)  =CHR_m
  413 00513 00000           CON(5)  =DOCSTR
  414 00518 B0000           CON(5)  11
  415 0051D 261627          NIBASC  \bar\
  416 00523 00000           CON(5)  =umP
  417 00528 00000           CON(5)  =umEND
  418 0052D 00000           CON(5)  =SEMI
  419               * File  ISAP.s  96
  420 00532 00000           CON(5)  =UMCONV
  421               * Return ISA pressure in mbar
  422               * File  ISAP.s  97
  423 00537 00000           CON(5)  =SEMI
  424               * File  ISAP.s  98
  425 0053C 00000           CON(5)  =ABND
  426               * Abandon temporary environment
  427               * File  ISAP.s  99
  428 00541 00000           CON(5)  =SEMI
  429               * File  ISAP.s  100
  430 00546 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAP.a         Page    2

 %*                                Ext                   -   403
 %0<>                              Ext                   -   174   206   295
 %2                                Ext                   -   102   119   124
 %CHS                              Ext                   -   254   350   399
 %EXP                              Ext                   -   401
 %^                                Ext                   -   256   352
 ABND                              Ext                   -   425
 BIND                              Ext                   -   155
 CHR_m                             Ext                   -   265   412
 CK1&Dispatch                      Ext                   -    37
 DOCOL                             Ext                   -    35    41   176
                                         208   297
 DOCSTR                            Ext                   -    54    57    69
                                          82    96    99   116   121   126   167
                                         178   199   266   288   318   367   386
                                         413
 DOEXT                             Ext                   -    47    64    77
                                          89   108   162   194   260   283   313
                                         362   381   407
 DOLAM                             Ext                   -   136   139   142
                                         145   148   151   158   190   210   215
                                         220   224   232   238   242   246   279
                                         299   304   309   328   334   338   342
                                         354   358   377
 DOLIST                            Ext                   -   135
 DOREAL                            Ext                   -    50    65    78
                                          92   111   163   195   261   284   314
                                         363   382   408
 DOROMP                            Ext                   -   392
 FlashWarning                      Ext                   -   184
=RomId                             Abs     806 #00000326 -    20
 SEMI                              Ext                   -    62    73    86
                                         106   133   154   171   187   203   271
                                         276   292   322   371   390   418   423
                                         428   430
 UM*                               Ext                   -   228   250   258
                                         324   346   375   395   405
 UM+                               Ext                   -   230   326
 UM-                               Ext                   -   373
 UM/                               Ext                   -   236   252   332
                                         348   397
 UM<=?                             Ext                   -   205
 UM>?                              Ext                   -   173   294
 UMCONV                            Ext                   -   273   420
 UMSI                              Ext                   -    44    74
 case                              Ext                   -   175   207   296
 um*                               Ext                   -   129
 um/                               Ext                   -    60   104   130
 umEND                             Ext                   -    61    72    85
                                         105   132   170   202   270   291   321
                                         370   389   417
 umP                               Ext                   -   269   416
 um^                               Ext                   -   103   120   125
 unitob                            Ext                   -    40
=xISAP                             Rel       6 #00000006 -    33
 ~xISAP                            Ext                   -    32
 ~xISAT                            Ext                   -   393
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Statistics                         ISAP.a         Page    3

Input Parameters

  Source file name is ISAP.a

  Listing file name is ISAP.l

  Object file name is ISAP.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
