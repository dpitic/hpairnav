Saturn Assembler                                       Fri Jun 19 12:11:16 2009
V3.0.9 (04/15/2007)                                      ALTform.a      Page    1

    1             * File  ALTform.s       1
    2             * RPL
    3             * File  ALTform.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTform.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5             **********************************************************************
    6             * NAME:            ALTform
    7             * AUTHOR:          Dan Pitic
    8             * VERSION:         1.14
    9             * DATE:            12 June 2009
   10             * COMPATIBILITY:   HP50
   11             *                  HP48
   12             * DESCRIPTION:     Displays INPUT and OUTPUT form for ALT.
   13             * TODO:     1)     Make QNH field a combo field and allow user to
   14             *                  choose 1013.25_mbar as the standard QNH and
   15             *                  alternatively allow user to input or edit QNH
   16             *
   17             * File  ALTform.s       15
   18             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.H
   19
   20
   21             * RPL
   22             * insure RPL-mode exit
   23
   24             * ( Rad
   25
   26             * ( %2PI
   27             * ( %PI/24
   28
   29
   30
   31
   32             * ( 1=1Var, 2=2Var Statistic
   33             * ( 1=Histogram, 2=BoxWhisker
   34
   35
   36
   37
   38
   39             * ASSEMBLE
   40             DefSysF64-33 EQU        #00000000
   41             DefSysF32-01 EQU        #04010FF0
   42             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   43             DefSysF97-128 EQU       #00000000
   44
   45             * RPL
   46
   47
   48             * ( solution mode
   49             * ( constants mode
   50             * ( results mode
   51             * ( careful evaluation mode
   52
   53             * ( binary integer wordsize
   54             * must start on nibble boundary
   55             * ( binary integer base
   56             * must follow "fnBinWordS6"
   57
   58             * ( financial BEGIN/END mode
   59             * ( complex number and vector
   60             * mode
   61             * ( angle mode
   62             * must start on a nibble boundary
   63             * ( complex 2D mode
   64             * ( underflow action
   65             * ( overflow action
   66             * ( infinite result action
   67             * ( underflow-negative indicator
   68             * ( underflow-positive indicator
   69             * ( overflow indicator
   70             * ( infinite result indicator
   71             * ( symbolic-comples decompilation
   72             * ( simultaneous plot mode
   73             * ( axis drawing plot mode
   74
   75             * ( connect points mode
   76             * ( graphics cursor type mode
   77             * ( I/O device
   78             * ( print device
   79             * ( I/O data format
   80             * ( variable overwrite mode
   81             * ( double-space print mode
   82             * ( suppress auto CR mode
   83             * ( suppress I/O status messages
   84
   85
   86             * ( clock display mode
   87             * ( clock display format
   88             * ( date format
   89             * ( reschedule unacknowledged
   90             * repeat alarms mode
   91             * ( delete acknowledged non-repeat
   92             * alarms mode
   93
   94             * ( number of decimal digits
   95             * must start on nibble boundary
   96             * ( number display format
   97             * must start on nibble boundary
   98             * ( radix mark
   99             * ( multi-line display mode
  100             * ( show precedence mode
  101             * ( zero out tiny matrix elements
  102
  103             * ( last arguments mode
  104             * ( error beep mode
  105             * ( alarm beep mode
  106             * ( verbose display mode
  107             * ( variable name only mode
  108             * ( 3-way alpha mode
  109             * ( 3-way user keys mode
  110             * ( user keys mode
  111             * ( special parser mode
  112             * ( index wraparound indicator
  113
  114
  115             * ASSEMBLE
  116             SolutionsFl  EQU 1
  117             ConstantsFl  EQU 2
  118             ResultsFl    EQU 3
  119             CarefulFl    EQU 4
  120
  121             BinWordSFl1  EQU 5      must start on a nibble boundary
  122             BinWordSBCt  EQU 6      number of bits
  123             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  124             BinBaseBCt   EQU 2      number of bits
  125
  126             ComVecDiFl1  EQU 15
  127             ComVecDiBCt  EQU 2      number of bits
  128             AngleFl1     EQU 17     must start on a nibble boundary
  129             AngleBCt     EQU 2      number of bits
  130             Complex2DFl  EQU 19
  131             UnderfActFl  EQU 20
  132             OverfActFl   EQU 21
  133             InfResActFl  EQU 22
  134             UnderfNegFl  EQU 23
  135             UnderfPosFl  EQU 24
  136             OverflowFl   EQU 25
  137             InfResultFl  EQU 26
  138
  139             FunctPlotFl  EQU 30
  140             ConnectPtFl  EQU 31
  141             GCursorFl    EQU 32
  142             IODeviceFl   EQU 33
  143             PrintDevFl   EQU 34
  144             IODataFmtFl  EQU 35
  145             OverwriteFl  EQU 36
  146             DblSpaceFl   EQU 37
  147             NoAutoCRFl   EQU 38
  148             NoIOStsMsgFl EQU 39
  149
  150             ClockOnFl    EQU 40
  151             ClockFmtFl   EQU 41
  152             DateFmtFl    EQU 42
  153             ResRepAlmFl  EQU 43
  154             DelNRAlmFl   EQU 44
  155
  156             NumDigsFl1   EQU 45     must start on a nibble boundary
  157             NumDigsBCt   EQU 4      number of bits
  158             NumDispFl1   EQU 49     must start on a nibble boundary
  159             NumDispBCt   EQU 2      number of bits
  160             RadixFl      EQU 51
  161             MultiDispFl  EQU 52
  162             ShowPrecFl   EQU 53
  163
  164             LastArgsFl   EQU 55
  165             ErrorBeepFl  EQU 56
  166             AlarmBeepFl  EQU 57
  167             VerboseFl    EQU 58
  168             FastEqViewFl EQU 59
  169             TriAlphaFl   EQU 60
  170             TriUserFl    EQU 61
  171             UserKeysFl   EQU 62
  172             NoParseFl    EQU 63
  173             IndexWrapFl  EQU 64
  174
  175
  176
  177             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  178             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  179
  180             AngleNib     EQU ((AngleFl1)-1)/4
  181             AngleBit1    EQU ((AngleFl1)-1)%4
  182             AngleBit2    EQU (AngleBit1)+1
  183
  184             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  185             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  186
  187             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  188             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  189
  190             CarefulNib   EQU ((CarefulFl)-1)/4
  191             CarefulBit   EQU ((CarefulFl)-1)%4
  192
  193             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  194             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  195
  196             ClockOnNib   EQU ((ClockOnFl)-1)/4
  197             ClockOnBit   EQU ((ClockOnFl)-1)%4
  198
  199             Complex2DNib EQU ((Complex2DFl)-1)/4
  200             Complex2DBit EQU ((Complex2DFl)-1)%4
  201
  202             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  203             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  204
  205             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  206             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  207
  208             ConstantsNib EQU ((ConstantsFl)-1)/4
  209             ConstantsBit EQU ((ConstantsFl)-1)%4
  210
  211             DateFmtNib   EQU ((DateFmtFl)-1)/4
  212             DateFmtBit   EQU ((DateFmtFl)-1)%4
  213
  214             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  215             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  216
  217             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  218             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  219
  220             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  221             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  222
  223             FastEViewNib EQU ((FastEqViewFl)-1)/4
  224             FastEViewBit EQU ((FastEqViewFl)-1)%4
  225
  226             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  227             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  228
  229             GCursorNib   EQU ((GCursorFl)-1)/4
  230             GCursorBit   EQU ((GCursorFl)-1)%4
  231
  232             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  233             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  234
  235             InfResActNib EQU ((InfResActFl)-1)/4
  236             InfResActBit EQU ((InfResActFl)-1)%4
  237
  238             InfResultNib EQU ((InfResultFl)-1)/4
  239             InfResultBit EQU ((InfResultFl)-1)%4
  240
  241             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  242             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  243
  244             IODeviceNib  EQU ((IODeviceFl)-1)/4
  245             IODeviceBit  EQU ((IODeviceFl)-1)%4
  246
  247             LastArgsNib  EQU ((LastArgsFl)-1)/4
  248             LastArgsBit  EQU ((LastArgsFl)-1)%4
  249
  250             VerboseNib   EQU ((VerboseFl)-1)/4
  251             VerboseBit   EQU ((VerboseFl)-1)%4
  252
  253             MultiDispNib EQU ((MultiDispFl)-1)/4
  254             MultiDispBit EQU ((MultiDispFl)-1)%4
  255
  256             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  257             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  258
  259             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  260             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  261
  262             NoParseNib   EQU ((NoParseFl)-1)/4
  263             NoParseBit   EQU ((NoParseFl)-1)%4
  264
  265             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  266             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  267
  268             NumDispNib   EQU ((NumDispFl1)-1)/4
  269             NumDispBit1  EQU ((NumDispFl1)-1)%4
  270
  271             OverfActNib  EQU ((OverfActFl)-1)/4
  272             OverfActBit  EQU ((OverfActFl)-1)%4
  273
  274             OverflowNib  EQU ((OverflowFl)-1)/4
  275             OverflowBit  EQU ((OverflowFl)-1)%4
  276
  277             OverwriteNib EQU ((OverwriteFl)-1)/4
  278             OverwriteBit EQU ((OverwriteFl)-1)%4
  279
  280             PrintDevNib  EQU ((PrintDevFl)-1)/4
  281             PrintDevBit  EQU ((PrintDevFl)-1)%4
  282
  283             RadixNib     EQU ((RadixFl)-1)/4
  284             RadixBit     EQU ((RadixFl)-1)%4
  285
  286             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  287             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  288
  289             ResultsNib   EQU ((ResultsFl)-1)/4
  290             ResultsBit   EQU ((ResultsFl)-1)%4
  291
  292             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  293             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  294
  295             SolutionsNib EQU ((SolutionsFl)-1)/4
  296             SolutionsBit EQU ((SolutionsFl)-1)%4
  297
  298             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  299             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  300
  301             TriUserNib   EQU ((TriUserFl)-1)/4
  302             TriUserBit   EQU ((TriUserFl)-1)%4
  303
  304             UnderfActNib EQU ((UnderfActFl)-1)/4
  305             UnderfActBit EQU ((UnderfActFl)-1)%4
  306
  307             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  308             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  309
  310             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  311             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  312
  313             UserKeysNib  EQU ((UserKeysFl)-1)/4
  314             UserKeysBit  EQU ((UserKeysFl)-1)%4
  315
  316             * RPL
  317             * RPL
  318             * insure RPL-mode exit
  319
  320
  321             * ASSEMBLE
  322
  323
  324             nonALG EQU 8                    not-allowed-in-algebraics flag
  325             hasHELP EQU 4                   has-help-data flag
  326             hasPROMPTM EQU 4                same as above
  327             hasALIAS EQU 2                  has-algebraic-alias flag
  328             hasPDATA EQU 1                  has-parse-data flag
  329
  330
  331             hasDER EQU 8                    has-derivative flag
  332             hasINV EQU 4                    has-inverse flag
  333             hasCOLCT EQU 2                  has-COLCT-data flag
  334             hasEXPND EQU 1                  has-EXPND-data flag
  335
  336
  337             hasFORM EQU 8                   has-FORM-menu flag
  338             hasINTG EQU 4                   has-Integral-data flag
  339             hasWHERE EQU 2                  has-WHERE-code flag
  340             hasVUNS EQU 1                   has-veryunsymin-code flag
  341
  342
  343             pdEX EQU #0             general expression
  344             pdOP EQU #1             operator
  345             pdQE EQU #2             quoted expression
  346             pdQN EQU #3             quoted name
  347             pdLP EQU #4             left parenthesis
  348             pdRP EQU #5             right parenthesis
  349             pdCM EQU #6             comma (non-radix)
  350             pdEQ EQU #7             equal-sign separator
  351             pdOS0 EQU #8            optional repeat 0
  352             pdOS1 EQU #9            optional repeat 1
  353             pdOS2 EQU #A            optional repeat 2
  354             pdOS3 EQU #B            optional repeat 3
  355             pdOS4 EQU #C            optional repeat 4
  356             pdOS5 EQU #D            optional repeat 5
  357             pdOS6 EQU #E            optional repeat 6
  358             pdOS7 EQU #F            optional repeat 7
  359
  360             * RPL
  361             * RPL
  362             * insure RPL-mode exit
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
  378
  379
  380             * RPL
  381             * insure RPL-mode exit
  382
  383             * RPL
  384             * insure RPL-mode exit
  385
  386
  387
  388
  389
  390
  391
  392
  393
  394             * ( for internal use only
  395
  396
  397
  398
  399
  400
  401
  402
  403
  404
  405             * ( decimal 67
  406             * ( decimal 86
  407             * ( decimal 82
  408             * ( decimal 85
  409             * ( decimal 101
  410             * ( decimal 97
  411             * ( decimal 100
  412             * ( decimal 113
  413             * ( decimal 112
  414
  415             * ( check width
  416             * ( field character width
  417
  418             * ( decimal 67
  419             * ( decimal 85
  420             * ( decimal 97
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
  436
  437
  438             * RPL
  439             * insure RPL-mode exit
  440
  441             * ( decimal 66
  442             * ( decimal 67
  443             * ( decimal 69
  444             * ( decimal 82
  445             * ( decimal 83
  446             * ( decimal 84
  447             * ( decimal 85
  448             * ( decimal 86
  449             * ( decimal 87
  450
  451
  452             * ( norm-view default visible row count
  453             * ( default first row X location
  454             * ( default first row Y location
  455             * ( default row width
  456             * ( default row height
  457
  458             * ( max-view width
  459             * ( max-view height
  460             * ( max-view default visible row count
  461
  462             * ( prompt area height
  463
  464             * ( more-up/down icon width
  465
  466
  467
  468             * RPL
  469             * insure RPL-mode exit
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
  683
  684
  685             * RPL
  686             * insure RPL-mode exit
  687
  688
  689
  690             * ( set for informations
  691             * ( set for step by step mode on
  692             * ( internal use: true if VXXL success
  693             * ( set for no gcd computations
  694             * ( set for complex mode
  695             * ( internal use:       LN->-INV[-LN]]
  696             * ( set for approx mode
  697             * ( set for TSIMP call inside SERIES
  698             * ( internal use:       modular computation
  699             * ( internal use:       testing remainder=0
  700             * ( set to allow numeric factorization
  701             * ( set for large matrices
  702             * ( set: don't simplify inside non rational operation
  703             * ( set to see i as an irrquad c=-1
  704             * ( set to disable linearity simplif.
  705             * ( set for increasing power x+1 -> 1+x
  706             * ( internal use:       sqrt not as irrquad
  707             * ( set if sin are prefered to cos
  708             * ( set for menu as choosebox
  709             * ( set if xINT is not simplified
  710             * ( set if non rigourous mode
  711             * ( set to allow silent mode switch
  712             * ( set if xLN returns LN[ABS[]]
  713
  714
  715             * ASSEMBLE
  716
  717             MultiLineFl     EQU     65
  718             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  719             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  720             MultiLineStringsFl      EQU     66
  721             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  722             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  723             DigitalClockFl  EQU     67
  724             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  725             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  726             CmdAutoIndentFl EQU     68
  727             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  728             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  729             FullScreenEditFl        EQU     69
  730             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  731             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  732             MultiLine2GROBFl        EQU     70
  733             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  734             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  735             DesasmWithAdrFl EQU     71
  736             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  737             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  738             BigFontStackFl  EQU     72
  739             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  740             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  741             BigFontCmdFl    EQU     73
  742             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  743             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  744             RightJustifiedStackFl   EQU     74
  745             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  746             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  747             KeystrokeBeepFl EQU     75
  748             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  749             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  750             FilerConfirmationFl     EQU     76
  751             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  752             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  753             FilerConfirmFl  EQU     77
  754             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  755             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  756             KernelParamFl   EQU     78
  757             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  758             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  759             PrettyPrintFl   EQU     79
  760             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  761             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  762             SmallFontEQWStackFl     EQU     80
  763             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  764             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  765             SmallFontEQWGrobFl      EQU     81
  766             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  767             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  768             SmallFontEQWEditFl      EQU     82
  769             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  770             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  771             GrobDisplayFl   EQU     83
  772             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  773             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  774             MKSmallFontMenuFl       EQU     84
  775             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  776             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  777             SystemRPLStackFl        EQU     85
  778             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  779             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  780             MASDDecompilerFl        EQU     86
  781             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  782             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  783             RecursiveStackFl        EQU     87
  784             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  785             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  786             RecursiveEditFl EQU     88
  787             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  788             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  789             AddressesCLEFl  EQU     89
  790             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  791             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  792             SmallFontChooseFl       EQU     90
  793             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  794             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  795             ArrayOnlyFl     EQU     91
  796             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  797             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  798             MLMASDModeFl    EQU     92
  799             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  800             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  801             ErableHeaderFl  EQU     93
  802             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  803             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  804             AutoSaveFl      EQU     94
  805             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  806             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  807             AlgebraicModeFl EQU     95
  808             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  809             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  810             MenuOnFl        EQU     96
  811             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  812             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  813             VerticalListFl  EQU     97
  814             VerticalListNib EQU     ((VerticalListFl)-1)/4
  815             VerticalListBit EQU     ((VerticalListFl)-1)%4
  816             VerticalVectorFl        EQU     98
  817             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  818             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  819
  820
  821             ComplexFl       EQU     103
  822             ComplexNib      EQU     ((ComplexFl)-1)/4
  823             ComplexBit      EQU     ((ComplexFl)-1)%4
  824
  825
  826             ExactModeFl     EQU     105
  827             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  828             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  829
  830
  831             * RPL
  832
  833
  834
  835             * ASSEMBLE
  836                     SETLIST CODE, INCLUDE, PSEUDO
  837             * RPL
  838
  839             *|| Resuming file ALTform.s at line 15
  840             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALT48\ALT48.h
  841
  842             =RomId  EQU     #327
  843             * ROMID set to 327
  844
  845
  846
  847
  848
  849
  850             *|| Resuming file ALTform.s at line 18
  851             * ( Standard field height for HP48
  852             *EXTERNAL DoMsgBox
  853             * File  ALTform.s       22
  854             *EXTERNAL MsgBoxMenu
  855             * File  ALTform.s       24
  856 00000       =ALTform
  857             * File  ALTform.s       25
  858 00000 00000         CON(5)  =DOCOL
  859             * Label definitions (X pos    Y pos)
  860             * File  ALTform.s       27
  861 00005 00000         CON(5)  =DOCSTR
  862 0000A F0000         CON(5)  15
  863 0000F 3414C         NIBASC  \CALT:\
            445A3
  864 00019 00000         CON(5)  =ONE
  865 0001E 00000         CON(5)  =TEN
  866             * File  ALTform.s       28
  867 00023 00000         CON(5)  =DOCSTR
  868 00028 D0000         CON(5)  13
  869 0002D 15E48         NIBASC  \QNH:\
            4A3
  870 00035 00000         CON(5)  =FOURTHREE
  871 0003A 00000         CON(5)  =TEN
  872             * File  ALTform.s       29
  873 0003F 00000         CON(5)  =DOCSTR
  874 00044 F0000         CON(5)  15
  875 00049 0514C         NIBASC  \PALT:\
            445A3
  876 00053 00000         CON(5)  =ONE
  877 00058 00000         CON(5)  =NINETEEN
  878             * File  ALTform.s       30
  879 0005D 00000         CON(5)  =DOCSTR
  880 00062 D0000         CON(5)  13
  881 00067 35144         NIBASC  \SAT:\
            5A3
  882 0006F 00000         CON(5)  =FOURTHREE
  883 00074 00000         CON(5)  =NINETEEN
  884             * File  ALTform.s       31
  885 00079 00000         CON(5)  =DOCSTR
  886 0007E 11000         CON(5)  17
  887 00083 74E44         NIBASC  \GNDST:\
            43545
            A3
  888 0008F 00000         CON(5)  =ONE
  889 00094 00000         CON(5)  =TWENTYEIGHT
  890             * File  ALTform.s       32
  891 00099 00000         CON(5)  =DOCSTR
  892 0009E F0000         CON(5)  15
  893 000A3 4514C         NIBASC  \TALT:\
            445A3
  894 000AD 00000         CON(5)  =ONE
  895 000B2 00000         CON(5)  =THIRTYSEVEN
  896             * File  ALTform.s       33
  897 000B7 00000         CON(5)  =DOCSTR
  898 000BC F0000         CON(5)  15
  899 000C1 4414C         NIBASC  \DALT:\
            445A3
  900 000CB 00000         CON(5)  =FOURTHREE
  901 000D0 00000         CON(5)  =THIRTYSEVEN
  902             * File  ALTform.s       34
  903
  904             * Field definitions
  905             * File  ALTform.s       36
  906             * Field CA definition
  907             *        'DROPFALSE
  908             * File  ALTform.s       38
  909 000D5 00000         CON(5)  ='
  910 000DA 00000         CON(5)  =DOCOL
  911             * Field Message Handler
  912             * File  ALTform.s       39
  913 000DF 00000         CON(5)  =TWENTYFIVE
  914 000E4 00000         CON(5)  =#=case
  915 000E9 00000         CON(5)  =DOCOL
  916             * Get internal field value
  917             * File  ALTform.s       40
  918 000EE 00000         CON(5)  =DUPTYPEREAL?
  919 000F3 00000         CON(5)  =case
  920 000F8 00000         CON(5)  =DOCOL
  921             * REAL
  922             * File  ALTform.s       41
  923 000FD 00000         CON(5)  =DOCSTR
  924 00102 90000         CON(5)  9
  925 00107 6647          NIBASC  \ft\
  926 0010B 00000         CON(5)  =umEND
  927 00110 00000         CON(5)  =THREE
  928 00115 00000         CON(5)  =EXTN
  929             * Add default feet units
  930             *                              NOVAL BINT5
  931             *                                FLASHPTR IfSetFieldValue       ( Reset TA field )
  932             *                              NOVAL BINT6
  933             *                                FLASHPTR IfSetFieldValue                      ( Reset DA field )
  934             *                              BINT1 FLASHPTR IfGetFieldValue     ( Get QNH field value )
  935             *                              NOVAL EQUALNOT IT ::                                                                                                                     ( IF QNH is NOT NOVAL )
  936             *                                                                                               NOVAL BINT2                      ( THEN )
  937             *                                         FLASHPTR IfSetFieldValue       ( Reset PA FIELD )
  938             *                              ;
  939             * File  ALTform.s       51
  940 0011A 00000         CON(5)  =TRUE
  941             * Return external value
  942             * File  ALTform.s       52
  943 0011F 00000         CON(5)  =SEMI
  944             *                            DUPTYPEEXT? case ::             ( UNIT )
  945             *                              DUP ID CA EQUALNOT IT ::      ( IF field CA is changed )
  946             *                                NOVAL BINT5
  947             *                                  FLASHPTR IfSetFieldValue  ( Reset TA field )
  948             *                                NOVAL BINT6
  949             *                                  FLASHPTR IfSetFieldValue  ( Reset DA field )
  950             *                                BINT1 FLASHPTR IfGetFieldValue     ( Get QNH field value )
  951             *                                NOVAL EQUALNOT IT ::                                                                                                                   ( IF QNH is NOT NOVAL )
  952             *                                                                                                 NOVAL BINT2                      ( THEN )
  953             *                                         FLASHPTR IfSetFieldValue         ( Reset PA FIELD )
  954             *                                ;
  955             *                              ;
  956             *                              TRUE                        ( Return external value )
  957             *                            ;
  958             * File  ALTform.s       67
  959 00124 00000         CON(5)  =TRUE
  960             * Message was handled
  961             * File  ALTform.s       68
  962 00129 00000         CON(5)  =SEMI
  963             * File  ALTform.s       69
  964 0012E 00000         CON(5)  =FALSE
  965             * No other messages handled
  966             * File  ALTform.s       70
  967 00133 00000         CON(5)  =SEMI
  968             * File  ALTform.s       71
  969 00138 00000         CON(5)  =TWENTYTWO
  970 0013D 00000         CON(5)  =EIGHT
  971 00142 00000         CON(5)  =FORTYTHREE
  972 00147 00000         CON(5)  =NINE
  973             * Position & size
  974             * File  ALTform.s       72
  975 0014C 00000         CON(5)  =ONE
  976             * Field type: TEXT
  977             * File  ALTform.s       73
  978 00151 00000         CON(5)  =DOLIST
  979 00156 00000         CON(5)  =ZERO
  980 0015B 00000         CON(5)  =THIRTEEN
  981 00160 00000         CON(5)  =SEMI
  982             * Allowed type: REAL, UNIT
  983             * File  ALTform.s       74
  984 00165 00000         CON(5)  =TWO
  985             * Decompile with stack appearance
  986             * File  ALTform.s       75
  987 0016A 00000         CON(5)  =DOCSTR
  988 0016F 14000         CON(5)  65
  989 00174 3414C         NIBASC  \CALIBRATED ALTITUDE \
            49424
            25144554440214C445944555445402

  990 0019C 8264F         NIBASC  \(FOR TALT)\
            42502
            4514C44592

  991             * Help string
  992             * File  ALTform.s       76
  993 001B0 00000         CON(5)  =MINUSONE
  994             * ChooseData N/A
  995             * File  ALTform.s       77
  996 001B5 00000         CON(5)  =MINUSONE
  997             * ChooseDecomile
  998             * File  ALTform.s       78
  999 001BA 00000         CON(5)  =MINUSONE
 1000             * Reset value
 1001             * File  ALTform.s       79
 1002 001BF 00000         CON(5)  =DOIDNT
 1003 001C4 20            CON(2)  2
 1004 001C6 3414          NIBASC  \CA\
 1005             * Initial value
 1006             * File  ALTform.s       80
 1007
 1008             * File  ALTform.s       81
 1009             * Field QNH definition
 1010             *        'DROPFALSE
 1011             * File  ALTform.s       83
 1012 001CA 00000         CON(5)  ='
 1013 001CF 00000         CON(5)  =DOCOL
 1014             * Field Message Handler
 1015             * File  ALTform.s       84
 1016 001D4 00000         CON(5)  =TWENTYFIVE
 1017 001D9 00000         CON(5)  =#=case
 1018 001DE 00000         CON(5)  =DOCOL
 1019             * Get internval value
 1020             * File  ALTform.s       85
 1021 001E3 00000         CON(5)  =DUPTYPEREAL?
 1022 001E8 00000         CON(5)  =case
 1023 001ED 00000         CON(5)  =DOCOL
 1024             * REAL
 1025             * File  ALTform.s       86
 1026 001F2 00000         CON(5)  =DUP
 1027 001F7 00000         CON(5)  =DOREAL
 1028 001FC 100           NIBHEX  100
 1029 001FF 00000         NIBHEX  000000000005
            00000
            05
 1030 0020B 0             NIBHEX  0
 1031 0020C 00000         CON(5)  =%<
 1032 00211 00000         CON(5)  =ITE
 1033 00216 00000         CON(5)  =DOCOL
 1034             * IF it is < 50
 1035             * File  ALTform.s       87
 1036 0021B 00000         CON(5)  =DOCSTR
 1037 00220 D0000         CON(5)  13
 1038 00225 96E68         NIBASC  \inHg\
            476
 1039 0022D 00000         CON(5)  =umEND
 1040 00232 00000         CON(5)  =THREE
 1041 00237 00000         CON(5)  =EXTN
 1042             * add inHg units
 1043             * File  ALTform.s       88
 1044 0023C 00000         CON(5)  =SEMI
 1045             * File  ALTform.s       89
 1046 00241 00000         CON(5)  =DOCOL
 1047             * ELSE
 1048             * File  ALTform.s       90
 1049 00246 00000         CON(5)  =CHR_m
 1050 0024B 00000         CON(5)  =DOCSTR
 1051 00250 B0000         CON(5)  11
 1052 00255 26162         NIBASC  \bar\
            7
 1053 0025B 00000         CON(5)  =umP
 1054 00260 00000         CON(5)  =umEND
 1055             * add mbar units
 1056             * File  ALTform.s       91
 1057 00265 00000         CON(5)  =FIVE
 1058 0026A 00000         CON(5)  =EXTN
 1059             * File  ALTform.s       92
 1060 0026F 00000         CON(5)  =SEMI
 1061             *                       NOVAL BINT5
 1062             *                                FLASHPTR IfSetFieldValue         ( Reset TA field )
 1063             *                              NOVAL BINT6
 1064             *                                FLASHPTR IfSetFieldValue                      ( Reset DA field )
 1065             *                                                                               BINT0 FLASHPTR IfGetFieldValue     ( Get CA field value )
 1066             *                       NOVAL EQUALNOT IT ::               ( IF it is NOT NOVAL )
 1067             *                                                                   NOVAL BINT2                      ( THEN )
 1068             *                           FLASHPTR IfSetFieldValue       ( Reset PA field )
 1069             *                       ;
 1070             * File  ALTform.s       102
 1071 00274 00000         CON(5)  =TRUE
 1072             * Return external value
 1073             * File  ALTform.s       103
 1074 00279 00000         CON(5)  =SEMI
 1075             *                                                               DUPTYPEEXT? case ::
 1076             *                                                                 DUP ID QNH EQUALNOT IT ::
 1077             *                                                                   NOVAL BINT5
 1078             *                                                                     FLASHPTR IfSetFieldValue       ( Reset TA field )
 1079             *                                                                   NOVAL BINT6
 1080             *                                                                     FLASHPTR IfSetFieldValue       ( Reset DA field )
 1081             *                                                                   BINT0 FLASHPTR IfGetFieldValue   ( Get CA field value )
 1082             *                                                                   NOVAL EQUALNOT IT ::             ( IF it it NOT NOVAL )
 1083             *                                                                     NOVAL BINT2                    ( THEN )
 1084             *                                                                       FLASHPTR IfSetFieldValue     ( Reset PA field )
 1085             *                                                                   ;
 1086             *                                                                        ;
 1087             *                                                                        TRUE                      ( Return external value )
 1088             *                                                               ;
 1089             * File  ALTform.s       118
 1090 0027E 00000         CON(5)  =TRUE
 1091             * Message was handled
 1092             * File  ALTform.s       119
 1093 00283 00000         CON(5)  =SEMI
 1094             * File  ALTform.s       120
 1095 00288 00000         CON(5)  =FALSE
 1096             * No other messages handled
 1097             * File  ALTform.s       121
 1098 0028D 00000         CON(5)  =SEMI
 1099             * File  ALTform.s       122
 1100 00292 00000         CON(5)  =2LIST
 1101 00297 00000         CON(5)  =EIGHT
 1102 0029C 00000         CON(5)  =FORTYTHREE
 1103 002A1 00000         CON(5)  =NINE
 1104             * Position & size
 1105             * File  ALTform.s       123
 1106 002A6 00000         CON(5)  =ONE
 1107             * Field type: TEXT
 1108             * File  ALTform.s       124
 1109 002AB 00000         CON(5)  =DOLIST
 1110 002B0 00000         CON(5)  =ZERO
 1111 002B5 00000         CON(5)  =THIRTEEN
 1112 002BA 00000         CON(5)  =SEMI
 1113             * Allowed type: REAL, UNIT
 1114             * File  ALTform.s       125
 1115 002BF 00000         CON(5)  =TWO
 1116             * Decompile with stack appearance
 1117             * File  ALTform.s       126
 1118 002C4 00000         CON(5)  =DOCSTR
 1119 002C9 72000         CON(5)  39
 1120 002CE 14C44         NIBASC  \ALTIMETER SETTING\
            594D4
            54455425023554454594E474

 1121             * Help string
 1122             * File  ALTform.s       127
 1123 002F0 00000         CON(5)  =MINUSONE
 1124             * ChooseData N/A
 1125             * File  ALTform.s       128
 1126 002F5 00000         CON(5)  =MINUSONE
 1127             * ChooseDecompile
 1128             * File  ALTform.s       129
 1129 002FA 00000         CON(5)  =MINUSONE
 1130             * Reset value
 1131             * File  ALTform.s       130
 1132 002FF 00000         CON(5)  =DOIDNT
 1133 00304 30            CON(2)  3
 1134 00306 15E48         NIBASC  \QNH\
            4
 1135             * Initial value
 1136             * File  ALTform.s       131
 1137
 1138             * File  ALTform.s       132
 1139             * Field PA definition
 1140             *        'DROPFALSE
 1141             * File  ALTform.s       134
 1142 0030C 00000         CON(5)  ='
 1143 00311 00000         CON(5)  =DOCOL
 1144             * Field message handler
 1145             * File  ALTform.s       135
 1146 00316 00000         CON(5)  =TWENTYFIVE
 1147 0031B 00000         CON(5)  =#=case
 1148 00320 00000         CON(5)  =DOCOL
 1149             * Get internal value
 1150             * File  ALTform.s       136
 1151 00325 00000         CON(5)  =DUPTYPEREAL?
 1152 0032A 00000         CON(5)  =case
 1153 0032F 00000         CON(5)  =DOCOL
 1154             * REAL
 1155             * File  ALTform.s       137
 1156 00334 00000         CON(5)  =DOCSTR
 1157 00339 90000         CON(5)  9
 1158 0033E 6647          NIBASC  \ft\
 1159 00342 00000         CON(5)  =umEND
 1160 00347 00000         CON(5)  =THREE
 1161 0034C 00000         CON(5)  =EXTN
 1162             * Add default feet units
 1163             * File  ALTform.s       138
 1164 00351 00000         CON(5)  =DUP
 1165 00356 00000         CON(5)  =DOEXT
 1166 0035B 00000         CON(5)  =DOREAL
 1167 00360 400           NIBHEX  400
 1168 00363 00000         NIBHEX  000000000002
            00000
            02
 1169 0036F 0             NIBHEX  0
 1170 00370 00000         CON(5)  =DOCSTR
 1171 00375 70000         CON(5)  7
 1172 0037A D6            NIBASC  \m\
 1173 0037C 00000         CON(5)  =umEND
 1174 00381 00000         CON(5)  =SEMI
 1175             * File  ALTform.s       139
 1176 00386 00000         CON(5)  =UM>?
 1177 0038B 00000         CON(5)  =%0<>
 1178 00390 00000         CON(5)  =IT
 1179 00395 00000         CON(5)  =DOCOL
 1180             * IF PA is > 20 km
 1181             * File  ALTform.s       140
 1182 0039A 00000         CON(5)  =DROP
 1183             * DROP field value
 1184             * File  ALTform.s       141
 1185 0039F 00000         CON(5)  =ERRBEEP
 1186             * Error beep and display flashwarning message
 1187             * Message box parameters
 1188             * File  ALTform.s       143
 1189 003A4 00000         CON(5)  =DOCSTR
 1190 003A9 F2000         CON(5)  47
 1191 003AE 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

 1192 003D6 D6            NIBASC  \m\
 1193             * message$
 1194             * File  ALTform.s       144
 1195 003D8 00000         CON(5)  =TWELVE
 1196             * #maxwidth
 1197             * File  ALTform.s       145
 1198 003DD 00000         CON(5)  =TEN
 1199             * #minwidth
 1200             * File  ALTform.s       146
 1201 003E2 00000         CON(5)  =DOROMP
 1202 003E7 00000         CON(6)  =~grobAlertIcon
            0
 1203             * grob
 1204             * File  ALTform.s       147
 1205 003ED 00000         CON(5)  =DOROMP
 1206 003F2 00000         CON(6)  =~MsgBoxMenu
            0
 1207             * menuobject
 1208             * File  ALTform.s       148
 1209 003F8 00000         CON(5)  =DOROMP
 1210 003FD 00000         CON(6)  =~DoMsgBox
            0
 1211 00403 00000         CON(5)  =DROP
 1212             * Draw the message box, DROP FLAG
 1213             * File  ALTform.s       149
 1214 00408 00000         CON(5)  =DOIDNT
 1215 0040D 20            CON(2)  2
 1216 0040F 0514          NIBASC  \PA\
 1217             * Keep original field value
 1218             *                                                                                 "ERROR: Alt.    > 20 km"         ( Display warning message and error beep )
 1219             *                                                                                   FlashWarning
 1220             *                                                                                 BINT1 FLASHPTR IfSetField        ( Keep field focus )
 1221             *                                                                                 NOVAL                            ( Set PA field value to NOVAL )
 1222             *                  ID PA                            ( Keep original field value )
 1223             * File  ALTform.s       155
 1224 00413 00000         CON(5)  =SEMI
 1225             *                       ::                                 ( ELSE )
 1226             *                         NOVAL BINT5
 1227             *                           FLASHPTR IfSetFieldValue         ( Reset TA field )
 1228             *                         NOVAL BINT6
 1229             *                           FLASHPTR IfSetFieldValue         ( Reset DA field )
 1230             *                         BINT1 FLASHPTR IfGetFieldValue     ( Get QNH field )
 1231             *                         NOVAL EQUALNOT IT ::               ( IF it is NOT NOVAL )
 1232             *                                       NOVAL BINT0                      ( THEN )
 1233             *                                                                                                 FLASHPTR IfSetFieldValue       ( Reset CA field )
 1234             *                                                                                 ;
 1235             *                                                                               ;
 1236             * File  ALTform.s       167
 1237 00418 00000         CON(5)  =TRUE
 1238             * Return external value
 1239             * File  ALTform.s       168
 1240 0041D 00000         CON(5)  =SEMI
 1241             * File  ALTform.s       169
 1242 00422 00000         CON(5)  =DUPTYPEEXT?
 1243 00427 00000         CON(5)  =case
 1244 0042C 00000         CON(5)  =DOCOL
 1245             * UNIT
 1246             * File  ALTform.s       170
 1247 00431 00000         CON(5)  =DUP
 1248 00436 00000         CON(5)  =DOEXT
 1249 0043B 00000         CON(5)  =DOREAL
 1250 00440 400           NIBHEX  400
 1251 00443 00000         NIBHEX  000000000002
            00000
            02
 1252 0044F 0             NIBHEX  0
 1253 00450 00000         CON(5)  =DOCSTR
 1254 00455 70000         CON(5)  7
 1255 0045A D6            NIBASC  \m\
 1256 0045C 00000         CON(5)  =umEND
 1257 00461 00000         CON(5)  =SEMI
 1258             * File  ALTform.s       171
 1259 00466 00000         CON(5)  =UM>?
 1260 0046B 00000         CON(5)  =%0<>
 1261 00470 00000         CON(5)  =IT
 1262 00475 00000         CON(5)  =DOCOL
 1263             * IF PA is > 20 km
 1264             * File  ALTform.s       172
 1265 0047A 00000         CON(5)  =DROP
 1266             * DROP field value
 1267             * File  ALTform.s       173
 1268 0047F 00000         CON(5)  =ERRBEEP
 1269             * Error beep and display flashwarning message
 1270             * Message box parameters
 1271             * File  ALTform.s       175
 1272 00484 00000         CON(5)  =DOCSTR
 1273 00489 F2000         CON(5)  47
 1274 0048E 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

 1275 004B6 D6            NIBASC  \m\
 1276             * message$
 1277             * File  ALTform.s       176
 1278 004B8 00000         CON(5)  =TWELVE
 1279             * #maxwidth
 1280             * File  ALTform.s       177
 1281 004BD 00000         CON(5)  =TEN
 1282             * #minwidth
 1283             * File  ALTform.s       178
 1284 004C2 00000         CON(5)  =DOROMP
 1285 004C7 00000         CON(6)  =~grobAlertIcon
            0
 1286             * grob
 1287             * File  ALTform.s       179
 1288 004CD 00000         CON(5)  =DOROMP
 1289 004D2 00000         CON(6)  =~MsgBoxMenu
            0
 1290             * menuobject
 1291             * File  ALTform.s       180
 1292 004D8 00000         CON(5)  =DOROMP
 1293 004DD 00000         CON(6)  =~DoMsgBox
            0
 1294 004E3 00000         CON(5)  =DROP
 1295             * Draw the message box, DROP FLAG
 1296             * File  ALTform.s       181
 1297 004E8 00000         CON(5)  =DOIDNT
 1298 004ED 20            CON(2)  2
 1299 004EF 0514          NIBASC  \PA\
 1300             * Keep original field value
 1301             *                                       "ERROR: Alt.    > 20 km"       ( Display warning message and error beep )
 1302             *                                                                                     FlashWarning
 1303             *                                       BINT1 FLASHPTR IfSetField      ( Keep field focus )
 1304             *                                       NOVAL                          ( Set PA field value to NOVAL )
 1305             *                    ID PA                          ( Keep original field value )
 1306             * File  ALTform.s       187
 1307 004F3 00000         CON(5)  =SEMI
 1308             *                         ::                               ( ELSE )
 1309             *                           DUP ID PA EQUALNOT IT ::           ( IF the value has changed )
 1310             *                             NOVAL BINT5
 1311             *                               FLASHPTR IfSetFieldValue       ( Reset TA field )
 1312             *                             NOVAL BINT6
 1313             *                               FLASHPTR IfSetFieldValue       ( Reset DA field )
 1314             *                             BINT1 FLASHPTR IfGetFieldValue   ( Get QNH field )
 1315             *                             NOVAL EQUALNOT IT ::             ( IF it is NOT NOVAL )
 1316             *                               NOVAL BINT0                    ( THEN )
 1317             *                                 FLASHPTR IfSetFieldValue     ( Reset CA field )
 1318             *                             ;
 1319             *                           ;
 1320             *                         ;
 1321             * File  ALTform.s       201
 1322 004F8 00000         CON(5)  =TRUE
 1323             * Return external value
 1324             * File  ALTform.s       202
 1325 004FD 00000         CON(5)  =SEMI
 1326             * File  ALTform.s       203
 1327 00502 00000         CON(5)  =TRUE
 1328             * Message was handled
 1329             * File  ALTform.s       204
 1330 00507 00000         CON(5)  =SEMI
 1331             * File  ALTform.s       205
 1332 0050C 00000         CON(5)  =FALSE
 1333             * No other messages handled
 1334             * File  ALTform.s       206
 1335 00511 00000         CON(5)  =SEMI
 1336             * File  ALTform.s       207
 1337 00516 00000         CON(5)  =TWENTYTWO
 1338 0051B 00000         CON(5)  =SEVENTEEN
 1339 00520 00000         CON(5)  =FORTYTHREE
 1340 00525 00000         CON(5)  =NINE
 1341             * Position & size
 1342             * File  ALTform.s       208
 1343 0052A 00000         CON(5)  =ONE
 1344             * Field type: TEXT
 1345             * File  ALTform.s       209
 1346 0052F 00000         CON(5)  =DOLIST
 1347 00534 00000         CON(5)  =ZERO
 1348 00539 00000         CON(5)  =THIRTEEN
 1349 0053E 00000         CON(5)  =SEMI
 1350             * Allowed type: REAL, UNIT
 1351             * File  ALTform.s       210
 1352 00543 00000         CON(5)  =TWO
 1353             * Decompile with stack appearance
 1354             * File  ALTform.s       211
 1355 00548 00000         CON(5)  =DOCSTR
 1356 0054D 72000         CON(5)  39
 1357 00552 05255         NIBASC  \PRESSURE ALTITUDE\
            43535
            5525540214C4459445554454

 1358             * Help string
 1359             * File  ALTform.s       212
 1360 00574 00000         CON(5)  =MINUSONE
 1361             * ChooseData N/A
 1362             * File  ALTform.s       213
 1363 00579 00000         CON(5)  =MINUSONE
 1364             * ChooseDecomile
 1365             * File  ALTform.s       214
 1366 0057E 00000         CON(5)  =MINUSONE
 1367             * Reset value
 1368             * File  ALTform.s       215
 1369 00583 00000         CON(5)  =DOIDNT
 1370 00588 20            CON(2)  2
 1371 0058A 0514          NIBASC  \PA\
 1372             * Initial value
 1373             * File  ALTform.s       216
 1374
 1375             * File  ALTform.s       217
 1376             * Field SAT definition
 1377             *        'DROPFALSE
 1378             * File  ALTform.s       219
 1379 0058E 00000         CON(5)  ='
 1380 00593 00000         CON(5)  =DOCOL
 1381             * Field message handler
 1382             * File  ALTform.s       220
 1383 00598 00000         CON(5)  =TWENTYFIVE
 1384 0059D 00000         CON(5)  =#=case
 1385 005A2 00000         CON(5)  =DOCOL
 1386             * Get internal value
 1387             * File  ALTform.s       221
 1388 005A7 00000         CON(5)  =DUPTYPEREAL?
 1389 005AC 00000         CON(5)  =case
 1390 005B1 00000         CON(5)  =DOCOL
 1391             * REAL
 1392             * File  ALTform.s       222
 1393 005B6 00000         CON(5)  =DOCSTR
 1394 005BB 90000         CON(5)  9
 1395 005C0 0B            CON(2)  #B0
 1396 005C2 34            NIBASC  \C\
 1397 005C4 00000         CON(5)  =umEND
 1398 005C9 00000         CON(5)  =THREE
 1399 005CE 00000         CON(5)  =EXTN
 1400             * Add default deg C units
 1401             *                              NOVAL BINT5                  ( Reset TA field )
 1402             *                                FLASHPTR IfSetFieldValue
 1403             *                              NOVAL BINT6                  ( Reset DA field )
 1404             *                                FLASHPTR IfSetFieldValue
 1405             * File  ALTform.s       227
 1406 005D3 00000         CON(5)  =TRUE
 1407             * Return external value
 1408             * File  ALTform.s       228
 1409 005D8 00000         CON(5)  =SEMI
 1410             *                            DUPTYPEEXT? case ::              ( UNIT )
 1411             *                              DUP ID SAT EQUALNOT IT ::      ( IF the value has changed )
 1412             *                                NOVAL BINT5                  ( Reset TA field )
 1413             *                                  FLASHPTR IfSetFieldValue
 1414             *                                NOVAL BINT6                  ( Reset DA field )
 1415             *                                  FLASHPTR IfSetFieldValue
 1416             *                              ;
 1417             *                              TRUE                        ( Return external value )
 1418             *                            ;
 1419             * File  ALTform.s       238
 1420 005DD 00000         CON(5)  =TRUE
 1421             * Message was handled
 1422             * File  ALTform.s       239
 1423 005E2 00000         CON(5)  =SEMI
 1424             * File  ALTform.s       240
 1425 005E7 00000         CON(5)  =FALSE
 1426             * No other messages handled
 1427             * File  ALTform.s       241
 1428 005EC 00000         CON(5)  =SEMI
 1429             * File  ALTform.s       242
 1430 005F1 00000         CON(5)  =2LIST
 1431 005F6 00000         CON(5)  =SEVENTEEN
 1432 005FB 00000         CON(5)  =FORTYTHREE
 1433 00600 00000         CON(5)  =NINE
 1434             * Position & size
 1435             * File  ALTform.s       243
 1436 00605 00000         CON(5)  =ONE
 1437             * Field type: TEXT
 1438             * File  ALTform.s       244
 1439 0060A 00000         CON(5)  =DOLIST
 1440 0060F 00000         CON(5)  =ZERO
 1441 00614 00000         CON(5)  =THIRTEEN
 1442 00619 00000         CON(5)  =SEMI
 1443             * Allowed type: REAL, UNIT
 1444             * File  ALTform.s       245
 1445 0061E 00000         CON(5)  =TWO
 1446             * Decompile with stack appearance
 1447             * File  ALTform.s       246
 1448 00623 00000         CON(5)  =DOCSTR
 1449 00628 73000         CON(5)  55
 1450 0062D 45255         NIBASC  \TRUE AIR TEMPERATURE\
            55402
            149425024554D40554251445552554

 1451 00655 0282          NIBASC  \ (\
 1452 00659 0B            CON(2)  #B0
 1453 0065B 3492          NIBASC  \C)\
 1454             * Help string
 1455             * File  ALTform.s       247
 1456 0065F 00000         CON(5)  =MINUSONE
 1457             * ChooseData N/A
 1458             * File  ALTform.s       248
 1459 00664 00000         CON(5)  =MINUSONE
 1460             * ChooseDecompile
 1461             * File  ALTform.s       249
 1462 00669 00000         CON(5)  =MINUSONE
 1463             * Reset value
 1464             * File  ALTform.s       250
 1465 0066E 00000         CON(5)  =DOIDNT
 1466 00673 30            CON(2)  3
 1467 00675 35144         NIBASC  \SAT\
            5
 1468             * Initial value
 1469             * File  ALTform.s       251
 1470
 1471             * File  ALTform.s       252
 1472             * Field GNDST definition
 1473             *        'DROPFALSE
 1474             * File  ALTform.s       254
 1475 0067B 00000         CON(5)  ='
 1476 00680 00000         CON(5)  =DOCOL
 1477             * Field message handler
 1478             * File  ALTform.s       255
 1479 00685 00000         CON(5)  =TWENTYFIVE
 1480 0068A 00000         CON(5)  =#=case
 1481 0068F 00000         CON(5)  =DOCOL
 1482             * Get internal value
 1483             * File  ALTform.s       256
 1484 00694 00000         CON(5)  =DUPTYPEREAL?
 1485 00699 00000         CON(5)  =case
 1486 0069E 00000         CON(5)  =DOCOL
 1487             * REAL
 1488             * File  ALTform.s       257
 1489 006A3 00000         CON(5)  =DOCSTR
 1490 006A8 90000         CON(5)  9
 1491 006AD 6647          NIBASC  \ft\
 1492 006B1 00000         CON(5)  =umEND
 1493 006B6 00000         CON(5)  =THREE
 1494 006BB 00000         CON(5)  =EXTN
 1495             * Add default feet units
 1496             *                       NOVAL BINT5                  ( Reset TA field )
 1497             *                         FLASHPTR IfSetFieldValue
 1498             *                       NOVAL BINT6                  ( Reset DA field )
 1499             *                         FLASHPTR IfSetFieldValue
 1500             *                       BINT6 FLASHPTR IfSetField    ( Set focus to CA )
 1501             * File  ALTform.s       263
 1502 006C0 00000         CON(5)  =TRUE
 1503             * Return external value
 1504             * File  ALTform.s       264
 1505 006C5 00000         CON(5)  =SEMI
 1506             *                     DUPTYPEEXT? case ::              ( UNIT )
 1507             *                       DUP ID GNDST EQUALNOT IT ::    ( IF field value has changed )
 1508             *                         NOVAL BINT5                  ( Reset TA field )
 1509             *                           FLASHPTR IfSetFieldValue
 1510             *                         NOVAL BINT6                  ( Reset DA field )
 1511             *                           FLASHPTR IfSetFieldValue
 1512             *                         BINT6 FLASHPTR IfSetField    ( Set focus to CA )
 1513             *                       ;
 1514             *                       TRUE                        ( Return external value )
 1515             *                     ;
 1516             * File  ALTform.s       275
 1517 006CA 00000         CON(5)  =TRUE
 1518             * Message was handled
 1519             * File  ALTform.s       276
 1520 006CF 00000         CON(5)  =SEMI
 1521             * File  ALTform.s       277
 1522 006D4 00000         CON(5)  =FALSE
 1523             * No other messages handled
 1524             * File  ALTform.s       278
 1525 006D9 00000         CON(5)  =SEMI
 1526             * File  ALTform.s       279
 1527 006DE 00000         CON(5)  =TWENTYFIVE
 1528 006E3 00000         CON(5)  =TWENTYSIX
 1529 006E8 00000         CON(5)  =FIFTYFIVE
 1530 006ED 00000         CON(5)  =NINE
 1531             * Position & size
 1532             * File  ALTform.s       280
 1533 006F2 00000         CON(5)  =ONE
 1534             * Field type: TEXT
 1535             * File  ALTform.s       281
 1536 006F7 00000         CON(5)  =DOLIST
 1537 006FC 00000         CON(5)  =ZERO
 1538 00701 00000         CON(5)  =THIRTEEN
 1539 00706 00000         CON(5)  =SEMI
 1540             * Allowed type: REAL, UNIT
 1541             * File  ALTform.s       282
 1542 0070B 00000         CON(5)  =TWO
 1543             * Decompile with stack appearance
 1544             * File  ALTform.s       283
 1545 00710 00000         CON(5)  =DOCSTR
 1546 00715 34000         CON(5)  67
 1547 0071A 7425F         NIBASC  \GROUND STATION ELEV.\
            455E4
            44023545144594F4E40254C45465E2

 1548 00742 02826         NIBASC  \ (FOR TALT)\
            4F425
            024514C44592

 1549             * Help string
 1550             * File  ALTform.s       284
 1551 00758 00000         CON(5)  =MINUSONE
 1552             * ChooseData N/A
 1553             * File  ALTform.s       285
 1554 0075D 00000         CON(5)  =MINUSONE
 1555             * ChooseDecompile
 1556             * File  ALTform.s       286
 1557 00762 00000         CON(5)  =DOEXT
 1558 00767 00000         CON(5)  =DOREAL
 1559 0076C 000           NIBHEX  000
 1560 0076F 00000         NIBHEX  000000000000
            00000
            00
 1561 0077B 0             NIBHEX  0
 1562 0077C 00000         CON(5)  =DOCSTR
 1563 00781 90000         CON(5)  9
 1564 00786 6647          NIBASC  \ft\
 1565 0078A 00000         CON(5)  =umEND
 1566 0078F 00000         CON(5)  =SEMI
 1567             * Reset Value
 1568             * File  ALTform.s       287
 1569 00794 00000         CON(5)  =DOIDNT
 1570 00799 50            CON(2)  5
 1571 0079B 74E44         NIBASC  \GNDST\
            43545
 1572             * Initial Value
 1573             * File  ALTform.s       288
 1574
 1575             * File  ALTform.s       289
 1576             * Field TA definition
 1577             * File  ALTform.s       290
 1578 007A5 00000         CON(5)  ='DROPFALSE
 1579             * Field message handler
 1580             * File  ALTform.s       291
 1581 007AA 00000         CON(5)  =TWENTYTWO
 1582 007AF 00000         CON(5)  =THIRTYFIVE
 1583 007B4 00000         CON(5)  =FORTYTHREE
 1584 007B9 00000         CON(5)  =NINE
 1585             * Position & size
 1586             * File  ALTform.s       292
 1587 007BE 00000         CON(5)  =ONE
 1588             * Field type: TEXT
 1589             * File  ALTform.s       293
 1590 007C3 00000         CON(5)  =DOLIST
 1591 007C8 00000         CON(5)  =ZERO
 1592 007CD 00000         CON(5)  =THIRTEEN
 1593 007D2 00000         CON(5)  =SEMI
 1594             * Allowed type:  REAL, UNIT
 1595             * File  ALTform.s       294
 1596 007D7 00000         CON(5)  =TWO
 1597             * Decompile with stack appearance
 1598             * File  ALTform.s       295
 1599 007DC 00000         CON(5)  =DOCSTR
 1600 007E1 13000         CON(5)  49
 1601 007E6 45255         NIBASC  \TRUE ALTITUDE (OUTPU\
            55402
            14C44594455544540282F455450555

 1602 0080E 4592          NIBASC  \T)\
 1603             * Help string
 1604             * File  ALTform.s       296
 1605 00812 00000         CON(5)  =MINUSONE
 1606             * ChooseData N/A
 1607             * File  ALTform.s       297
 1608 00817 00000         CON(5)  =MINUSONE
 1609             * ChooseDecompile
 1610             * File  ALTform.s       298
 1611 0081C 00000         CON(5)  =MINUSONE
 1612             * Reset Value
 1613             * File  ALTform.s       299
 1614 00821 00000         CON(5)  =DOIDNT
 1615 00826 20            CON(2)  2
 1616 00828 4514          NIBASC  \TA\
 1617             * Initial Value
 1618             * File  ALTform.s       300
 1619
 1620             * File  ALTform.s       301
 1621             * Field DA definition
 1622             * File  ALTform.s       302
 1623 0082C 00000         CON(5)  ='DROPFALSE
 1624             * Field message handler
 1625             * File  ALTform.s       303
 1626 00831 00000         CON(5)  =2LIST
 1627 00836 00000         CON(5)  =THIRTYFIVE
 1628 0083B 00000         CON(5)  =FORTYTHREE
 1629 00840 00000         CON(5)  =NINE
 1630             * Position & size
 1631             * File  ALTform.s       304
 1632 00845 00000         CON(5)  =ONE
 1633             * Field type: TEXT
 1634             * File  ALTform.s       305
 1635 0084A 00000         CON(5)  =DOLIST
 1636 0084F 00000         CON(5)  =ZERO
 1637 00854 00000         CON(5)  =THIRTEEN
 1638 00859 00000         CON(5)  =SEMI
 1639             * Allowed type: REAL, UNIT
 1640             * File  ALTform.s       306
 1641 0085E 00000         CON(5)  =TWO
 1642             * Decompile with stack appearance
 1643             * File  ALTform.s       307
 1644 00863 00000         CON(5)  =DOCSTR
 1645 00868 93000         CON(5)  57
 1646 0086D 4454E         NIBASC  \DENSITY ALTITUDE (OU\
            43594
            45950214C44594455544540282F455

 1647 00895 45055         NIBASC  \TPUT) \
            54592
            02
 1648             * Help string
 1649             * File  ALTform.s       308
 1650 008A1 00000         CON(5)  =MINUSONE
 1651             * ChooseData N/A
 1652             * File  ALTform.s       309
 1653 008A6 00000         CON(5)  =MINUSONE
 1654             * ChooseDecompile
 1655             * File  ALTform.s       310
 1656 008AB 00000         CON(5)  =MINUSONE
 1657             * Reset Value
 1658             * File  ALTform.s       311
 1659 008B0 00000         CON(5)  =DOIDNT
 1660 008B5 20            CON(2)  2
 1661 008B7 4414          NIBASC  \DA\
 1662             * Initial value
 1663             * File  ALTform.s       312
 1664
 1665             * File  ALTform.s       313
 1666 008BB 00000         CON(5)  =SEVEN
 1667 008C0 00000         CON(5)  =SEVEN
 1668             * Label & field counts
 1669             * File  ALTform.s       314
 1670 008C5 00000         CON(5)  ='DROPFALSE
 1671             * Inform Box message handler
 1672             * File  ALTform.s       315
 1673 008CA 00000         CON(5)  =DOCSTR
 1674 008CF 51000         CON(5)  21
 1675 008D4 14C44         NIBASC  \ALTITUDE\
            59445
            554454
 1676             * Title
 1677             * File  ALTform.s       316
 1678 008E4 00000         CON(5)  =DoInputForm
 1679             * Create and run the input form
 1680             * File  ALTform.s       317
 1681 008E9 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:11:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       ALTform.a      Page    2

 #=case                            Ext                   -   914  1017  1147
                                        1384  1480
 %0<>                              Ext                   -  1177  1260
 %<                                Ext                   -  1031
 '                                 Ext                   -   909  1012  1142
                                        1379  1475
 'DROPFALSE                        Ext                   -  1578  1623  1670
 2LIST                             Ext                   -  1100  1430  1626
=ALTform                           Rel       0 #00000000 -   856
 AddressesCLEBit                   Abs       0 #00000000 -   791
 AddressesCLEFl                    Abs      89 #00000059 -   789   790   791
 AddressesCLENib                   Abs      22 #00000016 -   790
 AlarmBeepBit                      Abs       0 #00000000 -   178
 AlarmBeepFl                       Abs      57 #00000039 -   166   177   178
 AlarmBeepNib                      Abs      14 #0000000E -   177
 AlgebraicModeBit                  Abs       2 #00000002 -   809
 AlgebraicModeFl                   Abs      95 #0000005F -   807   808   809
 AlgebraicModeNib                  Abs      23 #00000017 -   808
 AngleBCt                          Abs       2 #00000002 -   129
 AngleBit1                         Abs       0 #00000000 -   181   182
 AngleBit2                         Abs       1 #00000001 -   182
 AngleFl1                          Abs      17 #00000011 -   128   180   181
 AngleNib                          Abs       4 #00000004 -   180
 ArrayOnlyBit                      Abs       2 #00000002 -   797
 ArrayOnlyFl                       Abs      91 #0000005B -   795   796   797
 ArrayOnlyNib                      Abs      22 #00000016 -   796
 AutoSaveBit                       Abs       1 #00000001 -   806
 AutoSaveFl                        Abs      94 #0000005E -   804   805   806
 AutoSaveNib                       Abs      23 #00000017 -   805
 BigFontCmdBit                     Abs       0 #00000000 -   743
 BigFontCmdFl                      Abs      73 #00000049 -   741   742   743
 BigFontCmdNib                     Abs      18 #00000012 -   742
 BigFontStackBit                   Abs       3 #00000003 -   740
 BigFontStackFl                    Abs      72 #00000048 -   738   739   740
 BigFontStackNib                   Abs      17 #00000011 -   739
 BinBaseBCt                        Abs       2 #00000002 -   124
 BinBaseBit1                       Abs       2 #00000002 -   185
 BinBaseFl1                        Abs      11 #0000000B -   123   184   185
 BinBaseNib                        Abs       2 #00000002 -   184
 BinWordSBCt                       Abs       6 #00000006 -   122
 BinWordSBit1                      Abs       0 #00000000 -   188
 BinWordSFl1                       Abs       5 #00000005 -   121   187   188
 BinWordSNib                       Abs       1 #00000001 -   187
 CHR_m                             Ext                   -  1049
 CarefulBit                        Abs       3 #00000003 -   191
 CarefulFl                         Abs       4 #00000004 -   119   190   191
 CarefulNib                        Abs       0 #00000000 -   190
 ClockFmtBit                       Abs       0 #00000000 -   194
 ClockFmtFl                        Abs      41 #00000029 -   151   193   194
 ClockFmtNib                       Abs      10 #0000000A -   193
 ClockOnBit                        Abs       3 #00000003 -   197
 ClockOnFl                         Abs      40 #00000028 -   150   196   197
 ClockOnNib                        Abs       9 #00000009 -   196
 CmdAutoIndentBit                  Abs       3 #00000003 -   728
 CmdAutoIndentFl                   Abs      68 #00000044 -   726   727   728
 CmdAutoIndentNib                  Abs      16 #00000010 -   727
 ComVecDiBCt                       Abs       2 #00000002 -   127
 ComVecDiBit1                      Abs       2 #00000002 -   203
 ComVecDiFl1                       Abs      15 #0000000F -   126   202   203
 ComVecDiNib                       Abs       3 #00000003 -   202
 Complex2DBit                      Abs       2 #00000002 -   200
 Complex2DFl                       Abs      19 #00000013 -   130   199   200
 Complex2DNib                      Abs       4 #00000004 -   199
 ComplexBit                        Abs       2 #00000002 -   823
 ComplexFl                         Abs     103 #00000067 -   821   822   823
 ComplexNib                        Abs      25 #00000019 -   822
 ConnectPtBit                      Abs       2 #00000002 -   206
 ConnectPtFl                       Abs      31 #0000001F -   140   205   206
 ConnectPtNib                      Abs       7 #00000007 -   205
 ConstantsBit                      Abs       1 #00000001 -   209
 ConstantsFl                       Abs       2 #00000002 -   117   208   209
 ConstantsNib                      Abs       0 #00000000 -   208
 DOCOL                             Ext                   -   858   910   915
                                         920  1013  1018  1023  1033  1046  1143
                                        1148  1153  1179  1244  1262  1380  1385
                                        1390  1476  1481  1486
 DOCSTR                            Ext                   -   861   867   873
                                         879   885   891   897   923   987  1036
                                        1050  1118  1156  1170  1189  1253  1272
                                        1355  1393  1448  1489  1545  1562  1599
                                        1644  1673
 DOEXT                             Ext                   -  1165  1248  1557
 DOIDNT                            Ext                   -  1002  1132  1214
                                        1297  1369  1465  1569  1614  1659
 DOLIST                            Ext                   -   978  1109  1346
                                        1439  1536  1590  1635
 DOREAL                            Ext                   -  1027  1166  1249
                                        1558
 DOROMP                            Ext                   -  1201  1205  1209
                                        1284  1288  1292
 DROP                              Ext                   -  1182  1211  1265
                                        1294
 DUP                               Ext                   -  1026  1164  1247
 DUPTYPEEXT?                       Ext                   -  1242
 DUPTYPEREAL?                      Ext                   -   918  1021  1151
                                        1388  1484
 DateFmtBit                        Abs       1 #00000001 -   212
 DateFmtFl                         Abs      42 #0000002A -   152   211   212
 DateFmtNib                        Abs      10 #0000000A -   211
 DblSpaceBit                       Abs       0 #00000000 -   215
 DblSpaceFl                        Abs      37 #00000025 -   146   214   215
 DblSpaceNib                       Abs       9 #00000009 -   214
 DefSysF32-01                      Abs67178480 #04010FF0 -    41
 DefSysF64-33                      Abs       0 #00000000 -    40
 DefSysF65-96                      Abs1107296256 #42000000 -    42
 DefSysF97-128                     Abs       0 #00000000 -    43
 DelNRAlmBit                       Abs       3 #00000003 -   218
 DelNRAlmFl                        Abs      44 #0000002C -   154   217   218
 DelNRAlmNib                       Abs      10 #0000000A -   217
 DesasmWithAdrBit                  Abs       2 #00000002 -   737
 DesasmWithAdrFl                   Abs      71 #00000047 -   735   736   737
 DesasmWithAdrNib                  Abs      17 #00000011 -   736
 DigitalClockBit                   Abs       2 #00000002 -   725
 DigitalClockFl                    Abs      67 #00000043 -   723   724   725
 DigitalClockNib                   Abs      16 #00000010 -   724
 DoInputForm                       Ext                   -  1678
 EIGHT                             Ext                   -   970  1101
 ERRBEEP                           Ext                   -  1185  1268
 EXTN                              Ext                   -   928  1041  1058
                                        1161  1399  1494
 ErableHeaderBit                   Abs       0 #00000000 -   803
 ErableHeaderFl                    Abs      93 #0000005D -   801   802   803
 ErableHeaderNib                   Abs      23 #00000017 -   802
 ErrorBeepBit                      Abs       3 #00000003 -   221
 ErrorBeepFl                       Abs      56 #00000038 -   165   220   221
 ErrorBeepNib                      Abs      13 #0000000D -   220
 ExactModeBit                      Abs       0 #00000000 -   828
 ExactModeFl                       Abs     105 #00000069 -   826   827   828
 ExactModeNib                      Abs      26 #0000001A -   827
 FALSE                             Ext                   -   964  1095  1332
                                        1425  1522
 FIFTYFIVE                         Ext                   -  1529
 FIVE                              Ext                   -  1057
 FORTYTHREE                        Ext                   -   971  1102  1339
                                        1432  1583  1628
 FOURTHREE                         Ext                   -   870   882   900
 FastEViewBit                      Abs       2 #00000002 -   224
 FastEViewNib                      Abs      14 #0000000E -   223
 FastEqViewFl                      Abs      59 #0000003B -   168   223   224
 FilerConfirmBit                   Abs       0 #00000000 -   755
 FilerConfirmFl                    Abs      77 #0000004D -   753   754   755
 FilerConfirmNib                   Abs      19 #00000013 -   754
 FilerConfirmationBit              Abs       3 #00000003 -   752
 FilerConfirmationFl               Abs      76 #0000004C -   750   751   752
 FilerConfirmationNib              Abs      18 #00000012 -   751
 FullScreenEditBit                 Abs       0 #00000000 -   731
 FullScreenEditFl                  Abs      69 #00000045 -   729   730   731
 FullScreenEditNib                 Abs      17 #00000011 -   730
 FunctPlotBit                      Abs       1 #00000001 -   227
 FunctPlotFl                       Abs      30 #0000001E -   139   226   227
 FunctPlotNib                      Abs       7 #00000007 -   226
 GCursorBit                        Abs       3 #00000003 -   230
 GCursorFl                         Abs      32 #00000020 -   141   229   230
 GCursorNib                        Abs       7 #00000007 -   229
 GrobDisplayBit                    Abs       2 #00000002 -   773
 GrobDisplayFl                     Abs      83 #00000053 -   771   772   773
 GrobDisplayNib                    Abs      20 #00000014 -   772
 IODataFmtBit                      Abs       2 #00000002 -   242
 IODataFmtFl                       Abs      35 #00000023 -   144   241   242
 IODataFmtNib                      Abs       8 #00000008 -   241
 IODeviceBit                       Abs       0 #00000000 -   245
 IODeviceFl                        Abs      33 #00000021 -   142   244   245
 IODeviceNib                       Abs       8 #00000008 -   244
 IT                                Ext                   -  1178  1261
 ITE                               Ext                   -  1032
 IndexWrapBit                      Abs       3 #00000003 -   233
 IndexWrapFl                       Abs      64 #00000040 -   173   232   233
 IndexWrapNib                      Abs      15 #0000000F -   232
 InfResActBit                      Abs       1 #00000001 -   236
 InfResActFl                       Abs      22 #00000016 -   133   235   236
 InfResActNib                      Abs       5 #00000005 -   235
 InfResultBit                      Abs       1 #00000001 -   239
 InfResultFl                       Abs      26 #0000001A -   137   238   239
 InfResultNib                      Abs       6 #00000006 -   238
 KernelParamBit                    Abs       1 #00000001 -   758
 KernelParamFl                     Abs      78 #0000004E -   756   757   758
 KernelParamNib                    Abs      19 #00000013 -   757
 KeystrokeBeepBit                  Abs       2 #00000002 -   749
 KeystrokeBeepFl                   Abs      75 #0000004B -   747   748   749
 KeystrokeBeepNib                  Abs      18 #00000012 -   748
 LastArgsBit                       Abs       2 #00000002 -   248
 LastArgsFl                        Abs      55 #00000037 -   164   247   248
 LastArgsNib                       Abs      13 #0000000D -   247
 MASDDecompilerBit                 Abs       1 #00000001 -   782
 MASDDecompilerFl                  Abs      86 #00000056 -   780   781   782
 MASDDecompilerNib                 Abs      21 #00000015 -   781
 MINUSONE                          Ext                   -   993   996   999
                                        1123  1126  1129  1360  1363  1366  1456
                                        1459  1462  1551  1554  1605  1608  1611
                                        1650  1653  1656
 MKSmallFontMenuBit                Abs       3 #00000003 -   776
 MKSmallFontMenuFl                 Abs      84 #00000054 -   774   775   776
 MKSmallFontMenuNib                Abs      20 #00000014 -   775
 MLMASDModeBit                     Abs       3 #00000003 -   800
 MLMASDModeFl                      Abs      92 #0000005C -   798   799   800
 MLMASDModeNib                     Abs      22 #00000016 -   799
 MenuOnBit                         Abs       3 #00000003 -   812
 MenuOnFl                          Abs      96 #00000060 -   810   811   812
 MenuOnNib                         Abs      23 #00000017 -   811
 MultiDispBit                      Abs       3 #00000003 -   254
 MultiDispFl                       Abs      52 #00000034 -   161   253   254
 MultiDispNib                      Abs      12 #0000000C -   253
 MultiLine2GROBBit                 Abs       1 #00000001 -   734
 MultiLine2GROBFl                  Abs      70 #00000046 -   732   733   734
 MultiLine2GROBNib                 Abs      17 #00000011 -   733
 MultiLineBit                      Abs       0 #00000000 -   719
 MultiLineFl                       Abs      65 #00000041 -   717   718   719
 MultiLineNib                      Abs      16 #00000010 -   718
 MultiLineStringsBit               Abs       1 #00000001 -   722
 MultiLineStringsFl                Abs      66 #00000042 -   720   721   722
 MultiLineStringsNib               Abs      16 #00000010 -   721
 NINE                              Ext                   -   972  1103  1340
                                        1433  1530  1584  1629
 NINETEEN                          Ext                   -   877   883
 NoAutoCRBit                       Abs       1 #00000001 -   257
 NoAutoCRFl                        Abs      38 #00000026 -   147   256   257
 NoAutoCRNib                       Abs       9 #00000009 -   256
 NoIOStMsgBit                      Abs       2 #00000002 -   260
 NoIOStMsgNib                      Abs       9 #00000009 -   259
 NoIOStsMsgFl                      Abs      39 #00000027 -   148   259   260
 NoParseBit                        Abs       2 #00000002 -   263
 NoParseFl                         Abs      63 #0000003F -   172   262   263
 NoParseNib                        Abs      15 #0000000F -   262
 NumDigsBCt                        Abs       4 #00000004 -   157
 NumDigsBit1                       Abs       0 #00000000 -   266
 NumDigsFl1                        Abs      45 #0000002D -   156   265   266
 NumDigsNib                        Abs      11 #0000000B -   265
 NumDispBCt                        Abs       2 #00000002 -   159
 NumDispBit1                       Abs       0 #00000000 -   269
 NumDispFl1                        Abs      49 #00000031 -   158   268   269
 NumDispNib                        Abs      12 #0000000C -   268
 ONE                               Ext                   -   864   876   888
                                         894   975  1106  1343  1436  1533  1587
                                        1632
 OverfActBit                       Abs       0 #00000000 -   272
 OverfActFl                        Abs      21 #00000015 -   132   271   272
 OverfActNib                       Abs       5 #00000005 -   271
 OverflowBit                       Abs       0 #00000000 -   275
 OverflowFl                        Abs      25 #00000019 -   136   274   275
 OverflowNib                       Abs       6 #00000006 -   274
 OverwriteBit                      Abs       3 #00000003 -   278
 OverwriteFl                       Abs      36 #00000024 -   145   277   278
 OverwriteNib                      Abs       8 #00000008 -   277
 PrettyPrintBit                    Abs       2 #00000002 -   761
 PrettyPrintFl                     Abs      79 #0000004F -   759   760   761
 PrettyPrintNib                    Abs      19 #00000013 -   760
 PrintDevBit                       Abs       1 #00000001 -   281
 PrintDevFl                        Abs      34 #00000022 -   143   280   281
 PrintDevNib                       Abs       8 #00000008 -   280
 RadixBit                          Abs       2 #00000002 -   284
 RadixFl                           Abs      51 #00000033 -   160   283   284
 RadixNib                          Abs      12 #0000000C -   283
 RecursiveEditBit                  Abs       3 #00000003 -   788
 RecursiveEditFl                   Abs      88 #00000058 -   786   787   788
 RecursiveEditNib                  Abs      21 #00000015 -   787
 RecursiveStackBit                 Abs       2 #00000002 -   785
 RecursiveStackFl                  Abs      87 #00000057 -   783   784   785
 RecursiveStackNib                 Abs      21 #00000015 -   784
 ResRepAlmBit                      Abs       2 #00000002 -   287
 ResRepAlmFl                       Abs      43 #0000002B -   153   286   287
 ResRepAlmNib                      Abs      10 #0000000A -   286
 ResultsBit                        Abs       2 #00000002 -   290
 ResultsFl                         Abs       3 #00000003 -   118   289   290
 ResultsNib                        Abs       0 #00000000 -   289
 RightJustifiedStackBit            Abs       1 #00000001 -   746
 RightJustifiedStackFl             Abs      74 #0000004A -   744   745   746
 RightJustifiedStackNib            Abs      18 #00000012 -   745
=RomId                             Abs     807 #00000327 -   842
 SEMI                              Ext                   -   943   962   967
                                         981  1044  1060  1074  1093  1098  1112
                                        1174  1224  1240  1257  1307  1325  1330
                                        1335  1349  1409  1423  1428  1442  1505
                                        1520  1525  1539  1566  1593  1638  1681
 SEVEN                             Ext                   -  1666  1667
 SEVENTEEN                         Ext                   -  1338  1431
 ShowPrecBit                       Abs       0 #00000000 -   293
 ShowPrecFl                        Abs      53 #00000035 -   162   292   293
 ShowPrecNib                       Abs      13 #0000000D -   292
 SmallFontChooseBit                Abs       1 #00000001 -   794
 SmallFontChooseFl                 Abs      90 #0000005A -   792   793   794
 SmallFontChooseNib                Abs      22 #00000016 -   793
 SmallFontEQWEditBit               Abs       1 #00000001 -   770
 SmallFontEQWEditFl                Abs      82 #00000052 -   768   769   770
 SmallFontEQWEditNib               Abs      20 #00000014 -   769
 SmallFontEQWGrobBit               Abs       0 #00000000 -   767
 SmallFontEQWGrobFl                Abs      81 #00000051 -   765   766   767
 SmallFontEQWGrobNib               Abs      20 #00000014 -   766
 SmallFontEQWStackBit              Abs       3 #00000003 -   764
 SmallFontEQWStackFl               Abs      80 #00000050 -   762   763   764
 SmallFontEQWStackNib              Abs      19 #00000013 -   763
 SolutionsBit                      Abs       0 #00000000 -   296
 SolutionsFl                       Abs       1 #00000001 -   116   295   296
 SolutionsNib                      Abs       0 #00000000 -   295
 SystemRPLStackBit                 Abs       0 #00000000 -   779
 SystemRPLStackFl                  Abs      85 #00000055 -   777   778   779
 SystemRPLStackNib                 Abs      21 #00000015 -   778
 TEN                               Ext                   -   865   871  1198
                                        1281
 THIRTEEN                          Ext                   -   980  1111  1348
                                        1441  1538  1592  1637
 THIRTYFIVE                        Ext                   -  1582  1627
 THIRTYSEVEN                       Ext                   -   895   901
 THREE                             Ext                   -   927  1040  1160
                                        1398  1493
 TRUE                              Ext                   -   940   959  1071
                                        1090  1237  1322  1327  1406  1420  1502
                                        1517
 TWELVE                            Ext                   -  1195  1278
 TWENTYEIGHT                       Ext                   -   889
 TWENTYFIVE                        Ext                   -   913  1016  1146
                                        1383  1479  1527
 TWENTYSIX                         Ext                   -  1528
 TWENTYTWO                         Ext                   -   969  1337  1581
 TWO                               Ext                   -   984  1115  1352
                                        1445  1542  1596  1641
 TriAlphaBit                       Abs       3 #00000003 -   299
 TriAlphaFl                        Abs      60 #0000003C -   169   298   299
 TriAlphaNib                       Abs      14 #0000000E -   298
 TriUserBit                        Abs       0 #00000000 -   302
 TriUserFl                         Abs      61 #0000003D -   170   301   302
 TriUserNib                        Abs      15 #0000000F -   301
 UM>?                              Ext                   -  1176  1259
 UnderfActBit                      Abs       3 #00000003 -   305
 UnderfActFl                       Abs      20 #00000014 -   131   304   305
 UnderfActNib                      Abs       4 #00000004 -   304
 UnderfNegBit                      Abs       2 #00000002 -   308
 UnderfNegFl                       Abs      23 #00000017 -   134   307   308
 UnderfNegNib                      Abs       5 #00000005 -   307
 UnderfPosBit                      Abs       3 #00000003 -   311
 UnderfPosFl                       Abs      24 #00000018 -   135   310   311
 UnderfPosNib                      Abs       5 #00000005 -   310
 UserKeysBit                       Abs       1 #00000001 -   314
 UserKeysFl                        Abs      62 #0000003E -   171   313   314
 UserKeysNib                       Abs      15 #0000000F -   313
 VerboseBit                        Abs       1 #00000001 -   251
 VerboseFl                         Abs      58 #0000003A -   167   250   251
 VerboseNib                        Abs      14 #0000000E -   250
 VerticalListBit                   Abs       0 #00000000 -   815
 VerticalListFl                    Abs      97 #00000061 -   813   814   815
 VerticalListNib                   Abs      24 #00000018 -   814
 VerticalVectorBit                 Abs       1 #00000001 -   818
 VerticalVectorFl                  Abs      98 #00000062 -   816   817   818
 VerticalVectorNib                 Abs      24 #00000018 -   817
 ZERO                              Ext                   -   979  1110  1347
                                        1440  1537  1591  1636
 case                              Ext                   -   919  1022  1152
                                        1243  1389  1485
 hasALIAS                          Abs       2 #00000002 -   327
 hasCOLCT                          Abs       2 #00000002 -   333
 hasDER                            Abs       8 #00000008 -   331
 hasEXPND                          Abs       1 #00000001 -   334
 hasFORM                           Abs       8 #00000008 -   337
 hasHELP                           Abs       4 #00000004 -   325
 hasINTG                           Abs       4 #00000004 -   338
 hasINV                            Abs       4 #00000004 -   332
 hasPDATA                          Abs       1 #00000001 -   328
 hasPROMPTM                        Abs       4 #00000004 -   326
 hasVUNS                           Abs       1 #00000001 -   340
 hasWHERE                          Abs       2 #00000002 -   339
 nonALG                            Abs       8 #00000008 -   324
 pdCM                              Abs       6 #00000006 -   349
 pdEQ                              Abs       7 #00000007 -   350
 pdEX                              Abs       0 #00000000 -   343
 pdLP                              Abs       4 #00000004 -   347
 pdOP                              Abs       1 #00000001 -   344
 pdOS0                             Abs       8 #00000008 -   351
 pdOS1                             Abs       9 #00000009 -   352
 pdOS2                             Abs      10 #0000000A -   353
 pdOS3                             Abs      11 #0000000B -   354
 pdOS4                             Abs      12 #0000000C -   355
 pdOS5                             Abs      13 #0000000D -   356
 pdOS6                             Abs      14 #0000000E -   357
 pdOS7                             Abs      15 #0000000F -   358
 pdQE                              Abs       2 #00000002 -   345
 pdQN                              Abs       3 #00000003 -   346
 pdRP                              Abs       5 #00000005 -   348
 umEND                             Ext                   -   926  1039  1054
                                        1159  1173  1256  1397  1492  1565
 umP                               Ext                   -  1053
 ~DoMsgBox                         Ext                   -  1210  1293
 ~MsgBoxMenu                       Ext                   -  1206  1289
 ~grobAlertIcon                    Ext                   -  1202  1285
Saturn Assembler                                       Fri Jun 19 12:11:16 2009
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
