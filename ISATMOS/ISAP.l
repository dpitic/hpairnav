Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)                                      ISAP.a         Page    1

    1               * File  ISAP.s  1
    2               * RPL
    3               * File  ISAP.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOS\ISAP.s, part of the ISATM.hpp project, created by <> on 2/04/2009
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
   27               *|| Resuming file ISAP.s at line 13
   28 00000 000000          CON(6)  =~xISAP
   29 00006         =xISAP
   30               * File  ISAP.s  15
   31 00006 00000           CON(5)  =DOCOL
   32               * File  ISAP.s  16
   33 0000B 00000           CON(5)  =CK1&Dispatch
   34               * Check for 1 argument
   35               * File  ISAP.s  17
   36 00010 00000           CON(5)  =BINT14
   37 00015 00000           CON(5)  =DOCOL
   38               * Must be unit object
   39               * File  ISAP.s  18
   40 0001A 00000           CON(5)  =UMSI
   41               * Conver to SI units
   42               * File  ISAP.s  19
   43 0001F 00000           CON(5)  =DOLIST
   44 00024 00000           CON(5)  =DOLAM
   45 00029 10              CON(2)  1
   46 0002B A5              NIBASC  \Z\
   47 0002D 00000           CON(5)  =SEMI
   48 00032 00000           CON(5)  =BIND
   49               * Z = Geopotential altitude
   50               * File  ISAP.s  20
   51 00037 00000           CON(5)  =DOEXT
   52               * Temp. lapse rate 0 m <= Z <= 11 km
   53               * File  ISAP.s  21
   54 0003C 00000           CON(5)  =DOREAL
   55 00041 799             NIBHEX  799
   56 00044 0000000         NIBHEX  000000000056
            00056
   57 00050 9               NIBHEX  9
   58               * File  ISAP.s  22
   59 00051 00000           CON(5)  =DOCSTR
   60 00056 70000           CON(5)  7
   61 0005B B4              NIBASC  \K\
   62               * File  ISAP.s  23
   63 0005D 00000           CON(5)  =DOCSTR
   64 00062 70000           CON(5)  7
   65 00067 D6              NIBASC  \m\
   66 00069 00000           CON(5)  =um/
   67 0006E 00000           CON(5)  =umEND
   68 00073 00000           CON(5)  =SEMI
   69               * File  ISAP.s  24
   70 00078 00000           CON(5)  =DOEXT
   71 0007D 00000           CON(5)  =DOREAL
   72 00082 500             NIBHEX  500
   73 00085 0000005         NIBHEX  000000523101
            23101
   74 00091 0               NIBHEX  0
   75 00092 00000           CON(5)  =DOCSTR
   76 00097 90000           CON(5)  9
   77 0009C 0516            NIBASC  \Pa\
   78 000A0 00000           CON(5)  =umEND
   79 000A5 00000           CON(5)  =SEMI
   80 000AA 00000           CON(5)  =UMSI
   81               * ISA sea level pressure
   82               * File  ISAP.s  25
   83 000AF 00000           CON(5)  =DOEXT
   84 000B4 00000           CON(5)  =DOREAL
   85 000B9 200             NIBHEX  200
   86 000BC 0000000         NIBHEX  000000051882
            51882
   87 000C8 0               NIBHEX  0
   88 000C9 00000           CON(5)  =DOCSTR
   89 000CE 70000           CON(5)  7
   90 000D3 B4              NIBASC  \K\
   91 000D5 00000           CON(5)  =umEND
   92 000DA 00000           CON(5)  =SEMI
   93               * ISA sea level temperature
   94               * File  ISAP.s  26
   95 000DF 00000           CON(5)  =DOEXT
   96               * Sea level acceleration
   97               * File  ISAP.s  27
   98 000E4 00000           CON(5)  =DOREAL
   99 000E9 000             NIBHEX  000
  100 000EC 0000054         NIBHEX  000005466089
            66089
  101 000F8 0               NIBHEX  0
  102               * of gravity
  103               * File  ISAP.s  28
  104 000F9 00000           CON(5)  =DOCSTR
  105 000FE 70000           CON(5)  7
  106 00103 D6              NIBASC  \m\
  107 00105 00000           CON(5)  =DOCSTR
  108 0010A 70000           CON(5)  7
  109 0010F 37              NIBASC  \s\
  110 00111 00000           CON(5)  =%2
  111 00116 00000           CON(5)  =um^
  112 0011B 00000           CON(5)  =um/
  113 00120 00000           CON(5)  =umEND
  114 00125 00000           CON(5)  =SEMI
  115               * File  ISAP.s  29
  116 0012A 00000           CON(5)  =DOEXT
  117               * Gas constant for the ISA
  118               * File  ISAP.s  30
  119 0012F 00000           CON(5)  =DOREAL
  120 00134 200             NIBHEX  200
  121 00137 0000082         NIBHEX  000008250782
            50782
  122 00143 0               NIBHEX  0
  123               * File  ISAP.s  31
  124 00144 00000           CON(5)  =DOCSTR
  125 00149 70000           CON(5)  7
  126 0014E D6              NIBASC  \m\
  127 00150 00000           CON(5)  =%2
  128 00155 00000           CON(5)  =um^
  129 0015A 00000           CON(5)  =DOCSTR
  130 0015F 70000           CON(5)  7
  131 00164 37              NIBASC  \s\
  132 00166 00000           CON(5)  =%2
  133 0016B 00000           CON(5)  =um^
  134 00170 00000           CON(5)  =DOCSTR
  135 00175 70000           CON(5)  7
  136 0017A B4              NIBASC  \K\
  137 0017C 00000           CON(5)  =um*
  138 00181 00000           CON(5)  =um/
  139 00186 00000           CON(5)  =umEND
  140 0018B 00000           CON(5)  =SEMI
  141               * File  ISAP.s  32
  142 00190 00000           CON(5)  =DOLIST
  143 00195 00000           CON(5)  =DOLAM
  144 0019A 10              CON(2)  1
  145 0019C FD              CON(2)  #DF
  146 0019E 00000           CON(5)  =DOLAM
  147 001A3 20              CON(2)  2
  148 001A5 0703            NIBASC  \p0\
  149 001A9 00000           CON(5)  =DOLAM
  150 001AE 20              CON(2)  2
  151 001B0 4503            NIBASC  \T0\
  152 001B4 00000           CON(5)  =DOLAM
  153 001B9 20              CON(2)  2
  154 001BB 7603            NIBASC  \g0\
  155 001BF 00000           CON(5)  =DOLAM
  156 001C4 10              CON(2)  1
  157 001C6 25              NIBASC  \R\
  158 001C8 00000           CON(5)  =SEMI
  159 001CD 00000           CON(5)  =BIND
  160               * File  ISAP.s  33
  161               * Check if Z > 20 km
  162               * File  ISAP.s  34
  163 001D2 00000           CON(5)  =DOLAM
  164 001D7 10              CON(2)  1
  165 001D9 A5              NIBASC  \Z\
  166 001DB 00000           CON(5)  =DOEXT
  167 001E0 00000           CON(5)  =DOREAL
  168 001E5 400             NIBHEX  400
  169 001E8 0000000         NIBHEX  000000000002
            00002
  170 001F4 0               NIBHEX  0
  171 001F5 00000           CON(5)  =DOCSTR
  172 001FA 70000           CON(5)  7
  173 001FF D6              NIBASC  \m\
  174 00201 00000           CON(5)  =umEND
  175 00206 00000           CON(5)  =SEMI
  176 0020B 00000           CON(5)  =UM>?
  177 00210 00000           CON(5)  =%0<>
  178 00215 00000           CON(5)  =case
  179 0021A 00000           CON(5)  =DOCOL
  180               * File  ISAP.s  35
  181 0021F 00000           CON(5)  =ClrDA1IsStat
  182               * Display error message and exit
  183               * File  ISAP.s  36
  184 00224 00000           CON(5)  =DOCSTR
  185 00229 B2000           CON(5)  43
  186 0022E 542525F         NIBASC  \ERROR: Alt. > 20 km\
            425A302
            14C647E202E302230302B6D6

  187               * File  ISAP.s  37
  188 00254 00000           CON(5)  =DISPROW1
  189               * File  ISAP.s  38
  190 00259 00000           CON(5)  =DOREAL
  191 0025E 200             NIBHEX  200
  192 00261 0000000         NIBHEX  000000000044
            00044
  193 0026D 0               NIBHEX  0
  194 0026E 00000           CON(5)  =DOREAL
  195 00273 999             NIBHEX  999
  196 00276 0000000         NIBHEX  000000000052
            00052
  197 00282 0               NIBHEX  0
  198 00283 00000           CON(5)  =xBEEP
  199 00288 00000           CON(5)  =%3
  200 0028D 00000           CON(5)  =xFREEZE
  201               * File  ISAP.s  39
  202 00292 00000           CON(5)  =SEMI
  203               * File  ISAP.s  40
  204               * Check if Z <= 11 km
  205               * File  ISAP.s  41
  206 00297 00000           CON(5)  =DOLAM
  207 0029C 10              CON(2)  1
  208 0029E A5              NIBASC  \Z\
  209 002A0 00000           CON(5)  =DOEXT
  210 002A5 00000           CON(5)  =DOREAL
  211 002AA 400             NIBHEX  400
  212 002AD 0000000         NIBHEX  000000000011
            00011
  213 002B9 0               NIBHEX  0
  214 002BA 00000           CON(5)  =DOCSTR
  215 002BF 70000           CON(5)  7
  216 002C4 D6              NIBASC  \m\
  217 002C6 00000           CON(5)  =umEND
  218 002CB 00000           CON(5)  =SEMI
  219 002D0 00000           CON(5)  =UM<=?
  220 002D5 00000           CON(5)  =%0<>
  221 002DA 00000           CON(5)  =case
  222 002DF 00000           CON(5)  =DOCOL
  223               * File  ISAP.s  42
  224 002E4 00000           CON(5)  =DOLAM
  225 002E9 20              CON(2)  2
  226 002EB 0703            NIBASC  \p0\
  227               * Calculate ISA pressure for
  228               * File  ISAP.s  43
  229 002EF 00000           CON(5)  =DOLAM
  230 002F4 20              CON(2)  2
  231 002F6 4503            NIBASC  \T0\
  232               * 0 m <= Z <= 11 km
  233               * File  ISAP.s  44
  234 002FA 00000           CON(5)  =DOLAM
  235 002FF 10              CON(2)  1
  236 00301 FD              CON(2)  #DF
  237               * File  ISAP.s  45
  238 00303 00000           CON(5)  =DOLAM
  239 00308 10              CON(2)  1
  240 0030A A5              NIBASC  \Z\
  241               * File  ISAP.s  46
  242 0030C 00000           CON(5)  =UM*
  243               * File  ISAP.s  47
  244 00311 00000           CON(5)  =UM+
  245               * File  ISAP.s  48
  246 00316 00000           CON(5)  =DOLAM
  247 0031B 20              CON(2)  2
  248 0031D 4503            NIBASC  \T0\
  249               * File  ISAP.s  49
  250 00321 00000           CON(5)  =UM/
  251               * File  ISAP.s  50
  252 00326 00000           CON(5)  =DOLAM
  253 0032B 20              CON(2)  2
  254 0032D 7603            NIBASC  \g0\
  255               * File  ISAP.s  51
  256 00331 00000           CON(5)  =DOLAM
  257 00336 10              CON(2)  1
  258 00338 25              NIBASC  \R\
  259               * File  ISAP.s  52
  260 0033A 00000           CON(5)  =DOLAM
  261 0033F 10              CON(2)  1
  262 00341 FD              CON(2)  #DF
  263               * File  ISAP.s  53
  264 00343 00000           CON(5)  =UM*
  265               * File  ISAP.s  54
  266 00348 00000           CON(5)  =UM/
  267               * File  ISAP.s  55
  268 0034D 00000           CON(5)  =%CHS
  269               * File  ISAP.s  56
  270 00352 00000           CON(5)  =%^
  271               * File  ISAP.s  57
  272 00357 00000           CON(5)  =UM*
  273               * File  ISAP.s  58
  274 0035C 00000           CON(5)  =DOEXT
  275 00361 00000           CON(5)  =DOREAL
  276 00366 000             NIBHEX  000
  277 00369 0000000         NIBHEX  000000000001
            00001
  278 00375 0               NIBHEX  0
  279 00376 00000           CON(5)  =CHR_m
  280 0037B 00000           CON(5)  =DOCSTR
  281 00380 B0000           CON(5)  11
  282 00385 261627          NIBASC  \bar\
  283 0038B 00000           CON(5)  =umP
  284 00390 00000           CON(5)  =umEND
  285 00395 00000           CON(5)  =SEMI
  286               * File  ISAP.s  59
  287 0039A 00000           CON(5)  =UMCONV
  288               * Return ISA pressure in mbar
  289               * File  ISAP.s  60
  290 0039F 00000           CON(5)  =SEMI
  291               * Check if Z > 11 km`
  292               * File  ISAP.s  61
  293 003A4 00000           CON(5)  =DOLAM
  294 003A9 10              CON(2)  1
  295 003AB A5              NIBASC  \Z\
  296 003AD 00000           CON(5)  =DOEXT
  297 003B2 00000           CON(5)  =DOREAL
  298 003B7 400             NIBHEX  400
  299 003BA 0000000         NIBHEX  000000000011
            00011
  300 003C6 0               NIBHEX  0
  301 003C7 00000           CON(5)  =DOCSTR
  302 003CC 70000           CON(5)  7
  303 003D1 D6              NIBASC  \m\
  304 003D3 00000           CON(5)  =umEND
  305 003D8 00000           CON(5)  =SEMI
  306 003DD 00000           CON(5)  =UM>?
  307 003E2 00000           CON(5)  =%0<>
  308 003E7 00000           CON(5)  =case
  309 003EC 00000           CON(5)  =DOCOL
  310               * File  ISAP.s  62
  311 003F1 00000           CON(5)  =DOLAM
  312 003F6 20              CON(2)  2
  313 003F8 0703            NIBASC  \p0\
  314               * Calculate ISA pressure for
  315               * File  ISAP.s  63
  316 003FC 00000           CON(5)  =DOLAM
  317 00401 20              CON(2)  2
  318 00403 4503            NIBASC  \T0\
  319               * 11 km < Z <= 20 km
  320               * File  ISAP.s  64
  321 00407 00000           CON(5)  =DOLAM
  322 0040C 10              CON(2)  1
  323 0040E FD              CON(2)  #DF
  324               * File  ISAP.s  65
  325 00410 00000           CON(5)  =DOEXT
  326 00415 00000           CON(5)  =DOREAL
  327 0041A 400             NIBHEX  400
  328 0041D 0000000         NIBHEX  000000000011
            00011
  329 00429 0               NIBHEX  0
  330 0042A 00000           CON(5)  =DOCSTR
  331 0042F 70000           CON(5)  7
  332 00434 D6              NIBASC  \m\
  333 00436 00000           CON(5)  =umEND
  334 0043B 00000           CON(5)  =SEMI
  335               * File  ISAP.s  66
  336 00440 00000           CON(5)  =UM*
  337               * File  ISAP.s  67
  338 00445 00000           CON(5)  =UM+
  339               * File  ISAP.s  68
  340 0044A 00000           CON(5)  =DOLAM
  341 0044F 20              CON(2)  2
  342 00451 4503            NIBASC  \T0\
  343               * File  ISAP.s  69
  344 00455 00000           CON(5)  =UM/
  345               * File  ISAP.s  70
  346 0045A 00000           CON(5)  =DOLAM
  347 0045F 20              CON(2)  2
  348 00461 7603            NIBASC  \g0\
  349               * File  ISAP.s  71
  350 00465 00000           CON(5)  =DOLAM
  351 0046A 10              CON(2)  1
  352 0046C 25              NIBASC  \R\
  353               * File  ISAP.s  72
  354 0046E 00000           CON(5)  =DOLAM
  355 00473 10              CON(2)  1
  356 00475 FD              CON(2)  #DF
  357               * File  ISAP.s  73
  358 00477 00000           CON(5)  =UM*
  359               * File  ISAP.s  74
  360 0047C 00000           CON(5)  =UM/
  361               * File  ISAP.s  75
  362 00481 00000           CON(5)  =%CHS
  363               * File  ISAP.s  76
  364 00486 00000           CON(5)  =%^
  365               * File  ISAP.s  77
  366 0048B 00000           CON(5)  =DOLAM
  367 00490 20              CON(2)  2
  368 00492 7603            NIBASC  \g0\
  369               * File  ISAP.s  78
  370 00496 00000           CON(5)  =DOLAM
  371 0049B 10              CON(2)  1
  372 0049D A5              NIBASC  \Z\
  373               * File  ISAP.s  79
  374 0049F 00000           CON(5)  =DOEXT
  375 004A4 00000           CON(5)  =DOREAL
  376 004A9 400             NIBHEX  400
  377 004AC 0000000         NIBHEX  000000000011
            00011
  378 004B8 0               NIBHEX  0
  379 004B9 00000           CON(5)  =DOCSTR
  380 004BE 70000           CON(5)  7
  381 004C3 D6              NIBASC  \m\
  382 004C5 00000           CON(5)  =umEND
  383 004CA 00000           CON(5)  =SEMI
  384               * File  ISAP.s  80
  385 004CF 00000           CON(5)  =UM-
  386               * File  ISAP.s  81
  387 004D4 00000           CON(5)  =UM*
  388               * File  ISAP.s  82
  389 004D9 00000           CON(5)  =DOLAM
  390 004DE 10              CON(2)  1
  391 004E0 25              NIBASC  \R\
  392               * File  ISAP.s  83
  393 004E2 00000           CON(5)  =DOEXT
  394 004E7 00000           CON(5)  =DOREAL
  395 004EC 400             NIBHEX  400
  396 004EF 0000000         NIBHEX  000000000011
            00011
  397 004FB 0               NIBHEX  0
  398 004FC 00000           CON(5)  =DOCSTR
  399 00501 70000           CON(5)  7
  400 00506 D6              NIBASC  \m\
  401 00508 00000           CON(5)  =umEND
  402 0050D 00000           CON(5)  =SEMI
  403               * File  ISAP.s  84
  404 00512 00000           CON(5)  =DOROMP
  405 00517 000000          CON(6)  =~xISAT
  406               * File  ISAP.s  85
  407 0051D 00000           CON(5)  =UM*
  408               * File  ISAP.s  86
  409 00522 00000           CON(5)  =UM/
  410               * File  ISAP.s  87
  411 00527 00000           CON(5)  =%CHS
  412               * File  ISAP.s  88
  413 0052C 00000           CON(5)  =%EXP
  414               * File  ISAP.s  89
  415 00531 00000           CON(5)  =%*
  416               * File  ISAP.s  90
  417 00536 00000           CON(5)  =UM*
  418               * File  ISAP.s  91
  419 0053B 00000           CON(5)  =DOEXT
  420 00540 00000           CON(5)  =DOREAL
  421 00545 000             NIBHEX  000
  422 00548 0000000         NIBHEX  000000000001
            00001
  423 00554 0               NIBHEX  0
  424 00555 00000           CON(5)  =CHR_m
  425 0055A 00000           CON(5)  =DOCSTR
  426 0055F B0000           CON(5)  11
  427 00564 261627          NIBASC  \bar\
  428 0056A 00000           CON(5)  =umP
  429 0056F 00000           CON(5)  =umEND
  430 00574 00000           CON(5)  =SEMI
  431               * File  ISAP.s  92
  432 00579 00000           CON(5)  =UMCONV
  433               * Return ISA pressure in mbar
  434               * File  ISAP.s  93
  435 0057E 00000           CON(5)  =SEMI
  436               * File  ISAP.s  94
  437 00583 00000           CON(5)  =ABND
  438               * LAM \DF LAM p0 LAM T0 LAM g0 LAM R
  439               *                                               ABND                            ( LAM p0 )
  440               *                                               ABND                            ( LAM T0 )
  441               *                                               ABND                               ( LAM g0 )
  442               *                                               ABND
  443               * File  ISAP.s  99
  444 00588 00000           CON(5)  =ABND
  445               * LAM Z
  446               * File  ISAP.s  100
  447 0058D 00000           CON(5)  =SEMI
  448               * File  ISAP.s  101
  449 00592 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAP.a         Page    2

 %*                                Ext                   -   415
 %0<>                              Ext                   -   177   220   307
 %2                                Ext                   -   110   127   132
 %3                                Ext                   -   199
 %CHS                              Ext                   -   268   362   411
 %EXP                              Ext                   -   413
 %^                                Ext                   -   270   364
 ABND                              Ext                   -   437   444
 BIND                              Ext                   -    48   159
 BINT14                            Ext                   -    36
 CHR_m                             Ext                   -   279   424
 CK1&Dispatch                      Ext                   -    33
 ClrDA1IsStat                      Ext                   -   181
 DISPROW1                          Ext                   -   188
 DOCOL                             Ext                   -    31    37   179
                                         222   309
 DOCSTR                            Ext                   -    59    63    75
                                          88   104   107   124   129   134   171
                                         184   214   280   301   330   379   398
                                         425
 DOEXT                             Ext                   -    51    70    83
                                          95   116   166   209   274   296   325
                                         374   393   419
 DOLAM                             Ext                   -    44   143   146
                                         149   152   155   163   206   224   229
                                         234   238   246   252   256   260   293
                                         311   316   321   340   346   350   354
                                         366   370   389
 DOLIST                            Ext                   -    43   142
 DOREAL                            Ext                   -    54    71    84
                                          98   119   167   190   194   210   275
                                         297   326   375   394   420
 DOROMP                            Ext                   -   404
=RomId                             Abs     806 #00000326 -    19
 SEMI                              Ext                   -    47    68    79
                                          92   114   140   158   175   202   218
                                         285   290   305   334   383   402   430
                                         435   447   449
 UM*                               Ext                   -   242   264   272
                                         336   358   387   407   417
 UM+                               Ext                   -   244   338
 UM-                               Ext                   -   385
 UM/                               Ext                   -   250   266   344
                                         360   409
 UM<=?                             Ext                   -   219
 UM>?                              Ext                   -   176   306
 UMCONV                            Ext                   -   287   432
 UMSI                              Ext                   -    40    80
 case                              Ext                   -   178   221   308
 um*                               Ext                   -   137
 um/                               Ext                   -    66   112   138
 umEND                             Ext                   -    67    78    91
                                         113   139   174   217   284   304   333
                                         382   401   429
 umP                               Ext                   -   283   428
 um^                               Ext                   -   111   128   133
 xBEEP                             Ext                   -   198
 xFREEZE                           Ext                   -   200
=xISAP                             Rel       6 #00000006 -    29
 ~xISAP                            Ext                   -    28
 ~xISAT                            Ext                   -   405
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
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
