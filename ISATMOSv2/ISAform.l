Saturn Assembler                                       Tue Apr 21 18:49:40 2009
V3.0.9 (04/15/2007)                                      ISAform.a      Page    1

    1               * File  ISAform.s       1
    2               * RPL
    3               * File  ISAform.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv2\ISAform.s, part of the ISATM.hpp project, created by <> on 14/04/2009
    5               * File  ISAform.s       3
    6
    7               * File  ISAform.s       4
    8               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\informbox.h
    9
   10
   11
   12
   13
   14
   15
   16
   17
   18
   19
   20
   21
   22
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
   33
   34
   35
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
   46
   47
   48
   49
   50
   51
   52
   53
   54
   55
   56
   57
   58
   59
   60
   61
   62
   63
   64
   65
   66
   67
   68
   69
   70
   71
   72
   73
   74
   75
   76
   77
   78
   79
   80
   81               * Do not modify any of these constants
   82
   83               * Do not modify any of these constants
   84               * ( was zint
   85
   86
   87
   88
   89
   90
   91
   92
   93
   94               *|| Resuming file ISAform.s at line 4
   95               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv2\ISATM.h
   96
   97               =RomId  EQU     #326
   98               * ROMID set to 326
   99
  100
  101
  102
  103
  104
  105
  106
  107               *|| Resuming file ISAform.s at line 5
  108 00000         =ISAform
  109               * File  ISAform.s       7
  110 00000 00000           CON(5)  =DOCOL
  111               * Label definitions (X pos     Y pos)
  112               * File  ISAform.s       9
  113 00005 00000           CON(5)  =DOCSTR
  114 0000A B0000           CON(5)  11
  115 0000F 0514A3          NIBASC  \PA:\
  116 00015 00000           CON(5)  =BINT1
  117 0001A 00000           CON(5)  =BINT9
  118               * File  ISAform.s       10
  119 0001F 00000           CON(5)  =DOCSTR
  120 00024 B0000           CON(5)  11
  121 00029 4513A3          NIBASC  \T1:\
  122 0002F 00000           CON(5)  =BINT1
  123 00034 00000           CON(5)  =BINT18
  124               * File  ISAform.s       11
  125 00039 00000           CON(5)  =DOCSTR
  126 0003E B0000           CON(5)  11
  127 00043 0513A3          NIBASC  \P1:\
  128 00049 00000           CON(5)  =BINT66
  129 0004E 00000           CON(5)  =BINT18
  130               * File  ISAform.s       12
  131 00053 00000           CON(5)  =DOCSTR
  132 00058 B0000           CON(5)  11
  133 0005D 79              CON(2)  #97
  134 0005F 13A3            NIBASC  \1:\
  135 00063 00000           CON(5)  =BINT1
  136 00068 00000           CON(5)  =BINT27
  137               * File  ISAform.s       13
  138 0006D 00000           CON(5)  =DOCSTR
  139 00072 B0000           CON(5)  11
  140 00077 1613A3          NIBASC  \a1:\
  141 0007D 00000           CON(5)  =BINT66
  142 00082 00000           CON(5)  =BINT27
  143               * File  ISAform.s       14
  144
  145               * Field definitions
  146               * File  ISAform.s       16
  147               * Field PA definition [#BINT0]
  148               * File  ISAform.s       17
  149 00087 00000           CON(5)  ='
  150 0008C 00000           CON(5)  =DOCOL
  151               * Field message handler
  152               * File  ISAform.s       18
  153 00091 00000           CON(5)  =FOUR
  154 00096 00000           CON(5)  =#=case
  155 0009B 00000           CON(5)  =DOCOL
  156               * Get internal field value
  157               * File  ISAform.s       19
  158 000A0 00000           CON(5)  =DUPTYPEREAL?
  159 000A5 00000           CON(5)  =case
  160 000AA 00000           CON(5)  =DOCOL
  161               * REAL
  162               * File  ISAform.s       20
  163 000AF 00000           CON(5)  =DOCSTR
  164 000B4 90000           CON(5)  9
  165 000B9 6647            NIBASC  \ft\
  166 000BD 00000           CON(5)  =umEND
  167 000C2 00000           CON(5)  =BINT3
  168 000C7 00000           CON(5)  =EXTN
  169               * Add default feet units
  170               * File  ISAform.s       21
  171 000CC 00000           CON(5)  =NOVAL
  172 000D1 00000           CON(5)  =BINT1
  173 000D6 00000           CON(5)  =DOFLASHP
  174 000DB 0000000         CON(7)  =^IfSetFieldValue
  175               * Reset all other fields
  176               * File  ISAform.s       22
  177 000E2 00000           CON(5)  =NOVAL
  178 000E7 00000           CON(5)  =BINT2
  179 000EC 00000           CON(5)  =DOFLASHP
  180 000F1 0000000         CON(7)  =^IfSetFieldValue
  181               * with NOVAL
  182               * File  ISAform.s       23
  183 000F8 00000           CON(5)  =NOVAL
  184 000FD 00000           CON(5)  =BINT3
  185 00102 00000           CON(5)  =DOFLASHP
  186 00107 0000000         CON(7)  =^IfSetFieldValue
  187               * File  ISAform.s       24
  188 0010E 00000           CON(5)  =NOVAL
  189 00113 00000           CON(5)  =BINT4
  190 00118 00000           CON(5)  =DOFLASHP
  191 0011D 0000000         CON(7)  =^IfSetFieldValue
  192               * File  ISAform.s       25
  193 00124 00000           CON(5)  =BINT4
  194 00129 00000           CON(5)  =DOFLASHP
  195 0012E 0000000         CON(7)  =^IfSetField
  196               * Keep field focus
  197               * File  ISAform.s       26
  198 00135 00000           CON(5)  =TRUE
  199               * Return external value
  200               * File  ISAform.s       27
  201 0013A 00000           CON(5)  =SEMI
  202               * File  ISAform.s       28
  203 0013F 00000           CON(5)  =DUPTYPEEXT?
  204 00144 00000           CON(5)  =case
  205 00149 00000           CON(5)  =DOCOL
  206               * UNIT
  207               * File  ISAform.s       29
  208 0014E 00000           CON(5)  =DUP
  209 00153 00000           CON(5)  =DOIDNT
  210 00158 20              CON(2)  2
  211 0015A 0514            NIBASC  \PA\
  212 0015E 00000           CON(5)  =EQUALNOT
  213 00163 00000           CON(5)  =IT
  214 00168 00000           CON(5)  =DOCOL
  215               * IF changed from initial value
  216               * File  ISAform.s       30
  217 0016D 00000           CON(5)  =NOVAL
  218 00172 00000           CON(5)  =BINT1
  219 00177 00000           CON(5)  =DOFLASHP
  220 0017C 0000000         CON(7)  =^IfSetFieldValue
  221               * Reset all other fields
  222               * File  ISAform.s       31
  223 00183 00000           CON(5)  =NOVAL
  224 00188 00000           CON(5)  =BINT2
  225 0018D 00000           CON(5)  =DOFLASHP
  226 00192 0000000         CON(7)  =^IfSetFieldValue
  227               * with NOVAL
  228               * File  ISAform.s       32
  229 00199 00000           CON(5)  =NOVAL
  230 0019E 00000           CON(5)  =BINT3
  231 001A3 00000           CON(5)  =DOFLASHP
  232 001A8 0000000         CON(7)  =^IfSetFieldValue
  233               * File  ISAform.s       33
  234 001AF 00000           CON(5)  =NOVAL
  235 001B4 00000           CON(5)  =BINT4
  236 001B9 00000           CON(5)  =DOFLASHP
  237 001BE 0000000         CON(7)  =^IfSetFieldValue
  238               * File  ISAform.s       34
  239 001C5 00000           CON(5)  =BINT4
  240 001CA 00000           CON(5)  =DOFLASHP
  241 001CF 0000000         CON(7)  =^IfSetField
  242               * Keep field focus
  243               * File  ISAform.s       35
  244 001D6 00000           CON(5)  =SEMI
  245               * File  ISAform.s       36
  246 001DB 00000           CON(5)  =TRUE
  247               * Return external value
  248               * File  ISAform.s       37
  249 001E0 00000           CON(5)  =SEMI
  250               * File  ISAform.s       38
  251 001E5 00000           CON(5)  =TRUE
  252               * Message was handled
  253               * File  ISAform.s       39
  254 001EA 00000           CON(5)  =SEMI
  255               * File  ISAform.s       40
  256 001EF 00000           CON(5)  =FALSE
  257               * Other messages not handled
  258               * File  ISAform.s       41
  259 001F4 00000           CON(5)  =SEMI
  260               * File  ISAform.s       42
  261 001F9 00000           CON(5)  =BINT14
  262 001FE 00000           CON(5)  =BINT8
  263 00203 00000           CON(5)  =BINT110
  264 00208 00000           CON(5)  =BINT8
  265               * Position & size
  266               * File  ISAform.s       43
  267 0020D 00000           CON(5)  =BINT1
  268               * Field type: TEXT
  269               * File  ISAform.s       44
  270 00212 00000           CON(5)  =DOLIST
  271 00217 00000           CON(5)  =BINT0
  272 0021C 00000           CON(5)  =BINT13
  273 00221 00000           CON(5)  =SEMI
  274               * Allowed type: REAL, UNIT object
  275               * File  ISAform.s       45
  276 00226 00000           CON(5)  =BINT2
  277               * Decompile with stack appearance
  278               * File  ISAform.s       46
  279 0022B 00000           CON(5)  =DOCSTR
  280 00230 93000           CON(5)  57
  281 00235 0525543         NIBASC  \PRESSURE ALTITUDE (#\
            5355525
            540214C4459445554454028232

  282 0025D 32              NIBASC  \#\
  283 0025F D8              CON(2)  #8D
  284 00261 0266479         NIBASC  \ ft)\
            2
  285               * Help text
  286               * File  ISAform.s       47
  287 00269 00000           CON(5)  =MINUSONE
  288               * ChooseData N/A
  289               * File  ISAform.s       48
  290 0026E 00000           CON(5)  =MINUSONE
  291               * ChooseDecompile - ignored
  292               * File  ISAform.s       49
  293 00273 00000           CON(5)  =MINUSONE
  294               * Reset value
  295               * File  ISAform.s       50
  296 00278 00000           CON(5)  =DOIDNT
  297 0027D 20              CON(2)  2
  298 0027F 0514            NIBASC  \PA\
  299               * Initial value
  300               * File  ISAform.s       51
  301
  302               * File  ISAform.s       52
  303               * Field T1 definition [#BINT1]
  304               * File  ISAform.s       53
  305 00283 00000           CON(5)  ='
  306 00288 00000           CON(5)  =DOCOL
  307               * Field Message Handler
  308               * File  ISAform.s       54
  309 0028D 00000           CON(5)  =FOUR
  310 00292 00000           CON(5)  =#=case
  311 00297 00000           CON(5)  =DOCOL
  312               * Get internal field value
  313               * File  ISAform.s       55
  314 0029C 00000           CON(5)  =DUPTYPEREAL?
  315 002A1 00000           CON(5)  =case
  316 002A6 00000           CON(5)  =DOCOL
  317               * Real object
  318               * File  ISAform.s       56
  319 002AB 00000           CON(5)  =DOCSTR
  320 002B0 90000           CON(5)  9
  321 002B5 0B              CON(2)  #B0
  322 002B7 34              NIBASC  \C\
  323 002B9 00000           CON(5)  =umEND
  324 002BE 00000           CON(5)  =BINT3
  325 002C3 00000           CON(5)  =EXTN
  326               * Add default deg C units
  327               * File  ISAform.s       57
  328 002C8 00000           CON(5)  =NOVAL
  329 002CD 00000           CON(5)  =BINT0
  330 002D2 00000           CON(5)  =DOFLASHP
  331 002D7 0000000         CON(7)  =^IfSetFieldValue
  332               * Reset all other
  333               * File  ISAform.s       58
  334 002DE 00000           CON(5)  =NOVAL
  335 002E3 00000           CON(5)  =BINT2
  336 002E8 00000           CON(5)  =DOFLASHP
  337 002ED 0000000         CON(7)  =^IfSetFieldValue
  338               * fields with
  339               * File  ISAform.s       59
  340 002F4 00000           CON(5)  =NOVAL
  341 002F9 00000           CON(5)  =BINT3
  342 002FE 00000           CON(5)  =DOFLASHP
  343 00303 0000000         CON(7)  =^IfSetFieldValue
  344               * NOVAL
  345               * File  ISAform.s       60
  346 0030A 00000           CON(5)  =NOVAL
  347 0030F 00000           CON(5)  =BINT4
  348 00314 00000           CON(5)  =DOFLASHP
  349 00319 0000000         CON(7)  =^IfSetFieldValue
  350               * File  ISAform.s       61
  351 00320 00000           CON(5)  =BINT0
  352 00325 00000           CON(5)  =DOFLASHP
  353 0032A 0000000         CON(7)  =^IfSetField
  354               * Keep field focus
  355               * File  ISAform.s       62
  356 00331 00000           CON(5)  =TRUE
  357               * Return external value
  358               * File  ISAform.s       63
  359 00336 00000           CON(5)  =SEMI
  360               * File  ISAform.s       64
  361 0033B 00000           CON(5)  =DUPTYPEEXT?
  362 00340 00000           CON(5)  =case
  363 00345 00000           CON(5)  =DOCOL
  364               * Unit object
  365               * File  ISAform.s       65
  366 0034A 00000           CON(5)  =DUP
  367 0034F 00000           CON(5)  =DOIDNT
  368 00354 20              CON(2)  2
  369 00356 4513            NIBASC  \T1\
  370 0035A 00000           CON(5)  =EQUALNOT
  371 0035F 00000           CON(5)  =IT
  372 00364 00000           CON(5)  =DOCOL
  373               * IF changed from internal value
  374               * File  ISAform.s       66
  375 00369 00000           CON(5)  =NOVAL
  376 0036E 00000           CON(5)  =BINT0
  377 00373 00000           CON(5)  =DOFLASHP
  378 00378 0000000         CON(7)  =^IfSetFieldValue
  379               * Reset all other
  380               * File  ISAform.s       67
  381 0037F 00000           CON(5)  =NOVAL
  382 00384 00000           CON(5)  =BINT2
  383 00389 00000           CON(5)  =DOFLASHP
  384 0038E 0000000         CON(7)  =^IfSetFieldValue
  385               * fields with
  386               * File  ISAform.s       68
  387 00395 00000           CON(5)  =NOVAL
  388 0039A 00000           CON(5)  =BINT3
  389 0039F 00000           CON(5)  =DOFLASHP
  390 003A4 0000000         CON(7)  =^IfSetFieldValue
  391               * NOVAL
  392               * File  ISAform.s       69
  393 003AB 00000           CON(5)  =NOVAL
  394 003B0 00000           CON(5)  =BINT4
  395 003B5 00000           CON(5)  =DOFLASHP
  396 003BA 0000000         CON(7)  =^IfSetFieldValue
  397               * File  ISAform.s       70
  398 003C1 00000           CON(5)  =BINT0
  399 003C6 00000           CON(5)  =DOFLASHP
  400 003CB 0000000         CON(7)  =^IfSetField
  401               * Keep field focus
  402               * File  ISAform.s       71
  403 003D2 00000           CON(5)  =SEMI
  404               * File  ISAform.s       72
  405 003D7 00000           CON(5)  =TRUE
  406               * Return external value
  407               * File  ISAform.s       73
  408 003DC 00000           CON(5)  =SEMI
  409               * File  ISAform.s       74
  410 003E1 00000           CON(5)  =TRUE
  411               * Message was handled
  412               * File  ISAform.s       75
  413 003E6 00000           CON(5)  =SEMI
  414               * File  ISAform.s       76
  415 003EB 00000           CON(5)  =FALSE
  416               * Other messages not handled
  417               * File  ISAform.s       77
  418 003F0 00000           CON(5)  =SEMI
  419               * File  ISAform.s       78
  420 003F5 00000           CON(5)  =BINT14
  421 003FA 00000           CON(5)  =BINT17
  422 003FF 00000           CON(5)  =BINT45
  423 00404 00000           CON(5)  =BINT8
  424               * Position & size
  425               * File  ISAform.s       79
  426 00409 00000           CON(5)  =BINT1
  427               * Field type: TEXT
  428               * File  ISAform.s       80
  429 0040E 00000           CON(5)  =DOLIST
  430 00413 00000           CON(5)  =BINT0
  431 00418 00000           CON(5)  =BINT13
  432 0041D 00000           CON(5)  =SEMI
  433               * Allowed type: REAL, UNIT object
  434               * File  ISAform.s       81
  435 00422 00000           CON(5)  =BINT2
  436               * Decompile with stack appearance
  437               * File  ISAform.s       82
  438 00427 00000           CON(5)  =DOCSTR
  439 0042C 14000           CON(5)  65
  440 00431 3545144         NIBASC  \STATIC AIR TEMP. (TR\
            5943402
            149425024554D405E202824525

  441 00459 5554023         NIBASC  \UE ##\
            232
  442 00463 D8              CON(2)  #8D
  443 00465 02              NIBASC  \ \
  444 00467 0B              CON(2)  #B0
  445 00469 3492            NIBASC  \C)\
  446               * Help string
  447               * File  ISAform.s       83
  448 0046D 00000           CON(5)  =MINUSONE
  449               * ChooseData N/A
  450               * File  ISAform.s       84
  451 00472 00000           CON(5)  =MINUSONE
  452               * ChooseDecompile
  453               * File  ISAform.s       85
  454 00477 00000           CON(5)  =MINUSONE
  455               * Reset value
  456               * File  ISAform.s       86
  457 0047C 00000           CON(5)  =DOIDNT
  458 00481 20              CON(2)  2
  459 00483 4513            NIBASC  \T1\
  460               * Initial value
  461               * File  ISAform.s       87
  462
  463               * File  ISAform.s       88
  464               * Field P1 definition [#BINT2]
  465               * File  ISAform.s       89
  466 00487 00000           CON(5)  ='
  467 0048C 00000           CON(5)  =DOCOL
  468               * Field message handler
  469               * File  ISAform.s       90
  470 00491 00000           CON(5)  =FOUR
  471 00496 00000           CON(5)  =#=case
  472 0049B 00000           CON(5)  =DOCOL
  473               * Get internal field value
  474               * File  ISAform.s       91
  475 004A0 00000           CON(5)  =DUPTYPEREAL?
  476 004A5 00000           CON(5)  =case
  477 004AA 00000           CON(5)  =DOCOL
  478               * REAL
  479               * File  ISAform.s       92
  480 004AF 00000           CON(5)  =DUP
  481 004B4 00000           CON(5)  =DOREAL
  482 004B9 100             NIBHEX  100
  483 004BC 0000000         NIBHEX  000000000005
            00005
  484 004C8 0               NIBHEX  0
  485 004C9 00000           CON(5)  =%<
  486 004CE 00000           CON(5)  =ITE
  487 004D3 00000           CON(5)  =DOCOL
  488               * IF it is < 50
  489               * File  ISAform.s       93
  490 004D8 00000           CON(5)  =DOCSTR
  491 004DD D0000           CON(5)  13
  492 004E2 96E6847         NIBASC  \inHg\
            6
  493 004EA 00000           CON(5)  =umEND
  494 004EF 00000           CON(5)  =BINT3
  495 004F4 00000           CON(5)  =EXTN
  496               * add inHg units
  497               * File  ISAform.s       94
  498 004F9 00000           CON(5)  =SEMI
  499               * File  ISAform.s       95
  500 004FE 00000           CON(5)  =DOCOL
  501               * ELSE if it is > 50
  502               * File  ISAform.s       96
  503 00503 00000           CON(5)  =CHR_m
  504 00508 00000           CON(5)  =DOCSTR
  505 0050D B0000           CON(5)  11
  506 00512 261627          NIBASC  \bar\
  507 00518 00000           CON(5)  =umP
  508 0051D 00000           CON(5)  =umEND
  509               * add mbar units
  510               * File  ISAform.s       97
  511 00522 00000           CON(5)  =BINT5
  512 00527 00000           CON(5)  =EXTN
  513               * File  ISAform.s       98
  514 0052C 00000           CON(5)  =SEMI
  515               * File  ISAform.s       99
  516 00531 00000           CON(5)  =NOVAL
  517 00536 00000           CON(5)  =BINT0
  518 0053B 00000           CON(5)  =DOFLASHP
  519 00540 0000000         CON(7)  =^IfSetFieldValue
  520               * Reset other fields
  521               * File  ISAform.s       100
  522 00547 00000           CON(5)  =NOVAL
  523 0054C 00000           CON(5)  =BINT1
  524 00551 00000           CON(5)  =DOFLASHP
  525 00556 0000000         CON(7)  =^IfSetFieldValue
  526               * with NOVAL
  527               * File  ISAform.s       101
  528 0055D 00000           CON(5)  =NOVAL
  529 00562 00000           CON(5)  =BINT3
  530 00567 00000           CON(5)  =DOFLASHP
  531 0056C 0000000         CON(7)  =^IfSetFieldValue
  532               * File  ISAform.s       102
  533 00573 00000           CON(5)  =NOVAL
  534 00578 00000           CON(5)  =BINT4
  535 0057D 00000           CON(5)  =DOFLASHP
  536 00582 0000000         CON(7)  =^IfSetFieldValue
  537               * File  ISAform.s       103
  538 00589 00000           CON(5)  =BINT1
  539 0058E 00000           CON(5)  =DOFLASHP
  540 00593 0000000         CON(7)  =^IfSetField
  541               * Keep field focus
  542               * File  ISAform.s       104
  543 0059A 00000           CON(5)  =TRUE
  544               * Return external value
  545               * File  ISAform.s       105
  546 0059F 00000           CON(5)  =SEMI
  547               * File  ISAform.s       106
  548 005A4 00000           CON(5)  =DUPTYPEEXT?
  549 005A9 00000           CON(5)  =case
  550 005AE 00000           CON(5)  =DOCOL
  551               * UNIT
  552               * File  ISAform.s       107
  553 005B3 00000           CON(5)  =DUP
  554 005B8 00000           CON(5)  =DOIDNT
  555 005BD 20              CON(2)  2
  556 005BF 0513            NIBASC  \P1\
  557 005C3 00000           CON(5)  =EQUALNOT
  558 005C8 00000           CON(5)  =IT
  559 005CD 00000           CON(5)  =DOCOL
  560               * IF changed from initial value
  561               * File  ISAform.s       108
  562 005D2 00000           CON(5)  =NOVAL
  563 005D7 00000           CON(5)  =BINT0
  564 005DC 00000           CON(5)  =DOFLASHP
  565 005E1 0000000         CON(7)  =^IfSetFieldValue
  566               * Reset all other fields
  567               * File  ISAform.s       109
  568 005E8 00000           CON(5)  =NOVAL
  569 005ED 00000           CON(5)  =BINT1
  570 005F2 00000           CON(5)  =DOFLASHP
  571 005F7 0000000         CON(7)  =^IfSetFieldValue
  572               * with NOVAL
  573               * File  ISAform.s       110
  574 005FE 00000           CON(5)  =NOVAL
  575 00603 00000           CON(5)  =BINT3
  576 00608 00000           CON(5)  =DOFLASHP
  577 0060D 0000000         CON(7)  =^IfSetFieldValue
  578               * File  ISAform.s       111
  579 00614 00000           CON(5)  =NOVAL
  580 00619 00000           CON(5)  =BINT4
  581 0061E 00000           CON(5)  =DOFLASHP
  582 00623 0000000         CON(7)  =^IfSetFieldValue
  583               * File  ISAform.s       112
  584 0062A 00000           CON(5)  =BINT1
  585 0062F 00000           CON(5)  =DOFLASHP
  586 00634 0000000         CON(7)  =^IfSetField
  587               * Keep field focus
  588               * File  ISAform.s       113
  589 0063B 00000           CON(5)  =SEMI
  590               * File  ISAform.s       114
  591 00640 00000           CON(5)  =TRUE
  592               * Return external value
  593               * File  ISAform.s       115
  594 00645 00000           CON(5)  =SEMI
  595               * File  ISAform.s       116
  596 0064A 00000           CON(5)  =TRUE
  597               * Message was handled
  598               * File  ISAform.s       117
  599 0064F 00000           CON(5)  =SEMI
  600               * File  ISAform.s       118
  601 00654 00000           CON(5)  =FALSE
  602               * Other messages not handled
  603               * File  ISAform.s       119
  604 00659 00000           CON(5)  =SEMI
  605               * File  ISAform.s       120
  606 0065E 00000           CON(5)  =BINT79
  607 00663 00000           CON(5)  =BINT17
  608 00668 00000           CON(5)  =BINT45
  609 0066D 00000           CON(5)  =BINT8
  610               * Position and size
  611               * File  ISAform.s       121
  612 00672 00000           CON(5)  =BINT1
  613               * Field type: TEXT
  614               * File  ISAform.s       122
  615 00677 00000           CON(5)  =DOLIST
  616 0067C 00000           CON(5)  =BINT0
  617 00681 00000           CON(5)  =BINT13
  618 00686 00000           CON(5)  =SEMI
  619               * Allowed type: REAL, UNIT object
  620               * File  ISAform.s       123
  621 0068B 00000           CON(5)  =BINT2
  622               * Decompile with stack appearance
  623               * File  ISAform.s       124
  624 00690 00000           CON(5)  =DOCSTR
  625 00695 34000           CON(5)  67
  626 0069A 3545144         NIBASC  \STATIC PRESSURE (##\
            5943402
            052554353555255402823232

  627 006C0 D8              CON(2)  #8D
  628 006C2 02D6261         NIBASC  \ mbar/inHg)\
            627F296
            E6847692
  629               * Help string
  630               * File  ISAform.s       125
  631 006D8 00000           CON(5)  =MINUSONE
  632               * ChooseData N/A
  633               * File  ISAform.s       126
  634 006DD 00000           CON(5)  =MINUSONE
  635               * ChooseDecompile
  636               * File  ISAform.s       127
  637 006E2 00000           CON(5)  =MINUSONE
  638               * Reset value
  639               * File  ISAform.s       128
  640 006E7 00000           CON(5)  =DOIDNT
  641 006EC 20              CON(2)  2
  642 006EE 0513            NIBASC  \P1\
  643               * Initial value
  644               * File  ISAform.s       129
  645
  646               * File  ISAform.s       130
  647               * Field rho1 definition
  648               * File  ISAform.s       131
  649 006F2 00000           CON(5)  ='
  650 006F7 00000           CON(5)  =DOCOL
  651               * Field message handler
  652               * File  ISAform.s       132
  653 006FC 00000           CON(5)  =FOUR
  654 00701 00000           CON(5)  =#=case
  655 00706 00000           CON(5)  =DOCOL
  656               * Get internal field value
  657               * File  ISAform.s       133
  658 0070B 00000           CON(5)  =DUPTYPEREAL?
  659 00710 00000           CON(5)  =case
  660 00715 00000           CON(5)  =DOCOL
  661               * REAL
  662               * File  ISAform.s       134
  663 0071A 00000           CON(5)  =CHR_k
  664 0071F 00000           CON(5)  =DOCSTR
  665 00724 70000           CON(5)  7
  666 00729 76              NIBASC  \g\
  667 0072B 00000           CON(5)  =umP
  668 00730 00000           CON(5)  =DOCSTR
  669 00735 70000           CON(5)  7
  670 0073A D6              NIBASC  \m\
  671 0073C 00000           CON(5)  =%3
  672               * Add kg/m^3 units
  673               * File  ISAform.s       135
  674 00741 00000           CON(5)  =um^
  675 00746 00000           CON(5)  =um/
  676 0074B 00000           CON(5)  =umEND
  677               * File  ISAform.s       136
  678 00750 00000           CON(5)  =BINT9
  679 00755 00000           CON(5)  =EXTN
  680               * File  ISAform.s       137
  681 0075A 00000           CON(5)  =NOVAL
  682 0075F 00000           CON(5)  =BINT0
  683 00764 00000           CON(5)  =DOFLASHP
  684 00769 0000000         CON(7)  =^IfSetFieldValue
  685               * Reset all other fields
  686               * File  ISAform.s       138
  687 00770 00000           CON(5)  =NOVAL
  688 00775 00000           CON(5)  =BINT1
  689 0077A 00000           CON(5)  =DOFLASHP
  690 0077F 0000000         CON(7)  =^IfSetFieldValue
  691               * with NOVAL
  692               * File  ISAform.s       139
  693 00786 00000           CON(5)  =NOVAL
  694 0078B 00000           CON(5)  =BINT2
  695 00790 00000           CON(5)  =DOFLASHP
  696 00795 0000000         CON(7)  =^IfSetFieldValue
  697               * File  ISAform.s       140
  698 0079C 00000           CON(5)  =NOVAL
  699 007A1 00000           CON(5)  =BINT4
  700 007A6 00000           CON(5)  =DOFLASHP
  701 007AB 0000000         CON(7)  =^IfSetFieldValue
  702               * File  ISAform.s       141
  703 007B2 00000           CON(5)  =BINT2
  704 007B7 00000           CON(5)  =DOFLASHP
  705 007BC 0000000         CON(7)  =^IfSetField
  706               * Keep field focus
  707               * File  ISAform.s       142
  708 007C3 00000           CON(5)  =TRUE
  709               * Return external value
  710               * File  ISAform.s       143
  711 007C8 00000           CON(5)  =SEMI
  712               * File  ISAform.s       144
  713 007CD 00000           CON(5)  =DUPTYPEEXT?
  714 007D2 00000           CON(5)  =case
  715 007D7 00000           CON(5)  =DOCOL
  716               * UNIT
  717               * File  ISAform.s       145
  718 007DC 00000           CON(5)  =DUP
  719 007E1 00000           CON(5)  =DOIDNT
  720 007E6 20              CON(2)  2
  721 007E8 79              CON(2)  #97
  722 007EA 13              NIBASC  \1\
  723 007EC 00000           CON(5)  =EQUALNOT
  724 007F1 00000           CON(5)  =IT
  725 007F6 00000           CON(5)  =DOCOL
  726               * IF changed from initial value
  727               * File  ISAform.s       146
  728 007FB 00000           CON(5)  =NOVAL
  729 00800 00000           CON(5)  =BINT0
  730 00805 00000           CON(5)  =DOFLASHP
  731 0080A 0000000         CON(7)  =^IfSetFieldValue
  732               * Reset all other fields
  733               * File  ISAform.s       147
  734 00811 00000           CON(5)  =NOVAL
  735 00816 00000           CON(5)  =BINT1
  736 0081B 00000           CON(5)  =DOFLASHP
  737 00820 0000000         CON(7)  =^IfSetFieldValue
  738               * with NOVAL
  739               * File  ISAform.s       148
  740 00827 00000           CON(5)  =NOVAL
  741 0082C 00000           CON(5)  =BINT2
  742 00831 00000           CON(5)  =DOFLASHP
  743 00836 0000000         CON(7)  =^IfSetFieldValue
  744               * File  ISAform.s       149
  745 0083D 00000           CON(5)  =NOVAL
  746 00842 00000           CON(5)  =BINT4
  747 00847 00000           CON(5)  =DOFLASHP
  748 0084C 0000000         CON(7)  =^IfSetFieldValue
  749               * File  ISAform.s       150
  750 00853 00000           CON(5)  =BINT2
  751 00858 00000           CON(5)  =DOFLASHP
  752 0085D 0000000         CON(7)  =^IfSetField
  753               * Keep field focus
  754               * File  ISAform.s       151
  755 00864 00000           CON(5)  =SEMI
  756               * File  ISAform.s       152
  757 00869 00000           CON(5)  =TRUE
  758               * Return external value
  759               * File  ISAform.s       153
  760 0086E 00000           CON(5)  =SEMI
  761               * File  ISAform.s       154
  762 00873 00000           CON(5)  =TRUE
  763               * Message was handled
  764               * File  ISAform.s       155
  765 00878 00000           CON(5)  =SEMI
  766               * File  ISAform.s       156
  767 0087D 00000           CON(5)  =FALSE
  768               * Other messages not handled
  769               * File  ISAform.s       157
  770 00882 00000           CON(5)  =SEMI
  771               * File  ISAform.s       158
  772 00887 00000           CON(5)  =BINT14
  773 0088C 00000           CON(5)  =BINT26
  774 00891 00000           CON(5)  =BINT45
  775 00896 00000           CON(5)  =BINT8
  776               * Position & size
  777               * File  ISAform.s       159
  778 0089B 00000           CON(5)  =BINT1
  779               * Field type: TEXT
  780               * File  ISAform.s       160
  781 008A0 00000           CON(5)  =DOLIST
  782 008A5 00000           CON(5)  =BINT0
  783 008AA 00000           CON(5)  =BINT13
  784 008AF 00000           CON(5)  =SEMI
  785               * Allowed type: REAL, UNIT object
  786               * File  ISAform.s       161
  787 008B4 00000           CON(5)  =BINT2
  788               * Decompile with stack appearance
  789               * File  ISAform.s       162
  790 008B9 00000           CON(5)  =DOCSTR
  791 008BE D2000           CON(5)  45
  792 008C3 4454E43         NIBASC  \DENSITY (##\
            5944595
            02823232
  793 008D9 D8              CON(2)  #8D
  794 008DB 02B676F         NIBASC  \ kg/m^3)\
            2D6E533
            92
  795               * Help string
  796               * File  ISAform.s       163
  797 008EB 00000           CON(5)  =MINUSONE
  798               * ChooseData N/A
  799               * File  ISAform.s       164
  800 008F0 00000           CON(5)  =MINUSONE
  801               * ChooseDecompile
  802               * File  ISAform.s       165
  803 008F5 00000           CON(5)  =MINUSONE
  804               * Reset value
  805               * File  ISAform.s       166
  806 008FA 00000           CON(5)  =DOIDNT
  807 008FF 20              CON(2)  2
  808 00901 79              CON(2)  #97
  809 00903 13              NIBASC  \1\
  810               * Initial value
  811               * File  ISAform.s       167
  812
  813               * File  ISAform.s       168
  814               * Field a1 definition
  815               * File  ISAform.s       169
  816 00905 00000           CON(5)  ='
  817 0090A 00000           CON(5)  =DOCOL
  818               * Field message handler
  819               * File  ISAform.s       170
  820 0090F 00000           CON(5)  =FOUR
  821 00914 00000           CON(5)  =#=case
  822 00919 00000           CON(5)  =DOCOL
  823               * Get internal field value
  824               * File  ISAform.s       171
  825 0091E 00000           CON(5)  =DUPTYPEREAL?
  826 00923 00000           CON(5)  =case
  827 00928 00000           CON(5)  =DOCOL
  828               * REAL
  829               * File  ISAform.s       172
  830 0092D 00000           CON(5)  =DOCSTR
  831 00932 D0000           CON(5)  13
  832 00937 B6E6F64         NIBASC  \knot\
            7
  833 0093F 00000           CON(5)  =umEND
  834               * Add default knot units
  835               * File  ISAform.s       173
  836 00944 00000           CON(5)  =BINT3
  837 00949 00000           CON(5)  =EXTN
  838               * File  ISAform.s       174
  839 0094E 00000           CON(5)  =NOVAL
  840 00953 00000           CON(5)  =BINT0
  841 00958 00000           CON(5)  =DOFLASHP
  842 0095D 0000000         CON(7)  =^IfSetFieldValue
  843               * Reset all other fields
  844               * File  ISAform.s       175
  845 00964 00000           CON(5)  =NOVAL
  846 00969 00000           CON(5)  =BINT1
  847 0096E 00000           CON(5)  =DOFLASHP
  848 00973 0000000         CON(7)  =^IfSetFieldValue
  849               * with NOVAL
  850               * File  ISAform.s       176
  851 0097A 00000           CON(5)  =NOVAL
  852 0097F 00000           CON(5)  =BINT2
  853 00984 00000           CON(5)  =DOFLASHP
  854 00989 0000000         CON(7)  =^IfSetFieldValue
  855               * File  ISAform.s       177
  856 00990 00000           CON(5)  =NOVAL
  857 00995 00000           CON(5)  =BINT3
  858 0099A 00000           CON(5)  =DOFLASHP
  859 0099F 0000000         CON(7)  =^IfSetFieldValue
  860               * File  ISAform.s       178
  861 009A6 00000           CON(5)  =BINT3
  862 009AB 00000           CON(5)  =DOFLASHP
  863 009B0 0000000         CON(7)  =^IfSetField
  864               * Keep field focus
  865               * File  ISAform.s       179
  866 009B7 00000           CON(5)  =TRUE
  867               * Return external value
  868               * File  ISAform.s       180
  869 009BC 00000           CON(5)  =SEMI
  870               * File  ISAform.s       181
  871 009C1 00000           CON(5)  =DUPTYPEEXT?
  872 009C6 00000           CON(5)  =case
  873 009CB 00000           CON(5)  =DOCOL
  874               * UNIT
  875               * File  ISAform.s       182
  876 009D0 00000           CON(5)  =DUP
  877 009D5 00000           CON(5)  =DOIDNT
  878 009DA 20              CON(2)  2
  879 009DC 1413            NIBASC  \A1\
  880 009E0 00000           CON(5)  =EQUALNOT
  881 009E5 00000           CON(5)  =IT
  882 009EA 00000           CON(5)  =DOCOL
  883               * IF changed from initial value
  884               * File  ISAform.s       183
  885 009EF 00000           CON(5)  =NOVAL
  886 009F4 00000           CON(5)  =BINT0
  887 009F9 00000           CON(5)  =DOFLASHP
  888 009FE 0000000         CON(7)  =^IfSetFieldValue
  889               * Reset all other fields
  890               * File  ISAform.s       184
  891 00A05 00000           CON(5)  =NOVAL
  892 00A0A 00000           CON(5)  =BINT1
  893 00A0F 00000           CON(5)  =DOFLASHP
  894 00A14 0000000         CON(7)  =^IfSetFieldValue
  895               * with NOVAL
  896               * File  ISAform.s       185
  897 00A1B 00000           CON(5)  =NOVAL
  898 00A20 00000           CON(5)  =BINT2
  899 00A25 00000           CON(5)  =DOFLASHP
  900 00A2A 0000000         CON(7)  =^IfSetFieldValue
  901               * File  ISAform.s       186
  902 00A31 00000           CON(5)  =NOVAL
  903 00A36 00000           CON(5)  =BINT3
  904 00A3B 00000           CON(5)  =DOFLASHP
  905 00A40 0000000         CON(7)  =^IfSetFieldValue
  906               * File  ISAform.s       187
  907 00A47 00000           CON(5)  =BINT3
  908 00A4C 00000           CON(5)  =DOFLASHP
  909 00A51 0000000         CON(7)  =^IfSetField
  910               * Keep field focus
  911               * File  ISAform.s       188
  912 00A58 00000           CON(5)  =SEMI
  913               * File  ISAform.s       189
  914 00A5D 00000           CON(5)  =TRUE
  915               * Return external value
  916               * File  ISAform.s       190
  917 00A62 00000           CON(5)  =SEMI
  918               * File  ISAform.s       191
  919 00A67 00000           CON(5)  =TRUE
  920               * Message was handled
  921               * File  ISAform.s       192
  922 00A6C 00000           CON(5)  =SEMI
  923               * File  ISAform.s       193
  924 00A71 00000           CON(5)  =FALSE
  925               * Other messages not handled
  926               * File  ISAform.s       194
  927 00A76 00000           CON(5)  =SEMI
  928               * File  ISAform.s       195
  929 00A7B 00000           CON(5)  =BINT79
  930 00A80 00000           CON(5)  =BINT26
  931 00A85 00000           CON(5)  =BINT45
  932 00A8A 00000           CON(5)  =BINT8
  933               * Position & size
  934               * File  ISAform.s       196
  935 00A8F 00000           CON(5)  =BINT1
  936               * Field type: TEXT
  937               * File  ISAform.s       197
  938 00A94 00000           CON(5)  =DOLIST
  939 00A99 00000           CON(5)  =BINT0
  940 00A9E 00000           CON(5)  =BINT13
  941 00AA3 00000           CON(5)  =SEMI
  942               * Allowed type: REAL, UNIT object
  943               * File  ISAform.s       198
  944 00AA8 00000           CON(5)  =BINT2
  945               * Decompile with stack appearance
  946               * File  ISAform.s       199
  947 00AAD 00000           CON(5)  =DOCSTR
  948 00AB2 73000           CON(5)  55
  949 00AB7 3505545         NIBASC  \SPEED OF SOUND (##\
            44402F4
            640235F455E44402823232

  950 00ADB D8              CON(2)  #8D
  951 00ADD 02B6E6F         NIBASC  \ knot)\
            64792
  952               * Help string
  953               * File  ISAform.s       200
  954 00AE9 00000           CON(5)  =MINUSONE
  955               * ChooseData N/A
  956               * File  ISAform.s       201
  957 00AEE 00000           CON(5)  =MINUSONE
  958               * ChooseDecompile
  959               * File  ISAform.s       202
  960 00AF3 00000           CON(5)  =MINUSONE
  961               * Reset value
  962               * File  ISAform.s       203
  963 00AF8 00000           CON(5)  =DOIDNT
  964 00AFD 20              CON(2)  2
  965 00AFF 1413            NIBASC  \A1\
  966               * Initial value
  967               * File  ISAform.s       204
  968
  969               * File  ISAform.s       205
  970 00B03 00000           CON(5)  =BINT5
  971 00B08 00000           CON(5)  =BINT5
  972               * Label & field counts
  973               * File  ISAform.s       206
  974
  975               * File  ISAform.s       207
  976 00B0D 00000           CON(5)  ='DROPFALSE
  977               * Inform Box message handler
  978               * File  ISAform.s       208
  979 00B12 00000           CON(5)  =DOCSTR
  980 00B17 B0000           CON(5)  11
  981 00B1C 943514          NIBASC  \ISA\
  982               * Title
  983               * File  ISAform.s       209
  984 00B22 00000           CON(5)  =DOFLASHP
  985 00B27 0000000         CON(7)  =^IfMain
  986               * Create and run the input form
  987               * File  ISAform.s       210
  988 00B2E 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue Apr 21 18:49:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAform.a      Page    2

 #=case                            Ext                   -   154   310   471
                                         654   821
 %3                                Ext                   -   671
 %<                                Ext                   -   485
 '                                 Ext                   -   149   305   466
                                         649   816
 'DROPFALSE                        Ext                   -   976
 BINT0                             Ext                   -   271   329   351
                                         376   398   430   517   563   616   682
                                         729   782   840   886   939
 BINT1                             Ext                   -   116   122   135
                                         172   218   267   426   523   538   569
                                         584   612   688   735   778   846   892
                                         935
 BINT110                           Ext                   -   263
 BINT13                            Ext                   -   272   431   617
                                         783   940
 BINT14                            Ext                   -   261   420   772
 BINT17                            Ext                   -   421   607
 BINT18                            Ext                   -   123   129
 BINT2                             Ext                   -   178   224   276
                                         335   382   435   621   694   703   741
                                         750   787   852   898   944
 BINT26                            Ext                   -   773   930
 BINT27                            Ext                   -   136   142
 BINT3                             Ext                   -   167   184   230
                                         324   341   388   494   529   575   836
                                         857   861   903   907
 BINT4                             Ext                   -   189   193   235
                                         239   347   394   534   580   699   746
 BINT45                            Ext                   -   422   608   774
                                         931
 BINT5                             Ext                   -   511   970   971
 BINT66                            Ext                   -   128   141
 BINT79                            Ext                   -   606   929
 BINT8                             Ext                   -   262   264   423
                                         609   775   932
 BINT9                             Ext                   -   117   678
 CHR_k                             Ext                   -   663
 CHR_m                             Ext                   -   503
 DOCOL                             Ext                   -   110   150   155
                                         160   205   214   306   311   316   363
                                         372   467   472   477   487   500   550
                                         559   650   655   660   715   725   817
                                         822   827   873   882
 DOCSTR                            Ext                   -   113   119   125
                                         131   138   163   279   319   438   490
                                         504   624   664   668   790   830   947
                                         979
 DOFLASHP                          Ext                   -   173   179   185
                                         190   194   219   225   231   236   240
                                         330   336   342   348   352   377   383
                                         389   395   399   518   524   530   535
                                         539   564   570   576   581   585   683
                                         689   695   700   704   730   736   742
                                         747   751   841   847   853   858   862
                                         887   893   899   904   908   984
 DOIDNT                            Ext                   -   209   296   367
                                         457   554   640   719   806   877   963
 DOLIST                            Ext                   -   270   429   615
                                         781   938
 DOREAL                            Ext                   -   481
 DUP                               Ext                   -   208   366   480
                                         553   718   876
 DUPTYPEEXT?                       Ext                   -   203   361   548
                                         713   871
 DUPTYPEREAL?                      Ext                   -   158   314   475
                                         658   825
 EQUALNOT                          Ext                   -   212   370   557
                                         723   880
 EXTN                              Ext                   -   168   325   495
                                         512   679   837
 FALSE                             Ext                   -   256   415   601
                                         767   924
 FOUR                              Ext                   -   153   309   470
                                         653   820
=ISAform                           Rel       0 #00000000 -   108
 IT                                Ext                   -   213   371   558
                                         724   881
 ITE                               Ext                   -   486
 MINUSONE                          Ext                   -   287   290   293
                                         448   451   454   631   634   637   797
                                         800   803   954   957   960
 NOVAL                             Ext                   -   171   177   183
                                         188   217   223   229   234   328   334
                                         340   346   375   381   387   393   516
                                         522   528   533   562   568   574   579
                                         681   687   693   698   728   734   740
                                         745   839   845   851   856   885   891
                                         897   902
=RomId                             Abs     806 #00000326 -    97
 SEMI                              Ext                   -   201   244   249
                                         254   259   273   359   403   408   413
                                         418   432   498   514   546   589   594
                                         599   604   618   711   755   760   765
                                         770   784   869   912   917   922   927
                                         941   988
 TRUE                              Ext                   -   198   246   251
                                         356   405   410   543   591   596   708
                                         757   762   866   914   919
 ^IfMain                           Ext                   -   985
 ^IfSetField                       Ext                   -   195   241   353
                                         400   540   586   705   752   863   909
 ^IfSetFieldValue                  Ext                   -   174   180   186
                                         191   220   226   232   237   331   337
                                         343   349   378   384   390   396   519
                                         525   531   536   565   571   577   582
                                         684   690   696   701   731   737   743
                                         748   842   848   854   859   888   894
                                         900   905
 case                              Ext                   -   159   204   315
                                         362   476   549   659   714   826   872
 um/                               Ext                   -   675
 umEND                             Ext                   -   166   323   493
                                         508   676   833
 umP                               Ext                   -   507   667
 um^                               Ext                   -   674
Saturn Assembler                                       Tue Apr 21 18:49:40 2009
V3.0.9 (04/15/2007)   Statistics                         ISAform.a      Page    3

Input Parameters

  Source file name is ISAform.a

  Listing file name is ISAform.l

  Object file name is ISAform.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
