Saturn Assembler                                       Wed Apr 22 13:56:40 2009
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
   10               * Versioin:     1.21
   11               * Date:         02 April 2009
   12               * Input:                                                                STACK                                   Geopotential altitude (with units)
   13               * Output:       STACK     Standard ISA pressure (mbar)
   14               * File  ISAP.s  12
   15
   16               * File  ISAP.s  13
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
   29               *|| Resuming file ISAP.s at line 13
   30 00000 000000          CON(6)  =~xISAP
   31 00006         =xISAP
   32               * File  ISAP.s  15
   33 00006 00000           CON(5)  =DOCOL
   34               * File  ISAP.s  16
   35 0000B 00000           CON(5)  =CK1&Dispatch
   36               * Check for 1 argument
   37               * File  ISAP.s  17
   38 00010 00000           CON(5)  =unitob
   39 00015 00000           CON(5)  =DOCOL
   40               * Must be unit object
   41               * File  ISAP.s  18
   42 0001A 00000           CON(5)  =UMSI
   43               * Conver to SI units
   44               * File  ISAP.s  19
   45 0001F 00000           CON(5)  =DOLIST
   46 00024 00000           CON(5)  =DOLAM
   47 00029 10              CON(2)  1
   48 0002B A5              NIBASC  \Z\
   49 0002D 00000           CON(5)  =SEMI
   50 00032 00000           CON(5)  =BIND
   51               * Z = Geopotential altitude
   52               * File  ISAP.s  20
   53 00037 00000           CON(5)  =DOEXT
   54               * Temp. lapse rate 0 m <= Z <= 11 km
   55               * File  ISAP.s  21
   56 0003C 00000           CON(5)  =DOREAL
   57 00041 799             NIBHEX  799
   58 00044 0000000         NIBHEX  000000000056
            00056
   59 00050 9               NIBHEX  9
   60               * File  ISAP.s  22
   61 00051 00000           CON(5)  =DOCSTR
   62 00056 70000           CON(5)  7
   63 0005B B4              NIBASC  \K\
   64               * File  ISAP.s  23
   65 0005D 00000           CON(5)  =DOCSTR
   66 00062 70000           CON(5)  7
   67 00067 D6              NIBASC  \m\
   68 00069 00000           CON(5)  =um/
   69 0006E 00000           CON(5)  =umEND
   70 00073 00000           CON(5)  =SEMI
   71               * File  ISAP.s  24
   72 00078 00000           CON(5)  =DOEXT
   73 0007D 00000           CON(5)  =DOREAL
   74 00082 500             NIBHEX  500
   75 00085 0000005         NIBHEX  000000523101
            23101
   76 00091 0               NIBHEX  0
   77 00092 00000           CON(5)  =DOCSTR
   78 00097 90000           CON(5)  9
   79 0009C 0516            NIBASC  \Pa\
   80 000A0 00000           CON(5)  =umEND
   81 000A5 00000           CON(5)  =SEMI
   82 000AA 00000           CON(5)  =UMSI
   83               * ISA sea level pressure
   84               * File  ISAP.s  25
   85 000AF 00000           CON(5)  =DOEXT
   86 000B4 00000           CON(5)  =DOREAL
   87 000B9 200             NIBHEX  200
   88 000BC 0000000         NIBHEX  000000051882
            51882
   89 000C8 0               NIBHEX  0
   90 000C9 00000           CON(5)  =DOCSTR
   91 000CE 70000           CON(5)  7
   92 000D3 B4              NIBASC  \K\
   93 000D5 00000           CON(5)  =umEND
   94 000DA 00000           CON(5)  =SEMI
   95               * ISA sea level temperature
   96               * File  ISAP.s  26
   97 000DF 00000           CON(5)  =DOEXT
   98               * Sea level acceleration
   99               * File  ISAP.s  27
  100 000E4 00000           CON(5)  =DOREAL
  101 000E9 000             NIBHEX  000
  102 000EC 0000054         NIBHEX  000005466089
            66089
  103 000F8 0               NIBHEX  0
  104               * of gravity
  105               * File  ISAP.s  28
  106 000F9 00000           CON(5)  =DOCSTR
  107 000FE 70000           CON(5)  7
  108 00103 D6              NIBASC  \m\
  109 00105 00000           CON(5)  =DOCSTR
  110 0010A 70000           CON(5)  7
  111 0010F 37              NIBASC  \s\
  112 00111 00000           CON(5)  =%2
  113 00116 00000           CON(5)  =um^
  114 0011B 00000           CON(5)  =um/
  115 00120 00000           CON(5)  =umEND
  116 00125 00000           CON(5)  =SEMI
  117               * File  ISAP.s  29
  118 0012A 00000           CON(5)  =DOEXT
  119               * Gas constant for the ISA
  120               * File  ISAP.s  30
  121 0012F 00000           CON(5)  =DOREAL
  122 00134 200             NIBHEX  200
  123 00137 0000082         NIBHEX  000008250782
            50782
  124 00143 0               NIBHEX  0
  125               * File  ISAP.s  31
  126 00144 00000           CON(5)  =DOCSTR
  127 00149 70000           CON(5)  7
  128 0014E D6              NIBASC  \m\
  129 00150 00000           CON(5)  =%2
  130 00155 00000           CON(5)  =um^
  131 0015A 00000           CON(5)  =DOCSTR
  132 0015F 70000           CON(5)  7
  133 00164 37              NIBASC  \s\
  134 00166 00000           CON(5)  =%2
  135 0016B 00000           CON(5)  =um^
  136 00170 00000           CON(5)  =DOCSTR
  137 00175 70000           CON(5)  7
  138 0017A B4              NIBASC  \K\
  139 0017C 00000           CON(5)  =um*
  140 00181 00000           CON(5)  =um/
  141 00186 00000           CON(5)  =umEND
  142 0018B 00000           CON(5)  =SEMI
  143               * File  ISAP.s  32
  144 00190 00000           CON(5)  =DOLIST
  145 00195 00000           CON(5)  =DOLAM
  146 0019A 10              CON(2)  1
  147 0019C FD              CON(2)  #DF
  148 0019E 00000           CON(5)  =DOLAM
  149 001A3 20              CON(2)  2
  150 001A5 0703            NIBASC  \p0\
  151 001A9 00000           CON(5)  =DOLAM
  152 001AE 20              CON(2)  2
  153 001B0 4503            NIBASC  \T0\
  154 001B4 00000           CON(5)  =DOLAM
  155 001B9 20              CON(2)  2
  156 001BB 7603            NIBASC  \g0\
  157 001BF 00000           CON(5)  =DOLAM
  158 001C4 10              CON(2)  1
  159 001C6 25              NIBASC  \R\
  160 001C8 00000           CON(5)  =SEMI
  161 001CD 00000           CON(5)  =BIND
  162               * File  ISAP.s  33
  163               * Check if Z > 20 km
  164               * File  ISAP.s  34
  165 001D2 00000           CON(5)  =DOLAM
  166 001D7 10              CON(2)  1
  167 001D9 A5              NIBASC  \Z\
  168 001DB 00000           CON(5)  =DOEXT
  169 001E0 00000           CON(5)  =DOREAL
  170 001E5 400             NIBHEX  400
  171 001E8 0000000         NIBHEX  000000000002
            00002
  172 001F4 0               NIBHEX  0
  173 001F5 00000           CON(5)  =DOCSTR
  174 001FA 70000           CON(5)  7
  175 001FF D6              NIBASC  \m\
  176 00201 00000           CON(5)  =umEND
  177 00206 00000           CON(5)  =SEMI
  178 0020B 00000           CON(5)  =UM>?
  179 00210 00000           CON(5)  =%0<>
  180 00215 00000           CON(5)  =case
  181 0021A 00000           CON(5)  =DOCOL
  182               * File  ISAP.s  35
  183 0021F 00000           CON(5)  =ClrDA1IsStat
  184               * Display error message and exit
  185               * File  ISAP.s  36
  186 00224 00000           CON(5)  =DOCSTR
  187 00229 B2000           CON(5)  43
  188 0022E 542525F         NIBASC  \ERROR: Alt. > 20 km\
            425A302
            14C647E202E302230302B6D6

  189               * File  ISAP.s  37
  190 00254 00000           CON(5)  =DISPROW1
  191               * File  ISAP.s  38
  192 00259 00000           CON(5)  =ERRBEEP
  193               * Generage error beep
  194               * File  ISAP.s  39
  195 0025E 00000           CON(5)  =%3
  196 00263 00000           CON(5)  =xFREEZE
  197               * Freeze display until key press
  198               * File  ISAP.s  40
  199 00268 00000           CON(5)  =SEMI
  200               * File  ISAP.s  41
  201               * Check if Z <= 11 km
  202               * File  ISAP.s  42
  203 0026D 00000           CON(5)  =DOLAM
  204 00272 10              CON(2)  1
  205 00274 A5              NIBASC  \Z\
  206 00276 00000           CON(5)  =DOEXT
  207 0027B 00000           CON(5)  =DOREAL
  208 00280 400             NIBHEX  400
  209 00283 0000000         NIBHEX  000000000011
            00011
  210 0028F 0               NIBHEX  0
  211 00290 00000           CON(5)  =DOCSTR
  212 00295 70000           CON(5)  7
  213 0029A D6              NIBASC  \m\
  214 0029C 00000           CON(5)  =umEND
  215 002A1 00000           CON(5)  =SEMI
  216 002A6 00000           CON(5)  =UM<=?
  217 002AB 00000           CON(5)  =%0<>
  218 002B0 00000           CON(5)  =case
  219 002B5 00000           CON(5)  =DOCOL
  220               * File  ISAP.s  43
  221 002BA 00000           CON(5)  =DOLAM
  222 002BF 20              CON(2)  2
  223 002C1 0703            NIBASC  \p0\
  224               * Calculate ISA pressure for
  225               * File  ISAP.s  44
  226 002C5 00000           CON(5)  =DOLAM
  227 002CA 20              CON(2)  2
  228 002CC 4503            NIBASC  \T0\
  229               * 0 m <= Z <= 11 km
  230               * File  ISAP.s  45
  231 002D0 00000           CON(5)  =DOLAM
  232 002D5 10              CON(2)  1
  233 002D7 FD              CON(2)  #DF
  234               * File  ISAP.s  46
  235 002D9 00000           CON(5)  =DOLAM
  236 002DE 10              CON(2)  1
  237 002E0 A5              NIBASC  \Z\
  238               * File  ISAP.s  47
  239 002E2 00000           CON(5)  =UM*
  240               * File  ISAP.s  48
  241 002E7 00000           CON(5)  =UM+
  242               * File  ISAP.s  49
  243 002EC 00000           CON(5)  =DOLAM
  244 002F1 20              CON(2)  2
  245 002F3 4503            NIBASC  \T0\
  246               * File  ISAP.s  50
  247 002F7 00000           CON(5)  =UM/
  248               * File  ISAP.s  51
  249 002FC 00000           CON(5)  =DOLAM
  250 00301 20              CON(2)  2
  251 00303 7603            NIBASC  \g0\
  252               * File  ISAP.s  52
  253 00307 00000           CON(5)  =DOLAM
  254 0030C 10              CON(2)  1
  255 0030E 25              NIBASC  \R\
  256               * File  ISAP.s  53
  257 00310 00000           CON(5)  =DOLAM
  258 00315 10              CON(2)  1
  259 00317 FD              CON(2)  #DF
  260               * File  ISAP.s  54
  261 00319 00000           CON(5)  =UM*
  262               * File  ISAP.s  55
  263 0031E 00000           CON(5)  =UM/
  264               * File  ISAP.s  56
  265 00323 00000           CON(5)  =%CHS
  266               * File  ISAP.s  57
  267 00328 00000           CON(5)  =%^
  268               * File  ISAP.s  58
  269 0032D 00000           CON(5)  =UM*
  270               * File  ISAP.s  59
  271 00332 00000           CON(5)  =DOEXT
  272 00337 00000           CON(5)  =DOREAL
  273 0033C 000             NIBHEX  000
  274 0033F 0000000         NIBHEX  000000000001
            00001
  275 0034B 0               NIBHEX  0
  276 0034C 00000           CON(5)  =CHR_m
  277 00351 00000           CON(5)  =DOCSTR
  278 00356 B0000           CON(5)  11
  279 0035B 261627          NIBASC  \bar\
  280 00361 00000           CON(5)  =umP
  281 00366 00000           CON(5)  =umEND
  282 0036B 00000           CON(5)  =SEMI
  283               * File  ISAP.s  60
  284 00370 00000           CON(5)  =UMCONV
  285               * Return ISA pressure in mbar
  286               * File  ISAP.s  61
  287 00375 00000           CON(5)  =SEMI
  288               * Check if Z > 11 km`
  289               * File  ISAP.s  62
  290 0037A 00000           CON(5)  =DOLAM
  291 0037F 10              CON(2)  1
  292 00381 A5              NIBASC  \Z\
  293 00383 00000           CON(5)  =DOEXT
  294 00388 00000           CON(5)  =DOREAL
  295 0038D 400             NIBHEX  400
  296 00390 0000000         NIBHEX  000000000011
            00011
  297 0039C 0               NIBHEX  0
  298 0039D 00000           CON(5)  =DOCSTR
  299 003A2 70000           CON(5)  7
  300 003A7 D6              NIBASC  \m\
  301 003A9 00000           CON(5)  =umEND
  302 003AE 00000           CON(5)  =SEMI
  303 003B3 00000           CON(5)  =UM>?
  304 003B8 00000           CON(5)  =%0<>
  305 003BD 00000           CON(5)  =case
  306 003C2 00000           CON(5)  =DOCOL
  307               * File  ISAP.s  63
  308 003C7 00000           CON(5)  =DOLAM
  309 003CC 20              CON(2)  2
  310 003CE 0703            NIBASC  \p0\
  311               * Calculate ISA pressure for
  312               * File  ISAP.s  64
  313 003D2 00000           CON(5)  =DOLAM
  314 003D7 20              CON(2)  2
  315 003D9 4503            NIBASC  \T0\
  316               * 11 km < Z <= 20 km
  317               * File  ISAP.s  65
  318 003DD 00000           CON(5)  =DOLAM
  319 003E2 10              CON(2)  1
  320 003E4 FD              CON(2)  #DF
  321               * File  ISAP.s  66
  322 003E6 00000           CON(5)  =DOEXT
  323 003EB 00000           CON(5)  =DOREAL
  324 003F0 400             NIBHEX  400
  325 003F3 0000000         NIBHEX  000000000011
            00011
  326 003FF 0               NIBHEX  0
  327 00400 00000           CON(5)  =DOCSTR
  328 00405 70000           CON(5)  7
  329 0040A D6              NIBASC  \m\
  330 0040C 00000           CON(5)  =umEND
  331 00411 00000           CON(5)  =SEMI
  332               * File  ISAP.s  67
  333 00416 00000           CON(5)  =UM*
  334               * File  ISAP.s  68
  335 0041B 00000           CON(5)  =UM+
  336               * File  ISAP.s  69
  337 00420 00000           CON(5)  =DOLAM
  338 00425 20              CON(2)  2
  339 00427 4503            NIBASC  \T0\
  340               * File  ISAP.s  70
  341 0042B 00000           CON(5)  =UM/
  342               * File  ISAP.s  71
  343 00430 00000           CON(5)  =DOLAM
  344 00435 20              CON(2)  2
  345 00437 7603            NIBASC  \g0\
  346               * File  ISAP.s  72
  347 0043B 00000           CON(5)  =DOLAM
  348 00440 10              CON(2)  1
  349 00442 25              NIBASC  \R\
  350               * File  ISAP.s  73
  351 00444 00000           CON(5)  =DOLAM
  352 00449 10              CON(2)  1
  353 0044B FD              CON(2)  #DF
  354               * File  ISAP.s  74
  355 0044D 00000           CON(5)  =UM*
  356               * File  ISAP.s  75
  357 00452 00000           CON(5)  =UM/
  358               * File  ISAP.s  76
  359 00457 00000           CON(5)  =%CHS
  360               * File  ISAP.s  77
  361 0045C 00000           CON(5)  =%^
  362               * File  ISAP.s  78
  363 00461 00000           CON(5)  =DOLAM
  364 00466 20              CON(2)  2
  365 00468 7603            NIBASC  \g0\
  366               * File  ISAP.s  79
  367 0046C 00000           CON(5)  =DOLAM
  368 00471 10              CON(2)  1
  369 00473 A5              NIBASC  \Z\
  370               * File  ISAP.s  80
  371 00475 00000           CON(5)  =DOEXT
  372 0047A 00000           CON(5)  =DOREAL
  373 0047F 400             NIBHEX  400
  374 00482 0000000         NIBHEX  000000000011
            00011
  375 0048E 0               NIBHEX  0
  376 0048F 00000           CON(5)  =DOCSTR
  377 00494 70000           CON(5)  7
  378 00499 D6              NIBASC  \m\
  379 0049B 00000           CON(5)  =umEND
  380 004A0 00000           CON(5)  =SEMI
  381               * File  ISAP.s  81
  382 004A5 00000           CON(5)  =UM-
  383               * File  ISAP.s  82
  384 004AA 00000           CON(5)  =UM*
  385               * File  ISAP.s  83
  386 004AF 00000           CON(5)  =DOLAM
  387 004B4 10              CON(2)  1
  388 004B6 25              NIBASC  \R\
  389               * File  ISAP.s  84
  390 004B8 00000           CON(5)  =DOEXT
  391 004BD 00000           CON(5)  =DOREAL
  392 004C2 400             NIBHEX  400
  393 004C5 0000000         NIBHEX  000000000011
            00011
  394 004D1 0               NIBHEX  0
  395 004D2 00000           CON(5)  =DOCSTR
  396 004D7 70000           CON(5)  7
  397 004DC D6              NIBASC  \m\
  398 004DE 00000           CON(5)  =umEND
  399 004E3 00000           CON(5)  =SEMI
  400               * File  ISAP.s  85
  401 004E8 00000           CON(5)  =DOROMP
  402 004ED 000000          CON(6)  =~xISAT
  403               * File  ISAP.s  86
  404 004F3 00000           CON(5)  =UM*
  405               * File  ISAP.s  87
  406 004F8 00000           CON(5)  =UM/
  407               * File  ISAP.s  88
  408 004FD 00000           CON(5)  =%CHS
  409               * File  ISAP.s  89
  410 00502 00000           CON(5)  =%EXP
  411               * File  ISAP.s  90
  412 00507 00000           CON(5)  =%*
  413               * File  ISAP.s  91
  414 0050C 00000           CON(5)  =UM*
  415               * File  ISAP.s  92
  416 00511 00000           CON(5)  =DOEXT
  417 00516 00000           CON(5)  =DOREAL
  418 0051B 000             NIBHEX  000
  419 0051E 0000000         NIBHEX  000000000001
            00001
  420 0052A 0               NIBHEX  0
  421 0052B 00000           CON(5)  =CHR_m
  422 00530 00000           CON(5)  =DOCSTR
  423 00535 B0000           CON(5)  11
  424 0053A 261627          NIBASC  \bar\
  425 00540 00000           CON(5)  =umP
  426 00545 00000           CON(5)  =umEND
  427 0054A 00000           CON(5)  =SEMI
  428               * File  ISAP.s  93
  429 0054F 00000           CON(5)  =UMCONV
  430               * Return ISA pressure in mbar
  431               * File  ISAP.s  94
  432 00554 00000           CON(5)  =SEMI
  433               * File  ISAP.s  95
  434 00559 00000           CON(5)  =ABND
  435               * LAM \DF LAM p0 LAM T0 LAM g0 LAM R
  436               * File  ISAP.s  96
  437 0055E 00000           CON(5)  =ABND
  438               * LAM Z
  439               * File  ISAP.s  97
  440 00563 00000           CON(5)  =SEMI
  441               * File  ISAP.s  98
  442 00568 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAP.a         Page    2

 %*                                Ext                   -   412
 %0<>                              Ext                   -   179   217   304
 %2                                Ext                   -   112   129   134
 %3                                Ext                   -   195
 %CHS                              Ext                   -   265   359   408
 %EXP                              Ext                   -   410
 %^                                Ext                   -   267   361
 ABND                              Ext                   -   434   437
 BIND                              Ext                   -    50   161
 CHR_m                             Ext                   -   276   421
 CK1&Dispatch                      Ext                   -    35
 ClrDA1IsStat                      Ext                   -   183
 DISPROW1                          Ext                   -   190
 DOCOL                             Ext                   -    33    39   181
                                         219   306
 DOCSTR                            Ext                   -    61    65    77
                                          90   106   109   126   131   136   173
                                         186   211   277   298   327   376   395
                                         422
 DOEXT                             Ext                   -    53    72    85
                                          97   118   168   206   271   293   322
                                         371   390   416
 DOLAM                             Ext                   -    46   145   148
                                         151   154   157   165   203   221   226
                                         231   235   243   249   253   257   290
                                         308   313   318   337   343   347   351
                                         363   367   386
 DOLIST                            Ext                   -    45   144
 DOREAL                            Ext                   -    56    73    86
                                         100   121   169   207   272   294   323
                                         372   391   417
 DOROMP                            Ext                   -   401
 ERRBEEP                           Ext                   -   192
=RomId                             Abs     806 #00000326 -    19
 SEMI                              Ext                   -    49    70    81
                                          94   116   142   160   177   199   215
                                         282   287   302   331   380   399   427
                                         432   440   442
 UM*                               Ext                   -   239   261   269
                                         333   355   384   404   414
 UM+                               Ext                   -   241   335
 UM-                               Ext                   -   382
 UM/                               Ext                   -   247   263   341
                                         357   406
 UM<=?                             Ext                   -   216
 UM>?                              Ext                   -   178   303
 UMCONV                            Ext                   -   284   429
 UMSI                              Ext                   -    42    82
 case                              Ext                   -   180   218   305
 um*                               Ext                   -   139
 um/                               Ext                   -    68   114   140
 umEND                             Ext                   -    69    80    93
                                         115   141   176   214   281   301   330
                                         379   398   426
 umP                               Ext                   -   280   425
 um^                               Ext                   -   113   130   135
 unitob                            Ext                   -    38
 xFREEZE                           Ext                   -   196
=xISAP                             Rel       6 #00000006 -    31
 ~xISAP                            Ext                   -    30
 ~xISAT                            Ext                   -   402
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
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
