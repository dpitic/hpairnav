Saturn Assembler                                       Wed Apr 22 13:56:40 2009
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
   21               * Version:                                                                      1.21
   22               * Date:            07 April 2009
   23               * INPUT/     PA     Geometric Altitude (Pressure altitude (feet))
   24               *   OUTPUT:  T1                                 Standard ISA temperature at PA (deg C)
   25               *                                                                                               P1     Standard ISA pressure at PA (mbar)
   26               *            \971   Standard ISA density at PA (kg/m^3)
   27               *            A1     Standard speed of sound in ISA at PA (knots)
   28               * File  ISAFRM.s        26
   29
   30               * File  ISAFRM.s        27
   31               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISATM.h
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
   95               * File  ISAFRM.s        38
   96 0008E 00000           CON(5)  =DOIDNT
   97 00093 20              CON(2)  2
   98 00095 0514            NIBASC  \PA\
   99 00099 00000           CON(5)  =U>nbr
  100 0009E 00000           CON(5)  =NOVAL
  101 000A3 00000           CON(5)  =%<>
  102               * Check if PA is supplied?
  103               * File  ISAFRM.s        39
  104 000A8 00000           CON(5)  =ITE
  105 000AD 00000           CON(5)  =DOCOL
  106               * TRUE => calc. all properties
  107               * File  ISAFRM.s        40
  108 000B2 00000           CON(5)  =DOIDNT
  109 000B7 20              CON(2)  2
  110 000B9 0514            NIBASC  \PA\
  111 000BD 00000           CON(5)  =DUP
  112 000C2 00000           CON(5)  =DOROMP
  113 000C7 000000          CON(6)  =~xISAT
  114               * Calc. ISA temperature
  115               * File  ISAFRM.s        41
  116 000CD 00000           CON(5)  =DOEXT
  117 000D2 00000           CON(5)  =DOREAL
  118 000D7 000             NIBHEX  000
  119 000DA 0000000         NIBHEX  000000000001
            00001
  120 000E6 0               NIBHEX  0
  121 000E7 00000           CON(5)  =DOCSTR
  122 000EC 90000           CON(5)  9
  123 000F1 0B              CON(2)  #B0
  124 000F3 34              NIBASC  \C\
  125 000F5 00000           CON(5)  =umEND
  126 000FA 00000           CON(5)  =SEMI
  127               * Convert temperature to
  128               * File  ISAFRM.s        42
  129 000FF 00000           CON(5)  =UMCONV
  130               * deg C
  131               * File  ISAFRM.s        43
  132 00104 00000           CON(5)  =SWAP
  133 00109 00000           CON(5)  =DUP
  134 0010E 00000           CON(5)  =DOROMP
  135 00113 000000          CON(6)  =~xISAP
  136               * Calc. pressure at PA
  137               * File  ISAFRM.s        44
  138 00119 00000           CON(5)  =SWAP
  139 0011E 00000           CON(5)  =DUP
  140 00123 00000           CON(5)  =DOROMP
  141 00128 000000          CON(6)  =~xISA\97
  142               * Calc. density at PA
  143               * File  ISAFRM.s        45
  144 0012E 00000           CON(5)  =SWAP
  145 00133 00000           CON(5)  =DOROMP
  146 00138 000000          CON(6)  =~xISAa
  147               * Calc. spd. of sound at PA
  148               * File  ISAFRM.s        46
  149 0013E 00000           CON(5)  =DOEXT
  150 00143 00000           CON(5)  =DOREAL
  151 00148 000             NIBHEX  000
  152 0014B 0000000         NIBHEX  000000000001
            00001
  153 00157 0               NIBHEX  0
  154 00158 00000           CON(5)  =DOCSTR
  155 0015D D0000           CON(5)  13
  156 00162 B6E6F64         NIBASC  \knot\
            7
  157 0016A 00000           CON(5)  =umEND
  158 0016F 00000           CON(5)  =SEMI
  159               * Convert speed of sound to
  160               * File  ISAFRM.s        47
  161 00174 00000           CON(5)  =UMCONV
  162               * knots
  163               * File  ISAFRM.s        48
  164 00179 00000           CON(5)  ='
  165 0017E 00000           CON(5)  =DOIDNT
  166 00183 20              CON(2)  2
  167 00185 1413            NIBASC  \A1\
  168 00189 00000           CON(5)  =STO
  169               * STO solutions in global vars.
  170               * File  ISAFRM.s        49
  171 0018E 00000           CON(5)  ='
  172 00193 00000           CON(5)  =DOIDNT
  173 00198 20              CON(2)  2
  174 0019A 79              CON(2)  #97
  175 0019C 13              NIBASC  \1\
  176 0019E 00000           CON(5)  =STO
  177               * A1, \971, P1, T1
  178               * File  ISAFRM.s        50
  179 001A3 00000           CON(5)  ='
  180 001A8 00000           CON(5)  =DOIDNT
  181 001AD 20              CON(2)  2
  182 001AF 0513            NIBASC  \P1\
  183 001B3 00000           CON(5)  =STO
  184               * File  ISAFRM.s        51
  185 001B8 00000           CON(5)  ='
  186 001BD 00000           CON(5)  =DOIDNT
  187 001C2 20              CON(2)  2
  188 001C4 4513            NIBASC  \T1\
  189 001C8 00000           CON(5)  =STO
  190               * File  ISAFRM.s        52
  191 001CD 00000           CON(5)  =SEMI
  192               * END THEN
  193               * File  ISAFRM.s        53
  194 001D2 00000           CON(5)  =DOCOL
  195               * FALSE = PA is NOT supplied
  196               * File  ISAFRM.s        54
  197 001D7 00000           CON(5)  =DOIDNT
  198 001DC 20              CON(2)  2
  199 001DE 4513            NIBASC  \T1\
  200 001E2 00000           CON(5)  =U>nbr
  201 001E7 00000           CON(5)  =NOVAL
  202 001EC 00000           CON(5)  =%<>
  203 001F1 00000           CON(5)  =case
  204 001F6 00000           CON(5)  =DOCOL
  205               * Temp. IS supplied, T1
  206               * File  ISAFRM.s        55
  207 001FB 00000           CON(5)  =DOIDNT
  208 00200 20              CON(2)  2
  209 00202 4513            NIBASC  \T1\
  210 00206 00000           CON(5)  =UMSI
  211 0020B 00000           CON(5)  ='
  212 00210 00000           CON(5)  =DOIDNT
  213 00215 20              CON(2)  2
  214 00217 4513            NIBASC  \T1\
  215 0021B 00000           CON(5)  =STO
  216               * Convert to K and STO
  217               * File  ISAFRM.s        56
  218 00220 00000           CON(5)  =DOSYMB
  219               * Create symbolic to solve
  220               * File  ISAFRM.s        57
  221 00225 00000           CON(5)  =DOIDNT
  222 0022A 20              CON(2)  2
  223 0022C 4513            NIBASC  \T1\
  224               * File  ISAFRM.s        58
  225 00230 00000           CON(5)  =DOIDNT
  226 00235 20              CON(2)  2
  227 00237 0514            NIBASC  \PA\
  228               * File  ISAFRM.s        59
  229 0023B 00000           CON(5)  =DOROMP
  230 00240 000000          CON(6)  =~xISAT
  231               * File  ISAFRM.s        60
  232 00246 00000           CON(5)  =x=
  233               * File  ISAFRM.s        61
  234 0024B 00000           CON(5)  =SEMI
  235               * 'T1 = ISAT[PA]'
  236               * File  ISAFRM.s        62
  237 00250 00000           CON(5)  ='
  238 00255 00000           CON(5)  =DOIDNT
  239 0025A 20              CON(2)  2
  240 0025C 0514            NIBASC  \PA\
  241               * Solve for PA
  242               * File  ISAFRM.s        63
  243 00260 00000           CON(5)  =DOEXT
  244 00265 00000           CON(5)  =DOREAL
  245 0026A 000             NIBHEX  000
  246 0026D 0000000         NIBHEX  000000000000
            00000
  247 00279 0               NIBHEX  0
  248 0027A 00000           CON(5)  =DOCSTR
  249 0027F 90000           CON(5)  9
  250 00284 6647            NIBASC  \ft\
  251 00288 00000           CON(5)  =umEND
  252 0028D 00000           CON(5)  =SEMI
  253               * Guess value 0_ft
  254               * File  ISAFRM.s        64
  255 00292 00000           CON(5)  =xROOT
  256               * Find ROOT, PA in feet
  257               * File  ISAFRM.s        65
  258 00297 00000           CON(5)  =DOIDNT
  259 0029C 20              CON(2)  2
  260 0029E 4513            NIBASC  \T1\
  261               * Convert T1
  262               * File  ISAFRM.s        66
  263 002A2 00000           CON(5)  =DOEXT
  264 002A7 00000           CON(5)  =DOREAL
  265 002AC 000             NIBHEX  000
  266 002AF 0000000         NIBHEX  000000000001
            00001
  267 002BB 0               NIBHEX  0
  268 002BC 00000           CON(5)  =DOCSTR
  269 002C1 90000           CON(5)  9
  270 002C6 0B              CON(2)  #B0
  271 002C8 34              NIBASC  \C\
  272 002CA 00000           CON(5)  =umEND
  273 002CF 00000           CON(5)  =SEMI
  274               * back to
  275               * File  ISAFRM.s        67
  276 002D4 00000           CON(5)  =UMCONV
  277               * deg C
  278               * File  ISAFRM.s        68
  279 002D9 00000           CON(5)  =SWAP
  280 002DE 00000           CON(5)  =DUP
  281 002E3 00000           CON(5)  =DOROMP
  282 002E8 000000          CON(6)  =~xISAP
  283               * Calc. pressure at PA
  284               * File  ISAFRM.s        69
  285 002EE 00000           CON(5)  =SWAP
  286 002F3 00000           CON(5)  =DUP
  287 002F8 00000           CON(5)  =DOROMP
  288 002FD 000000          CON(6)  =~xISA\97
  289               * Calc. density at PA
  290               * File  ISAFRM.s        70
  291 00303 00000           CON(5)  =SWAP
  292 00308 00000           CON(5)  =DOROMP
  293 0030D 000000          CON(6)  =~xISAa
  294               * Calc. speed of sound at PA
  295               * File  ISAFRM.s        71
  296 00313 00000           CON(5)  =DOEXT
  297 00318 00000           CON(5)  =DOREAL
  298 0031D 000             NIBHEX  000
  299 00320 0000000         NIBHEX  000000000001
            00001
  300 0032C 0               NIBHEX  0
  301 0032D 00000           CON(5)  =DOCSTR
  302 00332 D0000           CON(5)  13
  303 00337 B6E6F64         NIBASC  \knot\
            7
  304 0033F 00000           CON(5)  =umEND
  305 00344 00000           CON(5)  =SEMI
  306               * Convert speed of sound to
  307               * File  ISAFRM.s        72
  308 00349 00000           CON(5)  =UMCONV
  309               * knots
  310               * File  ISAFRM.s        73
  311 0034E 00000           CON(5)  ='
  312 00353 00000           CON(5)  =DOIDNT
  313 00358 20              CON(2)  2
  314 0035A 1413            NIBASC  \A1\
  315 0035E 00000           CON(5)  =STO
  316               * STO solutions in global vars.
  317               * File  ISAFRM.s        74
  318 00363 00000           CON(5)  ='
  319 00368 00000           CON(5)  =DOIDNT
  320 0036D 20              CON(2)  2
  321 0036F 79              CON(2)  #97
  322 00371 13              NIBASC  \1\
  323 00373 00000           CON(5)  =STO
  324               * A1, \971, P1, T1
  325               * File  ISAFRM.s        75
  326 00378 00000           CON(5)  ='
  327 0037D 00000           CON(5)  =DOIDNT
  328 00382 20              CON(2)  2
  329 00384 0513            NIBASC  \P1\
  330 00388 00000           CON(5)  =STO
  331               * File  ISAFRM.s        76
  332 0038D 00000           CON(5)  ='
  333 00392 00000           CON(5)  =DOIDNT
  334 00397 20              CON(2)  2
  335 00399 4513            NIBASC  \T1\
  336 0039D 00000           CON(5)  =STO
  337               * File  ISAFRM.s        77
  338 003A2 00000           CON(5)  =SEMI
  339               * END CASE
  340               * File  ISAFRM.s        78
  341 003A7 00000           CON(5)  =DOIDNT
  342 003AC 20              CON(2)  2
  343 003AE 0513            NIBASC  \P1\
  344 003B2 00000           CON(5)  =U>nbr
  345 003B7 00000           CON(5)  =NOVAL
  346 003BC 00000           CON(5)  =%<>
  347 003C1 00000           CON(5)  =case
  348 003C6 00000           CON(5)  =DOCOL
  349               * Pressure IS supplied, P1
  350               * File  ISAFRM.s        79
  351 003CB 00000           CON(5)  =DOIDNT
  352 003D0 20              CON(2)  2
  353 003D2 0513            NIBASC  \P1\
  354 003D6 00000           CON(5)  =UMSI
  355 003DB 00000           CON(5)  ='
  356 003E0 00000           CON(5)  =DOIDNT
  357 003E5 20              CON(2)  2
  358 003E7 0513            NIBASC  \P1\
  359 003EB 00000           CON(5)  =STO
  360               * Convert P1 to SI units & STO
  361               * File  ISAFRM.s        80
  362 003F0 00000           CON(5)  =DOSYMB
  363               * Create symbolic to solve
  364               * File  ISAFRM.s        81
  365 003F5 00000           CON(5)  =DOIDNT
  366 003FA 20              CON(2)  2
  367 003FC 0513            NIBASC  \P1\
  368               * File  ISAFRM.s        82
  369 00400 00000           CON(5)  =DOIDNT
  370 00405 20              CON(2)  2
  371 00407 0514            NIBASC  \PA\
  372               * File  ISAFRM.s        83
  373 0040B 00000           CON(5)  =DOROMP
  374 00410 000000          CON(6)  =~xISAP
  375               * File  ISAFRM.s        84
  376 00416 00000           CON(5)  =x=
  377               * File  ISAFRM.s        85
  378 0041B 00000           CON(5)  =SEMI
  379               * 'P1 = ISAP[PA]'
  380               * File  ISAFRM.s        86
  381 00420 00000           CON(5)  ='
  382 00425 00000           CON(5)  =DOIDNT
  383 0042A 20              CON(2)  2
  384 0042C 0514            NIBASC  \PA\
  385               * Solve for PA
  386               * File  ISAFRM.s        87
  387 00430 00000           CON(5)  =DOEXT
  388 00435 00000           CON(5)  =DOREAL
  389 0043A 000             NIBHEX  000
  390 0043D 0000000         NIBHEX  000000000000
            00000
  391 00449 0               NIBHEX  0
  392 0044A 00000           CON(5)  =DOCSTR
  393 0044F 90000           CON(5)  9
  394 00454 6647            NIBASC  \ft\
  395 00458 00000           CON(5)  =umEND
  396 0045D 00000           CON(5)  =SEMI
  397               * Guess value 0_ft
  398               * File  ISAFRM.s        88
  399 00462 00000           CON(5)  =xROOT
  400               * Find ROOT, PA in feet
  401               * File  ISAFRM.s        89
  402 00467 00000           CON(5)  =DUP
  403 0046C 00000           CON(5)  =DOROMP
  404 00471 000000          CON(6)  =~xISAT
  405               * Calc. temperature at PA
  406               * File  ISAFRM.s        90
  407 00477 00000           CON(5)  =DOEXT
  408 0047C 00000           CON(5)  =DOREAL
  409 00481 000             NIBHEX  000
  410 00484 0000000         NIBHEX  000000000001
            00001
  411 00490 0               NIBHEX  0
  412 00491 00000           CON(5)  =DOCSTR
  413 00496 90000           CON(5)  9
  414 0049B 0B              CON(2)  #B0
  415 0049D 34              NIBASC  \C\
  416 0049F 00000           CON(5)  =umEND
  417 004A4 00000           CON(5)  =SEMI
  418               * File  ISAFRM.s        91
  419 004A9 00000           CON(5)  =UMCONV
  420               * Convert T1 to deg C
  421               * File  ISAFRM.s        92
  422 004AE 00000           CON(5)  =SWAP
  423               * File  ISAFRM.s        93
  424 004B3 00000           CON(5)  =DOIDNT
  425 004B8 20              CON(2)  2
  426 004BA 0513            NIBASC  \P1\
  427               * Convert P1
  428               * File  ISAFRM.s        94
  429 004BE 00000           CON(5)  =DOEXT
  430 004C3 00000           CON(5)  =DOREAL
  431 004C8 000             NIBHEX  000
  432 004CB 0000000         NIBHEX  000000000001
            00001
  433 004D7 0               NIBHEX  0
  434 004D8 00000           CON(5)  =CHR_m
  435 004DD 00000           CON(5)  =DOCSTR
  436 004E2 B0000           CON(5)  11
  437 004E7 261627          NIBASC  \bar\
  438 004ED 00000           CON(5)  =umP
  439 004F2 00000           CON(5)  =umEND
  440 004F7 00000           CON(5)  =SEMI
  441               * File  ISAFRM.s        95
  442 004FC 00000           CON(5)  =UMCONV
  443               * to mbar
  444               * File  ISAFRM.s        96
  445 00501 00000           CON(5)  =SWAP
  446 00506 00000           CON(5)  =DUP
  447 0050B 00000           CON(5)  =DOROMP
  448 00510 000000          CON(6)  =~xISA\97
  449               * Calc. density at PA
  450               * File  ISAFRM.s        97
  451 00516 00000           CON(5)  =SWAP
  452 0051B 00000           CON(5)  =DOROMP
  453 00520 000000          CON(6)  =~xISAa
  454               * Calc. speed of sound at PA
  455               * File  ISAFRM.s        98
  456 00526 00000           CON(5)  =DOEXT
  457 0052B 00000           CON(5)  =DOREAL
  458 00530 000             NIBHEX  000
  459 00533 0000000         NIBHEX  000000000001
            00001
  460 0053F 0               NIBHEX  0
  461 00540 00000           CON(5)  =DOCSTR
  462 00545 D0000           CON(5)  13
  463 0054A B6E6F64         NIBASC  \knot\
            7
  464 00552 00000           CON(5)  =umEND
  465 00557 00000           CON(5)  =SEMI
  466               * Convert speed of sound to
  467               * File  ISAFRM.s        99
  468 0055C 00000           CON(5)  =UMCONV
  469               * knots
  470               * File  ISAFRM.s        100
  471 00561 00000           CON(5)  ='
  472 00566 00000           CON(5)  =DOIDNT
  473 0056B 20              CON(2)  2
  474 0056D 1413            NIBASC  \A1\
  475 00571 00000           CON(5)  =STO
  476               * STO solutions in global vars.
  477               * File  ISAFRM.s        101
  478 00576 00000           CON(5)  ='
  479 0057B 00000           CON(5)  =DOIDNT
  480 00580 20              CON(2)  2
  481 00582 79              CON(2)  #97
  482 00584 13              NIBASC  \1\
  483 00586 00000           CON(5)  =STO
  484               * A1, \971, P1, T1
  485               * File  ISAFRM.s        102
  486 0058B 00000           CON(5)  ='
  487 00590 00000           CON(5)  =DOIDNT
  488 00595 20              CON(2)  2
  489 00597 0513            NIBASC  \P1\
  490 0059B 00000           CON(5)  =STO
  491               * File  ISAFRM.s        103
  492 005A0 00000           CON(5)  ='
  493 005A5 00000           CON(5)  =DOIDNT
  494 005AA 20              CON(2)  2
  495 005AC 4513            NIBASC  \T1\
  496 005B0 00000           CON(5)  =STO
  497               * File  ISAFRM.s        104
  498 005B5 00000           CON(5)  =SEMI
  499               * END CASE
  500               * File  ISAFRM.s        105
  501 005BA 00000           CON(5)  =DOIDNT
  502 005BF 20              CON(2)  2
  503 005C1 79              CON(2)  #97
  504 005C3 13              NIBASC  \1\
  505 005C5 00000           CON(5)  =U>nbr
  506 005CA 00000           CON(5)  =NOVAL
  507 005CF 00000           CON(5)  =%<>
  508 005D4 00000           CON(5)  =case
  509 005D9 00000           CON(5)  =DOCOL
  510               * Density IS supplied, \971
  511               * File  ISAFRM.s        106
  512 005DE 00000           CON(5)  =DOSYMB
  513               * Create symbolic to solve
  514               * File  ISAFRM.s        107
  515 005E3 00000           CON(5)  =DOIDNT
  516 005E8 20              CON(2)  2
  517 005EA 79              CON(2)  #97
  518 005EC 13              NIBASC  \1\
  519               * File  ISAFRM.s        108
  520 005EE 00000           CON(5)  =DOIDNT
  521 005F3 20              CON(2)  2
  522 005F5 0514            NIBASC  \PA\
  523               * File  ISAFRM.s        109
  524 005F9 00000           CON(5)  =DOROMP
  525 005FE 000000          CON(6)  =~xISA\97
  526               * File  ISAFRM.s        110
  527 00604 00000           CON(5)  =x=
  528               * File  ISAFRM.s        111
  529 00609 00000           CON(5)  =SEMI
  530               * '\971 = ISA\97[PA]'
  531               * File  ISAFRM.s        112
  532 0060E 00000           CON(5)  ='
  533 00613 00000           CON(5)  =DOIDNT
  534 00618 20              CON(2)  2
  535 0061A 0514            NIBASC  \PA\
  536               * Solve for PA
  537               * File  ISAFRM.s        113
  538 0061E 00000           CON(5)  =DOEXT
  539 00623 00000           CON(5)  =DOREAL
  540 00628 000             NIBHEX  000
  541 0062B 0000000         NIBHEX  000000000000
            00000
  542 00637 0               NIBHEX  0
  543 00638 00000           CON(5)  =DOCSTR
  544 0063D 90000           CON(5)  9
  545 00642 6647            NIBASC  \ft\
  546 00646 00000           CON(5)  =umEND
  547 0064B 00000           CON(5)  =SEMI
  548               * Guess value 0_ft
  549               * File  ISAFRM.s        114
  550 00650 00000           CON(5)  =xROOT
  551               * Find ROOT, PA in feet
  552               * File  ISAFRM.s        115
  553 00655 00000           CON(5)  =DUP
  554 0065A 00000           CON(5)  =DOROMP
  555 0065F 000000          CON(6)  =~xISAT
  556               * Calc. temperature at PA
  557               * File  ISAFRM.s        116
  558 00665 00000           CON(5)  =DOEXT
  559 0066A 00000           CON(5)  =DOREAL
  560 0066F 000             NIBHEX  000
  561 00672 0000000         NIBHEX  000000000001
            00001
  562 0067E 0               NIBHEX  0
  563 0067F 00000           CON(5)  =DOCSTR
  564 00684 90000           CON(5)  9
  565 00689 0B              CON(2)  #B0
  566 0068B 34              NIBASC  \C\
  567 0068D 00000           CON(5)  =umEND
  568 00692 00000           CON(5)  =SEMI
  569               * File  ISAFRM.s        117
  570 00697 00000           CON(5)  =UMCONV
  571               * Convert T1 to deg C
  572               * File  ISAFRM.s        118
  573 0069C 00000           CON(5)  =SWAP
  574 006A1 00000           CON(5)  =DUP
  575 006A6 00000           CON(5)  =DOROMP
  576 006AB 000000          CON(6)  =~xISAP
  577               * Calc. pressure at PA
  578               * File  ISAFRM.s        119
  579 006B1 00000           CON(5)  =SWAP
  580 006B6 00000           CON(5)  =DOROMP
  581 006BB 000000          CON(6)  =~xISAa
  582               * Calc. spd. of sound at PA
  583               * File  ISAFRM.s        120
  584 006C1 00000           CON(5)  =DOEXT
  585 006C6 00000           CON(5)  =DOREAL
  586 006CB 000             NIBHEX  000
  587 006CE 0000000         NIBHEX  000000000001
            00001
  588 006DA 0               NIBHEX  0
  589 006DB 00000           CON(5)  =DOCSTR
  590 006E0 D0000           CON(5)  13
  591 006E5 B6E6F64         NIBASC  \knot\
            7
  592 006ED 00000           CON(5)  =umEND
  593 006F2 00000           CON(5)  =SEMI
  594               * Convert speed of sound to
  595               * File  ISAFRM.s        121
  596 006F7 00000           CON(5)  =UMCONV
  597               * knots
  598               * File  ISAFRM.s        122
  599 006FC 00000           CON(5)  ='
  600 00701 00000           CON(5)  =DOIDNT
  601 00706 20              CON(2)  2
  602 00708 1413            NIBASC  \A1\
  603 0070C 00000           CON(5)  =STO
  604               * STO solns. in golbal vars.
  605               * File  ISAFRM.s        123
  606 00711 00000           CON(5)  ='
  607 00716 00000           CON(5)  =DOIDNT
  608 0071B 20              CON(2)  2
  609 0071D 0513            NIBASC  \P1\
  610 00721 00000           CON(5)  =STO
  611               * A1, P1, T1
  612               * File  ISAFRM.s        124
  613 00726 00000           CON(5)  ='
  614 0072B 00000           CON(5)  =DOIDNT
  615 00730 20              CON(2)  2
  616 00732 4513            NIBASC  \T1\
  617 00736 00000           CON(5)  =STO
  618               * File  ISAFRM.s        125
  619 0073B 00000           CON(5)  =SEMI
  620               * END CASE
  621               * File  ISAFRM.s        126
  622 00740 00000           CON(5)  =DOIDNT
  623 00745 20              CON(2)  2
  624 00747 1413            NIBASC  \A1\
  625 0074B 00000           CON(5)  =U>nbr
  626 00750 00000           CON(5)  =NOVAL
  627 00755 00000           CON(5)  =%<>
  628 0075A 00000           CON(5)  =case
  629 0075F 00000           CON(5)  =DOCOL
  630               * Speed of sound IS supplied, A1
  631               * File  ISAFRM.s        127
  632 00764 00000           CON(5)  =DOIDNT
  633 00769 20              CON(2)  2
  634 0076B 1413            NIBASC  \A1\
  635 0076F 00000           CON(5)  =UMSI
  636 00774 00000           CON(5)  ='
  637 00779 00000           CON(5)  =DOIDNT
  638 0077E 20              CON(2)  2
  639 00780 1413            NIBASC  \A1\
  640 00784 00000           CON(5)  =STO
  641               * Convert to m/s and STO
  642               * File  ISAFRM.s        128
  643 00789 00000           CON(5)  =DOSYMB
  644               * Create symbolic to solve
  645               * File  ISAFRM.s        129
  646 0078E 00000           CON(5)  =DOIDNT
  647 00793 20              CON(2)  2
  648 00795 1413            NIBASC  \A1\
  649               * File  ISAFRM.s        130
  650 00799 00000           CON(5)  =DOIDNT
  651 0079E 20              CON(2)  2
  652 007A0 0514            NIBASC  \PA\
  653               * File  ISAFRM.s        131
  654 007A4 00000           CON(5)  =DOROMP
  655 007A9 000000          CON(6)  =~xISAa
  656               * File  ISAFRM.s        132
  657 007AF 00000           CON(5)  =x=
  658               * File  ISAFRM.s        133
  659 007B4 00000           CON(5)  =SEMI
  660               * 'A1 = ISAa[PA]'
  661               * File  ISAFRM.s        134
  662 007B9 00000           CON(5)  ='
  663 007BE 00000           CON(5)  =DOIDNT
  664 007C3 20              CON(2)  2
  665 007C5 0514            NIBASC  \PA\
  666               * Solve for PA
  667               * File  ISAFRM.s        135
  668 007C9 00000           CON(5)  =DOEXT
  669 007CE 00000           CON(5)  =DOREAL
  670 007D3 000             NIBHEX  000
  671 007D6 0000000         NIBHEX  000000000000
            00000
  672 007E2 0               NIBHEX  0
  673 007E3 00000           CON(5)  =DOCSTR
  674 007E8 90000           CON(5)  9
  675 007ED 6647            NIBASC  \ft\
  676 007F1 00000           CON(5)  =umEND
  677 007F6 00000           CON(5)  =SEMI
  678               * Guess value 0_ft
  679               * File  ISAFRM.s        136
  680 007FB 00000           CON(5)  =xROOT
  681               * Find ROOT, PA in feet
  682               * File  ISAFRM.s        137
  683 00800 00000           CON(5)  =DUP
  684 00805 00000           CON(5)  =DOROMP
  685 0080A 000000          CON(6)  =~xISAT
  686               * Calc. temperature at PA
  687               * File  ISAFRM.s        138
  688 00810 00000           CON(5)  =DOEXT
  689 00815 00000           CON(5)  =DOREAL
  690 0081A 000             NIBHEX  000
  691 0081D 0000000         NIBHEX  000000000001
            00001
  692 00829 0               NIBHEX  0
  693 0082A 00000           CON(5)  =DOCSTR
  694 0082F 90000           CON(5)  9
  695 00834 0B              CON(2)  #B0
  696 00836 34              NIBASC  \C\
  697 00838 00000           CON(5)  =umEND
  698 0083D 00000           CON(5)  =SEMI
  699               * File  ISAFRM.s        139
  700 00842 00000           CON(5)  =UMCONV
  701               * Convert T1 to deg C
  702               * File  ISAFRM.s        140
  703 00847 00000           CON(5)  =SWAP
  704 0084C 00000           CON(5)  =DUP
  705 00851 00000           CON(5)  =DOROMP
  706 00856 000000          CON(6)  =~xISAP
  707               * Calc. pressure at PA
  708               * File  ISAFRM.s        141
  709 0085C 00000           CON(5)  =SWAP
  710 00861 00000           CON(5)  =DOROMP
  711 00866 000000          CON(6)  =~xISA\97
  712               * Calc. density at PA
  713               * File  ISAFRM.s        142
  714 0086C 00000           CON(5)  =DOIDNT
  715 00871 20              CON(2)  2
  716 00873 1413            NIBASC  \A1\
  717               * Convert speed of sound
  718               * File  ISAFRM.s        143
  719 00877 00000           CON(5)  =DOEXT
  720 0087C 00000           CON(5)  =DOREAL
  721 00881 000             NIBHEX  000
  722 00884 0000000         NIBHEX  000000000001
            00001
  723 00890 0               NIBHEX  0
  724 00891 00000           CON(5)  =DOCSTR
  725 00896 D0000           CON(5)  13
  726 0089B B6E6F64         NIBASC  \knot\
            7
  727 008A3 00000           CON(5)  =umEND
  728 008A8 00000           CON(5)  =SEMI
  729               * back to
  730               * File  ISAFRM.s        144
  731 008AD 00000           CON(5)  =UMCONV
  732               * knots
  733               * File  ISAFRM.s        145
  734 008B2 00000           CON(5)  ='
  735 008B7 00000           CON(5)  =DOIDNT
  736 008BC 20              CON(2)  2
  737 008BE 1413            NIBASC  \A1\
  738 008C2 00000           CON(5)  =STO
  739               * STO solutions in global vars.
  740               * File  ISAFRM.s        146
  741 008C7 00000           CON(5)  ='
  742 008CC 00000           CON(5)  =DOIDNT
  743 008D1 20              CON(2)  2
  744 008D3 79              CON(2)  #97
  745 008D5 13              NIBASC  \1\
  746 008D7 00000           CON(5)  =STO
  747               * A1, \971, P1, T1
  748               * File  ISAFRM.s        147
  749 008DC 00000           CON(5)  ='
  750 008E1 00000           CON(5)  =DOIDNT
  751 008E6 20              CON(2)  2
  752 008E8 0513            NIBASC  \P1\
  753 008EC 00000           CON(5)  =STO
  754               * File  ISAFRM.s        148
  755 008F1 00000           CON(5)  ='
  756 008F6 00000           CON(5)  =DOIDNT
  757 008FB 20              CON(2)  2
  758 008FD 4513            NIBASC  \T1\
  759 00901 00000           CON(5)  =STO
  760               * File  ISAFRM.s        149
  761 00906 00000           CON(5)  =SEMI
  762               * END CASE
  763               * File  ISAFRM.s        150
  764 0090B 00000           CON(5)  =SEMI
  765               * END ELSE
  766               * File  ISAFRM.s        151
  767 00910 00000           CON(5)  =SEMI
  768 00915 00000           CON(5)  =REPEAT
  769               * REPEAT loop
  770               * File  ISAFRM.s        152
  771 0091A 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAFRM.a       Page    2

 %<>                               Ext                   -   101   202   346
                                         507   627
 '                                 Ext                   -    60    67    75
                                          82    89   164   171   179   185   211
                                         237   311   318   326   332   355   381
                                         471   478   486   492   532   599   606
                                         613   636   662   734   741   749   755
 BEGIN                             Ext                   -    49
 CHR_m                             Ext                   -   434
 DOCOL                             Ext                   -    47    57   105
                                         194   204   348   509   629
 DOCSTR                            Ext                   -   121   154   248
                                         268   301   392   412   435   461   543
                                         563   589   673   693   724
 DOEXT                             Ext                   -   116   149   243
                                         263   296   387   407   429   456   538
                                         558   584   668   688   719
 DOIDNT                            Ext                   -    61    68    76
                                          83    90    96   108   165   172   180
                                         186   197   207   212   221   225   238
                                         258   312   319   327   333   341   351
                                         356   365   369   382   424   472   479
                                         487   493   501   515   520   533   600
                                         607   614   622   632   637   646   650
                                         663   714   735   742   750   756
 DOREAL                            Ext                   -   117   150   244
                                         264   297   388   408   430   457   539
                                         559   585   669   689   720
 DOROMP                            Ext                   -    52   112   134
                                         140   145   229   281   287   292   373
                                         403   447   452   524   554   575   580
                                         654   684   705   710
 DOSYMB                            Ext                   -   218   362   512
                                         643
 DUP                               Ext                   -   111   133   139
                                         280   286   402   446   553   574   683
                                         704
 ITE                               Ext                   -   104
 NOVAL                             Ext                   -   100   201   345
                                         506   626
 REPEAT                            Ext                   -   768
