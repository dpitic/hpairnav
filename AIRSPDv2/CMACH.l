Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)                                      CMACH.a        Page    1

    1               * File  CMACH.s 1
    2               * RPL
    3               * File  CMACH.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CMACH.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               *********************************************************************
    6               * NAME:            CMACH
    7               * DESCRIPTION:     Calculates Mach number from pressure altitude and
    8               *                  calivrated air speed.
    9               * INPUT:     vc    Calibrated airspeed (knots)
   10               *            pa    Pressure altitude, PA
   11               * OUTPUT:    STACK Mach number
   12               *            M     Mach number (global)
   13               * OTHER VAR: p1    ISA pressure at pressure altitude PA
   14               *            p0    ISA pressure at sea level
   15               *            \970  ISA density at sea level
   16               *
   17               * File  CMACH.s 15
   18               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPD.h
   19
   20               =RomId  EQU     #328
   21               * ROMID set to 328
   22
   23
   24
   25
   26
   27
   28
   29
   30               *|| Resuming file CMACH.s at line 15
   31 00000         =CMACH
   32               * File  CMACH.s 17
   33 00000 00000           CON(5)  =DOCOL
   34               * File  CMACH.s 18
   35 00005 00000           CON(5)  =DOROMP
   36 0000A 623             CON(3)  #326
   37 0000D 200             CON(3)  #2
   38               * p1 = ISAP[PA]
   39               * File  CMACH.s 19
   40 00010 00000           CON(5)  =DOEXT
   41 00015 00000           CON(5)  =DOREAL
   42 0001A 000             NIBHEX  000
   43 0001D 0000000         NIBHEX  000000000000
            00000
   44 00029 0               NIBHEX  0
   45 0002A 00000           CON(5)  =DOCSTR
   46 0002F 70000           CON(5)  7
   47 00034 D6              NIBASC  \m\
   48 00036 00000           CON(5)  =umEND
   49 0003B 00000           CON(5)  =SEMI
   50               * File  CMACH.s 20
   51 00040 00000           CON(5)  =DOROMP
   52 00045 623             CON(3)  #326
   53 00048 200             CON(3)  #2
   54               * p0 = ISAP[0_ft]
   55               * File  CMACH.s 21
   56 0004B 00000           CON(5)  =DOEXT
   57 00050 00000           CON(5)  =DOREAL
   58 00055 000             NIBHEX  000
   59 00058 0000000         NIBHEX  000000000000
            00000
   60 00064 0               NIBHEX  0
   61 00065 00000           CON(5)  =DOCSTR
   62 0006A 70000           CON(5)  7
   63 0006F D6              NIBASC  \m\
   64 00071 00000           CON(5)  =umEND
   65 00076 00000           CON(5)  =SEMI
   66               * File  CMACH.s 22
   67 0007B 00000           CON(5)  =DOROMP
   68 00080 623             CON(3)  #326
   69 00083 300             CON(3)  #3
   70               * \970 = ISA\97[0_ft]
   71               * File  CMACH.s 23
   72 00086 00000           CON(5)  =DOREAL
   73 0008B 000             NIBHEX  000
   74 0008E 0000000         NIBHEX  000000000041
            00041
   75 0009A 0               NIBHEX  0
   76               * k = 1.4 for STD atmos.
   77               * File  CMACH.s 24
   78 0009B 00000           CON(5)  =DOLIST
   79 000A0 00000           CON(5)  =DOLAM
   80 000A5 20              CON(2)  2
   81 000A7 6736            NIBASC  \vc\
   82 000AB 00000           CON(5)  =DOLAM
   83 000B0 20              CON(2)  2
   84 000B2 0713            NIBASC  \p1\
   85 000B6 00000           CON(5)  =DOLAM
   86 000BB 20              CON(2)  2
   87 000BD 0703            NIBASC  \p0\
   88 000C1 00000           CON(5)  =DOLAM
   89 000C6 20              CON(2)  2
   90 000C8 79              CON(2)  #97
   91 000CA 03              NIBASC  \0\
   92 000CC 00000           CON(5)  =DOLAM
   93 000D1 10              CON(2)  1
   94 000D3 B6              NIBASC  \k\
   95 000D5 00000           CON(5)  =SEMI
   96 000DA 00000           CON(5)  =BIND
   97               * File  CMACH.s 25
   98 000DF 00000           CON(5)  =DOSYMB
   99               * File  CMACH.s 26
  100 000E4 00000           CON(5)  =DOLAM
  101 000E9 20              CON(2)  2
  102 000EB 6736            NIBASC  \vc\
  103               * File  CMACH.s 27
  104 000EF 00000           CON(5)  =%2
  105               * File  CMACH.s 28
  106 000F4 00000           CON(5)  =x^
  107               * vc^2
  108               * File  CMACH.s 29
  109
  110               * File  CMACH.s 30
  111 000F9 00000           CON(5)  =%2
  112 000FE 00000           CON(5)  =DOLAM
  113 00103 10              CON(2)  1
  114 00105 B6              NIBASC  \k\
  115 00107 00000           CON(5)  =x*
  116               * File  CMACH.s 31
  117 0010C 00000           CON(5)  =DOLAM
  118 00111 10              CON(2)  1
  119 00113 B6              NIBASC  \k\
  120 00115 00000           CON(5)  =%1
  121 0011A 00000           CON(5)  =x-
  122               * File  CMACH.s 32
  123 0011F 00000           CON(5)  =x/
  124               * 2*k/[k-1]
  125               * File  CMACH.s 33
  126
  127               * File  CMACH.s 34
  128 00124 00000           CON(5)  =DOLAM
  129 00129 20              CON(2)  2
  130 0012B 0703            NIBASC  \p0\
  131 0012F 00000           CON(5)  =DOLAM
  132 00134 20              CON(2)  2
  133 00136 79              CON(2)  #97
  134 00138 03              NIBASC  \0\
  135 0013A 00000           CON(5)  =x/
  136               * p0/\970
  137               * File  CMACH.s 35
  138 0013F 00000           CON(5)  =x*
  139               * [2*k/[k-1] * p0/\970
  140               * File  CMACH.s 36
  141
  142               * File  CMACH.s 37
  143 00144 00000           CON(5)  =%1
  144               * 1
  145               * File  CMACH.s 38
  146 00149 00000           CON(5)  =DOLAM
  147 0014E 20              CON(2)  2
  148 00150 0713            NIBASC  \p1\
  149 00154 00000           CON(5)  =DOLAM
  150 00159 20              CON(2)  2
  151 0015B 0703            NIBASC  \p0\
  152 0015F 00000           CON(5)  =x/
  153               * p1/p0
  154               * File  CMACH.s 39
  155
  156               * File  CMACH.s 40
  157 00164 00000           CON(5)  =%1
  158               * 1
  159               * File  CMACH.s 41
  160 00169 00000           CON(5)  =DOLAM
  161 0016E 10              CON(2)  1
  162 00170 B6              NIBASC  \k\
  163 00172 00000           CON(5)  =%1
  164 00177 00000           CON(5)  =x-
  165               * File  CMACH.s 42
  166 0017C 00000           CON(5)  =%2
  167 00181 00000           CON(5)  =x/
  168               * [k-1]/2
  169               * File  CMACH.s 43
  170 00186 00000           CON(5)  =DOIDNT
  171 0018B 10              CON(2)  1
  172 0018D D4              NIBASC  \M\
  173               * File  CMACH.s 44
  174 0018F 00000           CON(5)  =%2
  175 00194 00000           CON(5)  =x^
  176               * M^2
  177               * File  CMACH.s 45
  178 00199 00000           CON(5)  =x*
  179               * File  CMACH.s 46
  180 0019E 00000           CON(5)  =x+
  181               * 1 + [k-1]/2*M^2
  182               * File  CMACH.s 47
  183
  184               * File  CMACH.s 48
  185 001A3 00000           CON(5)  =DOLAM
  186 001A8 10              CON(2)  1
  187 001AA B6              NIBASC  \k\
  188               * File  CMACH.s 49
  189 001AC 00000           CON(5)  =DOLAM
  190 001B1 10              CON(2)  1
  191 001B3 B6              NIBASC  \k\
  192 001B5 00000           CON(5)  =%1
  193 001BA 00000           CON(5)  =x-
  194               * File  CMACH.s 50
  195 001BF 00000           CON(5)  =x/
  196               * k/[k-1]
  197               * File  CMACH.s 51
  198 001C4 00000           CON(5)  =x^
  199               * [1 + [k-1]/2*M^2]^[k/[k-1]]
  200               * File  CMACH.s 52
  201
  202               * File  CMACH.s 53
  203 001C9 00000           CON(5)  =%1
  204 001CE 00000           CON(5)  =x-
  205               * - 1
  206               * File  CMACH.s 54
  207 001D3 00000           CON(5)  =x*
  208               * * p1/p0
  209               * File  CMACH.s 55
  210 001D8 00000           CON(5)  =x+
  211               * + 1
  212               * File  CMACH.s 56
  213
  214               * File  CMACH.s 57
  215 001DD 00000           CON(5)  =DOLAM
  216 001E2 10              CON(2)  1
  217 001E4 B6              NIBASC  \k\
  218 001E6 00000           CON(5)  =%1
  219 001EB 00000           CON(5)  =x-
  220               * File  CMACH.s 58
  221 001F0 00000           CON(5)  =DOLAM
  222 001F5 10              CON(2)  1
  223 001F7 B6              NIBASC  \k\
  224 001F9 00000           CON(5)  =x/
  225               * [k-1]/k
  226               * File  CMACH.s 59
  227 001FE 00000           CON(5)  =x^
  228               * File  CMACH.s 60
  229
  230               * File  CMACH.s 61
  231 00203 00000           CON(5)  =%1
  232 00208 00000           CON(5)  =x-
  233               * - 1
  234               * File  CMACH.s 62
  235
  236               * File  CMACH.s 63
  237 0020D 00000           CON(5)  =x*
  238               * File  CMACH.s 64
  239 00212 00000           CON(5)  =x=
  240               * File  CMACH.s 65
  241 00217 00000           CON(5)  =SEMI
  242               * File  CMACH.s 66
  243 0021C 00000           CON(5)  ='
  244 00221 00000           CON(5)  =DOIDNT
  245 00226 10              CON(2)  1
  246 00228 D4              NIBASC  \M\
  247               * Solve for Mach no. M [global]
  248               * File  CMACH.s 67
  249 0022A 00000           CON(5)  =DOREAL
  250 0022F 999             NIBHEX  999
  251 00232 0000000         NIBHEX  000000000005
            00005
  252 0023E 0               NIBHEX  0
  253               * Guess value
  254               * File  CMACH.s 68
  255 0023F 00000           CON(5)  =xROOT
  256               * Solve for Mach no. M [global]
  257               * File  CMACH.s 69
  258 00244 00000           CON(5)  =ABND
  259               * LAMs vc p1 p0 \970 k
  260               * File  CMACH.s 70
  261 00249 00000           CON(5)  =DOLIST
  262 0024E 00000           CON(5)  =DOIDNT
  263 00253 20              CON(2)  2
  264 00255 6534            NIBASC  \VC\
  265 00259 00000           CON(5)  =DOIDNT
  266 0025E 20              CON(2)  2
  267 00260 0514            NIBASC  \PA\
  268 00264 00000           CON(5)  =DOIDNT
  269 00269 10              CON(2)  1
  270 0026B D4              NIBASC  \M\
  271               * VC PA & M avail. as outputs
  272               * File  CMACH.s 71
  273 0026D 00000           CON(5)  =DOLIST
  274 00272 00000           CON(5)  =DOCSTR
  275 00277 B0000           CON(5)  11
  276 0027C 451445          NIBASC  \TAT\
  277 00282 00000           CON(5)  =DOCOL
  278               * Input TAT
  279               * File  CMACH.s 72
  280 00287 00000           CON(5)  =CK1&Dispatch
  281               * Must have 1 argument
  282               * File  CMACH.s 73
  283 0028C 00000           CON(5)  =BINT1
  284 00291 00000           CON(5)  =DOCOL
  285               * Real number
  286               * File  CMACH.s 74
  287 00296 00000           CON(5)  =DOCSTR
  288 0029B 90000           CON(5)  9
  289 002A0 0B              CON(2)  #B0
  290 002A2 34              NIBASC  \C\
  291 002A4 00000           CON(5)  =umEND
  292 002A9 00000           CON(5)  =BINT3
  293 002AE 00000           CON(5)  =EXTN
  294               * Add default deg C units
  295               * File  CMACH.s 75
  296 002B3 00000           CON(5)  =DUP
  297               * File  CMACH.s 76
  298 002B8 00000           CON(5)  ='
  299 002BD 00000           CON(5)  =DOIDNT
  300 002C2 20              CON(2)  2
  301 002C4 4523            NIBASC  \T2\
  302 002C8 00000           CON(5)  =STO
  303               * STO in GLOBAL var T2
  304               * File  CMACH.s 77
  305 002CD 00000           CON(5)  =DOCSTR
  306 002D2 B0000           CON(5)  11
  307 002D7 451445          NIBASC  \TAT\
  308 002DD 00000           CON(5)  =>TAG
  309               * TAG
  310               * File  CMACH.s 78
  311 002E2 00000           CON(5)  =DOIDNT
  312 002E7 10              CON(2)  1
  313 002E9 D4              NIBASC  \M\
  314 002EB 00000           CON(5)  =DOIDNT
  315 002F0 20              CON(2)  2
  316 002F2 4523            NIBASC  \T2\
  317 002F6 00000           CON(5)  =DOROMP
  318 002FB 000000          CON(6)  =~CSAT
  319               * Calc. SAT
  320               * File  CMACH.s 79
  321 00301 00000           CON(5)  =DUP
  322               * File  CMACH.s 80
  323 00306 00000           CON(5)  ='
  324 0030B 00000           CON(5)  =DOIDNT
  325 00310 20              CON(2)  2
  326 00312 4513            NIBASC  \T1\
  327 00316 00000           CON(5)  =STO
  328               * STO SAT in GLOBAL var T1
  329               * File  CMACH.s 81
  330 0031B 00000           CON(5)  =DOCSTR
  331 00320 B0000           CON(5)  11
  332 00325 351445          NIBASC  \SAT\
  333 0032B 00000           CON(5)  =>TAG
  334               * File  CMACH.s 82
  335 00330 00000           CON(5)  =DOIDNT
  336 00335 10              CON(2)  1
  337 00337 D4              NIBASC  \M\
  338 00339 00000           CON(5)  =DOIDNT
  339 0033E 20              CON(2)  2
  340 00340 4513            NIBASC  \T1\
  341 00344 00000           CON(5)  =DOROMP
  342 00349 000000          CON(6)  =~TASMS
  343               * Calc. TAS from Mach no. &
  344               * File  CMACH.s 83
  345 0034F 00000           CON(5)  =DUP
  346               * SAT
  347               * File  CMACH.s 84
  348 00354 00000           CON(5)  ='
  349 00359 00000           CON(5)  =DOIDNT
  350 0035E 20              CON(2)  2
  351 00360 6513            NIBASC  \V1\
  352 00364 00000           CON(5)  =STO
  353               * STO TAS in GLOBAL var V1
  354               * File  CMACH.s 85
  355 00369 00000           CON(5)  =DOCSTR
  356 0036E B0000           CON(5)  11
  357 00373 451435          NIBASC  \TAS\
  358 00379 00000           CON(5)  =>TAG
  359               * TAG
  360               * File  CMACH.s 86
  361 0037E 00000           CON(5)  =DOLIST
  362 00383 00000           CON(5)  =DOIDNT
  363 00388 20              CON(2)  2
  364 0038A 6534            NIBASC  \VC\
  365 0038E 00000           CON(5)  =DOIDNT
  366 00393 20              CON(2)  2
  367 00395 0514            NIBASC  \PA\
  368 00399 00000           CON(5)  =DOIDNT
  369 0039E 10              CON(2)  1
  370 003A0 D4              NIBASC  \M\
  371 003A2 00000           CON(5)  =DOIDNT
  372 003A7 20              CON(2)  2
  373 003A9 4523            NIBASC  \T2\
  374 003AD 00000           CON(5)  =DOIDNT
  375 003B2 20              CON(2)  2
  376 003B4 4513            NIBASC  \T1\
  377 003B8 00000           CON(5)  =DOIDNT
  378 003BD 20              CON(2)  2
  379 003BF 6513            NIBASC  \V1\
  380               * New CST menu
  381               * File  CMACH.s 87
  382 003C3 00000           CON(5)  =DOLIST
  383 003C8 00000           CON(5)  =DOCSTR
  384 003CD B0000           CON(5)  11
  385 003D2 E45475          NIBASC  \NEW\
  386 003D8 00000           CON(5)  =DOCOL
  387 003DD 00000           CON(5)  =DOROMP
  388 003E2 000000          CON(6)  =~xASPDMNU
  389 003E8 00000           CON(5)  =SEMI
  390 003ED 00000           CON(5)  =SEMI
  391               * File  CMACH.s 88
  392 003F2 00000           CON(5)  =SEMI
  393 003F7 00000           CON(5)  =xMENU
  394               * File  CMACH.s 89
  395 003FC 00000           CON(5)  =SEMI
  396               * File  CMACH.s 90
  397 00401 00000           CON(5)  =SEMI
  398 00406 00000           CON(5)  =SEMI
  399               * File  CMACH.s 91
  400 0040B 00000           CON(5)  =DOLIST
  401 00410 00000           CON(5)  =DOCSTR
  402 00415 B0000           CON(5)  11
  403 0041A 351445          NIBASC  \SAT\
  404 00420 00000           CON(5)  =DOCOL
  405               * Input SAT
  406               * File  CMACH.s 92
  407 00425 00000           CON(5)  =CK1&Dispatch
  408               * Must have 1 argument
  409               * File  CMACH.s 93
  410 0042A 00000           CON(5)  =BINT1
  411 0042F 00000           CON(5)  =DOCOL
  412               * Real number
  413               * File  CMACH.s 94
  414 00434 00000           CON(5)  =DOCSTR
  415 00439 90000           CON(5)  9
  416 0043E 0B              CON(2)  #B0
  417 00440 34              NIBASC  \C\
  418 00442 00000           CON(5)  =umEND
  419 00447 00000           CON(5)  =BINT3
  420 0044C 00000           CON(5)  =EXTN
  421               * Add default deg C units
  422               * File  CMACH.s 95
  423 00451 00000           CON(5)  =DUP
  424               * File  CMACH.s 96
  425 00456 00000           CON(5)  ='
  426 0045B 00000           CON(5)  =DOIDNT
  427 00460 20              CON(2)  2
  428 00462 4513            NIBASC  \T1\
  429 00466 00000           CON(5)  =STO
  430               * STO in GLOBAL var T1
  431               * File  CMACH.s 97
  432 0046B 00000           CON(5)  =DOCSTR
  433 00470 B0000           CON(5)  11
  434 00475 351445          NIBASC  \SAT\
  435 0047B 00000           CON(5)  =>TAG
  436               * TAG
  437               * File  CMACH.s 98
  438 00480 00000           CON(5)  =DOIDNT
  439 00485 10              CON(2)  1
  440 00487 D4              NIBASC  \M\
  441 00489 00000           CON(5)  =DOIDNT
  442 0048E 20              CON(2)  2
  443 00490 4513            NIBASC  \T1\
  444 00494 00000           CON(5)  =DOROMP
  445 00499 000000          CON(6)  =~CTAT
  446               * Calc. SAT
  447               * File  CMACH.s 99
  448 0049F 00000           CON(5)  =DUP
  449               * File  CMACH.s 100
  450 004A4 00000           CON(5)  ='
  451 004A9 00000           CON(5)  =DOIDNT
  452 004AE 20              CON(2)  2
  453 004B0 4523            NIBASC  \T2\
  454 004B4 00000           CON(5)  =STO
  455               * File  CMACH.s 101
  456 004B9 00000           CON(5)  =DOCSTR
  457 004BE B0000           CON(5)  11
  458 004C3 451445          NIBASC  \TAT\
  459 004C9 00000           CON(5)  =>TAG
  460               * File  CMACH.s 102
  461 004CE 00000           CON(5)  =DOIDNT
  462 004D3 10              CON(2)  1
  463 004D5 D4              NIBASC  \M\
  464 004D7 00000           CON(5)  =DOIDNT
  465 004DC 20              CON(2)  2
  466 004DE 4513            NIBASC  \T1\
  467 004E2 00000           CON(5)  =DOROMP
  468 004E7 000000          CON(6)  =~TASMS
  469               * File  CMACH.s 103
  470 004ED 00000           CON(5)  =DUP
  471               * File  CMACH.s 104
  472 004F2 00000           CON(5)  ='
  473 004F7 00000           CON(5)  =DOIDNT
  474 004FC 20              CON(2)  2
  475 004FE 6513            NIBASC  \V1\
  476 00502 00000           CON(5)  =STO
  477               * File  CMACH.s 105
  478 00507 00000           CON(5)  =DOCSTR
  479 0050C B0000           CON(5)  11
  480 00511 451435          NIBASC  \TAS\
  481 00517 00000           CON(5)  =>TAG
  482               * File  CMACH.s 106
  483 0051C 00000           CON(5)  =DOLIST
  484 00521 00000           CON(5)  =DOIDNT
  485 00526 20              CON(2)  2
  486 00528 6534            NIBASC  \VC\
  487 0052C 00000           CON(5)  =DOIDNT
  488 00531 20              CON(2)  2
  489 00533 0514            NIBASC  \PA\
  490 00537 00000           CON(5)  =DOIDNT
  491 0053C 10              CON(2)  1
  492 0053E D4              NIBASC  \M\
  493 00540 00000           CON(5)  =DOIDNT
  494 00545 20              CON(2)  2
  495 00547 4523            NIBASC  \T2\
  496 0054B 00000           CON(5)  =DOIDNT
  497 00550 20              CON(2)  2
  498 00552 4513            NIBASC  \T1\
  499 00556 00000           CON(5)  =DOIDNT
  500 0055B 20              CON(2)  2
  501 0055D 6513            NIBASC  \V1\
  502               * New CST menu
  503               * File  CMACH.s 107
  504 00561 00000           CON(5)  =DOLIST
  505 00566 00000           CON(5)  =DOCSTR
  506 0056B B0000           CON(5)  11
  507 00570 E45475          NIBASC  \NEW\
  508 00576 00000           CON(5)  =DOCOL
  509 0057B 00000           CON(5)  =DOROMP
  510 00580 000000          CON(6)  =~xASPDMNU
  511 00586 00000           CON(5)  =SEMI
  512 0058B 00000           CON(5)  =SEMI
  513               * File  CMACH.s 108
  514 00590 00000           CON(5)  =SEMI
  515 00595 00000           CON(5)  =xMENU
  516               * File  CMACH.s 109
  517 0059A 00000           CON(5)  =SEMI
  518               * File  CMACH.s 110
  519 0059F 00000           CON(5)  =SEMI
  520 005A4 00000           CON(5)  =SEMI
  521               * File  CMACH.s 111
  522 005A9 00000           CON(5)  =DOLIST
  523 005AE 00000           CON(5)  =DOCSTR
  524 005B3 B0000           CON(5)  11
  525 005B8 E45475          NIBASC  \NEW\
  526 005BE 00000           CON(5)  =DOCOL
  527 005C3 00000           CON(5)  =DOROMP
  528 005C8 000000          CON(6)  =~xASPDMNU
  529 005CE 00000           CON(5)  =SEMI
  530 005D3 00000           CON(5)  =SEMI
  531               * Start new problem
  532               * File  CMACH.s 112
  533 005D8 00000           CON(5)  =SEMI
  534 005DD 00000           CON(5)  =xMENU
  535               * File  CMACH.s 113
  536 005E2 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Symbol Table                       CMACH.a        Page    2

 %1                                Ext                   -   120   143   157
                                         163   192   203   218   231
 %2                                Ext                   -   104   111   166
                                         174
 '                                 Ext                   -   243   298   323
                                         348   425   450   472
 >TAG                              Ext                   -   308   333   358
                                         435   459   481
 ABND                              Ext                   -   258
 BIND                              Ext                   -    96
 BINT1                             Ext                   -   283   410
 BINT3                             Ext                   -   292   419
 CK1&Dispatch                      Ext                   -   280   407
=CMACH                             Rel       0 #00000000 -    31
 DOCOL                             Ext                   -    33   277   284
                                         386   404   411   508   526
 DOCSTR                            Ext                   -    45    61   274
                                         287   305   330   355   383   401   414
                                         432   456   478   505   523
 DOEXT                             Ext                   -    40    56
 DOIDNT                            Ext                   -   170   244   262
                                         265   268   299   311   314   324   335
                                         338   349   362   365   368   371   374
                                         377   426   438   441   451   461   464
                                         473   484   487   490   493   496   499
 DOLAM                             Ext                   -    79    82    85
                                          88    92   100   112   117   128   131
                                         146   149   160   185   189   215   221
 DOLIST                            Ext                   -    78   261   273
                                         361   382   400   483   504   522
 DOREAL                            Ext                   -    41    57    72
                                         249
 DOROMP                            Ext                   -    35    51    67
                                         317   341   387   444   467   509   527
 DOSYMB                            Ext                   -    98
 DUP                               Ext                   -   296   321   345
                                         423   448   470
 EXTN                              Ext                   -   293   420
=RomId                             Abs     808 #00000328 -    20
 SEMI                              Ext                   -    49    65    95
                                         241   389   390   392   395   397   398
                                         511   512   514   517   519   520   529
                                         530   533   536
 STO                               Ext                   -   302   327   352
                                         429   454   476
 umEND                             Ext                   -    48    64   291
                                         418
 x*                                Ext                   -   115   138   178
                                         207   237
 x+                                Ext                   -   180   210
 x-                                Ext                   -   121   164   193
                                         204   219   232
 x/                                Ext                   -   123   135   152
                                         167   195   224
 x=                                Ext                   -   239
 xMENU                             Ext                   -   393   515   534
 xROOT                             Ext                   -   255
 x^                                Ext                   -   106   175   198
                                         227
 ~CSAT                             Ext                   -   318
 ~CTAT                             Ext                   -   445
 ~TASMS                            Ext                   -   342   468
 ~xASPDMNU                         Ext                   -   388   510   528
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Statistics                         CMACH.a        Page    3

Input Parameters

  Source file name is CMACH.a

  Listing file name is CMACH.l

  Object file name is CMACH.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
