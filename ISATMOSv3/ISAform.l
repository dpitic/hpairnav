Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)                                      ISAform.a      Page    1

    1               * File  ISAform.s       1
    2               * Inform Box File
    3               * Do not modify this line
    4               * Inform Box  ISA  Source Code
    5               * Generated on 13:56:40 22/04/2009 by HP InformBox Generator
    6               * Inform Box Designer is Dan Pitic
    7               * File  ISAform.s       5
    8
    9               * File  ISAform.s       6
   10               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
   11
   12
   13               * RPL
   14               * insure RPL-mode exit
   15
   16               * ( Rad
   17
   18               * ( %2PI
   19               * ( %PI/24
   20
   21
   22
   23
   24               * ( 1=1Var, 2=2Var Statistic
   25               * ( 1=Histogram, 2=BoxWhisker
   26
   27
   28
   29
   30
   31               * ASSEMBLE
   32               DefSysF64-33 EQU        #00000000
   33               DefSysF32-01 EQU        #04010FF0
   34               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   35               DefSysF97-128 EQU       #00000000
   36
   37               * RPL
   38
   39
   40               * ( solution mode
   41               * ( constants mode
   42               * ( results mode
   43               * ( careful evaluation mode
   44
   45               * ( binary integer wordsize
   46               * must start on nibble boundary
   47               * ( binary integer base
   48               * must follow "fnBinWordS6"
   49
   50               * ( financial BEGIN/END mode
   51               * ( complex number and vector
   52               * mode
   53               * ( angle mode
   54               * must start on a nibble boundary
   55               * ( complex 2D mode
   56               * ( underflow action
   57               * ( overflow action
   58               * ( infinite result action
   59               * ( underflow-negative indicator
   60               * ( underflow-positive indicator
   61               * ( overflow indicator
   62               * ( infinite result indicator
   63               * ( symbolic-comples decompilation
   64               * ( simultaneous plot mode
   65               * ( axis drawing plot mode
   66
   67               * ( connect points mode
   68               * ( graphics cursor type mode
   69               * ( I/O device
   70               * ( print device
   71               * ( I/O data format
   72               * ( variable overwrite mode
   73               * ( double-space print mode
   74               * ( suppress auto CR mode
   75               * ( suppress I/O status messages
   76
   77
   78               * ( clock display mode
   79               * ( clock display format
   80               * ( date format
   81               * ( reschedule unacknowledged
   82               * repeat alarms mode
   83               * ( delete acknowledged non-repeat
   84               * alarms mode
   85
   86               * ( number of decimal digits
   87               * must start on nibble boundary
   88               * ( number display format
   89               * must start on nibble boundary
   90               * ( radix mark
   91               * ( multi-line display mode
   92               * ( show precedence mode
   93               * ( zero out tiny matrix elements
   94
   95               * ( last arguments mode
   96               * ( error beep mode
   97               * ( alarm beep mode
   98               * ( verbose display mode
   99               * ( variable name only mode
  100               * ( 3-way alpha mode
  101               * ( 3-way user keys mode
  102               * ( user keys mode
  103               * ( special parser mode
  104               * ( index wraparound indicator
  105
  106
  107               * ASSEMBLE
  108               SolutionsFl  EQU 1
  109               ConstantsFl  EQU 2
  110               ResultsFl    EQU 3
  111               CarefulFl    EQU 4
  112
  113               BinWordSFl1  EQU 5      must start on a nibble boundary
  114               BinWordSBCt  EQU 6      number of bits
  115               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  116               BinBaseBCt   EQU 2      number of bits
  117
  118               ComVecDiFl1  EQU 15
  119               ComVecDiBCt  EQU 2      number of bits
  120               AngleFl1     EQU 17     must start on a nibble boundary
  121               AngleBCt     EQU 2      number of bits
  122               Complex2DFl  EQU 19
  123               UnderfActFl  EQU 20
  124               OverfActFl   EQU 21
  125               InfResActFl  EQU 22
  126               UnderfNegFl  EQU 23
  127               UnderfPosFl  EQU 24
  128               OverflowFl   EQU 25
  129               InfResultFl  EQU 26
  130
  131               FunctPlotFl  EQU 30
  132               ConnectPtFl  EQU 31
  133               GCursorFl    EQU 32
  134               IODeviceFl   EQU 33
  135               PrintDevFl   EQU 34
  136               IODataFmtFl  EQU 35
  137               OverwriteFl  EQU 36
  138               DblSpaceFl   EQU 37
  139               NoAutoCRFl   EQU 38
  140               NoIOStsMsgFl EQU 39
  141
  142               ClockOnFl    EQU 40
  143               ClockFmtFl   EQU 41
  144               DateFmtFl    EQU 42
  145               ResRepAlmFl  EQU 43
  146               DelNRAlmFl   EQU 44
  147
  148               NumDigsFl1   EQU 45     must start on a nibble boundary
  149               NumDigsBCt   EQU 4      number of bits
  150               NumDispFl1   EQU 49     must start on a nibble boundary
  151               NumDispBCt   EQU 2      number of bits
  152               RadixFl      EQU 51
  153               MultiDispFl  EQU 52
  154               ShowPrecFl   EQU 53
  155
  156               LastArgsFl   EQU 55
  157               ErrorBeepFl  EQU 56
  158               AlarmBeepFl  EQU 57
  159               VerboseFl    EQU 58
  160               FastEqViewFl EQU 59
  161               TriAlphaFl   EQU 60
  162               TriUserFl    EQU 61
  163               UserKeysFl   EQU 62
  164               NoParseFl    EQU 63
  165               IndexWrapFl  EQU 64
  166
  167
  168
  169               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  170               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  171
  172               AngleNib     EQU ((AngleFl1)-1)/4
  173               AngleBit1    EQU ((AngleFl1)-1)%4
  174               AngleBit2    EQU (AngleBit1)+1
  175
  176               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  177               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  178
  179               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  180               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  181
  182               CarefulNib   EQU ((CarefulFl)-1)/4
  183               CarefulBit   EQU ((CarefulFl)-1)%4
  184
  185               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  186               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  187
  188               ClockOnNib   EQU ((ClockOnFl)-1)/4
  189               ClockOnBit   EQU ((ClockOnFl)-1)%4
  190
  191               Complex2DNib EQU ((Complex2DFl)-1)/4
  192               Complex2DBit EQU ((Complex2DFl)-1)%4
  193
  194               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  195               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  196
  197               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  198               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  199
  200               ConstantsNib EQU ((ConstantsFl)-1)/4
  201               ConstantsBit EQU ((ConstantsFl)-1)%4
  202
  203               DateFmtNib   EQU ((DateFmtFl)-1)/4
  204               DateFmtBit   EQU ((DateFmtFl)-1)%4
  205
  206               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  207               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  208
  209               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  210               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  211
  212               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  213               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  214
  215               FastEViewNib EQU ((FastEqViewFl)-1)/4
  216               FastEViewBit EQU ((FastEqViewFl)-1)%4
  217
  218               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  219               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  220
  221               GCursorNib   EQU ((GCursorFl)-1)/4
  222               GCursorBit   EQU ((GCursorFl)-1)%4
  223
  224               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  225               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  226
  227               InfResActNib EQU ((InfResActFl)-1)/4
  228               InfResActBit EQU ((InfResActFl)-1)%4
  229
  230               InfResultNib EQU ((InfResultFl)-1)/4
  231               InfResultBit EQU ((InfResultFl)-1)%4
  232
  233               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  234               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  235
  236               IODeviceNib  EQU ((IODeviceFl)-1)/4
  237               IODeviceBit  EQU ((IODeviceFl)-1)%4
  238
  239               LastArgsNib  EQU ((LastArgsFl)-1)/4
  240               LastArgsBit  EQU ((LastArgsFl)-1)%4
  241
  242               VerboseNib   EQU ((VerboseFl)-1)/4
  243               VerboseBit   EQU ((VerboseFl)-1)%4
  244
  245               MultiDispNib EQU ((MultiDispFl)-1)/4
  246               MultiDispBit EQU ((MultiDispFl)-1)%4
  247
  248               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  249               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  250
  251               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  252               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  253
  254               NoParseNib   EQU ((NoParseFl)-1)/4
  255               NoParseBit   EQU ((NoParseFl)-1)%4
  256
  257               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  258               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  259
  260               NumDispNib   EQU ((NumDispFl1)-1)/4
  261               NumDispBit1  EQU ((NumDispFl1)-1)%4
  262
  263               OverfActNib  EQU ((OverfActFl)-1)/4
  264               OverfActBit  EQU ((OverfActFl)-1)%4
  265
  266               OverflowNib  EQU ((OverflowFl)-1)/4
  267               OverflowBit  EQU ((OverflowFl)-1)%4
  268
  269               OverwriteNib EQU ((OverwriteFl)-1)/4
  270               OverwriteBit EQU ((OverwriteFl)-1)%4
  271
  272               PrintDevNib  EQU ((PrintDevFl)-1)/4
  273               PrintDevBit  EQU ((PrintDevFl)-1)%4
  274
  275               RadixNib     EQU ((RadixFl)-1)/4
  276               RadixBit     EQU ((RadixFl)-1)%4
  277
  278               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  279               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  280
  281               ResultsNib   EQU ((ResultsFl)-1)/4
  282               ResultsBit   EQU ((ResultsFl)-1)%4
  283
  284               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  285               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  286
  287               SolutionsNib EQU ((SolutionsFl)-1)/4
  288               SolutionsBit EQU ((SolutionsFl)-1)%4
  289
  290               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  291               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  292
  293               TriUserNib   EQU ((TriUserFl)-1)/4
  294               TriUserBit   EQU ((TriUserFl)-1)%4
  295
  296               UnderfActNib EQU ((UnderfActFl)-1)/4
  297               UnderfActBit EQU ((UnderfActFl)-1)%4
  298
  299               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  300               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  301
  302               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  303               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  304
  305               UserKeysNib  EQU ((UserKeysFl)-1)/4
  306               UserKeysBit  EQU ((UserKeysFl)-1)%4
  307
  308               * RPL
  309               * RPL
  310               * insure RPL-mode exit
  311
  312
  313               * ASSEMBLE
  314
  315
  316               nonALG EQU 8                    not-allowed-in-algebraics flag
  317               hasHELP EQU 4                   has-help-data flag
  318               hasPROMPTM EQU 4                same as above
  319               hasALIAS EQU 2                  has-algebraic-alias flag
  320               hasPDATA EQU 1                  has-parse-data flag
  321
  322
  323               hasDER EQU 8                    has-derivative flag
  324               hasINV EQU 4                    has-inverse flag
  325               hasCOLCT EQU 2                  has-COLCT-data flag
  326               hasEXPND EQU 1                  has-EXPND-data flag
  327
  328
  329               hasFORM EQU 8                   has-FORM-menu flag
  330               hasINTG EQU 4                   has-Integral-data flag
  331               hasWHERE EQU 2                  has-WHERE-code flag
  332               hasVUNS EQU 1                   has-veryunsymin-code flag
  333
  334
  335               pdEX EQU #0             general expression
  336               pdOP EQU #1             operator
  337               pdQE EQU #2             quoted expression
  338               pdQN EQU #3             quoted name
  339               pdLP EQU #4             left parenthesis
  340               pdRP EQU #5             right parenthesis
  341               pdCM EQU #6             comma (non-radix)
  342               pdEQ EQU #7             equal-sign separator
  343               pdOS0 EQU #8            optional repeat 0
  344               pdOS1 EQU #9            optional repeat 1
  345               pdOS2 EQU #A            optional repeat 2
  346               pdOS3 EQU #B            optional repeat 3
  347               pdOS4 EQU #C            optional repeat 4
  348               pdOS5 EQU #D            optional repeat 5
  349               pdOS6 EQU #E            optional repeat 6
  350               pdOS7 EQU #F            optional repeat 7
  351
  352               * RPL
  353               * RPL
  354               * insure RPL-mode exit
  355
  356
  357
  358
  359
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
  372               * RPL
  373               * insure RPL-mode exit
  374
  375               * RPL
  376               * insure RPL-mode exit
  377
  378
  379
  380
  381
  382
  383
  384
  385
  386               * ( for internal use only
  387
  388
  389
  390
  391
  392
  393
  394
  395
  396
  397               * ( decimal 67
  398               * ( decimal 86
  399               * ( decimal 82
  400               * ( decimal 85
  401               * ( decimal 101
  402               * ( decimal 97
  403               * ( decimal 100
  404               * ( decimal 113
  405               * ( decimal 112
  406
  407               * ( check width
  408               * ( field character width
  409
  410               * ( decimal 67
  411               * ( decimal 85
  412               * ( decimal 97
  413
  414
  415
  416
  417
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
  430               * RPL
  431               * insure RPL-mode exit
  432
  433               * ( decimal 66
  434               * ( decimal 67
  435               * ( decimal 69
  436               * ( decimal 82
  437               * ( decimal 83
  438               * ( decimal 84
  439               * ( decimal 85
  440               * ( decimal 86
  441               * ( decimal 87
  442
  443
  444               * ( norm-view default visible row count
  445               * ( default first row X location
  446               * ( default first row Y location
  447               * ( default row width
  448               * ( default row height
  449
  450               * ( max-view width
  451               * ( max-view height
  452               * ( max-view default visible row count
  453
  454               * ( prompt area height
  455
  456               * ( more-up/down icon width
  457
  458
  459
  460               * RPL
  461               * insure RPL-mode exit
  462
  463
  464
  465
  466
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
  677               * RPL
  678               * insure RPL-mode exit
  679
  680
  681
  682               * ( set for informations
  683               * ( set for step by step mode on
  684               * ( internal use: true if VXXL success
  685               * ( set for no gcd computations
  686               * ( set for complex mode
  687               * ( internal use:       LN->-INV[-LN]]
  688               * ( set for approx mode
  689               * ( set for TSIMP call inside SERIES
  690               * ( internal use:       modular computation
  691               * ( internal use:       testing remainder=0
  692               * ( set to allow numeric factorization
  693               * ( set for large matrices
  694               * ( set: don't simplify inside non rational operation
  695               * ( set to see i as an irrquad c=-1
  696               * ( set to disable linearity simplif.
  697               * ( set for increasing power x+1 -> 1+x
  698               * ( internal use:       sqrt not as irrquad
  699               * ( set if sin are prefered to cos
  700               * ( set for menu as choosebox
  701               * ( set if xINT is not simplified
  702               * ( set if non rigourous mode
  703               * ( set to allow silent mode switch
  704               * ( set if xLN returns LN[ABS[]]
  705
  706
  707               * ASSEMBLE
  708
  709               MultiLineFl     EQU     65
  710               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  711               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  712               MultiLineStringsFl      EQU     66
  713               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  714               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  715               DigitalClockFl  EQU     67
  716               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  717               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  718               CmdAutoIndentFl EQU     68
  719               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  720               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  721               FullScreenEditFl        EQU     69
  722               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  723               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  724               MultiLine2GROBFl        EQU     70
  725               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  726               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  727               DesasmWithAdrFl EQU     71
  728               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  729               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  730               BigFontStackFl  EQU     72
  731               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  732               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  733               BigFontCmdFl    EQU     73
  734               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  735               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  736               RightJustifiedStackFl   EQU     74
  737               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  738               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  739               KeystrokeBeepFl EQU     75
  740               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  741               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  742               FilerConfirmationFl     EQU     76
  743               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  744               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  745               FilerConfirmFl  EQU     77
  746               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  747               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  748               KernelParamFl   EQU     78
  749               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  750               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  751               PrettyPrintFl   EQU     79
  752               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  753               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  754               SmallFontEQWStackFl     EQU     80
  755               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  756               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  757               SmallFontEQWGrobFl      EQU     81
  758               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  759               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  760               SmallFontEQWEditFl      EQU     82
  761               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  762               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  763               GrobDisplayFl   EQU     83
  764               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  765               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  766               MKSmallFontMenuFl       EQU     84
  767               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  768               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  769               SystemRPLStackFl        EQU     85
  770               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  771               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  772               MASDDecompilerFl        EQU     86
  773               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  774               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  775               RecursiveStackFl        EQU     87
  776               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  777               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  778               RecursiveEditFl EQU     88
  779               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  780               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  781               AddressesCLEFl  EQU     89
  782               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  783               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  784               SmallFontChooseFl       EQU     90
  785               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  786               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  787               ArrayOnlyFl     EQU     91
  788               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  789               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  790               MLMASDModeFl    EQU     92
  791               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  792               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  793               ErableHeaderFl  EQU     93
  794               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  795               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  796               AutoSaveFl      EQU     94
  797               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  798               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  799               AlgebraicModeFl EQU     95
  800               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  801               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  802               MenuOnFl        EQU     96
  803               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  804               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  805               VerticalListFl  EQU     97
  806               VerticalListNib EQU     ((VerticalListFl)-1)/4
  807               VerticalListBit EQU     ((VerticalListFl)-1)%4
  808               VerticalVectorFl        EQU     98
  809               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  810               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  811
  812
  813               ComplexFl       EQU     103
  814               ComplexNib      EQU     ((ComplexFl)-1)/4
  815               ComplexBit      EQU     ((ComplexFl)-1)%4
  816
  817
  818               ExactModeFl     EQU     105
  819               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  820               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  821
  822
  823               * RPL
  824
  825
  826
  827               * ASSEMBLE
  828                       SETLIST CODE, INCLUDE, PSEUDO
  829               * RPL
  830
  831               *|| Resuming file ISAform.s at line 6
  832               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Informbox.h
  833
  834
  835
  836
  837
  838
  839
  840
  841
  842
  843
  844
  845
  846
  847
  848
  849
  850
  851
  852
  853
  854
  855
  856
  857
  858
  859
  860
  861
  862
  863
  864
  865
  866
  867
  868
  869
  870
  871
  872
  873
  874
  875
  876
  877
  878
  879
  880
  881
  882
  883
  884
  885
  886
  887
  888
  889
  890
  891
  892
  893
  894
  895
  896
  897
  898
  899
  900
  901
  902
  903
  904
  905               * Do not modify any of these constants
  906
  907               * Do not modify any of these constants
  908               * ( was zint
  909
  910
  911
  912
  913
  914
  915
  916
  917
  918               *|| Resuming file ISAform.s at line 7
  919               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISATM.h
  920
  921               =RomId  EQU     #326
  922               * ROMID set to 326
  923
  924
  925
  926
  927
  928
  929
  930
  931               *|| Resuming file ISAform.s at line 8
  932
  933               * Field and Label Definitions
  934               * File  ISAform.s       11
  935               * File  ISAform.s       12
  936               * File  ISAform.s       13
  937               * File  ISAform.s       14
  938               * File  ISAform.s       15
  939               * File  ISAform.s       16
  940               * File  ISAform.s       17
  941               * File  ISAform.s       18
  942               * File  ISAform.s       19
  943               * File  ISAform.s       20
  944               * File  ISAform.s       21
  945
  946               * File  ISAform.s       22
  947               * Local Definitions
  948               * File  ISAform.s       23
  949
  950               * File  ISAform.s       24
  951 00000         =ISAform
  952               * File  ISAform.s       25
  953 00000 00000           CON(5)  =DOCOL
  954               * File  ISAform.s       26
  955               * Internal Graphical Datas
  956               * File  ISAform.s       27
  957               * File  ISAform.s       28
  958 00005 00000           CON(5)  =DOCSTR
  959 0000A 76100           SKIP5{
  960               * File  ISAform.s       29
  961 0000F 1D500           CON(5)  1489
  962               * File  ISAform.s       30
  963 00014 000             CON(3)  0
  964               * File  ISAform.s       31
  965 00017 00              CON(2)  0
  966               * File  ISAform.s       32
  967 00019 50              CON(2)  5
  968               * File  ISAform.s       33
  969 0001B 50              CON(2)  5
  970               * File  ISAform.s       34
  971 0001D 7D000           CON(5)  215
  972               * File  ISAform.s       35
  973
  974               * File  ISAform.s       36
  975               * File  ISAform.s       37
  976 00022 1               NIBHEX  1
  977 00023 9               NIBHEX  9
  978 00024 2               NIBHEX  2
  979 00025 0               NIBHEX  0
  980 00026 2               NIBHEX  2
  981 00027 9               NIBHEX  9
  982 00028 0               NIBHEX  0
  983 00029 1               NIBHEX  1
  984 0002A 1               NIBHEX  1
  985 0002B 0               NIBHEX  0
  986 0002C 1               NIBHEX  1
  987 0002D 1               NIBHEX  1
  988 0002E 6               NIBHEX  6
  989 0002F 0               NIBHEX  0
  990 00030 1               NIBHEX  1
  991 00031 D               NIBHEX  D
  992 00032 0               NIBHEX  0
  993 00033 F               NIBHEX  F
  994 00034 0               NIBHEX  0
  995 00035 8               NIBHEX  8
  996               * File  ISAform.s       38
  997 00036 1               NIBHEX  1
  998 00037 9               NIBHEX  9
  999 00038 2               NIBHEX  2
 1000 00039 0               NIBHEX  0
 1001 0003A 2               NIBHEX  2
 1002 0003B 2               NIBHEX  2
 1003 0003C 1               NIBHEX  1
 1004 0003D 0               NIBHEX  0
 1005 0003E 0               NIBHEX  0
 1006 0003F 1               NIBHEX  1
 1007 00040 0               NIBHEX  0
 1008 00041 1               NIBHEX  1
 1009 00042 1               NIBHEX  1
 1010 00043 6               NIBHEX  6
 1011 00044 0               NIBHEX  0
 1012 00045 1               NIBHEX  1
 1013 00046 D               NIBHEX  D
 1014 00047 0               NIBHEX  0
 1015 00048 F               NIBHEX  F
 1016 00049 0               NIBHEX  0
 1017 0004A 8               NIBHEX  8
 1018               * File  ISAform.s       39
 1019 0004B 1               NIBHEX  1
 1020 0004C 9               NIBHEX  9
 1021 0004D 2               NIBHEX  2
 1022 0004E 0               NIBHEX  0
 1023 0004F 2               NIBHEX  2
 1024 00050 2               NIBHEX  2
 1025 00051 1               NIBHEX  1
 1026 00052 0               NIBHEX  0
 1027 00053 0               NIBHEX  0
 1028 00054 2               NIBHEX  2
 1029 00055 4               NIBHEX  4
 1030 00056 0               NIBHEX  0
 1031 00057 0               NIBHEX  0
 1032 00058 1               NIBHEX  1
 1033 00059 6               NIBHEX  6
 1034 0005A 0               NIBHEX  0
 1035 0005B 1               NIBHEX  1
 1036 0005C D               NIBHEX  D
 1037 0005D 0               NIBHEX  0
 1038 0005E F               NIBHEX  F
 1039 0005F 0               NIBHEX  0
 1040 00060 8               NIBHEX  8
 1041               * File  ISAform.s       40
 1042 00061 1               NIBHEX  1
 1043 00062 9               NIBHEX  9
 1044 00063 2               NIBHEX  2
 1045 00064 0               NIBHEX  0
 1046 00065 2               NIBHEX  2
 1047 00066 B               NIBHEX  B
 1048 00067 1               NIBHEX  1
 1049 00068 0               NIBHEX  0
 1050 00069 0               NIBHEX  0
 1051 0006A 1               NIBHEX  1
 1052 0006B 0               NIBHEX  0
 1053 0006C 1               NIBHEX  1
 1054 0006D 1               NIBHEX  1
 1055 0006E 6               NIBHEX  6
 1056 0006F 0               NIBHEX  0
 1057 00070 1               NIBHEX  1
 1058 00071 D               NIBHEX  D
 1059 00072 0               NIBHEX  0
 1060 00073 F               NIBHEX  F
 1061 00074 0               NIBHEX  0
 1062 00075 8               NIBHEX  8
 1063               * File  ISAform.s       41
 1064 00076 1               NIBHEX  1
 1065 00077 9               NIBHEX  9
 1066 00078 2               NIBHEX  2
 1067 00079 0               NIBHEX  0
 1068 0007A 2               NIBHEX  2
 1069 0007B B               NIBHEX  B
 1070 0007C 1               NIBHEX  1
 1071 0007D 0               NIBHEX  0
 1072 0007E 0               NIBHEX  0
 1073 0007F 2               NIBHEX  2
 1074 00080 4               NIBHEX  4
 1075 00081 0               NIBHEX  0
 1076 00082 0               NIBHEX  0
 1077 00083 1               NIBHEX  1
 1078 00084 6               NIBHEX  6
 1079 00085 0               NIBHEX  0
 1080 00086 1               NIBHEX  1
 1081 00087 D               NIBHEX  D
 1082 00088 0               NIBHEX  0
 1083 00089 F               NIBHEX  F
 1084 0008A 0               NIBHEX  0
 1085 0008B 8               NIBHEX  8
 1086               * File  ISAform.s       42
 1087
 1088               * File  ISAform.s       43
 1089               * File  ISAform.s       44
 1090 0008C 1               NIBHEX  1
 1091 0008D 4               NIBHEX  4
 1092 0008E 3               NIBHEX  3
 1093 0008F 1               NIBHEX  1
 1094 00090 0               NIBHEX  0
 1095 00091 1               NIBHEX  1
 1096 00092 8               NIBHEX  8
 1097 00093 0               NIBHEX  0
 1098 00094 1               NIBHEX  1
 1099 00095 E               NIBHEX  E
 1100 00096 0               NIBHEX  0
 1101 00097 0               NIBHEX  0
 1102 00098 3               NIBHEX  3
 1103 00099 0               NIBHEX  0
 1104 0009A 0               NIBHEX  0
 1105 0009B 7               NIBHEX  7
 1106 0009C 8               NIBHEX  8
 1107 0009D 0               NIBHEX  0
 1108 0009E 1               NIBHEX  1
 1109 0009F E               NIBHEX  E
 1110 000A0 6               NIBHEX  6
 1111 000A1 0               NIBHEX  0
 1112 000A2 F               NIBHEX  F
 1113 000A3 0               NIBHEX  0
 1114 000A4 F               NIBHEX  F
 1115 000A5 0               NIBHEX  0
 1116 000A6 F               NIBHEX  F
 1117 000A7 0               NIBHEX  0
 1118 000A8 F               NIBHEX  F
 1119 000A9 0               NIBHEX  0
 1120 000AA F               NIBHEX  F
 1121 000AB 0               NIBHEX  0
 1122 000AC F               NIBHEX  F
 1123 000AD 0               NIBHEX  0
 1124 000AE F               NIBHEX  F
 1125 000AF 0               NIBHEX  0
 1126 000B0 F               NIBHEX  F
 1127 000B1 0               NIBHEX  0
 1128 000B2 F               NIBHEX  F
 1129 000B3 0               NIBHEX  0
 1130 000B4 F               NIBHEX  F
 1131 000B5 0               NIBHEX  0
 1132 000B6 F               NIBHEX  F
 1133 000B7 0               NIBHEX  0
 1134 000B8 F               NIBHEX  F
 1135 000B9 0               NIBHEX  0
 1136 000BA F               NIBHEX  F
 1137 000BB 0               NIBHEX  0
 1138 000BC F               NIBHEX  F
 1139 000BD 0               NIBHEX  0
 1140 000BE F               NIBHEX  F
 1141 000BF 0               NIBHEX  0
 1142 000C0 F               NIBHEX  F
 1143 000C1 0               NIBHEX  0
 1144 000C2 F               NIBHEX  F
 1145 000C3 0               NIBHEX  0
 1146 000C4 F               NIBHEX  F
 1147 000C5 0               NIBHEX  0
 1148 000C6 1               NIBHEX  1
 1149               * File  ISAform.s       45
 1150 000C7 1               NIBHEX  1
 1151 000C8 4               NIBHEX  4
 1152 000C9 B               NIBHEX  B
 1153 000CA 0               NIBHEX  0
 1154 000CB 2               NIBHEX  2
 1155 000CC 1               NIBHEX  1
 1156 000CD 1               NIBHEX  1
 1157 000CE 0               NIBHEX  0
 1158 000CF 0               NIBHEX  0
 1159 000D0 E               NIBHEX  E
 1160 000D1 0               NIBHEX  0
 1161 000D2 0               NIBHEX  0
 1162 000D3 3               NIBHEX  3
 1163 000D4 0               NIBHEX  0
 1164 000D5 0               NIBHEX  0
 1165 000D6 3               NIBHEX  3
 1166 000D7 8               NIBHEX  8
 1167 000D8 0               NIBHEX  0
 1168 000D9 1               NIBHEX  1
 1169 000DA D               NIBHEX  D
 1170 000DB 2               NIBHEX  2
 1171 000DC 0               NIBHEX  0
 1172 000DD F               NIBHEX  F
 1173 000DE 0               NIBHEX  0
 1174 000DF F               NIBHEX  F
 1175 000E0 0               NIBHEX  0
 1176 000E1 F               NIBHEX  F
 1177 000E2 0               NIBHEX  0
 1178 000E3 F               NIBHEX  F
 1179 000E4 0               NIBHEX  0
 1180 000E5 F               NIBHEX  F
 1181 000E6 0               NIBHEX  0
 1182 000E7 F               NIBHEX  F
 1183 000E8 0               NIBHEX  0
 1184 000E9 F               NIBHEX  F
 1185 000EA 0               NIBHEX  0
 1186 000EB F               NIBHEX  F
 1187 000EC 0               NIBHEX  0
 1188 000ED F               NIBHEX  F
 1189 000EE 0               NIBHEX  0
 1190 000EF F               NIBHEX  F
 1191 000F0 0               NIBHEX  0
 1192 000F1 1               NIBHEX  1
 1193               * File  ISAform.s       46
 1194 000F2 1               NIBHEX  1
 1195 000F3 4               NIBHEX  4
 1196 000F4 B               NIBHEX  B
 1197 000F5 0               NIBHEX  0
 1198 000F6 2               NIBHEX  2
 1199 000F7 1               NIBHEX  1
 1200 000F8 1               NIBHEX  1
 1201 000F9 0               NIBHEX  0
 1202 000FA 0               NIBHEX  0
 1203 000FB F               NIBHEX  F
 1204 000FC 4               NIBHEX  4
 1205 000FD 3               NIBHEX  3
 1206 000FE 0               NIBHEX  0
 1207 000FF 0               NIBHEX  0
 1208 00100 3               NIBHEX  3
 1209 00101 8               NIBHEX  8
 1210 00102 0               NIBHEX  0
 1211 00103 1               NIBHEX  1
 1212 00104 D               NIBHEX  D
 1213 00105 2               NIBHEX  2
 1214 00106 0               NIBHEX  0
 1215 00107 F               NIBHEX  F
 1216 00108 0               NIBHEX  0
 1217 00109 F               NIBHEX  F
 1218 0010A 0               NIBHEX  0
 1219 0010B F               NIBHEX  F
 1220 0010C 0               NIBHEX  0
 1221 0010D F               NIBHEX  F
 1222 0010E 0               NIBHEX  0
 1223 0010F F               NIBHEX  F
 1224 00110 0               NIBHEX  0
 1225 00111 F               NIBHEX  F
 1226 00112 0               NIBHEX  0
 1227 00113 F               NIBHEX  F
 1228 00114 0               NIBHEX  0
 1229 00115 F               NIBHEX  F
 1230 00116 0               NIBHEX  0
 1231 00117 F               NIBHEX  F
 1232 00118 0               NIBHEX  0
 1233 00119 F               NIBHEX  F
 1234 0011A 0               NIBHEX  0
 1235 0011B 1               NIBHEX  1
 1236               * File  ISAform.s       47
 1237 0011C 1               NIBHEX  1
 1238 0011D 4               NIBHEX  4
 1239 0011E B               NIBHEX  B
 1240 0011F 0               NIBHEX  0
 1241 00120 2               NIBHEX  2
 1242 00121 A               NIBHEX  A
 1243 00122 1               NIBHEX  1
 1244 00123 0               NIBHEX  0
 1245 00124 0               NIBHEX  0
 1246 00125 E               NIBHEX  E
 1247 00126 0               NIBHEX  0
 1248 00127 0               NIBHEX  0
 1249 00128 3               NIBHEX  3
 1250 00129 0               NIBHEX  0
 1251 0012A 0               NIBHEX  0
 1252 0012B 3               NIBHEX  3
 1253 0012C 8               NIBHEX  8
 1254 0012D 0               NIBHEX  0
 1255 0012E 1               NIBHEX  1
 1256 0012F D               NIBHEX  D
 1257 00130 2               NIBHEX  2
 1258 00131 0               NIBHEX  0
 1259 00132 F               NIBHEX  F
 1260 00133 0               NIBHEX  0
 1261 00134 F               NIBHEX  F
 1262 00135 0               NIBHEX  0
 1263 00136 F               NIBHEX  F
 1264 00137 0               NIBHEX  0
 1265 00138 F               NIBHEX  F
 1266 00139 0               NIBHEX  0
 1267 0013A F               NIBHEX  F
 1268 0013B 0               NIBHEX  0
 1269 0013C F               NIBHEX  F
 1270 0013D 0               NIBHEX  0
 1271 0013E F               NIBHEX  F
 1272 0013F 0               NIBHEX  0
 1273 00140 F               NIBHEX  F
 1274 00141 0               NIBHEX  0
 1275 00142 F               NIBHEX  F
 1276 00143 0               NIBHEX  0
 1277 00144 F               NIBHEX  F
 1278 00145 0               NIBHEX  0
 1279 00146 1               NIBHEX  1
 1280               * File  ISAform.s       48
 1281 00147 1               NIBHEX  1
 1282 00148 4               NIBHEX  4
 1283 00149 B               NIBHEX  B
 1284 0014A 0               NIBHEX  0
 1285 0014B 2               NIBHEX  2
 1286 0014C A               NIBHEX  A
 1287 0014D 1               NIBHEX  1
 1288 0014E 0               NIBHEX  0
 1289 0014F 0               NIBHEX  0
 1290 00150 F               NIBHEX  F
 1291 00151 4               NIBHEX  4
 1292 00152 3               NIBHEX  3
 1293 00153 0               NIBHEX  0
 1294 00154 0               NIBHEX  0
 1295 00155 3               NIBHEX  3
 1296 00156 8               NIBHEX  8
 1297 00157 0               NIBHEX  0
 1298 00158 1               NIBHEX  1
 1299 00159 D               NIBHEX  D
 1300 0015A 2               NIBHEX  2
 1301 0015B 0               NIBHEX  0
 1302 0015C F               NIBHEX  F
 1303 0015D 0               NIBHEX  0
 1304 0015E F               NIBHEX  F
 1305 0015F 0               NIBHEX  0
 1306 00160 F               NIBHEX  F
 1307 00161 0               NIBHEX  0
 1308 00162 F               NIBHEX  F
 1309 00163 0               NIBHEX  0
 1310 00164 F               NIBHEX  F
 1311 00165 0               NIBHEX  0
 1312 00166 F               NIBHEX  F
 1313 00167 0               NIBHEX  0
 1314 00168 F               NIBHEX  F
 1315 00169 0               NIBHEX  0
 1316 0016A F               NIBHEX  F
 1317 0016B 0               NIBHEX  0
 1318 0016C F               NIBHEX  F
 1319 0016D 0               NIBHEX  0
 1320 0016E F               NIBHEX  F
 1321 0016F 0               NIBHEX  0
 1322 00170 1               NIBHEX  1
 1323               * File  ISAform.s       49
 1324               * File  ISAform.s       50
 1325                       }
 1326 00171 00000           CON(5)  =DOFLASHP
 1327 00176 0000000         CON(7)  =^IsUncompressDataString
 1328               * Uncompress the string
 1329               * File  ISAform.s       51
 1330
 1331               * File  ISAform.s       52
 1332               * Labels graphic, string on the stack
 1333               * File  ISAform.s       53
 1334 0017D 00000           CON(5)  (=DOBINT)
 1335 00182 00000           CON(5)  (=ISAformMesBase)+0
 1336 00187 00000           CON(5)  (=BINT5)
 1337               * File  ISAform.s       54
 1338 0018C 00000           CON(5)  =DOFLASHP
 1339 00191 0000000         CON(7)  =^IfSetAllLabelsMessages
 1340               * File  ISAform.s       55
 1341
 1342               * File  ISAform.s       56
 1343               * Help strings, string on the stack
 1344               * File  ISAform.s       57
 1345 00198 00000           CON(5)  (=DOBINT)
 1346 0019D 00000           CON(5)  (=ISAformMesBase)+5
 1347 001A2 00000           CON(5)  (=BINT5)
 1348               * File  ISAform.s       58
 1349 001A7 00000           CON(5)  =DOFLASHP
 1350 001AC 0000000         CON(7)  =^IfSetAllHelpStrings
 1351               * File  ISAform.s       59
 1352
 1353               * File  ISAform.s       60
 1354               * Title string, string on the stack
 1355               * File  ISAform.s       61
 1356 001B3 00000           CON(5)  (=DOBINT)
 1357 001B8 00000           CON(5)  (=ISAformMesBase)+10
 1358               * File  ISAform.s       62
 1359 001BD 00000           CON(5)  =DOFLASHP
 1360 001C2 0000000         CON(7)  =^IfSetTitle
 1361               * File  ISAform.s       63
 1362
 1363               * File  ISAform.s       64
 1364               * Inform Box Message Handler
 1365               * File  ISAform.s       65
 1366 001C9 00000           CON(5)  ='DROPFALSE
 1367               * Inform Box Message Handler
 1368               * File  ISAform.s       66
 1369
 1370               * File  ISAform.s       67
 1371               * Field Definitions
 1372               * File  ISAform.s       68
 1373               * Field_PA definition
 1374               * File  ISAform.s       69
 1375 001CE 00000           CON(5)  ='
 1376 001D3 00000           CON(5)  =DOCOL
 1377               * Field Message Handler
 1378               * File  ISAform.s       70
 1379 001D8 00000           CON(5)  =FOUR
 1380 001DD 00000           CON(5)  =#=
 1381 001E2 00000           CON(5)  =case
 1382 001E7 00000           CON(5)  =DOCOL
 1383               * File  ISAform.s       71
 1384 001EC 00000           CON(5)  =DUPTYPEREAL?
 1385 001F1 00000           CON(5)  =case
 1386 001F6 00000           CON(5)  =DOCOL
 1387               * File  ISAform.s       72
 1388 001FB 00000           CON(5)  =DOCSTR
 1389 00200 90000           CON(5)  9
 1390 00205 6647            NIBASC  \ft\
 1391 00209 00000           CON(5)  =umEND
 1392               * File  ISAform.s       73
 1393 0020E 00000           CON(5)  =BINT3
 1394 00213 00000           CON(5)  =EXTN
 1395               * File  ISAform.s       74
 1396 00218 00000           CON(5)  =TRUE
 1397               * File  ISAform.s       75
 1398 0021D 00000           CON(5)  =SEMI
 1399               * File  ISAform.s       76
 1400 00222 00000           CON(5)  =TRUE
 1401               * File  ISAform.s       77
 1402 00227 00000           CON(5)  =SEMI
 1403               * File  ISAform.s       78
 1404 0022C 00000           CON(5)  =FALSE
 1405               * File  ISAform.s       79
 1406 00231 00000           CON(5)  =SEMI
 1407               * File  ISAform.s       80
 1408 00236 00000           CON(5)  =ONE
 1409               * Field Type
 1410               * File  ISAform.s       81
 1411 0023B 00000           CON(5)  =DOLIST
 1412 00240 00000           CON(5)  =ZERO
 1413 00245 00000           CON(5)  =THIRTEEN
 1414 0024A 00000           CON(5)  =SEMI
 1415               * Allowed Types
 1416               * File  ISAform.s       82
 1417 0024F 00000           CON(5)  =BINT2
 1418               * Decomp object
 1419               * File  ISAform.s       83
 1420 00254 00000           CON(5)  =MINUSONE
 1421               * No choose list
 1422               * File  ISAform.s       84
 1423 00259 00000           CON(5)  =MINUSONE
 1424               * No choose decomp
 1425               * File  ISAform.s       85
 1426 0025E 00000           CON(5)  =NOVAL
 1427               * Reset Value
 1428               * File  ISAform.s       86
 1429 00263 00000           CON(5)  =DOIDNT
 1430 00268 20              CON(2)  2
 1431 0026A 0514            NIBASC  \PA\
 1432               * Initial Value
 1433               * File  ISAform.s       87
 1434
 1435               * File  ISAform.s       88
 1436               * Field_T1 definition
 1437               * File  ISAform.s       89
 1438 0026E 00000           CON(5)  ='DROPFALSE
 1439               * Field Message Handler
 1440               * File  ISAform.s       90
 1441 00273 00000           CON(5)  =ONE
 1442               * Field Type
 1443               * File  ISAform.s       91
 1444 00278 00000           CON(5)  =DOLIST
 1445 0027D 00000           CON(5)  =ZERO
 1446 00282 00000           CON(5)  =THIRTEEN
 1447 00287 00000           CON(5)  =SEMI
 1448               * Allowed Types
 1449               * File  ISAform.s       92
 1450 0028C 00000           CON(5)  =BINT2
 1451               * Decomp object
 1452               * File  ISAform.s       93
 1453 00291 00000           CON(5)  =MINUSONE
 1454               * No choose list
 1455               * File  ISAform.s       94
 1456 00296 00000           CON(5)  =MINUSONE
 1457               * No choose decomp
 1458               * File  ISAform.s       95
 1459 0029B 00000           CON(5)  =MINUSONE
 1460               * Reset Value - defaulted
 1461               * File  ISAform.s       96
 1462 002A0 00000           CON(5)  =DOIDNT
 1463 002A5 20              CON(2)  2
 1464 002A7 4513            NIBASC  \T1\
 1465               * Initial Value
 1466               * File  ISAform.s       97
 1467
 1468               * File  ISAform.s       98
 1469               * Field_P1 definition
 1470               * File  ISAform.s       99
 1471 002AB 00000           CON(5)  ='DROPFALSE
 1472               * Field Message Handler
 1473               * File  ISAform.s       100
 1474 002B0 00000           CON(5)  =TWO
 1475               * Field Type
 1476               * File  ISAform.s       101
 1477 002B5 00000           CON(5)  =DOLIST
 1478 002BA 00000           CON(5)  =ZERO
 1479 002BF 00000           CON(5)  =THIRTEEN
 1480 002C4 00000           CON(5)  =SEMI
 1481               * Allowed Types
 1482               * File  ISAform.s       102
 1483 002C9 00000           CON(5)  =BINT34
 1484               * Decomp object
 1485               * File  ISAform.s       103
 1486 002CE 00000           CON(5)  =DOLIST
 1487 002D3 00000           CON(5)  (=DOBINT)
 1488 002D8 00000           CON(5)  (=ISAformMesBase)+11
 1489 002DD 00000           CON(5)  =DOREAL
 1490 002E2 000             NIBHEX  000
 1491 002E5 0000000         NIBHEX  000000000001
            00001
 1492 002F1 0               NIBHEX  0
 1493 002F2 00000           CON(5)  =SEMI
 1494               * Choose list
 1495               * File  ISAform.s       104
 1496
 1497               * File  ISAform.s       105
 1498 002F7 00000           CON(5)  =THIRTYTHREE
 1499               * Choose decomp
 1500               * File  ISAform.s       106
 1501 002FC 00000           CON(5)  =NOVAL
 1502               * Reset Value
 1503               * File  ISAform.s       107
 1504 00301 00000           CON(5)  =DOIDNT
 1505 00306 20              CON(2)  2
 1506 00308 0513            NIBASC  \P1\
 1507               * Initial Value
 1508               * File  ISAform.s       108
 1509
 1510               * File  ISAform.s       109
 1511               * Field_rho1 definition
 1512               * File  ISAform.s       110
 1513 0030C 00000           CON(5)  ='DROPFALSE
 1514               * Field Message Handler
 1515               * File  ISAform.s       111
 1516 00311 00000           CON(5)  =ONE
 1517               * Field Type
 1518               * File  ISAform.s       112
 1519 00316 00000           CON(5)  =DOLIST
 1520 0031B 00000           CON(5)  =THIRTEEN
 1521 00320 00000           CON(5)  =SEMI
 1522               * Allowed Types
 1523               * File  ISAform.s       113
 1524 00325 00000           CON(5)  =BINT2
 1525               * Decomp object
 1526               * File  ISAform.s       114
 1527 0032A 00000           CON(5)  =MINUSONE
 1528               * No choose list
 1529               * File  ISAform.s       115
 1530 0032F 00000           CON(5)  =MINUSONE
 1531               * No choose decomp
 1532               * File  ISAform.s       116
 1533 00334 00000           CON(5)  =MINUSONE
 1534               * Reset Value - defaulted
 1535               * File  ISAform.s       117
 1536 00339 00000           CON(5)  =DOIDNT
 1537 0033E 20              CON(2)  2
 1538 00340 79              CON(2)  #97
 1539 00342 13              NIBASC  \1\
 1540               * Initial Value
 1541               * File  ISAform.s       118
 1542
 1543               * File  ISAform.s       119
 1544               * Field_a1 definition
 1545               * File  ISAform.s       120
 1546 00344 00000           CON(5)  ='DROPFALSE
 1547               * Field Message Handler
 1548               * File  ISAform.s       121
 1549 00349 00000           CON(5)  =ONE
 1550               * Field Type
 1551               * File  ISAform.s       122
 1552 0034E 00000           CON(5)  =DOLIST
 1553 00353 00000           CON(5)  =THIRTEEN
 1554 00358 00000           CON(5)  =SEMI
 1555               * Allowed Types
 1556               * File  ISAform.s       123
 1557 0035D 00000           CON(5)  =BINT2
 1558               * Decomp object
 1559               * File  ISAform.s       124
 1560 00362 00000           CON(5)  =MINUSONE
 1561               * No choose list
 1562               * File  ISAform.s       125
 1563 00367 00000           CON(5)  =MINUSONE
 1564               * No choose decomp
 1565               * File  ISAform.s       126
 1566 0036C 00000           CON(5)  =MINUSONE
 1567               * Reset Value - defaulted
 1568               * File  ISAform.s       127
 1569 00371 00000           CON(5)  =DOIDNT
 1570 00376 20              CON(2)  2
 1571 00378 1413            NIBASC  \A1\
 1572               * Initial Value
 1573               * File  ISAform.s       128
 1574
 1575               * File  ISAform.s       129
 1576               * Group the Field Definitions in a List
 1577               * File  ISAform.s       130
 1578 0037C 00000           CON(5)  (=BINT40)
 1579               * File  ISAform.s       131
 1580 00381 00000           CON(5)  ={}N
 1581               * File  ISAform.s       132
 1582
 1583               * File  ISAform.s       133
 1584 00386 00000           CON(5)  =DOFLASHP
 1585 0038B 0000000         CON(7)  =^IfMain2
 1586               * File  ISAform.s       134
 1587
 1588               * File  ISAform.s       135
 1589 00392 00000           CON(5)  =SEMI
 1590               * end of form procedure
 1591               * File  ISAform.s       136
 1592
 1593               * File  ISAform.s       137
 1594               * File  ISAform.s       138
 1595               * % Count for the Message Table
 1596               * File  ISAform.s       139
 1597               * DCCP 12 ISAformMesBase
 1598               * File  ISAform.s       140
 1599               *
 1600               * File  ISAform.s       141
 1601
 1602               * File  ISAform.s       142
 1603               * Messages automatically copied by Inform Generator
 1604               * File  ISAform.s       143
 1605               * Messages added to the Library's Message Table
 1606               *  "PA:"
 1607               *  "T1:"
 1608               *  "P1:"
 1609               *  "\971:"
 1610               *  "a1:"
 1611               *  "PRESSURE ALTITUDE"
 1612               *  "STATIC AIR TEMP. (TRUE \B0C)"
 1613               *  "STATIC PRESSURE"
 1614               *  "DENSITY"
 1615               *  "SPEED OF SOUND"
 1616               *  " ISA "
 1617               *  "ONE"
 1618               * File  ISAform.s       156
 1619
 1620               * File  ISAform.s       157
 1621               * Internal Datas: Do not touch!
 1622               * File  ISAform.s       158
 1623               * l00000000020C001C00010000000500200049005300410020
 1624               * File  ISAform.s       159
 1625               * 0002000D000A
 1626               * File  ISAform.s       160
 1627               * 0002000D000A
 1628               * File  ISAform.s       161
 1629               * 0002000D000A
 1630               * File  ISAform.s       162
 1631               * f0020003801B8002000010008004600690065006C0064005F005000410008004600690065006C0064005F0050004100A7002
 1632               * File  ISAform.s       163
 1633               * S70020003A003A000D000A000900200020002000490066004D00730067004700650074004600690065006C006400560061006
 1634               * File  ISAform.s       164
 1635               * SC0075006500200023003D002000630061007300650020003A003A000D000A000900200020002000200020004400550050005
 1636               * File  ISAform.s       165
 1637               * S4005900500045005200450041004C003F002000630061007300650020003A003A000D000A000900200020002000200020002
 1638               * File  ISAform.s       166
 1639               * S00020002200660074002200200075006D0045004E0044000D000A0009000900090009000900090020002000420049004E005
 1640               * File  ISAform.s       167
 1641               * S400330020004500580054004E000D000A000900090009000900090009000900090054005200550045000D000A00090020002
 1642               * File  ISAform.s       168
 1643               * S0002000200020003B000D000A0009002000200020002000200054005200550045000D000A0009002000200020003B000D000
 1644               * File  ISAform.s       169
 1645               * SA000900090020002000460041004C00530045000D000A00200020003B000D000A0000000200300041000500420049004E005
 1646               * File  ISAform.s       170
 1647               * S4003200000003004F004E00450005004E004F00560041004C000500490044002000500041001100500052004500530053005
 1648               * File  ISAform.s       171
 1649               * S50052004500200041004C005400490054005500440045
 1650               * File  ISAform.s       172
 1651               * f0044003800B4002000010008004600690065006C0064005F005400310008004600690065006C0064005F005400310000000
 1652               * File  ISAform.s       173
 1653               * S0000200300041000500420049004E0054003200000003004F004E00450000000500490044002000540031001C00530054004
 1654               * File  ISAform.s       174
 1655               * S10054004900430020004100490052002000540045004D0050002E0020002800540052005500450020005C004200300043002
 1656               * File  ISAform.s       175
 1657               * S9
 1658               * File  ISAform.s       176
 1659               * f0044013C00B4002000010008004600690065006C0064005F005000310008004600690065006C0064005F005000310000000
 1660               * File  ISAform.s       177
 1661               * S1000200300041000600420049004E005400330034000F007B00200022004F004E0045002200200025002000310020007D000
 1662               * File  ISAform.s       178
 1663               * SD000A000B005400480049005200540059005400480052004500450007004E004F00560041004C000D000A000500490044002
 1664               * File  ISAform.s       179
 1665               * S000500031000F005300540041005400490043002000500052004500530053005500520045
 1666               * File  ISAform.s       180
 1667               * f0068003800B400200001000A004600690065006C0064005F00720068006F0031000A004600690065006C0064005F0072006
 1668               * File  ISAform.s       181
 1669               * S8006F00310000000000010041000500420049004E0054003200000003004F004E004500000007004900440020005C0039003
 1670               * File  ISAform.s       182
 1671               * S70031000700440045004E0053004900540059
 1672               * File  ISAform.s       183
 1673               * f0068013C00B4002000010008004600690065006C0064005F006100310008004600690065006C0064005F006100310000000
 1674               * File  ISAform.s       184
 1675               * S000010041000500420049004E0054003200000003004F004E00450000000500490044002000410031000E005300500045004
 1676               * File  ISAform.s       185
 1677               * S500440020004F004600200053004F0055004E0044
 1678               * File  ISAform.s       186
 1679               * l002400040034001800010008004C006100620065006C005F00500041000300500041003A
 1680               * File  ISAform.s       187
 1681               * l004800040034001800010008004C006100620065006C005F00540031000300540031003A
 1682               * File  ISAform.s       188
 1683               * l004801080034001800010008004C006100620065006C005F00500031000300500031003A
 1684               * File  ISAform.s       189
 1685               * l006C0004003400180001000A004C006100620065006C005F00720068006F00310005005C003900370031003A
 1686               * File  ISAform.s       190
 1687               * l006C01080034001800010008004C006100620065006C005F00610031000300610031003A
 1688               * File  ISAform.s       191
 1689               * 0002000D000A
 1690               * File  ISAform.s       192
 1691               * 0002000D000A
 1692               * File  ISAform.s       193
 1693               * 000900440061006E002000500069007400690063
 1694               * File  ISAform.s       194
 1695               * 00070049005300410066006F0072006D
 1696               * File  ISAform.s       195
 1697               * 00040046004600460046
 1698               * File  ISAform.s       196
 1699               *
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAform.a      Page    2

 #=                                Ext                   -  1380
 '                                 Ext                   -  1375
 'DROPFALSE                        Ext                   -  1366  1438  1471
                                        1513  1546
 AddressesCLEBit                   Abs       0 #00000000 -   783
 AddressesCLEFl                    Abs      89 #00000059 -   781   782   783
 AddressesCLENib                   Abs      22 #00000016 -   782
 AlarmBeepBit                      Abs       0 #00000000 -   170
 AlarmBeepFl                       Abs      57 #00000039 -   158   169   170
 AlarmBeepNib                      Abs      14 #0000000E -   169
 AlgebraicModeBit                  Abs       2 #00000002 -   801
 AlgebraicModeFl                   Abs      95 #0000005F -   799   800   801
 AlgebraicModeNib                  Abs      23 #00000017 -   800
 AngleBCt                          Abs       2 #00000002 -   121
 AngleBit1                         Abs       0 #00000000 -   173   174
 AngleBit2                         Abs       1 #00000001 -   174
 AngleFl1                          Abs      17 #00000011 -   120   172   173
 AngleNib                          Abs       4 #00000004 -   172
 ArrayOnlyBit                      Abs       2 #00000002 -   789
 ArrayOnlyFl                       Abs      91 #0000005B -   787   788   789
 ArrayOnlyNib                      Abs      22 #00000016 -   788
 AutoSaveBit                       Abs       1 #00000001 -   798
 AutoSaveFl                        Abs      94 #0000005E -   796   797   798
 AutoSaveNib                       Abs      23 #00000017 -   797
 BINT2                             Ext                   -  1417  1450  1524
                                        1557
 BINT3                             Ext                   -  1393
 BINT34                            Ext                   -  1483
 BINT40                            Ext                   -  1578
 BINT5                             Ext                   -  1336  1347
 BigFontCmdBit                     Abs       0 #00000000 -   735
 BigFontCmdFl                      Abs      73 #00000049 -   733   734   735
 BigFontCmdNib                     Abs      18 #00000012 -   734
 BigFontStackBit                   Abs       3 #00000003 -   732
 BigFontStackFl                    Abs      72 #00000048 -   730   731   732
 BigFontStackNib                   Abs      17 #00000011 -   731
 BinBaseBCt                        Abs       2 #00000002 -   116
 BinBaseBit1                       Abs       2 #00000002 -   177
 BinBaseFl1                        Abs      11 #0000000B -   115   176   177
 BinBaseNib                        Abs       2 #00000002 -   176
 BinWordSBCt                       Abs       6 #00000006 -   114
 BinWordSBit1                      Abs       0 #00000000 -   180
 BinWordSFl1                       Abs       5 #00000005 -   113   179   180
 BinWordSNib                       Abs       1 #00000001 -   179
 CarefulBit                        Abs       3 #00000003 -   183
 CarefulFl                         Abs       4 #00000004 -   111   182   183
 CarefulNib                        Abs       0 #00000000 -   182
 ClockFmtBit                       Abs       0 #00000000 -   186
 ClockFmtFl                        Abs      41 #00000029 -   143   185   186
 ClockFmtNib                       Abs      10 #0000000A -   185
 ClockOnBit                        Abs       3 #00000003 -   189
 ClockOnFl                         Abs      40 #00000028 -   142   188   189
 ClockOnNib                        Abs       9 #00000009 -   188
 CmdAutoIndentBit                  Abs       3 #00000003 -   720
 CmdAutoIndentFl                   Abs      68 #00000044 -   718   719   720
 CmdAutoIndentNib                  Abs      16 #00000010 -   719
 ComVecDiBCt                       Abs       2 #00000002 -   119
 ComVecDiBit1                      Abs       2 #00000002 -   195
 ComVecDiFl1                       Abs      15 #0000000F -   118   194   195
 ComVecDiNib                       Abs       3 #00000003 -   194
 Complex2DBit                      Abs       2 #00000002 -   192
 Complex2DFl                       Abs      19 #00000013 -   122   191   192
 Complex2DNib                      Abs       4 #00000004 -   191
 ComplexBit                        Abs       2 #00000002 -   815
 ComplexFl                         Abs     103 #00000067 -   813   814   815
 ComplexNib                        Abs      25 #00000019 -   814
 ConnectPtBit                      Abs       2 #00000002 -   198
 ConnectPtFl                       Abs      31 #0000001F -   132   197   198
 ConnectPtNib                      Abs       7 #00000007 -   197
 ConstantsBit                      Abs       1 #00000001 -   201
 ConstantsFl                       Abs       2 #00000002 -   109   200   201
 ConstantsNib                      Abs       0 #00000000 -   200
 DOBINT                            Ext                   -  1334  1345  1356
                                        1487
 DOCOL                             Ext                   -   953  1376  1382
                                        1386
 DOCSTR                            Ext                   -   958  1388
 DOFLASHP                          Ext                   -  1326  1338  1349
                                        1359  1584
 DOIDNT                            Ext                   -  1429  1462  1504
                                        1536  1569
 DOLIST                            Ext                   -  1411  1444  1477
                                        1486  1519  1552
 DOREAL                            Ext                   -  1489
 DUPTYPEREAL?                      Ext                   -  1384
 DateFmtBit                        Abs       1 #00000001 -   204
 DateFmtFl                         Abs      42 #0000002A -   144   203   204
 DateFmtNib                        Abs      10 #0000000A -   203
 DblSpaceBit                       Abs       0 #00000000 -   207
 DblSpaceFl                        Abs      37 #00000025 -   138   206   207
 DblSpaceNib                       Abs       9 #00000009 -   206
 DefSysF32-01                      Abs67178480 #04010FF0 -    33
 DefSysF64-33                      Abs       0 #00000000 -    32
 DefSysF65-96                      Abs1107296256 #42000000 -    34
 DefSysF97-128                     Abs       0 #00000000 -    35
 DelNRAlmBit                       Abs       3 #00000003 -   210
 DelNRAlmFl                        Abs      44 #0000002C -   146   209   210
 DelNRAlmNib                       Abs      10 #0000000A -   209
 DesasmWithAdrBit                  Abs       2 #00000002 -   729
 DesasmWithAdrFl                   Abs      71 #00000047 -   727   728   729
 DesasmWithAdrNib                  Abs      17 #00000011 -   728
 DigitalClockBit                   Abs       2 #00000002 -   717
 DigitalClockFl                    Abs      67 #00000043 -   715   716   717
 DigitalClockNib                   Abs      16 #00000010 -   716
 EXTN                              Ext                   -  1394
 ErableHeaderBit                   Abs       0 #00000000 -   795
 ErableHeaderFl                    Abs      93 #0000005D -   793   794   795
 ErableHeaderNib                   Abs      23 #00000017 -   794
 ErrorBeepBit                      Abs       3 #00000003 -   213
 ErrorBeepFl                       Abs      56 #00000038 -   157   212   213
 ErrorBeepNib                      Abs      13 #0000000D -   212
 ExactModeBit                      Abs       0 #00000000 -   820
 ExactModeFl                       Abs     105 #00000069 -   818   819   820
 ExactModeNib                      Abs      26 #0000001A -   819
 FALSE                             Ext                   -  1404
 FOUR                              Ext                   -  1379
 FastEViewBit                      Abs       2 #00000002 -   216
 FastEViewNib                      Abs      14 #0000000E -   215
 FastEqViewFl                      Abs      59 #0000003B -   160   215   216
 FilerConfirmBit                   Abs       0 #00000000 -   747
 FilerConfirmFl                    Abs      77 #0000004D -   745   746   747
 FilerConfirmNib                   Abs      19 #00000013 -   746
 FilerConfirmationBit              Abs       3 #00000003 -   744
 FilerConfirmationFl               Abs      76 #0000004C -   742   743   744
 FilerConfirmationNib              Abs      18 #00000012 -   743
 FullScreenEditBit                 Abs       0 #00000000 -   723
 FullScreenEditFl                  Abs      69 #00000045 -   721   722   723
 FullScreenEditNib                 Abs      17 #00000011 -   722
 FunctPlotBit                      Abs       1 #00000001 -   219
 FunctPlotFl                       Abs      30 #0000001E -   131   218   219
 FunctPlotNib                      Abs       7 #00000007 -   218
 GCursorBit                        Abs       3 #00000003 -   222
 GCursorFl                         Abs      32 #00000020 -   133   221   222
 GCursorNib                        Abs       7 #00000007 -   221
 GrobDisplayBit                    Abs       2 #00000002 -   765
 GrobDisplayFl                     Abs      83 #00000053 -   763   764   765
 GrobDisplayNib                    Abs      20 #00000014 -   764
 IODataFmtBit                      Abs       2 #00000002 -   234
 IODataFmtFl                       Abs      35 #00000023 -   136   233   234
 IODataFmtNib                      Abs       8 #00000008 -   233
 IODeviceBit                       Abs       0 #00000000 -   237
 IODeviceFl                        Abs      33 #00000021 -   134   236   237
 IODeviceNib                       Abs       8 #00000008 -   236
=ISAform                           Rel       0 #00000000 -   951
 ISAformMesBase                    Ext                   -  1335  1346  1357
                                        1488
 IndexWrapBit                      Abs       3 #00000003 -   225
 IndexWrapFl                       Abs      64 #00000040 -   165   224   225
 IndexWrapNib                      Abs      15 #0000000F -   224
 InfResActBit                      Abs       1 #00000001 -   228
 InfResActFl                       Abs      22 #00000016 -   125   227   228
 InfResActNib                      Abs       5 #00000005 -   227
 InfResultBit                      Abs       1 #00000001 -   231
 InfResultFl                       Abs      26 #0000001A -   129   230   231
 InfResultNib                      Abs       6 #00000006 -   230
 KernelParamBit                    Abs       1 #00000001 -   750
 KernelParamFl                     Abs      78 #0000004E -   748   749   750
 KernelParamNib                    Abs      19 #00000013 -   749
 KeystrokeBeepBit                  Abs       2 #00000002 -   741
 KeystrokeBeepFl                   Abs      75 #0000004B -   739   740   741
 KeystrokeBeepNib                  Abs      18 #00000012 -   740
 LastArgsBit                       Abs       2 #00000002 -   240
 LastArgsFl                        Abs      55 #00000037 -   156   239   240
 LastArgsNib                       Abs      13 #0000000D -   239
 MASDDecompilerBit                 Abs       1 #00000001 -   774
 MASDDecompilerFl                  Abs      86 #00000056 -   772   773   774
 MASDDecompilerNib                 Abs      21 #00000015 -   773
 MINUSONE                          Ext                   -  1420  1423  1453
                                        1456  1459  1527  1530  1533  1560  1563
                                        1566
 MKSmallFontMenuBit                Abs       3 #00000003 -   768
 MKSmallFontMenuFl                 Abs      84 #00000054 -   766   767   768
 MKSmallFontMenuNib                Abs      20 #00000014 -   767
 MLMASDModeBit                     Abs       3 #00000003 -   792
 MLMASDModeFl                      Abs      92 #0000005C -   790   791   792
 MLMASDModeNib                     Abs      22 #00000016 -   791
 MenuOnBit                         Abs       3 #00000003 -   804
 MenuOnFl                          Abs      96 #00000060 -   802   803   804
 MenuOnNib                         Abs      23 #00000017 -   803
 MultiDispBit                      Abs       3 #00000003 -   246
 MultiDispFl                       Abs      52 #00000034 -   153   245   246
 MultiDispNib                      Abs      12 #0000000C -   245
 MultiLine2GROBBit                 Abs       1 #00000001 -   726
 MultiLine2GROBFl                  Abs      70 #00000046 -   724   725   726
 MultiLine2GROBNib                 Abs      17 #00000011 -   725
 MultiLineBit                      Abs       0 #00000000 -   711
 MultiLineFl                       Abs      65 #00000041 -   709   710   711
 MultiLineNib                      Abs      16 #00000010 -   710
 MultiLineStringsBit               Abs       1 #00000001 -   714
 MultiLineStringsFl                Abs      66 #00000042 -   712   713   714
 MultiLineStringsNib               Abs      16 #00000010 -   713
 NOVAL                             Ext                   -  1426  1501
 NoAutoCRBit                       Abs       1 #00000001 -   249
 NoAutoCRFl                        Abs      38 #00000026 -   139   248   249
 NoAutoCRNib                       Abs       9 #00000009 -   248
 NoIOStMsgBit                      Abs       2 #00000002 -   252
 NoIOStMsgNib                      Abs       9 #00000009 -   251
 NoIOStsMsgFl                      Abs      39 #00000027 -   140   251   252
 NoParseBit                        Abs       2 #00000002 -   255
 NoParseFl                         Abs      63 #0000003F -   164   254   255
 NoParseNib                        Abs      15 #0000000F -   254
 NumDigsBCt                        Abs       4 #00000004 -   149
 NumDigsBit1                       Abs       0 #00000000 -   258
 NumDigsFl1                        Abs      45 #0000002D -   148   257   258
 NumDigsNib                        Abs      11 #0000000B -   257
 NumDispBCt                        Abs       2 #00000002 -   151
 NumDispBit1                       Abs       0 #00000000 -   261
 NumDispFl1                        Abs      49 #00000031 -   150   260   261
 NumDispNib                        Abs      12 #0000000C -   260
 ONE                               Ext                   -  1408  1441  1516
                                        1549
 OverfActBit                       Abs       0 #00000000 -   264
 OverfActFl                        Abs      21 #00000015 -   124   263   264
 OverfActNib                       Abs       5 #00000005 -   263
 OverflowBit                       Abs       0 #00000000 -   267
 OverflowFl                        Abs      25 #00000019 -   128   266   267
 OverflowNib                       Abs       6 #00000006 -   266
 OverwriteBit                      Abs       3 #00000003 -   270
 OverwriteFl                       Abs      36 #00000024 -   137   269   270
 OverwriteNib                      Abs       8 #00000008 -   269
 PrettyPrintBit                    Abs       2 #00000002 -   753
 PrettyPrintFl                     Abs      79 #0000004F -   751   752   753
 PrettyPrintNib                    Abs      19 #00000013 -   752
 PrintDevBit                       Abs       1 #00000001 -   273
 PrintDevFl                        Abs      34 #00000022 -   135   272   273
 PrintDevNib                       Abs       8 #00000008 -   272
 RadixBit                          Abs       2 #00000002 -   276
 RadixFl                           Abs      51 #00000033 -   152   275   276
 RadixNib                          Abs      12 #0000000C -   275
 RecursiveEditBit                  Abs       3 #00000003 -   780
 RecursiveEditFl                   Abs      88 #00000058 -   778   779   780
 RecursiveEditNib                  Abs      21 #00000015 -   779
 RecursiveStackBit                 Abs       2 #00000002 -   777
 RecursiveStackFl                  Abs      87 #00000057 -   775   776   777
 RecursiveStackNib                 Abs      21 #00000015 -   776
 ResRepAlmBit                      Abs       2 #00000002 -   279
 ResRepAlmFl                       Abs      43 #0000002B -   145   278   279
 ResRepAlmNib                      Abs      10 #0000000A -   278
 ResultsBit                        Abs       2 #00000002 -   282
 ResultsFl                         Abs       3 #00000003 -   110   281   282
 ResultsNib                        Abs       0 #00000000 -   281
 RightJustifiedStackBit            Abs       1 #00000001 -   738
 RightJustifiedStackFl             Abs      74 #0000004A -   736   737   738
 RightJustifiedStackNib            Abs      18 #00000012 -   737
=RomId                             Abs     806 #00000326 -   921
 SEMI                              Ext                   -  1398  1402  1406
                                        1414  1447  1480  1493  1521  1554  1589
 ShowPrecBit                       Abs       0 #00000000 -   285
 ShowPrecFl                        Abs      53 #00000035 -   154   284   285
 ShowPrecNib                       Abs      13 #0000000D -   284
 SmallFontChooseBit                Abs       1 #00000001 -   786
 SmallFontChooseFl                 Abs      90 #0000005A -   784   785   786
 SmallFontChooseNib                Abs      22 #00000016 -   785
 SmallFontEQWEditBit               Abs       1 #00000001 -   762
 SmallFontEQWEditFl                Abs      82 #00000052 -   760   761   762
 SmallFontEQWEditNib               Abs      20 #00000014 -   761
 SmallFontEQWGrobBit               Abs       0 #00000000 -   759
 SmallFontEQWGrobFl                Abs      81 #00000051 -   757   758   759
 SmallFontEQWGrobNib               Abs      20 #00000014 -   758
 SmallFontEQWStackBit              Abs       3 #00000003 -   756
 SmallFontEQWStackFl               Abs      80 #00000050 -   754   755   756
 SmallFontEQWStackNib              Abs      19 #00000013 -   755
 SolutionsBit                      Abs       0 #00000000 -   288
 SolutionsFl                       Abs       1 #00000001 -   108   287   288
 SolutionsNib                      Abs       0 #00000000 -   287
 SystemRPLStackBit                 Abs       0 #00000000 -   771
 SystemRPLStackFl                  Abs      85 #00000055 -   769   770   771
 SystemRPLStackNib                 Abs      21 #00000015 -   770
 THIRTEEN                          Ext                   -  1413  1446  1479
                                        1520  1553
 THIRTYTHREE                       Ext                   -  1498
 TRUE                              Ext                   -  1396  1400
 TWO                               Ext                   -  1474
 TriAlphaBit                       Abs       3 #00000003 -   291
 TriAlphaFl                        Abs      60 #0000003C -   161   290   291
 TriAlphaNib                       Abs      14 #0000000E -   290
 TriUserBit                        Abs       0 #00000000 -   294
 TriUserFl                         Abs      61 #0000003D -   162   293   294
 TriUserNib                        Abs      15 #0000000F -   293
 UnderfActBit                      Abs       3 #00000003 -   297
 UnderfActFl                       Abs      20 #00000014 -   123   296   297
 UnderfActNib                      Abs       4 #00000004 -   296
 UnderfNegBit                      Abs       2 #00000002 -   300
 UnderfNegFl                       Abs      23 #00000017 -   126   299   300
 UnderfNegNib                      Abs       5 #00000005 -   299
 UnderfPosBit                      Abs       3 #00000003 -   303
 UnderfPosFl                       Abs      24 #00000018 -   127   302   303
 UnderfPosNib                      Abs       5 #00000005 -   302
 UserKeysBit                       Abs       1 #00000001 -   306
 UserKeysFl                        Abs      62 #0000003E -   163   305   306
 UserKeysNib                       Abs      15 #0000000F -   305
 VerboseBit                        Abs       1 #00000001 -   243
 VerboseFl                         Abs      58 #0000003A -   159   242   243
 VerboseNib                        Abs      14 #0000000E -   242
 VerticalListBit                   Abs       0 #00000000 -   807
 VerticalListFl                    Abs      97 #00000061 -   805   806   807
 VerticalListNib                   Abs      24 #00000018 -   806
 VerticalVectorBit                 Abs       1 #00000001 -   810
 VerticalVectorFl                  Abs      98 #00000062 -   808   809   810
 VerticalVectorNib                 Abs      24 #00000018 -   809
 ZERO                              Ext                   -  1412  1445  1478
 ^IfMain2                          Ext                   -  1585
 ^IfSetAllHelpStrings              Ext                   -  1350
 ^IfSetAllLabelsMessages           Ext                   -  1339
 ^IfSetTitle                       Ext                   -  1360
 ^IsUncompressDataString           Ext                   -  1327
 case                              Ext                   -  1381  1385
 hasALIAS                          Abs       2 #00000002 -   319
 hasCOLCT                          Abs       2 #00000002 -   325
 hasDER                            Abs       8 #00000008 -   323
 hasEXPND                          Abs       1 #00000001 -   326
 hasFORM                           Abs       8 #00000008 -   329
 hasHELP                           Abs       4 #00000004 -   317
 hasINTG                           Abs       4 #00000004 -   330
 hasINV                            Abs       4 #00000004 -   324
 hasPDATA                          Abs       1 #00000001 -   320
 hasPROMPTM                        Abs       4 #00000004 -   318
 hasVUNS                           Abs       1 #00000001 -   332
 hasWHERE                          Abs       2 #00000002 -   331
 lBlcB20                           Rel     369 #00000171 -  1325
 lBloB10                           Rel      15 #0000000F -   959
 lBloB10s                          Rel     369 #00000171 -  1325  1325   959
 nonALG                            Abs       8 #00000008 -   316
 pdCM                              Abs       6 #00000006 -   341
 pdEQ                              Abs       7 #00000007 -   342
 pdEX                              Abs       0 #00000000 -   335
 pdLP                              Abs       4 #00000004 -   339
 pdOP                              Abs       1 #00000001 -   336
 pdOS0                             Abs       8 #00000008 -   343
 pdOS1                             Abs       9 #00000009 -   344
 pdOS2                             Abs      10 #0000000A -   345
 pdOS3                             Abs      11 #0000000B -   346
 pdOS4                             Abs      12 #0000000C -   347
 pdOS5                             Abs      13 #0000000D -   348
 pdOS6                             Abs      14 #0000000E -   349
 pdOS7                             Abs      15 #0000000F -   350
 pdQE                              Abs       2 #00000002 -   337
 pdQN                              Abs       3 #00000003 -   338
 pdRP                              Abs       5 #00000005 -   340
 umEND                             Ext                   -  1391
 {}N                               Ext                   -  1580
Saturn Assembler                                       Wed Apr 22 13:56:40 2009
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
