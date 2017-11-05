Saturn Assembler                                       Thu Jun 25 21:47:10 2009
V3.0.9 (04/15/2007)                                      OutptOutbndFor Page    1

    1             * File  OutptOutbndForm.s       1
    2             * RPL
    3             * File  OutptOutbndForm.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\OutptOutbndForm.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5             **********************************************************************
    6             * NAME:          OutptOutbndForm
    7             * LIBRARY #:     325h = 805d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.4
   10             * DATE:          25 June 2009
   11             * COMPATIBILITY: HP50
   12             *                HP48  ( Must use DoInputForm )
   13             * DESCRIPTION:   Creates and displays the form to display the OUTPUT
   14             *                results for the OUTBOUND leg of the library
   15             *                application.
   16             *
   17             * File  OutptOutbndForm.s       15
   18             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROAAB48\ROAAB48.h
   19
   20             =RomId  EQU     #325
   21             * ROMID set to 325
   22
   23
   24
   25
   26
   27
   28
   29             *|| Resuming file OutptOutbndForm.s at line 15
   30             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
   31
   32
   33             * RPL
   34             * insure RPL-mode exit
   35
   36             * ( Rad
   37
   38             * ( %2PI
   39             * ( %PI/24
   40
   41
   42
   43
   44             * ( 1=1Var, 2=2Var Statistic
   45             * ( 1=Histogram, 2=BoxWhisker
   46
   47
   48
   49
   50
   51             * ASSEMBLE
   52             DefSysF64-33 EQU        #00000000
   53             DefSysF32-01 EQU        #04010FF0
   54             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   55             DefSysF97-128 EQU       #00000000
   56
   57             * RPL
   58
   59
   60             * ( solution mode
   61             * ( constants mode
   62             * ( results mode
   63             * ( careful evaluation mode
   64
   65             * ( binary integer wordsize
   66             * must start on nibble boundary
   67             * ( binary integer base
   68             * must follow "fnBinWordS6"
   69
   70             * ( financial BEGIN/END mode
   71             * ( complex number and vector
   72             * mode
   73             * ( angle mode
   74             * must start on a nibble boundary
   75             * ( complex 2D mode
   76             * ( underflow action
   77             * ( overflow action
   78             * ( infinite result action
   79             * ( underflow-negative indicator
   80             * ( underflow-positive indicator
   81             * ( overflow indicator
   82             * ( infinite result indicator
   83             * ( symbolic-comples decompilation
   84             * ( simultaneous plot mode
   85             * ( axis drawing plot mode
   86
   87             * ( connect points mode
   88             * ( graphics cursor type mode
   89             * ( I/O device
   90             * ( print device
   91             * ( I/O data format
   92             * ( variable overwrite mode
   93             * ( double-space print mode
   94             * ( suppress auto CR mode
   95             * ( suppress I/O status messages
   96
   97
   98             * ( clock display mode
   99             * ( clock display format
  100             * ( date format
  101             * ( reschedule unacknowledged
  102             * repeat alarms mode
  103             * ( delete acknowledged non-repeat
  104             * alarms mode
  105
  106             * ( number of decimal digits
  107             * must start on nibble boundary
  108             * ( number display format
  109             * must start on nibble boundary
  110             * ( radix mark
  111             * ( multi-line display mode
  112             * ( show precedence mode
  113             * ( zero out tiny matrix elements
  114
  115             * ( last arguments mode
  116             * ( error beep mode
  117             * ( alarm beep mode
  118             * ( verbose display mode
  119             * ( variable name only mode
  120             * ( 3-way alpha mode
  121             * ( 3-way user keys mode
  122             * ( user keys mode
  123             * ( special parser mode
  124             * ( index wraparound indicator
  125
  126
  127             * ASSEMBLE
  128             SolutionsFl  EQU 1
  129             ConstantsFl  EQU 2
  130             ResultsFl    EQU 3
  131             CarefulFl    EQU 4
  132
  133             BinWordSFl1  EQU 5      must start on a nibble boundary
  134             BinWordSBCt  EQU 6      number of bits
  135             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  136             BinBaseBCt   EQU 2      number of bits
  137
  138             ComVecDiFl1  EQU 15
  139             ComVecDiBCt  EQU 2      number of bits
  140             AngleFl1     EQU 17     must start on a nibble boundary
  141             AngleBCt     EQU 2      number of bits
  142             Complex2DFl  EQU 19
  143             UnderfActFl  EQU 20
  144             OverfActFl   EQU 21
  145             InfResActFl  EQU 22
  146             UnderfNegFl  EQU 23
  147             UnderfPosFl  EQU 24
  148             OverflowFl   EQU 25
  149             InfResultFl  EQU 26
  150
  151             FunctPlotFl  EQU 30
  152             ConnectPtFl  EQU 31
  153             GCursorFl    EQU 32
  154             IODeviceFl   EQU 33
  155             PrintDevFl   EQU 34
  156             IODataFmtFl  EQU 35
  157             OverwriteFl  EQU 36
  158             DblSpaceFl   EQU 37
  159             NoAutoCRFl   EQU 38
  160             NoIOStsMsgFl EQU 39
  161
  162             ClockOnFl    EQU 40
  163             ClockFmtFl   EQU 41
  164             DateFmtFl    EQU 42
  165             ResRepAlmFl  EQU 43
  166             DelNRAlmFl   EQU 44
  167
  168             NumDigsFl1   EQU 45     must start on a nibble boundary
  169             NumDigsBCt   EQU 4      number of bits
  170             NumDispFl1   EQU 49     must start on a nibble boundary
  171             NumDispBCt   EQU 2      number of bits
  172             RadixFl      EQU 51
  173             MultiDispFl  EQU 52
  174             ShowPrecFl   EQU 53
  175
  176             LastArgsFl   EQU 55
  177             ErrorBeepFl  EQU 56
  178             AlarmBeepFl  EQU 57
  179             VerboseFl    EQU 58
  180             FastEqViewFl EQU 59
  181             TriAlphaFl   EQU 60
  182             TriUserFl    EQU 61
  183             UserKeysFl   EQU 62
  184             NoParseFl    EQU 63
  185             IndexWrapFl  EQU 64
  186
  187
  188
  189             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  190             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  191
  192             AngleNib     EQU ((AngleFl1)-1)/4
  193             AngleBit1    EQU ((AngleFl1)-1)%4
  194             AngleBit2    EQU (AngleBit1)+1
  195
  196             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  197             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  198
  199             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  200             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  201
  202             CarefulNib   EQU ((CarefulFl)-1)/4
  203             CarefulBit   EQU ((CarefulFl)-1)%4
  204
  205             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  206             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  207
  208             ClockOnNib   EQU ((ClockOnFl)-1)/4
  209             ClockOnBit   EQU ((ClockOnFl)-1)%4
  210
  211             Complex2DNib EQU ((Complex2DFl)-1)/4
  212             Complex2DBit EQU ((Complex2DFl)-1)%4
  213
  214             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  215             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  216
  217             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  218             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  219
  220             ConstantsNib EQU ((ConstantsFl)-1)/4
  221             ConstantsBit EQU ((ConstantsFl)-1)%4
  222
  223             DateFmtNib   EQU ((DateFmtFl)-1)/4
  224             DateFmtBit   EQU ((DateFmtFl)-1)%4
  225
  226             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  227             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  228
  229             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  230             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  231
  232             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  233             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  234
  235             FastEViewNib EQU ((FastEqViewFl)-1)/4
  236             FastEViewBit EQU ((FastEqViewFl)-1)%4
  237
  238             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  239             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  240
  241             GCursorNib   EQU ((GCursorFl)-1)/4
  242             GCursorBit   EQU ((GCursorFl)-1)%4
  243
  244             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  245             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  246
  247             InfResActNib EQU ((InfResActFl)-1)/4
  248             InfResActBit EQU ((InfResActFl)-1)%4
  249
  250             InfResultNib EQU ((InfResultFl)-1)/4
  251             InfResultBit EQU ((InfResultFl)-1)%4
  252
  253             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  254             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  255
  256             IODeviceNib  EQU ((IODeviceFl)-1)/4
  257             IODeviceBit  EQU ((IODeviceFl)-1)%4
  258
  259             LastArgsNib  EQU ((LastArgsFl)-1)/4
  260             LastArgsBit  EQU ((LastArgsFl)-1)%4
  261
  262             VerboseNib   EQU ((VerboseFl)-1)/4
  263             VerboseBit   EQU ((VerboseFl)-1)%4
  264
  265             MultiDispNib EQU ((MultiDispFl)-1)/4
  266             MultiDispBit EQU ((MultiDispFl)-1)%4
  267
  268             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  269             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  270
  271             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  272             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  273
  274             NoParseNib   EQU ((NoParseFl)-1)/4
  275             NoParseBit   EQU ((NoParseFl)-1)%4
  276
  277             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  278             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  279
  280             NumDispNib   EQU ((NumDispFl1)-1)/4
  281             NumDispBit1  EQU ((NumDispFl1)-1)%4
  282
  283             OverfActNib  EQU ((OverfActFl)-1)/4
  284             OverfActBit  EQU ((OverfActFl)-1)%4
  285
  286             OverflowNib  EQU ((OverflowFl)-1)/4
  287             OverflowBit  EQU ((OverflowFl)-1)%4
  288
  289             OverwriteNib EQU ((OverwriteFl)-1)/4
  290             OverwriteBit EQU ((OverwriteFl)-1)%4
  291
  292             PrintDevNib  EQU ((PrintDevFl)-1)/4
  293             PrintDevBit  EQU ((PrintDevFl)-1)%4
  294
  295             RadixNib     EQU ((RadixFl)-1)/4
  296             RadixBit     EQU ((RadixFl)-1)%4
  297
  298             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  299             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  300
  301             ResultsNib   EQU ((ResultsFl)-1)/4
  302             ResultsBit   EQU ((ResultsFl)-1)%4
  303
  304             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  305             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  306
  307             SolutionsNib EQU ((SolutionsFl)-1)/4
  308             SolutionsBit EQU ((SolutionsFl)-1)%4
  309
  310             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  311             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  312
  313             TriUserNib   EQU ((TriUserFl)-1)/4
  314             TriUserBit   EQU ((TriUserFl)-1)%4
  315
  316             UnderfActNib EQU ((UnderfActFl)-1)/4
  317             UnderfActBit EQU ((UnderfActFl)-1)%4
  318
  319             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  320             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  321
  322             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  323             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  324
  325             UserKeysNib  EQU ((UserKeysFl)-1)/4
  326             UserKeysBit  EQU ((UserKeysFl)-1)%4
  327
  328             * RPL
  329             * RPL
  330             * insure RPL-mode exit
  331
  332
  333             * ASSEMBLE
  334
  335
  336             nonALG EQU 8                    not-allowed-in-algebraics flag
  337             hasHELP EQU 4                   has-help-data flag
  338             hasPROMPTM EQU 4                same as above
  339             hasALIAS EQU 2                  has-algebraic-alias flag
  340             hasPDATA EQU 1                  has-parse-data flag
  341
  342
  343             hasDER EQU 8                    has-derivative flag
  344             hasINV EQU 4                    has-inverse flag
  345             hasCOLCT EQU 2                  has-COLCT-data flag
  346             hasEXPND EQU 1                  has-EXPND-data flag
  347
  348
  349             hasFORM EQU 8                   has-FORM-menu flag
  350             hasINTG EQU 4                   has-Integral-data flag
  351             hasWHERE EQU 2                  has-WHERE-code flag
  352             hasVUNS EQU 1                   has-veryunsymin-code flag
  353
  354
  355             pdEX EQU #0             general expression
  356             pdOP EQU #1             operator
  357             pdQE EQU #2             quoted expression
  358             pdQN EQU #3             quoted name
  359             pdLP EQU #4             left parenthesis
  360             pdRP EQU #5             right parenthesis
  361             pdCM EQU #6             comma (non-radix)
  362             pdEQ EQU #7             equal-sign separator
  363             pdOS0 EQU #8            optional repeat 0
  364             pdOS1 EQU #9            optional repeat 1
  365             pdOS2 EQU #A            optional repeat 2
  366             pdOS3 EQU #B            optional repeat 3
  367             pdOS4 EQU #C            optional repeat 4
  368             pdOS5 EQU #D            optional repeat 5
  369             pdOS6 EQU #E            optional repeat 6
  370             pdOS7 EQU #F            optional repeat 7
  371
  372             * RPL
  373             * RPL
  374             * insure RPL-mode exit
  375
  376
  377
  378
  379
  380
  381
  382
  383
  384
  385
  386
  387
  388
  389
  390
  391
  392             * RPL
  393             * insure RPL-mode exit
  394
  395             * RPL
  396             * insure RPL-mode exit
  397
  398
  399
  400
  401
  402
  403
  404
  405
  406             * ( for internal use only
  407
  408
  409
  410
  411
  412
  413
  414
  415
  416
  417             * ( decimal 67
  418             * ( decimal 86
  419             * ( decimal 82
  420             * ( decimal 85
  421             * ( decimal 101
  422             * ( decimal 97
  423             * ( decimal 100
  424             * ( decimal 113
  425             * ( decimal 112
  426
  427             * ( check width
  428             * ( field character width
  429
  430             * ( decimal 67
  431             * ( decimal 85
  432             * ( decimal 97
  433
  434
  435
  436
  437
  438
  439
  440
  441
  442
  443
  444
  445
  446
  447
  448
  449
  450             * RPL
  451             * insure RPL-mode exit
  452
  453             * ( decimal 66
  454             * ( decimal 67
  455             * ( decimal 69
  456             * ( decimal 82
  457             * ( decimal 83
  458             * ( decimal 84
  459             * ( decimal 85
  460             * ( decimal 86
  461             * ( decimal 87
  462
  463
  464             * ( norm-view default visible row count
  465             * ( default first row X location
  466             * ( default first row Y location
  467             * ( default row width
  468             * ( default row height
  469
  470             * ( max-view width
  471             * ( max-view height
  472             * ( max-view default visible row count
  473
  474             * ( prompt area height
  475
  476             * ( more-up/down icon width
  477
  478
  479
  480             * RPL
  481             * insure RPL-mode exit
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
  683
  684
  685
  686
  687
  688
  689
  690
  691
  692
  693
  694
  695
  696
  697             * RPL
  698             * insure RPL-mode exit
  699
  700
  701
  702             * ( set for informations
  703             * ( set for step by step mode on
  704             * ( internal use: true if VXXL success
  705             * ( set for no gcd computations
  706             * ( set for complex mode
  707             * ( internal use:       LN->-INV[-LN]]
  708             * ( set for approx mode
  709             * ( set for TSIMP call inside SERIES
  710             * ( internal use:       modular computation
  711             * ( internal use:       testing remainder=0
  712             * ( set to allow numeric factorization
  713             * ( set for large matrices
  714             * ( set: don't simplify inside non rational operation
  715             * ( set to see i as an irrquad c=-1
  716             * ( set to disable linearity simplif.
  717             * ( set for increasing power x+1 -> 1+x
  718             * ( internal use:       sqrt not as irrquad
  719             * ( set if sin are prefered to cos
  720             * ( set for menu as choosebox
  721             * ( set if xINT is not simplified
  722             * ( set if non rigourous mode
  723             * ( set to allow silent mode switch
  724             * ( set if xLN returns LN[ABS[]]
  725
  726
  727             * ASSEMBLE
  728
  729             MultiLineFl     EQU     65
  730             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  731             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  732             MultiLineStringsFl      EQU     66
  733             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  734             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  735             DigitalClockFl  EQU     67
  736             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  737             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  738             CmdAutoIndentFl EQU     68
  739             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  740             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  741             FullScreenEditFl        EQU     69
  742             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  743             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  744             MultiLine2GROBFl        EQU     70
  745             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  746             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  747             DesasmWithAdrFl EQU     71
  748             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  749             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  750             BigFontStackFl  EQU     72
  751             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  752             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  753             BigFontCmdFl    EQU     73
  754             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  755             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  756             RightJustifiedStackFl   EQU     74
  757             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  758             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  759             KeystrokeBeepFl EQU     75
  760             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  761             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  762             FilerConfirmationFl     EQU     76
  763             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  764             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  765             FilerConfirmFl  EQU     77
  766             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  767             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  768             KernelParamFl   EQU     78
  769             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  770             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  771             PrettyPrintFl   EQU     79
  772             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  773             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  774             SmallFontEQWStackFl     EQU     80
  775             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  776             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  777             SmallFontEQWGrobFl      EQU     81
  778             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  779             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  780             SmallFontEQWEditFl      EQU     82
  781             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  782             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  783             GrobDisplayFl   EQU     83
  784             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  785             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  786             MKSmallFontMenuFl       EQU     84
  787             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  788             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  789             SystemRPLStackFl        EQU     85
  790             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  791             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  792             MASDDecompilerFl        EQU     86
  793             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  794             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  795             RecursiveStackFl        EQU     87
  796             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  797             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  798             RecursiveEditFl EQU     88
  799             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  800             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  801             AddressesCLEFl  EQU     89
  802             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  803             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  804             SmallFontChooseFl       EQU     90
  805             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  806             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  807             ArrayOnlyFl     EQU     91
  808             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  809             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  810             MLMASDModeFl    EQU     92
  811             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  812             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  813             ErableHeaderFl  EQU     93
  814             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  815             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  816             AutoSaveFl      EQU     94
  817             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  818             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  819             AlgebraicModeFl EQU     95
  820             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  821             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  822             MenuOnFl        EQU     96
  823             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  824             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  825             VerticalListFl  EQU     97
  826             VerticalListNib EQU     ((VerticalListFl)-1)/4
  827             VerticalListBit EQU     ((VerticalListFl)-1)%4
  828             VerticalVectorFl        EQU     98
  829             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  830             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  831
  832
  833             ComplexFl       EQU     103
  834             ComplexNib      EQU     ((ComplexFl)-1)/4
  835             ComplexBit      EQU     ((ComplexFl)-1)%4
  836
  837
  838             ExactModeFl     EQU     105
  839             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  840             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  841
  842
  843             * RPL
  844
  845
  846
  847             * ASSEMBLE
  848                     SETLIST CODE, INCLUDE, PSEUDO
  849             * RPL
  850
  851             *|| Resuming file OutptOutbndForm.s at line 16
  852             * ( HP48
  853             * File  OutptOutbndForm.s       19
  854 00000       =OutptOutbndForm
  855             * File  OutptOutbndForm.s       20
  856 00000 00000         CON(5)  =DOCOL
  857             * Label definitions
  858             * File  OutptOutbndForm.s       22
  859 00005 00000         CON(5)  =DOCSTR
  860 0000A 90000         CON(5)  9
  861 0000F 25A3          NIBASC  \R:\
  862 00013 00000         CON(5)  =ONE
  863 00018 00000         CON(5)  =TEN
  864             * File  OutptOutbndForm.s       23
  865 0001D 00000         CON(5)  =DOCSTR
  866 00022 B0000         CON(5)  11
  867 00027 4513A         NIBASC  \T1:\
            3
  868 0002D 00000         CON(5)  =ONE
  869 00032 00000         CON(5)  =NINETEEN
  870             * File  OutptOutbndForm.s       24
  871 00037 00000         CON(5)  =DOCSTR
  872 0003C F0000         CON(5)  15
  873 00041 84447         NIBASC  \HDG1:\
            413A3
  874 0004B 00000         CON(5)  =ONE
  875 00050 00000         CON(5)  =TWENTYEIGHT
  876             * File  OutptOutbndForm.s       25
  877 00055 00000         CON(5)  =DOCSTR
  878 0005A D0000         CON(5)  13
  879 0005F 74351         NIBASC  \GS1:\
            3A3
  880 00067 00000         CON(5)  =ONE
  881 0006C 00000         CON(5)  =THIRTYSEVEN
  882             * File  OutptOutbndForm.s       26
  883
  884             * Field definitions
  885             * File  OutptOutbndForm.s       28
  886             * Field R definition
  887             * File  OutptOutbndForm.s       29
  888 00071 00000         CON(5)  ='DROPFALSE
  889             * Message handler
  890             * File  OutptOutbndForm.s       30
  891 00076 00000         CON(5)  =TWENTYFIVE
  892 0007B 00000         CON(5)  =EIGHT
  893 00080 00000         CON(5)  =IDREAL
  894 00085 00000         CON(5)  =NINE
  895             * Position & size
  896             * File  OutptOutbndForm.s       31
  897 0008A 00000         CON(5)  =ONE
  898             * Field type TEXT
  899             * File  OutptOutbndForm.s       32
  900 0008F 00000         CON(5)  =DOLIST
  901 00094 00000         CON(5)  =ZERO
  902 00099 00000         CON(5)  =SEMI
  903             * Allowed types REAL
  904             * File  OutptOutbndForm.s       33
  905 0009E 00000         CON(5)  =TWO
  906             * Decompile
  907             * File  OutptOutbndForm.s       34
  908 000A3 00000         CON(5)  =DOCSTR
  909 000A8 D3000         CON(5)  61
  910 000AD 25144         NIBASC  \RADIUS OF ACTION (FR\
            49455
            3502F4640214344594F4E402826425

  911 000D5 F4D40         NIBASC  \OM DEP.)\
            24454
            05E292
  912             * Help string
  913             * File  OutptOutbndForm.s       35
  914 000E5 00000         CON(5)  =MINUSONE
  915             * Choose data N/A
  916             * File  OutptOutbndForm.s       36
  917 000EA 00000         CON(5)  =MINUSONE
  918             * Choose decompile N/A
  919             * File  OutptOutbndForm.s       37
  920 000EF 00000         CON(5)  =DOIDNT
  921 000F4 10            CON(2)  1
  922 000F6 25            NIBASC  \R\
  923             * Reset value
  924             * File  OutptOutbndForm.s       38
  925 000F8 00000         CON(5)  =DOIDNT
  926 000FD 10            CON(2)  1
  927 000FF 25            NIBASC  \R\
  928             * Initial value
  929             * File  OutptOutbndForm.s       39
  930
  931             * File  OutptOutbndForm.s       40
  932             * Field T1 definition
  933             * File  OutptOutbndForm.s       41
  934 00101 00000         CON(5)  ='DROPFALSE
  935             * Message handler
  936             * File  OutptOutbndForm.s       42
  937 00106 00000         CON(5)  =TWENTYFIVE
  938 0010B 00000         CON(5)  =SEVENTEEN
  939 00110 00000         CON(5)  =IDREAL
  940 00115 00000         CON(5)  =NINE
  941             * Position & size
  942             * File  OutptOutbndForm.s       43
  943 0011A 00000         CON(5)  =ONE
  944             * Field type TEXT
  945             * File  OutptOutbndForm.s       44
  946 0011F 00000         CON(5)  =DOLIST
  947 00124 00000         CON(5)  =ZERO
  948 00129 00000         CON(5)  =SEMI
  949             * Allowed types REAL
  950             * File  OutptOutbndForm.s       45
  951 0012E 00000         CON(5)  =TWO
  952             * Decompile
  953             * File  OutptOutbndForm.s       46
  954 00133 00000         CON(5)  =DOCSTR
  955 00138 53000         CON(5)  53
  956 0013D 4594D         NIBASC  \TIME TO TURN (FROM D\
            45402
            45F402455525E402826425F4D40244

  957 00165 5405E         NIBASC  \EP.)\
            292
  958             * Help string
  959             * File  OutptOutbndForm.s       47
  960 0016D 00000         CON(5)  =MINUSONE
  961             * Choose data N/A
  962             * File  OutptOutbndForm.s       48
  963 00172 00000         CON(5)  =MINUSONE
  964             * Choose decompile N/A
  965             * File  OutptOutbndForm.s       49
  966 00177 00000         CON(5)  =DOIDNT
  967 0017C 20            CON(2)  2
  968 0017E 4513          NIBASC  \T1\
  969             * Reset value
  970             * File  OutptOutbndForm.s       50
  971 00182 00000         CON(5)  =DOIDNT
  972 00187 20            CON(2)  2
  973 00189 4513          NIBASC  \T1\
  974             * Initial value
  975             * File  OutptOutbndForm.s       51
  976
  977             * File  OutptOutbndForm.s       52
  978             * Field HDG1 definition
  979             * File  OutptOutbndForm.s       53
  980 0018D 00000         CON(5)  ='DROPFALSE
  981             * Message handler
  982             * File  OutptOutbndForm.s       54
  983 00192 00000         CON(5)  =TWENTYFIVE
  984 00197 00000         CON(5)  =TWENTYSIX
  985 0019C 00000         CON(5)  =IDREAL
  986 001A1 00000         CON(5)  =NINE
  987             * Position & size
  988             * File  OutptOutbndForm.s       55
  989 001A6 00000         CON(5)  =ONE
  990             * Field type TEXT
  991             * File  OutptOutbndForm.s       56
  992 001AB 00000         CON(5)  =DOLIST
  993 001B0 00000         CON(5)  =ZERO
  994 001B5 00000         CON(5)  =SEMI
  995             * Allowed types REAL
  996             * File  OutptOutbndForm.s       57
  997 001BA 00000         CON(5)  =TWO
  998             * Decompile
  999             * File  OutptOutbndForm.s       58
 1000 001BF 00000         CON(5)  =DOCSTR
 1001 001C4 52000         CON(5)  37
 1002 001C9 84541         NIBASC  \HEADING OUTBOUND\
            44494
            E47402F4554524F455E444

 1003             * Help string
 1004             * File  OutptOutbndForm.s       59
 1005 001E9 00000         CON(5)  =MINUSONE
 1006             * Choose data N/A
 1007             * File  OutptOutbndForm.s       60
 1008 001EE 00000         CON(5)  =MINUSONE
 1009             * Choose decompile N/A
 1010             * File  OutptOutbndForm.s       61
 1011 001F3 00000         CON(5)  =DOIDNT
 1012 001F8 40            CON(2)  4
 1013 001FA 84447         NIBASC  \HDG1\
            413
 1014             * Reset value
 1015             * File  OutptOutbndForm.s       62
 1016 00202 00000         CON(5)  =DOIDNT
 1017 00207 40            CON(2)  4
 1018 00209 84447         NIBASC  \HDG1\
            413
 1019             * Initial value
 1020             * File  OutptOutbndForm.s       63
 1021
 1022             * File  OutptOutbndForm.s       64
 1023             * Field GS1 definition
 1024             * File  OutptOutbndForm.s       65
 1025 00211 00000         CON(5)  ='DROPFALSE
 1026             * Message handler
 1027             * File  OutptOutbndForm.s       66
 1028 00216 00000         CON(5)  =TWENTYFIVE
 1029 0021B 00000         CON(5)  =THIRTYFIVE
 1030 00220 00000         CON(5)  =IDREAL
 1031 00225 00000         CON(5)  =NINE
 1032             * Position & size
 1033             * File  OutptOutbndForm.s       67
 1034 0022A 00000         CON(5)  =ONE
 1035             * Field type TEXT
 1036             * File  OutptOutbndForm.s       68
 1037 0022F 00000         CON(5)  =DOLIST
 1038 00234 00000         CON(5)  =ZERO
 1039 00239 00000         CON(5)  =SEMI
 1040             * Allowed types REAL
 1041             * File  OutptOutbndForm.s       69
 1042 0023E 00000         CON(5)  =TWO
 1043             * Decompile
 1044             * File  OutptOutbndForm.s       70
 1045 00243 00000         CON(5)  =DOCSTR
 1046 00248 F2000         CON(5)  47
 1047 0024D 7425F         NIBASC  \GROUND SPEED OUTBOUN\
            455E4
            4402350554544402F4554524F455E4

 1048 00275 44            NIBASC  \D\
 1049             * Help string
 1050             * File  OutptOutbndForm.s       71
 1051 00277 00000         CON(5)  =MINUSONE
 1052             * Choose data N/A
 1053             * File  OutptOutbndForm.s       72
 1054 0027C 00000         CON(5)  =MINUSONE
 1055             * Choose decompile N/A
 1056             * File  OutptOutbndForm.s       73
 1057 00281 00000         CON(5)  =DOIDNT
 1058 00286 30            CON(2)  3
 1059 00288 74351         NIBASC  \GS1\
            3
 1060             * Reset value
 1061             * File  OutptOutbndForm.s       74
 1062 0028E 00000         CON(5)  =DOIDNT
 1063 00293 30            CON(2)  3
 1064 00295 74351         NIBASC  \GS1\
            3
 1065             * Initial value
 1066             * File  OutptOutbndForm.s       75
 1067
 1068             * File  OutptOutbndForm.s       76
 1069 0029B 00000         CON(5)  =FOUR
 1070 002A0 00000         CON(5)  =FOUR
 1071             * #labels #fields
 1072             * File  OutptOutbndForm.s       77
 1073 002A5 00000         CON(5)  ='DROPFALSE
 1074             * Message handler
 1075             * File  OutptOutbndForm.s       78
 1076 002AA 00000         CON(5)  =DOCSTR
 1077 002AF 34000         CON(5)  67
 1078 002B4 25F41         NIBASC  \ROA - ALTERNATE BASE\
            402D2
            0214C4455425E41445540224143554

 1079 002DC 02D20         NIBASC  \ - OUTBOUND\
            2F455
            4524F455E444

 1080             * Title
 1081             *               FLASHPTR IfMain                     ( HP50 )
 1082             * File  OutptOutbndForm.s       80
 1083 002F2 00000         CON(5)  =DoInputForm
 1084             * HP50, HP48
 1085             * File  OutptOutbndForm.s       81
 1086 002F7 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 25 21:47:10 2009
V3.0.9 (04/15/2007)   Symbol Table                       OutptOutbndFor Page    2

 'DROPFALSE                        Ext                   -   888   934   980
                                        1025  1073
 AddressesCLEBit                   Abs       0 #00000000 -   803
 AddressesCLEFl                    Abs      89 #00000059 -   801   802   803
 AddressesCLENib                   Abs      22 #00000016 -   802
 AlarmBeepBit                      Abs       0 #00000000 -   190
 AlarmBeepFl                       Abs      57 #00000039 -   178   189   190
 AlarmBeepNib                      Abs      14 #0000000E -   189
 AlgebraicModeBit                  Abs       2 #00000002 -   821
 AlgebraicModeFl                   Abs      95 #0000005F -   819   820   821
 AlgebraicModeNib                  Abs      23 #00000017 -   820
 AngleBCt                          Abs       2 #00000002 -   141
 AngleBit1                         Abs       0 #00000000 -   193   194
 AngleBit2                         Abs       1 #00000001 -   194
 AngleFl1                          Abs      17 #00000011 -   140   192   193
 AngleNib                          Abs       4 #00000004 -   192
 ArrayOnlyBit                      Abs       2 #00000002 -   809
 ArrayOnlyFl                       Abs      91 #0000005B -   807   808   809
 ArrayOnlyNib                      Abs      22 #00000016 -   808
 AutoSaveBit                       Abs       1 #00000001 -   818
 AutoSaveFl                        Abs      94 #0000005E -   816   817   818
 AutoSaveNib                       Abs      23 #00000017 -   817
 BigFontCmdBit                     Abs       0 #00000000 -   755
 BigFontCmdFl                      Abs      73 #00000049 -   753   754   755
 BigFontCmdNib                     Abs      18 #00000012 -   754
 BigFontStackBit                   Abs       3 #00000003 -   752
 BigFontStackFl                    Abs      72 #00000048 -   750   751   752
 BigFontStackNib                   Abs      17 #00000011 -   751
 BinBaseBCt                        Abs       2 #00000002 -   136
 BinBaseBit1                       Abs       2 #00000002 -   197
 BinBaseFl1                        Abs      11 #0000000B -   135   196   197
 BinBaseNib                        Abs       2 #00000002 -   196
 BinWordSBCt                       Abs       6 #00000006 -   134
 BinWordSBit1                      Abs       0 #00000000 -   200
 BinWordSFl1                       Abs       5 #00000005 -   133   199   200
 BinWordSNib                       Abs       1 #00000001 -   199
 CarefulBit                        Abs       3 #00000003 -   203
 CarefulFl                         Abs       4 #00000004 -   131   202   203
 CarefulNib                        Abs       0 #00000000 -   202
 ClockFmtBit                       Abs       0 #00000000 -   206
 ClockFmtFl                        Abs      41 #00000029 -   163   205   206
 ClockFmtNib                       Abs      10 #0000000A -   205
 ClockOnBit                        Abs       3 #00000003 -   209
 ClockOnFl                         Abs      40 #00000028 -   162   208   209
 ClockOnNib                        Abs       9 #00000009 -   208
 CmdAutoIndentBit                  Abs       3 #00000003 -   740
 CmdAutoIndentFl                   Abs      68 #00000044 -   738   739   740
 CmdAutoIndentNib                  Abs      16 #00000010 -   739
 ComVecDiBCt                       Abs       2 #00000002 -   139
 ComVecDiBit1                      Abs       2 #00000002 -   215
 ComVecDiFl1                       Abs      15 #0000000F -   138   214   215
 ComVecDiNib                       Abs       3 #00000003 -   214
 Complex2DBit                      Abs       2 #00000002 -   212
 Complex2DFl                       Abs      19 #00000013 -   142   211   212
 Complex2DNib                      Abs       4 #00000004 -   211
 ComplexBit                        Abs       2 #00000002 -   835
 ComplexFl                         Abs     103 #00000067 -   833   834   835
 ComplexNib                        Abs      25 #00000019 -   834
 ConnectPtBit                      Abs       2 #00000002 -   218
 ConnectPtFl                       Abs      31 #0000001F -   152   217   218
 ConnectPtNib                      Abs       7 #00000007 -   217
 ConstantsBit                      Abs       1 #00000001 -   221
 ConstantsFl                       Abs       2 #00000002 -   129   220   221
 ConstantsNib                      Abs       0 #00000000 -   220
 DOCOL                             Ext                   -   856
 DOCSTR                            Ext                   -   859   865   871
                                         877   908   954  1000  1045  1076
 DOIDNT                            Ext                   -   920   925   966
                                         971  1011  1016  1057  1062
 DOLIST                            Ext                   -   900   946   992
                                        1037
 DateFmtBit                        Abs       1 #00000001 -   224
 DateFmtFl                         Abs      42 #0000002A -   164   223   224
 DateFmtNib                        Abs      10 #0000000A -   223
 DblSpaceBit                       Abs       0 #00000000 -   227
 DblSpaceFl                        Abs      37 #00000025 -   158   226   227
 DblSpaceNib                       Abs       9 #00000009 -   226
 DefSysF32-01                      Abs67178480 #04010FF0 -    53
 DefSysF64-33                      Abs       0 #00000000 -    52
 DefSysF65-96                      Abs1107296256 #42000000 -    54
 DefSysF97-128                     Abs       0 #00000000 -    55
 DelNRAlmBit                       Abs       3 #00000003 -   230
 DelNRAlmFl                        Abs      44 #0000002C -   166   229   230
 DelNRAlmNib                       Abs      10 #0000000A -   229
 DesasmWithAdrBit                  Abs       2 #00000002 -   749
 DesasmWithAdrFl                   Abs      71 #00000047 -   747   748   749
 DesasmWithAdrNib                  Abs      17 #00000011 -   748
 DigitalClockBit                   Abs       2 #00000002 -   737
 DigitalClockFl                    Abs      67 #00000043 -   735   736   737
 DigitalClockNib                   Abs      16 #00000010 -   736
 DoInputForm                       Ext                   -  1083
 EIGHT                             Ext                   -   892
 ErableHeaderBit                   Abs       0 #00000000 -   815
 ErableHeaderFl                    Abs      93 #0000005D -   813   814   815
 ErableHeaderNib                   Abs      23 #00000017 -   814
 ErrorBeepBit                      Abs       3 #00000003 -   233
 ErrorBeepFl                       Abs      56 #00000038 -   177   232   233
 ErrorBeepNib                      Abs      13 #0000000D -   232
 ExactModeBit                      Abs       0 #00000000 -   840
 ExactModeFl                       Abs     105 #00000069 -   838   839   840
 ExactModeNib                      Abs      26 #0000001A -   839
 FOUR                              Ext                   -  1069  1070
 FastEViewBit                      Abs       2 #00000002 -   236
 FastEViewNib                      Abs      14 #0000000E -   235
 FastEqViewFl                      Abs      59 #0000003B -   180   235   236
 FilerConfirmBit                   Abs       0 #00000000 -   767
 FilerConfirmFl                    Abs      77 #0000004D -   765   766   767
 FilerConfirmNib                   Abs      19 #00000013 -   766
 FilerConfirmationBit              Abs       3 #00000003 -   764
 FilerConfirmationFl               Abs      76 #0000004C -   762   763   764
 FilerConfirmationNib              Abs      18 #00000012 -   763
 FullScreenEditBit                 Abs       0 #00000000 -   743
 FullScreenEditFl                  Abs      69 #00000045 -   741   742   743
 FullScreenEditNib                 Abs      17 #00000011 -   742
 FunctPlotBit                      Abs       1 #00000001 -   239
 FunctPlotFl                       Abs      30 #0000001E -   151   238   239
 FunctPlotNib                      Abs       7 #00000007 -   238
 GCursorBit                        Abs       3 #00000003 -   242
 GCursorFl                         Abs      32 #00000020 -   153   241   242
 GCursorNib                        Abs       7 #00000007 -   241
 GrobDisplayBit                    Abs       2 #00000002 -   785
 GrobDisplayFl                     Abs      83 #00000053 -   783   784   785
 GrobDisplayNib                    Abs      20 #00000014 -   784
 IDREAL                            Ext                   -   893   939   985
                                        1030
 IODataFmtBit                      Abs       2 #00000002 -   254
 IODataFmtFl                       Abs      35 #00000023 -   156   253   254
 IODataFmtNib                      Abs       8 #00000008 -   253
 IODeviceBit                       Abs       0 #00000000 -   257
 IODeviceFl                        Abs      33 #00000021 -   154   256   257
 IODeviceNib                       Abs       8 #00000008 -   256
 IndexWrapBit                      Abs       3 #00000003 -   245
 IndexWrapFl                       Abs      64 #00000040 -   185   244   245
 IndexWrapNib                      Abs      15 #0000000F -   244
 InfResActBit                      Abs       1 #00000001 -   248
 InfResActFl                       Abs      22 #00000016 -   145   247   248
 InfResActNib                      Abs       5 #00000005 -   247
 InfResultBit                      Abs       1 #00000001 -   251
 InfResultFl                       Abs      26 #0000001A -   149   250   251
 InfResultNib                      Abs       6 #00000006 -   250
 KernelParamBit                    Abs       1 #00000001 -   770
 KernelParamFl                     Abs      78 #0000004E -   768   769   770
 KernelParamNib                    Abs      19 #00000013 -   769
 KeystrokeBeepBit                  Abs       2 #00000002 -   761
 KeystrokeBeepFl                   Abs      75 #0000004B -   759   760   761
 KeystrokeBeepNib                  Abs      18 #00000012 -   760
 LastArgsBit                       Abs       2 #00000002 -   260
 LastArgsFl                        Abs      55 #00000037 -   176   259   260
 LastArgsNib                       Abs      13 #0000000D -   259
 MASDDecompilerBit                 Abs       1 #00000001 -   794
 MASDDecompilerFl                  Abs      86 #00000056 -   792   793   794
 MASDDecompilerNib                 Abs      21 #00000015 -   793
 MINUSONE                          Ext                   -   914   917   960
                                         963  1005  1008  1051  1054
 MKSmallFontMenuBit                Abs       3 #00000003 -   788
 MKSmallFontMenuFl                 Abs      84 #00000054 -   786   787   788
 MKSmallFontMenuNib                Abs      20 #00000014 -   787
 MLMASDModeBit                     Abs       3 #00000003 -   812
 MLMASDModeFl                      Abs      92 #0000005C -   810   811   812
 MLMASDModeNib                     Abs      22 #00000016 -   811
 MenuOnBit                         Abs       3 #00000003 -   824
 MenuOnFl                          Abs      96 #00000060 -   822   823   824
 MenuOnNib                         Abs      23 #00000017 -   823
 MultiDispBit                      Abs       3 #00000003 -   266
 MultiDispFl                       Abs      52 #00000034 -   173   265   266
 MultiDispNib                      Abs      12 #0000000C -   265
 MultiLine2GROBBit                 Abs       1 #00000001 -   746
 MultiLine2GROBFl                  Abs      70 #00000046 -   744   745   746
 MultiLine2GROBNib                 Abs      17 #00000011 -   745
 MultiLineBit                      Abs       0 #00000000 -   731
 MultiLineFl                       Abs      65 #00000041 -   729   730   731
 MultiLineNib                      Abs      16 #00000010 -   730
 MultiLineStringsBit               Abs       1 #00000001 -   734
 MultiLineStringsFl                Abs      66 #00000042 -   732   733   734
 MultiLineStringsNib               Abs      16 #00000010 -   733
 NINE                              Ext                   -   894   940   986
                                        1031
 NINETEEN                          Ext                   -   869
 NoAutoCRBit                       Abs       1 #00000001 -   269
 NoAutoCRFl                        Abs      38 #00000026 -   159   268   269
 NoAutoCRNib                       Abs       9 #00000009 -   268
 NoIOStMsgBit                      Abs       2 #00000002 -   272
 NoIOStMsgNib                      Abs       9 #00000009 -   271
 NoIOStsMsgFl                      Abs      39 #00000027 -   160   271   272
 NoParseBit                        Abs       2 #00000002 -   275
 NoParseFl                         Abs      63 #0000003F -   184   274   275
 NoParseNib                        Abs      15 #0000000F -   274
 NumDigsBCt                        Abs       4 #00000004 -   169
 NumDigsBit1                       Abs       0 #00000000 -   278
 NumDigsFl1                        Abs      45 #0000002D -   168   277   278
 NumDigsNib                        Abs      11 #0000000B -   277
 NumDispBCt                        Abs       2 #00000002 -   171
 NumDispBit1                       Abs       0 #00000000 -   281
 NumDispFl1                        Abs      49 #00000031 -   170   280   281
 NumDispNib                        Abs      12 #0000000C -   280
 ONE                               Ext                   -   862   868   874
                                         880   897   943   989  1034
=OutptOutbndForm                   Rel       0 #00000000 -   854
 OverfActBit                       Abs       0 #00000000 -   284
 OverfActFl                        Abs      21 #00000015 -   144   283   284
 OverfActNib                       Abs       5 #00000005 -   283
 OverflowBit                       Abs       0 #00000000 -   287
 OverflowFl                        Abs      25 #00000019 -   148   286   287
 OverflowNib                       Abs       6 #00000006 -   286
 OverwriteBit                      Abs       3 #00000003 -   290
 OverwriteFl                       Abs      36 #00000024 -   157   289   290
 OverwriteNib                      Abs       8 #00000008 -   289
 PrettyPrintBit                    Abs       2 #00000002 -   773
 PrettyPrintFl                     Abs      79 #0000004F -   771   772   773
 PrettyPrintNib                    Abs      19 #00000013 -   772
 PrintDevBit                       Abs       1 #00000001 -   293
 PrintDevFl                        Abs      34 #00000022 -   155   292   293
 PrintDevNib                       Abs       8 #00000008 -   292
 RadixBit                          Abs       2 #00000002 -   296
 RadixFl                           Abs      51 #00000033 -   172   295   296
 RadixNib                          Abs      12 #0000000C -   295
 RecursiveEditBit                  Abs       3 #00000003 -   800
 RecursiveEditFl                   Abs      88 #00000058 -   798   799   800
 RecursiveEditNib                  Abs      21 #00000015 -   799
 RecursiveStackBit                 Abs       2 #00000002 -   797
 RecursiveStackFl                  Abs      87 #00000057 -   795   796   797
 RecursiveStackNib                 Abs      21 #00000015 -   796
 ResRepAlmBit                      Abs       2 #00000002 -   299
 ResRepAlmFl                       Abs      43 #0000002B -   165   298   299
 ResRepAlmNib                      Abs      10 #0000000A -   298
 ResultsBit                        Abs       2 #00000002 -   302
 ResultsFl                         Abs       3 #00000003 -   130   301   302
 ResultsNib                        Abs       0 #00000000 -   301
 RightJustifiedStackBit            Abs       1 #00000001 -   758
 RightJustifiedStackFl             Abs      74 #0000004A -   756   757   758
 RightJustifiedStackNib            Abs      18 #00000012 -   757
=RomId                             Abs     805 #00000325 -    20
 SEMI                              Ext                   -   902   948   994
                                        1039  1086
 SEVENTEEN                         Ext                   -   938
 ShowPrecBit                       Abs       0 #00000000 -   305
 ShowPrecFl                        Abs      53 #00000035 -   174   304   305
 ShowPrecNib                       Abs      13 #0000000D -   304
 SmallFontChooseBit                Abs       1 #00000001 -   806
 SmallFontChooseFl                 Abs      90 #0000005A -   804   805   806
 SmallFontChooseNib                Abs      22 #00000016 -   805
 SmallFontEQWEditBit               Abs       1 #00000001 -   782
 SmallFontEQWEditFl                Abs      82 #00000052 -   780   781   782
 SmallFontEQWEditNib               Abs      20 #00000014 -   781
 SmallFontEQWGrobBit               Abs       0 #00000000 -   779
 SmallFontEQWGrobFl                Abs      81 #00000051 -   777   778   779
 SmallFontEQWGrobNib               Abs      20 #00000014 -   778
 SmallFontEQWStackBit              Abs       3 #00000003 -   776
 SmallFontEQWStackFl               Abs      80 #00000050 -   774   775   776
 SmallFontEQWStackNib              Abs      19 #00000013 -   775
 SolutionsBit                      Abs       0 #00000000 -   308
 SolutionsFl                       Abs       1 #00000001 -   128   307   308
 SolutionsNib                      Abs       0 #00000000 -   307
 SystemRPLStackBit                 Abs       0 #00000000 -   791
 SystemRPLStackFl                  Abs      85 #00000055 -   789   790   791
 SystemRPLStackNib                 Abs      21 #00000015 -   790
 TEN                               Ext                   -   863
 THIRTYFIVE                        Ext                   -  1029
 THIRTYSEVEN                       Ext                   -   881
 TWENTYEIGHT                       Ext                   -   875
 TWENTYFIVE                        Ext                   -   891   937   983
                                        1028
 TWENTYSIX                         Ext                   -   984
 TWO                               Ext                   -   905   951   997
                                        1042
 TriAlphaBit                       Abs       3 #00000003 -   311
 TriAlphaFl                        Abs      60 #0000003C -   181   310   311
 TriAlphaNib                       Abs      14 #0000000E -   310
 TriUserBit                        Abs       0 #00000000 -   314
 TriUserFl                         Abs      61 #0000003D -   182   313   314
 TriUserNib                        Abs      15 #0000000F -   313
 UnderfActBit                      Abs       3 #00000003 -   317
 UnderfActFl                       Abs      20 #00000014 -   143   316   317
 UnderfActNib                      Abs       4 #00000004 -   316
 UnderfNegBit                      Abs       2 #00000002 -   320
 UnderfNegFl                       Abs      23 #00000017 -   146   319   320
 UnderfNegNib                      Abs       5 #00000005 -   319
 UnderfPosBit                      Abs       3 #00000003 -   323
 UnderfPosFl                       Abs      24 #00000018 -   147   322   323
 UnderfPosNib                      Abs       5 #00000005 -   322
 UserKeysBit                       Abs       1 #00000001 -   326
 UserKeysFl                        Abs      62 #0000003E -   183   325   326
 UserKeysNib                       Abs      15 #0000000F -   325
 VerboseBit                        Abs       1 #00000001 -   263
 VerboseFl                         Abs      58 #0000003A -   179   262   263
 VerboseNib                        Abs      14 #0000000E -   262
 VerticalListBit                   Abs       0 #00000000 -   827
 VerticalListFl                    Abs      97 #00000061 -   825   826   827
 VerticalListNib                   Abs      24 #00000018 -   826
 VerticalVectorBit                 Abs       1 #00000001 -   830
 VerticalVectorFl                  Abs      98 #00000062 -   828   829   830
 VerticalVectorNib                 Abs      24 #00000018 -   829
 ZERO                              Ext                   -   901   947   993
                                        1038
 hasALIAS                          Abs       2 #00000002 -   339
 hasCOLCT                          Abs       2 #00000002 -   345
 hasDER                            Abs       8 #00000008 -   343
 hasEXPND                          Abs       1 #00000001 -   346
 hasFORM                           Abs       8 #00000008 -   349
 hasHELP                           Abs       4 #00000004 -   337
 hasINTG                           Abs       4 #00000004 -   350
 hasINV                            Abs       4 #00000004 -   344
 hasPDATA                          Abs       1 #00000001 -   340
 hasPROMPTM                        Abs       4 #00000004 -   338
 hasVUNS                           Abs       1 #00000001 -   352
 hasWHERE                          Abs       2 #00000002 -   351
 nonALG                            Abs       8 #00000008 -   336
 pdCM                              Abs       6 #00000006 -   361
 pdEQ                              Abs       7 #00000007 -   362
 pdEX                              Abs       0 #00000000 -   355
 pdLP                              Abs       4 #00000004 -   359
 pdOP                              Abs       1 #00000001 -   356
 pdOS0                             Abs       8 #00000008 -   363
 pdOS1                             Abs       9 #00000009 -   364
 pdOS2                             Abs      10 #0000000A -   365
 pdOS3                             Abs      11 #0000000B -   366
 pdOS4                             Abs      12 #0000000C -   367
 pdOS5                             Abs      13 #0000000D -   368
 pdOS6                             Abs      14 #0000000E -   369
 pdOS7                             Abs      15 #0000000F -   370
 pdQE                              Abs       2 #00000002 -   357
 pdQN                              Abs       3 #00000003 -   358
 pdRP                              Abs       5 #00000005 -   360
Saturn Assembler                                       Thu Jun 25 21:47:10 2009
V3.0.9 (04/15/2007)   Statistics                         OutptOutbndFor Page    3

Input Parameters

  Source file name is OutptOutbndForm.a

  Listing file name is OutptOutbndForm.l

  Object file name is OutptOutbndForm.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