=RomId                             Abs     806 #00000326 -    33
 SEMI                              Ext                   -   126   158   191
                                         234   252   273   305   338   378   396
                                         417   440   465   498   529   547   568
                                         593   619   659   677   698   728   761
                                         764   767   771
 STO                               Ext                   -    64    72    79
                                          86    93   168   176   183   189   215
                                         315   323   330   336   359   475   483
                                         490   496   603   610   617   640   738
                                         746   753   759
 SWAP                              Ext                   -   132   138   144
                                         279   285   291   422   445   451   573
                                         579   703   709
 U>nbr                             Ext                   -    99   200   344
                                         505   625
 UMCONV                            Ext                   -   129   161   276
                                         308   419   442   468   570   596   700
                                         731
 UMSI                              Ext                   -   210   354   635
 WHILE                             Ext                   -    56
 case                              Ext                   -   203   347   508
                                         628
 umEND                             Ext                   -   125   157   251
                                         272   304   395   416   439   464   546
                                         567   592   676   697   727
 umP                               Ext                   -   438
 x=                                Ext                   -   232   376   527
                                         657
=xISAFRM                           Rel       6 #00000006 -    45
 xROOT                             Ext                   -   255   399   550
                                         680
 ~ISAform                          Ext                   -    53
 ~xISAFRM                          Ext                   -    44
 ~xISAP                            Ext                   -   135   282   374
                                         576   706
 ~xISAT                            Ext                   -   113   230   404
                                         555   685
 ~xISA\97                          Ext                   -   141   288   448
                                         525   711
 ~xISAa                            Ext                   -   146   293   453
                                         581   655
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
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
