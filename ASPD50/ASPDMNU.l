Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)                                      ASPDMNU.a      Page    1

    1               * File  ASPDMNU.s       1
    2               * RPL
    3               * File  ASPDMNU.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDMNU.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               **********************************************************************
    6               * NAME:            ASPDMNU
    7               * LIBRARY #:       328h = 808d
    8               * AUTHOR:          Dan Pitic
    9               * VERSION:         1.34
   10               * DATE:            19 June 2009
   11               * COMPATIBILITY:   HP50, HP48
   12               * DESCRIPTION:     Generates the CST menu system to solve for true
   13               *                  airspeed or start the GUI
   14               *
   15               * File  ASPDMNU.s       13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD50\ASPD50.h
   17
   18               =RomId  EQU     #328
   19               * ROMID set to 328
   20
   21
   22
   23
   24
   25
   26
   27
   28               *|| Resuming file ASPDMNU.s at line 13
   29 00000 000000          CON(6)  =~xASPDMNU
   30 00006         =xASPDMNU
   31               * File  ASPDMNU.s       15
   32 00006 00000           CON(5)  =DOCOL
   33               * File  ASPDMNU.s       16
   34 0000B 00000           CON(5)  =CK0
   35               * No arguments
   36               * File  ASPDMNU.s       17
   37 00010 00000           CON(5)  =DOLIST
   38               * File  ASPDMNU.s       18
   39 00015 00000           CON(5)  =DOLIST
   40 0001A 00000           CON(5)  =DOCSTR
   41 0001F B0000           CON(5)  11
   42 00024 341435          NIBASC  \CAS\
   43 0002A 00000           CON(5)  =DOCOL
   44               * Input calibrated airspeed
   45               * File  ASPDMNU.s       19
   46 0002F 00000           CON(5)  =CK1&Dispatch
   47               * Must have 1 argument
   48               * File  ASPDMNU.s       20
   49 00034 00000           CON(5)  =real
   50 00039 00000           CON(5)  =DOCOL
   51               * Real number
   52               * File  ASPDMNU.s       21
   53 0003E 00000           CON(5)  =DOCSTR
   54 00043 D0000           CON(5)  13
   55 00048 B6E6F64         NIBASC  \knot\
            7
   56 00050 00000           CON(5)  =umEND
   57 00055 00000           CON(5)  =THREE
   58 0005A 00000           CON(5)  =EXTN
   59               * Add default knot units
   60               * File  ASPDMNU.s       22
   61 0005F 00000           CON(5)  =DUP
   62               * File  ASPDMNU.s       23
   63 00064 00000           CON(5)  ='
   64 00069 00000           CON(5)  =DOIDNT
   65 0006E 20              CON(2)  2
   66 00070 6534            NIBASC  \VC\
   67 00074 00000           CON(5)  =STO
   68               * STO in GLOBAL var VC
   69               * File  ASPDMNU.s       24
   70 00079 00000           CON(5)  =DOCSTR
   71 0007E B0000           CON(5)  11
   72 00083 341435          NIBASC  \CAS\
   73 00089 00000           CON(5)  =>TAG
   74               * TAG
   75               * File  ASPDMNU.s       25
   76 0008E 00000           CON(5)  =SEMI
   77               * File  ASPDMNU.s       26
   78 00093 00000           CON(5)  =SEMI
   79 00098 00000           CON(5)  =SEMI
   80               * File  ASPDMNU.s       27
   81 0009D 00000           CON(5)  =DOLIST
   82 000A2 00000           CON(5)  =DOCSTR
   83 000A7 D0000           CON(5)  13
   84 000AC 0514C44         NIBASC  \PALT\
            5
   85 000B4 00000           CON(5)  =DOCOL
   86               * Input pressure altitude
   87               * File  ASPDMNU.s       28
   88 000B9 00000           CON(5)  =CK1&Dispatch
   89               * Must have 1 argument
   90               * File  ASPDMNU.s       29
   91 000BE 00000           CON(5)  =real
   92 000C3 00000           CON(5)  =DOCOL
   93               * Real number
   94               * File  ASPDMNU.s       30
   95 000C8 00000           CON(5)  =DOCSTR
   96 000CD 90000           CON(5)  9
   97 000D2 6647            NIBASC  \ft\
   98 000D6 00000           CON(5)  =umEND
   99 000DB 00000           CON(5)  =THREE
  100 000E0 00000           CON(5)  =EXTN
  101               * Add default feet units
  102               * File  ASPDMNU.s       31
  103 000E5 00000           CON(5)  =DUP
  104               * File  ASPDMNU.s       32
  105 000EA 00000           CON(5)  ='
  106 000EF 00000           CON(5)  =DOIDNT
  107 000F4 20              CON(2)  2
  108 000F6 0514            NIBASC  \PA\
  109 000FA 00000           CON(5)  =STO
  110               * STO in GLOBAL var PA
  111               * File  ASPDMNU.s       33
  112 000FF 00000           CON(5)  =DOCSTR
  113 00104 D0000           CON(5)  13
  114 00109 0514C44         NIBASC  \PALT\
            5
  115 00111 00000           CON(5)  =>TAG
  116               * TAG
  117               * File  ASPDMNU.s       34
  118 00116 00000           CON(5)  =DOIDNT
  119 0011B 20              CON(2)  2
  120 0011D 6534            NIBASC  \VC\
  121 00121 00000           CON(5)  =DOIDNT
  122 00126 20              CON(2)  2
  123 00128 0514            NIBASC  \PA\
  124               * File  ASPDMNU.s       35
  125 0012C 00000           CON(5)  =DOROMP
  126 00131 000000          CON(6)  =~CMACH
  127               * Calc. Mach number and
  128               * File  ASPDMNU.s       36
  129 00137 00000           CON(5)  =DOCSTR
  130 0013C D0000           CON(5)  13
  131 00141 D414348         NIBASC  \MACH\
            4
  132 00149 00000           CON(5)  =>TAG
  133               * TAG
  134               * File  ASPDMNU.s       37
  135 0014E 00000           CON(5)  =DOLIST
  136 00153 00000           CON(5)  =DOIDNT
  137 00158 20              CON(2)  2
  138 0015A 6534            NIBASC  \VC\
  139 0015E 00000           CON(5)  =DOIDNT
  140 00163 20              CON(2)  2
  141 00165 0514            NIBASC  \PA\
  142 00169 00000           CON(5)  =DOIDNT
  143 0016E 10              CON(2)  1
  144 00170 D4              NIBASC  \M\
  145               * VC PA & M avail. as outputs
  146               * File  ASPDMNU.s       38
  147 00172 00000           CON(5)  =DOLIST
  148 00177 00000           CON(5)  =DOCSTR
  149 0017C B0000           CON(5)  11
  150 00181 451445          NIBASC  \TAT\
  151 00187 00000           CON(5)  =DOCOL
  152               * Input TAT
  153               * File  ASPDMNU.s       39
  154 0018C 00000           CON(5)  =CK1&Dispatch
  155               * Must have 1 argument
  156               * File  ASPDMNU.s       40
  157 00191 00000           CON(5)  =real
  158 00196 00000           CON(5)  =DOCOL
  159               * Real number
  160               * File  ASPDMNU.s       41
  161 0019B 00000           CON(5)  =DOCSTR
  162 001A0 90000           CON(5)  9
  163 001A5 0B              CON(2)  #B0
  164 001A7 34              NIBASC  \C\
  165 001A9 00000           CON(5)  =umEND
  166 001AE 00000           CON(5)  =THREE
  167 001B3 00000           CON(5)  =EXTN
  168               * Add default deg C units
  169               * File  ASPDMNU.s       42
  170 001B8 00000           CON(5)  =DUP
  171               * File  ASPDMNU.s       43
  172 001BD 00000           CON(5)  ='
  173 001C2 00000           CON(5)  =DOIDNT
  174 001C7 20              CON(2)  2
  175 001C9 4523            NIBASC  \T2\
  176 001CD 00000           CON(5)  =STO
  177               * STO in GLOBAL var T2
  178               * File  ASPDMNU.s       44
  179 001D2 00000           CON(5)  =DOCSTR
  180 001D7 B0000           CON(5)  11
  181 001DC 451445          NIBASC  \TAT\
  182 001E2 00000           CON(5)  =>TAG
  183               * TAG
  184               * File  ASPDMNU.s       45
  185 001E7 00000           CON(5)  =DOIDNT
  186 001EC 10              CON(2)  1
  187 001EE D4              NIBASC  \M\
  188 001F0 00000           CON(5)  =DOIDNT
  189 001F5 20              CON(2)  2
  190 001F7 4523            NIBASC  \T2\
  191 001FB 00000           CON(5)  =DOROMP
  192 00200 000000          CON(6)  =~CSAT
  193               * Calc. SAT
  194               * File  ASPDMNU.s       46
  195 00206 00000           CON(5)  =DUP
  196               * File  ASPDMNU.s       47
  197 0020B 00000           CON(5)  ='
  198 00210 00000           CON(5)  =DOIDNT
  199 00215 20              CON(2)  2
  200 00217 4513            NIBASC  \T1\
  201 0021B 00000           CON(5)  =STO
  202               * STO SAT in GLOBAL var T1
  203               * File  ASPDMNU.s       48
  204 00220 00000           CON(5)  =DOCSTR
  205 00225 B0000           CON(5)  11
  206 0022A 351445          NIBASC  \SAT\
  207 00230 00000           CON(5)  =>TAG
  208               * File  ASPDMNU.s       49
  209 00235 00000           CON(5)  =DOIDNT
  210 0023A 10              CON(2)  1
  211 0023C D4              NIBASC  \M\
  212 0023E 00000           CON(5)  =DOIDNT
  213 00243 20              CON(2)  2
  214 00245 4513            NIBASC  \T1\
  215 00249 00000           CON(5)  =DOROMP
  216 0024E 000000          CON(6)  =~TASMS
  217               * Calc. TAS from Mach no. &
  218               * File  ASPDMNU.s       50
  219 00254 00000           CON(5)  =DUP
  220               * SAT
  221               * File  ASPDMNU.s       51
  222 00259 00000           CON(5)  ='
  223 0025E 00000           CON(5)  =DOIDNT
  224 00263 20              CON(2)  2
  225 00265 6513            NIBASC  \V1\
  226 00269 00000           CON(5)  =STO
  227               * STO TAS in GLOBAL var V1
  228               * File  ASPDMNU.s       52
  229 0026E 00000           CON(5)  =DOCSTR
  230 00273 B0000           CON(5)  11
  231 00278 451435          NIBASC  \TAS\
  232 0027E 00000           CON(5)  =>TAG
  233               * TAG
  234               * File  ASPDMNU.s       53
  235 00283 00000           CON(5)  =DOLIST
  236 00288 00000           CON(5)  =DOIDNT
  237 0028D 20              CON(2)  2
  238 0028F 6534            NIBASC  \VC\
  239 00293 00000           CON(5)  =DOIDNT
  240 00298 20              CON(2)  2
  241 0029A 0514            NIBASC  \PA\
  242 0029E 00000           CON(5)  =DOIDNT
  243 002A3 10              CON(2)  1
  244 002A5 D4              NIBASC  \M\
  245 002A7 00000           CON(5)  =DOIDNT
  246 002AC 20              CON(2)  2
  247 002AE 4523            NIBASC  \T2\
  248 002B2 00000           CON(5)  =DOIDNT
  249 002B7 20              CON(2)  2
  250 002B9 4513            NIBASC  \T1\
  251 002BD 00000           CON(5)  =DOIDNT
  252 002C2 20              CON(2)  2
  253 002C4 6513            NIBASC  \V1\
  254               * New CST menu
  255               * File  ASPDMNU.s       54
  256 002C8 00000           CON(5)  =DOLIST
  257 002CD 00000           CON(5)  =DOCSTR
  258 002D2 B0000           CON(5)  11
  259 002D7 E45475          NIBASC  \NEW\
  260 002DD 00000           CON(5)  =DOCOL
  261 002E2 00000           CON(5)  =DOROMP
  262 002E7 000000          CON(6)  =~xASPDMNU
  263 002ED 00000           CON(5)  =SEMI
  264 002F2 00000           CON(5)  =SEMI
  265               * File  ASPDMNU.s       55
  266 002F7 00000           CON(5)  =SEMI
  267 002FC 00000           CON(5)  =xMENU
  268               * File  ASPDMNU.s       56
  269 00301 00000           CON(5)  =SEMI
  270               * File  ASPDMNU.s       57
  271 00306 00000           CON(5)  =SEMI
  272 0030B 00000           CON(5)  =SEMI
  273               * File  ASPDMNU.s       58
  274 00310 00000           CON(5)  =DOLIST
  275 00315 00000           CON(5)  =DOCSTR
  276 0031A B0000           CON(5)  11
  277 0031F 351445          NIBASC  \SAT\
  278 00325 00000           CON(5)  =DOCOL
  279               * Input SAT
  280               * File  ASPDMNU.s       59
  281 0032A 00000           CON(5)  =CK1&Dispatch
  282               * Must have 1 argument
  283               * File  ASPDMNU.s       60
  284 0032F 00000           CON(5)  =real
  285 00334 00000           CON(5)  =DOCOL
  286               * Real number
  287               * File  ASPDMNU.s       61
  288 00339 00000           CON(5)  =DOCSTR
  289 0033E 90000           CON(5)  9
  290 00343 0B              CON(2)  #B0
  291 00345 34              NIBASC  \C\
  292 00347 00000           CON(5)  =umEND
  293 0034C 00000           CON(5)  =THREE
  294 00351 00000           CON(5)  =EXTN
  295               * Add default deg C units
  296               * File  ASPDMNU.s       62
  297 00356 00000           CON(5)  =DUP
  298               * File  ASPDMNU.s       63
  299 0035B 00000           CON(5)  ='
  300 00360 00000           CON(5)  =DOIDNT
  301 00365 20              CON(2)  2
  302 00367 4513            NIBASC  \T1\
  303 0036B 00000           CON(5)  =STO
  304               * STO in GLOBAL var T1
  305               * File  ASPDMNU.s       64
  306 00370 00000           CON(5)  =DOCSTR
  307 00375 B0000           CON(5)  11
  308 0037A 351445          NIBASC  \SAT\
  309 00380 00000           CON(5)  =>TAG
  310               * TAG
  311               * File  ASPDMNU.s       65
  312 00385 00000           CON(5)  =DOIDNT
  313 0038A 10              CON(2)  1
  314 0038C D4              NIBASC  \M\
  315 0038E 00000           CON(5)  =DOIDNT
  316 00393 20              CON(2)  2
  317 00395 4513            NIBASC  \T1\
  318 00399 00000           CON(5)  =DOROMP
  319 0039E 000000          CON(6)  =~CTAT
  320               * Calc. SAT
  321               * File  ASPDMNU.s       66
  322 003A4 00000           CON(5)  =DUP
  323               * File  ASPDMNU.s       67
  324 003A9 00000           CON(5)  ='
  325 003AE 00000           CON(5)  =DOIDNT
  326 003B3 20              CON(2)  2
  327 003B5 4523            NIBASC  \T2\
  328 003B9 00000           CON(5)  =STO
  329               * File  ASPDMNU.s       68
  330 003BE 00000           CON(5)  =DOCSTR
  331 003C3 B0000           CON(5)  11
  332 003C8 451445          NIBASC  \TAT\
  333 003CE 00000           CON(5)  =>TAG
  334               * File  ASPDMNU.s       69
  335 003D3 00000           CON(5)  =DOIDNT
  336 003D8 10              CON(2)  1
  337 003DA D4              NIBASC  \M\
  338 003DC 00000           CON(5)  =DOIDNT
  339 003E1 20              CON(2)  2
  340 003E3 4513            NIBASC  \T1\
  341 003E7 00000           CON(5)  =DOROMP
  342 003EC 000000          CON(6)  =~TASMS
  343               * File  ASPDMNU.s       70
  344 003F2 00000           CON(5)  =DUP
  345               * File  ASPDMNU.s       71
  346 003F7 00000           CON(5)  ='
  347 003FC 00000           CON(5)  =DOIDNT
  348 00401 20              CON(2)  2
  349 00403 6513            NIBASC  \V1\
  350 00407 00000           CON(5)  =STO
  351               * File  ASPDMNU.s       72
  352 0040C 00000           CON(5)  =DOCSTR
  353 00411 B0000           CON(5)  11
  354 00416 451435          NIBASC  \TAS\
  355 0041C 00000           CON(5)  =>TAG
  356               * File  ASPDMNU.s       73
  357 00421 00000           CON(5)  =DOLIST
  358 00426 00000           CON(5)  =DOIDNT
  359 0042B 20              CON(2)  2
  360 0042D 6534            NIBASC  \VC\
  361 00431 00000           CON(5)  =DOIDNT
  362 00436 20              CON(2)  2
  363 00438 0514            NIBASC  \PA\
  364 0043C 00000           CON(5)  =DOIDNT
  365 00441 10              CON(2)  1
  366 00443 D4              NIBASC  \M\
  367 00445 00000           CON(5)  =DOIDNT
  368 0044A 20              CON(2)  2
  369 0044C 4523            NIBASC  \T2\
  370 00450 00000           CON(5)  =DOIDNT
  371 00455 20              CON(2)  2
  372 00457 4513            NIBASC  \T1\
  373 0045B 00000           CON(5)  =DOIDNT
  374 00460 20              CON(2)  2
  375 00462 6513            NIBASC  \V1\
  376               * New CST menu
  377               * File  ASPDMNU.s       74
  378 00466 00000           CON(5)  =DOLIST
  379 0046B 00000           CON(5)  =DOCSTR
  380 00470 B0000           CON(5)  11
  381 00475 E45475          NIBASC  \NEW\
  382 0047B 00000           CON(5)  =DOCOL
  383 00480 00000           CON(5)  =DOROMP
  384 00485 000000          CON(6)  =~xASPDMNU
  385 0048B 00000           CON(5)  =SEMI
  386 00490 00000           CON(5)  =SEMI
  387               * File  ASPDMNU.s       75
  388 00495 00000           CON(5)  =SEMI
  389 0049A 00000           CON(5)  =xMENU
  390               * File  ASPDMNU.s       76
  391 0049F 00000           CON(5)  =SEMI
  392               * File  ASPDMNU.s       77
  393 004A4 00000           CON(5)  =SEMI
  394 004A9 00000           CON(5)  =SEMI
  395               * File  ASPDMNU.s       78
  396 004AE 00000           CON(5)  =DOLIST
  397 004B3 00000           CON(5)  =DOCSTR
  398 004B8 B0000           CON(5)  11
  399 004BD E45475          NIBASC  \NEW\
  400 004C3 00000           CON(5)  =DOCOL
  401 004C8 00000           CON(5)  =DOROMP
  402 004CD 000000          CON(6)  =~xASPDMNU
  403 004D3 00000           CON(5)  =SEMI
  404 004D8 00000           CON(5)  =SEMI
  405               * Start new problem
  406               * File  ASPDMNU.s       79
  407 004DD 00000           CON(5)  =SEMI
  408 004E2 00000           CON(5)  =xMENU
  409               * File  ASPDMNU.s       80
  410 004E7 00000           CON(5)  =SEMI
  411               * File  ASPDMNU.s       81
  412 004EC 00000           CON(5)  =SEMI
  413 004F1 00000           CON(5)  =SEMI
  414               * File  ASPDMNU.s       82
  415 004F6 00000           CON(5)  =DOLIST
  416 004FB 00000           CON(5)  =DOCSTR
  417 00500 D0000           CON(5)  13
  418 00505 D414348         NIBASC  \MACH\
            4
  419 0050D 00000           CON(5)  =DOCOL
  420               * Input Mach number
  421               * File  ASPDMNU.s       83
  422 00512 00000           CON(5)  =CK1&Dispatch
  423               * Must have 1 argument
  424               * File  ASPDMNU.s       84
  425 00517 00000           CON(5)  =real
  426 0051C 00000           CON(5)  =DOCOL
  427               * Real number
  428               * File  ASPDMNU.s       85
  429 00521 00000           CON(5)  =DUP
  430               * File  ASPDMNU.s       86
  431 00526 00000           CON(5)  ='
  432 0052B 00000           CON(5)  =DOIDNT
  433 00530 10              CON(2)  1
  434 00532 D4              NIBASC  \M\
  435 00534 00000           CON(5)  =STO
  436               * STO in GLOBAL var M
  437               * File  ASPDMNU.s       87
  438 00539 00000           CON(5)  =DOCSTR
  439 0053E D0000           CON(5)  13
  440 00543 D414348         NIBASC  \MACH\
            4
  441 0054B 00000           CON(5)  =>TAG
  442               * TAG
  443               * File  ASPDMNU.s       88
  444 00550 00000           CON(5)  =DOLIST
  445 00555 00000           CON(5)  =DOLIST
  446 0055A 00000           CON(5)  =SEMI
  447 0055F 00000           CON(5)  =DOLIST
  448 00564 00000           CON(5)  =SEMI
  449 00569 00000           CON(5)  =DOIDNT
  450 0056E 10              CON(2)  1
  451 00570 D4              NIBASC  \M\
  452               * File  ASPDMNU.s       89
  453 00572 00000           CON(5)  =DOLIST
  454 00577 00000           CON(5)  =DOCSTR
  455 0057C B0000           CON(5)  11
  456 00581 451445          NIBASC  \TAT\
  457 00587 00000           CON(5)  =DOCOL
  458               * File  ASPDMNU.s       90
  459 0058C 00000           CON(5)  =CK1&Dispatch
  460               * File  ASPDMNU.s       91
  461 00591 00000           CON(5)  =real
  462 00596 00000           CON(5)  =DOCOL
  463               * File  ASPDMNU.s       92
  464 0059B 00000           CON(5)  =DOCSTR
  465 005A0 90000           CON(5)  9
  466 005A5 0B              CON(2)  #B0
  467 005A7 34              NIBASC  \C\
  468 005A9 00000           CON(5)  =umEND
  469               * File  ASPDMNU.s       93
  470 005AE 00000           CON(5)  =THREE
  471 005B3 00000           CON(5)  =EXTN
  472               * File  ASPDMNU.s       94
  473 005B8 00000           CON(5)  =DUP
  474               * File  ASPDMNU.s       95
  475 005BD 00000           CON(5)  ='
  476 005C2 00000           CON(5)  =DOIDNT
  477 005C7 20              CON(2)  2
  478 005C9 4523            NIBASC  \T2\
  479 005CD 00000           CON(5)  =STO
  480               * File  ASPDMNU.s       96
  481 005D2 00000           CON(5)  =DOCSTR
  482 005D7 B0000           CON(5)  11
  483 005DC 451445          NIBASC  \TAT\
  484 005E2 00000           CON(5)  =>TAG
  485               * File  ASPDMNU.s       97
  486 005E7 00000           CON(5)  =DOLIST
  487               * File  ASPDMNU.s       98
  488 005EC 00000           CON(5)  =DOLIST
  489 005F1 00000           CON(5)  =DOCSTR
  490 005F6 B0000           CON(5)  11
  491 005FB E45475          NIBASC  \NEW\
  492 00601 00000           CON(5)  =DOCOL
  493 00606 00000           CON(5)  =DOROMP
  494 0060B 000000          CON(6)  =~xASPDMNU
  495 00611 00000           CON(5)  =SEMI
  496 00616 00000           CON(5)  =SEMI
  497               * File  ASPDMNU.s       99
  498 0061B 00000           CON(5)  =DOLIST
  499 00620 00000           CON(5)  =SEMI
  500 00625 00000           CON(5)  =DOIDNT
  501 0062A 10              CON(2)  1
  502 0062C D4              NIBASC  \M\
  503 0062E 00000           CON(5)  =DOIDNT
  504 00633 20              CON(2)  2
  505 00635 4523            NIBASC  \T2\
  506 00639 00000           CON(5)  =DOIDNT
  507 0063E 20              CON(2)  2
  508 00640 4513            NIBASC  \T1\
  509 00644 00000           CON(5)  =DOIDNT
  510 00649 20              CON(2)  2
  511 0064B 6513            NIBASC  \V1\
  512               * File  ASPDMNU.s       100
  513 0064F 00000           CON(5)  =SEMI
  514 00654 00000           CON(5)  =xMENU
  515               * File  ASPDMNU.s       101
  516 00659 00000           CON(5)  =SEMI
  517               * File  ASPDMNU.s       102
  518 0065E 00000           CON(5)  =SEMI
  519 00663 00000           CON(5)  =SEMI
  520               * File  ASPDMNU.s       103
  521 00668 00000           CON(5)  =DOLIST
  522 0066D 00000           CON(5)  =DOCSTR
  523 00672 B0000           CON(5)  11
  524 00677 351445          NIBASC  \SAT\
  525 0067D 00000           CON(5)  =DOCOL
  526               * File  ASPDMNU.s       104
  527 00682 00000           CON(5)  =CK1&Dispatch
  528               * File  ASPDMNU.s       105
  529 00687 00000           CON(5)  =real
  530 0068C 00000           CON(5)  =DOCOL
  531               * File  ASPDMNU.s       106
  532 00691 00000           CON(5)  =DOCSTR
  533 00696 90000           CON(5)  9
  534 0069B 0B              CON(2)  #B0
  535 0069D 34              NIBASC  \C\
  536 0069F 00000           CON(5)  =umEND
  537               * File  ASPDMNU.s       107
  538 006A4 00000           CON(5)  =THREE
  539 006A9 00000           CON(5)  =EXTN
  540               * File  ASPDMNU.s       108
  541 006AE 00000           CON(5)  =DUP
  542               * File  ASPDMNU.s       109
  543 006B3 00000           CON(5)  ='
  544 006B8 00000           CON(5)  =DOIDNT
  545 006BD 20              CON(2)  2
  546 006BF 4513            NIBASC  \T1\
  547 006C3 00000           CON(5)  =STO
  548               * File  ASPDMNU.s       110
  549 006C8 00000           CON(5)  =DOCSTR
  550 006CD B0000           CON(5)  11
  551 006D2 351445          NIBASC  \SAT\
  552 006D8 00000           CON(5)  =>TAG
  553               * File  ASPDMNU.s       111
  554 006DD 00000           CON(5)  =DOLIST
  555               * File  ASPDMNU.s       112
  556 006E2 00000           CON(5)  =DOLIST
  557 006E7 00000           CON(5)  =DOCSTR
  558 006EC B0000           CON(5)  11
  559 006F1 E45475          NIBASC  \NEW\
  560 006F7 00000           CON(5)  =DOCOL
  561 006FC 00000           CON(5)  =DOROMP
  562 00701 000000          CON(6)  =~xASPDMNU
  563 00707 00000           CON(5)  =SEMI
  564 0070C 00000           CON(5)  =SEMI
  565               * File  ASPDMNU.s       113
  566 00711 00000           CON(5)  =DOLIST
  567 00716 00000           CON(5)  =SEMI
  568 0071B 00000           CON(5)  =DOIDNT
  569 00720 10              CON(2)  1
  570 00722 D4              NIBASC  \M\
  571 00724 00000           CON(5)  =DOIDNT
  572 00729 20              CON(2)  2
  573 0072B 4523            NIBASC  \T2\
  574 0072F 00000           CON(5)  =DOIDNT
  575 00734 20              CON(2)  2
  576 00736 4513            NIBASC  \T1\
  577 0073A 00000           CON(5)  =DOIDNT
  578 0073F 20              CON(2)  2
  579 00741 6513            NIBASC  \V1\
  580               * File  ASPDMNU.s       114
  581 00745 00000           CON(5)  =SEMI
  582 0074A 00000           CON(5)  =xMENU
  583               * File  ASPDMNU.s       115
  584 0074F 00000           CON(5)  =SEMI
  585               * File  ASPDMNU.s       116
  586 00754 00000           CON(5)  =SEMI
  587 00759 00000           CON(5)  =SEMI
  588               * File  ASPDMNU.s       117
  589 0075E 00000           CON(5)  =DOLIST
  590 00763 00000           CON(5)  =DOCSTR
  591 00768 B0000           CON(5)  11
  592 0076D E45475          NIBASC  \NEW\
  593 00773 00000           CON(5)  =DOCOL
  594 00778 00000           CON(5)  =DOROMP
  595 0077D 000000          CON(6)  =~xASPDMNU
  596 00783 00000           CON(5)  =SEMI
  597 00788 00000           CON(5)  =SEMI
  598               * File  ASPDMNU.s       118
  599 0078D 00000           CON(5)  =SEMI
  600 00792 00000           CON(5)  =xMENU
  601               * File  ASPDMNU.s       119
  602 00797 00000           CON(5)  =SEMI
  603               * File  ASPDMNU.s       120
  604 0079C 00000           CON(5)  =SEMI
  605 007A1 00000           CON(5)  =SEMI
  606               * File  ASPDMNU.s       121
  607 007A6 00000           CON(5)  =DOLIST
  608 007AB 00000           CON(5)  =SEMI
  609               * File  ASPDMNU.s       122
  610 007B0 00000           CON(5)  =DOLIST
  611 007B5 00000           CON(5)  =DOCSTR
  612 007BA B0000           CON(5)  11
  613 007BF 745594          NIBASC  \GUI\
  614 007C5 00000           CON(5)  =DOCOL
  615 007CA 00000           CON(5)  =DOROMP
  616 007CF 000000          CON(6)  =~xASPDFRM
  617 007D5 00000           CON(5)  =SEMI
  618 007DA 00000           CON(5)  =SEMI
  619               * Run GUI
  620               * File  ASPDMNU.s       123
  621 007DF 00000           CON(5)  =DOLIST
  622 007E4 00000           CON(5)  =DOCSTR
  623 007E9 F0000           CON(5)  15
  624 007EE 14E4355         NIBASC  \ANSER\
            425
  625 007F8 00000           CON(5)  =DOCOL
  626               * Display solutions CST menu
  627               * File  ASPDMNU.s       124
  628 007FD 00000           CON(5)  =DOLIST
  629 00802 00000           CON(5)  =DOIDNT
  630 00807 20              CON(2)  2
  631 00809 6534            NIBASC  \VC\
  632 0080D 00000           CON(5)  =DOIDNT
  633 00812 20              CON(2)  2
  634 00814 0514            NIBASC  \PA\
  635 00818 00000           CON(5)  =DOIDNT
  636 0081D 10              CON(2)  1
  637 0081F D4              NIBASC  \M\
  638 00821 00000           CON(5)  =DOIDNT
  639 00826 20              CON(2)  2
  640 00828 4523            NIBASC  \T2\
  641 0082C 00000           CON(5)  =DOIDNT
  642 00831 20              CON(2)  2
  643 00833 6513            NIBASC  \V1\
  644               * File  ASPDMNU.s       125
  645 00837 00000           CON(5)  =DOLIST
  646 0083C 00000           CON(5)  =DOCSTR
  647 00841 B0000           CON(5)  11
  648 00846 E45475          NIBASC  \NEW\
  649 0084C 00000           CON(5)  =DOCOL
  650 00851 00000           CON(5)  =DOROMP
  651 00856 000000          CON(6)  =~xASPDMNU
  652 0085C 00000           CON(5)  =SEMI
  653 00861 00000           CON(5)  =SEMI
  654               * File  ASPDMNU.s       126
  655 00866 00000           CON(5)  =SEMI
  656 0086B 00000           CON(5)  =xMENU
  657               * File  ASPDMNU.s       127
  658 00870 00000           CON(5)  =SEMI
  659 00875 00000           CON(5)  =SEMI
  660               * File  ASPDMNU.s       128
  661 0087A 00000           CON(5)  =SEMI
  662               * File  ASPDMNU.s       129
  663 0087F 00000           CON(5)  =xMENU
  664               * File  ASPDMNU.s       130
  665 00884 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Symbol Table                       ASPDMNU.a      Page    2

 '                                 Ext                   -    63   105   172
                                         197   222   299   324   346   431   475
                                         543
 >TAG                              Ext                   -    73   115   132
                                         182   207   232   309   333   355   441
                                         484   552
 CK0                               Ext                   -    34
 CK1&Dispatch                      Ext                   -    46    88   154
                                         281   422   459   527
 DOCOL                             Ext                   -    32    43    50
                                          85    92   151   158   260   278   285
                                         382   400   419   426   457   462   492
                                         525   530   560   593   614   625   649
 DOCSTR                            Ext                   -    40    53    70
                                          82    95   112   129   148   161   179
                                         204   229   257   275   288   306   330
                                         352   379   397   416   438   454   464
                                         481   489   522   532   549   557   590
                                         611   622   646
 DOIDNT                            Ext                   -    64   106   118
                                         121   136   139   142   173   185   188
                                         198   209   212   223   236   239   242
                                         245   248   251   300   312   315   325
                                         335   338   347   358   361   364   367
                                         370   373   432   449   476   500   503
                                         506   509   544   568   571   574   577
                                         629   632   635   638   641
 DOLIST                            Ext                   -    37    39    81
                                         135   147   235   256   274   357   378
                                         396   415   444   445   447   453   486
                                         488   498   521   554   556   566   589
                                         607   610   621   628   645
 DOROMP                            Ext                   -   125   191   215
                                         261   318   341   383   401   493   561
                                         594   615   650
 DUP                               Ext                   -    61   103   170
                                         195   219   297   322   344   429   473
                                         541
 EXTN                              Ext                   -    58   100   167
                                         294   471   539
