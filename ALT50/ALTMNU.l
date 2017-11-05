Saturn Assembler                                       Fri Jun 19 12:17:07 2009
V3.0.9 (04/15/2007)                                      ALTMNU.a       Page    1

    1               * File  ALTMNU.s        1
    2               * RPL
    3               * File  ALTMNU.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTMNU.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               **********************************************************************
    6               * NAME:            ALTMNU
    7               * LIBRARY #:       327h = 807d
    8               * AUTHOR:          Dan Pitic
    9               * VERSION:         1.15
   10               * DATE:            19 June 2009
   11               * COMPATIBILITY:   HP50, HP48
   12               * DESCRIPTION:     Modifies the CST menu for the start of a new problem.
   13               * INPUT:     NONE
   14               * OUTPUT:    CST     Menu reorganised to start a new problem or view
   15               *                    solutions from previous problem
   16               *            CA      Calibrated altitude (feet)
   17               *                                                                                               SAT     Static air temperature (deg C)
   18               *            PALT    Pressure altitude (feet)
   19               *            GNDST   Ground station elevation (feet)
   20               *                                                                                               TA      True altitude (feet)
   21               *            DA      Density altitude (feet)
   22               *
   23               * File  ALTMNU.s        21
   24               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALT50\ALT50.h
   25
   26               =RomId  EQU     #327
   27               * ROMID set to 327
   28
   29
   30
   31
   32
   33
   34               *|| Resuming file ALTMNU.s at line 21
   35 00000 000000          CON(6)  =~xALTMNU
   36 00006         =xALTMNU
   37               * File  ALTMNU.s        23
   38 00006 00000           CON(5)  =DOCOL
   39               * File  ALTMNU.s        24
   40 0000B 00000           CON(5)  =CK0
   41               * File  ALTMNU.s        25
   42 00010 00000           CON(5)  =DOLIST
   43 00015 00000           CON(5)  =DOLIST
   44 0001A 00000           CON(5)  =DOCSTR
   45 0001F D0000           CON(5)  13
   46 00024 3414C44         NIBASC  \CALT\
            5
   47 0002C 00000           CON(5)  =DOCOL
   48               * Input calibrated altitude
   49               * File  ALTMNU.s        26
   50 00031 00000           CON(5)  =CK1&Dispatch
   51               * Must have 1 argument
   52               * File  ALTMNU.s        27
   53 00036 00000           CON(5)  =real
   54 0003B 00000           CON(5)  =DOCOL
   55               * Real number
   56               * File  ALTMNU.s        28
   57 00040 00000           CON(5)  =DOCSTR
   58 00045 90000           CON(5)  9
   59 0004A 6647            NIBASC  \ft\
   60 0004E 00000           CON(5)  =umEND
   61               * Add default feet units
   62               * File  ALTMNU.s        29
   63 00053 00000           CON(5)  =THREE
   64 00058 00000           CON(5)  =EXTN
   65               * File  ALTMNU.s        30
   66 0005D 00000           CON(5)  =DUP
   67               * File  ALTMNU.s        31
   68 00062 00000           CON(5)  ='
   69 00067 00000           CON(5)  =DOIDNT
   70 0006C 20              CON(2)  2
   71 0006E 3414            NIBASC  \CA\
   72 00072 00000           CON(5)  =STO
   73               * STO in GLOBAL VAR CA
   74               * File  ALTMNU.s        32
   75 00077 00000           CON(5)  =DOCSTR
   76 0007C D0000           CON(5)  13
   77 00081 3414C44         NIBASC  \CALT\
            5
   78 00089 00000           CON(5)  =>TAG
   79               * TAG
   80               * File  ALTMNU.s        33
   81 0008E 00000           CON(5)  =SEMI
   82               * File  ALTMNU.s        34
   83 00093 00000           CON(5)  =SEMI
   84 00098 00000           CON(5)  =SEMI
   85               * File  ALTMNU.s        35
   86 0009D 00000           CON(5)  =DOLIST
   87 000A2 00000           CON(5)  =DOCSTR
   88 000A7 B0000           CON(5)  11
   89 000AC 351445          NIBASC  \SAT\
   90 000B2 00000           CON(5)  =DOCOL
   91               * Input static air temperature
   92               * File  ALTMNU.s        36
   93 000B7 00000           CON(5)  =CK1&Dispatch
   94               * Must have 1 argument
   95               * File  ALTMNU.s        37
   96 000BC 00000           CON(5)  =real
   97 000C1 00000           CON(5)  =DOCOL
   98               * Real number
   99               * File  ALTMNU.s        38
  100 000C6 00000           CON(5)  =DOCSTR
  101 000CB 90000           CON(5)  9
  102 000D0 0B              CON(2)  #B0
  103 000D2 34              NIBASC  \C\
  104 000D4 00000           CON(5)  =umEND
  105               * Add default deg C units
  106               * File  ALTMNU.s        39
  107 000D9 00000           CON(5)  =THREE
  108 000DE 00000           CON(5)  =EXTN
  109               * File  ALTMNU.s        40
  110 000E3 00000           CON(5)  =DUP
  111               * File  ALTMNU.s        41
  112 000E8 00000           CON(5)  ='
  113 000ED 00000           CON(5)  =DOIDNT
  114 000F2 30              CON(2)  3
  115 000F4 351445          NIBASC  \SAT\
  116 000FA 00000           CON(5)  =STO
  117               * STO in GLOBAL var SAT
  118               * File  ALTMNU.s        42
  119 000FF 00000           CON(5)  =DOCSTR
  120 00104 B0000           CON(5)  11
  121 00109 351445          NIBASC  \SAT\
  122 0010F 00000           CON(5)  =>TAG
  123               * File  ALTMNU.s        43
  124 00114 00000           CON(5)  =SEMI
  125               * File  ALTMNU.s        44
  126 00119 00000           CON(5)  =SEMI
  127 0011E 00000           CON(5)  =SEMI
  128               * File  ALTMNU.s        45
  129 00123 00000           CON(5)  =DOLIST
  130 00128 00000           CON(5)  =DOCSTR
  131 0012D D0000           CON(5)  13
  132 00132 0514C44         NIBASC  \PALT\
            5
  133 0013A 00000           CON(5)  =DOCOL
  134               * Input pressure altitude
  135               * File  ALTMNU.s        46
  136 0013F 00000           CON(5)  =CK1&Dispatch
  137               * Must have 1 argument
  138               * File  ALTMNU.s        47
  139 00144 00000           CON(5)  =real
  140 00149 00000           CON(5)  =DOCOL
  141               * Real number
  142               * File  ALTMNU.s        48
  143 0014E 00000           CON(5)  =DOCSTR
  144 00153 90000           CON(5)  9
  145 00158 6647            NIBASC  \ft\
  146 0015C 00000           CON(5)  =umEND
  147               * Add default feet units
  148               * File  ALTMNU.s        49
  149 00161 00000           CON(5)  =THREE
  150 00166 00000           CON(5)  =EXTN
  151               * File  ALTMNU.s        50
  152 0016B 00000           CON(5)  =DUP
  153               * File  ALTMNU.s        51
  154 00170 00000           CON(5)  ='
  155 00175 00000           CON(5)  =DOIDNT
  156 0017A 20              CON(2)  2
  157 0017C 0514            NIBASC  \PA\
  158 00180 00000           CON(5)  =STO
  159               * STO in GLOBAL var PA
  160               * File  ALTMNU.s        52
  161 00185 00000           CON(5)  =DOCSTR
  162 0018A D0000           CON(5)  13
  163 0018F 0514C44         NIBASC  \PALT\
            5
  164 00197 00000           CON(5)  =>TAG
  165               * File  ALTMNU.s        53
  166 0019C 00000           CON(5)  =SEMI
  167               * File  ALTMNU.s        54
  168 001A1 00000           CON(5)  =SEMI
  169 001A6 00000           CON(5)  =SEMI
  170               * File  ALTMNU.s        55
  171 001AB 00000           CON(5)  =DOLIST
  172 001B0 00000           CON(5)  =DOCSTR
  173 001B5 F0000           CON(5)  15
  174 001BA 74E4443         NIBASC  \GNDST\
            545
  175 001C4 00000           CON(5)  =DOCOL
  176               * Input gnd. station elevation
  177               * File  ALTMNU.s        56
  178 001C9 00000           CON(5)  =CK1&Dispatch
  179               * Must have 1 argument
  180               * File  ALTMNU.s        57
  181 001CE 00000           CON(5)  =real
  182 001D3 00000           CON(5)  =DOCOL
  183               * Real number
  184               * File  ALTMNU.s        58
  185 001D8 00000           CON(5)  =DOCSTR
  186 001DD 90000           CON(5)  9
  187 001E2 6647            NIBASC  \ft\
  188 001E6 00000           CON(5)  =umEND
  189               * Add default feet units
  190               * File  ALTMNU.s        59
  191 001EB 00000           CON(5)  =THREE
  192 001F0 00000           CON(5)  =EXTN
  193               * File  ALTMNU.s        60
  194 001F5 00000           CON(5)  =DUP
  195               * File  ALTMNU.s        61
  196 001FA 00000           CON(5)  ='
  197 001FF 00000           CON(5)  =DOIDNT
  198 00204 50              CON(2)  5
  199 00206 74E4443         NIBASC  \GNDST\
            545
  200 00210 00000           CON(5)  =STO
  201               * STO in GLOBAL var PA
  202               * File  ALTMNU.s        62
  203 00215 00000           CON(5)  =DOCSTR
  204 0021A F0000           CON(5)  15
  205 0021F 74E4443         NIBASC  \GNDST\
            545
  206 00229 00000           CON(5)  =>TAG
  207               * File  ALTMNU.s        63
  208 0022E 00000           CON(5)  =SEMI
  209               * File  ALTMNU.s        64
  210 00233 00000           CON(5)  =SEMI
  211 00238 00000           CON(5)  =SEMI
  212               * File  ALTMNU.s        65
  213 0023D 00000           CON(5)  =DOLIST
  214 00242 00000           CON(5)  =DOCSTR
  215 00247 D0000           CON(5)  13
  216 0024C 4514C44         NIBASC  \TALT\
            5
  217 00254 00000           CON(5)  =DOCOL
  218               * Calculate true altitude
  219               * File  ALTMNU.s        66
  220 00259 00000           CON(5)  =DOIDNT
  221 0025E 20              CON(2)  2
  222 00260 3414            NIBASC  \CA\
  223               * Agruments
  224               * File  ALTMNU.s        67
  225 00264 00000           CON(5)  =DOIDNT
  226 00269 30              CON(2)  3
  227 0026B 351445          NIBASC  \SAT\
  228               * File  ALTMNU.s        68
  229 00271 00000           CON(5)  =DOIDNT
  230 00276 20              CON(2)  2
  231 00278 0514            NIBASC  \PA\
  232               * File  ALTMNU.s        69
  233 0027C 00000           CON(5)  =DOIDNT
  234 00281 50              CON(2)  5
  235 00283 74E4443         NIBASC  \GNDST\
            545
  236               * File  ALTMNU.s        70
  237 0028D 00000           CON(5)  =DOROMP
  238 00292 000000          CON(6)  =~TRUALT
  239               * Calculate true altitude
  240               * File  ALTMNU.s        71
  241 00298 00000           CON(5)  =DUP
  242               * File  ALTMNU.s        72
  243 0029D 00000           CON(5)  ='
  244 002A2 00000           CON(5)  =DOIDNT
  245 002A7 20              CON(2)  2
  246 002A9 4514            NIBASC  \TA\
  247 002AD 00000           CON(5)  =STO
  248               * STO in GLOBAL var TA
  249               * File  ALTMNU.s        73
  250 002B2 00000           CON(5)  =DOCSTR
  251 002B7 D0000           CON(5)  13
  252 002BC 4514C44         NIBASC  \TALT\
            5
  253 002C4 00000           CON(5)  =>TAG
  254               * File  ALTMNU.s        74
  255 002C9 00000           CON(5)  =NOVAL
  256 002CE 00000           CON(5)  ='
  257 002D3 00000           CON(5)  =DOIDNT
  258 002D8 20              CON(2)  2
  259 002DA 4414            NIBASC  \DA\
  260 002DE 00000           CON(5)  =STO
  261               * CLEAR GLOBAL var DA
  262               * File  ALTMNU.s        75
  263 002E3 00000           CON(5)  =DOLIST
  264 002E8 00000           CON(5)  =DOIDNT
  265 002ED 20              CON(2)  2
  266 002EF 3414            NIBASC  \CA\
  267 002F3 00000           CON(5)  =DOIDNT
  268 002F8 30              CON(2)  3
  269 002FA 351445          NIBASC  \SAT\
  270 00300 00000           CON(5)  =DOIDNT
  271 00305 20              CON(2)  2
  272 00307 0514            NIBASC  \PA\
  273 0030B 00000           CON(5)  =DOIDNT
  274 00310 50              CON(2)  5
  275 00312 74E4443         NIBASC  \GNDST\
            545
  276 0031C 00000           CON(5)  =DOIDNT
  277 00321 20              CON(2)  2
  278 00323 4514            NIBASC  \TA\
  279 00327 00000           CON(5)  =DOLIST
  280 0032C 00000           CON(5)  =SEMI
  281               * File  ALTMNU.s        76
  282 00331 00000           CON(5)  =DOLIST
  283 00336 00000           CON(5)  =DOCSTR
  284 0033B B0000           CON(5)  11
  285 00340 E45475          NIBASC  \NEW\
  286 00346 00000           CON(5)  =DOCOL
  287 0034B 00000           CON(5)  =DOROMP
  288 00350 000000          CON(6)  =~xALTMNU
  289 00356 00000           CON(5)  =SEMI
  290 0035B 00000           CON(5)  =SEMI
  291               * New problem
  292               * File  ALTMNU.s        77
  293 00360 00000           CON(5)  =DOLIST
  294 00365 00000           CON(5)  =DOCSTR
  295 0036A B0000           CON(5)  11
  296 0036F 745594          NIBASC  \GUI\
  297 00375 00000           CON(5)  =DOCOL
  298 0037A 00000           CON(5)  =DOROMP
  299 0037F 000000          CON(6)  =~xALTFRM
  300 00385 00000           CON(5)  =SEMI
  301 0038A 00000           CON(5)  =SEMI
  302 0038F 00000           CON(5)  =SEMI
  303               * Start GUI
  304               * File  ALTMNU.s        78
  305 00394 00000           CON(5)  =xMENU
  306               * Display new CST menu
  307               * File  ALTMNU.s        79
  308 00399 00000           CON(5)  =SEMI
  309 0039E 00000           CON(5)  =SEMI
  310               * File  ALTMNU.s        80
  311 003A3 00000           CON(5)  =DOLIST
  312 003A8 00000           CON(5)  =DOCSTR
  313 003AD D0000           CON(5)  13
  314 003B2 4414C44         NIBASC  \DALT\
            5
  315 003BA 00000           CON(5)  =DOCOL
  316               * Calculate density altitude
  317               * File  ALTMNU.s        81
  318 003BF 00000           CON(5)  =DOIDNT
  319 003C4 30              CON(2)  3
  320 003C6 351445          NIBASC  \SAT\
  321               * Arguments
  322               * File  ALTMNU.s        82
  323 003CC 00000           CON(5)  =DOIDNT
  324 003D1 20              CON(2)  2
  325 003D3 0514            NIBASC  \PA\
  326               * File  ALTMNU.s        83
  327 003D7 00000           CON(5)  =DOROMP
  328 003DC 000000          CON(6)  =~DENALT
  329               * Calculate density altitude
  330               * File  ALTMNU.s        84
  331 003E2 00000           CON(5)  =DUP
  332               * File  ALTMNU.s        85
  333 003E7 00000           CON(5)  ='
  334 003EC 00000           CON(5)  =DOIDNT
  335 003F1 20              CON(2)  2
  336 003F3 4414            NIBASC  \DA\
  337 003F7 00000           CON(5)  =STO
  338               * STO in GLOBAL var DA
  339               * File  ALTMNU.s        86
  340 003FC 00000           CON(5)  =DOCSTR
  341 00401 D0000           CON(5)  13
  342 00406 4414C44         NIBASC  \DALT\
            5
  343 0040E 00000           CON(5)  =>TAG
  344               * File  ALTMNU.s        87
  345 00413 00000           CON(5)  =NOVAL
  346 00418 00000           CON(5)  ='
  347 0041D 00000           CON(5)  =DOIDNT
  348 00422 20              CON(2)  2
  349 00424 4514            NIBASC  \TA\
  350 00428 00000           CON(5)  =STO
  351               * CLEAR GLOBAL var TA
  352               * File  ALTMNU.s        88
  353 0042D 00000           CON(5)  =NOVAL
  354 00432 00000           CON(5)  ='
  355 00437 00000           CON(5)  =DOIDNT
  356 0043C 20              CON(2)  2
  357 0043E 3414            NIBASC  \CA\
  358 00442 00000           CON(5)  =STO
  359               * CLEAR GLOBAL var CA
  360               * File  ALTMNU.s        89
  361 00447 00000           CON(5)  =DOLIST
  362 0044C 00000           CON(5)  =DOLIST
  363 00451 00000           CON(5)  =SEMI
  364 00456 00000           CON(5)  =DOIDNT
  365 0045B 30              CON(2)  3
  366 0045D 351445          NIBASC  \SAT\
  367 00463 00000           CON(5)  =DOIDNT
  368 00468 20              CON(2)  2
  369 0046A 0514            NIBASC  \PA\
  370 0046E 00000           CON(5)  =DOLIST
  371 00473 00000           CON(5)  =SEMI
  372 00478 00000           CON(5)  =DOLIST
  373 0047D 00000           CON(5)  =SEMI
  374 00482 00000           CON(5)  =DOIDNT
  375 00487 20              CON(2)  2
  376 00489 4414            NIBASC  \DA\
  377               * File  ALTMNU.s        90
  378 0048D 00000           CON(5)  =DOLIST
  379 00492 00000           CON(5)  =DOCSTR
  380 00497 B0000           CON(5)  11
  381 0049C E45475          NIBASC  \NEW\
  382 004A2 00000           CON(5)  =DOCOL
  383 004A7 00000           CON(5)  =DOROMP
  384 004AC 000000          CON(6)  =~xALTMNU
  385 004B2 00000           CON(5)  =SEMI
  386 004B7 00000           CON(5)  =SEMI
  387               * New problem
  388               * File  ALTMNU.s        91
  389 004BC 00000           CON(5)  =DOLIST
  390 004C1 00000           CON(5)  =DOCSTR
  391 004C6 B0000           CON(5)  11
  392 004CB 745594          NIBASC  \GUI\
  393 004D1 00000           CON(5)  =DOCOL
  394 004D6 00000           CON(5)  =DOROMP
  395 004DB 000000          CON(6)  =~xALTFRM
  396 004E1 00000           CON(5)  =SEMI
  397 004E6 00000           CON(5)  =SEMI
  398 004EB 00000           CON(5)  =SEMI
  399               * Run GUI
  400               * File  ALTMNU.s        92
  401 004F0 00000           CON(5)  =xMENU
  402               * Display new CST menu
  403               * File  ALTMNU.s        93
  404 004F5 00000           CON(5)  =SEMI
  405 004FA 00000           CON(5)  =SEMI
  406               * File  ALTMNU.s        94
  407 004FF 00000           CON(5)  =DOLIST
  408 00504 00000           CON(5)  =DOCSTR
  409 00509 B0000           CON(5)  11
  410 0050E 745594          NIBASC  \GUI\
  411 00514 00000           CON(5)  =DOCOL
  412 00519 00000           CON(5)  =DOROMP
  413 0051E 000000          CON(6)  =~xALTFRM
  414 00524 00000           CON(5)  =SEMI
  415 00529 00000           CON(5)  =SEMI
  416               * Run GUI
  417               * File  ALTMNU.s        95
  418 0052E 00000           CON(5)  =DOLIST
  419 00533 00000           CON(5)  =DOCSTR
  420 00538 F0000           CON(5)  15
  421 0053D 14E4355         NIBASC  \ANSER\
            425
  422 00547 00000           CON(5)  =DOCOL
  423               * Display solutions CST menu
  424               * File  ALTMNU.s        96
  425 0054C 00000           CON(5)  =DOLIST
  426 00551 00000           CON(5)  =DOIDNT
  427 00556 20              CON(2)  2
  428 00558 3414            NIBASC  \CA\
  429 0055C 00000           CON(5)  =DOIDNT
  430 00561 30              CON(2)  3
  431 00563 351445          NIBASC  \SAT\
  432 00569 00000           CON(5)  =DOIDNT
  433 0056E 20              CON(2)  2
  434 00570 0514            NIBASC  \PA\
  435 00574 00000           CON(5)  =DOIDNT
  436 00579 50              CON(2)  5
  437 0057B 74E4443         NIBASC  \GNDST\
            545
  438 00585 00000           CON(5)  =DOIDNT
  439 0058A 20              CON(2)  2
  440 0058C 4514            NIBASC  \TA\
  441 00590 00000           CON(5)  =DOIDNT
  442 00595 20              CON(2)  2
  443 00597 4414            NIBASC  \DA\
  444               * File  ALTMNU.s        97
  445 0059B 00000           CON(5)  =DOLIST
  446 005A0 00000           CON(5)  =DOCSTR
  447 005A5 B0000           CON(5)  11
  448 005AA E45475          NIBASC  \NEW\
  449 005B0 00000           CON(5)  =DOCOL
  450 005B5 00000           CON(5)  =DOROMP
  451 005BA 000000          CON(6)  =~xALTMNU
  452 005C0 00000           CON(5)  =SEMI
  453 005C5 00000           CON(5)  =SEMI
  454 005CA 00000           CON(5)  =SEMI
  455               * File  ALTMNU.s        98
  456 005CF 00000           CON(5)  =xMENU
  457               * File  ALTMNU.s        99
  458 005D4 00000           CON(5)  =SEMI
  459 005D9 00000           CON(5)  =SEMI
  460               * File  ALTMNU.s        100
  461 005DE 00000           CON(5)  =SEMI
  462               * File  ALTMNU.s        101
  463 005E3 00000           CON(5)  =xMENU
  464               * File  ALTMNU.s        102
  465 005E8 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:17:07 2009
