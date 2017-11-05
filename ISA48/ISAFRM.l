Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)                                      ISAFRM.a       Page    1

    1             * File  ISAFRM.s        1
    2             * RPL
    3             * File  ISAFRM.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAFRM.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5             *********************************************************************
    6             * NAME:            ISAFRM
    7             * LIBRARY #:       326h = 806d
    8             * DESCRIPTION:     Displays the input/output form for the ISA library
    9             *                  Accepts input of any single property (with units)
   10             *                                                                                                                                               and calculates the remaining properties.  The logic
   11             *                  first looks to see if PA (pressure altitude) is
   12             *                  supplied and then calculates the remaining ISA
   13             *                  properties at that pressure altitude.  If PA is
   14             *                  NOT supplied, then it next looks for:
   15             *                    T1, P1 \971, A1 (all global variables)
   16             *                  in that order to solve for PA and then the
   17             *                  remaining ISA properties at that PA. All variables
   18             *                  are GLOBAL and the default return units are shown
   19             *                  in the var. descriptions.  Any consistent unit may
   20             *                  be used for the input arguments.
   21             * Version:                                                                      1.25
   22             * Date:            19 June 2009
   23             * COMPATIBILITY:   HP50, HP48
   24             * INPUT/     PA     Geometric Altitude (Pressure altitude (feet))
   25             *   OUTPUT:  T1                                 Standard ISA temperature at PA (deg C)
   26             *                                                                                               P1     Standard ISA pressure at PA (mbar)
   27             *            \971   Standard ISA density at PA (kg/m^3)
   28             *            A1     Standard speed of sound in ISA at PA (knots)
   29             * File  ISAFRM.s        27
   30
   31             * File  ISAFRM.s        28
   32             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\ISA48.h
   33
   34             =RomId  EQU     #326
   35             * ROMID set to 326
   36
   37
   38
   39
   40
   41
   42
   43
   44
   45
   46             *|| Resuming file ISAFRM.s at line 28
   47 00000 00000         CON(6)  =~xISAFRM
            0
   48 00006       =xISAFRM
   49             * File  ISAFRM.s        30
   50 00006 00000         CON(5)  =DOCOL
   51             * File  ISAFRM.s        31
   52 0000B 00000         CON(5)  =CK0
   53             * No arguments
   54             * File  ISAFRM.s        32
   55 00010 00000         CON(5)  =BEGIN
   56             * BEGIN loop
   57             * File  ISAFRM.s        33
   58 00015 00000         CON(5)  =DOROMP
   59 0001A 00000         CON(6)  =~ISAform
            0
   60             * Display ISA input/output form
   61             * File  ISAFRM.s        34
   62 00020 00000         CON(5)  =WHILE
   63 00025 00000         CON(5)  =DOCOL
   64             * TRUE = OK is pressed
   65             * File  ISAFRM.s        35
   66 0002A 00000         CON(5)  ='
   67 0002F 00000         CON(5)  =DOIDNT
   68 00034 20            CON(2)  2
   69 00036 1413          NIBASC  \A1\
   70 0003A 00000         CON(5)  =STO
   71             * STO speed of sound
   72             * File  ISAFRM.s        36
   73 0003F 00000         CON(5)  ='
   74 00044 00000         CON(5)  =DOIDNT
   75 00049 20            CON(2)  2
   76 0004B 79            CON(2)  #97
   77 0004D 13            NIBASC  \1\
   78 0004F 00000         CON(5)  =STO
   79             * STO density
   80             * File  ISAFRM.s        37
   81 00054 00000         CON(5)  ='
   82 00059 00000         CON(5)  =DOIDNT
   83 0005E 20            CON(2)  2
   84 00060 0513          NIBASC  \P1\
   85 00064 00000         CON(5)  =STO
   86             * STO static pressure
   87             * File  ISAFRM.s        38
   88 00069 00000         CON(5)  ='
   89 0006E 00000         CON(5)  =DOIDNT
   90 00073 20            CON(2)  2
   91 00075 4513          NIBASC  \T1\
   92 00079 00000         CON(5)  =STO
   93             * STO static air temperature
   94             * File  ISAFRM.s        39
   95 0007E 00000         CON(5)  ='
   96 00083 00000         CON(5)  =DOIDNT
   97 00088 20            CON(2)  2
   98 0008A 0514          NIBASC  \PA\
   99 0008E 00000         CON(5)  =STO
  100             * STO pressure altitude
  101             * If Pressure Altitude is supplied
  102             * File  ISAFRM.s        41
  103 00093 00000         CON(5)  =DOIDNT
  104 00098 20            CON(2)  2
  105 0009A 0514          NIBASC  \PA\
  106 0009E 00000         CON(5)  =NOVAL
  107 000A3 00000         CON(5)  =EQUALNOT
  108 000A8 00000         CON(5)  =case
  109 000AD 00000         CON(5)  =DOCOL
  110             * Press. Alt. IS supplied, PA
  111             * File  ISAFRM.s        42
  112 000B2 00000         CON(5)  =DOIDNT
  113 000B7 20            CON(2)  2
  114 000B9 0514          NIBASC  \PA\
  115 000BD 00000         CON(5)  =DUP
  116 000C2 00000         CON(5)  =DOROMP
  117 000C7 00000         CON(6)  =~xISAT
            0
  118             * Calc. ISA temperature
  119             * File  ISAFRM.s        43
  120 000CD 00000         CON(5)  =DOEXT
  121 000D2 00000         CON(5)  =DOREAL
  122 000D7 000           NIBHEX  000
  123 000DA 00000         NIBHEX  000000000001
            00000
            01
  124 000E6 0             NIBHEX  0
  125 000E7 00000         CON(5)  =DOCSTR
  126 000EC 90000         CON(5)  9
  127 000F1 0B            CON(2)  #B0
  128 000F3 34            NIBASC  \C\
  129 000F5 00000         CON(5)  =umEND
  130 000FA 00000         CON(5)  =SEMI
  131             * Convert temperature to
  132             * File  ISAFRM.s        44
  133 000FF 00000         CON(5)  =UMCONV
  134             * deg C
  135             * File  ISAFRM.s        45
  136 00104 00000         CON(5)  =SWAP
  137 00109 00000         CON(5)  =DUP
  138 0010E 00000         CON(5)  =DOROMP
  139 00113 00000         CON(6)  =~xISAP
            0
  140             * Calc. pressure at PA
  141             * File  ISAFRM.s        46
  142 00119 00000         CON(5)  =SWAP
  143 0011E 00000         CON(5)  =DUP
  144 00123 00000         CON(5)  =DOROMP
  145 00128 00000         CON(6)  =~xISA\97
            0
  146             * Calc. density at PA
  147             * File  ISAFRM.s        47
  148 0012E 00000         CON(5)  =SWAP
  149 00133 00000         CON(5)  =DOROMP
  150 00138 00000         CON(6)  =~xISAa
            0
  151             * Calc. spd. of sound at PA
  152             * File  ISAFRM.s        48
  153 0013E 00000         CON(5)  =DOEXT
  154 00143 00000         CON(5)  =DOREAL
  155 00148 000           NIBHEX  000
  156 0014B 00000         NIBHEX  000000000001
            00000
            01
  157 00157 0             NIBHEX  0
  158 00158 00000         CON(5)  =DOCSTR
  159 0015D D0000         CON(5)  13
  160 00162 B6E6F         NIBASC  \knot\
            647
  161 0016A 00000         CON(5)  =umEND
  162 0016F 00000         CON(5)  =SEMI
  163             * Convert speed of sound to
  164             * File  ISAFRM.s        49
  165 00174 00000         CON(5)  =UMCONV
  166             * knots
  167             * File  ISAFRM.s        50
  168 00179 00000         CON(5)  ='
  169 0017E 00000         CON(5)  =DOIDNT
  170 00183 20            CON(2)  2
  171 00185 1413          NIBASC  \A1\
  172 00189 00000         CON(5)  =STO
  173             * STO solutions in global vars.
  174             * File  ISAFRM.s        51
  175 0018E 00000         CON(5)  ='
  176 00193 00000         CON(5)  =DOIDNT
  177 00198 20            CON(2)  2
  178 0019A 79            CON(2)  #97
  179 0019C 13            NIBASC  \1\
  180 0019E 00000         CON(5)  =STO
  181             * A1, \971, P1, T1
  182             * File  ISAFRM.s        52
  183 001A3 00000         CON(5)  ='
  184 001A8 00000         CON(5)  =DOIDNT
  185 001AD 20            CON(2)  2
  186 001AF 0513          NIBASC  \P1\
  187 001B3 00000         CON(5)  =STO
  188             * File  ISAFRM.s        53
  189 001B8 00000         CON(5)  ='
  190 001BD 00000         CON(5)  =DOIDNT
  191 001C2 20            CON(2)  2
  192 001C4 4513          NIBASC  \T1\
  193 001C8 00000         CON(5)  =STO
  194             * File  ISAFRM.s        54
  195 001CD 00000         CON(5)  =SEMI
  196             * END CASE
  197             * If Static Temperature is supplied
  198             * File  ISAFRM.s        56
  199 001D2 00000         CON(5)  =DOIDNT
  200 001D7 20            CON(2)  2
  201 001D9 4513          NIBASC  \T1\
  202 001DD 00000         CON(5)  =NOVAL
  203 001E2 00000         CON(5)  =EQUALNOT
  204 001E7 00000         CON(5)  =case
  205 001EC 00000         CON(5)  =DOCOL
  206             * Temp. IS supplied, T1
  207             * File  ISAFRM.s        57
  208 001F1 00000         CON(5)  =DOIDNT
  209 001F6 20            CON(2)  2
  210 001F8 4513          NIBASC  \T1\
  211 001FC 00000         CON(5)  =UMSI
  212 00201 00000         CON(5)  ='
  213 00206 00000         CON(5)  =DOIDNT
  214 0020B 20            CON(2)  2
  215 0020D 4513          NIBASC  \T1\
  216 00211 00000         CON(5)  =STO
  217             * Convert to K and STO
  218             * File  ISAFRM.s        58
  219 00216 00000         CON(5)  =DOSYMB
  220             * Create symbolic to solve
  221             * File  ISAFRM.s        59
  222 0021B 00000         CON(5)  =DOIDNT
  223 00220 20            CON(2)  2
  224 00222 4513          NIBASC  \T1\
  225             * File  ISAFRM.s        60
  226 00226 00000         CON(5)  =DOIDNT
  227 0022B 20            CON(2)  2
  228 0022D 0514          NIBASC  \PA\
  229             * File  ISAFRM.s        61
  230 00231 00000         CON(5)  =DOROMP
  231 00236 00000         CON(6)  =~xISAT
            0
  232             * File  ISAFRM.s        62
  233 0023C 00000         CON(5)  =x=
  234             * File  ISAFRM.s        63
  235 00241 00000         CON(5)  =SEMI
  236             * 'T1 = ISAT[PA]'
  237             * File  ISAFRM.s        64
  238 00246 00000         CON(5)  ='
  239 0024B 00000         CON(5)  =DOIDNT
  240 00250 20            CON(2)  2
  241 00252 0514          NIBASC  \PA\
  242             * Solve for PA
  243             * File  ISAFRM.s        65
  244 00256 00000         CON(5)  =DOEXT
  245 0025B 00000         CON(5)  =DOREAL
  246 00260 000           NIBHEX  000
  247 00263 00000         NIBHEX  000000000000
            00000
            00
  248 0026F 0             NIBHEX  0
  249 00270 00000         CON(5)  =DOCSTR
  250 00275 90000         CON(5)  9
  251 0027A 6647          NIBASC  \ft\
  252 0027E 00000         CON(5)  =umEND
  253 00283 00000         CON(5)  =SEMI
  254             * Guess value 0_ft
  255             * File  ISAFRM.s        66
  256 00288 00000         CON(5)  =xROOT
  257             * Find ROOT, PA in feet
  258             * File  ISAFRM.s        67
  259 0028D 00000         CON(5)  =DOIDNT
  260 00292 20            CON(2)  2
  261 00294 4513          NIBASC  \T1\
  262             * Convert T1
  263             * File  ISAFRM.s        68
  264 00298 00000         CON(5)  =DOEXT
  265 0029D 00000         CON(5)  =DOREAL
  266 002A2 000           NIBHEX  000
  267 002A5 00000         NIBHEX  000000000001
            00000
            01
  268 002B1 0             NIBHEX  0
  269 002B2 00000         CON(5)  =DOCSTR
  270 002B7 90000         CON(5)  9
  271 002BC 0B            CON(2)  #B0
  272 002BE 34            NIBASC  \C\
  273 002C0 00000         CON(5)  =umEND
  274 002C5 00000         CON(5)  =SEMI
  275             * back to
  276             * File  ISAFRM.s        69
  277 002CA 00000         CON(5)  =UMCONV
  278             * deg C
  279             * File  ISAFRM.s        70
  280 002CF 00000         CON(5)  =SWAP
  281 002D4 00000         CON(5)  =DUP
  282 002D9 00000         CON(5)  =DOROMP
  283 002DE 00000         CON(6)  =~xISAP
            0
  284             * Calc. pressure at PA
  285             * File  ISAFRM.s        71
  286 002E4 00000         CON(5)  =SWAP
  287 002E9 00000         CON(5)  =DUP
  288 002EE 00000         CON(5)  =DOROMP
  289 002F3 00000         CON(6)  =~xISA\97
            0
  290             * Calc. density at PA
  291             * File  ISAFRM.s        72
  292 002F9 00000         CON(5)  =SWAP
  293 002FE 00000         CON(5)  =DOROMP
  294 00303 00000         CON(6)  =~xISAa
            0
  295             * Calc. speed of sound at PA
  296             * File  ISAFRM.s        73
  297 00309 00000         CON(5)  =DOEXT
  298 0030E 00000         CON(5)  =DOREAL
  299 00313 000           NIBHEX  000
  300 00316 00000         NIBHEX  000000000001
            00000
            01
  301 00322 0             NIBHEX  0
  302 00323 00000         CON(5)  =DOCSTR
  303 00328 D0000         CON(5)  13
  304 0032D B6E6F         NIBASC  \knot\
            647
  305 00335 00000         CON(5)  =umEND
  306 0033A 00000         CON(5)  =SEMI
  307             * Convert speed of sound to
  308             * File  ISAFRM.s        74
  309 0033F 00000         CON(5)  =UMCONV
  310             * knots
  311             * File  ISAFRM.s        75
  312 00344 00000         CON(5)  ='
  313 00349 00000         CON(5)  =DOIDNT
  314 0034E 20            CON(2)  2
  315 00350 1413          NIBASC  \A1\
  316 00354 00000         CON(5)  =STO
  317             * STO solutions in global vars.
  318             * File  ISAFRM.s        76
  319 00359 00000         CON(5)  ='
  320 0035E 00000         CON(5)  =DOIDNT
  321 00363 20            CON(2)  2
  322 00365 79            CON(2)  #97
  323 00367 13            NIBASC  \1\
  324 00369 00000         CON(5)  =STO
  325             * A1, \971, P1, T1
  326             * File  ISAFRM.s        77
  327 0036E 00000         CON(5)  ='
  328 00373 00000         CON(5)  =DOIDNT
  329 00378 20            CON(2)  2
  330 0037A 0513          NIBASC  \P1\
  331 0037E 00000         CON(5)  =STO
  332             * File  ISAFRM.s        78
  333 00383 00000         CON(5)  ='
  334 00388 00000         CON(5)  =DOIDNT
  335 0038D 20            CON(2)  2
  336 0038F 4513          NIBASC  \T1\
  337 00393 00000         CON(5)  =STO
  338             * File  ISAFRM.s        79
  339 00398 00000         CON(5)  =SEMI
  340             * END CASE
  341             * Static Pressure is supplied
  342             * File  ISAFRM.s        81
  343 0039D 00000         CON(5)  =DOIDNT
  344 003A2 20            CON(2)  2
  345 003A4 0513          NIBASC  \P1\
  346 003A8 00000         CON(5)  =NOVAL
  347 003AD 00000         CON(5)  =EQUALNOT
  348 003B2 00000         CON(5)  =case
  349 003B7 00000         CON(5)  =DOCOL
  350             * Pressure IS supplied, P1
  351             * File  ISAFRM.s        82
  352 003BC 00000         CON(5)  =DOSYMB
  353             * Create symbolic to solve
  354             * File  ISAFRM.s        83
  355 003C1 00000         CON(5)  =DOIDNT
  356 003C6 20            CON(2)  2
  357 003C8 0513          NIBASC  \P1\
  358             * File  ISAFRM.s        84
  359 003CC 00000         CON(5)  =DOIDNT
  360 003D1 20            CON(2)  2
  361 003D3 0514          NIBASC  \PA\
  362             * File  ISAFRM.s        85
  363 003D7 00000         CON(5)  =DOROMP
  364 003DC 00000         CON(6)  =~xISAP
            0
  365             * File  ISAFRM.s        86
  366 003E2 00000         CON(5)  =x=
  367             * File  ISAFRM.s        87
  368 003E7 00000         CON(5)  =SEMI
  369             * 'P1 = ISAP[PA]'
  370             * File  ISAFRM.s        88
  371 003EC 00000         CON(5)  ='
  372 003F1 00000         CON(5)  =DOIDNT
  373 003F6 20            CON(2)  2
  374 003F8 0514          NIBASC  \PA\
  375             * Solve for PA
  376             * File  ISAFRM.s        89
  377 003FC 00000         CON(5)  =DOEXT
  378 00401 00000         CON(5)  =DOREAL
  379 00406 000           NIBHEX  000
  380 00409 00000         NIBHEX  000000000000
            00000
            00
  381 00415 0             NIBHEX  0
  382 00416 00000         CON(5)  =DOCSTR
  383 0041B 90000         CON(5)  9
  384 00420 6647          NIBASC  \ft\
  385 00424 00000         CON(5)  =umEND
  386 00429 00000         CON(5)  =SEMI
  387             * Guess value 0_ft
  388             * File  ISAFRM.s        90
  389 0042E 00000         CON(5)  =xROOT
  390             * Find ROOT, PA in feet
  391             * File  ISAFRM.s        91
  392 00433 00000         CON(5)  =DUP
  393 00438 00000         CON(5)  =DOROMP
  394 0043D 00000         CON(6)  =~xISAT
            0
  395             * Calc. temperature at PA
  396             * File  ISAFRM.s        92
  397 00443 00000         CON(5)  =DOEXT
  398 00448 00000         CON(5)  =DOREAL
  399 0044D 000           NIBHEX  000
  400 00450 00000         NIBHEX  000000000001
            00000
            01
  401 0045C 0             NIBHEX  0
  402 0045D 00000         CON(5)  =DOCSTR
  403 00462 90000         CON(5)  9
  404 00467 0B            CON(2)  #B0
  405 00469 34            NIBASC  \C\
  406 0046B 00000         CON(5)  =umEND
  407 00470 00000         CON(5)  =SEMI
  408             * File  ISAFRM.s        93
  409 00475 00000         CON(5)  =UMCONV
  410             * Convert T1 to deg C
  411             * File  ISAFRM.s        94
  412 0047A 00000         CON(5)  =SWAP
  413 0047F 00000         CON(5)  =DUP
  414 00484 00000         CON(5)  =DOROMP
  415 00489 00000         CON(6)  =~xISA\97
            0
  416             * Calc. density at PA
  417             * File  ISAFRM.s        95
  418 0048F 00000         CON(5)  =SWAP
  419 00494 00000         CON(5)  =DOROMP
  420 00499 00000         CON(6)  =~xISAa
            0
  421             * Calc. speed of sound at PA
  422             * File  ISAFRM.s        96
  423 0049F 00000         CON(5)  =DOEXT
  424 004A4 00000         CON(5)  =DOREAL
  425 004A9 000           NIBHEX  000
  426 004AC 00000         NIBHEX  000000000001
            00000
            01
  427 004B8 0             NIBHEX  0
  428 004B9 00000         CON(5)  =DOCSTR
  429 004BE D0000         CON(5)  13
  430 004C3 B6E6F         NIBASC  \knot\
            647
  431 004CB 00000         CON(5)  =umEND
  432 004D0 00000         CON(5)  =SEMI
  433             * Convert speed of sound to
  434             * File  ISAFRM.s        97
  435 004D5 00000         CON(5)  =UMCONV
  436             * knots
  437             * File  ISAFRM.s        98
  438 004DA 00000         CON(5)  ='
  439 004DF 00000         CON(5)  =DOIDNT
  440 004E4 20            CON(2)  2
  441 004E6 1413          NIBASC  \A1\
  442 004EA 00000         CON(5)  =STO
  443             * STO solutions in global vars.
  444             * File  ISAFRM.s        99
  445 004EF 00000         CON(5)  ='
  446 004F4 00000         CON(5)  =DOIDNT
  447 004F9 20            CON(2)  2
  448 004FB 79            CON(2)  #97
  449 004FD 13            NIBASC  \1\
  450 004FF 00000         CON(5)  =STO
  451             * A1, \971, P1, T1
  452             * File  ISAFRM.s        100
  453 00504 00000         CON(5)  ='
  454 00509 00000         CON(5)  =DOIDNT
  455 0050E 20            CON(2)  2
  456 00510 4513          NIBASC  \T1\
  457 00514 00000         CON(5)  =STO
  458             * File  ISAFRM.s        101
  459 00519 00000         CON(5)  =SEMI
  460             * END CASE
  461             * Density is supplied
  462             * File  ISAFRM.s        103
  463 0051E 00000         CON(5)  =DOIDNT
  464 00523 20            CON(2)  2
  465 00525 79            CON(2)  #97
  466 00527 13            NIBASC  \1\
  467 00529 00000         CON(5)  =NOVAL
  468 0052E 00000         CON(5)  =EQUALNOT
  469 00533 00000         CON(5)  =case
  470 00538 00000         CON(5)  =DOCOL
  471             * Density IS supplied, \971
  472             * File  ISAFRM.s        104
  473 0053D 00000         CON(5)  =DOSYMB
  474             * Create symbolic to solve
  475             * File  ISAFRM.s        105
  476 00542 00000         CON(5)  =DOIDNT
  477 00547 20            CON(2)  2
  478 00549 79            CON(2)  #97
  479 0054B 13            NIBASC  \1\
  480             * File  ISAFRM.s        106
  481 0054D 00000         CON(5)  =DOIDNT
  482 00552 20            CON(2)  2
  483 00554 0514          NIBASC  \PA\
  484             * File  ISAFRM.s        107
  485 00558 00000         CON(5)  =DOROMP
  486 0055D 00000         CON(6)  =~xISA\97
            0
  487             * File  ISAFRM.s        108
  488 00563 00000         CON(5)  =x=
  489             * File  ISAFRM.s        109
  490 00568 00000         CON(5)  =SEMI
  491             * '\971 = ISA\97[PA]'
  492             * File  ISAFRM.s        110
  493 0056D 00000         CON(5)  ='
  494 00572 00000         CON(5)  =DOIDNT
  495 00577 20            CON(2)  2
  496 00579 0514          NIBASC  \PA\
  497             * Solve for PA
  498             * File  ISAFRM.s        111
  499 0057D 00000         CON(5)  =DOEXT
  500 00582 00000         CON(5)  =DOREAL
  501 00587 000           NIBHEX  000
  502 0058A 00000         NIBHEX  000000000000
            00000
            00
  503 00596 0             NIBHEX  0
  504 00597 00000         CON(5)  =DOCSTR
  505 0059C 90000         CON(5)  9
  506 005A1 6647          NIBASC  \ft\
  507 005A5 00000         CON(5)  =umEND
  508 005AA 00000         CON(5)  =SEMI
  509             * Guess value 0_ft
  510             * File  ISAFRM.s        112
  511 005AF 00000         CON(5)  =xROOT
  512             * Find ROOT, PA in feet
  513             * File  ISAFRM.s        113
  514 005B4 00000         CON(5)  =DUP
  515 005B9 00000         CON(5)  =DOROMP
  516 005BE 00000         CON(6)  =~xISAT
            0
  517             * Calc. temperature at PA
  518             * File  ISAFRM.s        114
  519 005C4 00000         CON(5)  =DOEXT
  520 005C9 00000         CON(5)  =DOREAL
  521 005CE 000           NIBHEX  000
  522 005D1 00000         NIBHEX  000000000001
            00000
            01
  523 005DD 0             NIBHEX  0
  524 005DE 00000         CON(5)  =DOCSTR
  525 005E3 90000         CON(5)  9
  526 005E8 0B            CON(2)  #B0
  527 005EA 34            NIBASC  \C\
  528 005EC 00000         CON(5)  =umEND
  529 005F1 00000         CON(5)  =SEMI
  530             * File  ISAFRM.s        115
  531 005F6 00000         CON(5)  =UMCONV
  532             * Convert T1 to deg C
  533             * File  ISAFRM.s        116
  534 005FB 00000         CON(5)  =SWAP
  535 00600 00000         CON(5)  =DUP
  536 00605 00000         CON(5)  =DOROMP
  537 0060A 00000         CON(6)  =~xISAP
            0
  538             * Calc. pressure at PA
  539             * File  ISAFRM.s        117
  540 00610 00000         CON(5)  =SWAP
  541 00615 00000         CON(5)  =DOROMP
  542 0061A 00000         CON(6)  =~xISAa
            0
  543             * Calc. spd. of sound at PA
  544             * File  ISAFRM.s        118
  545 00620 00000         CON(5)  =DOEXT
  546 00625 00000         CON(5)  =DOREAL
  547 0062A 000           NIBHEX  000
  548 0062D 00000         NIBHEX  000000000001
            00000
            01
  549 00639 0             NIBHEX  0
  550 0063A 00000         CON(5)  =DOCSTR
  551 0063F D0000         CON(5)  13
  552 00644 B6E6F         NIBASC  \knot\
            647
  553 0064C 00000         CON(5)  =umEND
  554 00651 00000         CON(5)  =SEMI
  555             * Convert speed of sound to
  556             * File  ISAFRM.s        119
  557 00656 00000         CON(5)  =UMCONV
  558             * knots
  559             * File  ISAFRM.s        120
  560 0065B 00000         CON(5)  ='
  561 00660 00000         CON(5)  =DOIDNT
  562 00665 20            CON(2)  2
  563 00667 1413          NIBASC  \A1\
  564 0066B 00000         CON(5)  =STO
  565             * STO solns. in golbal vars.
  566             * File  ISAFRM.s        121
  567 00670 00000         CON(5)  ='
  568 00675 00000         CON(5)  =DOIDNT
  569 0067A 20            CON(2)  2
  570 0067C 0513          NIBASC  \P1\
  571 00680 00000         CON(5)  =STO
  572             * A1, P1, T1
  573             * File  ISAFRM.s        122
  574 00685 00000         CON(5)  ='
  575 0068A 00000         CON(5)  =DOIDNT
  576 0068F 20            CON(2)  2
  577 00691 4513          NIBASC  \T1\
  578 00695 00000         CON(5)  =STO
  579             * File  ISAFRM.s        123
  580 0069A 00000         CON(5)  =SEMI
  581             * END CASE
  582             * Speed of sound is supplied
  583             * File  ISAFRM.s        125
  584 0069F 00000         CON(5)  =DOIDNT
  585 006A4 20            CON(2)  2
  586 006A6 1413          NIBASC  \A1\
  587 006AA 00000         CON(5)  =NOVAL
  588 006AF 00000         CON(5)  =EQUALNOT
  589 006B4 00000         CON(5)  =case
  590 006B9 00000         CON(5)  =DOCOL
  591             * Speed of sound IS supplied, A1
  592             * File  ISAFRM.s        126
  593 006BE 00000         CON(5)  =DOSYMB
  594             * Create symbolic to solve
  595             * File  ISAFRM.s        127
  596 006C3 00000         CON(5)  =DOIDNT
  597 006C8 20            CON(2)  2
  598 006CA 1413          NIBASC  \A1\
  599             * File  ISAFRM.s        128
  600 006CE 00000         CON(5)  =DOIDNT
  601 006D3 20            CON(2)  2
  602 006D5 0514          NIBASC  \PA\
  603             * File  ISAFRM.s        129
  604 006D9 00000         CON(5)  =DOROMP
  605 006DE 00000         CON(6)  =~xISAa
            0
  606             * File  ISAFRM.s        130
  607 006E4 00000         CON(5)  =x=
  608             * File  ISAFRM.s        131
  609 006E9 00000         CON(5)  =SEMI
  610             * 'A1 = ISAa[PA]'
  611             * File  ISAFRM.s        132
  612 006EE 00000         CON(5)  ='
  613 006F3 00000         CON(5)  =DOIDNT
  614 006F8 20            CON(2)  2
  615 006FA 0514          NIBASC  \PA\
  616             * Solve for PA
  617             * File  ISAFRM.s        133
  618 006FE 00000         CON(5)  =DOEXT
  619 00703 00000         CON(5)  =DOREAL
  620 00708 000           NIBHEX  000
  621 0070B 00000         NIBHEX  000000000000
            00000
            00
  622 00717 0             NIBHEX  0
  623 00718 00000         CON(5)  =DOCSTR
  624 0071D 90000         CON(5)  9
  625 00722 6647          NIBASC  \ft\
  626 00726 00000         CON(5)  =umEND
  627 0072B 00000         CON(5)  =SEMI
  628             * Guess value 0_ft
  629             * File  ISAFRM.s        134
  630 00730 00000         CON(5)  =xROOT
  631             * Find ROOT, PA in feet
  632             * File  ISAFRM.s        135
  633 00735 00000         CON(5)  =DUP
  634 0073A 00000         CON(5)  =DOROMP
  635 0073F 00000         CON(6)  =~xISAT
            0
  636             * Calc. temperature at PA
  637             * File  ISAFRM.s        136
  638 00745 00000         CON(5)  =DOEXT
  639 0074A 00000         CON(5)  =DOREAL
  640 0074F 000           NIBHEX  000
  641 00752 00000         NIBHEX  000000000001
            00000
            01
  642 0075E 0             NIBHEX  0
  643 0075F 00000         CON(5)  =DOCSTR
  644 00764 90000         CON(5)  9
  645 00769 0B            CON(2)  #B0
  646 0076B 34            NIBASC  \C\
  647 0076D 00000         CON(5)  =umEND
  648 00772 00000         CON(5)  =SEMI
  649             * File  ISAFRM.s        137
  650 00777 00000         CON(5)  =UMCONV
  651             * Convert T1 to deg C
  652             * File  ISAFRM.s        138
  653 0077C 00000         CON(5)  =SWAP
  654 00781 00000         CON(5)  =DUP
  655 00786 00000         CON(5)  =DOROMP
  656 0078B 00000         CON(6)  =~xISAP
            0
  657             * Calc. pressure at PA
  658             * File  ISAFRM.s        139
  659 00791 00000         CON(5)  =SWAP
  660 00796 00000         CON(5)  =DOROMP
  661 0079B 00000         CON(6)  =~xISA\97
            0
  662             * Calc. density at PA
  663             * File  ISAFRM.s        140
  664 007A1 00000         CON(5)  ='
  665 007A6 00000         CON(5)  =DOIDNT
  666 007AB 20            CON(2)  2
  667 007AD 79            CON(2)  #97
  668 007AF 13            NIBASC  \1\
  669 007B1 00000         CON(5)  =STO
  670             * STO solutions in global vars.
  671             * File  ISAFRM.s        141
  672 007B6 00000         CON(5)  ='
  673 007BB 00000         CON(5)  =DOIDNT
  674 007C0 20            CON(2)  2
  675 007C2 0513          NIBASC  \P1\
  676 007C6 00000         CON(5)  =STO
  677             * A1, \971, P1, T1
  678             * File  ISAFRM.s        142
  679 007CB 00000         CON(5)  ='
  680 007D0 00000         CON(5)  =DOIDNT
  681 007D5 20            CON(2)  2
  682 007D7 4513          NIBASC  \T1\
  683 007DB 00000         CON(5)  =STO
  684             * File  ISAFRM.s        143
  685 007E0 00000         CON(5)  =SEMI
  686             * END CASE
  687             * File  ISAFRM.s        144
  688 007E5 00000         CON(5)  =SEMI
  689 007EA 00000         CON(5)  =REPEAT
  690             * REPEAT loop
  691             * File  ISAFRM.s        145
  692 007EF 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAFRM.a       Page    2

 '                                 Ext                   -    66    73    81
                                          88    95   168   175   183   189   212
                                         238   312   319   327   333   371   438
                                         445   453   493   560   567   574   612
                                         664   672   679
 BEGIN                             Ext                   -    55
 CK0                               Ext                   -    52
 DOCOL                             Ext                   -    50    63   109
                                         205   349   470   590
 DOCSTR                            Ext                   -   125   158   249
                                         269   302   382   402   428   504   524
                                         550   623   643
 DOEXT                             Ext                   -   120   153   244
                                         264   297   377   397   423   499   519
                                         545   618   638
 DOIDNT                            Ext                   -    67    74    82
                                          89    96   103   112   169   176   184
                                         190   199   208   213   222   226   239
                                         259   313   320   328   334   343   355
                                         359   372   439   446   454   463   476
                                         481   494   561   568   575   584   596
                                         600   613   665   673   680
 DOREAL                            Ext                   -   121   154   245
                                         265   298   378   398   424   500   520
                                         546   619   639
 DOROMP                            Ext                   -    58   116   138
                                         144   149   230   282   288   293   363
                                         393   414   419   485   515   536   541
                                         604   634   655   660
 DOSYMB                            Ext                   -   219   352   473
                                         593
 DUP                               Ext                   -   115   137   143
                                         281   287   392   413   514   535   633
                                         654
 EQUALNOT                          Ext                   -   107   203   347
                                         468   588
 NOVAL                             Ext                   -   106   202   346
                                         467   587
 REPEAT                            Ext                   -   689
