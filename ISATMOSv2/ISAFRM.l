Saturn Assembler                                       Tue Apr 21 18:49:40 2009
V3.0.9 (04/15/2007)                                      ISAFRM.a       Page    1

    1               * File  ISAFRM.s        1
    2               * RPL
    3               * File  ISAFRM.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAFRM.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5               *********************************************************************
    6               * NAME:            ISAFRM
    7               * LIBRARY #:       326h = 806d
    8               * DESCRIPTION:     Displays the input/output form for the ISA library
    9               *                  Accepts input of any single property (with units)
   10               *                                                                                                                                               and calculates the remaining properties.  The logic
   11               *                  first looks to see if PA (pressure altitude) is
   12               *                  supplied and then calculates the remaining ISA
   13               *                  properties at that pressure altitude.  If PA is
   14               *                  NOT supplied, then it next looks for:
   15               *                    T1, P1 \971, A1 (all global variables)
   16               *                  in that order to solve for PA and then the
   17               *                  remaining ISA properties at that PA. All variables
   18               *                  are GLOBAL and the default return units are shown
   19               *                  in the var. descriptions.  Any consistent unit may
   20               *                  be used for the input arguments.
   21               * Version:                                                                      1.22
   22               * Date:            17 April 2009
   23               * INPUT/     PA     Geometric Altitude (Pressure altitude (feet))
   24               *   OUTPUT:  T1                                 Standard ISA temperature at PA (deg C)
   25               *                                                                                               P1     Standard ISA pressure at PA (mbar)
   26               *            \971   Standard ISA density at PA (kg/m^3)
   27               *            A1     Standard speed of sound in ISA at PA (knots)
   28               * File  ISAFRM.s        26
   29
   30               * File  ISAFRM.s        27
   31               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv2\ISATM.h
   32
   33               =RomId  EQU     #326
   34               * ROMID set to 326
   35
   36
   37
   38
   39
   40
   41
   42
   43               *|| Resuming file ISAFRM.s at line 27
   44 00000 000000          CON(6)  =~xISAFRM
   45 00006         =xISAFRM
   46               * File  ISAFRM.s        29
   47 00006 00000           CON(5)  =DOCOL
   48               * File  ISAFRM.s        30
   49 0000B 00000           CON(5)  =BEGIN
   50               * BEGIN loop
   51               * File  ISAFRM.s        31
   52 00010 00000           CON(5)  =DOROMP
   53 00015 000000          CON(6)  =~ISAform
   54               * Display ISA input/output form
   55               * File  ISAFRM.s        32
   56 0001B 00000           CON(5)  =WHILE
   57 00020 00000           CON(5)  =DOCOL
   58               * TRUE = OK is pressed
   59               * File  ISAFRM.s        33
   60 00025 00000           CON(5)  ='
   61 0002A 00000           CON(5)  =DOIDNT
   62 0002F 20              CON(2)  2
   63 00031 1413            NIBASC  \A1\
   64 00035 00000           CON(5)  =STO
   65               * STO speed of sound
   66               * File  ISAFRM.s        34
   67 0003A 00000           CON(5)  ='
   68 0003F 00000           CON(5)  =DOIDNT
   69 00044 20              CON(2)  2
   70 00046 79              CON(2)  #97
   71 00048 13              NIBASC  \1\
   72 0004A 00000           CON(5)  =STO
   73               * STO density
   74               * File  ISAFRM.s        35
   75 0004F 00000           CON(5)  ='
   76 00054 00000           CON(5)  =DOIDNT
   77 00059 20              CON(2)  2
   78 0005B 0513            NIBASC  \P1\
   79 0005F 00000           CON(5)  =STO
   80               * STO static pressure
   81               * File  ISAFRM.s        36
   82 00064 00000           CON(5)  ='
   83 00069 00000           CON(5)  =DOIDNT
   84 0006E 20              CON(2)  2
   85 00070 4513            NIBASC  \T1\
   86 00074 00000           CON(5)  =STO
   87               * STO static air temperature
   88               * File  ISAFRM.s        37
   89 00079 00000           CON(5)  ='
   90 0007E 00000           CON(5)  =DOIDNT
   91 00083 20              CON(2)  2
   92 00085 0514            NIBASC  \PA\
   93 00089 00000           CON(5)  =STO
   94               * STO pressure altitude
   95               * If Pressure Altitude is supplied
   96               * File  ISAFRM.s        39
   97 0008E 00000           CON(5)  =DOIDNT
   98 00093 20              CON(2)  2
   99 00095 0514            NIBASC  \PA\
  100 00099 00000           CON(5)  =NOVAL
  101 0009E 00000           CON(5)  =EQUALNOT
  102 000A3 00000           CON(5)  =case
  103 000A8 00000           CON(5)  =DOCOL
  104               * Press. Alt. IS supplied, PA
  105               * File  ISAFRM.s        40
  106 000AD 00000           CON(5)  =DOIDNT
  107 000B2 20              CON(2)  2
  108 000B4 0514            NIBASC  \PA\
  109 000B8 00000           CON(5)  =DUP
  110 000BD 00000           CON(5)  =DOROMP
  111 000C2 000000          CON(6)  =~xISAT
  112               * Calc. ISA temperature
  113               * File  ISAFRM.s        41
  114 000C8 00000           CON(5)  =DOEXT
  115 000CD 00000           CON(5)  =DOREAL
  116 000D2 000             NIBHEX  000
  117 000D5 0000000         NIBHEX  000000000001
            00001
  118 000E1 0               NIBHEX  0
  119 000E2 00000           CON(5)  =DOCSTR
  120 000E7 90000           CON(5)  9
  121 000EC 0B              CON(2)  #B0
  122 000EE 34              NIBASC  \C\
  123 000F0 00000           CON(5)  =umEND
  124 000F5 00000           CON(5)  =SEMI
  125               * Convert temperature to
  126               * File  ISAFRM.s        42
  127 000FA 00000           CON(5)  =UMCONV
  128               * deg C
  129               * File  ISAFRM.s        43
  130 000FF 00000           CON(5)  =SWAP
  131 00104 00000           CON(5)  =DUP
  132 00109 00000           CON(5)  =DOROMP
  133 0010E 000000          CON(6)  =~xISAP
  134               * Calc. pressure at PA
  135               * File  ISAFRM.s        44
  136 00114 00000           CON(5)  =SWAP
  137 00119 00000           CON(5)  =DUP
  138 0011E 00000           CON(5)  =DOROMP
  139 00123 000000          CON(6)  =~xISA\97
  140               * Calc. density at PA
  141               * File  ISAFRM.s        45
  142 00129 00000           CON(5)  =SWAP
  143 0012E 00000           CON(5)  =DOROMP
  144 00133 000000          CON(6)  =~xISAa
  145               * Calc. spd. of sound at PA
  146               * File  ISAFRM.s        46
  147 00139 00000           CON(5)  =DOEXT
  148 0013E 00000           CON(5)  =DOREAL
  149 00143 000             NIBHEX  000
  150 00146 0000000         NIBHEX  000000000001
            00001
  151 00152 0               NIBHEX  0
  152 00153 00000           CON(5)  =DOCSTR
  153 00158 D0000           CON(5)  13
  154 0015D B6E6F64         NIBASC  \knot\
            7
  155 00165 00000           CON(5)  =umEND
  156 0016A 00000           CON(5)  =SEMI
  157               * Convert speed of sound to
  158               * File  ISAFRM.s        47
  159 0016F 00000           CON(5)  =UMCONV
  160               * knots
  161               * File  ISAFRM.s        48
  162 00174 00000           CON(5)  ='
  163 00179 00000           CON(5)  =DOIDNT
  164 0017E 20              CON(2)  2
  165 00180 1413            NIBASC  \A1\
  166 00184 00000           CON(5)  =STO
  167               * STO solutions in global vars.
  168               * File  ISAFRM.s        49
  169 00189 00000           CON(5)  ='
  170 0018E 00000           CON(5)  =DOIDNT
  171 00193 20              CON(2)  2
  172 00195 79              CON(2)  #97
  173 00197 13              NIBASC  \1\
  174 00199 00000           CON(5)  =STO
  175               * A1, \971, P1, T1
  176               * File  ISAFRM.s        50
  177 0019E 00000           CON(5)  ='
  178 001A3 00000           CON(5)  =DOIDNT
  179 001A8 20              CON(2)  2
  180 001AA 0513            NIBASC  \P1\
  181 001AE 00000           CON(5)  =STO
  182               * File  ISAFRM.s        51
  183 001B3 00000           CON(5)  ='
  184 001B8 00000           CON(5)  =DOIDNT
  185 001BD 20              CON(2)  2
  186 001BF 4513            NIBASC  \T1\
  187 001C3 00000           CON(5)  =STO
  188               * File  ISAFRM.s        52
  189 001C8 00000           CON(5)  =SEMI
  190               * END CASE
  191               * If Static Temperature is supplied
  192               * File  ISAFRM.s        54
  193 001CD 00000           CON(5)  =DOIDNT
  194 001D2 20              CON(2)  2
  195 001D4 4513            NIBASC  \T1\
  196 001D8 00000           CON(5)  =NOVAL
  197 001DD 00000           CON(5)  =EQUALNOT
  198 001E2 00000           CON(5)  =case
  199 001E7 00000           CON(5)  =DOCOL
  200               * Temp. IS supplied, T1
  201               * File  ISAFRM.s        55
  202 001EC 00000           CON(5)  =DOIDNT
  203 001F1 20              CON(2)  2
  204 001F3 4513            NIBASC  \T1\
  205 001F7 00000           CON(5)  =UMSI
  206 001FC 00000           CON(5)  ='
  207 00201 00000           CON(5)  =DOIDNT
  208 00206 20              CON(2)  2
  209 00208 4513            NIBASC  \T1\
  210 0020C 00000           CON(5)  =STO
  211               * Convert to K and STO
  212               * File  ISAFRM.s        56
  213 00211 00000           CON(5)  =DOSYMB
  214               * Create symbolic to solve
  215               * File  ISAFRM.s        57
  216 00216 00000           CON(5)  =DOIDNT
  217 0021B 20              CON(2)  2
  218 0021D 4513            NIBASC  \T1\
  219               * File  ISAFRM.s        58
  220 00221 00000           CON(5)  =DOIDNT
  221 00226 20              CON(2)  2
  222 00228 0514            NIBASC  \PA\
  223               * File  ISAFRM.s        59
  224 0022C 00000           CON(5)  =DOROMP
  225 00231 000000          CON(6)  =~xISAT
  226               * File  ISAFRM.s        60
  227 00237 00000           CON(5)  =x=
  228               * File  ISAFRM.s        61
  229 0023C 00000           CON(5)  =SEMI
  230               * 'T1 = ISAT[PA]'
  231               * File  ISAFRM.s        62
  232 00241 00000           CON(5)  ='
  233 00246 00000           CON(5)  =DOIDNT
  234 0024B 20              CON(2)  2
  235 0024D 0514            NIBASC  \PA\
  236               * Solve for PA
  237               * File  ISAFRM.s        63
  238 00251 00000           CON(5)  =DOEXT
  239 00256 00000           CON(5)  =DOREAL
  240 0025B 000             NIBHEX  000
  241 0025E 0000000         NIBHEX  000000000000
            00000
  242 0026A 0               NIBHEX  0
  243 0026B 00000           CON(5)  =DOCSTR
  244 00270 90000           CON(5)  9
  245 00275 6647            NIBASC  \ft\
  246 00279 00000           CON(5)  =umEND
  247 0027E 00000           CON(5)  =SEMI
  248               * Guess value 0_ft
  249               * File  ISAFRM.s        64
  250 00283 00000           CON(5)  =xROOT
  251               * Find ROOT, PA in feet
  252               * File  ISAFRM.s        65
  253 00288 00000           CON(5)  =DOIDNT
  254 0028D 20              CON(2)  2
  255 0028F 4513            NIBASC  \T1\
  256               * Convert T1
  257               * File  ISAFRM.s        66
  258 00293 00000           CON(5)  =DOEXT
  259 00298 00000           CON(5)  =DOREAL
  260 0029D 000             NIBHEX  000
  261 002A0 0000000         NIBHEX  000000000001
            00001
  262 002AC 0               NIBHEX  0
  263 002AD 00000           CON(5)  =DOCSTR
  264 002B2 90000           CON(5)  9
  265 002B7 0B              CON(2)  #B0
  266 002B9 34              NIBASC  \C\
  267 002BB 00000           CON(5)  =umEND
  268 002C0 00000           CON(5)  =SEMI
  269               * back to
  270               * File  ISAFRM.s        67
  271 002C5 00000           CON(5)  =UMCONV
  272               * deg C
  273               * File  ISAFRM.s        68
  274 002CA 00000           CON(5)  =SWAP
  275 002CF 00000           CON(5)  =DUP
  276 002D4 00000           CON(5)  =DOROMP
  277 002D9 000000          CON(6)  =~xISAP
  278               * Calc. pressure at PA
  279               * File  ISAFRM.s        69
  280 002DF 00000           CON(5)  =SWAP
  281 002E4 00000           CON(5)  =DUP
  282 002E9 00000           CON(5)  =DOROMP
  283 002EE 000000          CON(6)  =~xISA\97
  284               * Calc. density at PA
  285               * File  ISAFRM.s        70
  286 002F4 00000           CON(5)  =SWAP
  287 002F9 00000           CON(5)  =DOROMP
  288 002FE 000000          CON(6)  =~xISAa
  289               * Calc. speed of sound at PA
  290               * File  ISAFRM.s        71
  291 00304 00000           CON(5)  =DOEXT
  292 00309 00000           CON(5)  =DOREAL
  293 0030E 000             NIBHEX  000
  294 00311 0000000         NIBHEX  000000000001
            00001
  295 0031D 0               NIBHEX  0
  296 0031E 00000           CON(5)  =DOCSTR
  297 00323 D0000           CON(5)  13
  298 00328 B6E6F64         NIBASC  \knot\
            7
  299 00330 00000           CON(5)  =umEND
  300 00335 00000           CON(5)  =SEMI
  301               * Convert speed of sound to
  302               * File  ISAFRM.s        72
  303 0033A 00000           CON(5)  =UMCONV
  304               * knots
  305               * File  ISAFRM.s        73
  306 0033F 00000           CON(5)  ='
  307 00344 00000           CON(5)  =DOIDNT
  308 00349 20              CON(2)  2
  309 0034B 1413            NIBASC  \A1\
  310 0034F 00000           CON(5)  =STO
  311               * STO solutions in global vars.
  312               * File  ISAFRM.s        74
  313 00354 00000           CON(5)  ='
  314 00359 00000           CON(5)  =DOIDNT
  315 0035E 20              CON(2)  2
  316 00360 79              CON(2)  #97
  317 00362 13              NIBASC  \1\
  318 00364 00000           CON(5)  =STO
  319               * A1, \971, P1, T1
  320               * File  ISAFRM.s        75
  321 00369 00000           CON(5)  ='
  322 0036E 00000           CON(5)  =DOIDNT
  323 00373 20              CON(2)  2
  324 00375 0513            NIBASC  \P1\
  325 00379 00000           CON(5)  =STO
  326               * File  ISAFRM.s        76
  327 0037E 00000           CON(5)  ='
  328 00383 00000           CON(5)  =DOIDNT
  329 00388 20              CON(2)  2
  330 0038A 4513            NIBASC  \T1\
  331 0038E 00000           CON(5)  =STO
  332               * File  ISAFRM.s        77
  333 00393 00000           CON(5)  =SEMI
  334               * END CASE
  335               * Static Pressure is supplied
  336               * File  ISAFRM.s        79
  337 00398 00000           CON(5)  =DOIDNT
  338 0039D 20              CON(2)  2
  339 0039F 0513            NIBASC  \P1\
  340 003A3 00000           CON(5)  =NOVAL
  341 003A8 00000           CON(5)  =EQUALNOT
  342 003AD 00000           CON(5)  =case
  343 003B2 00000           CON(5)  =DOCOL
  344               * Pressure IS supplied, P1
  345               * File  ISAFRM.s        80
  346 003B7 00000           CON(5)  =DOSYMB
  347               * Create symbolic to solve
  348               * File  ISAFRM.s        81
  349 003BC 00000           CON(5)  =DOIDNT
  350 003C1 20              CON(2)  2
  351 003C3 0513            NIBASC  \P1\
  352               * File  ISAFRM.s        82
  353 003C7 00000           CON(5)  =DOIDNT
  354 003CC 20              CON(2)  2
  355 003CE 0514            NIBASC  \PA\
  356               * File  ISAFRM.s        83
  357 003D2 00000           CON(5)  =DOROMP
  358 003D7 000000          CON(6)  =~xISAP
  359               * File  ISAFRM.s        84
  360 003DD 00000           CON(5)  =x=
  361               * File  ISAFRM.s        85
  362 003E2 00000           CON(5)  =SEMI
  363               * 'P1 = ISAP[PA]'
  364               * File  ISAFRM.s        86
  365 003E7 00000           CON(5)  ='
  366 003EC 00000           CON(5)  =DOIDNT
  367 003F1 20              CON(2)  2
  368 003F3 0514            NIBASC  \PA\
  369               * Solve for PA
  370               * File  ISAFRM.s        87
  371 003F7 00000           CON(5)  =DOEXT
  372 003FC 00000           CON(5)  =DOREAL
  373 00401 000             NIBHEX  000
  374 00404 0000000         NIBHEX  000000000000
            00000
  375 00410 0               NIBHEX  0
  376 00411 00000           CON(5)  =DOCSTR
  377 00416 90000           CON(5)  9
  378 0041B 6647            NIBASC  \ft\
  379 0041F 00000           CON(5)  =umEND
  380 00424 00000           CON(5)  =SEMI
  381               * Guess value 0_ft
  382               * File  ISAFRM.s        88
  383 00429 00000           CON(5)  =xROOT
  384               * Find ROOT, PA in feet
  385               * File  ISAFRM.s        89
  386 0042E 00000           CON(5)  =DUP
  387 00433 00000           CON(5)  =DOROMP
  388 00438 000000          CON(6)  =~xISAT
  389               * Calc. temperature at PA
  390               * File  ISAFRM.s        90
  391 0043E 00000           CON(5)  =DOEXT
  392 00443 00000           CON(5)  =DOREAL
  393 00448 000             NIBHEX  000
  394 0044B 0000000         NIBHEX  000000000001
            00001
  395 00457 0               NIBHEX  0
  396 00458 00000           CON(5)  =DOCSTR
  397 0045D 90000           CON(5)  9
  398 00462 0B              CON(2)  #B0
  399 00464 34              NIBASC  \C\
  400 00466 00000           CON(5)  =umEND
  401 0046B 00000           CON(5)  =SEMI
  402               * File  ISAFRM.s        91
  403 00470 00000           CON(5)  =UMCONV
  404               * Convert T1 to deg C
  405               * File  ISAFRM.s        92
  406 00475 00000           CON(5)  =SWAP
  407 0047A 00000           CON(5)  =DUP
  408 0047F 00000           CON(5)  =DOROMP
  409 00484 000000          CON(6)  =~xISA\97
  410               * Calc. density at PA
  411               * File  ISAFRM.s        93
  412 0048A 00000           CON(5)  =SWAP
  413 0048F 00000           CON(5)  =DOROMP
  414 00494 000000          CON(6)  =~xISAa
  415               * Calc. speed of sound at PA
  416               * File  ISAFRM.s        94
  417 0049A 00000           CON(5)  =DOEXT
  418 0049F 00000           CON(5)  =DOREAL
  419 004A4 000             NIBHEX  000
  420 004A7 0000000         NIBHEX  000000000001
            00001
  421 004B3 0               NIBHEX  0
  422 004B4 00000           CON(5)  =DOCSTR
  423 004B9 D0000           CON(5)  13
  424 004BE B6E6F64         NIBASC  \knot\
            7
  425 004C6 00000           CON(5)  =umEND
  426 004CB 00000           CON(5)  =SEMI
  427               * Convert speed of sound to
  428               * File  ISAFRM.s        95
  429 004D0 00000           CON(5)  =UMCONV
  430               * knots
  431               * File  ISAFRM.s        96
  432 004D5 00000           CON(5)  ='
  433 004DA 00000           CON(5)  =DOIDNT
  434 004DF 20              CON(2)  2
  435 004E1 1413            NIBASC  \A1\
  436 004E5 00000           CON(5)  =STO
  437               * STO solutions in global vars.
  438               * File  ISAFRM.s        97
  439 004EA 00000           CON(5)  ='
  440 004EF 00000           CON(5)  =DOIDNT
  441 004F4 20              CON(2)  2
  442 004F6 79              CON(2)  #97
  443 004F8 13              NIBASC  \1\
  444 004FA 00000           CON(5)  =STO
  445               * A1, \971, P1, T1
  446               * File  ISAFRM.s        98
  447 004FF 00000           CON(5)  ='
  448 00504 00000           CON(5)  =DOIDNT
  449 00509 20              CON(2)  2
  450 0050B 4513            NIBASC  \T1\
  451 0050F 00000           CON(5)  =STO
  452               * File  ISAFRM.s        99
  453 00514 00000           CON(5)  =SEMI
  454               * END CASE
  455               * Density is supplied
  456               * File  ISAFRM.s        101
  457 00519 00000           CON(5)  =DOIDNT
  458 0051E 20              CON(2)  2
  459 00520 79              CON(2)  #97
  460 00522 13              NIBASC  \1\
  461 00524 00000           CON(5)  =NOVAL
  462 00529 00000           CON(5)  =EQUALNOT
  463 0052E 00000           CON(5)  =case
  464 00533 00000           CON(5)  =DOCOL
  465               * Density IS supplied, \971
  466               * File  ISAFRM.s        102
  467 00538 00000           CON(5)  =DOSYMB
  468               * Create symbolic to solve
  469               * File  ISAFRM.s        103
  470 0053D 00000           CON(5)  =DOIDNT
  471 00542 20              CON(2)  2
  472 00544 79              CON(2)  #97
  473 00546 13              NIBASC  \1\
  474               * File  ISAFRM.s        104
  475 00548 00000           CON(5)  =DOIDNT
  476 0054D 20              CON(2)  2
  477 0054F 0514            NIBASC  \PA\
  478               * File  ISAFRM.s        105
  479 00553 00000           CON(5)  =DOROMP
  480 00558 000000          CON(6)  =~xISA\97
  481               * File  ISAFRM.s        106
  482 0055E 00000           CON(5)  =x=
  483               * File  ISAFRM.s        107
  484 00563 00000           CON(5)  =SEMI
  485               * '\971 = ISA\97[PA]'
  486               * File  ISAFRM.s        108
  487 00568 00000           CON(5)  ='
  488 0056D 00000           CON(5)  =DOIDNT
  489 00572 20              CON(2)  2
  490 00574 0514            NIBASC  \PA\
  491               * Solve for PA
  492               * File  ISAFRM.s        109
  493 00578 00000           CON(5)  =DOEXT
  494 0057D 00000           CON(5)  =DOREAL
  495 00582 000             NIBHEX  000
  496 00585 0000000         NIBHEX  000000000000
            00000
  497 00591 0               NIBHEX  0
  498 00592 00000           CON(5)  =DOCSTR
  499 00597 90000           CON(5)  9
  500 0059C 6647            NIBASC  \ft\
  501 005A0 00000           CON(5)  =umEND
  502 005A5 00000           CON(5)  =SEMI
  503               * Guess value 0_ft
  504               * File  ISAFRM.s        110
  505 005AA 00000           CON(5)  =xROOT
  506               * Find ROOT, PA in feet
  507               * File  ISAFRM.s        111
  508 005AF 00000           CON(5)  =DUP
  509 005B4 00000           CON(5)  =DOROMP
  510 005B9 000000          CON(6)  =~xISAT
  511               * Calc. temperature at PA
  512               * File  ISAFRM.s        112
  513 005BF 00000           CON(5)  =DOEXT
  514 005C4 00000           CON(5)  =DOREAL
  515 005C9 000             NIBHEX  000
  516 005CC 0000000         NIBHEX  000000000001
            00001
  517 005D8 0               NIBHEX  0
  518 005D9 00000           CON(5)  =DOCSTR
  519 005DE 90000           CON(5)  9
  520 005E3 0B              CON(2)  #B0
  521 005E5 34              NIBASC  \C\
  522 005E7 00000           CON(5)  =umEND
  523 005EC 00000           CON(5)  =SEMI
  524               * File  ISAFRM.s        113
  525 005F1 00000           CON(5)  =UMCONV
  526               * Convert T1 to deg C
  527               * File  ISAFRM.s        114
  528 005F6 00000           CON(5)  =SWAP
  529 005FB 00000           CON(5)  =DUP
  530 00600 00000           CON(5)  =DOROMP
  531 00605 000000          CON(6)  =~xISAP
  532               * Calc. pressure at PA
  533               * File  ISAFRM.s        115
  534 0060B 00000           CON(5)  =SWAP
  535 00610 00000           CON(5)  =DOROMP
  536 00615 000000          CON(6)  =~xISAa
  537               * Calc. spd. of sound at PA
  538               * File  ISAFRM.s        116
  539 0061B 00000           CON(5)  =DOEXT
  540 00620 00000           CON(5)  =DOREAL
  541 00625 000             NIBHEX  000
  542 00628 0000000         NIBHEX  000000000001
            00001
  543 00634 0               NIBHEX  0
  544 00635 00000           CON(5)  =DOCSTR
  545 0063A D0000           CON(5)  13
  546 0063F B6E6F64         NIBASC  \knot\
            7
  547 00647 00000           CON(5)  =umEND
  548 0064C 00000           CON(5)  =SEMI
  549               * Convert speed of sound to
  550               * File  ISAFRM.s        117
  551 00651 00000           CON(5)  =UMCONV
  552               * knots
  553               * File  ISAFRM.s        118
  554 00656 00000           CON(5)  ='
  555 0065B 00000           CON(5)  =DOIDNT
  556 00660 20              CON(2)  2
  557 00662 1413            NIBASC  \A1\
  558 00666 00000           CON(5)  =STO
  559               * STO solns. in golbal vars.
  560               * File  ISAFRM.s        119
  561 0066B 00000           CON(5)  ='
  562 00670 00000           CON(5)  =DOIDNT
  563 00675 20              CON(2)  2
  564 00677 0513            NIBASC  \P1\
  565 0067B 00000           CON(5)  =STO
  566               * A1, P1, T1
  567               * File  ISAFRM.s        120
  568 00680 00000           CON(5)  ='
  569 00685 00000           CON(5)  =DOIDNT
  570 0068A 20              CON(2)  2
  571 0068C 4513            NIBASC  \T1\
  572 00690 00000           CON(5)  =STO
  573               * File  ISAFRM.s        121
  574 00695 00000           CON(5)  =SEMI
  575               * END CASE
  576               * Speed of sound is supplied
  577               * File  ISAFRM.s        123
  578 0069A 00000           CON(5)  =DOIDNT
  579 0069F 20              CON(2)  2
  580 006A1 1413            NIBASC  \A1\
  581 006A5 00000           CON(5)  =NOVAL
  582 006AA 00000           CON(5)  =EQUALNOT
  583 006AF 00000           CON(5)  =case
  584 006B4 00000           CON(5)  =DOCOL
  585               * Speed of sound IS supplied, A1
  586               * File  ISAFRM.s        124
  587 006B9 00000           CON(5)  =DOSYMB
  588               * Create symbolic to solve
  589               * File  ISAFRM.s        125
  590 006BE 00000           CON(5)  =DOIDNT
  591 006C3 20              CON(2)  2
  592 006C5 1413            NIBASC  \A1\
  593               * File  ISAFRM.s        126
  594 006C9 00000           CON(5)  =DOIDNT
  595 006CE 20              CON(2)  2
  596 006D0 0514            NIBASC  \PA\
  597               * File  ISAFRM.s        127
  598 006D4 00000           CON(5)  =DOROMP
  599 006D9 000000          CON(6)  =~xISAa
  600               * File  ISAFRM.s        128
  601 006DF 00000           CON(5)  =x=
  602               * File  ISAFRM.s        129
  603 006E4 00000           CON(5)  =SEMI
  604               * 'A1 = ISAa[PA]'
  605               * File  ISAFRM.s        130
  606 006E9 00000           CON(5)  ='
  607 006EE 00000           CON(5)  =DOIDNT
  608 006F3 20              CON(2)  2
  609 006F5 0514            NIBASC  \PA\
  610               * Solve for PA
  611               * File  ISAFRM.s        131
  612 006F9 00000           CON(5)  =DOEXT
  613 006FE 00000           CON(5)  =DOREAL
  614 00703 000             NIBHEX  000
  615 00706 0000000         NIBHEX  000000000000
            00000
  616 00712 0               NIBHEX  0
  617 00713 00000           CON(5)  =DOCSTR
  618 00718 90000           CON(5)  9
  619 0071D 6647            NIBASC  \ft\
  620 00721 00000           CON(5)  =umEND
  621 00726 00000           CON(5)  =SEMI
  622               * Guess value 0_ft
  623               * File  ISAFRM.s        132
  624 0072B 00000           CON(5)  =xROOT
  625               * Find ROOT, PA in feet
  626               * File  ISAFRM.s        133
  627 00730 00000           CON(5)  =DUP
  628 00735 00000           CON(5)  =DOROMP
  629 0073A 000000          CON(6)  =~xISAT
  630               * Calc. temperature at PA
  631               * File  ISAFRM.s        134
  632 00740 00000           CON(5)  =DOEXT
  633 00745 00000           CON(5)  =DOREAL
  634 0074A 000             NIBHEX  000
  635 0074D 0000000         NIBHEX  000000000001
            00001
  636 00759 0               NIBHEX  0
  637 0075A 00000           CON(5)  =DOCSTR
  638 0075F 90000           CON(5)  9
  639 00764 0B              CON(2)  #B0
  640 00766 34              NIBASC  \C\
  641 00768 00000           CON(5)  =umEND
  642 0076D 00000           CON(5)  =SEMI
  643               * File  ISAFRM.s        135
  644 00772 00000           CON(5)  =UMCONV
  645               * Convert T1 to deg C
  646               * File  ISAFRM.s        136
  647 00777 00000           CON(5)  =SWAP
  648 0077C 00000           CON(5)  =DUP
  649 00781 00000           CON(5)  =DOROMP
  650 00786 000000          CON(6)  =~xISAP
  651               * Calc. pressure at PA
  652               * File  ISAFRM.s        137
  653 0078C 00000           CON(5)  =SWAP
  654 00791 00000           CON(5)  =DOROMP
  655 00796 000000          CON(6)  =~xISA\97
  656               * Calc. density at PA
  657               * File  ISAFRM.s        138
  658 0079C 00000           CON(5)  ='
  659 007A1 00000           CON(5)  =DOIDNT
  660 007A6 20              CON(2)  2
  661 007A8 79              CON(2)  #97
  662 007AA 13              NIBASC  \1\
  663 007AC 00000           CON(5)  =STO
  664               * STO solutions in global vars.
  665               * File  ISAFRM.s        139
  666 007B1 00000           CON(5)  ='
  667 007B6 00000           CON(5)  =DOIDNT
  668 007BB 20              CON(2)  2
  669 007BD 0513            NIBASC  \P1\
  670 007C1 00000           CON(5)  =STO
  671               * A1, \971, P1, T1
  672               * File  ISAFRM.s        140
  673 007C6 00000           CON(5)  ='
  674 007CB 00000           CON(5)  =DOIDNT
  675 007D0 20              CON(2)  2
  676 007D2 4513            NIBASC  \T1\
  677 007D6 00000           CON(5)  =STO
  678               * File  ISAFRM.s        141
  679 007DB 00000           CON(5)  =SEMI
  680               * END CASE
  681               * File  ISAFRM.s        142
  682 007E0 00000           CON(5)  =SEMI
  683 007E5 00000           CON(5)  =REPEAT
  684               * REPEAT loop
  685               * File  ISAFRM.s        143
  686 007EA 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue Apr 21 18:49:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAFRM.a       Page    2

 '                                 Ext                   -    60    67    75
                                          82    89   162   169   177   183   206
                                         232   306   313   321   327   365   432
                                         439   447   487   554   561   568   606
                                         658   666   673
 BEGIN                             Ext                   -    49
 DOCOL                             Ext                   -    47    57   103
                                         199   343   464   584
 DOCSTR                            Ext                   -   119   152   243
                                         263   296   376   396   422   498   518
                                         544   617   637
 DOEXT                             Ext                   -   114   147   238
                                         258   291   371   391   417   493   513
                                         539   612   632
 DOIDNT                            Ext                   -    61    68    76
                                          83    90    97   106   163   170   178
                                         184   193   202   207   216   220   233
                                         253   307   314   322   328   337   349
                                         353   366   433   440   448   457   470
                                         475   488   555   562   569   578   590
                                         594   607   659   667   674
 DOREAL                            Ext                   -   115   148   239
                                         259   292   372   392   418   494   514
                                         540   613   633
 DOROMP                            Ext                   -    52   110   132
                                         138   143   224   276   282   287   357
                                         387   408   413   479   509   530   535
                                         598   628   649   654
 DOSYMB                            Ext                   -   213   346   467
                                         587
 DUP                               Ext                   -   109   131   137
                                         275   281   386   407   508   529   627
                                         648
 EQUALNOT                          Ext                   -   101   197   341
                                         462   582
 NOVAL                             Ext                   -   100   196   340
                                         461   581
 REPEAT                            Ext                   -   683
