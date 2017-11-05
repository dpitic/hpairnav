Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)                                      ASPDform.a     Page    1

    1               * File  ASPDform.s      1
    2               * RPL
    3               * File  ASPDform.s      2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDform.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               * File  ASPDform.s      3
    6
    7               * File  ASPDform.s      4
    8               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPD.h
    9
   10               =RomId  EQU     #328
   11               * ROMID set to 328
   12
   13
   14
   15
   16
   17
   18
   19
   20               *|| Resuming file ASPDform.s at line 4
   21               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\informbox.h
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
   87
   88
   89
   90
   91
   92
   93
   94               * Do not modify any of these constants
   95
   96               * Do not modify any of these constants
   97               * ( was zint
   98
   99
  100
  101
  102
  103
  104
  105
  106
  107               *|| Resuming file ASPDform.s at line 5
  108 00000         =ASPDform
  109               * File  ASPDform.s      7
  110 00000 00000           CON(5)  =DOCOL
  111               * Label definitions (X pos     Y pos)
  112               * File  ASPDform.s      9
  113 00005 00000           CON(5)  =DOCSTR
  114 0000A B0000           CON(5)  11
  115 0000F 6534A3          NIBASC  \VC:\
  116 00015 00000           CON(5)  =BINT1
  117 0001A 00000           CON(5)  =BINT9
  118               * File  ASPDform.s      10
  119 0001F 00000           CON(5)  =DOCSTR
  120 00024 B0000           CON(5)  11
  121 00029 0514A3          NIBASC  \PA:\
  122 0002F 00000           CON(5)  =BINT1
  123 00034 00000           CON(5)  =BINT18
  124               * File  ASPDform.s      11
  125 00039 00000           CON(5)  =DOCSTR
  126 0003E 90000           CON(5)  9
  127 00043 D4A3            NIBASC  \M:\
  128 00047 00000           CON(5)  =BINT66
  129 0004C 00000           CON(5)  =BINT18
  130               * File  ASPDform.s      12
  131 00051 00000           CON(5)  =DOCSTR
  132 00056 B0000           CON(5)  11
  133 0005B 4523A3          NIBASC  \T2:\
  134 00061 00000           CON(5)  =BINT1
  135 00066 00000           CON(5)  =BINT27
  136               * File  ASPDform.s      13
  137 0006B 00000           CON(5)  =DOCSTR
  138 00070 B0000           CON(5)  11
  139 00075 4513A3          NIBASC  \T1:\
  140 0007B 00000           CON(5)  =BINT66
  141 00080 00000           CON(5)  =BINT27
  142               * File  ASPDform.s      14
  143 00085 00000           CON(5)  =DOCSTR
  144 0008A B0000           CON(5)  11
  145 0008F 6513A3          NIBASC  \V1:\
  146 00095 00000           CON(5)  =BINT1
  147 0009A 00000           CON(5)  =BINT36
  148               * File  ASPDform.s      15
  149
  150               * Field definitions
  151               * File  ASPDform.s      17
  152               * Field VC definition [#BINT0]
  153               * File  ASPDform.s      18
  154 0009F 00000           CON(5)  ='
  155 000A4 00000           CON(5)  =DOCOL
  156               * Field message handler
  157               * File  ASPDform.s      19
  158 000A9 00000           CON(5)  =FOUR
  159 000AE 00000           CON(5)  =#=case
  160 000B3 00000           CON(5)  =DOCOL
  161               * Get internal field value
  162               * File  ASPDform.s      20
  163 000B8 00000           CON(5)  =DUPTYPEREAL?
  164 000BD 00000           CON(5)  =case
  165 000C2 00000           CON(5)  =DOCOL
  166               * REAL
  167               * File  ASPDform.s      21
  168 000C7 00000           CON(5)  =DOCSTR
  169 000CC D0000           CON(5)  13
  170 000D1 B6E6F64         NIBASC  \knot\
            7
  171 000D9 00000           CON(5)  =umEND
  172 000DE 00000           CON(5)  =BINT3
  173 000E3 00000           CON(5)  =EXTN
  174               * Add default knot units
  175               * File  ASPDform.s      22
  176 000E8 00000           CON(5)  =NOVAL
  177 000ED 00000           CON(5)  =BINT2
  178               * File  ASPDform.s      23
  179 000F2 00000           CON(5)  =DOFLASHP
  180 000F7 0000000         CON(7)  =^IfSetFieldValue
  181               * Reset M
  182               * File  ASPDform.s      24
  183 000FE 00000           CON(5)  =NOVAL
  184 00103 00000           CON(5)  =BINT5
  185               * File  ASPDform.s      25
  186 00108 00000           CON(5)  =DOFLASHP
  187 0010D 0000000         CON(7)  =^IfSetFieldValue
  188               * and TAS
  189               * File  ASPDform.s      26
  190 00114 00000           CON(5)  =TRUE
  191               * Return external value
  192               * File  ASPDform.s      27
  193 00119 00000           CON(5)  =SEMI
  194               * File  ASPDform.s      28
  195 0011E 00000           CON(5)  =DUPTYPEEXT?
  196 00123 00000           CON(5)  =case
  197 00128 00000           CON(5)  =DOCOL
  198               * UNIT
  199               * File  ASPDform.s      29
  200 0012D 00000           CON(5)  =DUP
  201 00132 00000           CON(5)  =DOIDNT
  202 00137 20              CON(2)  2
  203 00139 6534            NIBASC  \VC\
  204 0013D 00000           CON(5)  =EQUALNOT
  205 00142 00000           CON(5)  =IT
  206 00147 00000           CON(5)  =DOCOL
  207               * IF changed from initial value
  208               * File  ASPDform.s      30
  209 0014C 00000           CON(5)  =NOVAL
  210 00151 00000           CON(5)  =BINT2
  211               * File  ASPDform.s      31
  212 00156 00000           CON(5)  =DOFLASHP
  213 0015B 0000000         CON(7)  =^IfSetFieldValue
  214               * Reset M
  215               * File  ASPDform.s      32
  216 00162 00000           CON(5)  =NOVAL
  217 00167 00000           CON(5)  =BINT5
  218               * File  ASPDform.s      33
  219 0016C 00000           CON(5)  =DOFLASHP
  220 00171 0000000         CON(7)  =^IfSetFieldValue
  221               * and TAS
  222               * File  ASPDform.s      34
  223 00178 00000           CON(5)  =SEMI
  224               * File  ASPDform.s      35
  225 0017D 00000           CON(5)  =TRUE
  226               * Return external value
  227               * File  ASPDform.s      36
  228 00182 00000           CON(5)  =SEMI
  229               * File  ASPDform.s      37
  230 00187 00000           CON(5)  =TRUE
  231               * Message handled
  232               * File  ASPDform.s      38
  233 0018C 00000           CON(5)  =SEMI
  234               * File  ASPDform.s      39
  235 00191 00000           CON(5)  =FALSE
  236               * Other messages not handled
  237               * File  ASPDform.s      40
  238 00196 00000           CON(5)  =SEMI
  239               * File  ASPDform.s      41
  240 0019B 00000           CON(5)  =BINT14
  241 001A0 00000           CON(5)  =BINT8
  242 001A5 00000           CON(5)  =BINT110
  243 001AA 00000           CON(5)  =BINT8
  244               * Position & size
  245               * File  ASPDform.s      42
  246 001AF 00000           CON(5)  =BINT1
  247               * Field type: TEXT
  248               * File  ASPDform.s      43
  249 001B4 00000           CON(5)  =DOLIST
  250 001B9 00000           CON(5)  =BINT0
  251 001BE 00000           CON(5)  =BINT13
  252 001C3 00000           CON(5)  =SEMI
  253               * Allowed type: REAL, UNIT
  254               * File  ASPDform.s      44
  255 001C8 00000           CON(5)  =BINT2
  256               * Decompile with stack appearance
  257               * File  ASPDform.s      45
  258 001CD 00000           CON(5)  =DOCSTR
  259 001D2 34000           CON(5)  67
  260 001D7 3414C49         NIBASC  \CALIBRATED AIR SPEED\
            4242514
            45544402149425023505545444

  261 001FF 0282323         NIBASC  \ (##\
            2
  262 00207 D8              CON(2)  #8D
  263 00209 02B6E6F         NIBASC  \ knot)\
            64792
  264               * Help string
  265               * File  ASPDform.s      46
  266 00215 00000           CON(5)  =MINUSONE
  267               * ChooseData N/A
  268               * File  ASPDform.s      47
  269 0021A 00000           CON(5)  =MINUSONE
  270               * ChooseDecompile
  271               * File  ASPDform.s      48
  272 0021F 00000           CON(5)  =MINUSONE
  273               * Reset value
  274               * File  ASPDform.s      49
  275 00224 00000           CON(5)  =DOIDNT
  276 00229 20              CON(2)  2
  277 0022B 6534            NIBASC  \VC\
  278               * Initial value
  279               * File  ASPDform.s      50
  280
  281               * File  ASPDform.s      51
  282               * Field PA definition [#BINT1]
  283               * File  ASPDform.s      52
  284 0022F 00000           CON(5)  ='
  285 00234 00000           CON(5)  =DOCOL
  286               * Field message handler
  287               * File  ASPDform.s      53
  288 00239 00000           CON(5)  =FOUR
  289 0023E 00000           CON(5)  =#=case
  290 00243 00000           CON(5)  =DOCOL
  291               * Get internal field value
  292               * File  ASPDform.s      54
  293 00248 00000           CON(5)  =DUPTYPEREAL?
  294 0024D 00000           CON(5)  =case
  295 00252 00000           CON(5)  =DOCOL
  296               * REAL
  297               * File  ASPDform.s      55
  298 00257 00000           CON(5)  =DOCSTR
  299 0025C 90000           CON(5)  9
  300 00261 6647            NIBASC  \ft\
  301 00265 00000           CON(5)  =umEND
  302 0026A 00000           CON(5)  =BINT3
  303 0026F 00000           CON(5)  =EXTN
  304               * Add default feet units
  305               * File  ASPDform.s      56
  306 00274 00000           CON(5)  =DUP
  307 00279 00000           CON(5)  =DOEXT
  308 0027E 00000           CON(5)  =DOREAL
  309 00283 400             NIBHEX  400
  310 00286 0000000         NIBHEX  000000000002
            00002
  311 00292 0               NIBHEX  0
  312 00293 00000           CON(5)  =DOCSTR
  313 00298 70000           CON(5)  7
  314 0029D D6              NIBASC  \m\
  315 0029F 00000           CON(5)  =umEND
  316 002A4 00000           CON(5)  =SEMI
  317               * IF PA is > 20 km
  318               * File  ASPDform.s      57
  319 002A9 00000           CON(5)  =UM>?
  320 002AE 00000           CON(5)  =%0<>
  321 002B3 00000           CON(5)  =ITE
  322 002B8 00000           CON(5)  =DOCOL
  323               * File  ASPDform.s      58
  324 002BD 00000           CON(5)  =DROP
  325               * DROP value
  326               * File  ASPDform.s      59
  327 002C2 00000           CON(5)  =NOVAL
  328               * Set value to NOVAL
  329               * File  ASPDform.s      60
  330 002C7 00000           CON(5)  =BINT0
  331 002CC 00000           CON(5)  =DOFLASHP
  332 002D1 0000000         CON(7)  =^IfSetField
  333               * Keep focus
  334               * File  ASPDform.s      61
  335 002D8 00000           CON(5)  =SEMI
  336               * File  ASPDform.s      62
  337 002DD 00000           CON(5)  =DOCOL
  338               * ELSE
  339               * File  ASPDform.s      63
  340 002E2 00000           CON(5)  =NOVAL
  341 002E7 00000           CON(5)  =BINT2
  342               * File  ASPDform.s      64
  343 002EC 00000           CON(5)  =DOFLASHP
  344 002F1 0000000         CON(7)  =^IfSetFieldValue
  345               * Reset M
  346               * File  ASPDform.s      65
  347 002F8 00000           CON(5)  =NOVAL
  348 002FD 00000           CON(5)  =BINT5
  349               * File  ASPDform.s      66
  350 00302 00000           CON(5)  =DOFLASHP
  351 00307 0000000         CON(7)  =^IfSetFieldValue
  352               * and TAS
  353               * File  ASPDform.s      67
  354 0030E 00000           CON(5)  =BINT2
  355 00313 00000           CON(5)  =DOFLASHP
  356 00318 0000000         CON(7)  =^IfSetField
  357               * Set focus on T2 field
  358               * File  ASPDform.s      68
  359 0031F 00000           CON(5)  =SEMI
  360               * File  ASPDform.s      69
  361 00324 00000           CON(5)  =TRUE
  362               * Return external value
  363               * File  ASPDform.s      70
  364 00329 00000           CON(5)  =SEMI
  365               * File  ASPDform.s      71
  366 0032E 00000           CON(5)  =DUPTYPEEXT?
  367 00333 00000           CON(5)  =case
  368 00338 00000           CON(5)  =DOCOL
  369               * UNIT
  370               * File  ASPDform.s      72
  371 0033D 00000           CON(5)  =DUP
  372 00342 00000           CON(5)  =DOIDNT
  373 00347 20              CON(2)  2
  374 00349 0514            NIBASC  \PA\
  375 0034D 00000           CON(5)  =EQUALNOT
  376 00352 00000           CON(5)  =IT
  377 00357 00000           CON(5)  =DOCOL
  378               * IF changed from initial value
  379               * File  ASPDform.s      73
  380 0035C 00000           CON(5)  =DUP
  381 00361 00000           CON(5)  =DOEXT
  382 00366 00000           CON(5)  =DOREAL
  383 0036B 400             NIBHEX  400
  384 0036E 0000000         NIBHEX  000000000002
            00002
  385 0037A 0               NIBHEX  0
  386 0037B 00000           CON(5)  =DOCSTR
  387 00380 70000           CON(5)  7
  388 00385 D6              NIBASC  \m\
  389 00387 00000           CON(5)  =umEND
  390 0038C 00000           CON(5)  =SEMI
  391               * IF PA is > 20 km
  392               * File  ASPDform.s      74
  393 00391 00000           CON(5)  =UM>?
  394 00396 00000           CON(5)  =%0<>
  395 0039B 00000           CON(5)  =ITE
  396 003A0 00000           CON(5)  =DOCOL
  397               * File  ASPDform.s      75
  398 003A5 00000           CON(5)  =DROP
  399               * DROP value
  400               * File  ASPDform.s      76
  401 003AA 00000           CON(5)  =NOVAL
  402               * Set value to NOVAL
  403               * File  ASPDform.s      77
  404 003AF 00000           CON(5)  =BINT0
  405 003B4 00000           CON(5)  =DOFLASHP
  406 003B9 0000000         CON(7)  =^IfSetField
  407               * Keep focus
  408               * File  ASPDform.s      78
  409 003C0 00000           CON(5)  =SEMI
  410               * File  ASPDform.s      79
  411 003C5 00000           CON(5)  =DOCOL
  412               * ELSE
  413               * File  ASPDform.s      80
  414 003CA 00000           CON(5)  =NOVAL
  415 003CF 00000           CON(5)  =BINT2
  416               * File  ASPDform.s      81
  417 003D4 00000           CON(5)  =DOFLASHP
  418 003D9 0000000         CON(7)  =^IfSetFieldValue
  419               * Reset M
  420               * File  ASPDform.s      82
  421 003E0 00000           CON(5)  =NOVAL
  422 003E5 00000           CON(5)  =BINT5
  423               * File  ASPDform.s      83
  424 003EA 00000           CON(5)  =DOFLASHP
  425 003EF 0000000         CON(7)  =^IfSetFieldValue
  426               * and TAS
  427               * File  ASPDform.s      84
  428 003F6 00000           CON(5)  =BINT2
  429 003FB 00000           CON(5)  =DOFLASHP
  430 00400 0000000         CON(7)  =^IfSetField
  431               * Set focus on T2 field
  432               * File  ASPDform.s      85
  433 00407 00000           CON(5)  =SEMI
  434               * File  ASPDform.s      86
  435 0040C 00000           CON(5)  =SEMI
  436               * File  ASPDform.s      87
  437 00411 00000           CON(5)  =TRUE
  438               * Return external value
  439               * File  ASPDform.s      88
  440 00416 00000           CON(5)  =SEMI
  441               * File  ASPDform.s      89
  442 0041B 00000           CON(5)  =TRUE
  443               * Message was handled
  444               * File  ASPDform.s      90
  445 00420 00000           CON(5)  =SEMI
  446               * File  ASPDform.s      91
  447 00425 00000           CON(5)  =FALSE
  448               * No other messagges handled
  449               * File  ASPDform.s      92
  450 0042A 00000           CON(5)  =SEMI
  451               * File  ASPDform.s      93
  452 0042F 00000           CON(5)  =BINT14
  453 00434 00000           CON(5)  =BINT17
  454 00439 00000           CON(5)  =BINT45
  455 0043E 00000           CON(5)  =BINT8
  456               * Position & size
  457               * File  ASPDform.s      94
  458 00443 00000           CON(5)  =BINT1
  459               * Field type: TEXT
  460               * File  ASPDform.s      95
  461 00448 00000           CON(5)  =DOLIST
  462 0044D 00000           CON(5)  =BINT0
  463 00452 00000           CON(5)  =BINT13
  464 00457 00000           CON(5)  =SEMI
  465               * Allowed type: REAL, UNIT
  466               * File  ASPDform.s      96
  467 0045C 00000           CON(5)  =BINT2
  468               * Decompile with stack appearance
  469               * File  ASPDform.s      97
  470 00461 00000           CON(5)  =DOCSTR
  471 00466 93000           CON(5)  57
  472 0046B 0525543         NIBASC  \PRESSURE ALTITUDE (#\
            5355525
            540214C4459445554454028232

  473 00493 32              NIBASC  \#\
  474 00495 D8              CON(2)  #8D
  475 00497 0266479         NIBASC  \ ft)\
            2
  476               * Help string
  477               * File  ASPDform.s      98
  478 0049F 00000           CON(5)  =MINUSONE
  479               * ChooseData N/A
  480               * File  ASPDform.s      99
  481 004A4 00000           CON(5)  =MINUSONE
  482               * ChooseDecompile
  483               * File  ASPDform.s      100
  484 004A9 00000           CON(5)  =MINUSONE
  485               * Reset value
  486               * File  ASPDform.s      101
  487 004AE 00000           CON(5)  =DOIDNT
  488 004B3 20              CON(2)  2
  489 004B5 0514            NIBASC  \PA\
  490               * Initial value
  491               * File  ASPDform.s      102
  492
  493               * File  ASPDform.s      103
  494               * Field M definition [#BINT2]
  495               * File  ASPDform.s      104
  496 004B9 00000           CON(5)  ='
  497 004BE 00000           CON(5)  =DOCOL
  498               * Field message handler
  499               * File  ASPDform.s      105
  500 004C3 00000           CON(5)  =FOUR
  501 004C8 00000           CON(5)  =OVER#=case
  502 004CD 00000           CON(5)  =DOCOL
  503               * Get internal field value
  504               * File  ASPDform.s      106
  505 004D2 00000           CON(5)  =DROP
  506               * File  ASPDform.s      107
  507 004D7 00000           CON(5)  =DUPTYPEREAL?
  508 004DC 00000           CON(5)  =case
  509 004E1 00000           CON(5)  =DOCOL
  510               * REAL
  511               * File  ASPDform.s      108
  512 004E6 00000           CON(5)  =DUP
  513 004EB 00000           CON(5)  =DOIDNT
  514 004F0 10              CON(2)  1
  515 004F2 D4              NIBASC  \M\
  516 004F4 00000           CON(5)  =EQUALNOT
  517 004F9 00000           CON(5)  =IT
  518 004FE 00000           CON(5)  =DOCOL
  519               * IF changed from initial value
  520               * File  ASPDform.s      109
  521 00503 00000           CON(5)  =NOVAL
  522 00508 00000           CON(5)  =BINT0
  523               * File  ASPDform.s      110
  524 0050D 00000           CON(5)  =DOFLASHP
  525 00512 0000000         CON(7)  =^IfSetFieldValue
  526               * Reset VC,
  527               * File  ASPDform.s      111
  528 00519 00000           CON(5)  =NOVAL
  529 0051E 00000           CON(5)  =BINT1
  530               * File  ASPDform.s      112
  531 00523 00000           CON(5)  =DOFLASHP
  532 00528 0000000         CON(7)  =^IfSetFieldValue
  533               * PA and
  534               * File  ASPDform.s      113
  535 0052F 00000           CON(5)  =NOVAL
  536 00534 00000           CON(5)  =BINT5
  537               * File  ASPDform.s      114
  538 00539 00000           CON(5)  =DOFLASHP
  539 0053E 0000000         CON(7)  =^IfSetFieldValue
  540               * TAS fields with NOVAL
  541               * File  ASPDform.s      115
  542 00545 00000           CON(5)  =SEMI
  543               * File  ASPDform.s      116
  544 0054A 00000           CON(5)  =TRUE
  545               * Return external value
  546               * File  ASPDform.s      117
  547 0054F 00000           CON(5)  =SEMI
  548               * File  ASPDform.s      118
  549 00554 00000           CON(5)  =TRUE
  550               * Message was handled
  551               * File  ASPDform.s      119
  552 00559 00000           CON(5)  =SEMI
  553               * File  ASPDform.s      120
  554 0055E 00000           CON(5)  =FIVE
  555 00563 00000           CON(5)  =OVER#=case
  556 00568 00000           CON(5)  =DOCOL
  557               * Get external value
  558               * File  ASPDform.s      121
  559 0056D 00000           CON(5)  =DROP
  560               * File  ASPDform.s      122
  561 00572 00000           CON(5)  =DUP
  562 00577 00000           CON(5)  =%1
  563 0057C 00000           CON(5)  =%>
  564 00581 00000           CON(5)  =IT
  565 00586 00000           CON(5)  =DOCOL
  566               * IF M > 1
  567               * File  ASPDform.s      123
  568 0058B 00000           CON(5)  =BINT0
  569 00590 00000           CON(5)  =DOFLASHP
  570 00595 0000000         CON(7)  =^IfGetFieldValue
  571 0059C 00000           CON(5)  =NOVAL
  572 005A1 00000           CON(5)  =EQUALNOT
  573               * and IF VC and PA
  574               * File  ASPDform.s      124
  575 005A6 00000           CON(5)  =BINT1
  576 005AB 00000           CON(5)  =DOFLASHP
  577 005B0 0000000         CON(7)  =^IfGetFieldValue
  578 005B7 00000           CON(5)  =NOVAL
  579 005BC 00000           CON(5)  =EQUALNOT
  580               * are not NOVAL
  581               * File  ASPDform.s      125
  582 005C1 00000           CON(5)  =AND
  583 005C6 00000           CON(5)  =IT
  584 005CB 00000           CON(5)  =DOCOL
  585               * File  ASPDform.s      126
  586 005D0 00000           CON(5)  =DOCSTR
  587 005D5 94000           CON(5)  73
  588 005DA 02D4143         NIBASC  \ MACH > 1        TAS\
            48402E3
            02130202020202020202451435

  589 00602 0202020         NIBASC  \    INACCURATE\
            294E414
            34345525144554

  590               * Display flash warning
  591               * File  ASPDform.s      127
  592 0061E 00000           CON(5)  =FlashWarning
  593               * File  ASPDform.s      128
  594 00623 00000           CON(5)  =SEMI
  595               * File  ASPDform.s      129
  596 00628 00000           CON(5)  =SEMI
  597               * Return internal value
  598               * File  ASPDform.s      130
  599 0062D 00000           CON(5)  =TRUE
  600               * Message was handled
  601               * File  ASPDform.s      131
  602 00632 00000           CON(5)  =SEMI
  603               * File  ASPDform.s      132
  604 00637 00000           CON(5)  =DROPFALSE
  605               * No other messages handled
  606               * File  ASPDform.s      133
  607 0063C 00000           CON(5)  =SEMI
  608               * File  ASPDform.s      134
  609 00641 00000           CON(5)  =BINT75
  610 00646 00000           CON(5)  =BINT17
  611 0064B 00000           CON(5)  =BINT49
  612 00650 00000           CON(5)  =BINT8
  613               * Position & size
  614               * File  ASPDform.s      135
  615 00655 00000           CON(5)  =BINT1
  616               * Field type: TEXT
  617               * File  ASPDform.s      136
  618 0065A 00000           CON(5)  =DOLIST
  619 0065F 00000           CON(5)  =BINT0
  620 00664 00000           CON(5)  =SEMI
  621               * Allowed type: REAL
  622               * File  ASPDform.s      137
  623 00669 00000           CON(5)  =BINT2
  624               * Decompile with stack appearance
  625               * File  ASPDform.s      138
  626 0066E 00000           CON(5)  =DOCSTR
  627 00673 B1000           CON(5)  27
  628 00678 D414348         NIBASC  \MACH NUMBER\
            402E455
            D4245425
  629               * Help string
  630               * File  ASPDform.s      139
  631 0068E 00000           CON(5)  =MINUSONE
  632               * ChooseData N/A
  633               * File  ASPDform.s      140
  634 00693 00000           CON(5)  =MINUSONE
  635               * ChooseDecompile
  636               * File  ASPDform.s      141
  637 00698 00000           CON(5)  =MINUSONE
  638               * Reset value
  639               * File  ASPDform.s      142
  640 0069D 00000           CON(5)  =DOIDNT
  641 006A2 10              CON(2)  1
  642 006A4 D4              NIBASC  \M\
  643               * Initial value
  644               * File  ASPDform.s      143
  645
  646               * File  ASPDform.s      144
  647               * Field T2 definition [#BINT3]
  648               * File  ASPDform.s      145
  649 006A6 00000           CON(5)  ='
  650 006AB 00000           CON(5)  =DOCOL
  651               * Field message handler
  652               * File  ASPDform.s      146
  653 006B0 00000           CON(5)  =FOUR
  654 006B5 00000           CON(5)  =#=case
  655 006BA 00000           CON(5)  =DOCOL
  656               * Get internal field value
  657               * File  ASPDform.s      147
  658 006BF 00000           CON(5)  =DUPTYPEREAL?
  659 006C4 00000           CON(5)  =case
  660 006C9 00000           CON(5)  =DOCOL
  661               * REAL
  662               * File  ASPDform.s      148
  663 006CE 00000           CON(5)  =DOCSTR
  664 006D3 90000           CON(5)  9
  665 006D8 0B              CON(2)  #B0
  666 006DA 34              NIBASC  \C\
  667 006DC 00000           CON(5)  =umEND
  668 006E1 00000           CON(5)  =BINT3
  669 006E6 00000           CON(5)  =EXTN
  670               * Add default deg C units
  671               * File  ASPDform.s      149
  672 006EB 00000           CON(5)  =NOVAL
  673 006F0 00000           CON(5)  =BINT4
  674               * File  ASPDform.s      150
  675 006F5 00000           CON(5)  =DOFLASHP
  676 006FA 0000000         CON(7)  =^IfSetFieldValue
  677               * Reset T1 field
  678               * File  ASPDform.s      151
  679 00701 00000           CON(5)  =NOVAL
  680 00706 00000           CON(5)  =BINT5
  681               * File  ASPDform.s      152
  682 0070B 00000           CON(5)  =DOFLASHP
  683 00710 0000000         CON(7)  =^IfSetFieldValue
  684               * Reset TAS field
  685               * File  ASPDform.s      153
  686 00717 00000           CON(5)  =TRUE
  687               * Return external value
  688               * File  ASPDform.s      154
  689 0071C 00000           CON(5)  =SEMI
  690               * File  ASPDform.s      155
  691 00721 00000           CON(5)  =DUPTYPEEXT?
  692 00726 00000           CON(5)  =case
  693 0072B 00000           CON(5)  =DOCOL
  694               * UNIT
  695               * File  ASPDform.s      156
  696 00730 00000           CON(5)  =DUP
  697 00735 00000           CON(5)  =DOIDNT
  698 0073A 20              CON(2)  2
  699 0073C 4523            NIBASC  \T2\
  700 00740 00000           CON(5)  =EQUALNOT
  701 00745 00000           CON(5)  =IT
  702 0074A 00000           CON(5)  =DOCOL
  703               * IF changed from initial value
  704               * File  ASPDform.s      157
  705 0074F 00000           CON(5)  =NOVAL
  706 00754 00000           CON(5)  =BINT4
  707               * File  ASPDform.s      158
  708 00759 00000           CON(5)  =DOFLASHP
  709 0075E 0000000         CON(7)  =^IfSetFieldValue
  710               * Reset T1 field
  711               * File  ASPDform.s      159
  712 00765 00000           CON(5)  =NOVAL
  713 0076A 00000           CON(5)  =BINT5
  714               * File  ASPDform.s      160
  715 0076F 00000           CON(5)  =DOFLASHP
  716 00774 0000000         CON(7)  =^IfSetFieldValue
  717               * Reset TAS field
  718               * File  ASPDform.s      161
  719 0077B 00000           CON(5)  =SEMI
  720               * File  ASPDform.s      162
  721 00780 00000           CON(5)  =TRUE
  722               * Return external value
  723               * File  ASPDform.s      163
  724 00785 00000           CON(5)  =SEMI
  725               * File  ASPDform.s      164
  726 0078A 00000           CON(5)  =TRUE
  727               * Message was handled
  728               * File  ASPDform.s      165
  729 0078F 00000           CON(5)  =SEMI
  730               * File  ASPDform.s      166
  731 00794 00000           CON(5)  =FALSE
  732               * Other messages not handled
  733               * File  ASPDform.s      167
  734 00799 00000           CON(5)  =SEMI
  735               * File  ASPDform.s      168
  736 0079E 00000           CON(5)  =BINT14
  737 007A3 00000           CON(5)  =BINT26
  738 007A8 00000           CON(5)  =BINT45
  739 007AD 00000           CON(5)  =BINT8
  740               * Position & size
  741               * File  ASPDform.s      169
  742 007B2 00000           CON(5)  =BINT1
  743               * Field type: TEXT
  744               * File  ASPDform.s      170
  745 007B7 00000           CON(5)  =DOLIST
  746 007BC 00000           CON(5)  =BINT0
  747 007C1 00000           CON(5)  =BINT13
  748 007C6 00000           CON(5)  =SEMI
  749               * Allowed type: REAL, UNIT
  750               * File  ASPDform.s      171
  751 007CB 00000           CON(5)  =BINT2
  752               * Decompile with stack appearance
  753               * File  ASPDform.s      172
  754 007D0 00000           CON(5)  =DOCSTR
  755 007D5 54000           CON(5)  69
  756 007DA 45F4451         NIBASC  \TOTAL (INDICATED) AI\
            4C40282
            94E44494341445544492021494

  757 00802 2502455         NIBASC  \R TEMP. (\
            4D405E2
            0282
  758 00814 0B              CON(2)  #B0
  759 00816 3492            NIBASC  \C)\
  760               * Help string
  761               * File  ASPDform.s      173
  762 0081A 00000           CON(5)  =MINUSONE
  763               * ChooseData N/A
  764               * File  ASPDform.s      174
  765 0081F 00000           CON(5)  =MINUSONE
  766               * ChooseDecompile
  767               * File  ASPDform.s      175
  768 00824 00000           CON(5)  =MINUSONE
  769               * Reset value
  770               * File  ASPDform.s      176
  771 00829 00000           CON(5)  =DOIDNT
  772 0082E 20              CON(2)  2
  773 00830 4523            NIBASC  \T2\
  774               * Initial value
  775               * File  ASPDform.s      177
  776
  777               * File  ASPDform.s      178
  778               * Field T1 definition [#BINT4]
  779               * File  ASPDform.s      179
  780 00834 00000           CON(5)  ='
  781 00839 00000           CON(5)  =DOCOL
  782               * Field message handler
  783               * File  ASPDform.s      180
  784 0083E 00000           CON(5)  =FOUR
  785 00843 00000           CON(5)  =#=case
  786 00848 00000           CON(5)  =DOCOL
  787               * Get internal field value
  788               * File  ASPDform.s      181
  789 0084D 00000           CON(5)  =DUPTYPEREAL?
  790 00852 00000           CON(5)  =case
  791 00857 00000           CON(5)  =DOCOL
  792               * REAL
  793               * File  ASPDform.s      182
  794 0085C 00000           CON(5)  =DOCSTR
  795 00861 90000           CON(5)  9
  796 00866 0B              CON(2)  #B0
  797 00868 34              NIBASC  \C\
  798 0086A 00000           CON(5)  =umEND
  799 0086F 00000           CON(5)  =BINT3
  800 00874 00000           CON(5)  =EXTN
  801               * Add default feet units
  802               * File  ASPDform.s      183
  803 00879 00000           CON(5)  =NOVAL
  804 0087E 00000           CON(5)  =BINT3
  805               * File  ASPDform.s      184
  806 00883 00000           CON(5)  =DOFLASHP
  807 00888 0000000         CON(7)  =^IfSetFieldValue
  808               * Reset T2 field
  809               * File  ASPDform.s      185
  810 0088F 00000           CON(5)  =NOVAL
  811 00894 00000           CON(5)  =BINT5
  812               * File  ASPDform.s      186
  813 00899 00000           CON(5)  =DOFLASHP
  814 0089E 0000000         CON(7)  =^IfSetFieldValue
  815               * Reset TAS field
  816               * File  ASPDform.s      187
  817 008A5 00000           CON(5)  =BINT5
  818 008AA 00000           CON(5)  =DOFLASHP
  819 008AF 0000000         CON(7)  =^IfSetField
  820               * Set focus to VC
  821               * File  ASPDform.s      188
  822 008B6 00000           CON(5)  =TRUE
  823               * Return external value
  824               * File  ASPDform.s      189
  825 008BB 00000           CON(5)  =SEMI
  826               * File  ASPDform.s      190
  827 008C0 00000           CON(5)  =DUPTYPEEXT?
  828 008C5 00000           CON(5)  =case
  829 008CA 00000           CON(5)  =DOCOL
  830               * UNIT
  831               * File  ASPDform.s      191
  832 008CF 00000           CON(5)  =DUP
  833 008D4 00000           CON(5)  =DOIDNT
  834 008D9 20              CON(2)  2
  835 008DB 4513            NIBASC  \T1\
  836 008DF 00000           CON(5)  =EQUALNOT
  837 008E4 00000           CON(5)  =IT
  838 008E9 00000           CON(5)  =DOCOL
  839               * IF changed from initial value
  840               * File  ASPDform.s      192
  841 008EE 00000           CON(5)  =NOVAL
  842 008F3 00000           CON(5)  =BINT3
  843               * File  ASPDform.s      193
  844 008F8 00000           CON(5)  =DOFLASHP
  845 008FD 0000000         CON(7)  =^IfSetFieldValue
  846               * Reset T2 field
  847               * File  ASPDform.s      194
  848 00904 00000           CON(5)  =NOVAL
  849 00909 00000           CON(5)  =BINT5
  850               * File  ASPDform.s      195
  851 0090E 00000           CON(5)  =DOFLASHP
  852 00913 0000000         CON(7)  =^IfSetFieldValue
  853               * Reset TAS field
  854               * File  ASPDform.s      196
  855 0091A 00000           CON(5)  =BINT5
  856 0091F 00000           CON(5)  =DOFLASHP
  857 00924 0000000         CON(7)  =^IfSetField
  858               * Set focus to VC
  859               * File  ASPDform.s      197
  860 0092B 00000           CON(5)  =SEMI
  861               * File  ASPDform.s      198
  862 00930 00000           CON(5)  =TRUE
  863               * Return external value
  864               * File  ASPDform.s      199
  865 00935 00000           CON(5)  =SEMI
  866               * File  ASPDform.s      200
  867 0093A 00000           CON(5)  =TRUE
  868               * Message was handled
  869               * File  ASPDform.s      201
  870 0093F 00000           CON(5)  =SEMI
  871               * File  ASPDform.s      202
  872 00944 00000           CON(5)  =FALSE
  873               * Other messages not handled
  874               * File  ASPDform.s      203
  875 00949 00000           CON(5)  =SEMI
  876               * File  ASPDform.s      204
  877 0094E 00000           CON(5)  =BINT79
  878 00953 00000           CON(5)  =BINT26
  879 00958 00000           CON(5)  =BINT45
  880 0095D 00000           CON(5)  =BINT8
  881               * Position & size
  882               * File  ASPDform.s      205
  883 00962 00000           CON(5)  =BINT1
  884               * Field type: TEXT
  885               * File  ASPDform.s      206
  886 00967 00000           CON(5)  =DOLIST
  887 0096C 00000           CON(5)  =BINT0
  888 00971 00000           CON(5)  =BINT13
  889 00976 00000           CON(5)  =SEMI
  890               * Allowed type: REAL, UNIT
  891               * File  ASPDform.s      207
  892 0097B 00000           CON(5)  =BINT2
  893               * Decompile with stack appearance
  894               * File  ASPDform.s      208
  895 00980 00000           CON(5)  =DOCSTR
  896 00985 D3000           CON(5)  61
  897 0098A 3545144         NIBASC  \STATIC (TRUE) AIR TE\
            5943402
            82452555549202149425024554

  898 009B2 D405E20         NIBASC  \MP. (\
            282
  899 009BC 0B              CON(2)  #B0
  900 009BE 3492            NIBASC  \C)\
  901               * Help string
  902               * File  ASPDform.s      209
  903 009C2 00000           CON(5)  =MINUSONE
  904               * ChooseData N/A
  905               * File  ASPDform.s      210
  906 009C7 00000           CON(5)  =MINUSONE
  907               * ChooseDecompile
  908               * File  ASPDform.s      211
  909 009CC 00000           CON(5)  =MINUSONE
  910               * Reset value
  911               * File  ASPDform.s      212
  912 009D1 00000           CON(5)  =DOIDNT
  913 009D6 20              CON(2)  2
  914 009D8 4513            NIBASC  \T1\
  915               * Initial value
  916               * File  ASPDform.s      213
  917
  918               * File  ASPDform.s      214
  919               * Field V1 definition [#BINT5]
  920               * File  ASPDform.s      215
  921 009DC 00000           CON(5)  ='DROPFALSE
  922               * File  ASPDform.s      216
  923 009E1 00000           CON(5)  =BINT14
  924 009E6 00000           CON(5)  =BINT35
  925 009EB 00000           CON(5)  =BINT110
  926 009F0 00000           CON(5)  =BINT8
  927               * Position & size
  928               * File  ASPDform.s      217
  929 009F5 00000           CON(5)  =BINT1
  930               * Field type: TEXT
  931               * File  ASPDform.s      218
  932 009FA 00000           CON(5)  =DOLIST
  933 009FF 00000           CON(5)  =BINT0
  934 00A04 00000           CON(5)  =BINT13
  935 00A09 00000           CON(5)  =SEMI
  936               * Allowed type: REAL, UNIT
  937               * File  ASPDform.s      219
  938 00A0E 00000           CON(5)  =BINT2
  939               * Decompile with stack appearance
  940               * File  ASPDform.s      220
  941 00A13 00000           CON(5)  =DOCSTR
  942 00A18 33000           CON(5)  51
  943 00A1D 4525555         NIBASC  \TRUE AIR SPEED (OUTP\
            4021494
            250235055454440282F4554505

  944 00A45 554592          NIBASC  \UT)\
  945               * Help string
  946               * File  ASPDform.s      221
  947 00A4B 00000           CON(5)  =MINUSONE
  948               * ChooseData N/A
  949               * File  ASPDform.s      222
  950 00A50 00000           CON(5)  =MINUSONE
  951               * ChooseDecompile
  952               * File  ASPDform.s      223
  953 00A55 00000           CON(5)  =MINUSONE
  954               * Reset value
  955               * File  ASPDform.s      224
  956 00A5A 00000           CON(5)  =DOIDNT
  957 00A5F 20              CON(2)  2
  958 00A61 6513            NIBASC  \V1\
  959               * Initial value
  960               * File  ASPDform.s      225
  961
  962               * File  ASPDform.s      226
  963 00A65 00000           CON(5)  =BINT6
  964 00A6A 00000           CON(5)  =BINT6
  965               * Label and field count
  966               * File  ASPDform.s      227
  967
  968               * File  ASPDform.s      228
  969 00A6F 00000           CON(5)  ='DROPFALSE
  970               * Inform Box message handler
  971               * File  ASPDform.s      229
  972 00A74 00000           CON(5)  =DOCSTR
  973 00A79 51000           CON(5)  21
  974 00A7E 1494253         NIBASC  \AIRSPEED\
            5055454
            44
  975               * Title
  976               * File  ASPDform.s      230
  977 00A8E 00000           CON(5)  =DOFLASHP
  978 00A93 0000000         CON(7)  =^IfMain
  979               * Create and run the input form
  980               * File  ASPDform.s      231
  981 00A9A 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Symbol Table                       ASPDform.a     Page    2

 #=case                            Ext                   -   159   289   654
                                         785
 %0<>                              Ext                   -   320   394
 %1                                Ext                   -   562
 %>                                Ext                   -   563
 '                                 Ext                   -   154   284   496
                                         649   780
 'DROPFALSE                        Ext                   -   921   969
 AND                               Ext                   -   582
=ASPDform                          Rel       0 #00000000 -   108
 BINT0                             Ext                   -   250   330   404
                                         462   522   568   619   746   887   933
 BINT1                             Ext                   -   116   122   134
                                         146   246   458   529   575   615   742
                                         883   929
 BINT110                           Ext                   -   242   925
 BINT13                            Ext                   -   251   463   747
                                         888   934
 BINT14                            Ext                   -   240   452   736
                                         923
 BINT17                            Ext                   -   453   610
 BINT18                            Ext                   -   123   129
 BINT2                             Ext                   -   177   210   255
                                         341   354   415   428   467   623   751
                                         892   938
 BINT26                            Ext                   -   737   878
 BINT27                            Ext                   -   135   141
 BINT3                             Ext                   -   172   302   668
                                         799   804   842
 BINT35                            Ext                   -   924
 BINT36                            Ext                   -   147
 BINT4                             Ext                   -   673   706
 BINT45                            Ext                   -   454   738   879
 BINT49                            Ext                   -   611
 BINT5                             Ext                   -   184   217   348
                                         422   536   680   713   811   817   849
                                         855
 BINT6                             Ext                   -   963   964
 BINT66                            Ext                   -   128   140
 BINT75                            Ext                   -   609
 BINT79                            Ext                   -   877
 BINT8                             Ext                   -   241   243   455
                                         612   739   880   926
 BINT9                             Ext                   -   117
 DOCOL                             Ext                   -   110   155   160
                                         165   197   206   285   290   295   322
                                         337   368   377   396   411   497   502
                                         509   518   556   565   584   650   655
                                         660   693   702   781   786   791   829
                                         838
 DOCSTR                            Ext                   -   113   119   125
                                         131   137   143   168   258   298   312
                                         386   470   586   626   663   754   794
                                         895   941   972
 DOEXT                             Ext                   -   307   381
 DOFLASHP                          Ext                   -   179   186   212
                                         219   331   343   350   355   405   417
                                         424   429   524   531   538   569   576
                                         675   682   708   715   806   813   818
                                         844   851   856   977
 DOIDNT                            Ext                   -   201   275   372
                                         487   513   640   697   771   833   912
                                         956
 DOLIST                            Ext                   -   249   461   618
                                         745   886   932
 DOREAL                            Ext                   -   308   382
 DROP                              Ext                   -   324   398   505
                                         559
 DROPFALSE                         Ext                   -   604
 DUP                               Ext                   -   200   306   371
                                         380   512   561   696   832
 DUPTYPEEXT?                       Ext                   -   195   366   691
                                         827
 DUPTYPEREAL?                      Ext                   -   163   293   507
                                         658   789
 EQUALNOT                          Ext                   -   204   375   516
                                         572   579   700   836
 EXTN                              Ext                   -   173   303   669
                                         800
 FALSE                             Ext                   -   235   447   731
                                         872
 FIVE                              Ext                   -   554
 FOUR                              Ext                   -   158   288   500
                                         653   784
 FlashWarning                      Ext                   -   592
 IT                                Ext                   -   205   376   517
                                         564   583   701   837
 ITE                               Ext                   -   321   395
 MINUSONE                          Ext                   -   266   269   272
                                         478   481   484   631   634   637   762
                                         765   768   903   906   909   947   950
                                         953
 NOVAL                             Ext                   -   176   183   209
                                         216   327   340   347   401   414   421
                                         521   528   535   571   578   672   679
                                         705   712   803   810   841   848
 OVER#=case                        Ext                   -   501   555
=RomId                             Abs     808 #00000328 -    10
 SEMI                              Ext                   -   193   223   228
                                         233   238   252   316   335   359   364
                                         390   409   433   435   440   445   450
                                         464   542   547   552   594   596   602
                                         607   620   689   719   724   729   734
                                         748   825   860   865   870   875   889
                                         935   981
 TRUE                              Ext                   -   190   225   230
                                         361   437   442   544   549   599   686
                                         721   726   822   862   867
 UM>?                              Ext                   -   319   393
 ^IfGetFieldValue                  Ext                   -   570   577
 ^IfMain                           Ext                   -   978
 ^IfSetField                       Ext                   -   332   356   406
                                         430   819   857
 ^IfSetFieldValue                  Ext                   -   180   187   213
                                         220   344   351   418   425   525   532
                                         539   676   683   709   716   807   814
                                         845   852
 case                              Ext                   -   164   196   294
                                         367   508   659   692   790   828
 umEND                             Ext                   -   171   301   315
                                         389   667   798
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Statistics                         ASPDform.a     Page    3

Input Parameters

  Source file name is ASPDform.a

  Listing file name is ASPDform.l

  Object file name is ASPDform.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
