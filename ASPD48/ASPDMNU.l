Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)                                      ASPDMNU.a      Page    1

    1             * File  ASPDMNU.s       1
    2             * RPL
    3             * File  ASPDMNU.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDMNU.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5             **********************************************************************
    6             * NAME:            ASPDMNU
    7             * LIBRARY #:       328h = 808d
    8             * AUTHOR:          Dan Pitic
    9             * VERSION:         1.34
   10             * DATE:            19 June 2009
   11             * COMPATIBILITY:   HP50, HP48
   12             * DESCRIPTION:     Generates the CST menu system to solve for true
   13             *                  airspeed or start the GUI
   14             *
   15             * File  ASPDMNU.s       13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD48\ASPD48.h
   17
   18             =RomId  EQU     #328
   19             * ROMID set to 328
   20
   21
   22
   23
   24
   25
   26
   27
   28
   29             *|| Resuming file ASPDMNU.s at line 13
   30 00000 00000         CON(6)  =~xASPDMNU
            0
   31 00006       =xASPDMNU
   32             * File  ASPDMNU.s       15
   33 00006 00000         CON(5)  =DOCOL
   34             * File  ASPDMNU.s       16
   35 0000B 00000         CON(5)  =CK0
   36             * No arguments
   37             * File  ASPDMNU.s       17
   38 00010 00000         CON(5)  =DOLIST
   39             * File  ASPDMNU.s       18
   40 00015 00000         CON(5)  =DOLIST
   41 0001A 00000         CON(5)  =DOCSTR
   42 0001F B0000         CON(5)  11
   43 00024 34143         NIBASC  \CAS\
            5
   44 0002A 00000         CON(5)  =DOCOL
   45             * Input calibrated airspeed
   46             * File  ASPDMNU.s       19
   47 0002F 00000         CON(5)  =CK1&Dispatch
   48             * Must have 1 argument
   49             * File  ASPDMNU.s       20
   50 00034 00000         CON(5)  =real
   51 00039 00000         CON(5)  =DOCOL
   52             * Real number
   53             * File  ASPDMNU.s       21
   54 0003E 00000         CON(5)  =DOCSTR
   55 00043 D0000         CON(5)  13
   56 00048 B6E6F         NIBASC  \knot\
            647
   57 00050 00000         CON(5)  =umEND
   58 00055 00000         CON(5)  =THREE
   59 0005A 00000         CON(5)  =EXTN
   60             * Add default knot units
   61             * File  ASPDMNU.s       22
   62 0005F 00000         CON(5)  =DUP
   63             * File  ASPDMNU.s       23
   64 00064 00000         CON(5)  ='
   65 00069 00000         CON(5)  =DOIDNT
   66 0006E 20            CON(2)  2
   67 00070 6534          NIBASC  \VC\
   68 00074 00000         CON(5)  =STO
   69             * STO in GLOBAL var VC
   70             * File  ASPDMNU.s       24
   71 00079 00000         CON(5)  =DOCSTR
   72 0007E B0000         CON(5)  11
   73 00083 34143         NIBASC  \CAS\
            5
   74 00089 00000         CON(5)  =>TAG
   75             * TAG
   76             * File  ASPDMNU.s       25
   77 0008E 00000         CON(5)  =SEMI
   78             * File  ASPDMNU.s       26
   79 00093 00000         CON(5)  =SEMI
   80 00098 00000         CON(5)  =SEMI
   81             * File  ASPDMNU.s       27
   82 0009D 00000         CON(5)  =DOLIST
   83 000A2 00000         CON(5)  =DOCSTR
   84 000A7 D0000         CON(5)  13
   85 000AC 0514C         NIBASC  \PALT\
            445
   86 000B4 00000         CON(5)  =DOCOL
   87             * Input pressure altitude
   88             * File  ASPDMNU.s       28
   89 000B9 00000         CON(5)  =CK1&Dispatch
   90             * Must have 1 argument
   91             * File  ASPDMNU.s       29
   92 000BE 00000         CON(5)  =real
   93 000C3 00000         CON(5)  =DOCOL
   94             * Real number
   95             * File  ASPDMNU.s       30
   96 000C8 00000         CON(5)  =DOCSTR
   97 000CD 90000         CON(5)  9
   98 000D2 6647          NIBASC  \ft\
   99 000D6 00000         CON(5)  =umEND
  100 000DB 00000         CON(5)  =THREE
  101 000E0 00000         CON(5)  =EXTN
  102             * Add default feet units
  103             * File  ASPDMNU.s       31
  104 000E5 00000         CON(5)  =DUP
  105             * File  ASPDMNU.s       32
  106 000EA 00000         CON(5)  ='
  107 000EF 00000         CON(5)  =DOIDNT
  108 000F4 20            CON(2)  2
  109 000F6 0514          NIBASC  \PA\
  110 000FA 00000         CON(5)  =STO
  111             * STO in GLOBAL var PA
  112             * File  ASPDMNU.s       33
  113 000FF 00000         CON(5)  =DOCSTR
  114 00104 D0000         CON(5)  13
  115 00109 0514C         NIBASC  \PALT\
            445
  116 00111 00000         CON(5)  =>TAG
  117             * TAG
  118             * File  ASPDMNU.s       34
  119 00116 00000         CON(5)  =DOIDNT
  120 0011B 20            CON(2)  2
  121 0011D 6534          NIBASC  \VC\
  122 00121 00000         CON(5)  =DOIDNT
  123 00126 20            CON(2)  2
  124 00128 0514          NIBASC  \PA\
  125             * File  ASPDMNU.s       35
  126 0012C 00000         CON(5)  =DOROMP
  127 00131 00000         CON(6)  =~CMACH
            0
  128             * Calc. Mach number and
  129             * File  ASPDMNU.s       36
  130 00137 00000         CON(5)  =DOCSTR
  131 0013C D0000         CON(5)  13
  132 00141 D4143         NIBASC  \MACH\
            484
  133 00149 00000         CON(5)  =>TAG
  134             * TAG
  135             * File  ASPDMNU.s       37
  136 0014E 00000         CON(5)  =DOLIST
  137 00153 00000         CON(5)  =DOIDNT
  138 00158 20            CON(2)  2
  139 0015A 6534          NIBASC  \VC\
  140 0015E 00000         CON(5)  =DOIDNT
  141 00163 20            CON(2)  2
  142 00165 0514          NIBASC  \PA\
  143 00169 00000         CON(5)  =DOIDNT
  144 0016E 10            CON(2)  1
  145 00170 D4            NIBASC  \M\
  146             * VC PA & M avail. as outputs
  147             * File  ASPDMNU.s       38
  148 00172 00000         CON(5)  =DOLIST
  149 00177 00000         CON(5)  =DOCSTR
  150 0017C B0000         CON(5)  11
  151 00181 45144         NIBASC  \TAT\
            5
  152 00187 00000         CON(5)  =DOCOL
  153             * Input TAT
  154             * File  ASPDMNU.s       39
  155 0018C 00000         CON(5)  =CK1&Dispatch
  156             * Must have 1 argument
  157             * File  ASPDMNU.s       40
  158 00191 00000         CON(5)  =real
  159 00196 00000         CON(5)  =DOCOL
  160             * Real number
  161             * File  ASPDMNU.s       41
  162 0019B 00000         CON(5)  =DOCSTR
  163 001A0 90000         CON(5)  9
  164 001A5 0B            CON(2)  #B0
  165 001A7 34            NIBASC  \C\
  166 001A9 00000         CON(5)  =umEND
  167 001AE 00000         CON(5)  =THREE
  168 001B3 00000         CON(5)  =EXTN
  169             * Add default deg C units
  170             * File  ASPDMNU.s       42
  171 001B8 00000         CON(5)  =DUP
  172             * File  ASPDMNU.s       43
  173 001BD 00000         CON(5)  ='
  174 001C2 00000         CON(5)  =DOIDNT
  175 001C7 20            CON(2)  2
  176 001C9 4523          NIBASC  \T2\
  177 001CD 00000         CON(5)  =STO
  178             * STO in GLOBAL var T2
  179             * File  ASPDMNU.s       44
  180 001D2 00000         CON(5)  =DOCSTR
  181 001D7 B0000         CON(5)  11
  182 001DC 45144         NIBASC  \TAT\
            5
  183 001E2 00000         CON(5)  =>TAG
  184             * TAG
  185             * File  ASPDMNU.s       45
  186 001E7 00000         CON(5)  =DOIDNT
  187 001EC 10            CON(2)  1
  188 001EE D4            NIBASC  \M\
  189 001F0 00000         CON(5)  =DOIDNT
  190 001F5 20            CON(2)  2
  191 001F7 4523          NIBASC  \T2\
  192 001FB 00000         CON(5)  =DOROMP
  193 00200 00000         CON(6)  =~CSAT
            0
  194             * Calc. SAT
  195             * File  ASPDMNU.s       46
  196 00206 00000         CON(5)  =DUP
  197             * File  ASPDMNU.s       47
  198 0020B 00000         CON(5)  ='
  199 00210 00000         CON(5)  =DOIDNT
  200 00215 20            CON(2)  2
  201 00217 4513          NIBASC  \T1\
  202 0021B 00000         CON(5)  =STO
  203             * STO SAT in GLOBAL var T1
  204             * File  ASPDMNU.s       48
  205 00220 00000         CON(5)  =DOCSTR
  206 00225 B0000         CON(5)  11
  207 0022A 35144         NIBASC  \SAT\
            5
  208 00230 00000         CON(5)  =>TAG
  209             * File  ASPDMNU.s       49
  210 00235 00000         CON(5)  =DOIDNT
  211 0023A 10            CON(2)  1
  212 0023C D4            NIBASC  \M\
  213 0023E 00000         CON(5)  =DOIDNT
  214 00243 20            CON(2)  2
  215 00245 4513          NIBASC  \T1\
  216 00249 00000         CON(5)  =DOROMP
  217 0024E 00000         CON(6)  =~TASMS
            0
  218             * Calc. TAS from Mach no. &
  219             * File  ASPDMNU.s       50
  220 00254 00000         CON(5)  =DUP
  221             * SAT
  222             * File  ASPDMNU.s       51
  223 00259 00000         CON(5)  ='
  224 0025E 00000         CON(5)  =DOIDNT
  225 00263 20            CON(2)  2
  226 00265 6513          NIBASC  \V1\
  227 00269 00000         CON(5)  =STO
  228             * STO TAS in GLOBAL var V1
  229             * File  ASPDMNU.s       52
  230 0026E 00000         CON(5)  =DOCSTR
  231 00273 B0000         CON(5)  11
  232 00278 45143         NIBASC  \TAS\
            5
  233 0027E 00000         CON(5)  =>TAG
  234             * TAG
  235             * File  ASPDMNU.s       53
  236 00283 00000         CON(5)  =DOLIST
  237 00288 00000         CON(5)  =DOIDNT
  238 0028D 20            CON(2)  2
  239 0028F 6534          NIBASC  \VC\
  240 00293 00000         CON(5)  =DOIDNT
  241 00298 20            CON(2)  2
  242 0029A 0514          NIBASC  \PA\
  243 0029E 00000         CON(5)  =DOIDNT
  244 002A3 10            CON(2)  1
  245 002A5 D4            NIBASC  \M\
  246 002A7 00000         CON(5)  =DOIDNT
  247 002AC 20            CON(2)  2
  248 002AE 4523          NIBASC  \T2\
  249 002B2 00000         CON(5)  =DOIDNT
  250 002B7 20            CON(2)  2
  251 002B9 4513          NIBASC  \T1\
  252 002BD 00000         CON(5)  =DOIDNT
  253 002C2 20            CON(2)  2
  254 002C4 6513          NIBASC  \V1\
  255             * New CST menu
  256             * File  ASPDMNU.s       54
  257 002C8 00000         CON(5)  =DOLIST
  258 002CD 00000         CON(5)  =DOCSTR
  259 002D2 B0000         CON(5)  11
  260 002D7 E4547         NIBASC  \NEW\
            5
  261 002DD 00000         CON(5)  =DOCOL
  262 002E2 00000         CON(5)  =DOROMP
  263 002E7 00000         CON(6)  =~xASPDMNU
            0
  264 002ED 00000         CON(5)  =SEMI
  265 002F2 00000         CON(5)  =SEMI
  266             * File  ASPDMNU.s       55
  267 002F7 00000         CON(5)  =SEMI
  268 002FC 00000         CON(5)  =xMENU
  269             * File  ASPDMNU.s       56
  270 00301 00000         CON(5)  =SEMI
  271             * File  ASPDMNU.s       57
  272 00306 00000         CON(5)  =SEMI
  273 0030B 00000         CON(5)  =SEMI
  274             * File  ASPDMNU.s       58
  275 00310 00000         CON(5)  =DOLIST
  276 00315 00000         CON(5)  =DOCSTR
  277 0031A B0000         CON(5)  11
  278 0031F 35144         NIBASC  \SAT\
            5
  279 00325 00000         CON(5)  =DOCOL
  280             * Input SAT
  281             * File  ASPDMNU.s       59
  282 0032A 00000         CON(5)  =CK1&Dispatch
  283             * Must have 1 argument
  284             * File  ASPDMNU.s       60
  285 0032F 00000         CON(5)  =real
  286 00334 00000         CON(5)  =DOCOL
  287             * Real number
  288             * File  ASPDMNU.s       61
  289 00339 00000         CON(5)  =DOCSTR
  290 0033E 90000         CON(5)  9
  291 00343 0B            CON(2)  #B0
  292 00345 34            NIBASC  \C\
  293 00347 00000         CON(5)  =umEND
  294 0034C 00000         CON(5)  =THREE
  295 00351 00000         CON(5)  =EXTN
  296             * Add default deg C units
  297             * File  ASPDMNU.s       62
  298 00356 00000         CON(5)  =DUP
  299             * File  ASPDMNU.s       63
  300 0035B 00000         CON(5)  ='
  301 00360 00000         CON(5)  =DOIDNT
  302 00365 20            CON(2)  2
  303 00367 4513          NIBASC  \T1\
  304 0036B 00000         CON(5)  =STO
  305             * STO in GLOBAL var T1
  306             * File  ASPDMNU.s       64
  307 00370 00000         CON(5)  =DOCSTR
  308 00375 B0000         CON(5)  11
  309 0037A 35144         NIBASC  \SAT\
            5
  310 00380 00000         CON(5)  =>TAG
  311             * TAG
  312             * File  ASPDMNU.s       65
  313 00385 00000         CON(5)  =DOIDNT
  314 0038A 10            CON(2)  1
  315 0038C D4            NIBASC  \M\
  316 0038E 00000         CON(5)  =DOIDNT
  317 00393 20            CON(2)  2
  318 00395 4513          NIBASC  \T1\
  319 00399 00000         CON(5)  =DOROMP
  320 0039E 00000         CON(6)  =~CTAT
            0
  321             * Calc. SAT
  322             * File  ASPDMNU.s       66
  323 003A4 00000         CON(5)  =DUP
  324             * File  ASPDMNU.s       67
  325 003A9 00000         CON(5)  ='
  326 003AE 00000         CON(5)  =DOIDNT
  327 003B3 20            CON(2)  2
  328 003B5 4523          NIBASC  \T2\
  329 003B9 00000         CON(5)  =STO
  330             * File  ASPDMNU.s       68
  331 003BE 00000         CON(5)  =DOCSTR
  332 003C3 B0000         CON(5)  11
  333 003C8 45144         NIBASC  \TAT\
            5
  334 003CE 00000         CON(5)  =>TAG
  335             * File  ASPDMNU.s       69
  336 003D3 00000         CON(5)  =DOIDNT
  337 003D8 10            CON(2)  1
  338 003DA D4            NIBASC  \M\
  339 003DC 00000         CON(5)  =DOIDNT
  340 003E1 20            CON(2)  2
  341 003E3 4513          NIBASC  \T1\
  342 003E7 00000         CON(5)  =DOROMP
  343 003EC 00000         CON(6)  =~TASMS
            0
  344             * File  ASPDMNU.s       70
  345 003F2 00000         CON(5)  =DUP
  346             * File  ASPDMNU.s       71
  347 003F7 00000         CON(5)  ='
  348 003FC 00000         CON(5)  =DOIDNT
  349 00401 20            CON(2)  2
  350 00403 6513          NIBASC  \V1\
  351 00407 00000         CON(5)  =STO
  352             * File  ASPDMNU.s       72
  353 0040C 00000         CON(5)  =DOCSTR
  354 00411 B0000         CON(5)  11
  355 00416 45143         NIBASC  \TAS\
            5
  356 0041C 00000         CON(5)  =>TAG
  357             * File  ASPDMNU.s       73
  358 00421 00000         CON(5)  =DOLIST
  359 00426 00000         CON(5)  =DOIDNT
  360 0042B 20            CON(2)  2
  361 0042D 6534          NIBASC  \VC\
  362 00431 00000         CON(5)  =DOIDNT
  363 00436 20            CON(2)  2
  364 00438 0514          NIBASC  \PA\
  365 0043C 00000         CON(5)  =DOIDNT
  366 00441 10            CON(2)  1
  367 00443 D4            NIBASC  \M\
  368 00445 00000         CON(5)  =DOIDNT
  369 0044A 20            CON(2)  2
  370 0044C 4523          NIBASC  \T2\
  371 00450 00000         CON(5)  =DOIDNT
  372 00455 20            CON(2)  2
  373 00457 4513          NIBASC  \T1\
  374 0045B 00000         CON(5)  =DOIDNT
  375 00460 20            CON(2)  2
  376 00462 6513          NIBASC  \V1\
  377             * New CST menu
  378             * File  ASPDMNU.s       74
  379 00466 00000         CON(5)  =DOLIST
  380 0046B 00000         CON(5)  =DOCSTR
  381 00470 B0000         CON(5)  11
  382 00475 E4547         NIBASC  \NEW\
            5
  383 0047B 00000         CON(5)  =DOCOL
  384 00480 00000         CON(5)  =DOROMP
  385 00485 00000         CON(6)  =~xASPDMNU
            0
  386 0048B 00000         CON(5)  =SEMI
  387 00490 00000         CON(5)  =SEMI
  388             * File  ASPDMNU.s       75
  389 00495 00000         CON(5)  =SEMI
  390 0049A 00000         CON(5)  =xMENU
  391             * File  ASPDMNU.s       76
  392 0049F 00000         CON(5)  =SEMI
  393             * File  ASPDMNU.s       77
  394 004A4 00000         CON(5)  =SEMI
  395 004A9 00000         CON(5)  =SEMI
  396             * File  ASPDMNU.s       78
  397 004AE 00000         CON(5)  =DOLIST
  398 004B3 00000         CON(5)  =DOCSTR
  399 004B8 B0000         CON(5)  11
  400 004BD E4547         NIBASC  \NEW\
            5
  401 004C3 00000         CON(5)  =DOCOL
  402 004C8 00000         CON(5)  =DOROMP
  403 004CD 00000         CON(6)  =~xASPDMNU
            0
  404 004D3 00000         CON(5)  =SEMI
  405 004D8 00000         CON(5)  =SEMI
  406             * Start new problem
  407             * File  ASPDMNU.s       79
  408 004DD 00000         CON(5)  =SEMI
  409 004E2 00000         CON(5)  =xMENU
  410             * File  ASPDMNU.s       80
  411 004E7 00000         CON(5)  =SEMI
  412             * File  ASPDMNU.s       81
  413 004EC 00000         CON(5)  =SEMI
  414 004F1 00000         CON(5)  =SEMI
  415             * File  ASPDMNU.s       82
  416 004F6 00000         CON(5)  =DOLIST
  417 004FB 00000         CON(5)  =DOCSTR
  418 00500 D0000         CON(5)  13
  419 00505 D4143         NIBASC  \MACH\
            484
  420 0050D 00000         CON(5)  =DOCOL
  421             * Input Mach number
  422             * File  ASPDMNU.s       83
  423 00512 00000         CON(5)  =CK1&Dispatch
  424             * Must have 1 argument
  425             * File  ASPDMNU.s       84
  426 00517 00000         CON(5)  =real
  427 0051C 00000         CON(5)  =DOCOL
  428             * Real number
  429             * File  ASPDMNU.s       85
  430 00521 00000         CON(5)  =DUP
  431             * File  ASPDMNU.s       86
  432 00526 00000         CON(5)  ='
  433 0052B 00000         CON(5)  =DOIDNT
  434 00530 10            CON(2)  1
  435 00532 D4            NIBASC  \M\
  436 00534 00000         CON(5)  =STO
  437             * STO in GLOBAL var M
  438             * File  ASPDMNU.s       87
  439 00539 00000         CON(5)  =DOCSTR
  440 0053E D0000         CON(5)  13
  441 00543 D4143         NIBASC  \MACH\
            484
  442 0054B 00000         CON(5)  =>TAG
  443             * TAG
  444             * File  ASPDMNU.s       88
  445 00550 00000         CON(5)  =DOLIST
  446 00555 00000         CON(5)  =DOLIST
  447 0055A 00000         CON(5)  =SEMI
  448 0055F 00000         CON(5)  =DOLIST
  449 00564 00000         CON(5)  =SEMI
  450 00569 00000         CON(5)  =DOIDNT
  451 0056E 10            CON(2)  1
  452 00570 D4            NIBASC  \M\
  453             * File  ASPDMNU.s       89
  454 00572 00000         CON(5)  =DOLIST
  455 00577 00000         CON(5)  =DOCSTR
  456 0057C B0000         CON(5)  11
  457 00581 45144         NIBASC  \TAT\
            5
  458 00587 00000         CON(5)  =DOCOL
  459             * File  ASPDMNU.s       90
  460 0058C 00000         CON(5)  =CK1&Dispatch
  461             * File  ASPDMNU.s       91
  462 00591 00000         CON(5)  =real
  463 00596 00000         CON(5)  =DOCOL
  464             * File  ASPDMNU.s       92
  465 0059B 00000         CON(5)  =DOCSTR
  466 005A0 90000         CON(5)  9
  467 005A5 0B            CON(2)  #B0
  468 005A7 34            NIBASC  \C\
  469 005A9 00000         CON(5)  =umEND
  470             * File  ASPDMNU.s       93
  471 005AE 00000         CON(5)  =THREE
  472 005B3 00000         CON(5)  =EXTN
  473             * File  ASPDMNU.s       94
  474 005B8 00000         CON(5)  =DUP
  475             * File  ASPDMNU.s       95
  476 005BD 00000         CON(5)  ='
  477 005C2 00000         CON(5)  =DOIDNT
  478 005C7 20            CON(2)  2
  479 005C9 4523          NIBASC  \T2\
  480 005CD 00000         CON(5)  =STO
  481             * File  ASPDMNU.s       96
  482 005D2 00000         CON(5)  =DOCSTR
  483 005D7 B0000         CON(5)  11
  484 005DC 45144         NIBASC  \TAT\
            5
  485 005E2 00000         CON(5)  =>TAG
  486             * File  ASPDMNU.s       97
  487 005E7 00000         CON(5)  =DOLIST
  488             * File  ASPDMNU.s       98
  489 005EC 00000         CON(5)  =DOLIST
  490 005F1 00000         CON(5)  =DOCSTR
  491 005F6 B0000         CON(5)  11
  492 005FB E4547         NIBASC  \NEW\
            5
  493 00601 00000         CON(5)  =DOCOL
  494 00606 00000         CON(5)  =DOROMP
  495 0060B 00000         CON(6)  =~xASPDMNU
            0
  496 00611 00000         CON(5)  =SEMI
  497 00616 00000         CON(5)  =SEMI
  498             * File  ASPDMNU.s       99
  499 0061B 00000         CON(5)  =DOLIST
  500 00620 00000         CON(5)  =SEMI
  501 00625 00000         CON(5)  =DOIDNT
  502 0062A 10            CON(2)  1
  503 0062C D4            NIBASC  \M\
  504 0062E 00000         CON(5)  =DOIDNT
  505 00633 20            CON(2)  2
  506 00635 4523          NIBASC  \T2\
  507 00639 00000         CON(5)  =DOIDNT
  508 0063E 20            CON(2)  2
  509 00640 4513          NIBASC  \T1\
  510 00644 00000         CON(5)  =DOIDNT
  511 00649 20            CON(2)  2
  512 0064B 6513          NIBASC  \V1\
  513             * File  ASPDMNU.s       100
  514 0064F 00000         CON(5)  =SEMI
  515 00654 00000         CON(5)  =xMENU
  516             * File  ASPDMNU.s       101
  517 00659 00000         CON(5)  =SEMI
  518             * File  ASPDMNU.s       102
  519 0065E 00000         CON(5)  =SEMI
  520 00663 00000         CON(5)  =SEMI
  521             * File  ASPDMNU.s       103
  522 00668 00000         CON(5)  =DOLIST
  523 0066D 00000         CON(5)  =DOCSTR
  524 00672 B0000         CON(5)  11
  525 00677 35144         NIBASC  \SAT\
            5
  526 0067D 00000         CON(5)  =DOCOL
  527             * File  ASPDMNU.s       104
  528 00682 00000         CON(5)  =CK1&Dispatch
  529             * File  ASPDMNU.s       105
  530 00687 00000         CON(5)  =real
  531 0068C 00000         CON(5)  =DOCOL
  532             * File  ASPDMNU.s       106
  533 00691 00000         CON(5)  =DOCSTR
  534 00696 90000         CON(5)  9
  535 0069B 0B            CON(2)  #B0
  536 0069D 34            NIBASC  \C\
  537 0069F 00000         CON(5)  =umEND
  538             * File  ASPDMNU.s       107
  539 006A4 00000         CON(5)  =THREE
  540 006A9 00000         CON(5)  =EXTN
  541             * File  ASPDMNU.s       108
  542 006AE 00000         CON(5)  =DUP
  543             * File  ASPDMNU.s       109
  544 006B3 00000         CON(5)  ='
  545 006B8 00000         CON(5)  =DOIDNT
  546 006BD 20            CON(2)  2
  547 006BF 4513          NIBASC  \T1\
  548 006C3 00000         CON(5)  =STO
  549             * File  ASPDMNU.s       110
  550 006C8 00000         CON(5)  =DOCSTR
  551 006CD B0000         CON(5)  11
  552 006D2 35144         NIBASC  \SAT\
            5
  553 006D8 00000         CON(5)  =>TAG
  554             * File  ASPDMNU.s       111
  555 006DD 00000         CON(5)  =DOLIST
  556             * File  ASPDMNU.s       112
  557 006E2 00000         CON(5)  =DOLIST
  558 006E7 00000         CON(5)  =DOCSTR
  559 006EC B0000         CON(5)  11
  560 006F1 E4547         NIBASC  \NEW\
            5
  561 006F7 00000         CON(5)  =DOCOL
  562 006FC 00000         CON(5)  =DOROMP
  563 00701 00000         CON(6)  =~xASPDMNU
            0
  564 00707 00000         CON(5)  =SEMI
  565 0070C 00000         CON(5)  =SEMI
  566             * File  ASPDMNU.s       113
  567 00711 00000         CON(5)  =DOLIST
  568 00716 00000         CON(5)  =SEMI
  569 0071B 00000         CON(5)  =DOIDNT
  570 00720 10            CON(2)  1
  571 00722 D4            NIBASC  \M\
  572 00724 00000         CON(5)  =DOIDNT
  573 00729 20            CON(2)  2
  574 0072B 4523          NIBASC  \T2\
  575 0072F 00000         CON(5)  =DOIDNT
  576 00734 20            CON(2)  2
  577 00736 4513          NIBASC  \T1\
  578 0073A 00000         CON(5)  =DOIDNT
  579 0073F 20            CON(2)  2
  580 00741 6513          NIBASC  \V1\
  581             * File  ASPDMNU.s       114
  582 00745 00000         CON(5)  =SEMI
  583 0074A 00000         CON(5)  =xMENU
  584             * File  ASPDMNU.s       115
  585 0074F 00000         CON(5)  =SEMI
  586             * File  ASPDMNU.s       116
  587 00754 00000         CON(5)  =SEMI
  588 00759 00000         CON(5)  =SEMI
  589             * File  ASPDMNU.s       117
  590 0075E 00000         CON(5)  =DOLIST
  591 00763 00000         CON(5)  =DOCSTR
  592 00768 B0000         CON(5)  11
  593 0076D E4547         NIBASC  \NEW\
            5
  594 00773 00000         CON(5)  =DOCOL
  595 00778 00000         CON(5)  =DOROMP
  596 0077D 00000         CON(6)  =~xASPDMNU
            0
  597 00783 00000         CON(5)  =SEMI
  598 00788 00000         CON(5)  =SEMI
  599             * File  ASPDMNU.s       118
  600 0078D 00000         CON(5)  =SEMI
  601 00792 00000         CON(5)  =xMENU
  602             * File  ASPDMNU.s       119
  603 00797 00000         CON(5)  =SEMI
  604             * File  ASPDMNU.s       120
  605 0079C 00000         CON(5)  =SEMI
  606 007A1 00000         CON(5)  =SEMI
  607             * File  ASPDMNU.s       121
  608 007A6 00000         CON(5)  =DOLIST
  609 007AB 00000         CON(5)  =SEMI
  610             * File  ASPDMNU.s       122
  611 007B0 00000         CON(5)  =DOLIST
  612 007B5 00000         CON(5)  =DOCSTR
  613 007BA B0000         CON(5)  11
  614 007BF 74559         NIBASC  \GUI\
            4
  615 007C5 00000         CON(5)  =DOCOL
  616 007CA 00000         CON(5)  =DOROMP
  617 007CF 00000         CON(6)  =~xASPDFRM
            0
  618 007D5 00000         CON(5)  =SEMI
  619 007DA 00000         CON(5)  =SEMI
  620             * Run GUI
  621             * File  ASPDMNU.s       123
  622 007DF 00000         CON(5)  =DOLIST
  623 007E4 00000         CON(5)  =DOCSTR
  624 007E9 F0000         CON(5)  15
  625 007EE 14E43         NIBASC  \ANSER\
            55425
  626 007F8 00000         CON(5)  =DOCOL
  627             * Display solutions CST menu
  628             * File  ASPDMNU.s       124
  629 007FD 00000         CON(5)  =DOLIST
  630 00802 00000         CON(5)  =DOIDNT
  631 00807 20            CON(2)  2
  632 00809 6534          NIBASC  \VC\
  633 0080D 00000         CON(5)  =DOIDNT
  634 00812 20            CON(2)  2
  635 00814 0514          NIBASC  \PA\
  636 00818 00000         CON(5)  =DOIDNT
  637 0081D 10            CON(2)  1
  638 0081F D4            NIBASC  \M\
  639 00821 00000         CON(5)  =DOIDNT
  640 00826 20            CON(2)  2
  641 00828 4523          NIBASC  \T2\
  642 0082C 00000         CON(5)  =DOIDNT
  643 00831 20            CON(2)  2
  644 00833 6513          NIBASC  \V1\
  645             * File  ASPDMNU.s       125
  646 00837 00000         CON(5)  =DOLIST
  647 0083C 00000         CON(5)  =DOCSTR
  648 00841 B0000         CON(5)  11
  649 00846 E4547         NIBASC  \NEW\
            5
  650 0084C 00000         CON(5)  =DOCOL
  651 00851 00000         CON(5)  =DOROMP
  652 00856 00000         CON(6)  =~xASPDMNU
            0
  653 0085C 00000         CON(5)  =SEMI
  654 00861 00000         CON(5)  =SEMI
  655             * File  ASPDMNU.s       126
  656 00866 00000         CON(5)  =SEMI
  657 0086B 00000         CON(5)  =xMENU
  658             * File  ASPDMNU.s       127
  659 00870 00000         CON(5)  =SEMI
  660 00875 00000         CON(5)  =SEMI
  661             * File  ASPDMNU.s       128
  662 0087A 00000         CON(5)  =SEMI
  663             * File  ASPDMNU.s       129
  664 0087F 00000         CON(5)  =xMENU
  665             * File  ASPDMNU.s       130
  666 00884 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       ASPDMNU.a      Page    2

 '                                 Ext                   -    64   106   173
                                         198   223   300   325   347   432   476
                                         544
 >TAG                              Ext                   -    74   116   133
                                         183   208   233   310   334   356   442
                                         485   553
 CK0                               Ext                   -    35
 CK1&Dispatch                      Ext                   -    47    89   155
                                         282   423   460   528
 DOCOL                             Ext                   -    33    44    51
                                          86    93   152   159   261   279   286
                                         383   401   420   427   458   463   493
                                         526   531   561   594   615   626   650
 DOCSTR                            Ext                   -    41    54    71
                                          83    96   113   130   149   162   180
                                         205   230   258   276   289   307   331
                                         353   380   398   417   439   455   465
                                         482   490   523   533   550   558   591
                                         612   623   647
 DOIDNT                            Ext                   -    65   107   119
                                         122   137   140   143   174   186   189
                                         199   210   213   224   237   240   243
                                         246   249   252   301   313   316   326
                                         336   339   348   359   362   365   368
                                         371   374   433   450   477   501   504
                                         507   510   545   569   572   575   578
                                         630   633   636   639   642
 DOLIST                            Ext                   -    38    40    82
                                         136   148   236   257   275   358   379
                                         397   416   445   446   448   454   487
                                         489   499   522   555   557   567   590
                                         608   611   622   629   646
 DOROMP                            Ext                   -   126   192   216
                                         262   319   342   384   402   494   562
                                         595   616   651
 DUP                               Ext                   -    62   104   171
                                         196   220   298   323   345   430   474
                                         542
 EXTN                              Ext                   -    59   101   168
                                         295   472   540
=RomId                             Abs     808 #00000328 -    18
 SEMI                              Ext                   -    77    79    80
                                         264   265   267   270   272   273   386
                                         387   389   392   394   395   404   405
                                         408   411   413   414   447   449   496
                                         497   500   514   517   519   520   564
                                         565   568   582   585   587   588   597
                                         598   600   603   605   606   609   618
                                         619   653   654   656   659   660   662
                                         666
 STO                               Ext                   -    68   110   177
                                         202   227   304   329   351   436   480
                                         548
 THREE                             Ext                   -    58   100   167
                                         294   471   539
 real                              Ext                   -    50    92   158
                                         285   426   462   530
 umEND                             Ext                   -    57    99   166
                                         293   469   537
=xASPDMNU                          Rel       6 #00000006 -    31
 xMENU                             Ext                   -   268   390   409
                                         515   583   601   657   664
 ~CMACH                            Ext                   -   127
 ~CSAT                             Ext                   -   193
 ~CTAT                             Ext                   -   320
 ~TASMS                            Ext                   -   217   343
 ~xASPDFRM                         Ext                   -   617
 ~xASPDMNU                         Ext                   -    30   263   385
                                         403   495   563   596   652
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
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