=RomId                             Abs     806 #00000326 -    34
 SEMI                              Ext                   -   130   162   195
                                         235   253   274   306   339   368   386
                                         407   432   459   490   508   529   554
                                         580   609   627   648   685   688   692
 STO                               Ext                   -    70    78    85
                                          92    99   172   180   187   193   216
                                         316   324   331   337   442   450   457
                                         564   571   578   669   676   683
 SWAP                              Ext                   -   136   142   148
                                         280   286   292   412   418   534   540
                                         653   659
 UMCONV                            Ext                   -   133   165   277
                                         309   409   435   531   557   650
 UMSI                              Ext                   -   211
 WHILE                             Ext                   -    62
 case                              Ext                   -   108   204   348
                                         469   589
 umEND                             Ext                   -   129   161   252
                                         273   305   385   406   431   507   528
                                         553   626   647
 x=                                Ext                   -   233   366   488
                                         607
=xISAFRM                           Rel       6 #00000006 -    48
 xROOT                             Ext                   -   256   389   511
                                         630
 ~ISAform                          Ext                   -    59
 ~xISAFRM                          Ext                   -    47
 ~xISAP                            Ext                   -   139   283   364
                                         537   656
 ~xISAT                            Ext                   -   117   231   394
                                         516   635
 ~xISA\97                          Ext                   -   145   289   415
                                         486   661
 ~xISAa                            Ext                   -   150   294   420
                                         542   605
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
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