V3.0.9 (04/15/2007)   Symbol Table                       ALTMNU.a       Page    2

 '                                 Ext                   -    68   112   154
                                         196   243   256   333   346   354
 >TAG                              Ext                   -    78   122   164
                                         206   253   343
 CK0                               Ext                   -    40
 CK1&Dispatch                      Ext                   -    50    93   136
                                         178
 DOCOL                             Ext                   -    38    47    54
                                          90    97   133   140   175   182   217
                                         286   297   315   382   393   411   422
                                         449
 DOCSTR                            Ext                   -    44    57    75
                                          87   100   119   130   143   161   172
                                         185   203   214   250   283   294   312
                                         340   379   390   408   419   446
 DOIDNT                            Ext                   -    69   113   155
                                         197   220   225   229   233   244   257
                                         264   267   270   273   276   318   323
                                         334   347   355   364   367   374   426
                                         429   432   435   438   441
 DOLIST                            Ext                   -    42    43    86
                                         129   171   213   263   279   282   293
                                         311   361   362   370   372   378   389
                                         407   418   425   445
 DOROMP                            Ext                   -   237   287   298
                                         327   383   394   412   450
 DUP                               Ext                   -    66   110   152
                                         194   241   331
 EXTN                              Ext                   -    64   108   150
                                         192
 NOVAL                             Ext                   -   255   345   353
=RomId                             Abs     807 #00000327 -    26
 SEMI                              Ext                   -    81    83    84
                                         124   126   127   166   168   169   208
                                         210   211   280   289   290   300   301
                                         302   308   309   363   371   373   385
                                         386   396   397   398   404   405   414
                                         415   452   453   454   458   459   461
                                         465
 STO                               Ext                   -    72   116   158
                                         200   247   260   337   350   358
 THREE                             Ext                   -    63   107   149
                                         191
 real                              Ext                   -    53    96   139
                                         181
 umEND                             Ext                   -    60   104   146
                                         188
=xALTMNU                           Rel       6 #00000006 -    36
 xMENU                             Ext                   -   305   401   456
                                         463
 ~DENALT                           Ext                   -   328
 ~TRUALT                           Ext                   -   238
 ~xALTFRM                          Ext                   -   299   395   413
 ~xALTMNU                          Ext                   -    35   288   384
                                         451
Saturn Assembler                                       Fri Jun 19 12:17:07 2009
V3.0.9 (04/15/2007)   Statistics                         ALTMNU.a       Page    3

Input Parameters

  Source file name is ALTMNU.a

  Listing file name is ALTMNU.l

  Object file name is ALTMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
