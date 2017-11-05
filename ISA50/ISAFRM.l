Saturn Assembler                                       Fri Jun 19 11:51:27 2009
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
   21               * Version:                                                                      1.25
   22               * Date:            19 June 2009
   23               * COMPATIBILITY:   HP50, HP48
   24               * INPUT/     PA     Geometric Altitude (Pressure altitude (feet))
   25               *   OUTPUT:  T1                                 Standard ISA temperature at PA (deg C)
   26               *                                                                                               P1     Standard ISA pressure at PA (mbar)
   27               *            \971   Standard ISA density at PA (kg/m^3)
   28               *            A1     Standard speed of sound in ISA at PA (knots)
   29               * File  ISAFRM.s        27
   30
   31               * File  ISAFRM.s        28
   32               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA50\ISA50.h
   33
   34               =RomId  EQU     #326
   35               * ROMID set to 326
   36
   37
   38
   39
   40
   41
   42
   43
   44
   45               *|| Resuming file ISAFRM.s at line 28
   46 00000 000000          CON(6)  =~xISAFRM
   47 00006         =xISAFRM
   48               * File  ISAFRM.s        30
   49 00006 00000           CON(5)  =DOCOL
   50               * File  ISAFRM.s        31
   51 0000B 00000           CON(5)  =CK0
   52               * No arguments
   53               * File  ISAFRM.s        32
   54 00010 00000           CON(5)  =BEGIN
   55               * BEGIN loop
   56               * File  ISAFRM.s        33
   57 00015 00000           CON(5)  =DOROMP
   58 0001A 000000          CON(6)  =~ISAform
   59               * Display ISA input/output form
   60               * File  ISAFRM.s        34
   61 00020 00000           CON(5)  =WHILE
   62 00025 00000           CON(5)  =DOCOL
   63               * TRUE = OK is pressed
   64               * File  ISAFRM.s        35
   65 0002A 00000           CON(5)  ='
   66 0002F 00000           CON(5)  =DOIDNT
   67 00034 20              CON(2)  2
   68 00036 1413            NIBASC  \A1\
   69 0003A 00000           CON(5)  =STO
   70               * STO speed of sound
   71               * File  ISAFRM.s        36
   72 0003F 00000           CON(5)  ='
   73 00044 00000           CON(5)  =DOIDNT
   74 00049 20              CON(2)  2
   75 0004B 79              CON(2)  #97
   76 0004D 13              NIBASC  \1\
   77 0004F 00000           CON(5)  =STO
   78               * STO density
   79               * File  ISAFRM.s        37
   80 00054 00000           CON(5)  ='
   81 00059 00000           CON(5)  =DOIDNT
   82 0005E 20              CON(2)  2
   83 00060 0513            NIBASC  \P1\
   84 00064 00000           CON(5)  =STO
   85               * STO static pressure
   86               * File  ISAFRM.s        38
   87 00069 00000           CON(5)  ='
   88 0006E 00000           CON(5)  =DOIDNT
   89 00073 20              CON(2)  2
   90 00075 4513            NIBASC  \T1\
   91 00079 00000           CON(5)  =STO
   92               * STO static air temperature
   93               * File  ISAFRM.s        39
   94 0007E 00000           CON(5)  ='
   95 00083 00000           CON(5)  =DOIDNT
   96 00088 20              CON(2)  2
   97 0008A 0514            NIBASC  \PA\
   98 0008E 00000           CON(5)  =STO
   99               * STO pressure altitude
  100               * If Pressure Altitude is supplied
  101               * File  ISAFRM.s        41
  102 00093 00000           CON(5)  =DOIDNT
  103 00098 20              CON(2)  2
  104 0009A 0514            NIBASC  \PA\
  105 0009E 00000           CON(5)  =NOVAL
  106 000A3 00000           CON(5)  =EQUALNOT
  107 000A8 00000           CON(5)  =case
  108 000AD 00000           CON(5)  =DOCOL
  109               * Press. Alt. IS supplied, PA
  110               * File  ISAFRM.s        42
  111 000B2 00000           CON(5)  =DOIDNT
  112 000B7 20              CON(2)  2
  113 000B9 0514            NIBASC  \PA\
  114 000BD 00000           CON(5)  =DUP
  115 000C2 00000           CON(5)  =DOROMP
  116 000C7 000000          CON(6)  =~xISAT
  117               * Calc. ISA temperature
  118               * File  ISAFRM.s        43
  119 000CD 00000           CON(5)  =DOEXT
  120 000D2 00000           CON(5)  =DOREAL
  121 000D7 000             NIBHEX  000
  122 000DA 0000000         NIBHEX  000000000001
            00001
  123 000E6 0               NIBHEX  0
  124 000E7 00000           CON(5)  =DOCSTR
  125 000EC 90000           CON(5)  9
  126 000F1 0B              CON(2)  #B0
  127 000F3 34              NIBASC  \C\
  128 000F5 00000           CON(5)  =umEND
  129 000FA 00000           CON(5)  =SEMI
  130               * Convert temperature to
  131               * File  ISAFRM.s        44
  132 000FF 00000           CON(5)  =UMCONV
  133               * deg C
  134               * File  ISAFRM.s        45
  135 00104 00000           CON(5)  =SWAP
  136 00109 00000           CON(5)  =DUP
  137 0010E 00000           CON(5)  =DOROMP
  138 00113 000000          CON(6)  =~xISAP
  139               * Calc. pressure at PA
  140               * File  ISAFRM.s        46
  141 00119 00000           CON(5)  =SWAP
  142 0011E 00000           CON(5)  =DUP
  143 00123 00000           CON(5)  =DOROMP
  144 00128 000000          CON(6)  =~xISA\97
  145               * Calc. density at PA
  146               * File  ISAFRM.s        47
  147 0012E 00000           CON(5)  =SWAP
  148 00133 00000           CON(5)  =DOROMP
  149 00138 000000          CON(6)  =~xISAa
  150               * Calc. spd. of sound at PA
  151               * File  ISAFRM.s        48
  152 0013E 00000           CON(5)  =DOEXT
  153 00143 00000           CON(5)  =DOREAL
  154 00148 000             NIBHEX  000
  155 0014B 0000000         NIBHEX  000000000001
            00001
  156 00157 0               NIBHEX  0
  157 00158 00000           CON(5)  =DOCSTR
  158 0015D D0000           CON(5)  13
  159 00162 B6E6F64         NIBASC  \knot\
            7
  160 0016A 00000           CON(5)  =umEND
  161 0016F 00000           CON(5)  =SEMI
  162               * Convert speed of sound to
  163               * File  ISAFRM.s        49
  164 00174 00000           CON(5)  =UMCONV
  165               * knots
  166               * File  ISAFRM.s        50
  167 00179 00000           CON(5)  ='
  168 0017E 00000           CON(5)  =DOIDNT
  169 00183 20              CON(2)  2
  170 00185 1413            NIBASC  \A1\
  171 00189 00000           CON(5)  =STO
  172               * STO solutions in global vars.
  173               * File  ISAFRM.s        51
  174 0018E 00000           CON(5)  ='
  175 00193 00000           CON(5)  =DOIDNT
  176 00198 20              CON(2)  2
  177 0019A 79              CON(2)  #97
  178 0019C 13              NIBASC  \1\
  179 0019E 00000           CON(5)  =STO
  180               * A1, \971, P1, T1
  181               * File  ISAFRM.s        52
  182 001A3 00000           CON(5)  ='
  183 001A8 00000           CON(5)  =DOIDNT
  184 001AD 20              CON(2)  2
  185 001AF 0513            NIBASC  \P1\
  186 001B3 00000           CON(5)  =STO
  187               * File  ISAFRM.s        53
  188 001B8 00000           CON(5)  ='
  189 001BD 00000           CON(5)  =DOIDNT
  190 001C2 20              CON(2)  2
  191 001C4 4513            NIBASC  \T1\
  192 001C8 00000           CON(5)  =STO
  193               * File  ISAFRM.s        54
  194 001CD 00000           CON(5)  =SEMI
  195               * END CASE
  196               * If Static Temperature is supplied
  197               * File  ISAFRM.s        56
  198 001D2 00000           CON(5)  =DOIDNT
  199 001D7 20              CON(2)  2
  200 001D9 4513            NIBASC  \T1\
  201 001DD 00000           CON(5)  =NOVAL
  202 001E2 00000           CON(5)  =EQUALNOT
  203 001E7 00000           CON(5)  =case
  204 001EC 00000           CON(5)  =DOCOL
  205               * Temp. IS supplied, T1
  206               * File  ISAFRM.s        57
  207 001F1 00000           CON(5)  =DOIDNT
  208 001F6 20              CON(2)  2
  209 001F8 4513            NIBASC  \T1\
  210 001FC 00000           CON(5)  =UMSI
  211 00201 00000           CON(5)  ='
  212 00206 00000           CON(5)  =DOIDNT
  213 0020B 20              CON(2)  2
  214 0020D 4513            NIBASC  \T1\
  215 00211 00000           CON(5)  =STO
  216               * Convert to K and STO
  217               * File  ISAFRM.s        58
  218 00216 00000           CON(5)  =DOSYMB
  219               * Create symbolic to solve
  220               * File  ISAFRM.s        59
  221 0021B 00000           CON(5)  =DOIDNT
  222 00220 20              CON(2)  2
  223 00222 4513            NIBASC  \T1\
  224               * File  ISAFRM.s        60
  225 00226 00000           CON(5)  =DOIDNT
  226 0022B 20              CON(2)  2
  227 0022D 0514            NIBASC  \PA\
  228               * File  ISAFRM.s        61
  229 00231 00000           CON(5)  =DOROMP
  230 00236 000000          CON(6)  =~xISAT
  231               * File  ISAFRM.s        62
  232 0023C 00000           CON(5)  =x=
  233               * File  ISAFRM.s        63
  234 00241 00000           CON(5)  =SEMI
  235               * 'T1 = ISAT[PA]'
  236               * File  ISAFRM.s        64
  237 00246 00000           CON(5)  ='
  238 0024B 00000           CON(5)  =DOIDNT
  239 00250 20              CON(2)  2
  240 00252 0514            NIBASC  \PA\
  241               * Solve for PA
  242               * File  ISAFRM.s        65
  243 00256 00000           CON(5)  =DOEXT
  244 0025B 00000           CON(5)  =DOREAL
  245 00260 000             NIBHEX  000
  246 00263 0000000         NIBHEX  000000000000
            00000
  247 0026F 0               NIBHEX  0
  248 00270 00000           CON(5)  =DOCSTR
  249 00275 90000           CON(5)  9
  250 0027A 6647            NIBASC  \ft\
  251 0027E 00000           CON(5)  =umEND
  252 00283 00000           CON(5)  =SEMI
  253               * Guess value 0_ft
  254               * File  ISAFRM.s        66
  255 00288 00000           CON(5)  =xROOT
  256               * Find ROOT, PA in feet
  257               * File  ISAFRM.s        67
  258 0028D 00000           CON(5)  =DOIDNT
  259 00292 20              CON(2)  2
  260 00294 4513            NIBASC  \T1\
  261               * Convert T1
  262               * File  ISAFRM.s        68
  263 00298 00000           CON(5)  =DOEXT
  264 0029D 00000           CON(5)  =DOREAL
  265 002A2 000             NIBHEX  000
  266 002A5 0000000         NIBHEX  000000000001
            00001
  267 002B1 0               NIBHEX  0
  268 002B2 00000           CON(5)  =DOCSTR
  269 002B7 90000           CON(5)  9
  270 002BC 0B              CON(2)  #B0
  271 002BE 34              NIBASC  \C\
  272 002C0 00000           CON(5)  =umEND
  273 002C5 00000           CON(5)  =SEMI
  274               * back to
  275               * File  ISAFRM.s        69
  276 002CA 00000           CON(5)  =UMCONV
  277               * deg C
  278               * File  ISAFRM.s        70
  279 002CF 00000           CON(5)  =SWAP
  280 002D4 00000           CON(5)  =DUP
  281 002D9 00000           CON(5)  =DOROMP
  282 002DE 000000          CON(6)  =~xISAP
  283               * Calc. pressure at PA
  284               * File  ISAFRM.s        71
  285 002E4 00000           CON(5)  =SWAP
  286 002E9 00000           CON(5)  =DUP
  287 002EE 00000           CON(5)  =DOROMP
  288 002F3 000000          CON(6)  =~xISA\97
  289               * Calc. density at PA
  290               * File  ISAFRM.s        72
  291 002F9 00000           CON(5)  =SWAP
  292 002FE 00000           CON(5)  =DOROMP
  293 00303 000000          CON(6)  =~xISAa
  294               * Calc. speed of sound at PA
  295               * File  ISAFRM.s        73
  296 00309 00000           CON(5)  =DOEXT
  297 0030E 00000           CON(5)  =DOREAL
  298 00313 000             NIBHEX  000
  299 00316 0000000         NIBHEX  000000000001
            00001
  300 00322 0               NIBHEX  0
  301 00323 00000           CON(5)  =DOCSTR
  302 00328 D0000           CON(5)  13
  303 0032D B6E6F64         NIBASC  \knot\
            7
  304 00335 00000           CON(5)  =umEND
  305 0033A 00000           CON(5)  =SEMI
  306               * Convert speed of sound to
  307               * File  ISAFRM.s        74
  308 0033F 00000           CON(5)  =UMCONV
  309               * knots
  310               * File  ISAFRM.s        75
  311 00344 00000           CON(5)  ='
  312 00349 00000           CON(5)  =DOIDNT
  313 0034E 20              CON(2)  2
  314 00350 1413            NIBASC  \A1\
  315 00354 00000           CON(5)  =STO
  316               * STO solutions in global vars.
  317               * File  ISAFRM.s        76
  318 00359 00000           CON(5)  ='
  319 0035E 00000           CON(5)  =DOIDNT
  320 00363 20              CON(2)  2
  321 00365 79              CON(2)  #97
  322 00367 13              NIBASC  \1\
  323 00369 00000           CON(5)  =STO
  324               * A1, \971, P1, T1
  325               * File  ISAFRM.s        77
  326 0036E 00000           CON(5)  ='
  327 00373 00000           CON(5)  =DOIDNT
  328 00378 20              CON(2)  2
  329 0037A 0513            NIBASC  \P1\
  330 0037E 00000           CON(5)  =STO
  331               * File  ISAFRM.s        78
  332 00383 00000           CON(5)  ='
  333 00388 00000           CON(5)  =DOIDNT
  334 0038D 20              CON(2)  2
  335 0038F 4513            NIBASC  \T1\
  336 00393 00000           CON(5)  =STO
  337               * File  ISAFRM.s        79
  338 00398 00000           CON(5)  =SEMI
  339               * END CASE
  340               * Static Pressure is supplied
  341               * File  ISAFRM.s        81
  342 0039D 00000           CON(5)  =DOIDNT
  343 003A2 20              CON(2)  2
  344 003A4 0513            NIBASC  \P1\
  345 003A8 00000           CON(5)  =NOVAL
  346 003AD 00000           CON(5)  =EQUALNOT
  347 003B2 00000           CON(5)  =case
  348 003B7 00000           CON(5)  =DOCOL
  349               * Pressure IS supplied, P1
  350               * File  ISAFRM.s        82
  351 003BC 00000           CON(5)  =DOSYMB
  352               * Create symbolic to solve
  353               * File  ISAFRM.s        83
  354 003C1 00000           CON(5)  =DOIDNT
  355 003C6 20              CON(2)  2
  356 003C8 0513            NIBASC  \P1\
  357               * File  ISAFRM.s        84
  358 003CC 00000           CON(5)  =DOIDNT
  359 003D1 20              CON(2)  2
  360 003D3 0514            NIBASC  \PA\
  361               * File  ISAFRM.s        85
  362 003D7 00000           CON(5)  =DOROMP
  363 003DC 000000          CON(6)  =~xISAP
  364               * File  ISAFRM.s        86
  365 003E2 00000           CON(5)  =x=
  366               * File  ISAFRM.s        87
  367 003E7 00000           CON(5)  =SEMI
  368               * 'P1 = ISAP[PA]'
  369               * File  ISAFRM.s        88
  370 003EC 00000           CON(5)  ='
  371 003F1 00000           CON(5)  =DOIDNT
  372 003F6 20              CON(2)  2
  373 003F8 0514            NIBASC  \PA\
  374               * Solve for PA
  375               * File  ISAFRM.s        89
  376 003FC 00000           CON(5)  =DOEXT
  377 00401 00000           CON(5)  =DOREAL
  378 00406 000             NIBHEX  000
  379 00409 0000000         NIBHEX  000000000000
            00000
  380 00415 0               NIBHEX  0
  381 00416 00000           CON(5)  =DOCSTR
  382 0041B 90000           CON(5)  9
  383 00420 6647            NIBASC  \ft\
  384 00424 00000           CON(5)  =umEND
  385 00429 00000           CON(5)  =SEMI
  386               * Guess value 0_ft
  387               * File  ISAFRM.s        90
  388 0042E 00000           CON(5)  =xROOT
  389               * Find ROOT, PA in feet
  390               * File  ISAFRM.s        91
  391 00433 00000           CON(5)  =DUP
  392 00438 00000           CON(5)  =DOROMP
  393 0043D 000000          CON(6)  =~xISAT
  394               * Calc. temperature at PA
  395               * File  ISAFRM.s        92
  396 00443 00000           CON(5)  =DOEXT
  397 00448 00000           CON(5)  =DOREAL
  398 0044D 000             NIBHEX  000
  399 00450 0000000         NIBHEX  000000000001
            00001
  400 0045C 0               NIBHEX  0
  401 0045D 00000           CON(5)  =DOCSTR
  402 00462 90000           CON(5)  9
  403 00467 0B              CON(2)  #B0
  404 00469 34              NIBASC  \C\
  405 0046B 00000           CON(5)  =umEND
  406 00470 00000           CON(5)  =SEMI
  407               * File  ISAFRM.s        93
  408 00475 00000           CON(5)  =UMCONV
  409               * Convert T1 to deg C
  410               * File  ISAFRM.s        94
  411 0047A 00000           CON(5)  =SWAP
  412 0047F 00000           CON(5)  =DUP
  413 00484 00000           CON(5)  =DOROMP
  414 00489 000000          CON(6)  =~xISA\97
  415               * Calc. density at PA
  416               * File  ISAFRM.s        95
  417 0048F 00000           CON(5)  =SWAP
  418 00494 00000           CON(5)  =DOROMP
  419 00499 000000          CON(6)  =~xISAa
  420               * Calc. speed of sound at PA
  421               * File  ISAFRM.s        96
  422 0049F 00000           CON(5)  =DOEXT
  423 004A4 00000           CON(5)  =DOREAL
  424 004A9 000             NIBHEX  000
  425 004AC 0000000         NIBHEX  000000000001
            00001
  426 004B8 0               NIBHEX  0
  427 004B9 00000           CON(5)  =DOCSTR
  428 004BE D0000           CON(5)  13
  429 004C3 B6E6F64         NIBASC  \knot\
            7
  430 004CB 00000           CON(5)  =umEND
  431 004D0 00000           CON(5)  =SEMI
  432               * Convert speed of sound to
  433               * File  ISAFRM.s        97
  434 004D5 00000           CON(5)  =UMCONV
  435               * knots
  436               * File  ISAFRM.s        98
  437 004DA 00000           CON(5)  ='
  438 004DF 00000           CON(5)  =DOIDNT
  439 004E4 20              CON(2)  2
  440 004E6 1413            NIBASC  \A1\
  441 004EA 00000           CON(5)  =STO
  442               * STO solutions in global vars.
  443               * File  ISAFRM.s        99
  444 004EF 00000           CON(5)  ='
  445 004F4 00000           CON(5)  =DOIDNT
  446 004F9 20              CON(2)  2
  447 004FB 79              CON(2)  #97
  448 004FD 13              NIBASC  \1\
  449 004FF 00000           CON(5)  =STO
  450               * A1, \971, P1, T1
  451               * File  ISAFRM.s        100
  452 00504 00000           CON(5)  ='
  453 00509 00000           CON(5)  =DOIDNT
  454 0050E 20              CON(2)  2
  455 00510 4513            NIBASC  \T1\
  456 00514 00000           CON(5)  =STO
  457               * File  ISAFRM.s        101
  458 00519 00000           CON(5)  =SEMI
  459               * END CASE
  460               * Density is supplied
  461               * File  ISAFRM.s        103
  462 0051E 00000           CON(5)  =DOIDNT
  463 00523 20              CON(2)  2
  464 00525 79              CON(2)  #97
  465 00527 13              NIBASC  \1\
  466 00529 00000           CON(5)  =NOVAL
  467 0052E 00000           CON(5)  =EQUALNOT
  468 00533 00000           CON(5)  =case
  469 00538 00000           CON(5)  =DOCOL
  470               * Density IS supplied, \971
  471               * File  ISAFRM.s        104
  472 0053D 00000           CON(5)  =DOSYMB
  473               * Create symbolic to solve
  474               * File  ISAFRM.s        105
  475 00542 00000           CON(5)  =DOIDNT
  476 00547 20              CON(2)  2
  477 00549 79              CON(2)  #97
  478 0054B 13              NIBASC  \1\
  479               * File  ISAFRM.s        106
  480 0054D 00000           CON(5)  =DOIDNT
  481 00552 20              CON(2)  2
  482 00554 0514            NIBASC  \PA\
  483               * File  ISAFRM.s        107
  484 00558 00000           CON(5)  =DOROMP
  485 0055D 000000          CON(6)  =~xISA\97
  486               * File  ISAFRM.s        108
  487 00563 00000           CON(5)  =x=
  488               * File  ISAFRM.s        109
  489 00568 00000           CON(5)  =SEMI
  490               * '\971 = ISA\97[PA]'
  491               * File  ISAFRM.s        110
  492 0056D 00000           CON(5)  ='
  493 00572 00000           CON(5)  =DOIDNT
  494 00577 20              CON(2)  2
  495 00579 0514            NIBASC  \PA\
  496               * Solve for PA
  497               * File  ISAFRM.s        111
  498 0057D 00000           CON(5)  =DOEXT
  499 00582 00000           CON(5)  =DOREAL
  500 00587 000             NIBHEX  000
  501 0058A 0000000         NIBHEX  000000000000
            00000
  502 00596 0               NIBHEX  0
  503 00597 00000           CON(5)  =DOCSTR
  504 0059C 90000           CON(5)  9
  505 005A1 6647            NIBASC  \ft\
  506 005A5 00000           CON(5)  =umEND
  507 005AA 00000           CON(5)  =SEMI
  508               * Guess value 0_ft
  509               * File  ISAFRM.s        112
  510 005AF 00000           CON(5)  =xROOT
  511               * Find ROOT, PA in feet
  512               * File  ISAFRM.s        113
  513 005B4 00000           CON(5)  =DUP
  514 005B9 00000           CON(5)  =DOROMP
  515 005BE 000000          CON(6)  =~xISAT
  516               * Calc. temperature at PA
  517               * File  ISAFRM.s        114
  518 005C4 00000           CON(5)  =DOEXT
  519 005C9 00000           CON(5)  =DOREAL
  520 005CE 000             NIBHEX  000
  521 005D1 0000000         NIBHEX  000000000001
            00001
  522 005DD 0               NIBHEX  0
  523 005DE 00000           CON(5)  =DOCSTR
  524 005E3 90000           CON(5)  9
  525 005E8 0B              CON(2)  #B0
  526 005EA 34              NIBASC  \C\
  527 005EC 00000           CON(5)  =umEND
  528 005F1 00000           CON(5)  =SEMI
  529               * File  ISAFRM.s        115
  530 005F6 00000           CON(5)  =UMCONV
  531               * Convert T1 to deg C
  532               * File  ISAFRM.s        116
  533 005FB 00000           CON(5)  =SWAP
  534 00600 00000           CON(5)  =DUP
  535 00605 00000           CON(5)  =DOROMP
  536 0060A 000000          CON(6)  =~xISAP
  537               * Calc. pressure at PA
  538               * File  ISAFRM.s        117
  539 00610 00000           CON(5)  =SWAP
  540 00615 00000           CON(5)  =DOROMP
  541 0061A 000000          CON(6)  =~xISAa
  542               * Calc. spd. of sound at PA
  543               * File  ISAFRM.s        118
  544 00620 00000           CON(5)  =DOEXT
  545 00625 00000           CON(5)  =DOREAL
  546 0062A 000             NIBHEX  000
  547 0062D 0000000         NIBHEX  000000000001
            00001
  548 00639 0               NIBHEX  0
  549 0063A 00000           CON(5)  =DOCSTR
  550 0063F D0000           CON(5)  13
  551 00644 B6E6F64         NIBASC  \knot\
            7
  552 0064C 00000           CON(5)  =umEND
  553 00651 00000           CON(5)  =SEMI
  554               * Convert speed of sound to
  555               * File  ISAFRM.s        119
  556 00656 00000           CON(5)  =UMCONV
  557               * knots
  558               * File  ISAFRM.s        120
  559 0065B 00000           CON(5)  ='
  560 00660 00000           CON(5)  =DOIDNT
  561 00665 20              CON(2)  2
  562 00667 1413            NIBASC  \A1\
  563 0066B 00000           CON(5)  =STO
  564               * STO solns. in golbal vars.
  565               * File  ISAFRM.s        121
  566 00670 00000           CON(5)  ='
  567 00675 00000           CON(5)  =DOIDNT
  568 0067A 20              CON(2)  2
  569 0067C 0513            NIBASC  \P1\
  570 00680 00000           CON(5)  =STO
  571               * A1, P1, T1
  572               * File  ISAFRM.s        122
  573 00685 00000           CON(5)  ='
  574 0068A 00000           CON(5)  =DOIDNT
  575 0068F 20              CON(2)  2
  576 00691 4513            NIBASC  \T1\
  577 00695 00000           CON(5)  =STO
  578               * File  ISAFRM.s        123
  579 0069A 00000           CON(5)  =SEMI
  580               * END CASE
  581               * Speed of sound is supplied
  582               * File  ISAFRM.s        125
  583 0069F 00000           CON(5)  =DOIDNT
  584 006A4 20              CON(2)  2
  585 006A6 1413            NIBASC  \A1\
  586 006AA 00000           CON(5)  =NOVAL
  587 006AF 00000           CON(5)  =EQUALNOT
  588 006B4 00000           CON(5)  =case
  589 006B9 00000           CON(5)  =DOCOL
  590               * Speed of sound IS supplied, A1
  591               * File  ISAFRM.s        126
  592 006BE 00000           CON(5)  =DOSYMB
  593               * Create symbolic to solve
  594               * File  ISAFRM.s        127
  595 006C3 00000           CON(5)  =DOIDNT
  596 006C8 20              CON(2)  2
  597 006CA 1413            NIBASC  \A1\
  598               * File  ISAFRM.s        128
  599 006CE 00000           CON(5)  =DOIDNT
  600 006D3 20              CON(2)  2
  601 006D5 0514            NIBASC  \PA\
  602               * File  ISAFRM.s        129
  603 006D9 00000           CON(5)  =DOROMP
  604 006DE 000000          CON(6)  =~xISAa
  605               * File  ISAFRM.s        130
  606 006E4 00000           CON(5)  =x=
  607               * File  ISAFRM.s        131
  608 006E9 00000           CON(5)  =SEMI
  609               * 'A1 = ISAa[PA]'
  610               * File  ISAFRM.s        132
  611 006EE 00000           CON(5)  ='
  612 006F3 00000           CON(5)  =DOIDNT
  613 006F8 20              CON(2)  2
  614 006FA 0514            NIBASC  \PA\
  615               * Solve for PA
  616               * File  ISAFRM.s        133
  617 006FE 00000           CON(5)  =DOEXT
  618 00703 00000           CON(5)  =DOREAL
  619 00708 000             NIBHEX  000
  620 0070B 0000000         NIBHEX  000000000000
            00000
  621 00717 0               NIBHEX  0
  622 00718 00000           CON(5)  =DOCSTR
  623 0071D 90000           CON(5)  9
  624 00722 6647            NIBASC  \ft\
  625 00726 00000           CON(5)  =umEND
  626 0072B 00000           CON(5)  =SEMI
  627               * Guess value 0_ft
  628               * File  ISAFRM.s        134
  629 00730 00000           CON(5)  =xROOT
  630               * Find ROOT, PA in feet
  631               * File  ISAFRM.s        135
  632 00735 00000           CON(5)  =DUP
  633 0073A 00000           CON(5)  =DOROMP
  634 0073F 000000          CON(6)  =~xISAT
  635               * Calc. temperature at PA
  636               * File  ISAFRM.s        136
  637 00745 00000           CON(5)  =DOEXT
  638 0074A 00000           CON(5)  =DOREAL
  639 0074F 000             NIBHEX  000
  640 00752 0000000         NIBHEX  000000000001
            00001
  641 0075E 0               NIBHEX  0
  642 0075F 00000           CON(5)  =DOCSTR
  643 00764 90000           CON(5)  9
  644 00769 0B              CON(2)  #B0
  645 0076B 34              NIBASC  \C\
  646 0076D 00000           CON(5)  =umEND
  647 00772 00000           CON(5)  =SEMI
  648               * File  ISAFRM.s        137
  649 00777 00000           CON(5)  =UMCONV
  650               * Convert T1 to deg C
  651               * File  ISAFRM.s        138
  652 0077C 00000           CON(5)  =SWAP
  653 00781 00000           CON(5)  =DUP
  654 00786 00000           CON(5)  =DOROMP
  655 0078B 000000          CON(6)  =~xISAP
  656               * Calc. pressure at PA
  657               * File  ISAFRM.s        139
  658 00791 00000           CON(5)  =SWAP
  659 00796 00000           CON(5)  =DOROMP
  660 0079B 000000          CON(6)  =~xISA\97
  661               * Calc. density at PA
  662               * File  ISAFRM.s        140
  663 007A1 00000           CON(5)  ='
  664 007A6 00000           CON(5)  =DOIDNT
  665 007AB 20              CON(2)  2
  666 007AD 79              CON(2)  #97
  667 007AF 13              NIBASC  \1\
  668 007B1 00000           CON(5)  =STO
  669               * STO solutions in global vars.
  670               * File  ISAFRM.s        141
  671 007B6 00000           CON(5)  ='
  672 007BB 00000           CON(5)  =DOIDNT
  673 007C0 20              CON(2)  2
  674 007C2 0513            NIBASC  \P1\
  675 007C6 00000           CON(5)  =STO
  676               * A1, \971, P1, T1
  677               * File  ISAFRM.s        142
  678 007CB 00000           CON(5)  ='
  679 007D0 00000           CON(5)  =DOIDNT
  680 007D5 20              CON(2)  2
  681 007D7 4513            NIBASC  \T1\
  682 007DB 00000           CON(5)  =STO
  683               * File  ISAFRM.s        143
  684 007E0 00000           CON(5)  =SEMI
  685               * END CASE
  686               * File  ISAFRM.s        144
  687 007E5 00000           CON(5)  =SEMI
  688 007EA 00000           CON(5)  =REPEAT
  689               * REPEAT loop
  690               * File  ISAFRM.s        145
  691 007EF 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAFRM.a       Page    2

 '                                 Ext                   -    65    72    80
                                          87    94   167   174   182   188   211
                                         237   311   318   326   332   370   437
                                         444   452   492   559   566   573   611
                                         663   671   678
 BEGIN                             Ext                   -    54
 CK0                               Ext                   -    51
 DOCOL                             Ext                   -    49    62   108
                                         204   348   469   589
 DOCSTR                            Ext                   -   124   157   248
                                         268   301   381   401   427   503   523
                                         549   622   642
 DOEXT                             Ext                   -   119   152   243
                                         263   296   376   396   422   498   518
                                         544   617   637
 DOIDNT                            Ext                   -    66    73    81
                                          88    95   102   111   168   175   183
                                         189   198   207   212   221   225   238
                                         258   312   319   327   333   342   354
                                         358   371   438   445   453   462   475
                                         480   493   560   567   574   583   595
                                         599   612   664   672   679
 DOREAL                            Ext                   -   120   153   244
                                         264   297   377   397   423   499   519
                                         545   618   638
 DOROMP                            Ext                   -    57   115   137
                                         143   148   229   281   287   292   362
                                         392   413   418   484   514   535   540
                                         603   633   654   659
 DOSYMB                            Ext                   -   218   351   472
                                         592
 DUP                               Ext                   -   114   136   142
                                         280   286   391   412   513   534   632
                                         653
 EQUALNOT                          Ext                   -   106   202   346
                                         467   587
 NOVAL                             Ext                   -   105   201   345
                                         466   586
 REPEAT                            Ext                   -   688
