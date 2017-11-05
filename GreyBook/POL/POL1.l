Saturn Assembler                                       Thu Jun 04 23:24:54 2009
V3.0.9 (04/15/2007)                                      POL1.a         Page    1

    1               * File  POL1.s  1
    2               * RPL
    3               * File  POL1.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\POL\POL1.s, part of the POL1.hpp project, created by <> on 9/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Displays a number, initially 1, and enables the
    7               *                  + & - keys to increment and decrement the number.
    8               *                  The OFF key is enabled, and the softkey QUIT is
    9               *                  used to provide the exit signal.  Program is
   10               *                  extended to allow repeated + & - key press.
   11               * COOMPATIBILITY:  HP48 ( Remove Header.h & enable kc & kp defs. )
   12               *                  HP50 ( Must include Header.h )
   13               * USAGE:     ( -> )
   14               *
   15               * File  POL1.s  13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
   17
   18
   19               * RPL
   20               * insure RPL-mode exit
   21
   22               * ( Rad
   23
   24               * ( %2PI
   25               * ( %PI/24
   26
   27
   28
   29
   30               * ( 1=1Var, 2=2Var Statistic
   31               * ( 1=Histogram, 2=BoxWhisker
   32
   33
   34
   35
   36
   37               * ASSEMBLE
   38               DefSysF64-33 EQU        #00000000
   39               DefSysF32-01 EQU        #04010FF0
   40               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   41               DefSysF97-128 EQU       #00000000
   42
   43               * RPL
   44
   45
   46               * ( solution mode
   47               * ( constants mode
   48               * ( results mode
   49               * ( careful evaluation mode
   50
   51               * ( binary integer wordsize
   52               * must start on nibble boundary
   53               * ( binary integer base
   54               * must follow "fnBinWordS6"
   55
   56               * ( financial BEGIN/END mode
   57               * ( complex number and vector
   58               * mode
   59               * ( angle mode
   60               * must start on a nibble boundary
   61               * ( complex 2D mode
   62               * ( underflow action
   63               * ( overflow action
   64               * ( infinite result action
   65               * ( underflow-negative indicator
   66               * ( underflow-positive indicator
   67               * ( overflow indicator
   68               * ( infinite result indicator
   69               * ( symbolic-comples decompilation
   70               * ( simultaneous plot mode
   71               * ( axis drawing plot mode
   72
   73               * ( connect points mode
   74               * ( graphics cursor type mode
   75               * ( I/O device
   76               * ( print device
   77               * ( I/O data format
   78               * ( variable overwrite mode
   79               * ( double-space print mode
   80               * ( suppress auto CR mode
   81               * ( suppress I/O status messages
   82
   83
   84               * ( clock display mode
   85               * ( clock display format
   86               * ( date format
   87               * ( reschedule unacknowledged
   88               * repeat alarms mode
   89               * ( delete acknowledged non-repeat
   90               * alarms mode
   91
   92               * ( number of decimal digits
   93               * must start on nibble boundary
   94               * ( number display format
   95               * must start on nibble boundary
   96               * ( radix mark
   97               * ( multi-line display mode
   98               * ( show precedence mode
   99               * ( zero out tiny matrix elements
  100
  101               * ( last arguments mode
  102               * ( error beep mode
  103               * ( alarm beep mode
  104               * ( verbose display mode
  105               * ( variable name only mode
  106               * ( 3-way alpha mode
  107               * ( 3-way user keys mode
  108               * ( user keys mode
  109               * ( special parser mode
  110               * ( index wraparound indicator
  111
  112
  113               * ASSEMBLE
  114               SolutionsFl  EQU 1
  115               ConstantsFl  EQU 2
  116               ResultsFl    EQU 3
  117               CarefulFl    EQU 4
  118
  119               BinWordSFl1  EQU 5      must start on a nibble boundary
  120               BinWordSBCt  EQU 6      number of bits
  121               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  122               BinBaseBCt   EQU 2      number of bits
  123
  124               ComVecDiFl1  EQU 15
  125               ComVecDiBCt  EQU 2      number of bits
  126               AngleFl1     EQU 17     must start on a nibble boundary
  127               AngleBCt     EQU 2      number of bits
  128               Complex2DFl  EQU 19
  129               UnderfActFl  EQU 20
  130               OverfActFl   EQU 21
  131               InfResActFl  EQU 22
  132               UnderfNegFl  EQU 23
  133               UnderfPosFl  EQU 24
  134               OverflowFl   EQU 25
  135               InfResultFl  EQU 26
  136
  137               FunctPlotFl  EQU 30
  138               ConnectPtFl  EQU 31
  139               GCursorFl    EQU 32
  140               IODeviceFl   EQU 33
  141               PrintDevFl   EQU 34
  142               IODataFmtFl  EQU 35
  143               OverwriteFl  EQU 36
  144               DblSpaceFl   EQU 37
  145               NoAutoCRFl   EQU 38
  146               NoIOStsMsgFl EQU 39
  147
  148               ClockOnFl    EQU 40
  149               ClockFmtFl   EQU 41
  150               DateFmtFl    EQU 42
  151               ResRepAlmFl  EQU 43
  152               DelNRAlmFl   EQU 44
  153
  154               NumDigsFl1   EQU 45     must start on a nibble boundary
  155               NumDigsBCt   EQU 4      number of bits
  156               NumDispFl1   EQU 49     must start on a nibble boundary
  157               NumDispBCt   EQU 2      number of bits
  158               RadixFl      EQU 51
  159               MultiDispFl  EQU 52
  160               ShowPrecFl   EQU 53
  161
  162               LastArgsFl   EQU 55
  163               ErrorBeepFl  EQU 56
  164               AlarmBeepFl  EQU 57
  165               VerboseFl    EQU 58
  166               FastEqViewFl EQU 59
  167               TriAlphaFl   EQU 60
  168               TriUserFl    EQU 61
  169               UserKeysFl   EQU 62
  170               NoParseFl    EQU 63
  171               IndexWrapFl  EQU 64
  172
  173
  174
  175               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  176               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  177
  178               AngleNib     EQU ((AngleFl1)-1)/4
  179               AngleBit1    EQU ((AngleFl1)-1)%4
  180               AngleBit2    EQU (AngleBit1)+1
  181
  182               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  183               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  184
  185               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  186               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  187
  188               CarefulNib   EQU ((CarefulFl)-1)/4
  189               CarefulBit   EQU ((CarefulFl)-1)%4
  190
  191               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  192               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  193
  194               ClockOnNib   EQU ((ClockOnFl)-1)/4
  195               ClockOnBit   EQU ((ClockOnFl)-1)%4
  196
  197               Complex2DNib EQU ((Complex2DFl)-1)/4
  198               Complex2DBit EQU ((Complex2DFl)-1)%4
  199
  200               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  201               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  202
  203               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  204               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  205
  206               ConstantsNib EQU ((ConstantsFl)-1)/4
  207               ConstantsBit EQU ((ConstantsFl)-1)%4
  208
  209               DateFmtNib   EQU ((DateFmtFl)-1)/4
  210               DateFmtBit   EQU ((DateFmtFl)-1)%4
  211
  212               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  213               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  214
  215               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  216               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  217
  218               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  219               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  220
  221               FastEViewNib EQU ((FastEqViewFl)-1)/4
  222               FastEViewBit EQU ((FastEqViewFl)-1)%4
  223
  224               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  225               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  226
  227               GCursorNib   EQU ((GCursorFl)-1)/4
  228               GCursorBit   EQU ((GCursorFl)-1)%4
  229
  230               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  231               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  232
  233               InfResActNib EQU ((InfResActFl)-1)/4
  234               InfResActBit EQU ((InfResActFl)-1)%4
  235
  236               InfResultNib EQU ((InfResultFl)-1)/4
  237               InfResultBit EQU ((InfResultFl)-1)%4
  238
  239               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  240               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  241
  242               IODeviceNib  EQU ((IODeviceFl)-1)/4
  243               IODeviceBit  EQU ((IODeviceFl)-1)%4
  244
  245               LastArgsNib  EQU ((LastArgsFl)-1)/4
  246               LastArgsBit  EQU ((LastArgsFl)-1)%4
  247
  248               VerboseNib   EQU ((VerboseFl)-1)/4
  249               VerboseBit   EQU ((VerboseFl)-1)%4
  250
  251               MultiDispNib EQU ((MultiDispFl)-1)/4
  252               MultiDispBit EQU ((MultiDispFl)-1)%4
  253
  254               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  255               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  256
  257               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  258               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  259
  260               NoParseNib   EQU ((NoParseFl)-1)/4
  261               NoParseBit   EQU ((NoParseFl)-1)%4
  262
  263               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  264               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  265
  266               NumDispNib   EQU ((NumDispFl1)-1)/4
  267               NumDispBit1  EQU ((NumDispFl1)-1)%4
  268
  269               OverfActNib  EQU ((OverfActFl)-1)/4
  270               OverfActBit  EQU ((OverfActFl)-1)%4
  271
  272               OverflowNib  EQU ((OverflowFl)-1)/4
  273               OverflowBit  EQU ((OverflowFl)-1)%4
  274
  275               OverwriteNib EQU ((OverwriteFl)-1)/4
  276               OverwriteBit EQU ((OverwriteFl)-1)%4
  277
  278               PrintDevNib  EQU ((PrintDevFl)-1)/4
  279               PrintDevBit  EQU ((PrintDevFl)-1)%4
  280
  281               RadixNib     EQU ((RadixFl)-1)/4
  282               RadixBit     EQU ((RadixFl)-1)%4
  283
  284               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  285               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  286
  287               ResultsNib   EQU ((ResultsFl)-1)/4
  288               ResultsBit   EQU ((ResultsFl)-1)%4
  289
  290               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  291               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  292
  293               SolutionsNib EQU ((SolutionsFl)-1)/4
  294               SolutionsBit EQU ((SolutionsFl)-1)%4
  295
  296               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  297               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  298
  299               TriUserNib   EQU ((TriUserFl)-1)/4
  300               TriUserBit   EQU ((TriUserFl)-1)%4
  301
  302               UnderfActNib EQU ((UnderfActFl)-1)/4
  303               UnderfActBit EQU ((UnderfActFl)-1)%4
  304
  305               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  306               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  307
  308               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  309               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  310
  311               UserKeysNib  EQU ((UserKeysFl)-1)/4
  312               UserKeysBit  EQU ((UserKeysFl)-1)%4
  313
  314               * RPL
  315               * RPL
  316               * insure RPL-mode exit
  317
  318
  319               * ASSEMBLE
  320
  321
  322               nonALG EQU 8                    not-allowed-in-algebraics flag
  323               hasHELP EQU 4                   has-help-data flag
  324               hasPROMPTM EQU 4                same as above
  325               hasALIAS EQU 2                  has-algebraic-alias flag
  326               hasPDATA EQU 1                  has-parse-data flag
  327
  328
  329               hasDER EQU 8                    has-derivative flag
  330               hasINV EQU 4                    has-inverse flag
  331               hasCOLCT EQU 2                  has-COLCT-data flag
  332               hasEXPND EQU 1                  has-EXPND-data flag
  333
  334
  335               hasFORM EQU 8                   has-FORM-menu flag
  336               hasINTG EQU 4                   has-Integral-data flag
  337               hasWHERE EQU 2                  has-WHERE-code flag
  338               hasVUNS EQU 1                   has-veryunsymin-code flag
  339
  340
  341               pdEX EQU #0             general expression
  342               pdOP EQU #1             operator
  343               pdQE EQU #2             quoted expression
  344               pdQN EQU #3             quoted name
  345               pdLP EQU #4             left parenthesis
  346               pdRP EQU #5             right parenthesis
  347               pdCM EQU #6             comma (non-radix)
  348               pdEQ EQU #7             equal-sign separator
  349               pdOS0 EQU #8            optional repeat 0
  350               pdOS1 EQU #9            optional repeat 1
  351               pdOS2 EQU #A            optional repeat 2
  352               pdOS3 EQU #B            optional repeat 3
  353               pdOS4 EQU #C            optional repeat 4
  354               pdOS5 EQU #D            optional repeat 5
  355               pdOS6 EQU #E            optional repeat 6
  356               pdOS7 EQU #F            optional repeat 7
  357
  358               * RPL
  359               * RPL
  360               * insure RPL-mode exit
  361
  362
  363
  364
  365
  366
  367
  368
  369
  370
  371
  372
  373
  374
  375
  376
  377
  378               * RPL
  379               * insure RPL-mode exit
  380
  381               * RPL
  382               * insure RPL-mode exit
  383
  384
  385
  386
  387
  388
  389
  390
  391
  392               * ( for internal use only
  393
  394
  395
  396
  397
  398
  399
  400
  401
  402
  403               * ( decimal 67
  404               * ( decimal 86
  405               * ( decimal 82
  406               * ( decimal 85
  407               * ( decimal 101
  408               * ( decimal 97
  409               * ( decimal 100
  410               * ( decimal 113
  411               * ( decimal 112
  412
  413               * ( check width
  414               * ( field character width
  415
  416               * ( decimal 67
  417               * ( decimal 85
  418               * ( decimal 97
  419
  420
  421
  422
  423
  424
  425
  426
  427
  428
  429
  430
  431
  432
  433
  434
  435
  436               * RPL
  437               * insure RPL-mode exit
  438
  439               * ( decimal 66
  440               * ( decimal 67
  441               * ( decimal 69
  442               * ( decimal 82
  443               * ( decimal 83
  444               * ( decimal 84
  445               * ( decimal 85
  446               * ( decimal 86
  447               * ( decimal 87
  448
  449
  450               * ( norm-view default visible row count
  451               * ( default first row X location
  452               * ( default first row Y location
  453               * ( default row width
  454               * ( default row height
  455
  456               * ( max-view width
  457               * ( max-view height
  458               * ( max-view default visible row count
  459
  460               * ( prompt area height
  461
  462               * ( more-up/down icon width
  463
  464
  465
  466               * RPL
  467               * insure RPL-mode exit
  468
  469
  470
  471
  472
  473
  474
  475
  476
  477
  478
  479
  480
  481
  482
  483
  484
  485
  486
  487
  488
  489
  490
  491
  492
  493
  494
  495
  496
  497
  498
  499
  500
  501
  502
  503
  504
  505
  506
  507
  508
  509
  510
  511
  512
  513
  514
  515
  516
  517
  518
  519
  520
  521
  522
  523
  524
  525
  526
  527
  528
  529
  530
  531
  532
  533
  534
  535
  536
  537
  538
  539
  540
  541
  542
  543
  544
  545
  546
  547
  548
  549
  550
  551
  552
  553
  554
  555
  556
  557
  558
  559
  560
  561
  562
  563
  564
  565
  566
  567
  568
  569
  570
  571
  572
  573
  574
  575
  576
  577
  578
  579
  580
  581
  582
  583
  584
  585
  586
  587
  588
  589
  590
  591
  592
  593
  594
  595
  596
  597
  598
  599
  600
  601
  602
  603
  604
  605
  606
  607
  608
  609
  610
  611
  612
  613
  614
  615
  616
  617
  618
  619
  620
  621
  622
  623
  624
  625
  626
  627
  628
  629
  630
  631
  632
  633
  634
  635
  636
  637
  638
  639
  640
  641
  642
  643
  644
  645
  646
  647
  648
  649
  650
  651
  652
  653
  654
  655
  656
  657
  658
  659
  660
  661
  662
  663
  664
  665
  666
  667
  668
  669
  670
  671
  672
  673
  674
  675
  676
  677
  678
  679
  680
  681
  682
  683               * RPL
  684               * insure RPL-mode exit
  685
  686
  687
  688               * ( set for informations
  689               * ( set for step by step mode on
  690               * ( internal use: true if VXXL success
  691               * ( set for no gcd computations
  692               * ( set for complex mode
  693               * ( internal use:       LN->-INV[-LN]]
  694               * ( set for approx mode
  695               * ( set for TSIMP call inside SERIES
  696               * ( internal use:       modular computation
  697               * ( internal use:       testing remainder=0
  698               * ( set to allow numeric factorization
  699               * ( set for large matrices
  700               * ( set: don't simplify inside non rational operation
  701               * ( set to see i as an irrquad c=-1
  702               * ( set to disable linearity simplif.
  703               * ( set for increasing power x+1 -> 1+x
  704               * ( internal use:       sqrt not as irrquad
  705               * ( set if sin are prefered to cos
  706               * ( set for menu as choosebox
  707               * ( set if xINT is not simplified
  708               * ( set if non rigourous mode
  709               * ( set to allow silent mode switch
  710               * ( set if xLN returns LN[ABS[]]
  711
  712
  713               * ASSEMBLE
  714
  715               MultiLineFl     EQU     65
  716               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  717               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  718               MultiLineStringsFl      EQU     66
  719               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  720               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  721               DigitalClockFl  EQU     67
  722               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  723               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  724               CmdAutoIndentFl EQU     68
  725               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  726               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  727               FullScreenEditFl        EQU     69
  728               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  729               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  730               MultiLine2GROBFl        EQU     70
  731               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  732               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  733               DesasmWithAdrFl EQU     71
  734               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  735               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  736               BigFontStackFl  EQU     72
  737               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  738               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  739               BigFontCmdFl    EQU     73
  740               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  741               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  742               RightJustifiedStackFl   EQU     74
  743               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  744               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  745               KeystrokeBeepFl EQU     75
  746               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  747               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  748               FilerConfirmationFl     EQU     76
  749               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  750               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  751               FilerConfirmFl  EQU     77
  752               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  753               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  754               KernelParamFl   EQU     78
  755               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  756               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  757               PrettyPrintFl   EQU     79
  758               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  759               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  760               SmallFontEQWStackFl     EQU     80
  761               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  762               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  763               SmallFontEQWGrobFl      EQU     81
  764               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  765               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  766               SmallFontEQWEditFl      EQU     82
  767               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  768               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  769               GrobDisplayFl   EQU     83
  770               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  771               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  772               MKSmallFontMenuFl       EQU     84
  773               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  774               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  775               SystemRPLStackFl        EQU     85
  776               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  777               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  778               MASDDecompilerFl        EQU     86
  779               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  780               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  781               RecursiveStackFl        EQU     87
  782               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  783               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  784               RecursiveEditFl EQU     88
  785               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  786               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  787               AddressesCLEFl  EQU     89
  788               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  789               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  790               SmallFontChooseFl       EQU     90
  791               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  792               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  793               ArrayOnlyFl     EQU     91
  794               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  795               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  796               MLMASDModeFl    EQU     92
  797               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  798               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  799               ErableHeaderFl  EQU     93
  800               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  801               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  802               AutoSaveFl      EQU     94
  803               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  804               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  805               AlgebraicModeFl EQU     95
  806               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  807               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  808               MenuOnFl        EQU     96
  809               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  810               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  811               VerticalListFl  EQU     97
  812               VerticalListNib EQU     ((VerticalListFl)-1)/4
  813               VerticalListBit EQU     ((VerticalListFl)-1)%4
  814               VerticalVectorFl        EQU     98
  815               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  816               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  817
  818
  819               ComplexFl       EQU     103
  820               ComplexNib      EQU     ((ComplexFl)-1)/4
  821               ComplexBit      EQU     ((ComplexFl)-1)%4
  822
  823
  824               ExactModeFl     EQU     105
  825               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  826               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  827
  828
  829               * RPL
  830
  831
  832
  833               * ASSEMBLE
  834                       SETLIST CODE, INCLUDE, PSEUDO
  835               * RPL
  836
  837               *|| Resuming file POL1.s at line 13
  838 00000 00000           CON(5)  =DOCOL
  839               * File  POL1.s  22
  840 00005 00000           CON(5)  =0LASTOWDOB!
  841               * Clear saved command name
  842               * File  POL1.s  23
  843 0000A 00000           CON(5)  =CK0NOLASTWD
  844               * No arguments
  845               * File  POL1.s  24
  846 0000F 00000           CON(5)  =ClrDA1IsStat
  847               * Suspend clock
  848               * File  POL1.s  25
  849 00014 00000           CON(5)  =RECLAIMDISP
  850               * Clear display
  851               * File  POL1.s  26
  852 00019 00000           CON(5)  =FALSE
  853               * Exit flag [FALSE = continue]
  854               * File  POL1.s  27
  855 0001E 00000           CON(5)  =%1
  856               * Initial counter value
  857               * File  POL1.s  28
  858 00023 00000           CON(5)  ='
  859 00028 00000           CON(5)  =DOLAM
  860 0002D 70              CON(2)  7
  861 0002F 2557E6E         NIBASC  \Running\
            696E676
  862               * Runing flag [FALSE = continue, TRUE = exit]
  863               * File  POL1.s  29
  864 0003D 00000           CON(5)  ='
  865 00042 00000           CON(5)  =DOLAM
  866 00047 50              CON(2)  5
  867 00049 6516C65         NIBASC  \Value\
            756
  868               * Counter value
  869               * File  POL1.s  30
  870 00053 00000           CON(5)  =TWO
  871 00058 00000           CON(5)  =DOBIND
  872               * Create temporary environment
  873               * File  POL1.s  31
  874 0005D 00000           CON(5)  =DOLAM
  875 00062 50              CON(2)  5
  876 00064 6516C65         NIBASC  \Value\
            756
  877               * Display starting value
  878               * File  POL1.s  32
  879 0006E 00000           CON(5)  =EDITDECOMP$
  880               * File  POL1.s  33
  881 00073 00000           CON(5)  =DISPROW4
  882               * POL parameters
  883               * File  POL1.s  35
  884 00078 00000           CON(5)  ='
  885 0007D 00000           CON(5)  =DOCOL
  886               * Display Object
  887               *                          DA3OK? ?SKIP ::              ( Display menu if needed )
  888               *                            DispMenu.1                 ( Display menu )
  889               *                            SetDA3Valid                ( Freeze menu display area DA3 )
  890               *                          ;
  891               *                          LAM Value                    ( %Counter )
  892               *                          EDITDECOMP$                  ( %Counter -> $Counter )
  893               *                          DISPROW4                     ( Display $Counter )
  894               * File  POL1.s  43
  895 00082 00000           CON(5)  =DA3OK?
  896 00087 00000           CON(5)  =?SEMI
  897               * No display action needed other than menu
  898               * File  POL1.s  44
  899 0008C 00000           CON(5)  =DispMenu.1
  900               * File  POL1.s  45
  901 00091 00000           CON(5)  =SetDA3Valid
  902               * File  POL1.s  46
  903 00096 00000           CON(5)  =SEMI
  904               * File  POL1.s  47
  905 0009B 00000           CON(5)  ='
  906 000A0 00000           CON(5)  =DOCOL
  907               * Hard key handler [#keycode #plane -> Ob TRUE]
  908               * File  POL1.s  48
  909 000A5 00000           CON(5)  =ONE
  910 000AA 00000           CON(5)  =#=casedrop
  911 000AF 00000           CON(5)  =DOCOL
  912               * Process primary key plane [no shift] [DROP #keyplane]
  913               * File  POL1.s  49
  914 000B4 00000           CON(5)  =DUP#<7
  915 000B9 00000           CON(5)  =casedrpfls
  916               * Enables soft keys [DROP #keycode]
  917               * File  POL1.s  50
  918 000BE 00000           CON(5)  =FORTYONE
  919 000C3 00000           CON(5)  =?CaseKeyDef
  920 000C8 00000           CON(5)  =DOCOL
  921               * Process - key [#2Ch = 44d]
  922               * File  POL1.s  51
  923 000CD 00000           CON(5)  =TakeOver
  924               * Custom key definition placeholder
  925               * File  POL1.s  52
  926 000D2 00000           CON(5)  =REPEATER
  927 000D7 00000           CON(5)  =FORTYONE
  928 000DC 00000           CON(5)  =DOCOL
  929               * Handle repeat key press
  930               * File  POL1.s  53
  931 000E1 00000           CON(5)  =DOLAM
  932 000E6 50              CON(2)  5
  933 000E8 6516C65         NIBASC  \Value\
            756
  934               * %Counter
  935               * File  POL1.s  54
  936 000F2 00000           CON(5)  =%1-
  937               * -> %Counter-1
  938               * File  POL1.s  55
  939 000F7 00000           CON(5)  =DUP
  940               * File  POL1.s  56
  941 000FC 00000           CON(5)  ='
  942 00101 00000           CON(5)  =DOLAM
  943 00106 50              CON(2)  5
  944 00108 6516C65         NIBASC  \Value\
            756
  945 00112 00000           CON(5)  =STO
  946               * STO %Counter in LAM Value
  947               * File  POL1.s  57
  948 00117 00000           CON(5)  =EDITDECOMP$
  949               * %Counter-1 -> $
  950               * File  POL1.s  58
  951 0011C 00000           CON(5)  =DISPROW4
  952               * Display $
  953               * File  POL1.s  59
  954 00121 00000           CON(5)  =SEMI
  955               * File  POL1.s  60
  956 00126 00000           CON(5)  =SEMI
  957               * File  POL1.s  61
  958 0012B 00000           CON(5)  =FORTYSIX
  959 00130 00000           CON(5)  =?CaseKeyDef
  960 00135 00000           CON(5)  =DOCOL
  961               * Process + key [#31h = 49d]
  962               * File  POL1.s  62
  963 0013A 00000           CON(5)  =TakeOver
  964               * Custon key definition placeholder
  965               * File  POL1.s  63
  966 0013F 00000           CON(5)  =REPEATER
  967 00144 00000           CON(5)  =FORTYSIX
  968 00149 00000           CON(5)  =DOCOL
  969               * Handle repeat key press
  970               * File  POL1.s  64
  971 0014E 00000           CON(5)  =DOLAM
  972 00153 50              CON(2)  5
  973 00155 6516C65         NIBASC  \Value\
            756
  974               * %Counter
  975               * File  POL1.s  65
  976 0015F 00000           CON(5)  =%1+
  977               * -> %Counter+1
  978               * File  POL1.s  66
  979 00164 00000           CON(5)  =DUP
  980               * File  POL1.s  67
  981 00169 00000           CON(5)  ='
  982 0016E 00000           CON(5)  =DOLAM
  983 00173 50              CON(2)  5
  984 00175 6516C65         NIBASC  \Value\
            756
  985 0017F 00000           CON(5)  =STO
  986               * STO %Counter in LAM Value
  987               * File  POL1.s  68
  988 00184 00000           CON(5)  =EDITDECOMP$
  989               * File  POL1.s  69
  990 00189 00000           CON(5)  =DISPROW4
  991               * File  POL1.s  70
  992 0018E 00000           CON(5)  =SEMI
  993               * File  POL1.s  71
  994 00193 00000           CON(5)  =SEMI
  995               * File  POL1.s  72
  996 00198 00000           CON(5)  =FORTYTWO
  997 0019D 00000           CON(5)  =#=casedrpfls
  998               * Enable right shift key
  999               * File  POL1.s  73
 1000 001A2 00000           CON(5)  =DROP
 1001 001A7 00000           CON(5)  ='DoBadKeyT
 1002               * Reject all other keys -> DROP #keycode
 1003               * File  POL1.s  74
 1004 001AC 00000           CON(5)  =SEMI
 1005               * File  POL1.s  75
 1006 001B1 00000           CON(5)  =THREE
 1007 001B6 00000           CON(5)  =#=casedrop
 1008 001BB 00000           CON(5)  =DOCOL
 1009               * Process right shift plane
 1010               * File  POL1.s  76
 1011 001C0 00000           CON(5)  =FORTYTWO
 1012 001C5 00000           CON(5)  =#=casedrpfls
 1013               * Enable right shift key
 1014               * File  POL1.s  77
 1015 001CA 00000           CON(5)  =FORTYSEVEN
 1016 001CF 00000           CON(5)  =#=casedrpfls
 1017               * Enable OFF key
 1018               * File  POL1.s  78
 1019 001D4 00000           CON(5)  =DROP
 1020 001D9 00000           CON(5)  ='DoBadKeyT
 1021               * Reject all other keys
 1022               * File  POL1.s  79
 1023 001DE 00000           CON(5)  =SEMI
 1024               * File  POL1.s  80
 1025 001E3 00000           CON(5)  =2DROP
 1026               * DROP #keycode #keyplane [Reject all other keys]
 1027               * File  POL1.s  81
 1028 001E8 00000           CON(5)  ='DoBadKeyT
 1029               * -> DoBadKey TRUE
 1030               * File  POL1.s  82
 1031 001ED 00000           CON(5)  =SEMI
 1032               * File  POL1.s  83
 1033 001F2 00000           CON(5)  =TRUE
 1034               * NonAppKey Flag = enable soft keys
 1035               * File  POL1.s  84
 1036 001F7 00000           CON(5)  =TRUE
 1037               * DoStdKeys Flag = reject user key definitions
 1038               * File  POL1.s  85
 1039 001FC 00000           CON(5)  =DOLIST
 1040               * Softkey Menu
 1041               * File  POL1.s  86
 1042 00201 00000           CON(5)  =NullMenuKey
 1043               * Menu key 1 = BLANK [generates error beep]
 1044               * File  POL1.s  87
 1045 00206 00000           CON(5)  =NullMenuKey
 1046               * Meny key 2 = BLANK [ ... ]
 1047               * File  POL1.s  88
 1048 0020B 00000           CON(5)  =NullMenuKey
 1049               * Menu key 3 = BLANK [ ... ]
 1050               * File  POL1.s  89
 1051 00210 00000           CON(5)  =NullMenuKey
 1052               * Menu key 4 = BLANK [ ... ]
 1053               * File  POL1.s  90
 1054 00215 00000           CON(5)  =NullMenuKey
 1055               * Menu key 5 = BLANK [ ... ]
 1056               * File  POL1.s  91
 1057 0021A 00000           CON(5)  =DOLIST
 1058               * Menu key 6 = QUIT
 1059               * File  POL1.s  92
 1060 0021F 00000           CON(5)  =DOCSTR
 1061 00224 D0000           CON(5)  13
 1062 00229 1555944         NIBASC  \QUIT\
            5
 1063               * Label text
 1064               * File  POL1.s  93
 1065 00231 00000           CON(5)  =DOCOL
 1066               * Key action
 1067               * File  POL1.s  94
 1068 00236 00000           CON(5)  =TakeOver
 1069               * Custom key definition placeholder
 1070               * File  POL1.s  95
 1071 0023B 00000           CON(5)  =TRUE
 1072               * TRUE flag to exit
 1073               * File  POL1.s  96
 1074 00240 00000           CON(5)  ='
 1075 00245 00000           CON(5)  =DOLAM
 1076 0024A 70              CON(2)  7
 1077 0024C 2557E6E         NIBASC  \Running\
            696E676
 1078 0025A 00000           CON(5)  =STO
 1079               * STO TRUE in LAM Running [Exit Object = TRUE]
 1080               * File  POL1.s  97
 1081 0025F 00000           CON(5)  =SEMI
 1082               * File  POL1.s  98
 1083 00264 00000           CON(5)  =SEMI
 1084               * File  POL1.s  99
 1085 00269 00000           CON(5)  =SEMI
 1086               * File  POL1.s  100
 1087 0026E 00000           CON(5)  =ONE
 1088               * #Menu Row = Display 1st menu row
 1089               * File  POL1.s  101
 1090 00273 00000           CON(5)  =FALSE
 1091               * Suspend Flag = Don't allow HALT or PROMPT
 1092               * File  POL1.s  102
 1093 00278 00000           CON(5)  ='
 1094 0027D 00000           CON(5)  =DOLAM
 1095 00282 70              CON(2)  7
 1096 00284 2557E6E         NIBASC  \Running\
            696E676
 1097               * Exit object [FALSE = Continue, TRUE = Exit]
 1098               * File  POL1.s  103
 1099 00292 00000           CON(5)  ='
 1100 00297 00000           CON(5)  =ERRJMP
 1101               * Error object
 1102               * File  POL1.s  104
 1103 0029C 00000           CON(5)  =ParOuterLoop
 1104               * Run the POL
 1105               * File  POL1.s  105
 1106 002A1 00000           CON(5)  =ABND
 1107               * Abandon temporary environment
 1108               * File  POL1.s  106
 1109 002A6 00000           CON(5)  =ClrDAsOK
 1110               * Redraw the display
 1111               * File  POL1.s  107
 1112 002AB 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 04 23:24:54 2009
V3.0.9 (04/15/2007)   Symbol Table                       POL1.a         Page    2

 #=casedrop                        Ext                   -   910  1007
 #=casedrpfls                      Ext                   -   997  1012  1016
 %1                                Ext                   -   855
 %1+                               Ext                   -   976
 %1-                               Ext                   -   936
 '                                 Ext                   -   858   864   884
                                         905   941   981  1074  1093  1099
 'DoBadKeyT                        Ext                   -  1001  1020  1028
 0LASTOWDOB!                       Ext                   -   840
 2DROP                             Ext                   -  1025
 ?CaseKeyDef                       Ext                   -   919   959
 ?SEMI                             Ext                   -   896
 ABND                              Ext                   -  1106
 AddressesCLEBit                   Abs       0 #00000000 -   789
 AddressesCLEFl                    Abs      89 #00000059 -   787   788   789
 AddressesCLENib                   Abs      22 #00000016 -   788
 AlarmBeepBit                      Abs       0 #00000000 -   176
 AlarmBeepFl                       Abs      57 #00000039 -   164   175   176
 AlarmBeepNib                      Abs      14 #0000000E -   175
 AlgebraicModeBit                  Abs       2 #00000002 -   807
 AlgebraicModeFl                   Abs      95 #0000005F -   805   806   807
 AlgebraicModeNib                  Abs      23 #00000017 -   806
 AngleBCt                          Abs       2 #00000002 -   127
 AngleBit1                         Abs       0 #00000000 -   179   180
 AngleBit2                         Abs       1 #00000001 -   180
 AngleFl1                          Abs      17 #00000011 -   126   178   179
 AngleNib                          Abs       4 #00000004 -   178
 ArrayOnlyBit                      Abs       2 #00000002 -   795
 ArrayOnlyFl                       Abs      91 #0000005B -   793   794   795
 ArrayOnlyNib                      Abs      22 #00000016 -   794
 AutoSaveBit                       Abs       1 #00000001 -   804
 AutoSaveFl                        Abs      94 #0000005E -   802   803   804
 AutoSaveNib                       Abs      23 #00000017 -   803
 BigFontCmdBit                     Abs       0 #00000000 -   741
 BigFontCmdFl                      Abs      73 #00000049 -   739   740   741
 BigFontCmdNib                     Abs      18 #00000012 -   740
 BigFontStackBit                   Abs       3 #00000003 -   738
 BigFontStackFl                    Abs      72 #00000048 -   736   737   738
 BigFontStackNib                   Abs      17 #00000011 -   737
 BinBaseBCt                        Abs       2 #00000002 -   122
 BinBaseBit1                       Abs       2 #00000002 -   183
 BinBaseFl1                        Abs      11 #0000000B -   121   182   183
 BinBaseNib                        Abs       2 #00000002 -   182
 BinWordSBCt                       Abs       6 #00000006 -   120
 BinWordSBit1                      Abs       0 #00000000 -   186
 BinWordSFl1                       Abs       5 #00000005 -   119   185   186
 BinWordSNib                       Abs       1 #00000001 -   185
 CK0NOLASTWD                       Ext                   -   843
 CarefulBit                        Abs       3 #00000003 -   189
 CarefulFl                         Abs       4 #00000004 -   117   188   189
 CarefulNib                        Abs       0 #00000000 -   188
 ClockFmtBit                       Abs       0 #00000000 -   192
 ClockFmtFl                        Abs      41 #00000029 -   149   191   192
 ClockFmtNib                       Abs      10 #0000000A -   191
 ClockOnBit                        Abs       3 #00000003 -   195
 ClockOnFl                         Abs      40 #00000028 -   148   194   195
 ClockOnNib                        Abs       9 #00000009 -   194
 ClrDA1IsStat                      Ext                   -   846
 ClrDAsOK                          Ext                   -  1109
 CmdAutoIndentBit                  Abs       3 #00000003 -   726
 CmdAutoIndentFl                   Abs      68 #00000044 -   724   725   726
 CmdAutoIndentNib                  Abs      16 #00000010 -   725
 ComVecDiBCt                       Abs       2 #00000002 -   125
 ComVecDiBit1                      Abs       2 #00000002 -   201
 ComVecDiFl1                       Abs      15 #0000000F -   124   200   201
 ComVecDiNib                       Abs       3 #00000003 -   200
 Complex2DBit                      Abs       2 #00000002 -   198
 Complex2DFl                       Abs      19 #00000013 -   128   197   198
 Complex2DNib                      Abs       4 #00000004 -   197
 ComplexBit                        Abs       2 #00000002 -   821
 ComplexFl                         Abs     103 #00000067 -   819   820   821
 ComplexNib                        Abs      25 #00000019 -   820
 ConnectPtBit                      Abs       2 #00000002 -   204
 ConnectPtFl                       Abs      31 #0000001F -   138   203   204
 ConnectPtNib                      Abs       7 #00000007 -   203
 ConstantsBit                      Abs       1 #00000001 -   207
 ConstantsFl                       Abs       2 #00000002 -   115   206   207
 ConstantsNib                      Abs       0 #00000000 -   206
 DA3OK?                            Ext                   -   895
 DISPROW4                          Ext                   -   881   951   990
 DOBIND                            Ext                   -   871
 DOCOL                             Ext                   -   838   885   906
                                         911   920   928   960   968  1008  1065
 DOCSTR                            Ext                   -  1060
 DOLAM                             Ext                   -   859   865   874
                                         931   942   971   982  1075  1094
 DOLIST                            Ext                   -  1039  1057
 DROP                              Ext                   -  1000  1019
 DUP                               Ext                   -   939   979
 DUP#<7                            Ext                   -   914
 DateFmtBit                        Abs       1 #00000001 -   210
 DateFmtFl                         Abs      42 #0000002A -   150   209   210
 DateFmtNib                        Abs      10 #0000000A -   209
 DblSpaceBit                       Abs       0 #00000000 -   213
 DblSpaceFl                        Abs      37 #00000025 -   144   212   213
 DblSpaceNib                       Abs       9 #00000009 -   212
 DefSysF32-01                      Abs67178480 #04010FF0 -    39
 DefSysF64-33                      Abs       0 #00000000 -    38
 DefSysF65-96                      Abs1107296256 #42000000 -    40
 DefSysF97-128                     Abs       0 #00000000 -    41
 DelNRAlmBit                       Abs       3 #00000003 -   216
 DelNRAlmFl                        Abs      44 #0000002C -   152   215   216
 DelNRAlmNib                       Abs      10 #0000000A -   215
 DesasmWithAdrBit                  Abs       2 #00000002 -   735
 DesasmWithAdrFl                   Abs      71 #00000047 -   733   734   735
 DesasmWithAdrNib                  Abs      17 #00000011 -   734
 DigitalClockBit                   Abs       2 #00000002 -   723
 DigitalClockFl                    Abs      67 #00000043 -   721   722   723
 DigitalClockNib                   Abs      16 #00000010 -   722
 DispMenu.1                        Ext                   -   899
 EDITDECOMP$                       Ext                   -   879   948   988
 ERRJMP                            Ext                   -  1100
 ErableHeaderBit                   Abs       0 #00000000 -   801
 ErableHeaderFl                    Abs      93 #0000005D -   799   800   801
 ErableHeaderNib                   Abs      23 #00000017 -   800
 ErrorBeepBit                      Abs       3 #00000003 -   219
 ErrorBeepFl                       Abs      56 #00000038 -   163   218   219
 ErrorBeepNib                      Abs      13 #0000000D -   218
 ExactModeBit                      Abs       0 #00000000 -   826
 ExactModeFl                       Abs     105 #00000069 -   824   825   826
 ExactModeNib                      Abs      26 #0000001A -   825
 FALSE                             Ext                   -   852  1090
 FORTYONE                          Ext                   -   918   927
 FORTYSEVEN                        Ext                   -  1015
 FORTYSIX                          Ext                   -   958   967
 FORTYTWO                          Ext                   -   996  1011
 FastEViewBit                      Abs       2 #00000002 -   222
 FastEViewNib                      Abs      14 #0000000E -   221
 FastEqViewFl                      Abs      59 #0000003B -   166   221   222
 FilerConfirmBit                   Abs       0 #00000000 -   753
 FilerConfirmFl                    Abs      77 #0000004D -   751   752   753
 FilerConfirmNib                   Abs      19 #00000013 -   752
 FilerConfirmationBit              Abs       3 #00000003 -   750
 FilerConfirmationFl               Abs      76 #0000004C -   748   749   750
 FilerConfirmationNib              Abs      18 #00000012 -   749
 FullScreenEditBit                 Abs       0 #00000000 -   729
 FullScreenEditFl                  Abs      69 #00000045 -   727   728   729
 FullScreenEditNib                 Abs      17 #00000011 -   728
 FunctPlotBit                      Abs       1 #00000001 -   225
 FunctPlotFl                       Abs      30 #0000001E -   137   224   225
 FunctPlotNib                      Abs       7 #00000007 -   224
 GCursorBit                        Abs       3 #00000003 -   228
 GCursorFl                         Abs      32 #00000020 -   139   227   228
 GCursorNib                        Abs       7 #00000007 -   227
 GrobDisplayBit                    Abs       2 #00000002 -   771
 GrobDisplayFl                     Abs      83 #00000053 -   769   770   771
 GrobDisplayNib                    Abs      20 #00000014 -   770
 IODataFmtBit                      Abs       2 #00000002 -   240
 IODataFmtFl                       Abs      35 #00000023 -   142   239   240
 IODataFmtNib                      Abs       8 #00000008 -   239
 IODeviceBit                       Abs       0 #00000000 -   243
 IODeviceFl                        Abs      33 #00000021 -   140   242   243
 IODeviceNib                       Abs       8 #00000008 -   242
 IndexWrapBit                      Abs       3 #00000003 -   231
 IndexWrapFl                       Abs      64 #00000040 -   171   230   231
 IndexWrapNib                      Abs      15 #0000000F -   230
 InfResActBit                      Abs       1 #00000001 -   234
 InfResActFl                       Abs      22 #00000016 -   131   233   234
 InfResActNib                      Abs       5 #00000005 -   233
 InfResultBit                      Abs       1 #00000001 -   237
 InfResultFl                       Abs      26 #0000001A -   135   236   237
 InfResultNib                      Abs       6 #00000006 -   236
 KernelParamBit                    Abs       1 #00000001 -   756
 KernelParamFl                     Abs      78 #0000004E -   754   755   756
 KernelParamNib                    Abs      19 #00000013 -   755
 KeystrokeBeepBit                  Abs       2 #00000002 -   747
 KeystrokeBeepFl                   Abs      75 #0000004B -   745   746   747
 KeystrokeBeepNib                  Abs      18 #00000012 -   746
 LastArgsBit                       Abs       2 #00000002 -   246
 LastArgsFl                        Abs      55 #00000037 -   162   245   246
 LastArgsNib                       Abs      13 #0000000D -   245
 MASDDecompilerBit                 Abs       1 #00000001 -   780
 MASDDecompilerFl                  Abs      86 #00000056 -   778   779   780
 MASDDecompilerNib                 Abs      21 #00000015 -   779
 MKSmallFontMenuBit                Abs       3 #00000003 -   774
 MKSmallFontMenuFl                 Abs      84 #00000054 -   772   773   774
 MKSmallFontMenuNib                Abs      20 #00000014 -   773
 MLMASDModeBit                     Abs       3 #00000003 -   798
 MLMASDModeFl                      Abs      92 #0000005C -   796   797   798
 MLMASDModeNib                     Abs      22 #00000016 -   797
 MenuOnBit                         Abs       3 #00000003 -   810
 MenuOnFl                          Abs      96 #00000060 -   808   809   810
 MenuOnNib                         Abs      23 #00000017 -   809
 MultiDispBit                      Abs       3 #00000003 -   252
 MultiDispFl                       Abs      52 #00000034 -   159   251   252
 MultiDispNib                      Abs      12 #0000000C -   251
 MultiLine2GROBBit                 Abs       1 #00000001 -   732
 MultiLine2GROBFl                  Abs      70 #00000046 -   730   731   732
 MultiLine2GROBNib                 Abs      17 #00000011 -   731
 MultiLineBit                      Abs       0 #00000000 -   717
 MultiLineFl                       Abs      65 #00000041 -   715   716   717
 MultiLineNib                      Abs      16 #00000010 -   716
 MultiLineStringsBit               Abs       1 #00000001 -   720
 MultiLineStringsFl                Abs      66 #00000042 -   718   719   720
 MultiLineStringsNib               Abs      16 #00000010 -   719
 NoAutoCRBit                       Abs       1 #00000001 -   255
 NoAutoCRFl                        Abs      38 #00000026 -   145   254   255
 NoAutoCRNib                       Abs       9 #00000009 -   254
 NoIOStMsgBit                      Abs       2 #00000002 -   258
 NoIOStMsgNib                      Abs       9 #00000009 -   257
 NoIOStsMsgFl                      Abs      39 #00000027 -   146   257   258
 NoParseBit                        Abs       2 #00000002 -   261
 NoParseFl                         Abs      63 #0000003F -   170   260   261
 NoParseNib                        Abs      15 #0000000F -   260
 NullMenuKey                       Ext                   -  1042  1045  1048
                                        1051  1054
 NumDigsBCt                        Abs       4 #00000004 -   155
 NumDigsBit1                       Abs       0 #00000000 -   264
 NumDigsFl1                        Abs      45 #0000002D -   154   263   264
 NumDigsNib                        Abs      11 #0000000B -   263
 NumDispBCt                        Abs       2 #00000002 -   157
 NumDispBit1                       Abs       0 #00000000 -   267
 NumDispFl1                        Abs      49 #00000031 -   156   266   267
 NumDispNib                        Abs      12 #0000000C -   266
 ONE                               Ext                   -   909  1087
 OverfActBit                       Abs       0 #00000000 -   270
 OverfActFl                        Abs      21 #00000015 -   130   269   270
 OverfActNib                       Abs       5 #00000005 -   269
 OverflowBit                       Abs       0 #00000000 -   273
 OverflowFl                        Abs      25 #00000019 -   134   272   273
 OverflowNib                       Abs       6 #00000006 -   272
 OverwriteBit                      Abs       3 #00000003 -   276
 OverwriteFl                       Abs      36 #00000024 -   143   275   276
 OverwriteNib                      Abs       8 #00000008 -   275
 ParOuterLoop                      Ext                   -  1103
 PrettyPrintBit                    Abs       2 #00000002 -   759
 PrettyPrintFl                     Abs      79 #0000004F -   757   758   759
 PrettyPrintNib                    Abs      19 #00000013 -   758
 PrintDevBit                       Abs       1 #00000001 -   279
 PrintDevFl                        Abs      34 #00000022 -   141   278   279
 PrintDevNib                       Abs       8 #00000008 -   278
 RECLAIMDISP                       Ext                   -   849
 REPEATER                          Ext                   -   926   966
 RadixBit                          Abs       2 #00000002 -   282
 RadixFl                           Abs      51 #00000033 -   158   281   282
 RadixNib                          Abs      12 #0000000C -   281
 RecursiveEditBit                  Abs       3 #00000003 -   786
 RecursiveEditFl                   Abs      88 #00000058 -   784   785   786
 RecursiveEditNib                  Abs      21 #00000015 -   785
 RecursiveStackBit                 Abs       2 #00000002 -   783
 RecursiveStackFl                  Abs      87 #00000057 -   781   782   783
 RecursiveStackNib                 Abs      21 #00000015 -   782
 ResRepAlmBit                      Abs       2 #00000002 -   285
 ResRepAlmFl                       Abs      43 #0000002B -   151   284   285
 ResRepAlmNib                      Abs      10 #0000000A -   284
 ResultsBit                        Abs       2 #00000002 -   288
 ResultsFl                         Abs       3 #00000003 -   116   287   288
 ResultsNib                        Abs       0 #00000000 -   287
 RightJustifiedStackBit            Abs       1 #00000001 -   744
 RightJustifiedStackFl             Abs      74 #0000004A -   742   743   744
 RightJustifiedStackNib            Abs      18 #00000012 -   743
 SEMI                              Ext                   -   903   954   956
                                         992   994  1004  1023  1031  1081  1083
                                        1085  1112
 STO                               Ext                   -   945   985  1078
 SetDA3Valid                       Ext                   -   901
 ShowPrecBit                       Abs       0 #00000000 -   291
 ShowPrecFl                        Abs      53 #00000035 -   160   290   291
 ShowPrecNib                       Abs      13 #0000000D -   290
 SmallFontChooseBit                Abs       1 #00000001 -   792
 SmallFontChooseFl                 Abs      90 #0000005A -   790   791   792
 SmallFontChooseNib                Abs      22 #00000016 -   791
 SmallFontEQWEditBit               Abs       1 #00000001 -   768
 SmallFontEQWEditFl                Abs      82 #00000052 -   766   767   768
 SmallFontEQWEditNib               Abs      20 #00000014 -   767
 SmallFontEQWGrobBit               Abs       0 #00000000 -   765
 SmallFontEQWGrobFl                Abs      81 #00000051 -   763   764   765
 SmallFontEQWGrobNib               Abs      20 #00000014 -   764
 SmallFontEQWStackBit              Abs       3 #00000003 -   762
 SmallFontEQWStackFl               Abs      80 #00000050 -   760   761   762
 SmallFontEQWStackNib              Abs      19 #00000013 -   761
 SolutionsBit                      Abs       0 #00000000 -   294
 SolutionsFl                       Abs       1 #00000001 -   114   293   294
 SolutionsNib                      Abs       0 #00000000 -   293
 SystemRPLStackBit                 Abs       0 #00000000 -   777
 SystemRPLStackFl                  Abs      85 #00000055 -   775   776   777
 SystemRPLStackNib                 Abs      21 #00000015 -   776
 THREE                             Ext                   -  1006
 TRUE                              Ext                   -  1033  1036  1071
 TWO                               Ext                   -   870
 TakeOver                          Ext                   -   923   963  1068
 TriAlphaBit                       Abs       3 #00000003 -   297
 TriAlphaFl                        Abs      60 #0000003C -   167   296   297
 TriAlphaNib                       Abs      14 #0000000E -   296
 TriUserBit                        Abs       0 #00000000 -   300
 TriUserFl                         Abs      61 #0000003D -   168   299   300
 TriUserNib                        Abs      15 #0000000F -   299
 UnderfActBit                      Abs       3 #00000003 -   303
 UnderfActFl                       Abs      20 #00000014 -   129   302   303
 UnderfActNib                      Abs       4 #00000004 -   302
 UnderfNegBit                      Abs       2 #00000002 -   306
 UnderfNegFl                       Abs      23 #00000017 -   132   305   306
 UnderfNegNib                      Abs       5 #00000005 -   305
 UnderfPosBit                      Abs       3 #00000003 -   309
 UnderfPosFl                       Abs      24 #00000018 -   133   308   309
 UnderfPosNib                      Abs       5 #00000005 -   308
 UserKeysBit                       Abs       1 #00000001 -   312
 UserKeysFl                        Abs      62 #0000003E -   169   311   312
 UserKeysNib                       Abs      15 #0000000F -   311
 VerboseBit                        Abs       1 #00000001 -   249
 VerboseFl                         Abs      58 #0000003A -   165   248   249
 VerboseNib                        Abs      14 #0000000E -   248
 VerticalListBit                   Abs       0 #00000000 -   813
 VerticalListFl                    Abs      97 #00000061 -   811   812   813
 VerticalListNib                   Abs      24 #00000018 -   812
 VerticalVectorBit                 Abs       1 #00000001 -   816
 VerticalVectorFl                  Abs      98 #00000062 -   814   815   816
 VerticalVectorNib                 Abs      24 #00000018 -   815
 casedrpfls                        Ext                   -   915
 hasALIAS                          Abs       2 #00000002 -   325
 hasCOLCT                          Abs       2 #00000002 -   331
 hasDER                            Abs       8 #00000008 -   329
 hasEXPND                          Abs       1 #00000001 -   332
 hasFORM                           Abs       8 #00000008 -   335
 hasHELP                           Abs       4 #00000004 -   323
 hasINTG                           Abs       4 #00000004 -   336
 hasINV                            Abs       4 #00000004 -   330
 hasPDATA                          Abs       1 #00000001 -   326
 hasPROMPTM                        Abs       4 #00000004 -   324
 hasVUNS                           Abs       1 #00000001 -   338
 hasWHERE                          Abs       2 #00000002 -   337
 nonALG                            Abs       8 #00000008 -   322
 pdCM                              Abs       6 #00000006 -   347
 pdEQ                              Abs       7 #00000007 -   348
 pdEX                              Abs       0 #00000000 -   341
 pdLP                              Abs       4 #00000004 -   345
 pdOP                              Abs       1 #00000001 -   342
 pdOS0                             Abs       8 #00000008 -   349
 pdOS1                             Abs       9 #00000009 -   350
 pdOS2                             Abs      10 #0000000A -   351
 pdOS3                             Abs      11 #0000000B -   352
 pdOS4                             Abs      12 #0000000C -   353
 pdOS5                             Abs      13 #0000000D -   354
 pdOS6                             Abs      14 #0000000E -   355
 pdOS7                             Abs      15 #0000000F -   356
 pdQE                              Abs       2 #00000002 -   343
 pdQN                              Abs       3 #00000003 -   344
 pdRP                              Abs       5 #00000005 -   346
Saturn Assembler                                       Thu Jun 04 23:24:54 2009
V3.0.9 (04/15/2007)   Statistics                         POL1.a         Page    3

Input Parameters

  Source file name is POL1.a

  Listing file name is POL1.l

  Object file name is POL1.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
