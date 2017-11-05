Saturn Assembler                                       Sun Jun 07 19:23:09 2009
V3.0.9 (04/15/2007)                                      POL2.a         Page    1

    1               * File  POL2.s  1
    2               * RPL
    3               * File  POL2.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\POL\POL2.s, part of the POL2.hpp project, created by <> on 10/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Generates a softkey menu to allow the toggling of
    7               *                  user flag 1.  The status of the flag is shown in
    8               *                  the menu and on the HP48 also in the status area.
    9               *                  The ON key terminates the program.
   10               * COMPATIBILITY:   HP48  ( Uncomment HP48 keycode & keyplane defs )
   11               *                  HP50  ( Must include Header.h )
   12               * USAGE:     ( -> )
   13               *
   14               * File  POL2.s  12
   15               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
   16
   17
   18               * RPL
   19               * insure RPL-mode exit
   20
   21               * ( Rad
   22
   23               * ( %2PI
   24               * ( %PI/24
   25
   26
   27
   28
   29               * ( 1=1Var, 2=2Var Statistic
   30               * ( 1=Histogram, 2=BoxWhisker
   31
   32
   33
   34
   35
   36               * ASSEMBLE
   37               DefSysF64-33 EQU        #00000000
   38               DefSysF32-01 EQU        #04010FF0
   39               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   40               DefSysF97-128 EQU       #00000000
   41
   42               * RPL
   43
   44
   45               * ( solution mode
   46               * ( constants mode
   47               * ( results mode
   48               * ( careful evaluation mode
   49
   50               * ( binary integer wordsize
   51               * must start on nibble boundary
   52               * ( binary integer base
   53               * must follow "fnBinWordS6"
   54
   55               * ( financial BEGIN/END mode
   56               * ( complex number and vector
   57               * mode
   58               * ( angle mode
   59               * must start on a nibble boundary
   60               * ( complex 2D mode
   61               * ( underflow action
   62               * ( overflow action
   63               * ( infinite result action
   64               * ( underflow-negative indicator
   65               * ( underflow-positive indicator
   66               * ( overflow indicator
   67               * ( infinite result indicator
   68               * ( symbolic-comples decompilation
   69               * ( simultaneous plot mode
   70               * ( axis drawing plot mode
   71
   72               * ( connect points mode
   73               * ( graphics cursor type mode
   74               * ( I/O device
   75               * ( print device
   76               * ( I/O data format
   77               * ( variable overwrite mode
   78               * ( double-space print mode
   79               * ( suppress auto CR mode
   80               * ( suppress I/O status messages
   81
   82
   83               * ( clock display mode
   84               * ( clock display format
   85               * ( date format
   86               * ( reschedule unacknowledged
   87               * repeat alarms mode
   88               * ( delete acknowledged non-repeat
   89               * alarms mode
   90
   91               * ( number of decimal digits
   92               * must start on nibble boundary
   93               * ( number display format
   94               * must start on nibble boundary
   95               * ( radix mark
   96               * ( multi-line display mode
   97               * ( show precedence mode
   98               * ( zero out tiny matrix elements
   99
  100               * ( last arguments mode
  101               * ( error beep mode
  102               * ( alarm beep mode
  103               * ( verbose display mode
  104               * ( variable name only mode
  105               * ( 3-way alpha mode
  106               * ( 3-way user keys mode
  107               * ( user keys mode
  108               * ( special parser mode
  109               * ( index wraparound indicator
  110
  111
  112               * ASSEMBLE
  113               SolutionsFl  EQU 1
  114               ConstantsFl  EQU 2
  115               ResultsFl    EQU 3
  116               CarefulFl    EQU 4
  117
  118               BinWordSFl1  EQU 5      must start on a nibble boundary
  119               BinWordSBCt  EQU 6      number of bits
  120               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  121               BinBaseBCt   EQU 2      number of bits
  122
  123               ComVecDiFl1  EQU 15
  124               ComVecDiBCt  EQU 2      number of bits
  125               AngleFl1     EQU 17     must start on a nibble boundary
  126               AngleBCt     EQU 2      number of bits
  127               Complex2DFl  EQU 19
  128               UnderfActFl  EQU 20
  129               OverfActFl   EQU 21
  130               InfResActFl  EQU 22
  131               UnderfNegFl  EQU 23
  132               UnderfPosFl  EQU 24
  133               OverflowFl   EQU 25
  134               InfResultFl  EQU 26
  135
  136               FunctPlotFl  EQU 30
  137               ConnectPtFl  EQU 31
  138               GCursorFl    EQU 32
  139               IODeviceFl   EQU 33
  140               PrintDevFl   EQU 34
  141               IODataFmtFl  EQU 35
  142               OverwriteFl  EQU 36
  143               DblSpaceFl   EQU 37
  144               NoAutoCRFl   EQU 38
  145               NoIOStsMsgFl EQU 39
  146
  147               ClockOnFl    EQU 40
  148               ClockFmtFl   EQU 41
  149               DateFmtFl    EQU 42
  150               ResRepAlmFl  EQU 43
  151               DelNRAlmFl   EQU 44
  152
  153               NumDigsFl1   EQU 45     must start on a nibble boundary
  154               NumDigsBCt   EQU 4      number of bits
  155               NumDispFl1   EQU 49     must start on a nibble boundary
  156               NumDispBCt   EQU 2      number of bits
  157               RadixFl      EQU 51
  158               MultiDispFl  EQU 52
  159               ShowPrecFl   EQU 53
  160
  161               LastArgsFl   EQU 55
  162               ErrorBeepFl  EQU 56
  163               AlarmBeepFl  EQU 57
  164               VerboseFl    EQU 58
  165               FastEqViewFl EQU 59
  166               TriAlphaFl   EQU 60
  167               TriUserFl    EQU 61
  168               UserKeysFl   EQU 62
  169               NoParseFl    EQU 63
  170               IndexWrapFl  EQU 64
  171
  172
  173
  174               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  175               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  176
  177               AngleNib     EQU ((AngleFl1)-1)/4
  178               AngleBit1    EQU ((AngleFl1)-1)%4
  179               AngleBit2    EQU (AngleBit1)+1
  180
  181               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  182               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  183
  184               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  185               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  186
  187               CarefulNib   EQU ((CarefulFl)-1)/4
  188               CarefulBit   EQU ((CarefulFl)-1)%4
  189
  190               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  191               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  192
  193               ClockOnNib   EQU ((ClockOnFl)-1)/4
  194               ClockOnBit   EQU ((ClockOnFl)-1)%4
  195
  196               Complex2DNib EQU ((Complex2DFl)-1)/4
  197               Complex2DBit EQU ((Complex2DFl)-1)%4
  198
  199               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  200               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  201
  202               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  203               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  204
  205               ConstantsNib EQU ((ConstantsFl)-1)/4
  206               ConstantsBit EQU ((ConstantsFl)-1)%4
  207
  208               DateFmtNib   EQU ((DateFmtFl)-1)/4
  209               DateFmtBit   EQU ((DateFmtFl)-1)%4
  210
  211               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  212               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  213
  214               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  215               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  216
  217               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  218               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  219
  220               FastEViewNib EQU ((FastEqViewFl)-1)/4
  221               FastEViewBit EQU ((FastEqViewFl)-1)%4
  222
  223               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  224               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  225
  226               GCursorNib   EQU ((GCursorFl)-1)/4
  227               GCursorBit   EQU ((GCursorFl)-1)%4
  228
  229               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  230               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  231
  232               InfResActNib EQU ((InfResActFl)-1)/4
  233               InfResActBit EQU ((InfResActFl)-1)%4
  234
  235               InfResultNib EQU ((InfResultFl)-1)/4
  236               InfResultBit EQU ((InfResultFl)-1)%4
  237
  238               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  239               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  240
  241               IODeviceNib  EQU ((IODeviceFl)-1)/4
  242               IODeviceBit  EQU ((IODeviceFl)-1)%4
  243
  244               LastArgsNib  EQU ((LastArgsFl)-1)/4
  245               LastArgsBit  EQU ((LastArgsFl)-1)%4
  246
  247               VerboseNib   EQU ((VerboseFl)-1)/4
  248               VerboseBit   EQU ((VerboseFl)-1)%4
  249
  250               MultiDispNib EQU ((MultiDispFl)-1)/4
  251               MultiDispBit EQU ((MultiDispFl)-1)%4
  252
  253               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  254               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  255
  256               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  257               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  258
  259               NoParseNib   EQU ((NoParseFl)-1)/4
  260               NoParseBit   EQU ((NoParseFl)-1)%4
  261
  262               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  263               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  264
  265               NumDispNib   EQU ((NumDispFl1)-1)/4
  266               NumDispBit1  EQU ((NumDispFl1)-1)%4
  267
  268               OverfActNib  EQU ((OverfActFl)-1)/4
  269               OverfActBit  EQU ((OverfActFl)-1)%4
  270
  271               OverflowNib  EQU ((OverflowFl)-1)/4
  272               OverflowBit  EQU ((OverflowFl)-1)%4
  273
  274               OverwriteNib EQU ((OverwriteFl)-1)/4
  275               OverwriteBit EQU ((OverwriteFl)-1)%4
  276
  277               PrintDevNib  EQU ((PrintDevFl)-1)/4
  278               PrintDevBit  EQU ((PrintDevFl)-1)%4
  279
  280               RadixNib     EQU ((RadixFl)-1)/4
  281               RadixBit     EQU ((RadixFl)-1)%4
  282
  283               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  284               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  285
  286               ResultsNib   EQU ((ResultsFl)-1)/4
  287               ResultsBit   EQU ((ResultsFl)-1)%4
  288
  289               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  290               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  291
  292               SolutionsNib EQU ((SolutionsFl)-1)/4
  293               SolutionsBit EQU ((SolutionsFl)-1)%4
  294
  295               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  296               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  297
  298               TriUserNib   EQU ((TriUserFl)-1)/4
  299               TriUserBit   EQU ((TriUserFl)-1)%4
  300
  301               UnderfActNib EQU ((UnderfActFl)-1)/4
  302               UnderfActBit EQU ((UnderfActFl)-1)%4
  303
  304               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  305               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  306
  307               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  308               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  309
  310               UserKeysNib  EQU ((UserKeysFl)-1)/4
  311               UserKeysBit  EQU ((UserKeysFl)-1)%4
  312
  313               * RPL
  314               * RPL
  315               * insure RPL-mode exit
  316
  317
  318               * ASSEMBLE
  319
  320
  321               nonALG EQU 8                    not-allowed-in-algebraics flag
  322               hasHELP EQU 4                   has-help-data flag
  323               hasPROMPTM EQU 4                same as above
  324               hasALIAS EQU 2                  has-algebraic-alias flag
  325               hasPDATA EQU 1                  has-parse-data flag
  326
  327
  328               hasDER EQU 8                    has-derivative flag
  329               hasINV EQU 4                    has-inverse flag
  330               hasCOLCT EQU 2                  has-COLCT-data flag
  331               hasEXPND EQU 1                  has-EXPND-data flag
  332
  333
  334               hasFORM EQU 8                   has-FORM-menu flag
  335               hasINTG EQU 4                   has-Integral-data flag
  336               hasWHERE EQU 2                  has-WHERE-code flag
  337               hasVUNS EQU 1                   has-veryunsymin-code flag
  338
  339
  340               pdEX EQU #0             general expression
  341               pdOP EQU #1             operator
  342               pdQE EQU #2             quoted expression
  343               pdQN EQU #3             quoted name
  344               pdLP EQU #4             left parenthesis
  345               pdRP EQU #5             right parenthesis
  346               pdCM EQU #6             comma (non-radix)
  347               pdEQ EQU #7             equal-sign separator
  348               pdOS0 EQU #8            optional repeat 0
  349               pdOS1 EQU #9            optional repeat 1
  350               pdOS2 EQU #A            optional repeat 2
  351               pdOS3 EQU #B            optional repeat 3
  352               pdOS4 EQU #C            optional repeat 4
  353               pdOS5 EQU #D            optional repeat 5
  354               pdOS6 EQU #E            optional repeat 6
  355               pdOS7 EQU #F            optional repeat 7
  356
  357               * RPL
  358               * RPL
  359               * insure RPL-mode exit
  360
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
  377               * RPL
  378               * insure RPL-mode exit
  379
  380               * RPL
  381               * insure RPL-mode exit
  382
  383
  384
  385
  386
  387
  388
  389
  390
  391               * ( for internal use only
  392
  393
  394
  395
  396
  397
  398
  399
  400
  401
  402               * ( decimal 67
  403               * ( decimal 86
  404               * ( decimal 82
  405               * ( decimal 85
  406               * ( decimal 101
  407               * ( decimal 97
  408               * ( decimal 100
  409               * ( decimal 113
  410               * ( decimal 112
  411
  412               * ( check width
  413               * ( field character width
  414
  415               * ( decimal 67
  416               * ( decimal 85
  417               * ( decimal 97
  418
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
  435               * RPL
  436               * insure RPL-mode exit
  437
  438               * ( decimal 66
  439               * ( decimal 67
  440               * ( decimal 69
  441               * ( decimal 82
  442               * ( decimal 83
  443               * ( decimal 84
  444               * ( decimal 85
  445               * ( decimal 86
  446               * ( decimal 87
  447
  448
  449               * ( norm-view default visible row count
  450               * ( default first row X location
  451               * ( default first row Y location
  452               * ( default row width
  453               * ( default row height
  454
  455               * ( max-view width
  456               * ( max-view height
  457               * ( max-view default visible row count
  458
  459               * ( prompt area height
  460
  461               * ( more-up/down icon width
  462
  463
  464
  465               * RPL
  466               * insure RPL-mode exit
  467
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
  682               * RPL
  683               * insure RPL-mode exit
  684
  685
  686
  687               * ( set for informations
  688               * ( set for step by step mode on
  689               * ( internal use: true if VXXL success
  690               * ( set for no gcd computations
  691               * ( set for complex mode
  692               * ( internal use:       LN->-INV[-LN]]
  693               * ( set for approx mode
  694               * ( set for TSIMP call inside SERIES
  695               * ( internal use:       modular computation
  696               * ( internal use:       testing remainder=0
  697               * ( set to allow numeric factorization
  698               * ( set for large matrices
  699               * ( set: don't simplify inside non rational operation
  700               * ( set to see i as an irrquad c=-1
  701               * ( set to disable linearity simplif.
  702               * ( set for increasing power x+1 -> 1+x
  703               * ( internal use:       sqrt not as irrquad
  704               * ( set if sin are prefered to cos
  705               * ( set for menu as choosebox
  706               * ( set if xINT is not simplified
  707               * ( set if non rigourous mode
  708               * ( set to allow silent mode switch
  709               * ( set if xLN returns LN[ABS[]]
  710
  711
  712               * ASSEMBLE
  713
  714               MultiLineFl     EQU     65
  715               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  716               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  717               MultiLineStringsFl      EQU     66
  718               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  719               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  720               DigitalClockFl  EQU     67
  721               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  722               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  723               CmdAutoIndentFl EQU     68
  724               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  725               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  726               FullScreenEditFl        EQU     69
  727               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  728               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  729               MultiLine2GROBFl        EQU     70
  730               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  731               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  732               DesasmWithAdrFl EQU     71
  733               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  734               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  735               BigFontStackFl  EQU     72
  736               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  737               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  738               BigFontCmdFl    EQU     73
  739               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  740               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  741               RightJustifiedStackFl   EQU     74
  742               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  743               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  744               KeystrokeBeepFl EQU     75
  745               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  746               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  747               FilerConfirmationFl     EQU     76
  748               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  749               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  750               FilerConfirmFl  EQU     77
  751               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  752               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  753               KernelParamFl   EQU     78
  754               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  755               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  756               PrettyPrintFl   EQU     79
  757               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  758               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  759               SmallFontEQWStackFl     EQU     80
  760               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  761               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  762               SmallFontEQWGrobFl      EQU     81
  763               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  764               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  765               SmallFontEQWEditFl      EQU     82
  766               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  767               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  768               GrobDisplayFl   EQU     83
  769               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  770               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  771               MKSmallFontMenuFl       EQU     84
  772               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  773               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  774               SystemRPLStackFl        EQU     85
  775               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  776               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  777               MASDDecompilerFl        EQU     86
  778               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  779               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  780               RecursiveStackFl        EQU     87
  781               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  782               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  783               RecursiveEditFl EQU     88
  784               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  785               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  786               AddressesCLEFl  EQU     89
  787               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  788               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  789               SmallFontChooseFl       EQU     90
  790               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  791               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  792               ArrayOnlyFl     EQU     91
  793               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  794               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  795               MLMASDModeFl    EQU     92
  796               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  797               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  798               ErableHeaderFl  EQU     93
  799               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  800               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  801               AutoSaveFl      EQU     94
  802               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  803               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  804               AlgebraicModeFl EQU     95
  805               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  806               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  807               MenuOnFl        EQU     96
  808               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  809               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  810               VerticalListFl  EQU     97
  811               VerticalListNib EQU     ((VerticalListFl)-1)/4
  812               VerticalListBit EQU     ((VerticalListFl)-1)%4
  813               VerticalVectorFl        EQU     98
  814               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  815               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  816
  817
  818               ComplexFl       EQU     103
  819               ComplexNib      EQU     ((ComplexFl)-1)/4
  820               ComplexBit      EQU     ((ComplexFl)-1)%4
  821
  822
  823               ExactModeFl     EQU     105
  824               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  825               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  826
  827
  828               * RPL
  829
  830
  831
  832               * ASSEMBLE
  833                       SETLIST CODE, INCLUDE, PSEUDO
  834               * RPL
  835
  836               *|| Resuming file POL2.s at line 12
  837 00000 00000           CON(5)  =DOCOL
  838               * File  POL2.s  17
  839 00005 00000           CON(5)  =0LASTOWDOB!
  840               * Clear saved command name
  841               * File  POL2.s  18
  842 0000A 00000           CON(5)  =CK0NOLASTWD
  843               * No arguments
  844               * File  POL2.s  19
  845 0000F 00000           CON(5)  =RECLAIMDISP
  846               * Clear display
  847               * File  POL2.s  20
  848 00014 00000           CON(5)  =FALSE
  849               * Exit flag [FALSE = continue, TRUE = exit]
  850               * File  POL2.s  21
  851 00019 00000           CON(5)  ='
  852 0001E 00000           CON(5)  =DOLAM
  853 00023 70              CON(2)  7
  854 00025 2557E6E         NIBASC  \Running\
            696E676
  855               * Exit object
  856               * File  POL2.s  22
  857 00033 00000           CON(5)  =ONE
  858 00038 00000           CON(5)  =DOBIND
  859               * Creat temporary environment
  860               * POL parameters
  861               * File  POL2.s  24
  862 0003D 00000           CON(5)  ='
  863 00042 00000           CON(5)  =DOCOL
  864               * Display object
  865               * File  POL2.s  25
  866 00047 00000           CON(5)  =DA3OK?
  867 0004C 00000           CON(5)  =?SKIP
  868 00051 00000           CON(5)  =DOCOL
  869               * Display menu if not already done
  870               * File  POL2.s  26
  871 00056 00000           CON(5)  =DispMenu.1
  872               * Display menu
  873               * File  POL2.s  27
  874 0005B 00000           CON(5)  =SetDA3Valid
  875               * File  POL2.s  28
  876 00060 00000           CON(5)  =SEMI
  877               * File  POL2.s  29
  878 00065 00000           CON(5)  =?DispStatus
  879               * Redisplay the status area now if necessary
  880               * File  POL2.s  30
  881 0006A 00000           CON(5)  =SEMI
  882               * File  POL2.s  31
  883 0006F 00000           CON(5)  ='
  884 00074 00000           CON(5)  =DOCOL
  885               * Hardkey handler
  886               * File  POL2.s  32
  887 00079 00000           CON(5)  =ONE
  888 0007E 00000           CON(5)  =#=casedrop
  889 00083 00000           CON(5)  =DOCOL
  890               * Process primary key plane [no shift]
  891               * File  POL2.s  33
  892 00088 00000           CON(5)  =DUP#<7
  893 0008D 00000           CON(5)  =casedrpfls
  894               * Enable softkeys
  895               * File  POL2.s  34
  896 00092 00000           CON(5)  =FORTYSEVEN
  897 00097 00000           CON(5)  =?CaseKeyDef
  898 0009C 00000           CON(5)  =DOCOL
  899               * Process ON key
  900               * File  POL2.s  35
  901 000A1 00000           CON(5)  =TakeOver
  902               * Custom key definition placeholder
  903               * File  POL2.s  36
  904 000A6 00000           CON(5)  =TRUE
  905 000AB 00000           CON(5)  ='
  906 000B0 00000           CON(5)  =DOLAM
  907 000B5 70              CON(2)  7
  908 000B7 2557E6E         NIBASC  \Running\
            696E676
  909 000C5 00000           CON(5)  =STO
  910               * STO TRUE in LAM Running [Exit object = TRUE]
  911               * File  POL2.s  37
  912 000CA 00000           CON(5)  =SEMI
  913               * File  POL2.s  38
  914 000CF 00000           CON(5)  =DROP
  915 000D4 00000           CON(5)  ='DoBadKeyT
  916               * Reject all other keys
  917               * File  POL2.s  39
  918 000D9 00000           CON(5)  =SEMI
  919               * File  POL2.s  40
  920 000DE 00000           CON(5)  =2DROP
  921 000E3 00000           CON(5)  ='DoBadKeyT
  922               * Reject all other planes
  923               * File  POL2.s  41
  924 000E8 00000           CON(5)  =SEMI
  925               * File  POL2.s  42
  926 000ED 00000           CON(5)  =TRUE
  927               * NonAppKey Flag [Enable softkeys]
  928               * File  POL2.s  43
  929 000F2 00000           CON(5)  =TRUE
  930               * DoStdKeys Flag [Ignore user key assignments]
  931               * File  POL2.s  44
  932 000F7 00000           CON(5)  =DOLIST
  933               * Softkey Menu
  934               * File  POL2.s  45
  935 000FC 00000           CON(5)  =DOLIST
  936               * File  POL2.s  46
  937 00101 00000           CON(5)  =DOCOL
  938               * Label secondary
  939               * File  POL2.s  47
  940 00106 00000           CON(5)  =TakeOver
  941               * Custom key definition placeholder
  942               * File  POL2.s  48
  943 0010B 00000           CON(5)  =DOCSTR
  944 00110 70000           CON(5)  7
  945 00115 13              NIBASC  \1\
  946               * -> $Label
  947               * File  POL2.s  49
  948 00117 00000           CON(5)  =ONE
  949 0011C 00000           CON(5)  =TestUserFlag
  950               * #userflag -> FLAG [Test user flag 1 TRUE = FS, FALSE = FC]
  951               * File  POL2.s  50
  952 00121 00000           CON(5)  =Box/StdLabel
  953               * $Label FLAG -> grob [TRUE = box label, FALSE = std. label]
  954               * File  POL2.s  51
  955 00126 00000           CON(5)  =SEMI
  956               * File  POL2.s  52
  957 0012B 00000           CON(5)  =DOCOL
  958               * Key action for primary plane [no shift]
  959               * File  POL2.s  53
  960 00130 00000           CON(5)  =TakeOver
  961               * Custom key definition placeholder
  962               * File  POL2.s  54
  963 00135 00000           CON(5)  =ONEONE
  964 0013A 00000           CON(5)  =TestUserFlag
  965               * # # -> FLAG [TRUE = FS, FALSE = FC]
  966               * File  POL2.s  55
  967 0013F 00000           CON(5)  =ITE
  968 00144 00000           CON(5)  =ClrUserFlag
  969 00149 00000           CON(5)  =SetUserFlag
  970               * #userflag -> [Toggle flag state]
  971               * File  POL2.s  56
  972 0014E 00000           CON(5)  =SetDA1Bad
  973               * Signal to redraw status area
  974               * File  POL2.s  57
  975 00153 00000           CON(5)  =SetDA3Bad
  976               * Signal to redraw menu area
  977               * File  POL2.s  58
  978 00158 00000           CON(5)  =SEMI
  979               * File  POL2.s  59
  980 0015D 00000           CON(5)  =SEMI
  981               * File  POL2.s  60
  982 00162 00000           CON(5)  =SEMI
  983               * File  POL2.s  61
  984 00167 00000           CON(5)  =ONEFALSE
  985               * #Menu Row, Suspend Flag = FALSE
  986               * File  POL2.s  62
  987 0016C 00000           CON(5)  ='
  988 00171 00000           CON(5)  =DOLAM
  989 00176 70              CON(2)  7
  990 00178 2557E6E         NIBASC  \Running\
            696E676
  991               * Exit object
  992               * File  POL2.s  63
  993 00186 00000           CON(5)  ='
  994 0018B 00000           CON(5)  =ERRJMP
  995               * Error object
  996               * File  POL2.s  64
  997 00190 00000           CON(5)  =ParOuterLoop
  998               * Run the POL
  999               * File  POL2.s  65
 1000 00195 00000           CON(5)  =ABND
 1001               * Abandon temporary environment
 1002               * File  POL2.s  66
 1003 0019A 00000           CON(5)  =ClrDAsOK
 1004               * Redraw the display
 1005               * File  POL2.s  67
 1006 0019F 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun Jun 07 19:23:09 2009
V3.0.9 (04/15/2007)   Symbol Table                       POL2.a         Page    2

 #=casedrop                        Ext                   -   888
 '                                 Ext                   -   851   862   883
                                         905   987   993
 'DoBadKeyT                        Ext                   -   915   921
 0LASTOWDOB!                       Ext                   -   839
 2DROP                             Ext                   -   920
 ?CaseKeyDef                       Ext                   -   897
 ?DispStatus                       Ext                   -   878
 ?SKIP                             Ext                   -   867
 ABND                              Ext                   -  1000
 AddressesCLEBit                   Abs       0 #00000000 -   788
 AddressesCLEFl                    Abs      89 #00000059 -   786   787   788
 AddressesCLENib                   Abs      22 #00000016 -   787
 AlarmBeepBit                      Abs       0 #00000000 -   175
 AlarmBeepFl                       Abs      57 #00000039 -   163   174   175
 AlarmBeepNib                      Abs      14 #0000000E -   174
 AlgebraicModeBit                  Abs       2 #00000002 -   806
 AlgebraicModeFl                   Abs      95 #0000005F -   804   805   806
 AlgebraicModeNib                  Abs      23 #00000017 -   805
 AngleBCt                          Abs       2 #00000002 -   126
 AngleBit1                         Abs       0 #00000000 -   178   179
 AngleBit2                         Abs       1 #00000001 -   179
 AngleFl1                          Abs      17 #00000011 -   125   177   178
 AngleNib                          Abs       4 #00000004 -   177
 ArrayOnlyBit                      Abs       2 #00000002 -   794
 ArrayOnlyFl                       Abs      91 #0000005B -   792   793   794
 ArrayOnlyNib                      Abs      22 #00000016 -   793
 AutoSaveBit                       Abs       1 #00000001 -   803
 AutoSaveFl                        Abs      94 #0000005E -   801   802   803
 AutoSaveNib                       Abs      23 #00000017 -   802
 BigFontCmdBit                     Abs       0 #00000000 -   740
 BigFontCmdFl                      Abs      73 #00000049 -   738   739   740
 BigFontCmdNib                     Abs      18 #00000012 -   739
 BigFontStackBit                   Abs       3 #00000003 -   737
 BigFontStackFl                    Abs      72 #00000048 -   735   736   737
 BigFontStackNib                   Abs      17 #00000011 -   736
 BinBaseBCt                        Abs       2 #00000002 -   121
 BinBaseBit1                       Abs       2 #00000002 -   182
 BinBaseFl1                        Abs      11 #0000000B -   120   181   182
 BinBaseNib                        Abs       2 #00000002 -   181
 BinWordSBCt                       Abs       6 #00000006 -   119
 BinWordSBit1                      Abs       0 #00000000 -   185
 BinWordSFl1                       Abs       5 #00000005 -   118   184   185
 BinWordSNib                       Abs       1 #00000001 -   184
 Box/StdLabel                      Ext                   -   952
 CK0NOLASTWD                       Ext                   -   842
 CarefulBit                        Abs       3 #00000003 -   188
 CarefulFl                         Abs       4 #00000004 -   116   187   188
 CarefulNib                        Abs       0 #00000000 -   187
 ClockFmtBit                       Abs       0 #00000000 -   191
 ClockFmtFl                        Abs      41 #00000029 -   148   190   191
 ClockFmtNib                       Abs      10 #0000000A -   190
 ClockOnBit                        Abs       3 #00000003 -   194
 ClockOnFl                         Abs      40 #00000028 -   147   193   194
 ClockOnNib                        Abs       9 #00000009 -   193
 ClrDAsOK                          Ext                   -  1003
 ClrUserFlag                       Ext                   -   968
 CmdAutoIndentBit                  Abs       3 #00000003 -   725
 CmdAutoIndentFl                   Abs      68 #00000044 -   723   724   725
 CmdAutoIndentNib                  Abs      16 #00000010 -   724
 ComVecDiBCt                       Abs       2 #00000002 -   124
 ComVecDiBit1                      Abs       2 #00000002 -   200
 ComVecDiFl1                       Abs      15 #0000000F -   123   199   200
 ComVecDiNib                       Abs       3 #00000003 -   199
 Complex2DBit                      Abs       2 #00000002 -   197
 Complex2DFl                       Abs      19 #00000013 -   127   196   197
 Complex2DNib                      Abs       4 #00000004 -   196
 ComplexBit                        Abs       2 #00000002 -   820
 ComplexFl                         Abs     103 #00000067 -   818   819   820
 ComplexNib                        Abs      25 #00000019 -   819
 ConnectPtBit                      Abs       2 #00000002 -   203
 ConnectPtFl                       Abs      31 #0000001F -   137   202   203
 ConnectPtNib                      Abs       7 #00000007 -   202
 ConstantsBit                      Abs       1 #00000001 -   206
 ConstantsFl                       Abs       2 #00000002 -   114   205   206
 ConstantsNib                      Abs       0 #00000000 -   205
 DA3OK?                            Ext                   -   866
 DOBIND                            Ext                   -   858
 DOCOL                             Ext                   -   837   863   868
                                         884   889   898   937   957
 DOCSTR                            Ext                   -   943
 DOLAM                             Ext                   -   852   906   988
 DOLIST                            Ext                   -   932   935
 DROP                              Ext                   -   914
 DUP#<7                            Ext                   -   892
 DateFmtBit                        Abs       1 #00000001 -   209
 DateFmtFl                         Abs      42 #0000002A -   149   208   209
 DateFmtNib                        Abs      10 #0000000A -   208
 DblSpaceBit                       Abs       0 #00000000 -   212
 DblSpaceFl                        Abs      37 #00000025 -   143   211   212
 DblSpaceNib                       Abs       9 #00000009 -   211
 DefSysF32-01                      Abs67178480 #04010FF0 -    38
 DefSysF64-33                      Abs       0 #00000000 -    37
 DefSysF65-96                      Abs1107296256 #42000000 -    39
 DefSysF97-128                     Abs       0 #00000000 -    40
 DelNRAlmBit                       Abs       3 #00000003 -   215
 DelNRAlmFl                        Abs      44 #0000002C -   151   214   215
 DelNRAlmNib                       Abs      10 #0000000A -   214
 DesasmWithAdrBit                  Abs       2 #00000002 -   734
 DesasmWithAdrFl                   Abs      71 #00000047 -   732   733   734
 DesasmWithAdrNib                  Abs      17 #00000011 -   733
 DigitalClockBit                   Abs       2 #00000002 -   722
 DigitalClockFl                    Abs      67 #00000043 -   720   721   722
 DigitalClockNib                   Abs      16 #00000010 -   721
 DispMenu.1                        Ext                   -   871
 ERRJMP                            Ext                   -   994
 ErableHeaderBit                   Abs       0 #00000000 -   800
 ErableHeaderFl                    Abs      93 #0000005D -   798   799   800
 ErableHeaderNib                   Abs      23 #00000017 -   799
 ErrorBeepBit                      Abs       3 #00000003 -   218
 ErrorBeepFl                       Abs      56 #00000038 -   162   217   218
 ErrorBeepNib                      Abs      13 #0000000D -   217
 ExactModeBit                      Abs       0 #00000000 -   825
 ExactModeFl                       Abs     105 #00000069 -   823   824   825
 ExactModeNib                      Abs      26 #0000001A -   824
 FALSE                             Ext                   -   848
 FORTYSEVEN                        Ext                   -   896
 FastEViewBit                      Abs       2 #00000002 -   221
 FastEViewNib                      Abs      14 #0000000E -   220
 FastEqViewFl                      Abs      59 #0000003B -   165   220   221
 FilerConfirmBit                   Abs       0 #00000000 -   752
 FilerConfirmFl                    Abs      77 #0000004D -   750   751   752
 FilerConfirmNib                   Abs      19 #00000013 -   751
 FilerConfirmationBit              Abs       3 #00000003 -   749
 FilerConfirmationFl               Abs      76 #0000004C -   747   748   749
 FilerConfirmationNib              Abs      18 #00000012 -   748
 FullScreenEditBit                 Abs       0 #00000000 -   728
 FullScreenEditFl                  Abs      69 #00000045 -   726   727   728
 FullScreenEditNib                 Abs      17 #00000011 -   727
 FunctPlotBit                      Abs       1 #00000001 -   224
 FunctPlotFl                       Abs      30 #0000001E -   136   223   224
 FunctPlotNib                      Abs       7 #00000007 -   223
 GCursorBit                        Abs       3 #00000003 -   227
 GCursorFl                         Abs      32 #00000020 -   138   226   227
 GCursorNib                        Abs       7 #00000007 -   226
 GrobDisplayBit                    Abs       2 #00000002 -   770
 GrobDisplayFl                     Abs      83 #00000053 -   768   769   770
 GrobDisplayNib                    Abs      20 #00000014 -   769
 IODataFmtBit                      Abs       2 #00000002 -   239
 IODataFmtFl                       Abs      35 #00000023 -   141   238   239
 IODataFmtNib                      Abs       8 #00000008 -   238
 IODeviceBit                       Abs       0 #00000000 -   242
 IODeviceFl                        Abs      33 #00000021 -   139   241   242
 IODeviceNib                       Abs       8 #00000008 -   241
 ITE                               Ext                   -   967
 IndexWrapBit                      Abs       3 #00000003 -   230
 IndexWrapFl                       Abs      64 #00000040 -   170   229   230
 IndexWrapNib                      Abs      15 #0000000F -   229
 InfResActBit                      Abs       1 #00000001 -   233
 InfResActFl                       Abs      22 #00000016 -   130   232   233
 InfResActNib                      Abs       5 #00000005 -   232
 InfResultBit                      Abs       1 #00000001 -   236
 InfResultFl                       Abs      26 #0000001A -   134   235   236
 InfResultNib                      Abs       6 #00000006 -   235
 KernelParamBit                    Abs       1 #00000001 -   755
 KernelParamFl                     Abs      78 #0000004E -   753   754   755
 KernelParamNib                    Abs      19 #00000013 -   754
 KeystrokeBeepBit                  Abs       2 #00000002 -   746
 KeystrokeBeepFl                   Abs      75 #0000004B -   744   745   746
 KeystrokeBeepNib                  Abs      18 #00000012 -   745
 LastArgsBit                       Abs       2 #00000002 -   245
 LastArgsFl                        Abs      55 #00000037 -   161   244   245
 LastArgsNib                       Abs      13 #0000000D -   244
 MASDDecompilerBit                 Abs       1 #00000001 -   779
 MASDDecompilerFl                  Abs      86 #00000056 -   777   778   779
 MASDDecompilerNib                 Abs      21 #00000015 -   778
 MKSmallFontMenuBit                Abs       3 #00000003 -   773
 MKSmallFontMenuFl                 Abs      84 #00000054 -   771   772   773
 MKSmallFontMenuNib                Abs      20 #00000014 -   772
 MLMASDModeBit                     Abs       3 #00000003 -   797
 MLMASDModeFl                      Abs      92 #0000005C -   795   796   797
 MLMASDModeNib                     Abs      22 #00000016 -   796
 MenuOnBit                         Abs       3 #00000003 -   809
 MenuOnFl                          Abs      96 #00000060 -   807   808   809
 MenuOnNib                         Abs      23 #00000017 -   808
 MultiDispBit                      Abs       3 #00000003 -   251
 MultiDispFl                       Abs      52 #00000034 -   158   250   251
 MultiDispNib                      Abs      12 #0000000C -   250
 MultiLine2GROBBit                 Abs       1 #00000001 -   731
 MultiLine2GROBFl                  Abs      70 #00000046 -   729   730   731
 MultiLine2GROBNib                 Abs      17 #00000011 -   730
 MultiLineBit                      Abs       0 #00000000 -   716
 MultiLineFl                       Abs      65 #00000041 -   714   715   716
 MultiLineNib                      Abs      16 #00000010 -   715
 MultiLineStringsBit               Abs       1 #00000001 -   719
 MultiLineStringsFl                Abs      66 #00000042 -   717   718   719
 MultiLineStringsNib               Abs      16 #00000010 -   718
 NoAutoCRBit                       Abs       1 #00000001 -   254
 NoAutoCRFl                        Abs      38 #00000026 -   144   253   254
 NoAutoCRNib                       Abs       9 #00000009 -   253
 NoIOStMsgBit                      Abs       2 #00000002 -   257
 NoIOStMsgNib                      Abs       9 #00000009 -   256
 NoIOStsMsgFl                      Abs      39 #00000027 -   145   256   257
 NoParseBit                        Abs       2 #00000002 -   260
 NoParseFl                         Abs      63 #0000003F -   169   259   260
 NoParseNib                        Abs      15 #0000000F -   259
 NumDigsBCt                        Abs       4 #00000004 -   154
 NumDigsBit1                       Abs       0 #00000000 -   263
 NumDigsFl1                        Abs      45 #0000002D -   153   262   263
 NumDigsNib                        Abs      11 #0000000B -   262
 NumDispBCt                        Abs       2 #00000002 -   156
 NumDispBit1                       Abs       0 #00000000 -   266
 NumDispFl1                        Abs      49 #00000031 -   155   265   266
 NumDispNib                        Abs      12 #0000000C -   265
 ONE                               Ext                   -   857   887   948
 ONEFALSE                          Ext                   -   984
 ONEONE                            Ext                   -   963
 OverfActBit                       Abs       0 #00000000 -   269
 OverfActFl                        Abs      21 #00000015 -   129   268   269
 OverfActNib                       Abs       5 #00000005 -   268
 OverflowBit                       Abs       0 #00000000 -   272
 OverflowFl                        Abs      25 #00000019 -   133   271   272
 OverflowNib                       Abs       6 #00000006 -   271
 OverwriteBit                      Abs       3 #00000003 -   275
 OverwriteFl                       Abs      36 #00000024 -   142   274   275
 OverwriteNib                      Abs       8 #00000008 -   274
 ParOuterLoop                      Ext                   -   997
 PrettyPrintBit                    Abs       2 #00000002 -   758
 PrettyPrintFl                     Abs      79 #0000004F -   756   757   758
 PrettyPrintNib                    Abs      19 #00000013 -   757
 PrintDevBit                       Abs       1 #00000001 -   278
 PrintDevFl                        Abs      34 #00000022 -   140   277   278
 PrintDevNib                       Abs       8 #00000008 -   277
 RECLAIMDISP                       Ext                   -   845
 RadixBit                          Abs       2 #00000002 -   281
 RadixFl                           Abs      51 #00000033 -   157   280   281
 RadixNib                          Abs      12 #0000000C -   280
 RecursiveEditBit                  Abs       3 #00000003 -   785
 RecursiveEditFl                   Abs      88 #00000058 -   783   784   785
 RecursiveEditNib                  Abs      21 #00000015 -   784
 RecursiveStackBit                 Abs       2 #00000002 -   782
 RecursiveStackFl                  Abs      87 #00000057 -   780   781   782
 RecursiveStackNib                 Abs      21 #00000015 -   781
 ResRepAlmBit                      Abs       2 #00000002 -   284
 ResRepAlmFl                       Abs      43 #0000002B -   150   283   284
 ResRepAlmNib                      Abs      10 #0000000A -   283
 ResultsBit                        Abs       2 #00000002 -   287
 ResultsFl                         Abs       3 #00000003 -   115   286   287
 ResultsNib                        Abs       0 #00000000 -   286
 RightJustifiedStackBit            Abs       1 #00000001 -   743
 RightJustifiedStackFl             Abs      74 #0000004A -   741   742   743
 RightJustifiedStackNib            Abs      18 #00000012 -   742
 SEMI                              Ext                   -   876   881   912
                                         918   924   955   978   980   982  1006
 STO                               Ext                   -   909
 SetDA1Bad                         Ext                   -   972
 SetDA3Bad                         Ext                   -   975
 SetDA3Valid                       Ext                   -   874
 SetUserFlag                       Ext                   -   969
 ShowPrecBit                       Abs       0 #00000000 -   290
 ShowPrecFl                        Abs      53 #00000035 -   159   289   290
 ShowPrecNib                       Abs      13 #0000000D -   289
 SmallFontChooseBit                Abs       1 #00000001 -   791
 SmallFontChooseFl                 Abs      90 #0000005A -   789   790   791
 SmallFontChooseNib                Abs      22 #00000016 -   790
 SmallFontEQWEditBit               Abs       1 #00000001 -   767
 SmallFontEQWEditFl                Abs      82 #00000052 -   765   766   767
 SmallFontEQWEditNib               Abs      20 #00000014 -   766
 SmallFontEQWGrobBit               Abs       0 #00000000 -   764
 SmallFontEQWGrobFl                Abs      81 #00000051 -   762   763   764
 SmallFontEQWGrobNib               Abs      20 #00000014 -   763
 SmallFontEQWStackBit              Abs       3 #00000003 -   761
 SmallFontEQWStackFl               Abs      80 #00000050 -   759   760   761
 SmallFontEQWStackNib              Abs      19 #00000013 -   760
 SolutionsBit                      Abs       0 #00000000 -   293
 SolutionsFl                       Abs       1 #00000001 -   113   292   293
 SolutionsNib                      Abs       0 #00000000 -   292
 SystemRPLStackBit                 Abs       0 #00000000 -   776
 SystemRPLStackFl                  Abs      85 #00000055 -   774   775   776
 SystemRPLStackNib                 Abs      21 #00000015 -   775
 TRUE                              Ext                   -   904   926   929
 TakeOver                          Ext                   -   901   940   960
 TestUserFlag                      Ext                   -   949   964
 TriAlphaBit                       Abs       3 #00000003 -   296
 TriAlphaFl                        Abs      60 #0000003C -   166   295   296
 TriAlphaNib                       Abs      14 #0000000E -   295
 TriUserBit                        Abs       0 #00000000 -   299
 TriUserFl                         Abs      61 #0000003D -   167   298   299
 TriUserNib                        Abs      15 #0000000F -   298
 UnderfActBit                      Abs       3 #00000003 -   302
 UnderfActFl                       Abs      20 #00000014 -   128   301   302
 UnderfActNib                      Abs       4 #00000004 -   301
 UnderfNegBit                      Abs       2 #00000002 -   305
 UnderfNegFl                       Abs      23 #00000017 -   131   304   305
 UnderfNegNib                      Abs       5 #00000005 -   304
 UnderfPosBit                      Abs       3 #00000003 -   308
 UnderfPosFl                       Abs      24 #00000018 -   132   307   308
 UnderfPosNib                      Abs       5 #00000005 -   307
 UserKeysBit                       Abs       1 #00000001 -   311
 UserKeysFl                        Abs      62 #0000003E -   168   310   311
 UserKeysNib                       Abs      15 #0000000F -   310
 VerboseBit                        Abs       1 #00000001 -   248
 VerboseFl                         Abs      58 #0000003A -   164   247   248
 VerboseNib                        Abs      14 #0000000E -   247
 VerticalListBit                   Abs       0 #00000000 -   812
 VerticalListFl                    Abs      97 #00000061 -   810   811   812
 VerticalListNib                   Abs      24 #00000018 -   811
 VerticalVectorBit                 Abs       1 #00000001 -   815
 VerticalVectorFl                  Abs      98 #00000062 -   813   814   815
 VerticalVectorNib                 Abs      24 #00000018 -   814
 casedrpfls                        Ext                   -   893
 hasALIAS                          Abs       2 #00000002 -   324
 hasCOLCT                          Abs       2 #00000002 -   330
 hasDER                            Abs       8 #00000008 -   328
 hasEXPND                          Abs       1 #00000001 -   331
 hasFORM                           Abs       8 #00000008 -   334
 hasHELP                           Abs       4 #00000004 -   322
 hasINTG                           Abs       4 #00000004 -   335
 hasINV                            Abs       4 #00000004 -   329
 hasPDATA                          Abs       1 #00000001 -   325
 hasPROMPTM                        Abs       4 #00000004 -   323
 hasVUNS                           Abs       1 #00000001 -   337
 hasWHERE                          Abs       2 #00000002 -   336
 nonALG                            Abs       8 #00000008 -   321
 pdCM                              Abs       6 #00000006 -   346
 pdEQ                              Abs       7 #00000007 -   347
 pdEX                              Abs       0 #00000000 -   340
 pdLP                              Abs       4 #00000004 -   344
 pdOP                              Abs       1 #00000001 -   341
 pdOS0                             Abs       8 #00000008 -   348
 pdOS1                             Abs       9 #00000009 -   349
 pdOS2                             Abs      10 #0000000A -   350
 pdOS3                             Abs      11 #0000000B -   351
 pdOS4                             Abs      12 #0000000C -   352
 pdOS5                             Abs      13 #0000000D -   353
 pdOS6                             Abs      14 #0000000E -   354
 pdOS7                             Abs      15 #0000000F -   355
 pdQE                              Abs       2 #00000002 -   342
 pdQN                              Abs       3 #00000003 -   343
 pdRP                              Abs       5 #00000005 -   345
Saturn Assembler                                       Sun Jun 07 19:23:09 2009
V3.0.9 (04/15/2007)   Statistics                         POL2.a         Page    3

Input Parameters

  Source file name is POL2.a

  Listing file name is POL2.l

  Object file name is POL2.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