=RomId                             Abs     806 #00000326 -    34
 SEMI                              Ext                   -   129   161   194
                                         234   252   273   305   338   367   385
                                         406   431   458   489   507   528   553
                                         579   608   626   647   684   687   691
 STO                               Ext                   -    69    77    84
                                          91    98   171   179   186   192   215
                                         315   323   330   336   441   449   456
                                         563   570   577   668   675   682
 SWAP                              Ext                   -   135   141   147
                                         279   285   291   411   417   533   539
                                         652   658
 UMCONV                            Ext                   -   132   164   276
                                         308   408   434   530   556   649
 UMSI                              Ext                   -   210
 WHILE                             Ext                   -    61
 case                              Ext                   -   107   203   347
                                         468   588
 umEND                             Ext                   -   128   160   251
                                         272   304   384   405   430   506   527
                                         552   625   646
 x=                                Ext                   -   232   365   487
                                         606
=xISAFRM                           Rel       6 #00000006 -    47
 xROOT                             Ext                   -   255   388   510
                                         629
 ~ISAform                          Ext                   -    58
 ~xISAFRM                          Ext                   -    46
 ~xISAP                            Ext                   -   138   282   363
                                         536   655
 ~xISAT                            Ext                   -   116   230   393
                                         515   634
 ~xISA\97                          Ext                   -   144   288   414
                                         485   660
 ~xISAa                            Ext                   -   149   293   419
                                         541   604
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
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