=RomId                             Abs     808 #00000328 -    18
 SEMI                              Ext                   -    76    78    79
                                         263   264   266   269   271   272   385
                                         386   388   391   393   394   403   404
                                         407   410   412   413   446   448   495
                                         496   499   513   516   518   519   563
                                         564   567   581   584   586   587   596
                                         597   599   602   604   605   608   617
                                         618   652   653   655   658   659   661
                                         665
 STO                               Ext                   -    67   109   176
                                         201   226   303   328   350   435   479
                                         547
 THREE                             Ext                   -    57    99   166
                                         293   470   538
 real                              Ext                   -    49    91   157
                                         284   425   461   529
 umEND                             Ext                   -    56    98   165
                                         292   468   536
=xASPDMNU                          Rel       6 #00000006 -    30
 xMENU                             Ext                   -   267   389   408
                                         514   582   600   656   663
 ~CMACH                            Ext                   -   126
 ~CSAT                             Ext                   -   192
 ~CTAT                             Ext                   -   319
 ~TASMS                            Ext                   -   216   342
 ~xASPDFRM                         Ext                   -   616
 ~xASPDMNU                         Ext                   -    29   262   384
                                         402   494   562   595   651
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Statistics                         ASPDMNU.a      Page    3

Input Parameters

  Source file name is ASPDMNU.a

  Listing file name is ASPDMNU.l

  Object file name is ASPDMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
