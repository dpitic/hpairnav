Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)                                      ISAP.a         Page    1

    1             * File  ISAP.s  1
    2             * RPL
    3             * File  ISAP.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAP.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5             ********************************************************************
    6             * Name:                                 ISAP
    7             * Library #:    326h = 806d
    8             * Description:  Calculates the standard pressure in the ISA for a
    9             *               given altitude.  Output in mbar units.
   10             * Versioin:     1.23
   11             * Date:         10 June 2009
   12             * Machine:      HP48
   13             *               HP50
   14             * Usage:        ( u -> u )
   15             * Input:                                                                STACK                                   Geopotential altitude (with units)
   16             * Output:       STACK     Standard ISA pressure (mbar)
   17             *
   18             * File  ISAP.s  16
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
   33             *|| Resuming file ISAP.s at line 16
   34             * File  ISAP.s  18
   35             * File  ISAP.s  19
   36             * File  ISAP.s  20
   37 00000 00000         CON(6)  =~xISAP
            0
   38 00006       =xISAP
   39             * File  ISAP.s  21
   40 00006 00000         CON(5)  =DOCOL
   41             * File  ISAP.s  22
   42 0000B 00000         CON(5)  =CK1&Dispatch
   43             * Check for 1 argument
   44             * File  ISAP.s  23
   45 00010 00000         CON(5)  =unitob
   46 00015 00000         CON(5)  =DOCOL
   47             * Unit object
   48             * File  ISAP.s  24
   49 0001A 00000         CON(5)  =UMSI
   50             * Conver geopotential altitude to SI units
   51             * File  ISAP.s  25
   52 0001F 00000         CON(5)  =DOEXT
   53             * Temp. lapse rate 0 m <= Z <= 11 km
   54             * File  ISAP.s  26
   55 00024 00000         CON(5)  =DOREAL
   56 00029 799           NIBHEX  799
   57 0002C 00000         NIBHEX  000000000056
            00000
            56
   58 00038 9             NIBHEX  9
   59 00039 00000         CON(5)  =DOCSTR
   60 0003E 70000         CON(5)  7
   61 00043 B4            NIBASC  \K\
   62 00045 00000         CON(5)  =DOCSTR
   63 0004A 70000         CON(5)  7
   64 0004F D6            NIBASC  \m\
   65 00051 00000         CON(5)  =um/
   66 00056 00000         CON(5)  =umEND
   67 0005B 00000         CON(5)  =SEMI
   68             * File  ISAP.s  27
   69 00060 00000         CON(5)  =DOEXT
   70 00065 00000         CON(5)  =DOREAL
   71 0006A 500           NIBHEX  500
   72 0006D 00000         NIBHEX  000000523101
            05231
            01
   73 00079 0             NIBHEX  0
   74 0007A 00000         CON(5)  =DOCSTR
   75 0007F 90000         CON(5)  9
   76 00084 0516          NIBASC  \Pa\
   77 00088 00000         CON(5)  =umEND
   78 0008D 00000         CON(5)  =SEMI
   79 00092 00000         CON(5)  =UMSI
   80             * ISA sea level pressure
   81             * File  ISAP.s  28
   82 00097 00000         CON(5)  =DOEXT
   83 0009C 00000         CON(5)  =DOREAL
   84 000A1 200           NIBHEX  200
   85 000A4 00000         NIBHEX  000000051882
            00518
            82
   86 000B0 0             NIBHEX  0
   87 000B1 00000         CON(5)  =DOCSTR
   88 000B6 70000         CON(5)  7
   89 000BB B4            NIBASC  \K\
   90 000BD 00000         CON(5)  =umEND
   91 000C2 00000         CON(5)  =SEMI
   92             * ISA sea level temperature
   93             * File  ISAP.s  29
   94 000C7 00000         CON(5)  =DOEXT
   95             * Sea level acceleration of gravity
   96             * File  ISAP.s  30
   97 000CC 00000         CON(5)  =DOREAL
   98 000D1 000           NIBHEX  000
   99 000D4 00000         NIBHEX  000005466089
            54660
            89
  100 000E0 0             NIBHEX  0
  101 000E1 00000         CON(5)  =DOCSTR
  102 000E6 70000         CON(5)  7
  103 000EB D6            NIBASC  \m\
  104 000ED 00000         CON(5)  =DOCSTR
  105 000F2 70000         CON(5)  7
  106 000F7 37            NIBASC  \s\
  107 000F9 00000         CON(5)  =%2
  108 000FE 00000         CON(5)  =um^
  109 00103 00000         CON(5)  =um/
  110 00108 00000         CON(5)  =umEND
  111 0010D 00000         CON(5)  =SEMI
  112             * File  ISAP.s  31
  113 00112 00000         CON(5)  =DOEXT
  114             * Gas constant for the ISA
  115             * File  ISAP.s  32
  116 00117 00000         CON(5)  =DOREAL
  117 0011C 200           NIBHEX  200
  118 0011F 00000         NIBHEX  000008250782
            82507
            82
  119 0012B 0             NIBHEX  0
  120             * File  ISAP.s  33
  121 0012C 00000         CON(5)  =DOCSTR
  122 00131 70000         CON(5)  7
  123 00136 D6            NIBASC  \m\
  124 00138 00000         CON(5)  =%2
  125 0013D 00000         CON(5)  =um^
  126 00142 00000         CON(5)  =DOCSTR
  127 00147 70000         CON(5)  7
  128 0014C 37            NIBASC  \s\
  129 0014E 00000         CON(5)  =%2
  130 00153 00000         CON(5)  =um^
  131 00158 00000         CON(5)  =DOCSTR
  132 0015D 70000         CON(5)  7
  133 00162 B4            NIBASC  \K\
  134 00164 00000         CON(5)  =um*
  135 00169 00000         CON(5)  =um/
  136             * File  ISAP.s  34
  137 0016E 00000         CON(5)  =umEND
  138 00173 00000         CON(5)  =SEMI
  139             * File  ISAP.s  35
  140 00178 00000         CON(5)  =DOLIST
  141 0017D 00000         CON(5)  =DOLAM
  142 00182 10            CON(2)  1
  143 00184 A5            NIBASC  \Z\
  144 00186 00000         CON(5)  =DOLAM
  145 0018B 10            CON(2)  1
  146 0018D FD            CON(2)  #DF
  147 0018F 00000         CON(5)  =DOLAM
  148 00194 20            CON(2)  2
  149 00196 0703          NIBASC  \p0\
  150 0019A 00000         CON(5)  =DOLAM
  151 0019F 20            CON(2)  2
  152 001A1 4503          NIBASC  \T0\
  153 001A5 00000         CON(5)  =DOLAM
  154 001AA 20            CON(2)  2
  155 001AC 7603          NIBASC  \g0\
  156 001B0 00000         CON(5)  =DOLAM
  157 001B5 10            CON(2)  1
  158 001B7 25            NIBASC  \R\
  159 001B9 00000         CON(5)  =SEMI
  160 001BE 00000         CON(5)  =BIND
  161             * Check if Z > 20 km
  162             * File  ISAP.s  37
  163 001C3 00000         CON(5)  =DOLAM
  164 001C8 10            CON(2)  1
  165 001CA A5            NIBASC  \Z\
  166             * File  ISAP.s  38
  167 001CC 00000         CON(5)  =DOEXT
  168 001D1 00000         CON(5)  =DOREAL
  169 001D6 400           NIBHEX  400
  170 001D9 00000         NIBHEX  000000000002
            00000
            02
  171 001E5 0             NIBHEX  0
  172 001E6 00000         CON(5)  =DOCSTR
  173 001EB 70000         CON(5)  7
  174 001F0 D6            NIBASC  \m\
  175 001F2 00000         CON(5)  =umEND
  176 001F7 00000         CON(5)  =SEMI
  177             * File  ISAP.s  39
  178 001FC 00000         CON(5)  =UM>?
  179 00201 00000         CON(5)  =%0<>
  180 00206 00000         CON(5)  =case
  181 0020B 00000         CON(5)  =DOCOL
  182             * Display warning message and error beep
  183             * File  ISAP.s  40
  184 00210 00000         CON(5)  =ERRBEEP
  185             * Message box parameters
  186             * File  ISAP.s  42
  187 00215 00000         CON(5)  =DOCSTR
  188 0021A F2000         CON(5)  47
  189 0021F 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

  190 00247 D6            NIBASC  \m\
  191             * message$
  192             * File  ISAP.s  43
  193 00249 00000         CON(5)  =TWELVE
  194             * #maxwidth
  195             * File  ISAP.s  44
  196 0024E 00000         CON(5)  =TEN
  197             * #minwidth
  198             * File  ISAP.s  45
  199 00253 00000         CON(5)  =DOROMP
  200 00258 00000         CON(6)  =~grobAlertIcon
            0
  201             * grob
  202             * File  ISAP.s  46
  203 0025E 00000         CON(5)  =DOROMP
  204 00263 00000         CON(6)  =~MsgBoxMenu
            0
  205             * menuobject
  206             * File  ISAP.s  47
  207 00269 00000         CON(5)  =DOROMP
  208 0026E 00000         CON(6)  =~DoMsgBox
            0
  209 00274 00000         CON(5)  =DROP
  210             * Draw the message box, DROP FLAG
  211             * File  ISAP.s  48
  212 00279 00000         CON(5)  =SEMI
  213             * Check if Z <= 11 km
  214             * File  ISAP.s  50
  215 0027E 00000         CON(5)  =DOLAM
  216 00283 10            CON(2)  1
  217 00285 A5            NIBASC  \Z\
  218             * File  ISAP.s  51
  219 00287 00000         CON(5)  =DOEXT
  220 0028C 00000         CON(5)  =DOREAL
  221 00291 400           NIBHEX  400
  222 00294 00000         NIBHEX  000000000011
            00000
            11
  223 002A0 0             NIBHEX  0
  224 002A1 00000         CON(5)  =DOCSTR
  225 002A6 70000         CON(5)  7
  226 002AB D6            NIBASC  \m\
  227 002AD 00000         CON(5)  =umEND
  228 002B2 00000         CON(5)  =SEMI
  229             * File  ISAP.s  52
  230 002B7 00000         CON(5)  =UM<=?
  231 002BC 00000         CON(5)  =%0<>
  232 002C1 00000         CON(5)  =case
  233 002C6 00000         CON(5)  =DOCOL
  234             * File  ISAP.s  53
  235 002CB 00000         CON(5)  =DOLAM
  236 002D0 20            CON(2)  2
  237 002D2 0703          NIBASC  \p0\
  238             * Calculate ISA pressure for
  239             * File  ISAP.s  54
  240 002D6 00000         CON(5)  =DOLAM
  241 002DB 20            CON(2)  2
  242 002DD 4503          NIBASC  \T0\
  243             * 0 m <= Z <= 11 km
  244             * File  ISAP.s  55
  245 002E1 00000         CON(5)  =DOLAM
  246 002E6 10            CON(2)  1
  247 002E8 FD            CON(2)  #DF
  248             * File  ISAP.s  56
  249 002EA 00000         CON(5)  =DOLAM
  250 002EF 10            CON(2)  1
  251 002F1 A5            NIBASC  \Z\
  252             * File  ISAP.s  57
  253 002F3 00000         CON(5)  =UM*
  254             * File  ISAP.s  58
  255 002F8 00000         CON(5)  =UM+
  256             * File  ISAP.s  59
  257 002FD 00000         CON(5)  =DOLAM
  258 00302 20            CON(2)  2
  259 00304 4503          NIBASC  \T0\
  260             * File  ISAP.s  60
  261 00308 00000         CON(5)  =UM/
  262             * File  ISAP.s  61
  263 0030D 00000         CON(5)  =DOLAM
  264 00312 20            CON(2)  2
  265 00314 7603          NIBASC  \g0\
  266             * File  ISAP.s  62
  267 00318 00000         CON(5)  =DOLAM
  268 0031D 10            CON(2)  1
  269 0031F 25            NIBASC  \R\
  270             * File  ISAP.s  63
  271 00321 00000         CON(5)  =DOLAM
  272 00326 10            CON(2)  1
  273 00328 FD            CON(2)  #DF
  274             * File  ISAP.s  64
  275 0032A 00000         CON(5)  =UM*
  276             * File  ISAP.s  65
  277 0032F 00000         CON(5)  =UM/
  278             * File  ISAP.s  66
  279 00334 00000         CON(5)  =%CHS
  280             * File  ISAP.s  67
  281 00339 00000         CON(5)  =%^
  282             * File  ISAP.s  68
  283 0033E 00000         CON(5)  =UM*
  284             * File  ISAP.s  69
  285 00343 00000         CON(5)  =DOEXT
  286 00348 00000         CON(5)  =DOREAL
  287 0034D 000           NIBHEX  000
  288 00350 00000         NIBHEX  000000000001
            00000
            01
  289 0035C 0             NIBHEX  0
  290 0035D 00000         CON(5)  =CHR_m
  291 00362 00000         CON(5)  =DOCSTR
  292 00367 B0000         CON(5)  11
  293 0036C 26162         NIBASC  \bar\
            7
  294 00372 00000         CON(5)  =umP
  295 00377 00000         CON(5)  =umEND
  296 0037C 00000         CON(5)  =SEMI
  297             * File  ISAP.s  70
  298 00381 00000         CON(5)  =UMCONV
  299             * Return ISA pressure in mbar
  300             * File  ISAP.s  71
  301 00386 00000         CON(5)  =SEMI
  302             * Check if Z > 11 km`
  303             * File  ISAP.s  73
  304 0038B 00000         CON(5)  =DOLAM
  305 00390 10            CON(2)  1
  306 00392 A5            NIBASC  \Z\
  307             * File  ISAP.s  74
  308 00394 00000         CON(5)  =DOEXT
  309 00399 00000         CON(5)  =DOREAL
  310 0039E 400           NIBHEX  400
  311 003A1 00000         NIBHEX  000000000011
            00000
            11
  312 003AD 0             NIBHEX  0
  313 003AE 00000         CON(5)  =DOCSTR
  314 003B3 70000         CON(5)  7
  315 003B8 D6            NIBASC  \m\
  316 003BA 00000         CON(5)  =umEND
  317 003BF 00000         CON(5)  =SEMI
  318             * File  ISAP.s  75
  319 003C4 00000         CON(5)  =UM>?
  320 003C9 00000         CON(5)  =%0<>
  321 003CE 00000         CON(5)  =case
  322 003D3 00000         CON(5)  =DOCOL
  323             * File  ISAP.s  76
  324 003D8 00000         CON(5)  =DOLAM
  325 003DD 20            CON(2)  2
  326 003DF 0703          NIBASC  \p0\
  327             * Calculate ISA pressure for
  328             * File  ISAP.s  77
  329 003E3 00000         CON(5)  =DOLAM
  330 003E8 20            CON(2)  2
  331 003EA 4503          NIBASC  \T0\
  332             * 11 km < Z <= 20 km
  333             * File  ISAP.s  78
  334 003EE 00000         CON(5)  =DOLAM
  335 003F3 10            CON(2)  1
  336 003F5 FD            CON(2)  #DF
  337             * File  ISAP.s  79
  338 003F7 00000         CON(5)  =DOEXT
  339 003FC 00000         CON(5)  =DOREAL
  340 00401 400           NIBHEX  400
  341 00404 00000         NIBHEX  000000000011
            00000
            11
  342 00410 0             NIBHEX  0
  343 00411 00000         CON(5)  =DOCSTR
  344 00416 70000         CON(5)  7
  345 0041B D6            NIBASC  \m\
  346 0041D 00000         CON(5)  =umEND
  347 00422 00000         CON(5)  =SEMI
  348             * File  ISAP.s  80
  349 00427 00000         CON(5)  =UM*
  350             * File  ISAP.s  81
  351 0042C 00000         CON(5)  =UM+
  352             * File  ISAP.s  82
  353 00431 00000         CON(5)  =DOLAM
  354 00436 20            CON(2)  2
  355 00438 4503          NIBASC  \T0\
  356             * File  ISAP.s  83
  357 0043C 00000         CON(5)  =UM/
  358             * File  ISAP.s  84
  359 00441 00000         CON(5)  =DOLAM
  360 00446 20            CON(2)  2
  361 00448 7603          NIBASC  \g0\
  362             * File  ISAP.s  85
  363 0044C 00000         CON(5)  =DOLAM
  364 00451 10            CON(2)  1
  365 00453 25            NIBASC  \R\
  366             * File  ISAP.s  86
  367 00455 00000         CON(5)  =DOLAM
  368 0045A 10            CON(2)  1
  369 0045C FD            CON(2)  #DF
  370             * File  ISAP.s  87
  371 0045E 00000         CON(5)  =UM*
  372             * File  ISAP.s  88
  373 00463 00000         CON(5)  =UM/
  374             * File  ISAP.s  89
  375 00468 00000         CON(5)  =%CHS
  376             * File  ISAP.s  90
  377 0046D 00000         CON(5)  =%^
  378             * File  ISAP.s  91
  379 00472 00000         CON(5)  =DOLAM
  380 00477 20            CON(2)  2
  381 00479 7603          NIBASC  \g0\
  382             * File  ISAP.s  92
  383 0047D 00000         CON(5)  =DOLAM
  384 00482 10            CON(2)  1
  385 00484 A5            NIBASC  \Z\
  386             * File  ISAP.s  93
  387 00486 00000         CON(5)  =DOEXT
  388 0048B 00000         CON(5)  =DOREAL
  389 00490 400           NIBHEX  400
  390 00493 00000         NIBHEX  000000000011
            00000
            11
  391 0049F 0             NIBHEX  0
  392 004A0 00000         CON(5)  =DOCSTR
  393 004A5 70000         CON(5)  7
  394 004AA D6            NIBASC  \m\
  395 004AC 00000         CON(5)  =umEND
  396 004B1 00000         CON(5)  =SEMI
  397             * File  ISAP.s  94
  398 004B6 00000         CON(5)  =UM-
  399             * File  ISAP.s  95
  400 004BB 00000         CON(5)  =UM*
  401             * File  ISAP.s  96
  402 004C0 00000         CON(5)  =DOLAM
  403 004C5 10            CON(2)  1
  404 004C7 25            NIBASC  \R\
  405             * File  ISAP.s  97
  406 004C9 00000         CON(5)  =DOEXT
  407 004CE 00000         CON(5)  =DOREAL
  408 004D3 400           NIBHEX  400
  409 004D6 00000         NIBHEX  000000000011
            00000
            11
  410 004E2 0             NIBHEX  0
  411 004E3 00000         CON(5)  =DOCSTR
  412 004E8 70000         CON(5)  7
  413 004ED D6            NIBASC  \m\
  414 004EF 00000         CON(5)  =umEND
  415 004F4 00000         CON(5)  =SEMI
  416             * File  ISAP.s  98
  417 004F9 00000         CON(5)  =DOROMP
  418 004FE 00000         CON(6)  =~xISAT
            0
  419             * File  ISAP.s  99
  420 00504 00000         CON(5)  =UM*
  421             * File  ISAP.s  100
  422 00509 00000         CON(5)  =UM/
  423             * File  ISAP.s  101
  424 0050E 00000         CON(5)  =%CHS
  425             * File  ISAP.s  102
  426 00513 00000         CON(5)  =%EXP
  427             * File  ISAP.s  103
  428 00518 00000         CON(5)  =%*
  429             * File  ISAP.s  104
  430 0051D 00000         CON(5)  =UM*
  431             * File  ISAP.s  105
  432 00522 00000         CON(5)  =DOEXT
  433 00527 00000         CON(5)  =DOREAL
  434 0052C 000           NIBHEX  000
  435 0052F 00000         NIBHEX  000000000001
            00000
            01
  436 0053B 0             NIBHEX  0
  437 0053C 00000         CON(5)  =CHR_m
  438 00541 00000         CON(5)  =DOCSTR
  439 00546 B0000         CON(5)  11
  440 0054B 26162         NIBASC  \bar\
            7
  441 00551 00000         CON(5)  =umP
  442 00556 00000         CON(5)  =umEND
  443 0055B 00000         CON(5)  =SEMI
  444             * File  ISAP.s  106
  445 00560 00000         CON(5)  =UMCONV
  446             * Return ISA pressure in mbar
  447             * File  ISAP.s  107
  448 00565 00000         CON(5)  =SEMI
  449             * File  ISAP.s  108
  450 0056A 00000         CON(5)  =ABND
  451             * Abandon temporary environment
  452             * File  ISAP.s  109
  453 0056F 00000         CON(5)  =SEMI
  454             * File  ISAP.s  110
  455 00574 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAP.a         Page    2

 %*                                Ext                   -   428
 %0<>                              Ext                   -   179   231   320
 %2                                Ext                   -   107   124   129
 %CHS                              Ext                   -   279   375   424
 %EXP                              Ext                   -   426
 %^                                Ext                   -   281   377
 ABND                              Ext                   -   450
 BIND                              Ext                   -   160
 CHR_m                             Ext                   -   290   437
 CK1&Dispatch                      Ext                   -    42
 DOCOL                             Ext                   -    40    46   181
                                         233   322
 DOCSTR                            Ext                   -    59    62    74
                                          87   101   104   121   126   131   172
                                         187   224   291   313   343   392   411
                                         438
 DOEXT                             Ext                   -    52    69    82
                                          94   113   167   219   285   308   338
                                         387   406   432
 DOLAM                             Ext                   -   141   144   147
                                         150   153   156   163   215   235   240
                                         245   249   257   263   267   271   304
                                         324   329   334   353   359   363   367
                                         379   383   402
 DOLIST                            Ext                   -   140
 DOREAL                            Ext                   -    55    70    83
                                          97   116   168   220   286   309   339
                                         388   407   433
 DOROMP                            Ext                   -   199   203   207
                                         417
 DROP                              Ext                   -   209
 ERRBEEP                           Ext                   -   184
=RomId                             Abs     806 #00000326 -    21
 SEMI                              Ext                   -    67    78    91
                                         111   138   159   176   212   228   296
                                         301   317   347   396   415   443   448
                                         453   455
 TEN                               Ext                   -   196
 TWELVE                            Ext                   -   193
 UM*                               Ext                   -   253   275   283
                                         349   371   400   420   430
 UM+                               Ext                   -   255   351
 UM-                               Ext                   -   398
 UM/                               Ext                   -   261   277   357
                                         373   422
 UM<=?                             Ext                   -   230
 UM>?                              Ext                   -   178   319
 UMCONV                            Ext                   -   298   445
 UMSI                              Ext                   -    49    79
 case                              Ext                   -   180   232   321
 um*                               Ext                   -   134
 um/                               Ext                   -    65   109   135
 umEND                             Ext                   -    66    77    90
                                         110   137   175   227   295   316   346
                                         395   414   442
 umP                               Ext                   -   294   441
 um^                               Ext                   -   108   125   130
 unitob                            Ext                   -    45
=xISAP                             Rel       6 #00000006 -    38
 ~DoMsgBox                         Ext                   -   208
 ~MsgBoxMenu                       Ext                   -   204
 ~grobAlertIcon                    Ext                   -   200
 ~xISAP                            Ext                   -    37
 ~xISAT                            Ext                   -   418
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
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
