Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)                                      ALTMNU.a       Page    1

    1               * File  ALTMNU.s        1
    2               * RPL
    3               * File  ALTMNU.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTMNU.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               ********************************************************************
    6               * NAME:            ALTMNU
    7               * LIBRARY #:       327h = 807d
    8               * AUTHOR:          Dan Pitic
    9               * VERSION:         1.13
   10               * DATE:            22 April 2009
   11               * DESCRIPTION:     Modifies the CST menu for the start of a new problem.
   12               * INPUT:     NONE
   13               * OUTPUT:    CST     Menu reorganised to start a new problem or view
   14               *                    solutions from previous problem
   15               *            CA      Calibrated altitude (feet)
   16               *                                                                                               SAT     Static air temperature (deg C)
   17               *            PALT    Pressure altitude (feet)
   18               *            GNDST   Ground station elevation (feet)
   19               *                                                                                               TA      True altitude (feet)
   20               *            DA      Density altitude (feet)
   21               *
   22               * File  ALTMNU.s        20
   23               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALT.h
   24
   25               =RomId  EQU     #327
   26               * ROMID set to 327
   27
   28
   29
   30
   31
   32
   33               *|| Resuming file ALTMNU.s at line 20
   34 00000 000000          CON(6)  =~xALTMNU
   35 00006         =xALTMNU
   36               * File  ALTMNU.s        22
   37 00006 00000           CON(5)  =DOCOL
   38               * File  ALTMNU.s        23
   39 0000B 00000           CON(5)  ='
   40 00010 00000           CON(5)  =DOLIST
   41 00015 00000           CON(5)  =DOLIST
   42 0001A 00000           CON(5)  =DOCSTR
   43 0001F D0000           CON(5)  13
   44 00024 3414C44         NIBASC  \CALT\
            5
   45 0002C 00000           CON(5)  =DOCOL
   46               * Input calibrated altitude
   47               * File  ALTMNU.s        24
   48 00031 00000           CON(5)  =CK1&Dispatch
   49               * Must have 1 argument
   50               * File  ALTMNU.s        25
   51 00036 00000           CON(5)  =BINT1
   52 0003B 00000           CON(5)  =DOCOL
   53               * Real number
   54               * File  ALTMNU.s        26
   55 00040 00000           CON(5)  =DOCSTR
   56 00045 90000           CON(5)  9
   57 0004A 6647            NIBASC  \ft\
   58 0004E 00000           CON(5)  =umEND
   59               * Add default feet units
   60               * File  ALTMNU.s        27
   61 00053 00000           CON(5)  =BINT3
   62 00058 00000           CON(5)  =EXTN
   63               * File  ALTMNU.s        28
   64 0005D 00000           CON(5)  =DUP
   65               * File  ALTMNU.s        29
   66 00062 00000           CON(5)  ='
   67 00067 00000           CON(5)  =DOIDNT
   68 0006C 20              CON(2)  2
   69 0006E 3414            NIBASC  \CA\
   70 00072 00000           CON(5)  =STO
   71               * STO in GLOBAL VAR CA
   72               * File  ALTMNU.s        30
   73 00077 00000           CON(5)  =DOCSTR
   74 0007C D0000           CON(5)  13
   75 00081 3414C44         NIBASC  \CALT\
            5
   76 00089 00000           CON(5)  =>TAG
   77               * TAG
   78               * File  ALTMNU.s        31
   79 0008E 00000           CON(5)  =SEMI
   80               * File  ALTMNU.s        32
   81 00093 00000           CON(5)  =SEMI
   82 00098 00000           CON(5)  =SEMI
   83               * File  ALTMNU.s        33
   84 0009D 00000           CON(5)  =DOLIST
   85 000A2 00000           CON(5)  =DOCSTR
   86 000A7 B0000           CON(5)  11
   87 000AC 351445          NIBASC  \SAT\
   88 000B2 00000           CON(5)  =DOCOL
   89               * Input static air temperature
   90               * File  ALTMNU.s        34
   91 000B7 00000           CON(5)  =CK1&Dispatch
   92               * Must have 1 argument
   93               * File  ALTMNU.s        35
   94 000BC 00000           CON(5)  =BINT1
   95 000C1 00000           CON(5)  =DOCOL
   96               * Real number
   97               * File  ALTMNU.s        36
   98 000C6 00000           CON(5)  =DOCSTR
   99 000CB 90000           CON(5)  9
  100 000D0 0B              CON(2)  #B0
  101 000D2 34              NIBASC  \C\
  102 000D4 00000           CON(5)  =umEND
  103               * Add default deg C units
  104               * File  ALTMNU.s        37
  105 000D9 00000           CON(5)  =BINT3
  106 000DE 00000           CON(5)  =EXTN
  107               * File  ALTMNU.s        38
  108 000E3 00000           CON(5)  =DUP
  109               * File  ALTMNU.s        39
  110 000E8 00000           CON(5)  ='
  111 000ED 00000           CON(5)  =DOIDNT
  112 000F2 30              CON(2)  3
  113 000F4 351445          NIBASC  \SAT\
  114 000FA 00000           CON(5)  =STO
  115               * STO in GLOBAL var SAT
  116               * File  ALTMNU.s        40
  117 000FF 00000           CON(5)  =DOCSTR
  118 00104 B0000           CON(5)  11
  119 00109 351445          NIBASC  \SAT\
  120 0010F 00000           CON(5)  =>TAG
  121               * File  ALTMNU.s        41
  122 00114 00000           CON(5)  =SEMI
  123               * File  ALTMNU.s        42
  124 00119 00000           CON(5)  =SEMI
  125 0011E 00000           CON(5)  =SEMI
  126               * File  ALTMNU.s        43
  127 00123 00000           CON(5)  =DOLIST
  128 00128 00000           CON(5)  =DOCSTR
  129 0012D D0000           CON(5)  13
  130 00132 0514C44         NIBASC  \PALT\
            5
  131 0013A 00000           CON(5)  =DOCOL
  132               * Input pressure altitude
  133               * File  ALTMNU.s        44
  134 0013F 00000           CON(5)  =CK1&Dispatch
  135               * Must have 1 argument
  136               * File  ALTMNU.s        45
  137 00144 00000           CON(5)  =BINT1
  138 00149 00000           CON(5)  =DOCOL
  139               * Real number
  140               * File  ALTMNU.s        46
  141 0014E 00000           CON(5)  =DOCSTR
  142 00153 90000           CON(5)  9
  143 00158 6647            NIBASC  \ft\
  144 0015C 00000           CON(5)  =umEND
  145               * Add default feet units
  146               * File  ALTMNU.s        47
  147 00161 00000           CON(5)  =BINT3
  148 00166 00000           CON(5)  =EXTN
  149               * File  ALTMNU.s        48
  150 0016B 00000           CON(5)  =DUP
  151               * File  ALTMNU.s        49
  152 00170 00000           CON(5)  ='
  153 00175 00000           CON(5)  =DOIDNT
  154 0017A 20              CON(2)  2
  155 0017C 0514            NIBASC  \PA\
  156 00180 00000           CON(5)  =STO
  157               * STO in GLOBAL var PA
  158               * File  ALTMNU.s        50
  159 00185 00000           CON(5)  =DOCSTR
  160 0018A D0000           CON(5)  13
  161 0018F 0514C44         NIBASC  \PALT\
            5
  162 00197 00000           CON(5)  =>TAG
  163               * File  ALTMNU.s        51
  164 0019C 00000           CON(5)  =SEMI
  165               * File  ALTMNU.s        52
  166 001A1 00000           CON(5)  =SEMI
  167 001A6 00000           CON(5)  =SEMI
  168               * File  ALTMNU.s        53
  169 001AB 00000           CON(5)  =DOLIST
  170 001B0 00000           CON(5)  =DOCSTR
  171 001B5 F0000           CON(5)  15
  172 001BA 74E4443         NIBASC  \GNDST\
            545
  173 001C4 00000           CON(5)  =DOCOL
  174               * Input gnd. station elevation
  175               * File  ALTMNU.s        54
  176 001C9 00000           CON(5)  =CK1&Dispatch
  177               * Must have 1 argument
  178               * File  ALTMNU.s        55
  179 001CE 00000           CON(5)  =BINT1
  180 001D3 00000           CON(5)  =DOCOL
  181               * Real number
  182               * File  ALTMNU.s        56
  183 001D8 00000           CON(5)  =DOCSTR
  184 001DD 90000           CON(5)  9
  185 001E2 6647            NIBASC  \ft\
  186 001E6 00000           CON(5)  =umEND
  187               * Add default feet units
  188               * File  ALTMNU.s        57
  189 001EB 00000           CON(5)  =BINT3
  190 001F0 00000           CON(5)  =EXTN
  191               * File  ALTMNU.s        58
  192 001F5 00000           CON(5)  =DUP
  193               * File  ALTMNU.s        59
  194 001FA 00000           CON(5)  ='
  195 001FF 00000           CON(5)  =DOIDNT
  196 00204 50              CON(2)  5
  197 00206 74E4443         NIBASC  \GNDST\
            545
  198 00210 00000           CON(5)  =STO
  199               * STO in GLOBAL var PA
  200               * File  ALTMNU.s        60
  201 00215 00000           CON(5)  =DOCSTR
  202 0021A F0000           CON(5)  15
  203 0021F 74E4443         NIBASC  \GNDST\
            545
  204 00229 00000           CON(5)  =>TAG
  205               * File  ALTMNU.s        61
  206 0022E 00000           CON(5)  =SEMI
  207               * File  ALTMNU.s        62
  208 00233 00000           CON(5)  =SEMI
  209 00238 00000           CON(5)  =SEMI
  210               * File  ALTMNU.s        63
  211 0023D 00000           CON(5)  =DOLIST
  212 00242 00000           CON(5)  =DOCSTR
  213 00247 D0000           CON(5)  13
  214 0024C 4514C44         NIBASC  \TALT\
            5
  215 00254 00000           CON(5)  =DOCOL
  216               * Calculate true altitude
  217               * File  ALTMNU.s        64
  218 00259 00000           CON(5)  =DOIDNT
  219 0025E 20              CON(2)  2
  220 00260 3414            NIBASC  \CA\
  221               * Agruments
  222               * File  ALTMNU.s        65
  223 00264 00000           CON(5)  =DOIDNT
  224 00269 30              CON(2)  3
  225 0026B 351445          NIBASC  \SAT\
  226               * File  ALTMNU.s        66
  227 00271 00000           CON(5)  =DOIDNT
  228 00276 20              CON(2)  2
  229 00278 0514            NIBASC  \PA\
  230               * File  ALTMNU.s        67
  231 0027C 00000           CON(5)  =DOIDNT
  232 00281 50              CON(2)  5
  233 00283 74E4443         NIBASC  \GNDST\
            545
  234               * File  ALTMNU.s        68
  235 0028D 00000           CON(5)  =DOROMP
  236 00292 000000          CON(6)  =~TRUALT
  237               * Calculate true altitude
  238               * File  ALTMNU.s        69
  239 00298 00000           CON(5)  =DUP
  240               * File  ALTMNU.s        70
  241 0029D 00000           CON(5)  ='
  242 002A2 00000           CON(5)  =DOIDNT
  243 002A7 20              CON(2)  2
  244 002A9 4514            NIBASC  \TA\
  245 002AD 00000           CON(5)  =STO
  246               * STO in GLOBAL var TA
  247               * File  ALTMNU.s        71
  248 002B2 00000           CON(5)  =DOCSTR
  249 002B7 D0000           CON(5)  13
  250 002BC 4514C44         NIBASC  \TALT\
            5
  251 002C4 00000           CON(5)  =>TAG
  252               * File  ALTMNU.s        72
  253 002C9 00000           CON(5)  =NOVAL
  254 002CE 00000           CON(5)  ='
  255 002D3 00000           CON(5)  =DOIDNT
  256 002D8 20              CON(2)  2
  257 002DA 4414            NIBASC  \DA\
  258 002DE 00000           CON(5)  =STO
  259               * CLEAR GLOBAL var DA
  260               * File  ALTMNU.s        73
  261 002E3 00000           CON(5)  =DOLIST
  262 002E8 00000           CON(5)  =DOIDNT
  263 002ED 20              CON(2)  2
  264 002EF 3414            NIBASC  \CA\
  265 002F3 00000           CON(5)  =DOIDNT
  266 002F8 30              CON(2)  3
  267 002FA 351445          NIBASC  \SAT\
  268 00300 00000           CON(5)  =DOIDNT
  269 00305 20              CON(2)  2
  270 00307 0514            NIBASC  \PA\
  271 0030B 00000           CON(5)  =DOIDNT
  272 00310 50              CON(2)  5
  273 00312 74E4443         NIBASC  \GNDST\
            545
  274 0031C 00000           CON(5)  =DOIDNT
  275 00321 20              CON(2)  2
  276 00323 4514            NIBASC  \TA\
  277 00327 00000           CON(5)  =DOLIST
  278 0032C 00000           CON(5)  =SEMI
  279               * File  ALTMNU.s        74
  280 00331 00000           CON(5)  =DOLIST
  281 00336 00000           CON(5)  =DOCSTR
  282 0033B B0000           CON(5)  11
  283 00340 E45475          NIBASC  \NEW\
  284 00346 00000           CON(5)  =DOCOL
  285 0034B 00000           CON(5)  =DOROMP
  286 00350 000000          CON(6)  =~xALTMNU
  287 00356 00000           CON(5)  =SEMI
  288 0035B 00000           CON(5)  =SEMI
  289               * New problem
  290               * File  ALTMNU.s        75
  291 00360 00000           CON(5)  =DOLIST
  292 00365 00000           CON(5)  =DOCSTR
  293 0036A B0000           CON(5)  11
  294 0036F 745594          NIBASC  \GUI\
  295 00375 00000           CON(5)  =DOCOL
  296 0037A 00000           CON(5)  =DOROMP
  297 0037F 000000          CON(6)  =~xALTFRM
  298 00385 00000           CON(5)  =SEMI
  299 0038A 00000           CON(5)  =SEMI
  300 0038F 00000           CON(5)  =SEMI
  301               * Start GUI
  302               * File  ALTMNU.s        76
  303 00394 00000           CON(5)  =xMENU
  304               * Display new CST menu
  305               * File  ALTMNU.s        77
  306 00399 00000           CON(5)  =SEMI
  307 0039E 00000           CON(5)  =SEMI
  308               * File  ALTMNU.s        78
  309 003A3 00000           CON(5)  =DOLIST
  310 003A8 00000           CON(5)  =DOCSTR
  311 003AD D0000           CON(5)  13
  312 003B2 4414C44         NIBASC  \DALT\
            5
  313 003BA 00000           CON(5)  =DOCOL
  314               * Calculate density altitude
  315               * File  ALTMNU.s        79
  316 003BF 00000           CON(5)  =DOIDNT
  317 003C4 30              CON(2)  3
  318 003C6 351445          NIBASC  \SAT\
  319               * Arguments
  320               * File  ALTMNU.s        80
  321 003CC 00000           CON(5)  =DOIDNT
  322 003D1 20              CON(2)  2
  323 003D3 0514            NIBASC  \PA\
  324               * File  ALTMNU.s        81
  325 003D7 00000           CON(5)  =DOROMP
  326 003DC 000000          CON(6)  =~DENALT
  327               * Calculate density altitude
  328               * File  ALTMNU.s        82
  329 003E2 00000           CON(5)  =DUP
  330               * File  ALTMNU.s        83
  331 003E7 00000           CON(5)  ='
  332 003EC 00000           CON(5)  =DOIDNT
  333 003F1 20              CON(2)  2
  334 003F3 4414            NIBASC  \DA\
  335 003F7 00000           CON(5)  =STO
  336               * STO in GLOBAL var DA
  337               * File  ALTMNU.s        84
  338 003FC 00000           CON(5)  =DOCSTR
  339 00401 D0000           CON(5)  13
  340 00406 4414C44         NIBASC  \DALT\
            5
  341 0040E 00000           CON(5)  =>TAG
  342               * File  ALTMNU.s        85
  343 00413 00000           CON(5)  =NOVAL
  344 00418 00000           CON(5)  ='
  345 0041D 00000           CON(5)  =DOIDNT
  346 00422 20              CON(2)  2
  347 00424 4514            NIBASC  \TA\
  348 00428 00000           CON(5)  =STO
  349               * CLEAR GLOBAL var TA
  350               * File  ALTMNU.s        86
  351 0042D 00000           CON(5)  =NOVAL
  352 00432 00000           CON(5)  ='
  353 00437 00000           CON(5)  =DOIDNT
  354 0043C 20              CON(2)  2
  355 0043E 3414            NIBASC  \CA\
  356 00442 00000           CON(5)  =STO
  357               * CLEAR GLOBAL var CA
  358               * File  ALTMNU.s        87
  359 00447 00000           CON(5)  =DOLIST
  360 0044C 00000           CON(5)  =DOLIST
  361 00451 00000           CON(5)  =SEMI
  362 00456 00000           CON(5)  =DOIDNT
  363 0045B 30              CON(2)  3
  364 0045D 351445          NIBASC  \SAT\
  365 00463 00000           CON(5)  =DOIDNT
  366 00468 20              CON(2)  2
  367 0046A 0514            NIBASC  \PA\
  368 0046E 00000           CON(5)  =DOLIST
  369 00473 00000           CON(5)  =SEMI
  370 00478 00000           CON(5)  =DOLIST
  371 0047D 00000           CON(5)  =SEMI
  372 00482 00000           CON(5)  =DOIDNT
  373 00487 20              CON(2)  2
  374 00489 4414            NIBASC  \DA\
  375               * File  ALTMNU.s        88
  376 0048D 00000           CON(5)  =DOLIST
  377 00492 00000           CON(5)  =DOCSTR
  378 00497 B0000           CON(5)  11
  379 0049C E45475          NIBASC  \NEW\
  380 004A2 00000           CON(5)  =DOCOL
  381 004A7 00000           CON(5)  =DOROMP
  382 004AC 000000          CON(6)  =~xALTMNU
  383 004B2 00000           CON(5)  =SEMI
  384 004B7 00000           CON(5)  =SEMI
  385               * New problem
  386               * File  ALTMNU.s        89
  387 004BC 00000           CON(5)  =DOLIST
  388 004C1 00000           CON(5)  =DOCSTR
  389 004C6 B0000           CON(5)  11
  390 004CB 745594          NIBASC  \GUI\
  391 004D1 00000           CON(5)  =DOCOL
  392 004D6 00000           CON(5)  =DOROMP
  393 004DB 000000          CON(6)  =~xALTFRM
  394 004E1 00000           CON(5)  =SEMI
  395 004E6 00000           CON(5)  =SEMI
  396 004EB 00000           CON(5)  =SEMI
  397               * Run GUI
  398               * File  ALTMNU.s        90
  399 004F0 00000           CON(5)  =xMENU
  400               * Display new CST menu
  401               * File  ALTMNU.s        91
  402 004F5 00000           CON(5)  =SEMI
  403 004FA 00000           CON(5)  =SEMI
  404               * File  ALTMNU.s        92
  405 004FF 00000           CON(5)  =DOLIST
  406 00504 00000           CON(5)  =DOCSTR
  407 00509 B0000           CON(5)  11
  408 0050E 745594          NIBASC  \GUI\
  409 00514 00000           CON(5)  =DOCOL
  410 00519 00000           CON(5)  =DOROMP
  411 0051E 000000          CON(6)  =~xALTFRM
  412 00524 00000           CON(5)  =SEMI
  413 00529 00000           CON(5)  =SEMI
  414               * Run GUI
  415               * File  ALTMNU.s        93
  416 0052E 00000           CON(5)  =DOLIST
  417 00533 00000           CON(5)  =DOCSTR
  418 00538 F0000           CON(5)  15
  419 0053D 14E4355         NIBASC  \ANSER\
            425
  420 00547 00000           CON(5)  =DOCOL
  421               * Display solutions CST menu
  422               * File  ALTMNU.s        94
  423 0054C 00000           CON(5)  =DOLIST
  424 00551 00000           CON(5)  =DOIDNT
  425 00556 20              CON(2)  2
  426 00558 3414            NIBASC  \CA\
  427 0055C 00000           CON(5)  =DOIDNT
  428 00561 30              CON(2)  3
  429 00563 351445          NIBASC  \SAT\
  430 00569 00000           CON(5)  =DOIDNT
  431 0056E 20              CON(2)  2
  432 00570 0514            NIBASC  \PA\
  433 00574 00000           CON(5)  =DOIDNT
  434 00579 50              CON(2)  5
  435 0057B 74E4443         NIBASC  \GNDST\
            545
  436 00585 00000           CON(5)  =DOIDNT
  437 0058A 20              CON(2)  2
  438 0058C 4514            NIBASC  \TA\
  439 00590 00000           CON(5)  =DOIDNT
  440 00595 20              CON(2)  2
  441 00597 4414            NIBASC  \DA\
  442               * File  ALTMNU.s        95
  443 0059B 00000           CON(5)  =DOLIST
  444 005A0 00000           CON(5)  =DOCSTR
  445 005A5 B0000           CON(5)  11
  446 005AA E45475          NIBASC  \NEW\
  447 005B0 00000           CON(5)  =DOCOL
  448 005B5 00000           CON(5)  =DOROMP
  449 005BA 000000          CON(6)  =~xALTMNU
  450 005C0 00000           CON(5)  =SEMI
  451 005C5 00000           CON(5)  =SEMI
  452 005CA 00000           CON(5)  =SEMI
  453               * File  ALTMNU.s        96
  454 005CF 00000           CON(5)  =xMENU
  455               * File  ALTMNU.s        97
  456 005D4 00000           CON(5)  =SEMI
  457 005D9 00000           CON(5)  =SEMI
  458               * File  ALTMNU.s        98
  459 005DE 00000           CON(5)  =SEMI
  460               * File  ALTMNU.s        99
  461 005E3 00000           CON(5)  =xMENU
  462               * File  ALTMNU.s        100
  463 005E8 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       ALTMNU.a       Page    2

 '                                 Ext                   -    39    66   110
                                         152   194   241   254   331   344   352
 >TAG                              Ext                   -    76   120   162
                                         204   251   341
 BINT1                             Ext                   -    51    94   137
                                         179
 BINT3                             Ext                   -    61   105   147
                                         189
 CK1&Dispatch                      Ext                   -    48    91   134
                                         176
 DOCOL                             Ext                   -    37    45    52
                                          88    95   131   138   173   180   215
                                         284   295   313   380   391   409   420
                                         447
 DOCSTR                            Ext                   -    42    55    73
                                          85    98   117   128   141   159   170
                                         183   201   212   248   281   292   310
                                         338   377   388   406   417   444
 DOIDNT                            Ext                   -    67   111   153
                                         195   218   223   227   231   242   255
                                         262   265   268   271   274   316   321
                                         332   345   353   362   365   372   424
                                         427   430   433   436   439
 DOLIST                            Ext                   -    40    41    84
                                         127   169   211   261   277   280   291
                                         309   359   360   368   370   376   387
                                         405   416   423   443
 DOROMP                            Ext                   -   235   285   296
                                         325   381   392   410   448
 DUP                               Ext                   -    64   108   150
                                         192   239   329
 EXTN                              Ext                   -    62   106   148
                                         190
 NOVAL                             Ext                   -   253   343   351
=RomId                             Abs     807 #00000327 -    25
 SEMI                              Ext                   -    79    81    82
                                         122   124   125   164   166   167   206
                                         208   209   278   287   288   298   299
                                         300   306   307   361   369   371   383
                                         384   394   395   396   402   403   412
                                         413   450   451   452   456   457   459
                                         463
 STO                               Ext                   -    70   114   156
                                         198   245   258   335   348   356
 umEND                             Ext                   -    58   102   144
                                         186
=xALTMNU                           Rel       6 #00000006 -    35
 xMENU                             Ext                   -   303   399   454
                                         461
 ~DENALT                           Ext                   -   326
 ~TRUALT                           Ext                   -   236
 ~xALTFRM                          Ext                   -   297   393   411
 ~xALTMNU                          Ext                   -    34   286   382
                                         449
Saturn Assembler                                       Wed Jun 10 22:05:33 2009
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