=RomId                             Abs     806 #00000326 -    33
 SEMI                              Ext                   -   124   156   189
                                         229   247   268   300   333   362   380
                                         401   426   453   484   502   523   548
                                         574   603   621   642   679   682   686
 STO                               Ext                   -    64    72    79
                                          86    93   166   174   181   187   210
                                         310   318   325   331   436   444   451
                                         558   565   572   663   670   677
 SWAP                              Ext                   -   130   136   142
                                         274   280   286   406   412   528   534
                                         647   653
 UMCONV                            Ext                   -   127   159   271
                                         303   403   429   525   551   644
 UMSI                              Ext                   -   205
 WHILE                             Ext                   -    56
 case                              Ext                   -   102   198   342
                                         463   583
 umEND                             Ext                   -   123   155   246
                                         267   299   379   400   425   501   522
                                         547   620   641
 x=                                Ext                   -   227   360   482
                                         601
=xISAFRM                           Rel       6 #00000006 -    45
 xROOT                             Ext                   -   250   383   505
                                         624
 ~ISAform                          Ext                   -    53
 ~xISAFRM                          Ext                   -    44
 ~xISAP                            Ext                   -   133   277   358
                                         531   650
 ~xISAT                            Ext                   -   111   225   388
                                         510   629
 ~xISA\97                          Ext                   -   139   283   409
                                         480   655
 ~xISAa                            Ext                   -   144   288   414
                                         536   599
Saturn Assembler                                       Tue Apr 21 18:49:40 2009
V3.0.9 (04/15/2007)   Statistics                         ISAFRM.a       Page    3

Input Parameters

  Source file name is ISAFRM.a

  Listing file name is ISAFRM.l

  Object file name is ISAFRM.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
