Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)                                      ISAform.a      Page    1

    1             * File  ISAform.s       1
    2             * RPL
    3             * File  ISAform.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv2\ISAform.s, part of the ISATM.hpp project, created by <> on 14/04/2009
    5             ********************************************************************
    6             * NAME:            ISAform
    7             * DESCRIPTION:     Generates the INPUT and OUTPUT form for ISA48.
    8             * VERSION:         1.23
    9             * DATE:            10 June 2009
   10             * COMPATIBILITY:   HP48
   11             *                  HP50
   12             *
   13             *INCLUDE GUI.H
   14             * File  ISAform.s       12
   15             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.H
   16
   17
   18             * RPL
   19             * insure RPL-mode exit
   20
   21             * ( Rad
   22
   23             * ( %2PI
   24             * ( %PI/24
   25
   26
   27
   28
   29             * ( 1=1Var, 2=2Var Statistic
   30             * ( 1=Histogram, 2=BoxWhisker
   31
   32
   33
   34
   35
   36             * ASSEMBLE
   37             DefSysF64-33 EQU        #00000000
   38             DefSysF32-01 EQU        #04010FF0
   39             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   40             DefSysF97-128 EQU       #00000000
   41
   42             * RPL
   43
   44
   45             * ( solution mode
   46             * ( constants mode
   47             * ( results mode
   48             * ( careful evaluation mode
   49
   50             * ( binary integer wordsize
   51             * must start on nibble boundary
   52             * ( binary integer base
   53             * must follow "fnBinWordS6"
   54
   55             * ( financial BEGIN/END mode
   56             * ( complex number and vector
   57             * mode
   58             * ( angle mode
   59             * must start on a nibble boundary
   60             * ( complex 2D mode
   61             * ( underflow action
   62             * ( overflow action
   63             * ( infinite result action
   64             * ( underflow-negative indicator
   65             * ( underflow-positive indicator
   66             * ( overflow indicator
   67             * ( infinite result indicator
   68             * ( symbolic-comples decompilation
   69             * ( simultaneous plot mode
   70             * ( axis drawing plot mode
   71
   72             * ( connect points mode
   73             * ( graphics cursor type mode
   74             * ( I/O device
   75             * ( print device
   76             * ( I/O data format
   77             * ( variable overwrite mode
   78             * ( double-space print mode
   79             * ( suppress auto CR mode
   80             * ( suppress I/O status messages
   81
   82
   83             * ( clock display mode
   84             * ( clock display format
   85             * ( date format
   86             * ( reschedule unacknowledged
   87             * repeat alarms mode
   88             * ( delete acknowledged non-repeat
   89             * alarms mode
   90
   91             * ( number of decimal digits
   92             * must start on nibble boundary
   93             * ( number display format
   94             * must start on nibble boundary
   95             * ( radix mark
   96             * ( multi-line display mode
   97             * ( show precedence mode
   98             * ( zero out tiny matrix elements
   99
  100             * ( last arguments mode
  101             * ( error beep mode
  102             * ( alarm beep mode
  103             * ( verbose display mode
  104             * ( variable name only mode
  105             * ( 3-way alpha mode
  106             * ( 3-way user keys mode
  107             * ( user keys mode
  108             * ( special parser mode
  109             * ( index wraparound indicator
  110
  111
  112             * ASSEMBLE
  113             SolutionsFl  EQU 1
  114             ConstantsFl  EQU 2
  115             ResultsFl    EQU 3
  116             CarefulFl    EQU 4
  117
  118             BinWordSFl1  EQU 5      must start on a nibble boundary
  119             BinWordSBCt  EQU 6      number of bits
  120             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  121             BinBaseBCt   EQU 2      number of bits
  122
  123             ComVecDiFl1  EQU 15
  124             ComVecDiBCt  EQU 2      number of bits
  125             AngleFl1     EQU 17     must start on a nibble boundary
  126             AngleBCt     EQU 2      number of bits
  127             Complex2DFl  EQU 19
  128             UnderfActFl  EQU 20
  129             OverfActFl   EQU 21
  130             InfResActFl  EQU 22
  131             UnderfNegFl  EQU 23
  132             UnderfPosFl  EQU 24
  133             OverflowFl   EQU 25
  134             InfResultFl  EQU 26
  135
  136             FunctPlotFl  EQU 30
  137             ConnectPtFl  EQU 31
  138             GCursorFl    EQU 32
  139             IODeviceFl   EQU 33
  140             PrintDevFl   EQU 34
  141             IODataFmtFl  EQU 35
  142             OverwriteFl  EQU 36
  143             DblSpaceFl   EQU 37
  144             NoAutoCRFl   EQU 38
  145             NoIOStsMsgFl EQU 39
  146
  147             ClockOnFl    EQU 40
  148             ClockFmtFl   EQU 41
  149             DateFmtFl    EQU 42
  150             ResRepAlmFl  EQU 43
  151             DelNRAlmFl   EQU 44
  152
  153             NumDigsFl1   EQU 45     must start on a nibble boundary
  154             NumDigsBCt   EQU 4      number of bits
  155             NumDispFl1   EQU 49     must start on a nibble boundary
  156             NumDispBCt   EQU 2      number of bits
  157             RadixFl      EQU 51
  158             MultiDispFl  EQU 52
  159             ShowPrecFl   EQU 53
  160
  161             LastArgsFl   EQU 55
  162             ErrorBeepFl  EQU 56
  163             AlarmBeepFl  EQU 57
  164             VerboseFl    EQU 58
  165             FastEqViewFl EQU 59
  166             TriAlphaFl   EQU 60
  167             TriUserFl    EQU 61
  168             UserKeysFl   EQU 62
  169             NoParseFl    EQU 63
  170             IndexWrapFl  EQU 64
  171
  172
  173
  174             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  175             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  176
  177             AngleNib     EQU ((AngleFl1)-1)/4
  178             AngleBit1    EQU ((AngleFl1)-1)%4
  179             AngleBit2    EQU (AngleBit1)+1
  180
  181             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  182             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  183
  184             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  185             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  186
  187             CarefulNib   EQU ((CarefulFl)-1)/4
  188             CarefulBit   EQU ((CarefulFl)-1)%4
  189
  190             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  191             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  192
  193             ClockOnNib   EQU ((ClockOnFl)-1)/4
  194             ClockOnBit   EQU ((ClockOnFl)-1)%4
  195
  196             Complex2DNib EQU ((Complex2DFl)-1)/4
  197             Complex2DBit EQU ((Complex2DFl)-1)%4
  198
  199             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  200             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  201
  202             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  203             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  204
  205             ConstantsNib EQU ((ConstantsFl)-1)/4
  206             ConstantsBit EQU ((ConstantsFl)-1)%4
  207
  208             DateFmtNib   EQU ((DateFmtFl)-1)/4
  209             DateFmtBit   EQU ((DateFmtFl)-1)%4
  210
  211             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  212             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  213
  214             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  215             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  216
  217             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  218             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  219
  220             FastEViewNib EQU ((FastEqViewFl)-1)/4
  221             FastEViewBit EQU ((FastEqViewFl)-1)%4
  222
  223             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  224             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  225
  226             GCursorNib   EQU ((GCursorFl)-1)/4
  227             GCursorBit   EQU ((GCursorFl)-1)%4
  228
  229             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  230             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  231
  232             InfResActNib EQU ((InfResActFl)-1)/4
  233             InfResActBit EQU ((InfResActFl)-1)%4
  234
  235             InfResultNib EQU ((InfResultFl)-1)/4
  236             InfResultBit EQU ((InfResultFl)-1)%4
  237
  238             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  239             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  240
  241             IODeviceNib  EQU ((IODeviceFl)-1)/4
  242             IODeviceBit  EQU ((IODeviceFl)-1)%4
  243
  244             LastArgsNib  EQU ((LastArgsFl)-1)/4
  245             LastArgsBit  EQU ((LastArgsFl)-1)%4
  246
  247             VerboseNib   EQU ((VerboseFl)-1)/4
  248             VerboseBit   EQU ((VerboseFl)-1)%4
  249
  250             MultiDispNib EQU ((MultiDispFl)-1)/4
  251             MultiDispBit EQU ((MultiDispFl)-1)%4
  252
  253             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  254             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  255
  256             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  257             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  258
  259             NoParseNib   EQU ((NoParseFl)-1)/4
  260             NoParseBit   EQU ((NoParseFl)-1)%4
  261
  262             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  263             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  264
  265             NumDispNib   EQU ((NumDispFl1)-1)/4
  266             NumDispBit1  EQU ((NumDispFl1)-1)%4
  267
  268             OverfActNib  EQU ((OverfActFl)-1)/4
  269             OverfActBit  EQU ((OverfActFl)-1)%4
  270
  271             OverflowNib  EQU ((OverflowFl)-1)/4
  272             OverflowBit  EQU ((OverflowFl)-1)%4
  273
  274             OverwriteNib EQU ((OverwriteFl)-1)/4
  275             OverwriteBit EQU ((OverwriteFl)-1)%4
  276
  277             PrintDevNib  EQU ((PrintDevFl)-1)/4
  278             PrintDevBit  EQU ((PrintDevFl)-1)%4
  279
  280             RadixNib     EQU ((RadixFl)-1)/4
  281             RadixBit     EQU ((RadixFl)-1)%4
  282
  283             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  284             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  285
  286             ResultsNib   EQU ((ResultsFl)-1)/4
  287             ResultsBit   EQU ((ResultsFl)-1)%4
  288
  289             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  290             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  291
  292             SolutionsNib EQU ((SolutionsFl)-1)/4
  293             SolutionsBit EQU ((SolutionsFl)-1)%4
  294
  295             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  296             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  297
  298             TriUserNib   EQU ((TriUserFl)-1)/4
  299             TriUserBit   EQU ((TriUserFl)-1)%4
  300
  301             UnderfActNib EQU ((UnderfActFl)-1)/4
  302             UnderfActBit EQU ((UnderfActFl)-1)%4
  303
  304             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  305             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  306
  307             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  308             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  309
  310             UserKeysNib  EQU ((UserKeysFl)-1)/4
  311             UserKeysBit  EQU ((UserKeysFl)-1)%4
  312
  313             * RPL
  314             * RPL
  315             * insure RPL-mode exit
  316
  317
  318             * ASSEMBLE
  319
  320
  321             nonALG EQU 8                    not-allowed-in-algebraics flag
  322             hasHELP EQU 4                   has-help-data flag
  323             hasPROMPTM EQU 4                same as above
  324             hasALIAS EQU 2                  has-algebraic-alias flag
  325             hasPDATA EQU 1                  has-parse-data flag
  326
  327
  328             hasDER EQU 8                    has-derivative flag
  329             hasINV EQU 4                    has-inverse flag
  330             hasCOLCT EQU 2                  has-COLCT-data flag
  331             hasEXPND EQU 1                  has-EXPND-data flag
  332
  333
  334             hasFORM EQU 8                   has-FORM-menu flag
  335             hasINTG EQU 4                   has-Integral-data flag
  336             hasWHERE EQU 2                  has-WHERE-code flag
  337             hasVUNS EQU 1                   has-veryunsymin-code flag
  338
  339
  340             pdEX EQU #0             general expression
  341             pdOP EQU #1             operator
  342             pdQE EQU #2             quoted expression
  343             pdQN EQU #3             quoted name
  344             pdLP EQU #4             left parenthesis
  345             pdRP EQU #5             right parenthesis
  346             pdCM EQU #6             comma (non-radix)
  347             pdEQ EQU #7             equal-sign separator
  348             pdOS0 EQU #8            optional repeat 0
  349             pdOS1 EQU #9            optional repeat 1
  350             pdOS2 EQU #A            optional repeat 2
  351             pdOS3 EQU #B            optional repeat 3
  352             pdOS4 EQU #C            optional repeat 4
  353             pdOS5 EQU #D            optional repeat 5
  354             pdOS6 EQU #E            optional repeat 6
  355             pdOS7 EQU #F            optional repeat 7
  356
  357             * RPL
  358             * RPL
  359             * insure RPL-mode exit
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
  377             * RPL
  378             * insure RPL-mode exit
  379
  380             * RPL
  381             * insure RPL-mode exit
  382
  383
  384
  385
  386
  387
  388
  389
  390
  391             * ( for internal use only
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
  402             * ( decimal 67
  403             * ( decimal 86
  404             * ( decimal 82
  405             * ( decimal 85
  406             * ( decimal 101
  407             * ( decimal 97
  408             * ( decimal 100
  409             * ( decimal 113
  410             * ( decimal 112
  411
  412             * ( check width
  413             * ( field character width
  414
  415             * ( decimal 67
  416             * ( decimal 85
  417             * ( decimal 97
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
  435             * RPL
  436             * insure RPL-mode exit
  437
  438             * ( decimal 66
  439             * ( decimal 67
  440             * ( decimal 69
  441             * ( decimal 82
  442             * ( decimal 83
  443             * ( decimal 84
  444             * ( decimal 85
  445             * ( decimal 86
  446             * ( decimal 87
  447
  448
  449             * ( norm-view default visible row count
  450             * ( default first row X location
  451             * ( default first row Y location
  452             * ( default row width
  453             * ( default row height
  454
  455             * ( max-view width
  456             * ( max-view height
  457             * ( max-view default visible row count
  458
  459             * ( prompt area height
  460
  461             * ( more-up/down icon width
  462
  463
  464
  465             * RPL
  466             * insure RPL-mode exit
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
  682             * RPL
  683             * insure RPL-mode exit
  684
  685
  686
  687             * ( set for informations
  688             * ( set for step by step mode on
  689             * ( internal use: true if VXXL success
  690             * ( set for no gcd computations
  691             * ( set for complex mode
  692             * ( internal use:       LN->-INV[-LN]]
  693             * ( set for approx mode
  694             * ( set for TSIMP call inside SERIES
  695             * ( internal use:       modular computation
  696             * ( internal use:       testing remainder=0
  697             * ( set to allow numeric factorization
  698             * ( set for large matrices
  699             * ( set: don't simplify inside non rational operation
  700             * ( set to see i as an irrquad c=-1
  701             * ( set to disable linearity simplif.
  702             * ( set for increasing power x+1 -> 1+x
  703             * ( internal use:       sqrt not as irrquad
  704             * ( set if sin are prefered to cos
  705             * ( set for menu as choosebox
  706             * ( set if xINT is not simplified
  707             * ( set if non rigourous mode
  708             * ( set to allow silent mode switch
  709             * ( set if xLN returns LN[ABS[]]
  710
  711
  712             * ASSEMBLE
  713
  714             MultiLineFl     EQU     65
  715             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  716             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  717             MultiLineStringsFl      EQU     66
  718             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  719             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  720             DigitalClockFl  EQU     67
  721             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  722             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  723             CmdAutoIndentFl EQU     68
  724             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  725             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  726             FullScreenEditFl        EQU     69
  727             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  728             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  729             MultiLine2GROBFl        EQU     70
  730             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  731             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  732             DesasmWithAdrFl EQU     71
  733             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  734             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  735             BigFontStackFl  EQU     72
  736             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  737             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  738             BigFontCmdFl    EQU     73
  739             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  740             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  741             RightJustifiedStackFl   EQU     74
  742             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  743             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  744             KeystrokeBeepFl EQU     75
  745             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  746             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  747             FilerConfirmationFl     EQU     76
  748             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  749             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  750             FilerConfirmFl  EQU     77
  751             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  752             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  753             KernelParamFl   EQU     78
  754             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  755             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  756             PrettyPrintFl   EQU     79
  757             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  758             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  759             SmallFontEQWStackFl     EQU     80
  760             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  761             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  762             SmallFontEQWGrobFl      EQU     81
  763             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  764             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  765             SmallFontEQWEditFl      EQU     82
  766             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  767             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  768             GrobDisplayFl   EQU     83
  769             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  770             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  771             MKSmallFontMenuFl       EQU     84
  772             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  773             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  774             SystemRPLStackFl        EQU     85
  775             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  776             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  777             MASDDecompilerFl        EQU     86
  778             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  779             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  780             RecursiveStackFl        EQU     87
  781             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  782             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  783             RecursiveEditFl EQU     88
  784             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  785             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  786             AddressesCLEFl  EQU     89
  787             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  788             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  789             SmallFontChooseFl       EQU     90
  790             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  791             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  792             ArrayOnlyFl     EQU     91
  793             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  794             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  795             MLMASDModeFl    EQU     92
  796             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  797             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  798             ErableHeaderFl  EQU     93
  799             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  800             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  801             AutoSaveFl      EQU     94
  802             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  803             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  804             AlgebraicModeFl EQU     95
  805             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  806             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  807             MenuOnFl        EQU     96
  808             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  809             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  810             VerticalListFl  EQU     97
  811             VerticalListNib EQU     ((VerticalListFl)-1)/4
  812             VerticalListBit EQU     ((VerticalListFl)-1)%4
  813             VerticalVectorFl        EQU     98
  814             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  815             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  816
  817
  818             ComplexFl       EQU     103
  819             ComplexNib      EQU     ((ComplexFl)-1)/4
  820             ComplexBit      EQU     ((ComplexFl)-1)%4
  821
  822
  823             ExactModeFl     EQU     105
  824             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  825             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  826
  827
  828             * RPL
  829
  830
  831
  832             * ASSEMBLE
  833                     SETLIST CODE, INCLUDE, PSEUDO
  834             * RPL
  835
  836             *|| Resuming file ISAform.s at line 12
  837             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\ISA48.h
  838
  839             =RomId  EQU     #326
  840             * ROMID set to 326
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
  851             *|| Resuming file ISAform.s at line 13
  852             * ( Defined in GUI.H [NOT Header.H]
  853             * File  ISAform.s       15
  854 00000       =ISAform
  855             * File  ISAform.s       16
  856 00000 00000         CON(5)  =DOCOL
  857             * Label definitions (X pos     Y pos)
  858             * File  ISAform.s       18
  859 00005 00000         CON(5)  =DOCSTR
  860 0000A B0000         CON(5)  11
  861 0000F 0514A         NIBASC  \PA:\
            3
  862 00015 00000         CON(5)  =ONE
  863 0001A 00000         CON(5)  =TEN
  864             * File  ISAform.s       19
  865 0001F 00000         CON(5)  =DOCSTR
  866 00024 B0000         CON(5)  11
  867 00029 4513A         NIBASC  \T1:\
            3
  868 0002F 00000         CON(5)  =ONE
  869 00034 00000         CON(5)  =NINETEEN
  870             * File  ISAform.s       20
  871 00039 00000         CON(5)  =DOCSTR
  872 0003E B0000         CON(5)  11
  873 00043 0513A         NIBASC  \P1:\
            3
  874 00049 00000         CON(5)  =FOURTHREE
  875 0004E 00000         CON(5)  =NINETEEN
  876             * File  ISAform.s       21
  877 00053 00000         CON(5)  =DOCSTR
  878 00058 B0000         CON(5)  11
  879 0005D 79            CON(2)  #97
  880 0005F 13A3          NIBASC  \1:\
  881 00063 00000         CON(5)  =ONE
  882 00068 00000         CON(5)  =TWENTYEIGHT
  883             * File  ISAform.s       22
  884 0006D 00000         CON(5)  =DOCSTR
  885 00072 B0000         CON(5)  11
  886 00077 1613A         NIBASC  \a1:\
            3
  887 0007D 00000         CON(5)  =FOURTHREE
  888 00082 00000         CON(5)  =TWENTYEIGHT
  889             * File  ISAform.s       23
  890
  891             * Field definitions
  892             * File  ISAform.s       25
  893             * Field PA definition [#BINT0]
  894             * File  ISAform.s       26
  895 00087 00000         CON(5)  ='
  896 0008C 00000         CON(5)  =DOROMP
  897 00091 00000         CON(6)  =~PA_FLD_MSGHNDLR
            0
  898             *               ' ::                                          ( Field message handler )
  899             *                   IfMsgGetFieldValue #=case ::              ( Get internal field value )
  900             *                     DUPTYPEREAL? case ::                    ( REAL )
  901             *                       "ft" umEND BINT3 EXTN                 ( Add default feet units )
  902             *                                                                        DUP UNIT % 20000 "m" umEND ;          ( Check if PA is > 20 km )
  903             *                                                                               UM>? %0<> ITE ::                      ( IF PA is > 20 km )
  904             *                                                                                 DROP                                ( DROP field value )
  905             *                                                                                 "ERROR: Alt.    > 20 km"            ( Display warning message and error beep )
  906             *                                                                     FlashWarning                      ( and wait for key press to exit )
  907             *                                                                                 BINT4 FLASHPTR IfSetField           ( Keep field focus )
  908             *                                                                                               ID PA                               ( Keep original PA field value )
  909             *                                                                               ;
  910             *                                                                               ::                                      ( ELSE )
  911             *                                                                               NOVAL BINT1 FLASHPTR IfSetFieldValue  ( Reset all other fields )
  912             *                         NOVAL BINT2 FLASHPTR IfSetFieldValue  ( with NOVAL )
  913             *                         NOVAL BINT3 FLASHPTR IfSetFieldValue
  914             *                         NOVAL BINT4 FLASHPTR IfSetFieldValue
  915             *                         BINT4 FLASHPTR IfSetField             ( Keep field focus )
  916             *                       ;
  917             *                       TRUE                                  ( Return external value )
  918             *                     ;
  919             *                     DUPTYPEEXT? case ::                       ( UNIT )
  920             *                       DUP UNIT % 20000 "m" umEND ;     ( Check if PA is > 20 km )
  921             *                       UM>? %0<> ITE ::                 ( IF PA is > 20 km )
  922             *                                       DROP                           ( DROP field value )
  923             *                                       "ERROR: Alt.    > 20 km"       ( Display warning message and error beep )
  924             *                                                                     FlashWarning                 ( and wait for key press to exit )
  925             *                                       BINT4 FLASHPTR IfSetField      ( Keep field focus )
  926             *                                       ID PA                          ( Keep original PA field value )
  927             *                       ;
  928             *                       ::                               ( ELSE )
  929             *                                                                               DUP ID PA EQUALNOT IT ::                ( IF changed from initial value )
  930             *                    NOVAL BINT1 FLASHPTR IfSetFieldValue  ( Reset all other fields )
  931             *                           NOVAL BINT2 FLASHPTR IfSetFieldValue  ( with NOVAL )
  932             *                           NOVAL BINT3 FLASHPTR IfSetFieldValue
  933             *                           NOVAL BINT4 FLASHPTR IfSetFieldValue
  934             *                           BINT4 FLASHPTR IfSetField               ( Keep field focus )
  935             *                         ;
  936             *                       ;
  937             *                       TRUE                             ( Return external value )
  938             *                     ;
  939             *                     TRUE                            ( Message was handled )
  940             *                   ;
  941             *                   FALSE                             ( Other messages not handled )
  942             *                 ;
  943             * File  ISAform.s       72
  944 00097 00000         CON(5)  =THIRTEEN
  945 0009C 00000         CON(5)  =EIGHT
  946 000A1 00000         CON(5)  =BINT_115d
  947 000A6 00000         CON(5)  =NINE
  948             * Position & size
  949             * File  ISAform.s       73
  950 000AB 00000         CON(5)  =ONE
  951             * Field type: TEXT
  952             * File  ISAform.s       74
  953 000B0 00000         CON(5)  =DOLIST
  954 000B5 00000         CON(5)  =ZERO
  955 000BA 00000         CON(5)  =THIRTEEN
  956 000BF 00000         CON(5)  =SEMI
  957             * Allowed type: REAL, UNIT object
  958             * File  ISAform.s       75
  959 000C4 00000         CON(5)  =TWO
  960             * Decompile with stack appearance
  961             * File  ISAform.s       76
  962 000C9 00000         CON(5)  =DOCSTR
  963 000CE 53000         CON(5)  53
  964 000D3 05255         NIBASC  \PRESSURE ALTITUDE (#\
            43535
            5525540214C4459445554454028232

  965 000FB D8            CON(2)  #8D
  966 000FD 66479         NIBASC  \ft)\
            2
  967             * Help text
  968             * File  ISAform.s       77
  969 00103 00000         CON(5)  =MINUSONE
  970             * ChooseData N/A
  971             * File  ISAform.s       78
  972 00108 00000         CON(5)  =MINUSONE
  973             * ChooseDecompile - ignored
  974             * File  ISAform.s       79
  975 0010D 00000         CON(5)  =MINUSONE
  976             * Reset value
  977             * File  ISAform.s       80
  978 00112 00000         CON(5)  =DOIDNT
  979 00117 20            CON(2)  2
  980 00119 0514          NIBASC  \PA\
  981             * Initial value
  982             * File  ISAform.s       81
  983
  984             * File  ISAform.s       82
  985             * Field T1 definition [#BINT1]
  986             * File  ISAform.s       83
  987 0011D 00000         CON(5)  ='
  988 00122 00000         CON(5)  =DOCOL
  989             * Field Message Handler
  990             * File  ISAform.s       84
  991 00127 00000         CON(5)  =TWENTYFIVE
  992 0012C 00000         CON(5)  =#=case
  993 00131 00000         CON(5)  =DOCOL
  994             * Get internal field value
  995             * File  ISAform.s       85
  996 00136 00000         CON(5)  =DUPTYPEREAL?
  997 0013B 00000         CON(5)  =case
  998 00140 00000         CON(5)  =DOCOL
  999             * Real object
 1000             * File  ISAform.s       86
 1001 00145 00000         CON(5)  =DOCSTR
 1002 0014A 90000         CON(5)  9
 1003 0014F 0B            CON(2)  #B0
 1004 00151 34            NIBASC  \C\
 1005 00153 00000         CON(5)  =umEND
 1006 00158 00000         CON(5)  =THREE
 1007 0015D 00000         CON(5)  =EXTN
 1008             * Add default deg C units
 1009             *                                                                       NOVAL BINT0 FLASHPTR IfSetFieldValue   ( Reset all other )
 1010             *                                                                               NOVAL BINT2 FLASHPTR IfSetFieldValue   ( fields with )
 1011             *                                                                               NOVAL BINT3 FLASHPTR IfSetFieldValue   ( NOVAL )
 1012             *                                                                               NOVAL BINT4 FLASHPTR IfSetFieldValue
 1013             *                                                                               BINT0 FLASHPTR IfSetField              ( Keep field focus )
 1014             * File  ISAform.s       92
 1015 00162 00000         CON(5)  =TRUE
 1016             * Return external value
 1017             * File  ISAform.s       93
 1018 00167 00000         CON(5)  =SEMI
 1019             *                            DUPTYPEEXT? case ::                      ( Unit object )
 1020             *                              DUP ID T1 EQUALNOT IT ::               ( IF changed from internal value )
 1021             *                                                                                               NOVAL BINT0 FLASHPTR IfSetFieldValue   ( Reset all other )
 1022             *                                                                                               NOVAL BINT2 FLASHPTR IfSetFieldValue   ( fields with )
 1023             *                                                                                               NOVAL BINT3 FLASHPTR IfSetFieldValue   ( NOVAL )
 1024             *                                                                                               NOVAL BINT4 FLASHPTR IfSetFieldValue
 1025             *                                                                                               BINT0 FLASHPTR IfSetField              ( Keep field focus )
 1026             *                              ;
 1027             *                              TRUE                                   ( Return external value )
 1028             *                            ;
 1029             * File  ISAform.s       104
 1030 0016C 00000         CON(5)  =TRUE
 1031             * Message was handled
 1032             * File  ISAform.s       105
 1033 00171 00000         CON(5)  =SEMI
 1034             * File  ISAform.s       106
 1035 00176 00000         CON(5)  =FALSE
 1036             * Other messages not handled
 1037             * File  ISAform.s       107
 1038 0017B 00000         CON(5)  =SEMI
 1039             * File  ISAform.s       108
 1040 00180 00000         CON(5)  =THIRTEEN
 1041 00185 00000         CON(5)  =SEVENTEEN
 1042 0018A 00000         CON(5)  =FORTYNINE
 1043 0018F 00000         CON(5)  =NINE
 1044             * Position & size
 1045             * File  ISAform.s       109
 1046 00194 00000         CON(5)  =ONE
 1047             * Field type: TEXT
 1048             * File  ISAform.s       110
 1049 00199 00000         CON(5)  =DOLIST
 1050 0019E 00000         CON(5)  =ZERO
 1051 001A3 00000         CON(5)  =THIRTEEN
 1052 001A8 00000         CON(5)  =SEMI
 1053             * Allowed type: REAL, UNIT object
 1054             * File  ISAform.s       111
 1055 001AD 00000         CON(5)  =TWO
 1056             * Decompile with stack appearance
 1057             * File  ISAform.s       112
 1058 001B2 00000         CON(5)  =DOCSTR
 1059 001B7 D3000         CON(5)  61
 1060 001BC 35451         NIBASC  \STATIC AIR TEMP. (TR\
            44594
            3402149425024554D405E202824525

 1061 001E4 55540         NIBASC  \UE #\
            232
 1062 001EC D8            CON(2)  #8D
 1063 001EE 0B            CON(2)  #B0
 1064 001F0 3492          NIBASC  \C)\
 1065             * Help string
 1066             * File  ISAform.s       113
 1067 001F4 00000         CON(5)  =MINUSONE
 1068             * ChooseData N/A
 1069             * File  ISAform.s       114
 1070 001F9 00000         CON(5)  =MINUSONE
 1071             * ChooseDecompile
 1072             * File  ISAform.s       115
 1073 001FE 00000         CON(5)  =MINUSONE
 1074             * Reset value
 1075             * File  ISAform.s       116
 1076 00203 00000         CON(5)  =DOIDNT
 1077 00208 20            CON(2)  2
 1078 0020A 4513          NIBASC  \T1\
 1079             * Initial value
 1080             * File  ISAform.s       117
 1081
 1082             * File  ISAform.s       118
 1083             * Field P1 definition [#BINT2]
 1084             * File  ISAform.s       119
 1085 0020E 00000         CON(5)  ='
 1086 00213 00000         CON(5)  =DOCOL
 1087             * Field message handler
 1088             * File  ISAform.s       120
 1089 00218 00000         CON(5)  =TWENTYFIVE
 1090 0021D 00000         CON(5)  =#=case
 1091 00222 00000         CON(5)  =DOCOL
 1092             * Get internal field value
 1093             * File  ISAform.s       121
 1094 00227 00000         CON(5)  =DUPTYPEREAL?
 1095 0022C 00000         CON(5)  =case
 1096 00231 00000         CON(5)  =DOCOL
 1097             * REAL
 1098             * File  ISAform.s       122
 1099 00236 00000         CON(5)  =DUP
 1100 0023B 00000         CON(5)  =DOREAL
 1101 00240 100           NIBHEX  100
 1102 00243 00000         NIBHEX  000000000005
            00000
            05
 1103 0024F 0             NIBHEX  0
 1104 00250 00000         CON(5)  =%<
 1105 00255 00000         CON(5)  =ITE
 1106 0025A 00000         CON(5)  =DOCOL
 1107             * IF it is < 50
 1108             * File  ISAform.s       123
 1109 0025F 00000         CON(5)  =DOCSTR
 1110 00264 D0000         CON(5)  13
 1111 00269 96E68         NIBASC  \inHg\
            476
 1112 00271 00000         CON(5)  =umEND
 1113 00276 00000         CON(5)  =THREE
 1114 0027B 00000         CON(5)  =EXTN
 1115             * add inHg units
 1116             * File  ISAform.s       124
 1117 00280 00000         CON(5)  =SEMI
 1118             * File  ISAform.s       125
 1119 00285 00000         CON(5)  =DOCOL
 1120             * ELSE if it is > 50
 1121             * File  ISAform.s       126
 1122 0028A 00000         CON(5)  =CHR_m
 1123 0028F 00000         CON(5)  =DOCSTR
 1124 00294 B0000         CON(5)  11
 1125 00299 26162         NIBASC  \bar\
            7
 1126 0029F 00000         CON(5)  =umP
 1127 002A4 00000         CON(5)  =umEND
 1128             * add mbar units
 1129             * File  ISAform.s       127
 1130 002A9 00000         CON(5)  =FIVE
 1131 002AE 00000         CON(5)  =EXTN
 1132             * File  ISAform.s       128
 1133 002B3 00000         CON(5)  =SEMI
 1134             *                NOVAL BINT0 FLASHPTR IfSetFieldValue   ( Reset other fields )
 1135             *                NOVAL BINT1 FLASHPTR IfSetFieldValue   ( with NOVAL )
 1136             *                NOVAL BINT3 FLASHPTR IfSetFieldValue
 1137             *                NOVAL BINT4 FLASHPTR IfSetFieldValue
 1138             *                BINT1 FLASHPTR IfSetField              ( Keep field focus )
 1139             * File  ISAform.s       134
 1140 002B8 00000         CON(5)  =TRUE
 1141             * Return external value
 1142             * File  ISAform.s       135
 1143 002BD 00000         CON(5)  =SEMI
 1144             *                     DUPTYPEEXT? case ::                       ( UNIT )
 1145             *                       DUP ID P1 EQUALNOT IT ::                ( IF changed from initial value )
 1146             *                  NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
 1147             *                         NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
 1148             *                         NOVAL BINT3 FLASHPTR IfSetFieldValue
 1149             *                         NOVAL BINT4 FLASHPTR IfSetFieldValue
 1150             *                         BINT1 FLASHPTR IfSetField                 ( Keep field focus )
 1151             *                       ;
 1152             *                       TRUE                                    ( Return external value )
 1153             *                     ;
 1154             * File  ISAform.s       146
 1155 002C2 00000         CON(5)  =TRUE
 1156             * Message was handled
 1157             * File  ISAform.s       147
 1158 002C7 00000         CON(5)  =SEMI
 1159             * File  ISAform.s       148
 1160 002CC 00000         CON(5)  =FALSE
 1161             * Other messages not handled
 1162             * File  ISAform.s       149
 1163 002D1 00000         CON(5)  =SEMI
 1164             * File  ISAform.s       150
 1165 002D6 00000         CON(5)  =SEVENTYNINE
 1166 002DB 00000         CON(5)  =SEVENTEEN
 1167 002E0 00000         CON(5)  =FORTYNINE
 1168 002E5 00000         CON(5)  =NINE
 1169             * Position & size
 1170             * File  ISAform.s       151
 1171 002EA 00000         CON(5)  =ONE
 1172             * Field type: TEXT
 1173             * File  ISAform.s       152
 1174 002EF 00000         CON(5)  =DOLIST
 1175 002F4 00000         CON(5)  =ZERO
 1176 002F9 00000         CON(5)  =THIRTEEN
 1177 002FE 00000         CON(5)  =SEMI
 1178             * Allowed type: REAL, UNIT object
 1179             * File  ISAform.s       153
 1180 00303 00000         CON(5)  =TWO
 1181             * Decompile with stack appearance
 1182             * File  ISAform.s       154
 1183 00308 00000         CON(5)  =DOCSTR
 1184 0030D F3000         CON(5)  63
 1185 00312 35451         NIBASC  \STATIC PRESSURE (#\
            44594
            34020525543535552554028232

 1186 00336 D8            CON(2)  #8D
 1187 00338 D6261         NIBASC  \mbar/inHg)\
            627F2
            96E6847692

 1188             * Help string
 1189             * File  ISAform.s       155
 1190 0034C 00000         CON(5)  =MINUSONE
 1191             * ChooseData N/A
 1192             * File  ISAform.s       156
 1193 00351 00000         CON(5)  =MINUSONE
 1194             * ChooseDecompile
 1195             * File  ISAform.s       157
 1196 00356 00000         CON(5)  =MINUSONE
 1197             * Reset value
 1198             * File  ISAform.s       158
 1199 0035B 00000         CON(5)  =DOIDNT
 1200 00360 20            CON(2)  2
 1201 00362 0513          NIBASC  \P1\
 1202             * Initial value
 1203             * File  ISAform.s       159
 1204
 1205             * File  ISAform.s       160
 1206             * Field rho1 definition
 1207             * File  ISAform.s       161
 1208 00366 00000         CON(5)  ='
 1209 0036B 00000         CON(5)  =DOCOL
 1210             * Field message handler
 1211             * File  ISAform.s       162
 1212 00370 00000         CON(5)  =TWENTYFIVE
 1213 00375 00000         CON(5)  =#=case
 1214 0037A 00000         CON(5)  =DOCOL
 1215             * Get internal field value
 1216             * File  ISAform.s       163
 1217 0037F 00000         CON(5)  =DUPTYPEREAL?
 1218 00384 00000         CON(5)  =case
 1219 00389 00000         CON(5)  =DOCOL
 1220             * REAL
 1221             * File  ISAform.s       164
 1222 0038E 00000         CON(5)  =CHR_k
 1223 00393 00000         CON(5)  =DOCSTR
 1224 00398 70000         CON(5)  7
 1225 0039D 76            NIBASC  \g\
 1226 0039F 00000         CON(5)  =umP
 1227 003A4 00000         CON(5)  =DOCSTR
 1228 003A9 70000         CON(5)  7
 1229 003AE D6            NIBASC  \m\
 1230 003B0 00000         CON(5)  =%3
 1231             * Add kg/m^3 units
 1232             * File  ISAform.s       165
 1233 003B5 00000         CON(5)  =um^
 1234 003BA 00000         CON(5)  =um/
 1235 003BF 00000         CON(5)  =umEND
 1236             * File  ISAform.s       166
 1237 003C4 00000         CON(5)  =NINE
 1238 003C9 00000         CON(5)  =EXTN
 1239             *                       NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
 1240             *                       NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
 1241             *                       NOVAL BINT2 FLASHPTR IfSetFieldValue
 1242             *                       NOVAL BINT4 FLASHPTR IfSetFieldValue
 1243             *                       BINT2 FLASHPTR IfSetField             ( Keep field focus )
 1244             * File  ISAform.s       172
 1245 003CE 00000         CON(5)  =TRUE
 1246             * Return external value
 1247             * File  ISAform.s       173
 1248 003D3 00000         CON(5)  =SEMI
 1249             *                     DUPTYPEEXT? case ::                       ( UNIT )
 1250             *                       DUP ID \971 EQUALNOT IT ::              ( IF changed from initial value )
 1251             *                  NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
 1252             *                         NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
 1253             *                         NOVAL BINT2 FLASHPTR IfSetFieldValue
 1254             *                         NOVAL BINT4 FLASHPTR IfSetFieldValue
 1255             *                         BINT2 FLASHPTR IfSetField                 ( Keep field focus )
 1256             *                       ;
 1257             *                       TRUE                                    ( Return external value )
 1258             *                     ;
 1259             * File  ISAform.s       184
 1260 003D8 00000         CON(5)  =TRUE
 1261             * Message was handled
 1262             * File  ISAform.s       185
 1263 003DD 00000         CON(5)  =SEMI
 1264             * File  ISAform.s       186
 1265 003E2 00000         CON(5)  =FALSE
 1266             * Other messages not handled
 1267             * File  ISAform.s       187
 1268 003E7 00000         CON(5)  =SEMI
 1269             * File  ISAform.s       188
 1270 003EC 00000         CON(5)  =THIRTEEN
 1271 003F1 00000         CON(5)  =TWENTYSIX
 1272 003F6 00000         CON(5)  =FORTYNINE
 1273 003FB 00000         CON(5)  =NINE
 1274             * Position & size
 1275             * File  ISAform.s       189
 1276 00400 00000         CON(5)  =ONE
 1277             * Field type: TEXT
 1278             * File  ISAform.s       190
 1279 00405 00000         CON(5)  =DOLIST
 1280 0040A 00000         CON(5)  =ZERO
 1281 0040F 00000         CON(5)  =THIRTEEN
 1282 00414 00000         CON(5)  =SEMI
 1283             * Allowed type: REAL, UNIT object
 1284             * File  ISAform.s       191
 1285 00419 00000         CON(5)  =TWO
 1286             * Decompile with stack appearance
 1287             * File  ISAform.s       192
 1288 0041E 00000         CON(5)  =DOCSTR
 1289 00423 92000         CON(5)  41
 1290 00428 4454E         NIBASC  \DENSITY (#\
            43594
            4595028232

 1291 0043C D8            CON(2)  #8D
 1292 0043E B676F         NIBASC  \kg/m^3)\
            2D6E5
            3392
 1293             * Help string
 1294             * File  ISAform.s       193
 1295 0044C 00000         CON(5)  =MINUSONE
 1296             * ChooseData N/A
 1297             * File  ISAform.s       194
 1298 00451 00000         CON(5)  =MINUSONE
 1299             * ChooseDecompile
 1300             * File  ISAform.s       195
 1301 00456 00000         CON(5)  =MINUSONE
 1302             * Reset value
 1303             * File  ISAform.s       196
 1304 0045B 00000         CON(5)  =DOIDNT
 1305 00460 20            CON(2)  2
 1306 00462 79            CON(2)  #97
 1307 00464 13            NIBASC  \1\
 1308             * Initial value
 1309             * File  ISAform.s       197
 1310
 1311             * File  ISAform.s       198
 1312             * Field a1 definition
 1313             * File  ISAform.s       199
 1314 00466 00000         CON(5)  ='
 1315 0046B 00000         CON(5)  =DOCOL
 1316             * Field message handler
 1317             * File  ISAform.s       200
 1318 00470 00000         CON(5)  =TWENTYFIVE
 1319 00475 00000         CON(5)  =#=case
 1320 0047A 00000         CON(5)  =DOCOL
 1321             * Get internal field value
 1322             * File  ISAform.s       201
 1323 0047F 00000         CON(5)  =DUPTYPEREAL?
 1324 00484 00000         CON(5)  =case
 1325 00489 00000         CON(5)  =DOCOL
 1326             * REAL
 1327             * File  ISAform.s       202
 1328 0048E 00000         CON(5)  =DOCSTR
 1329 00493 D0000         CON(5)  13
 1330 00498 B6E6F         NIBASC  \knot\
            647
 1331 004A0 00000         CON(5)  =umEND
 1332             * Add default knot units
 1333             * File  ISAform.s       203
 1334 004A5 00000         CON(5)  =THREE
 1335 004AA 00000         CON(5)  =EXTN
 1336             *                       NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
 1337             *                       NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
 1338             *                       NOVAL BINT2 FLASHPTR IfSetFieldValue
 1339             *                       NOVAL BINT3 FLASHPTR IfSetFieldValue
 1340             *                       BINT3 FLASHPTR IfSetField             ( Keep field focus )
 1341             * File  ISAform.s       209
 1342 004AF 00000         CON(5)  =TRUE
 1343             * Return external value
 1344             * File  ISAform.s       210
 1345 004B4 00000         CON(5)  =SEMI
 1346             *                     DUPTYPEEXT? case ::                       ( UNIT )
 1347             *                       DUP ID A1 EQUALNOT IT ::                ( IF changed from initial value )
 1348             *                  NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
 1349             *                         NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
 1350             *                         NOVAL BINT2 FLASHPTR IfSetFieldValue
 1351             *                         NOVAL BINT3 FLASHPTR IfSetFieldValue
 1352             *                         BINT3 FLASHPTR IfSetField                 ( Keep field focus )
 1353             *                       ;
 1354             *                       TRUE                                    ( Return external value )
 1355             *                     ;
 1356             * File  ISAform.s       221
 1357 004B9 00000         CON(5)  =TRUE
 1358             * Message was handled
 1359             * File  ISAform.s       222
 1360 004BE 00000         CON(5)  =SEMI
 1361             * File  ISAform.s       223
 1362 004C3 00000         CON(5)  =FALSE
 1363             * Other messages not handled
 1364             * File  ISAform.s       224
 1365 004C8 00000         CON(5)  =SEMI
 1366             * File  ISAform.s       225
 1367 004CD 00000         CON(5)  =SEVENTYNINE
 1368 004D2 00000         CON(5)  =TWENTYSIX
 1369 004D7 00000         CON(5)  =FORTYNINE
 1370 004DC 00000         CON(5)  =NINE
 1371             * Position & size
 1372             * File  ISAform.s       226
 1373 004E1 00000         CON(5)  =ONE
 1374             * Field type: TEXT
 1375             * File  ISAform.s       227
 1376 004E6 00000         CON(5)  =DOLIST
 1377 004EB 00000         CON(5)  =ZERO
 1378 004F0 00000         CON(5)  =THIRTEEN
 1379 004F5 00000         CON(5)  =SEMI
 1380             * Allowed type: REAL, UNIT object
 1381             * File  ISAform.s       228
 1382 004FA 00000         CON(5)  =TWO
 1383             * Decompile with stack appearance
 1384             * File  ISAform.s       229
 1385 004FF 00000         CON(5)  =DOCSTR
 1386 00504 33000         CON(5)  51
 1387 00509 35055         NIBASC  \SPEED OF SOUND (#\
            45444
            02F4640235F455E444028232

 1388 0052B D8            CON(2)  #8D
 1389 0052D B6E6F         NIBASC  \knot)\
            64792
 1390             * Help string
 1391             * File  ISAform.s       230
 1392 00537 00000         CON(5)  =MINUSONE
 1393             * ChooseData N/A
 1394             * File  ISAform.s       231
 1395 0053C 00000         CON(5)  =MINUSONE
 1396             * ChooseDecompile
 1397             * File  ISAform.s       232
 1398 00541 00000         CON(5)  =MINUSONE
 1399             * Reset value
 1400             * File  ISAform.s       233
 1401 00546 00000         CON(5)  =DOIDNT
 1402 0054B 20            CON(2)  2
 1403 0054D 1413          NIBASC  \A1\
 1404             * Initial value
 1405             * File  ISAform.s       234
 1406
 1407             * File  ISAform.s       235
 1408 00551 00000         CON(5)  =FIVE
 1409 00556 00000         CON(5)  =FIVE
 1410             * Label & field counts
 1411             * File  ISAform.s       236
 1412
 1413             * File  ISAform.s       237
 1414 0055B 00000         CON(5)  ='DROPFALSE
 1415             * Inform Box message handler
 1416             * File  ISAform.s       238
 1417 00560 00000         CON(5)  =DOCSTR
 1418 00565 B0000         CON(5)  11
 1419 0056A 94351         NIBASC  \ISA\
            4
 1420             * Title
 1421             * File  ISAform.s       239
 1422 00570 00000         CON(5)  =DoInputForm
 1423             * Create and run the input form
 1424             * File  ISAform.s       240
 1425 00575 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAform.a      Page    2

 #=case                            Ext                   -   992  1090  1213
                                        1319
 %3                                Ext                   -  1230
 %<                                Ext                   -  1104
 '                                 Ext                   -   895   987  1085
                                        1208  1314
 'DROPFALSE                        Ext                   -  1414
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
 BINT_115d                         Ext                   -   946
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
 CHR_k                             Ext                   -  1222
 CHR_m                             Ext                   -  1122
 CarefulBit                        Abs       3 #00000003 -   188
 CarefulFl                         Abs       4 #00000004 -   116   187   188
 CarefulNib                        Abs       0 #00000000 -   187
 ClockFmtBit                       Abs       0 #00000000 -   191
 ClockFmtFl                        Abs      41 #00000029 -   148   190   191
 ClockFmtNib                       Abs      10 #0000000A -   190
 ClockOnBit                        Abs       3 #00000003 -   194
 ClockOnFl                         Abs      40 #00000028 -   147   193   194
 ClockOnNib                        Abs       9 #00000009 -   193
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
 DOCOL                             Ext                   -   856   988   993
                                         998  1086  1091  1096  1106  1119  1209
                                        1214  1219  1315  1320  1325
 DOCSTR                            Ext                   -   859   865   871
                                         877   884   962  1001  1058  1109  1123
                                        1183  1223  1227  1288  1328  1385  1417
 DOIDNT                            Ext                   -   978  1076  1199
                                        1304  1401
 DOLIST                            Ext                   -   953  1049  1174
                                        1279  1376
 DOREAL                            Ext                   -  1100
 DOROMP                            Ext                   -   896
 DUP                               Ext                   -  1099
 DUPTYPEREAL?                      Ext                   -   996  1094  1217
                                        1323
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
 DoInputForm                       Ext                   -  1422
 EIGHT                             Ext                   -   945
 EXTN                              Ext                   -  1007  1114  1131
                                        1238  1335
 ErableHeaderBit                   Abs       0 #00000000 -   800
 ErableHeaderFl                    Abs      93 #0000005D -   798   799   800
 ErableHeaderNib                   Abs      23 #00000017 -   799
 ErrorBeepBit                      Abs       3 #00000003 -   218
 ErrorBeepFl                       Abs      56 #00000038 -   162   217   218
 ErrorBeepNib                      Abs      13 #0000000D -   217
 ExactModeBit                      Abs       0 #00000000 -   825
 ExactModeFl                       Abs     105 #00000069 -   823   824   825
 ExactModeNib                      Abs      26 #0000001A -   824
 FALSE                             Ext                   -  1035  1160  1265
                                        1362
 FIVE                              Ext                   -  1130  1408  1409
 FORTYNINE                         Ext                   -  1042  1167  1272
                                        1369
 FOURTHREE                         Ext                   -   874   887
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
=ISAform                           Rel       0 #00000000 -   854
 ITE                               Ext                   -  1105
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
 MINUSONE                          Ext                   -   969   972   975
                                        1067  1070  1073  1190  1193  1196  1295
                                        1298  1301  1392  1395  1398
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
 NINE                              Ext                   -   947  1043  1168
                                        1237  1273  1370
 NINETEEN                          Ext                   -   869   875
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
 ONE                               Ext                   -   862   868   881
                                         950  1046  1171  1276  1373
 OverfActBit                       Abs       0 #00000000 -   269
 OverfActFl                        Abs      21 #00000015 -   129   268   269
 OverfActNib                       Abs       5 #00000005 -   268
 OverflowBit                       Abs       0 #00000000 -   272
 OverflowFl                        Abs      25 #00000019 -   133   271   272
 OverflowNib                       Abs       6 #00000006 -   271
 OverwriteBit                      Abs       3 #00000003 -   275
 OverwriteFl                       Abs      36 #00000024 -   142   274   275
 OverwriteNib                      Abs       8 #00000008 -   274
 PrettyPrintBit                    Abs       2 #00000002 -   758
 PrettyPrintFl                     Abs      79 #0000004F -   756   757   758
 PrettyPrintNib                    Abs      19 #00000013 -   757
 PrintDevBit                       Abs       1 #00000001 -   278
 PrintDevFl                        Abs      34 #00000022 -   140   277   278
 PrintDevNib                       Abs       8 #00000008 -   277
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
=RomId                             Abs     806 #00000326 -   839
 SEMI                              Ext                   -   956  1018  1033
                                        1038  1052  1117  1133  1143  1158  1163
                                        1177  1248  1263  1268  1282  1345  1360
                                        1365  1379  1425
 SEVENTEEN                         Ext                   -  1041  1166
 SEVENTYNINE                       Ext                   -  1165  1367
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
 TEN                               Ext                   -   863
 THIRTEEN                          Ext                   -   944   955  1040
                                        1051  1176  1270  1281  1378
 THREE                             Ext                   -  1006  1113  1334
 TRUE                              Ext                   -  1015  1030  1140
                                        1155  1245  1260  1342  1357
 TWENTYEIGHT                       Ext                   -   882   888
 TWENTYFIVE                        Ext                   -   991  1089  1212
                                        1318
 TWENTYSIX                         Ext                   -  1271  1368
 TWO                               Ext                   -   959  1055  1180
                                        1285  1382
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
 ZERO                              Ext                   -   954  1050  1175
                                        1280  1377
 case                              Ext                   -   997  1095  1218
                                        1324
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
 um/                               Ext                   -  1234
 umEND                             Ext                   -  1005  1112  1127
                                        1235  1331
 umP                               Ext                   -  1126  1226
 um^                               Ext                   -  1233
 ~PA_FLD_MSGHNDLR                  Ext                   -   897
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
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
