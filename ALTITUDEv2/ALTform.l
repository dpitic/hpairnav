Saturn Assembler                                       Wed Jun 10 22:05:34 2009
V3.0.9 (04/15/2007)                                      ALTform.a      Page    1

    1               * File  ALTform.s       1
    2               * RPL
    3               * File  ALTform.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTform.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               ********************************************************************
    6               * NAME:            ALTform
    7               * DESCRIPTION:     Displays INPUT and OUTPUT form for ALT.
    8               * TODO:     1)     Make QNH field a combo field and allow user to
    9               *                  choose 1013.25_mbar as the standard QNH and
   10               *                  alternatively allow user to input or edit QNH
   11               * File  ALTform.s       9
   12
   13               * File  ALTform.s       10
   14               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\informbox.h
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
   81
   82
   83
   84
   85
   86
   87               * Do not modify any of these constants
   88
   89               * Do not modify any of these constants
   90               * ( was zint
   91
   92
   93
   94
   95
   96
   97
   98
   99
  100               *|| Resuming file ALTform.s at line 10
  101               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALT.h
  102
  103               =RomId  EQU     #327
  104               * ROMID set to 327
  105
  106
  107
  108
  109
  110
  111               *|| Resuming file ALTform.s at line 11
  112 00000         =ALTform
  113               * File  ALTform.s       13
  114 00000 00000           CON(5)  =DOCOL
  115               * Label definitions (X pos     Y pos)
  116               * File  ALTform.s       15
  117 00005 00000           CON(5)  =DOCSTR
  118 0000A F0000           CON(5)  15
  119 0000F 3414C44         NIBASC  \CALT:\
            5A3
  120 00019 00000           CON(5)  =BINT1
  121 0001E 00000           CON(5)  =BINT9
  122               * File  ALTform.s       16
  123 00023 00000           CON(5)  =DOCSTR
  124 00028 D0000           CON(5)  13
  125 0002D 15E484A         NIBASC  \QNH:\
            3
  126 00035 00000           CON(5)  =BINT68
  127 0003A 00000           CON(5)  =BINT9
  128               * File  ALTform.s       17
  129 0003F 00000           CON(5)  =DOCSTR
  130 00044 F0000           CON(5)  15
  131 00049 0514C44         NIBASC  \PALT:\
            5A3
  132 00053 00000           CON(5)  =BINT1
  133 00058 00000           CON(5)  =BINT18
  134               * File  ALTform.s       18
  135 0005D 00000           CON(5)  =DOCSTR
  136 00062 D0000           CON(5)  13
  137 00067 351445A         NIBASC  \SAT:\
            3
  138 0006F 00000           CON(5)  =BINT68
  139 00074 00000           CON(5)  =BINT18
  140               * File  ALTform.s       19
  141 00079 00000           CON(5)  =DOCSTR
  142 0007E 11000           CON(5)  17
  143 00083 74E4443         NIBASC  \GNDST:\
            545A3
  144 0008F 00000           CON(5)  =BINT1
  145 00094 00000           CON(5)  =BINT27
  146               * File  ALTform.s       20
  147 00099 00000           CON(5)  =DOCSTR
  148 0009E F0000           CON(5)  15
  149 000A3 4514C44         NIBASC  \TALT:\
            5A3
  150 000AD 00000           CON(5)  =BINT1
  151 000B2 00000           CON(5)  =BINT36
  152               * File  ALTform.s       21
  153 000B7 00000           CON(5)  =DOCSTR
  154 000BC F0000           CON(5)  15
  155 000C1 4414C44         NIBASC  \DALT:\
            5A3
  156 000CB 00000           CON(5)  =BINT1
  157 000D0 00000           CON(5)  =BINT45
  158               * File  ALTform.s       22
  159
  160               * Field definitions
  161               * File  ALTform.s       24
  162               * Field CA definition
  163               * File  ALTform.s       25
  164 000D5 00000           CON(5)  ='
  165 000DA 00000           CON(5)  =DOCOL
  166               * Field Message Handler
  167               * File  ALTform.s       26
  168 000DF 00000           CON(5)  =FOUR
  169 000E4 00000           CON(5)  =#=case
  170 000E9 00000           CON(5)  =DOCOL
  171               * Get internal field value
  172               * File  ALTform.s       27
  173 000EE 00000           CON(5)  =DUPTYPEREAL?
  174 000F3 00000           CON(5)  =case
  175 000F8 00000           CON(5)  =DOCOL
  176               * REAL
  177               * File  ALTform.s       28
  178 000FD 00000           CON(5)  =DOCSTR
  179 00102 90000           CON(5)  9
  180 00107 6647            NIBASC  \ft\
  181 0010B 00000           CON(5)  =umEND
  182 00110 00000           CON(5)  =BINT3
  183 00115 00000           CON(5)  =EXTN
  184               * Add default feet units
  185               * File  ALTform.s       29
  186 0011A 00000           CON(5)  =NOVAL
  187 0011F 00000           CON(5)  =BINT5
  188               * File  ALTform.s       30
  189 00124 00000           CON(5)  =DOFLASHP
  190 00129 0000000         CON(7)  =^IfSetFieldValue
  191               * Reset TA field
  192               * File  ALTform.s       31
  193 00130 00000           CON(5)  =NOVAL
  194 00135 00000           CON(5)  =BINT6
  195               * File  ALTform.s       32
  196 0013A 00000           CON(5)  =DOFLASHP
  197 0013F 0000000         CON(7)  =^IfSetFieldValue
  198               * Reset DA field
  199               * File  ALTform.s       33
  200 00146 00000           CON(5)  =BINT1
  201 0014B 00000           CON(5)  =DOFLASHP
  202 00150 0000000         CON(7)  =^IfGetFieldValue
  203               * Get QNH field value
  204               * File  ALTform.s       34
  205 00157 00000           CON(5)  =NOVAL
  206 0015C 00000           CON(5)  =EQUALNOT
  207 00161 00000           CON(5)  =IT
  208 00166 00000           CON(5)  =DOCOL
  209               * IF QNH is NOT NOVAL
  210               * File  ALTform.s       35
  211 0016B 00000           CON(5)  =NOVAL
  212 00170 00000           CON(5)  =BINT2
  213               * THEN
  214               * File  ALTform.s       36
  215 00175 00000           CON(5)  =DOFLASHP
  216 0017A 0000000         CON(7)  =^IfSetFieldValue
  217               * Reset PA FIELD
  218               * File  ALTform.s       37
  219 00181 00000           CON(5)  =SEMI
  220               * File  ALTform.s       38
  221 00186 00000           CON(5)  =TRUE
  222               * Return external value
  223               * File  ALTform.s       39
  224 0018B 00000           CON(5)  =SEMI
  225               * File  ALTform.s       40
  226 00190 00000           CON(5)  =DUPTYPEEXT?
  227 00195 00000           CON(5)  =case
  228 0019A 00000           CON(5)  =DOCOL
  229               * UNIT
  230               * File  ALTform.s       41
  231 0019F 00000           CON(5)  =DUP
  232 001A4 00000           CON(5)  =DOIDNT
  233 001A9 20              CON(2)  2
  234 001AB 3414            NIBASC  \CA\
  235 001AF 00000           CON(5)  =EQUALNOT
  236 001B4 00000           CON(5)  =IT
  237 001B9 00000           CON(5)  =DOCOL
  238               * IF field CA is changed
  239               * File  ALTform.s       42
  240 001BE 00000           CON(5)  =NOVAL
  241 001C3 00000           CON(5)  =BINT5
  242               * File  ALTform.s       43
  243 001C8 00000           CON(5)  =DOFLASHP
  244 001CD 0000000         CON(7)  =^IfSetFieldValue
  245               * Reset TA field
  246               * File  ALTform.s       44
  247 001D4 00000           CON(5)  =NOVAL
  248 001D9 00000           CON(5)  =BINT6
  249               * File  ALTform.s       45
  250 001DE 00000           CON(5)  =DOFLASHP
  251 001E3 0000000         CON(7)  =^IfSetFieldValue
  252               * Reset DA field
  253               * File  ALTform.s       46
  254 001EA 00000           CON(5)  =BINT1
  255 001EF 00000           CON(5)  =DOFLASHP
  256 001F4 0000000         CON(7)  =^IfGetFieldValue
  257               * Get QNH field value
  258               * File  ALTform.s       47
  259 001FB 00000           CON(5)  =NOVAL
  260 00200 00000           CON(5)  =EQUALNOT
  261 00205 00000           CON(5)  =IT
  262 0020A 00000           CON(5)  =DOCOL
  263               * IF QNH is NOT NOVAL
  264               * File  ALTform.s       48
  265 0020F 00000           CON(5)  =NOVAL
  266 00214 00000           CON(5)  =BINT2
  267               * THEN
  268               * File  ALTform.s       49
  269 00219 00000           CON(5)  =DOFLASHP
  270 0021E 0000000         CON(7)  =^IfSetFieldValue
  271               * Reset PA FIELD
  272               * File  ALTform.s       50
  273 00225 00000           CON(5)  =SEMI
  274               * File  ALTform.s       51
  275 0022A 00000           CON(5)  =SEMI
  276               * File  ALTform.s       52
  277 0022F 00000           CON(5)  =TRUE
  278               * Return external value
  279               * File  ALTform.s       53
  280 00234 00000           CON(5)  =SEMI
  281               * File  ALTform.s       54
  282 00239 00000           CON(5)  =TRUE
  283               * Message was handled
  284               * File  ALTform.s       55
  285 0023E 00000           CON(5)  =SEMI
  286               * File  ALTform.s       56
  287 00243 00000           CON(5)  =FALSE
  288               * No other messages handled
  289               * File  ALTform.s       57
  290 00248 00000           CON(5)  =SEMI
  291               * File  ALTform.s       58
  292 0024D 00000           CON(5)  =BINT22
  293 00252 00000           CON(5)  =BINT8
  294 00257 00000           CON(5)  =BINT43
  295 0025C 00000           CON(5)  =BINT8
  296               * Position and size
  297               * File  ALTform.s       59
  298 00261 00000           CON(5)  =BINT1
  299               * Field type: TEXT
  300               * File  ALTform.s       60
  301 00266 00000           CON(5)  =DOLIST
  302 0026B 00000           CON(5)  =BINT0
  303 00270 00000           CON(5)  =BINT13
  304 00275 00000           CON(5)  =SEMI
  305               * Allowed type: REAL, UNIT
  306               * File  ALTform.s       61
  307 0027A 00000           CON(5)  =BINT2
  308               * Decompile with stack appearance
  309               * File  ALTform.s       62
  310 0027F 00000           CON(5)  =DOCSTR
  311 00284 14000           CON(5)  65
  312 00289 3414C49         NIBASC  \CALIBRATED ALTITUDE \
            4242514
            4554440214C445944555445402

  313 002B1 8264F42         NIBASC  \(FOR TALT)\
            5024514
            C44592
  314               * Help string
  315               * File  ALTform.s       63
  316 002C5 00000           CON(5)  =MINUSONE
  317               * ChooseData N/A
  318               * File  ALTform.s       64
  319 002CA 00000           CON(5)  =MINUSONE
  320               * ChooseDecomile
  321               * File  ALTform.s       65
  322 002CF 00000           CON(5)  =MINUSONE
  323               * Reset value
  324               * File  ALTform.s       66
  325 002D4 00000           CON(5)  =DOIDNT
  326 002D9 20              CON(2)  2
  327 002DB 3414            NIBASC  \CA\
  328               * Initial value
  329               * File  ALTform.s       67
  330
  331               * File  ALTform.s       68
  332               * Field QNH definition
  333               * File  ALTform.s       69
  334 002DF 00000           CON(5)  ='
  335 002E4 00000           CON(5)  =DOCOL
  336               * Field Message Handler
  337               * File  ALTform.s       70
  338 002E9 00000           CON(5)  =FIVE
  339 002EE 00000           CON(5)  =#=case
  340 002F3 00000           CON(5)  =DOCOL
  341               * Get internval value
  342               * File  ALTform.s       71
  343 002F8 00000           CON(5)  =DUPTYPEREAL?
  344 002FD 00000           CON(5)  =case
  345 00302 00000           CON(5)  =DOCOL
  346               * REAL
  347               * File  ALTform.s       72
  348 00307 00000           CON(5)  =DUP
  349 0030C 00000           CON(5)  =DOREAL
  350 00311 100             NIBHEX  100
  351 00314 0000000         NIBHEX  000000000005
            00005
  352 00320 0               NIBHEX  0
  353 00321 00000           CON(5)  =%<
  354 00326 00000           CON(5)  =ITE
  355 0032B 00000           CON(5)  =DOCOL
  356               * IF it is < 50
  357               * File  ALTform.s       73
  358 00330 00000           CON(5)  =DOCSTR
  359 00335 D0000           CON(5)  13
  360 0033A 96E6847         NIBASC  \inHg\
            6
  361 00342 00000           CON(5)  =umEND
  362 00347 00000           CON(5)  =BINT3
  363 0034C 00000           CON(5)  =EXTN
  364               * add inHg units
  365               * File  ALTform.s       74
  366 00351 00000           CON(5)  =SEMI
  367               * File  ALTform.s       75
  368 00356 00000           CON(5)  =DOCOL
  369               * ELSE
  370               * File  ALTform.s       76
  371 0035B 00000           CON(5)  =CHR_m
  372 00360 00000           CON(5)  =DOCSTR
  373 00365 B0000           CON(5)  11
  374 0036A 261627          NIBASC  \bar\
  375 00370 00000           CON(5)  =umP
  376 00375 00000           CON(5)  =umEND
  377               * add mbar units
  378               * File  ALTform.s       77
  379 0037A 00000           CON(5)  =BINT5
  380 0037F 00000           CON(5)  =EXTN
  381               * File  ALTform.s       78
  382 00384 00000           CON(5)  =SEMI
  383               * File  ALTform.s       79
  384 00389 00000           CON(5)  =NOVAL
  385 0038E 00000           CON(5)  =BINT5
  386               * File  ALTform.s       80
  387 00393 00000           CON(5)  =DOFLASHP
  388 00398 0000000         CON(7)  =^IfSetFieldValue
  389               * Reset TA field
  390               * File  ALTform.s       81
  391 0039F 00000           CON(5)  =NOVAL
  392 003A4 00000           CON(5)  =BINT6
  393               * File  ALTform.s       82
  394 003A9 00000           CON(5)  =DOFLASHP
  395 003AE 0000000         CON(7)  =^IfSetFieldValue
  396               * Reset DA field
  397               * File  ALTform.s       83
  398 003B5 00000           CON(5)  =BINT0
  399 003BA 00000           CON(5)  =DOFLASHP
  400 003BF 0000000         CON(7)  =^IfGetFieldValue
  401               * Get CA field value
  402               * File  ALTform.s       84
  403 003C6 00000           CON(5)  =NOVAL
  404 003CB 00000           CON(5)  =EQUALNOT
  405 003D0 00000           CON(5)  =IT
  406 003D5 00000           CON(5)  =DOCOL
  407               * IF it is NOT NOVAL
  408               * File  ALTform.s       85
  409 003DA 00000           CON(5)  =NOVAL
  410 003DF 00000           CON(5)  =BINT2
  411               * THEN
  412               * File  ALTform.s       86
  413 003E4 00000           CON(5)  =DOFLASHP
  414 003E9 0000000         CON(7)  =^IfSetFieldValue
  415               * Reset PA field
  416               * File  ALTform.s       87
  417 003F0 00000           CON(5)  =SEMI
  418               * File  ALTform.s       88
  419 003F5 00000           CON(5)  =TRUE
  420               * Return external value
  421               * File  ALTform.s       89
  422 003FA 00000           CON(5)  =SEMI
  423               * File  ALTform.s       90
  424 003FF 00000           CON(5)  =DUPTYPEEXT?
  425 00404 00000           CON(5)  =case
  426 00409 00000           CON(5)  =DOCOL
  427               * File  ALTform.s       91
  428 0040E 00000           CON(5)  =DUP
  429 00413 00000           CON(5)  =DOIDNT
  430 00418 30              CON(2)  3
  431 0041A 15E484          NIBASC  \QNH\
  432 00420 00000           CON(5)  =EQUALNOT
  433 00425 00000           CON(5)  =IT
  434 0042A 00000           CON(5)  =DOCOL
  435               * File  ALTform.s       92
  436 0042F 00000           CON(5)  =NOVAL
  437 00434 00000           CON(5)  =BINT5
  438               * File  ALTform.s       93
  439 00439 00000           CON(5)  =DOFLASHP
  440 0043E 0000000         CON(7)  =^IfSetFieldValue
  441               * Reset TA field
  442               * File  ALTform.s       94
  443 00445 00000           CON(5)  =NOVAL
  444 0044A 00000           CON(5)  =BINT6
  445               * File  ALTform.s       95
  446 0044F 00000           CON(5)  =DOFLASHP
  447 00454 0000000         CON(7)  =^IfSetFieldValue
  448               * Reset DA field
  449               * File  ALTform.s       96
  450 0045B 00000           CON(5)  =BINT0
  451 00460 00000           CON(5)  =DOFLASHP
  452 00465 0000000         CON(7)  =^IfGetFieldValue
  453               * Get CA field value
  454               * File  ALTform.s       97
  455 0046C 00000           CON(5)  =NOVAL
  456 00471 00000           CON(5)  =EQUALNOT
  457 00476 00000           CON(5)  =IT
  458 0047B 00000           CON(5)  =DOCOL
  459               * IF it it NOT NOVAL
  460               * File  ALTform.s       98
  461 00480 00000           CON(5)  =NOVAL
  462 00485 00000           CON(5)  =BINT2
  463               * THEN
  464               * File  ALTform.s       99
  465 0048A 00000           CON(5)  =DOFLASHP
  466 0048F 0000000         CON(7)  =^IfSetFieldValue
  467               * Reset PA field
  468               * File  ALTform.s       100
  469 00496 00000           CON(5)  =SEMI
  470               * File  ALTform.s       101
  471 0049B 00000           CON(5)  =SEMI
  472               * File  ALTform.s       102
  473 004A0 00000           CON(5)  =TRUE
  474               * Return external value
  475               * File  ALTform.s       103
  476 004A5 00000           CON(5)  =SEMI
  477               * File  ALTform.s       104
  478 004AA 00000           CON(5)  =TRUE
  479               * Message was handled
  480               * File  ALTform.s       105
  481 004AF 00000           CON(5)  =SEMI
  482               * File  ALTform.s       106
  483 004B4 00000           CON(5)  =FALSE
  484               * No other messages handled
  485               * File  ALTform.s       107
  486 004B9 00000           CON(5)  =SEMI
  487               * File  ALTform.s       108
  488 004BE 00000           CON(5)  =BINT85
  489 004C3 00000           CON(5)  =BINT8
  490 004C8 00000           CON(5)  =BINT45
  491 004CD 00000           CON(5)  =BINT8
  492               * Position and size
  493               * File  ALTform.s       109
  494 004D2 00000           CON(5)  =BINT1
  495               * Field type: TEXT
  496               * File  ALTform.s       110
  497 004D7 00000           CON(5)  =DOLIST
  498 004DC 00000           CON(5)  =BINT0
  499 004E1 00000           CON(5)  =BINT13
  500 004E6 00000           CON(5)  =SEMI
  501               * Allowed type: REAL, UNIT
  502               * File  ALTform.s       111
  503 004EB 00000           CON(5)  =BINT2
  504               * Decompile with stack appearance
  505               * File  ALTform.s       112
  506 004F0 00000           CON(5)  =DOCSTR
  507 004F5 72000           CON(5)  39
  508 004FA 14C4459         NIBASC  \ALTIMETER SETTING\
            4D45445
            5425023554454594E474

  509               * Help string
  510               * File  ALTform.s       113
  511 0051C 00000           CON(5)  =MINUSONE
  512               * ChooseData N/A
  513               * File  ALTform.s       114
  514 00521 00000           CON(5)  =MINUSONE
  515               * ChooseDecompile
  516               * File  ALTform.s       115
  517 00526 00000           CON(5)  =MINUSONE
  518               * Reset value
  519               * File  ALTform.s       116
  520 0052B 00000           CON(5)  =DOIDNT
  521 00530 30              CON(2)  3
  522 00532 15E484          NIBASC  \QNH\
  523               * Initial value
  524               * File  ALTform.s       117
  525
  526               * File  ALTform.s       118
  527               * Field PA definition
  528               * File  ALTform.s       119
  529 00538 00000           CON(5)  ='
  530 0053D 00000           CON(5)  =DOCOL
  531               * Field message handler
  532               * File  ALTform.s       120
  533 00542 00000           CON(5)  =FOUR
  534 00547 00000           CON(5)  =#=case
  535 0054C 00000           CON(5)  =DOCOL
  536               * Get internal value
  537               * File  ALTform.s       121
  538 00551 00000           CON(5)  =DUPTYPEREAL?
  539 00556 00000           CON(5)  =case
  540 0055B 00000           CON(5)  =DOCOL
  541               * REAL
  542               * File  ALTform.s       122
  543 00560 00000           CON(5)  =DOCSTR
  544 00565 90000           CON(5)  9
  545 0056A 6647            NIBASC  \ft\
  546 0056E 00000           CON(5)  =umEND
  547 00573 00000           CON(5)  =BINT3
  548 00578 00000           CON(5)  =EXTN
  549               * Add default feet units
  550               * File  ALTform.s       123
  551 0057D 00000           CON(5)  =NOVAL
  552 00582 00000           CON(5)  =BINT5
  553               * File  ALTform.s       124
  554 00587 00000           CON(5)  =DOFLASHP
  555 0058C 0000000         CON(7)  =^IfSetFieldValue
  556               * Reset TA field
  557               * File  ALTform.s       125
  558 00593 00000           CON(5)  =NOVAL
  559 00598 00000           CON(5)  =BINT6
  560               * File  ALTform.s       126
  561 0059D 00000           CON(5)  =DOFLASHP
  562 005A2 0000000         CON(7)  =^IfSetFieldValue
  563               * Reset DA field
  564               * File  ALTform.s       127
  565 005A9 00000           CON(5)  =BINT1
  566 005AE 00000           CON(5)  =DOFLASHP
  567 005B3 0000000         CON(7)  =^IfGetFieldValue
  568               * Get QNH field
  569               * File  ALTform.s       128
  570 005BA 00000           CON(5)  =NOVAL
  571 005BF 00000           CON(5)  =EQUALNOT
  572 005C4 00000           CON(5)  =IT
  573 005C9 00000           CON(5)  =DOCOL
  574               * IF it is NOT NOVAL
  575               * File  ALTform.s       129
  576 005CE 00000           CON(5)  =NOVAL
  577 005D3 00000           CON(5)  =BINT0
  578               * THEN
  579               * File  ALTform.s       130
  580 005D8 00000           CON(5)  =DOFLASHP
  581 005DD 0000000         CON(7)  =^IfSetFieldValue
  582               * Reset CA field
  583               * File  ALTform.s       131
  584 005E4 00000           CON(5)  =SEMI
  585               * File  ALTform.s       132
  586 005E9 00000           CON(5)  =DUP
  587 005EE 00000           CON(5)  =DOEXT
  588 005F3 00000           CON(5)  =DOREAL
  589 005F8 400             NIBHEX  400
  590 005FB 0000000         NIBHEX  000000000002
            00002
  591 00607 0               NIBHEX  0
  592 00608 00000           CON(5)  =DOCSTR
  593 0060D 70000           CON(5)  7
  594 00612 D6              NIBASC  \m\
  595 00614 00000           CON(5)  =umEND
  596 00619 00000           CON(5)  =SEMI
  597               * File  ALTform.s       133
  598 0061E 00000           CON(5)  =UM>?
  599 00623 00000           CON(5)  =%0<>
  600 00628 00000           CON(5)  =IT
  601 0062D 00000           CON(5)  =DOCOL
  602               * IF PA is > 20 km
  603               * File  ALTform.s       134
  604 00632 00000           CON(5)  =DROP
  605               * DROP field value
  606               * File  ALTform.s       135
  607 00637 00000           CON(5)  =BINT1
  608 0063C 00000           CON(5)  =DOFLASHP
  609 00641 0000000         CON(7)  =^IfSetField
  610               * Keep field focus
  611               * File  ALTform.s       136
  612 00648 00000           CON(5)  =NOVAL
  613               * Set PA field value to NOVAL
  614               * File  ALTform.s       137
  615 0064D 00000           CON(5)  =SEMI
  616               * File  ALTform.s       138
  617 00652 00000           CON(5)  =TRUE
  618               * Return external value
  619               * File  ALTform.s       139
  620 00657 00000           CON(5)  =SEMI
  621               * File  ALTform.s       140
  622 0065C 00000           CON(5)  =DUPTYPEEXT?
  623 00661 00000           CON(5)  =case
  624 00666 00000           CON(5)  =DOCOL
  625               * UNIT
  626               * File  ALTform.s       141
  627 0066B 00000           CON(5)  =DUP
  628 00670 00000           CON(5)  =DOIDNT
  629 00675 20              CON(2)  2
  630 00677 0514            NIBASC  \PA\
  631 0067B 00000           CON(5)  =EQUALNOT
  632 00680 00000           CON(5)  =IT
  633 00685 00000           CON(5)  =DOCOL
  634               * IF the value has changed
  635               * File  ALTform.s       142
  636 0068A 00000           CON(5)  =NOVAL
  637 0068F 00000           CON(5)  =BINT5
  638               * File  ALTform.s       143
  639 00694 00000           CON(5)  =DOFLASHP
  640 00699 0000000         CON(7)  =^IfSetFieldValue
  641               * Reset TA field
  642               * File  ALTform.s       144
  643 006A0 00000           CON(5)  =NOVAL
  644 006A5 00000           CON(5)  =BINT6
  645               * File  ALTform.s       145
  646 006AA 00000           CON(5)  =DOFLASHP
  647 006AF 0000000         CON(7)  =^IfSetFieldValue
  648               * Reset DA field
  649               * File  ALTform.s       146
  650 006B6 00000           CON(5)  =BINT1
  651 006BB 00000           CON(5)  =DOFLASHP
  652 006C0 0000000         CON(7)  =^IfGetFieldValue
  653               * Get QNH field
  654               * File  ALTform.s       147
  655 006C7 00000           CON(5)  =NOVAL
  656 006CC 00000           CON(5)  =EQUALNOT
  657 006D1 00000           CON(5)  =IT
  658 006D6 00000           CON(5)  =DOCOL
  659               * IF it is NOT NOVAL
  660               * File  ALTform.s       148
  661 006DB 00000           CON(5)  =NOVAL
  662 006E0 00000           CON(5)  =BINT0
  663               * THEN
  664               * File  ALTform.s       149
  665 006E5 00000           CON(5)  =DOFLASHP
  666 006EA 0000000         CON(7)  =^IfSetFieldValue
  667               * Reset CA field
  668               * File  ALTform.s       150
  669 006F1 00000           CON(5)  =SEMI
  670               * File  ALTform.s       151
  671 006F6 00000           CON(5)  =DUP
  672 006FB 00000           CON(5)  =DOEXT
  673 00700 00000           CON(5)  =DOREAL
  674 00705 400             NIBHEX  400
  675 00708 0000000         NIBHEX  000000000002
            00002
  676 00714 0               NIBHEX  0
  677 00715 00000           CON(5)  =DOCSTR
  678 0071A 70000           CON(5)  7
  679 0071F D6              NIBASC  \m\
  680 00721 00000           CON(5)  =umEND
  681 00726 00000           CON(5)  =SEMI
  682               * File  ALTform.s       152
  683 0072B 00000           CON(5)  =UM>?
  684 00730 00000           CON(5)  =%0<>
  685 00735 00000           CON(5)  =IT
  686 0073A 00000           CON(5)  =DOCOL
  687               * IF PA is > 20 km
  688               * File  ALTform.s       153
  689 0073F 00000           CON(5)  =DROP
  690               * DROP field balue
  691               * File  ALTform.s       154
  692 00744 00000           CON(5)  =BINT1
  693 00749 00000           CON(5)  =DOFLASHP
  694 0074E 0000000         CON(7)  =^IfSetField
  695               * Keep field focus
  696               * File  ALTform.s       155
  697 00755 00000           CON(5)  =NOVAL
  698               * Set PA field value to NOVAL
  699               * File  ALTform.s       156
  700 0075A 00000           CON(5)  =SEMI
  701               * File  ALTform.s       157
  702 0075F 00000           CON(5)  =SEMI
  703               * File  ALTform.s       158
  704 00764 00000           CON(5)  =TRUE
  705               * Return external value
  706               * File  ALTform.s       159
  707 00769 00000           CON(5)  =SEMI
  708               * File  ALTform.s       160
  709 0076E 00000           CON(5)  =TRUE
  710               * Message was handled
  711               * File  ALTform.s       161
  712 00773 00000           CON(5)  =SEMI
  713               * File  ALTform.s       162
  714 00778 00000           CON(5)  =FALSE
  715               * No other messages handled
  716               * File  ALTform.s       163
  717 0077D 00000           CON(5)  =SEMI
  718               * File  ALTform.s       164
  719 00782 00000           CON(5)  =BINT22
  720 00787 00000           CON(5)  =BINT17
  721 0078C 00000           CON(5)  =BINT43
  722 00791 00000           CON(5)  =BINT8
  723               * Position & size
  724               * File  ALTform.s       165
  725 00796 00000           CON(5)  =BINT1
  726               * Field type: TEXT
  727               * File  ALTform.s       166
  728 0079B 00000           CON(5)  =DOLIST
  729 007A0 00000           CON(5)  =BINT0
  730 007A5 00000           CON(5)  =BINT13
  731 007AA 00000           CON(5)  =SEMI
  732               * Allowed type: REAL, UNIT
  733               * File  ALTform.s       167
  734 007AF 00000           CON(5)  =BINT2
  735               * Decompile with stack appearance
  736               * File  ALTform.s       168
  737 007B4 00000           CON(5)  =DOCSTR
  738 007B9 72000           CON(5)  39
  739 007BE 0525543         NIBASC  \PRESSURE ALTITUDE\
            5355525
            540214C4459445554454

  740               * Help string
  741               * File  ALTform.s       169
  742 007E0 00000           CON(5)  =MINUSONE
  743               * ChooseData N/A
  744               * File  ALTform.s       170
  745 007E5 00000           CON(5)  =MINUSONE
  746               * ChooseDecomile
  747               * File  ALTform.s       171
  748 007EA 00000           CON(5)  =MINUSONE
  749               * Reset value
  750               * File  ALTform.s       172
  751 007EF 00000           CON(5)  =DOIDNT
  752 007F4 20              CON(2)  2
  753 007F6 0514            NIBASC  \PA\
  754               * Initial value
  755               * File  ALTform.s       173
  756
  757               * File  ALTform.s       174
  758               * Field SAT definition
  759               * File  ALTform.s       175
  760 007FA 00000           CON(5)  ='
  761 007FF 00000           CON(5)  =DOCOL
  762               * Field message handler
  763               * File  ALTform.s       176
  764 00804 00000           CON(5)  =FOUR
  765 00809 00000           CON(5)  =#=case
  766 0080E 00000           CON(5)  =DOCOL
  767               * Get internal value
  768               * File  ALTform.s       177
  769 00813 00000           CON(5)  =DUPTYPEREAL?
  770 00818 00000           CON(5)  =case
  771 0081D 00000           CON(5)  =DOCOL
  772               * REAL
  773               * File  ALTform.s       178
  774 00822 00000           CON(5)  =DOCSTR
  775 00827 90000           CON(5)  9
  776 0082C 0B              CON(2)  #B0
  777 0082E 34              NIBASC  \C\
  778 00830 00000           CON(5)  =umEND
  779 00835 00000           CON(5)  =BINT3
  780 0083A 00000           CON(5)  =EXTN
  781               * Add default deg C units
  782               * File  ALTform.s       179
  783 0083F 00000           CON(5)  =NOVAL
  784 00844 00000           CON(5)  =BINT5
  785               * Reset TA field
  786               * File  ALTform.s       180
  787 00849 00000           CON(5)  =DOFLASHP
  788 0084E 0000000         CON(7)  =^IfSetFieldValue
  789               * File  ALTform.s       181
  790 00855 00000           CON(5)  =NOVAL
  791 0085A 00000           CON(5)  =BINT6
  792               * Reset DA field
  793               * File  ALTform.s       182
  794 0085F 00000           CON(5)  =DOFLASHP
  795 00864 0000000         CON(7)  =^IfSetFieldValue
  796               * File  ALTform.s       183
  797 0086B 00000           CON(5)  =TRUE
  798               * Return external value
  799               * File  ALTform.s       184
  800 00870 00000           CON(5)  =SEMI
  801               * File  ALTform.s       185
  802 00875 00000           CON(5)  =DUPTYPEEXT?
  803 0087A 00000           CON(5)  =case
  804 0087F 00000           CON(5)  =DOCOL
  805               * UNIT
  806               * File  ALTform.s       186
  807 00884 00000           CON(5)  =DUP
  808 00889 00000           CON(5)  =DOIDNT
  809 0088E 30              CON(2)  3
  810 00890 351445          NIBASC  \SAT\
  811 00896 00000           CON(5)  =EQUALNOT
  812 0089B 00000           CON(5)  =IT
  813 008A0 00000           CON(5)  =DOCOL
  814               * IF the value has changed
  815               * File  ALTform.s       187
  816 008A5 00000           CON(5)  =NOVAL
  817 008AA 00000           CON(5)  =BINT5
  818               * Reset TA field
  819               * File  ALTform.s       188
  820 008AF 00000           CON(5)  =DOFLASHP
  821 008B4 0000000         CON(7)  =^IfSetFieldValue
  822               * File  ALTform.s       189
  823 008BB 00000           CON(5)  =NOVAL
  824 008C0 00000           CON(5)  =BINT6
  825               * Reset DA field
  826               * File  ALTform.s       190
  827 008C5 00000           CON(5)  =DOFLASHP
  828 008CA 0000000         CON(7)  =^IfSetFieldValue
  829               * File  ALTform.s       191
  830 008D1 00000           CON(5)  =SEMI
  831               * File  ALTform.s       192
  832 008D6 00000           CON(5)  =TRUE
  833               * Return external value
  834               * File  ALTform.s       193
  835 008DB 00000           CON(5)  =SEMI
  836               * File  ALTform.s       194
  837 008E0 00000           CON(5)  =TRUE
  838               * Message was handled
  839               * File  ALTform.s       195
  840 008E5 00000           CON(5)  =SEMI
  841               * File  ALTform.s       196
  842 008EA 00000           CON(5)  =FALSE
  843               * No other messages handled
  844               * File  ALTform.s       197
  845 008EF 00000           CON(5)  =SEMI
  846               * File  ALTform.s       198
  847 008F4 00000           CON(5)  =BINT85
  848 008F9 00000           CON(5)  =BINT17
  849 008FE 00000           CON(5)  =BINT45
  850 00903 00000           CON(5)  =BINT8
  851               * Position & size
  852               * File  ALTform.s       199
  853 00908 00000           CON(5)  =BINT1
  854               * Field type: TEXT
  855               * File  ALTform.s       200
  856 0090D 00000           CON(5)  =DOLIST
  857 00912 00000           CON(5)  =BINT0
  858 00917 00000           CON(5)  =BINT13
  859 0091C 00000           CON(5)  =SEMI
  860               * Allowed type: REAL, UNIT
  861               * File  ALTform.s       201
  862 00921 00000           CON(5)  =BINT2
  863               * Decompile with stack appearance
  864               * File  ALTform.s       202
  865 00926 00000           CON(5)  =DOCSTR
  866 0092B 73000           CON(5)  55
  867 00930 4525555         NIBASC  \TRUE AIR TEMPERATURE\
            4021494
            25024554D40554251445552554

  868 00958 0282            NIBASC  \ (\
  869 0095C 0B              CON(2)  #B0
  870 0095E 3492            NIBASC  \C)\
  871               * Help string
  872               * File  ALTform.s       203
  873 00962 00000           CON(5)  =MINUSONE
  874               * ChooseData N/A
  875               * File  ALTform.s       204
  876 00967 00000           CON(5)  =MINUSONE
  877               * ChooseDecompile
  878               * File  ALTform.s       205
  879 0096C 00000           CON(5)  =MINUSONE
  880               * Reset value
  881               * File  ALTform.s       206
  882 00971 00000           CON(5)  =DOIDNT
  883 00976 30              CON(2)  3
  884 00978 351445          NIBASC  \SAT\
  885               * Initial value
  886               * File  ALTform.s       207
  887
  888               * File  ALTform.s       208
  889               * Field GNDST definition
  890               * File  ALTform.s       209
  891 0097E 00000           CON(5)  ='
  892 00983 00000           CON(5)  =DOCOL
  893               * Field message handler
  894               * File  ALTform.s       210
  895 00988 00000           CON(5)  =FOUR
  896 0098D 00000           CON(5)  =#=case
  897 00992 00000           CON(5)  =DOCOL
  898               * Get internal value
  899               * File  ALTform.s       211
  900 00997 00000           CON(5)  =DUPTYPEREAL?
  901 0099C 00000           CON(5)  =case
  902 009A1 00000           CON(5)  =DOCOL
  903               * REAL
  904               * File  ALTform.s       212
  905 009A6 00000           CON(5)  =DOCSTR
  906 009AB 90000           CON(5)  9
  907 009B0 6647            NIBASC  \ft\
  908 009B4 00000           CON(5)  =umEND
  909 009B9 00000           CON(5)  =BINT3
  910 009BE 00000           CON(5)  =EXTN
  911               * Add default feet units
  912               * File  ALTform.s       213
  913 009C3 00000           CON(5)  =NOVAL
  914 009C8 00000           CON(5)  =BINT5
  915               * Reset TA field
  916               * File  ALTform.s       214
  917 009CD 00000           CON(5)  =DOFLASHP
  918 009D2 0000000         CON(7)  =^IfSetFieldValue
  919               * File  ALTform.s       215
  920 009D9 00000           CON(5)  =NOVAL
  921 009DE 00000           CON(5)  =BINT6
  922               * Reset DA field
  923               * File  ALTform.s       216
  924 009E3 00000           CON(5)  =DOFLASHP
  925 009E8 0000000         CON(7)  =^IfSetFieldValue
  926               * File  ALTform.s       217
  927 009EF 00000           CON(5)  =BINT6
  928 009F4 00000           CON(5)  =DOFLASHP
  929 009F9 0000000         CON(7)  =^IfSetField
  930               * Set focus to CA
  931               * File  ALTform.s       218
  932 00A00 00000           CON(5)  =TRUE
  933               * Return external value
  934               * File  ALTform.s       219
  935 00A05 00000           CON(5)  =SEMI
  936               * File  ALTform.s       220
  937 00A0A 00000           CON(5)  =DUPTYPEEXT?
  938 00A0F 00000           CON(5)  =case
  939 00A14 00000           CON(5)  =DOCOL
  940               * UNIT
  941               * File  ALTform.s       221
  942 00A19 00000           CON(5)  =DUP
  943 00A1E 00000           CON(5)  =DOIDNT
  944 00A23 50              CON(2)  5
  945 00A25 74E4443         NIBASC  \GNDST\
            545
  946 00A2F 00000           CON(5)  =EQUALNOT
  947 00A34 00000           CON(5)  =IT
  948 00A39 00000           CON(5)  =DOCOL
  949               * IF field value has changed
  950               * File  ALTform.s       222
  951 00A3E 00000           CON(5)  =NOVAL
  952 00A43 00000           CON(5)  =BINT5
  953               * Reset TA field
  954               * File  ALTform.s       223
  955 00A48 00000           CON(5)  =DOFLASHP
  956 00A4D 0000000         CON(7)  =^IfSetFieldValue
  957               * File  ALTform.s       224
  958 00A54 00000           CON(5)  =NOVAL
  959 00A59 00000           CON(5)  =BINT6
  960               * Reset DA field
  961               * File  ALTform.s       225
  962 00A5E 00000           CON(5)  =DOFLASHP
  963 00A63 0000000         CON(7)  =^IfSetFieldValue
  964               * File  ALTform.s       226
  965 00A6A 00000           CON(5)  =BINT6
  966 00A6F 00000           CON(5)  =DOFLASHP
  967 00A74 0000000         CON(7)  =^IfSetField
  968               * Set focus to CA
  969               * File  ALTform.s       227
  970 00A7B 00000           CON(5)  =SEMI
  971               * File  ALTform.s       228
  972 00A80 00000           CON(5)  =TRUE
  973               * Return external value
  974               * File  ALTform.s       229
  975 00A85 00000           CON(5)  =SEMI
  976               * File  ALTform.s       230
  977 00A8A 00000           CON(5)  =TRUE
  978               * Message was handled
  979               * File  ALTform.s       231
  980 00A8F 00000           CON(5)  =SEMI
  981               * File  ALTform.s       232
  982 00A94 00000           CON(5)  =FALSE
  983               * No other messages handled
  984               * File  ALTform.s       233
  985 00A99 00000           CON(5)  =SEMI
  986               * File  ALTform.s       234
  987 00A9E 00000           CON(5)  =BINT26
  988 00AA3 00000           CON(5)  =BINT26
  989 00AA8 00000           CON(5)  =BINT39
  990 00AAD 00000           CON(5)  =BINT8
  991               * Position & size
  992               * File  ALTform.s       235
  993 00AB2 00000           CON(5)  =BINT1
  994               * Field type: TEXT
  995               * File  ALTform.s       236
  996 00AB7 00000           CON(5)  =DOLIST
  997 00ABC 00000           CON(5)  =BINT0
  998 00AC1 00000           CON(5)  =BINT13
  999 00AC6 00000           CON(5)  =SEMI
 1000               * Allowed type: REAL, UNIT
 1001               * File  ALTform.s       237
 1002 00ACB 00000           CON(5)  =BINT2
 1003               * Decompile with stack appearance
 1004               * File  ALTform.s       238
 1005 00AD0 00000           CON(5)  =DOCSTR
 1006 00AD5 34000           CON(5)  67
 1007 00ADA 7425F45         NIBASC  \GROUND STATION ELEV.\
            5E44402
            3545144594F4E40254C45465E2

 1008 00B02 028264F         NIBASC  \ (FOR TALT)\
            4250245
            14C44592
 1009               * Help string
 1010               * File  ALTform.s       239
 1011 00B18 00000           CON(5)  =MINUSONE
 1012               * ChooseData N/A
 1013               * File  ALTform.s       240
 1014 00B1D 00000           CON(5)  =MINUSONE
 1015               * ChooseDecompile
 1016               * File  ALTform.s       241
 1017 00B22 00000           CON(5)  =DOEXT
 1018 00B27 00000           CON(5)  =DOREAL
 1019 00B2C 000             NIBHEX  000
 1020 00B2F 0000000         NIBHEX  000000000000
            00000
 1021 00B3B 0               NIBHEX  0
 1022 00B3C 00000           CON(5)  =DOCSTR
 1023 00B41 90000           CON(5)  9
 1024 00B46 6647            NIBASC  \ft\
 1025 00B4A 00000           CON(5)  =umEND
 1026 00B4F 00000           CON(5)  =SEMI
 1027               * Reset Value
 1028               * File  ALTform.s       242
 1029 00B54 00000           CON(5)  =DOIDNT
 1030 00B59 50              CON(2)  5
 1031 00B5B 74E4443         NIBASC  \GNDST\
            545
 1032               * Initial Value
 1033               * File  ALTform.s       243
 1034
 1035               * File  ALTform.s       244
 1036               * Field TA definition
 1037               * File  ALTform.s       245
 1038 00B65 00000           CON(5)  ='DROPFALSE
 1039               * Field message handler
 1040               * File  ALTform.s       246
 1041 00B6A 00000           CON(5)  =BINT22
 1042 00B6F 00000           CON(5)  =BINT35
 1043 00B74 00000           CON(5)  =BINT108
 1044 00B79 00000           CON(5)  =BINT8
 1045               * Position & size
 1046               * File  ALTform.s       247
 1047 00B7E 00000           CON(5)  =BINT1
 1048               * Field type: TEXT
 1049               * File  ALTform.s       248
 1050 00B83 00000           CON(5)  =DOLIST
 1051 00B88 00000           CON(5)  =BINT0
 1052 00B8D 00000           CON(5)  =BINT13
 1053 00B92 00000           CON(5)  =SEMI
 1054               * Allowed type:  REAL, UNIT
 1055               * File  ALTform.s       249
 1056 00B97 00000           CON(5)  =BINT2
 1057               * Decompile with stack appearance
 1058               * File  ALTform.s       250
 1059 00B9C 00000           CON(5)  =DOCSTR
 1060 00BA1 13000           CON(5)  49
 1061 00BA6 4525555         NIBASC  \TRUE ALTITUDE (OUTPU\
            40214C4
            4594455544540282F455450555

 1062 00BCE 4592            NIBASC  \T)\
 1063               * Help string
 1064               * File  ALTform.s       251
 1065 00BD2 00000           CON(5)  =MINUSONE
 1066               * ChooseData N/A
 1067               * File  ALTform.s       252
 1068 00BD7 00000           CON(5)  =MINUSONE
 1069               * ChooseDecompile
 1070               * File  ALTform.s       253
 1071 00BDC 00000           CON(5)  =MINUSONE
 1072               * Reset Value
 1073               * File  ALTform.s       254
 1074 00BE1 00000           CON(5)  =DOIDNT
 1075 00BE6 20              CON(2)  2
 1076 00BE8 4514            NIBASC  \TA\
 1077               * Initial Value
 1078               * File  ALTform.s       255
 1079
 1080               * File  ALTform.s       256
 1081               * Field DA definition
 1082               * File  ALTform.s       257
 1083 00BEC 00000           CON(5)  ='DROPFALSE
 1084               * Field message handler
 1085               * File  ALTform.s       258
 1086 00BF1 00000           CON(5)  =BINT22
 1087 00BF6 00000           CON(5)  =BINT44
 1088 00BFB 00000           CON(5)  =BINT108
 1089 00C00 00000           CON(5)  =BINT8
 1090               * Position & size
 1091               * File  ALTform.s       259
 1092 00C05 00000           CON(5)  =BINT1
 1093               * Field type: TEXT
 1094               * File  ALTform.s       260
 1095 00C0A 00000           CON(5)  =DOLIST
 1096 00C0F 00000           CON(5)  =BINT0
 1097 00C14 00000           CON(5)  =BINT13
 1098 00C19 00000           CON(5)  =SEMI
 1099               * Allowed type: REAL, UNIT
 1100               * File  ALTform.s       261
 1101 00C1E 00000           CON(5)  =BINT2
 1102               * Decompile with stack appearance
 1103               * File  ALTform.s       262
 1104 00C23 00000           CON(5)  =DOCSTR
 1105 00C28 93000           CON(5)  57
 1106 00C2D 4454E43         NIBASC  \DENSITY ALTITUDE (OU\
            5944595
            0214C44594455544540282F455

 1107 00C55 4505554         NIBASC  \TPUT) \
            59202
 1108               * Help string
 1109               * File  ALTform.s       263
 1110 00C61 00000           CON(5)  =MINUSONE
 1111               * ChooseData N/A
 1112               * File  ALTform.s       264
 1113 00C66 00000           CON(5)  =MINUSONE
 1114               * ChooseDecompile
 1115               * File  ALTform.s       265
 1116 00C6B 00000           CON(5)  =MINUSONE
 1117               * Reset Value
 1118               * File  ALTform.s       266
 1119 00C70 00000           CON(5)  =DOIDNT
 1120 00C75 20              CON(2)  2
 1121 00C77 4414            NIBASC  \DA\
 1122               * Initial value
 1123               * File  ALTform.s       267
 1124
 1125               * File  ALTform.s       268
 1126 00C7B 00000           CON(5)  =BINT7
 1127 00C80 00000           CON(5)  =BINT7
 1128               * Label & field counts
 1129               * File  ALTform.s       269
 1130 00C85 00000           CON(5)  ='DROPFALSE
 1131               * Inform Box message handler
 1132               * File  ALTform.s       270
 1133 00C8A 00000           CON(5)  =DOCSTR
 1134 00C8F 51000           CON(5)  21
 1135 00C94 14C4459         NIBASC  \ALTITUDE\
            4455544
            54
 1136               * Title
 1137               * File  ALTform.s       271
 1138 00CA4 00000           CON(5)  =DOFLASHP
 1139 00CA9 0000000         CON(7)  =^IfMain
 1140               * Create and run the input form
 1141               * File  ALTform.s       272
 1142 00CB0 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 10 22:05:34 2009
V3.0.9 (04/15/2007)   Symbol Table                       ALTform.a      Page    2

 #=case                            Ext                   -   169   339   534
                                         765   896
 %0<>                              Ext                   -   599   684
 %<                                Ext                   -   353
 '                                 Ext                   -   164   334   529
                                         760   891
 'DROPFALSE                        Ext                   -  1038  1083  1130
=ALTform                           Rel       0 #00000000 -   112
 BINT0                             Ext                   -   302   398   450
                                         498   577   662   729   857   997  1051
                                        1096
 BINT1                             Ext                   -   120   132   144
                                         150   156   200   254   298   494   565
                                         607   650   692   725   853   993  1047
                                        1092
 BINT108                           Ext                   -  1043  1088
 BINT13                            Ext                   -   303   499   730
                                         858   998  1052  1097
 BINT17                            Ext                   -   720   848
 BINT18                            Ext                   -   133   139
 BINT2                             Ext                   -   212   266   307
                                         410   462   503   734   862  1002  1056
                                        1101
 BINT22                            Ext                   -   292   719  1041
                                        1086
 BINT26                            Ext                   -   987   988
 BINT27                            Ext                   -   145
 BINT3                             Ext                   -   182   362   547
                                         779   909
 BINT35                            Ext                   -  1042
 BINT36                            Ext                   -   151
 BINT39                            Ext                   -   989
 BINT43                            Ext                   -   294   721
 BINT44                            Ext                   -  1087
 BINT45                            Ext                   -   157   490   849
 BINT5                             Ext                   -   187   241   379
                                         385   437   552   637   784   817   914
                                         952
 BINT6                             Ext                   -   194   248   392
                                         444   559   644   791   824   921   927
                                         959   965
 BINT68                            Ext                   -   126   138
 BINT7                             Ext                   -  1126  1127
 BINT8                             Ext                   -   293   295   489
                                         491   722   850   990  1044  1089
 BINT85                            Ext                   -   488   847
 BINT9                             Ext                   -   121   127
 CHR_m                             Ext                   -   371
 DOCOL                             Ext                   -   114   165   170
                                         175   208   228   237   262   335   340
                                         345   355   368   406   426   434   458
                                         530   535   540   573   601   624   633
                                         658   686   761   766   771   804   813
                                         892   897   902   939   948
 DOCSTR                            Ext                   -   117   123   129
                                         135   141   147   153   178   310   358
                                         372   506   543   592   677   737   774
                                         865   905  1005  1022  1059  1104  1133
 DOEXT                             Ext                   -   587   672  1017
 DOFLASHP                          Ext                   -   189   196   201
                                         215   243   250   255   269   387   394
                                         399   413   439   446   451   465   554
                                         561   566   580   608   639   646   651
                                         665   693   787   794   820   827   917
                                         924   928   955   962   966  1138
 DOIDNT                            Ext                   -   232   325   429
                                         520   628   751   808   882   943  1029
                                        1074  1119
 DOLIST                            Ext                   -   301   497   728
                                         856   996  1050  1095
 DOREAL                            Ext                   -   349   588   673
                                        1018
 DROP                              Ext                   -   604   689
 DUP                               Ext                   -   231   348   428
                                         586   627   671   807   942
 DUPTYPEEXT?                       Ext                   -   226   424   622
                                         802   937
 DUPTYPEREAL?                      Ext                   -   173   343   538
                                         769   900
 EQUALNOT                          Ext                   -   206   235   260
                                         404   432   456   571   631   656   811
                                         946
 EXTN                              Ext                   -   183   363   380
                                         548   780   910
 FALSE                             Ext                   -   287   483   714
                                         842   982
 FIVE                              Ext                   -   338
 FOUR                              Ext                   -   168   533   764
                                         895
 IT                                Ext                   -   207   236   261
                                         405   433   457   572   600   632   657
                                         685   812   947
 ITE                               Ext                   -   354
 MINUSONE                          Ext                   -   316   319   322
                                         511   514   517   742   745   748   873
                                         876   879  1011  1014  1065  1068  1071
                                        1110  1113  1116
 NOVAL                             Ext                   -   186   193   205
                                         211   240   247   259   265   384   391
                                         403   409   436   443   455   461   551
                                         558   570   576   612   636   643   655
                                         661   697   783   790   816   823   913
                                         920   951   958
=RomId                             Abs     807 #00000327 -   103
 SEMI                              Ext                   -   219   224   273
                                         275   280   285   290   304   366   382
                                         417   422   469   471   476   481   486
                                         500   584   596   615   620   669   681
                                         700   702   707   712   717   731   800
                                         830   835   840   845   859   935   970
                                         975   980   985   999  1026  1053  1098
                                        1142
 TRUE                              Ext                   -   221   277   282
                                         419   473   478   617   704   709   797
                                         832   837   932   972   977
 UM>?                              Ext                   -   598   683
 ^IfGetFieldValue                  Ext                   -   202   256   400
                                         452   567   652
 ^IfMain                           Ext                   -  1139
 ^IfSetField                       Ext                   -   609   694   929
                                         967
 ^IfSetFieldValue                  Ext                   -   190   197   216
                                         244   251   270   388   395   414   440
                                         447   466   555   562   581   640   647
                                         666   788   795   821   828   918   925
                                         956   963
 case                              Ext                   -   174   227   344
                                         425   539   623   770   803   901   938
 umEND                             Ext                   -   181   361   376
                                         546   595   680   778   908  1025
 umP                               Ext                   -   375
Saturn Assembler                                       Wed Jun 10 22:05:34 2009
V3.0.9 (04/15/2007)   Statistics                         ALTform.a      Page    3

Input Parameters

  Source file name is ALTform.a

  Listing file name is ALTform.l

  Object file name is ALTform.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
