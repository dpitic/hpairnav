Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)                                      OutptForm.a    Page    1

    1             * File  OutptForm.s     1
    2             * RPL
    3             * File  OutptForm.s     2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\OutptForm.s, part of the CPONT50.hpp project, created by <> on 26/06/2009
    5             **********************************************************************
    6             * NAME:          OutptForm
    7             * LIBRARY #:     329h = 809d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.1
   10             * DATE:          26 June 2009
   11             * COMPATIBILITY: HP50
   12             *                HP48 ( MUST use DoInputForm )
   13             * DESCRIPTION:   Generates and displays the OUTPUT GUI for the library
   14             *                application.
   15             *
   16             * File  OutptForm.s     14
   17             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT48\CPONT48.h
   18
   19             =RomId  EQU     #329
   20             * ROMID set to 329
   21
   22
   23
   24
   25
   26
   27             *|| Resuming file OutptForm.s at line 14
   28             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\header.h
   29
   30
   31             * RPL
   32             * insure RPL-mode exit
   33
   34             * ( Rad
   35
   36             * ( %2PI
   37             * ( %PI/24
   38
   39
   40
   41
   42             * ( 1=1Var, 2=2Var Statistic
   43             * ( 1=Histogram, 2=BoxWhisker
   44
   45
   46
   47
   48
   49             * ASSEMBLE
   50             DefSysF64-33 EQU        #00000000
   51             DefSysF32-01 EQU        #04010FF0
   52             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   53             DefSysF97-128 EQU       #00000000
   54
   55             * RPL
   56
   57
   58             * ( solution mode
   59             * ( constants mode
   60             * ( results mode
   61             * ( careful evaluation mode
   62
   63             * ( binary integer wordsize
   64             * must start on nibble boundary
   65             * ( binary integer base
   66             * must follow "fnBinWordS6"
   67
   68             * ( financial BEGIN/END mode
   69             * ( complex number and vector
   70             * mode
   71             * ( angle mode
   72             * must start on a nibble boundary
   73             * ( complex 2D mode
   74             * ( underflow action
   75             * ( overflow action
   76             * ( infinite result action
   77             * ( underflow-negative indicator
   78             * ( underflow-positive indicator
   79             * ( overflow indicator
   80             * ( infinite result indicator
   81             * ( symbolic-comples decompilation
   82             * ( simultaneous plot mode
   83             * ( axis drawing plot mode
   84
   85             * ( connect points mode
   86             * ( graphics cursor type mode
   87             * ( I/O device
   88             * ( print device
   89             * ( I/O data format
   90             * ( variable overwrite mode
   91             * ( double-space print mode
   92             * ( suppress auto CR mode
   93             * ( suppress I/O status messages
   94
   95
   96             * ( clock display mode
   97             * ( clock display format
   98             * ( date format
   99             * ( reschedule unacknowledged
  100             * repeat alarms mode
  101             * ( delete acknowledged non-repeat
  102             * alarms mode
  103
  104             * ( number of decimal digits
  105             * must start on nibble boundary
  106             * ( number display format
  107             * must start on nibble boundary
  108             * ( radix mark
  109             * ( multi-line display mode
  110             * ( show precedence mode
  111             * ( zero out tiny matrix elements
  112
  113             * ( last arguments mode
  114             * ( error beep mode
  115             * ( alarm beep mode
  116             * ( verbose display mode
  117             * ( variable name only mode
  118             * ( 3-way alpha mode
  119             * ( 3-way user keys mode
  120             * ( user keys mode
  121             * ( special parser mode
  122             * ( index wraparound indicator
  123
  124
  125             * ASSEMBLE
  126             SolutionsFl  EQU 1
  127             ConstantsFl  EQU 2
  128             ResultsFl    EQU 3
  129             CarefulFl    EQU 4
  130
  131             BinWordSFl1  EQU 5      must start on a nibble boundary
  132             BinWordSBCt  EQU 6      number of bits
  133             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  134             BinBaseBCt   EQU 2      number of bits
  135
  136             ComVecDiFl1  EQU 15
  137             ComVecDiBCt  EQU 2      number of bits
  138             AngleFl1     EQU 17     must start on a nibble boundary
  139             AngleBCt     EQU 2      number of bits
  140             Complex2DFl  EQU 19
  141             UnderfActFl  EQU 20
  142             OverfActFl   EQU 21
  143             InfResActFl  EQU 22
  144             UnderfNegFl  EQU 23
  145             UnderfPosFl  EQU 24
  146             OverflowFl   EQU 25
  147             InfResultFl  EQU 26
  148
  149             FunctPlotFl  EQU 30
  150             ConnectPtFl  EQU 31
  151             GCursorFl    EQU 32
  152             IODeviceFl   EQU 33
  153             PrintDevFl   EQU 34
  154             IODataFmtFl  EQU 35
  155             OverwriteFl  EQU 36
  156             DblSpaceFl   EQU 37
  157             NoAutoCRFl   EQU 38
  158             NoIOStsMsgFl EQU 39
  159
  160             ClockOnFl    EQU 40
  161             ClockFmtFl   EQU 41
  162             DateFmtFl    EQU 42
  163             ResRepAlmFl  EQU 43
  164             DelNRAlmFl   EQU 44
  165
  166             NumDigsFl1   EQU 45     must start on a nibble boundary
  167             NumDigsBCt   EQU 4      number of bits
  168             NumDispFl1   EQU 49     must start on a nibble boundary
  169             NumDispBCt   EQU 2      number of bits
  170             RadixFl      EQU 51
  171             MultiDispFl  EQU 52
  172             ShowPrecFl   EQU 53
  173
  174             LastArgsFl   EQU 55
  175             ErrorBeepFl  EQU 56
  176             AlarmBeepFl  EQU 57
  177             VerboseFl    EQU 58
  178             FastEqViewFl EQU 59
  179             TriAlphaFl   EQU 60
  180             TriUserFl    EQU 61
  181             UserKeysFl   EQU 62
  182             NoParseFl    EQU 63
  183             IndexWrapFl  EQU 64
  184
  185
  186
  187             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  188             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  189
  190             AngleNib     EQU ((AngleFl1)-1)/4
  191             AngleBit1    EQU ((AngleFl1)-1)%4
  192             AngleBit2    EQU (AngleBit1)+1
  193
  194             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  195             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  196
  197             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  198             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  199
  200             CarefulNib   EQU ((CarefulFl)-1)/4
  201             CarefulBit   EQU ((CarefulFl)-1)%4
  202
  203             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  204             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  205
  206             ClockOnNib   EQU ((ClockOnFl)-1)/4
  207             ClockOnBit   EQU ((ClockOnFl)-1)%4
  208
  209             Complex2DNib EQU ((Complex2DFl)-1)/4
  210             Complex2DBit EQU ((Complex2DFl)-1)%4
  211
  212             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  213             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  214
  215             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  216             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  217
  218             ConstantsNib EQU ((ConstantsFl)-1)/4
  219             ConstantsBit EQU ((ConstantsFl)-1)%4
  220
  221             DateFmtNib   EQU ((DateFmtFl)-1)/4
  222             DateFmtBit   EQU ((DateFmtFl)-1)%4
  223
  224             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  225             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  226
  227             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  228             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  229
  230             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  231             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  232
  233             FastEViewNib EQU ((FastEqViewFl)-1)/4
  234             FastEViewBit EQU ((FastEqViewFl)-1)%4
  235
  236             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  237             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  238
  239             GCursorNib   EQU ((GCursorFl)-1)/4
  240             GCursorBit   EQU ((GCursorFl)-1)%4
  241
  242             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  243             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  244
  245             InfResActNib EQU ((InfResActFl)-1)/4
  246             InfResActBit EQU ((InfResActFl)-1)%4
  247
  248             InfResultNib EQU ((InfResultFl)-1)/4
  249             InfResultBit EQU ((InfResultFl)-1)%4
  250
  251             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  252             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  253
  254             IODeviceNib  EQU ((IODeviceFl)-1)/4
  255             IODeviceBit  EQU ((IODeviceFl)-1)%4
  256
  257             LastArgsNib  EQU ((LastArgsFl)-1)/4
  258             LastArgsBit  EQU ((LastArgsFl)-1)%4
  259
  260             VerboseNib   EQU ((VerboseFl)-1)/4
  261             VerboseBit   EQU ((VerboseFl)-1)%4
  262
  263             MultiDispNib EQU ((MultiDispFl)-1)/4
  264             MultiDispBit EQU ((MultiDispFl)-1)%4
  265
  266             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  267             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  268
  269             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  270             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  271
  272             NoParseNib   EQU ((NoParseFl)-1)/4
  273             NoParseBit   EQU ((NoParseFl)-1)%4
  274
  275             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  276             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  277
  278             NumDispNib   EQU ((NumDispFl1)-1)/4
  279             NumDispBit1  EQU ((NumDispFl1)-1)%4
  280
  281             OverfActNib  EQU ((OverfActFl)-1)/4
  282             OverfActBit  EQU ((OverfActFl)-1)%4
  283
  284             OverflowNib  EQU ((OverflowFl)-1)/4
  285             OverflowBit  EQU ((OverflowFl)-1)%4
  286
  287             OverwriteNib EQU ((OverwriteFl)-1)/4
  288             OverwriteBit EQU ((OverwriteFl)-1)%4
  289
  290             PrintDevNib  EQU ((PrintDevFl)-1)/4
  291             PrintDevBit  EQU ((PrintDevFl)-1)%4
  292
  293             RadixNib     EQU ((RadixFl)-1)/4
  294             RadixBit     EQU ((RadixFl)-1)%4
  295
  296             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  297             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  298
  299             ResultsNib   EQU ((ResultsFl)-1)/4
  300             ResultsBit   EQU ((ResultsFl)-1)%4
  301
  302             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  303             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  304
  305             SolutionsNib EQU ((SolutionsFl)-1)/4
  306             SolutionsBit EQU ((SolutionsFl)-1)%4
  307
  308             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  309             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  310
  311             TriUserNib   EQU ((TriUserFl)-1)/4
  312             TriUserBit   EQU ((TriUserFl)-1)%4
  313
  314             UnderfActNib EQU ((UnderfActFl)-1)/4
  315             UnderfActBit EQU ((UnderfActFl)-1)%4
  316
  317             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  318             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  319
  320             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  321             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  322
  323             UserKeysNib  EQU ((UserKeysFl)-1)/4
  324             UserKeysBit  EQU ((UserKeysFl)-1)%4
  325
  326             * RPL
  327             * RPL
  328             * insure RPL-mode exit
  329
  330
  331             * ASSEMBLE
  332
  333
  334             nonALG EQU 8                    not-allowed-in-algebraics flag
  335             hasHELP EQU 4                   has-help-data flag
  336             hasPROMPTM EQU 4                same as above
  337             hasALIAS EQU 2                  has-algebraic-alias flag
  338             hasPDATA EQU 1                  has-parse-data flag
  339
  340
  341             hasDER EQU 8                    has-derivative flag
  342             hasINV EQU 4                    has-inverse flag
  343             hasCOLCT EQU 2                  has-COLCT-data flag
  344             hasEXPND EQU 1                  has-EXPND-data flag
  345
  346
  347             hasFORM EQU 8                   has-FORM-menu flag
  348             hasINTG EQU 4                   has-Integral-data flag
  349             hasWHERE EQU 2                  has-WHERE-code flag
  350             hasVUNS EQU 1                   has-veryunsymin-code flag
  351
  352
  353             pdEX EQU #0             general expression
  354             pdOP EQU #1             operator
  355             pdQE EQU #2             quoted expression
  356             pdQN EQU #3             quoted name
  357             pdLP EQU #4             left parenthesis
  358             pdRP EQU #5             right parenthesis
  359             pdCM EQU #6             comma (non-radix)
  360             pdEQ EQU #7             equal-sign separator
  361             pdOS0 EQU #8            optional repeat 0
  362             pdOS1 EQU #9            optional repeat 1
  363             pdOS2 EQU #A            optional repeat 2
  364             pdOS3 EQU #B            optional repeat 3
  365             pdOS4 EQU #C            optional repeat 4
  366             pdOS5 EQU #D            optional repeat 5
  367             pdOS6 EQU #E            optional repeat 6
  368             pdOS7 EQU #F            optional repeat 7
  369
  370             * RPL
  371             * RPL
  372             * insure RPL-mode exit
  373
  374
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
  390             * RPL
  391             * insure RPL-mode exit
  392
  393             * RPL
  394             * insure RPL-mode exit
  395
  396
  397
  398
  399
  400
  401
  402
  403
  404             * ( for internal use only
  405
  406
  407
  408
  409
  410
  411
  412
  413
  414
  415             * ( decimal 67
  416             * ( decimal 86
  417             * ( decimal 82
  418             * ( decimal 85
  419             * ( decimal 101
  420             * ( decimal 97
  421             * ( decimal 100
  422             * ( decimal 113
  423             * ( decimal 112
  424
  425             * ( check width
  426             * ( field character width
  427
  428             * ( decimal 67
  429             * ( decimal 85
  430             * ( decimal 97
  431
  432
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
  448             * RPL
  449             * insure RPL-mode exit
  450
  451             * ( decimal 66
  452             * ( decimal 67
  453             * ( decimal 69
  454             * ( decimal 82
  455             * ( decimal 83
  456             * ( decimal 84
  457             * ( decimal 85
  458             * ( decimal 86
  459             * ( decimal 87
  460
  461
  462             * ( norm-view default visible row count
  463             * ( default first row X location
  464             * ( default first row Y location
  465             * ( default row width
  466             * ( default row height
  467
  468             * ( max-view width
  469             * ( max-view height
  470             * ( max-view default visible row count
  471
  472             * ( prompt area height
  473
  474             * ( more-up/down icon width
  475
  476
  477
  478             * RPL
  479             * insure RPL-mode exit
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
  695             * RPL
  696             * insure RPL-mode exit
  697
  698
  699
  700             * ( set for informations
  701             * ( set for step by step mode on
  702             * ( internal use: true if VXXL success
  703             * ( set for no gcd computations
  704             * ( set for complex mode
  705             * ( internal use:       LN->-INV[-LN]]
  706             * ( set for approx mode
  707             * ( set for TSIMP call inside SERIES
  708             * ( internal use:       modular computation
  709             * ( internal use:       testing remainder=0
  710             * ( set to allow numeric factorization
  711             * ( set for large matrices
  712             * ( set: don't simplify inside non rational operation
  713             * ( set to see i as an irrquad c=-1
  714             * ( set to disable linearity simplif.
  715             * ( set for increasing power x+1 -> 1+x
  716             * ( internal use:       sqrt not as irrquad
  717             * ( set if sin are prefered to cos
  718             * ( set for menu as choosebox
  719             * ( set if xINT is not simplified
  720             * ( set if non rigourous mode
  721             * ( set to allow silent mode switch
  722             * ( set if xLN returns LN[ABS[]]
  723
  724
  725             * ASSEMBLE
  726
  727             MultiLineFl     EQU     65
  728             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  729             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  730             MultiLineStringsFl      EQU     66
  731             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  732             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  733             DigitalClockFl  EQU     67
  734             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  735             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  736             CmdAutoIndentFl EQU     68
  737             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  738             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  739             FullScreenEditFl        EQU     69
  740             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  741             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  742             MultiLine2GROBFl        EQU     70
  743             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  744             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  745             DesasmWithAdrFl EQU     71
  746             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  747             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  748             BigFontStackFl  EQU     72
  749             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  750             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  751             BigFontCmdFl    EQU     73
  752             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  753             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  754             RightJustifiedStackFl   EQU     74
  755             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  756             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  757             KeystrokeBeepFl EQU     75
  758             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  759             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  760             FilerConfirmationFl     EQU     76
  761             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  762             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  763             FilerConfirmFl  EQU     77
  764             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  765             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  766             KernelParamFl   EQU     78
  767             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  768             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  769             PrettyPrintFl   EQU     79
  770             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  771             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  772             SmallFontEQWStackFl     EQU     80
  773             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  774             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  775             SmallFontEQWGrobFl      EQU     81
  776             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  777             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  778             SmallFontEQWEditFl      EQU     82
  779             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  780             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  781             GrobDisplayFl   EQU     83
  782             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  783             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  784             MKSmallFontMenuFl       EQU     84
  785             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  786             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  787             SystemRPLStackFl        EQU     85
  788             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  789             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  790             MASDDecompilerFl        EQU     86
  791             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  792             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  793             RecursiveStackFl        EQU     87
  794             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  795             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  796             RecursiveEditFl EQU     88
  797             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  798             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  799             AddressesCLEFl  EQU     89
  800             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  801             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  802             SmallFontChooseFl       EQU     90
  803             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  804             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  805             ArrayOnlyFl     EQU     91
  806             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  807             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  808             MLMASDModeFl    EQU     92
  809             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  810             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  811             ErableHeaderFl  EQU     93
  812             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  813             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  814             AutoSaveFl      EQU     94
  815             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  816             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  817             AlgebraicModeFl EQU     95
  818             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  819             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  820             MenuOnFl        EQU     96
  821             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  822             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  823             VerticalListFl  EQU     97
  824             VerticalListNib EQU     ((VerticalListFl)-1)/4
  825             VerticalListBit EQU     ((VerticalListFl)-1)%4
  826             VerticalVectorFl        EQU     98
  827             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  828             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  829
  830
  831             ComplexFl       EQU     103
  832             ComplexNib      EQU     ((ComplexFl)-1)/4
  833             ComplexBit      EQU     ((ComplexFl)-1)%4
  834
  835
  836             ExactModeFl     EQU     105
  837             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  838             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  839
  840
  841             * RPL
  842
  843
  844
  845             * ASSEMBLE
  846                     SETLIST CODE, INCLUDE, PSEUDO
  847             * RPL
  848
  849             *|| Resuming file OutptForm.s at line 15
  850             * ( HP48
  851             * File  OutptForm.s     18
  852 00000       =OutptForm
  853             * File  OutptForm.s     19
  854 00000 00000         CON(5)  =DOCOL
  855             * Label definitions
  856             * File  OutptForm.s     21
  857 00005 00000         CON(5)  =DOCSTR
  858 0000A F0000         CON(5)  15
  859 0000F 44943         NIBASC  \DIST:\
            545A3
  860 00019 00000         CON(5)  =ONE
  861 0001E 00000         CON(5)  =TEN
  862             * File  OutptForm.s     22
  863 00023 00000         CON(5)  =DOCSTR
  864 00028 F0000         CON(5)  15
  865 0002D 4594D         NIBASC  \TIME:\
            454A3
  866 00037 00000         CON(5)  =ONE
  867 0003C 00000         CON(5)  =NINETEEN
  868             * File  OutptForm.s     23
  869 00041 00000         CON(5)  =DOCSTR
  870 00046 F0000         CON(5)  15
  871 0004B 24552         NIBASC  \BURN:\
            5E4A3
  872 00055 00000         CON(5)  =ONE
  873 0005A 00000         CON(5)  =TWENTYEIGHT
  874             * File  OutptForm.s     24
  875
  876             * Field definitions
  877             * File  OutptForm.s     26
  878             * Field DIST definition
  879             * File  OutptForm.s     27
  880 0005F 00000         CON(5)  ='DROPFALSE
  881             * Message handler
  882             * File  OutptForm.s     28
  883 00064 00000         CON(5)  =TWENTYFIVE
  884 00069 00000         CON(5)  =EIGHT
  885 0006E 00000         CON(5)  =DOBINT
  886 00073 76000         CON(5)  103
  887 00078 00000         CON(5)  =NINE
  888             * Position & size
  889             * File  OutptForm.s     29
  890 0007D 00000         CON(5)  =ONE
  891             * Field type TEXT
  892             * File  OutptForm.s     30
  893 00082 00000         CON(5)  =DOLIST
  894 00087 00000         CON(5)  =ZERO
  895 0008C 00000         CON(5)  =SEMI
  896             * Allowed types REAL
  897             * File  OutptForm.s     31
  898 00091 00000         CON(5)  =TWO
  899             * Decompile
  900             * File  OutptForm.s     32
  901 00096 00000         CON(5)  =DOCSTR
  902 0009B 34000         CON(5)  67
  903 000A0 44943         NIBASC  \DISTANCE TO ETP FROM\
            54514
            E434540245F402544505026425F4D4

  904 000C8 02445         NIBASC  \ DEP. POINT\
            405E2
            0205F494E445

  905             * Help string
  906             * File  OutptForm.s     33
  907 000DE 00000         CON(5)  =MINUSONE
  908             * Choose data N/A
  909             * File  OutptForm.s     34
  910 000E3 00000         CON(5)  =MINUSONE
  911             * Choose decompile N/A
  912             * File  OutptForm.s     35
  913 000E8 00000         CON(5)  =DOIDNT
  914 000ED 50            CON(2)  5
  915 000EF 34054         NIBASC  \CPDIS\
            49435
  916             * Reset value
  917             * File  OutptForm.s     36
  918 000F9 00000         CON(5)  =DOIDNT
  919 000FE 50            CON(2)  5
  920 00100 34054         NIBASC  \CPDIS\
            49435
  921             * Initial value
  922             * File  OutptForm.s     37
  923
  924             * File  OutptForm.s     38
  925             * Field TIME definition
  926             * File  OutptForm.s     39
  927 0010A 00000         CON(5)  ='DROPFALSE
  928             * Message handler
  929             * File  OutptForm.s     40
  930 0010F 00000         CON(5)  =TWENTYFIVE
  931 00114 00000         CON(5)  =SEVENTEEN
  932 00119 00000         CON(5)  =DOBINT
  933 0011E 76000         CON(5)  103
  934 00123 00000         CON(5)  =NINE
  935             * Position & size
  936             * File  OutptForm.s     41
  937 00128 00000         CON(5)  =ONE
  938             * Field type TEXT
  939             * File  OutptForm.s     42
  940 0012D 00000         CON(5)  =DOLIST
  941 00132 00000         CON(5)  =ZERO
  942 00137 00000         CON(5)  =SEMI
  943             * Allowed types REAL
  944             * File  OutptForm.s     43
  945 0013C 00000         CON(5)  =TWO
  946             * Decompile
  947             * File  OutptForm.s     44
  948 00141 00000         CON(5)  =DOCSTR
  949 00146 F3000         CON(5)  63
  950 0014B 4594D         NIBASC  \TIME FROM ETP TO EIT\
            45402
            6425F4D4025445050245F402549445

  951 00173 84542         NIBASC  \HER POINT\
            50205
            F494E445

  952             * Help string
  953             * File  OutptForm.s     45
  954 00185 00000         CON(5)  =MINUSONE
  955             * Choose data N/A
  956             * File  OutptForm.s     46
  957 0018A 00000         CON(5)  =MINUSONE
  958             * Choose decompile N/A
  959             * File  OutptForm.s     47
  960 0018F 00000         CON(5)  =DOIDNT
  961 00194 50            CON(2)  5
  962 00196 34054         NIBASC  \CPTIM\
            594D4
  963             * Reset value
  964             * File  OutptForm.s     48
  965 001A0 00000         CON(5)  =DOIDNT
  966 001A5 50            CON(2)  5
  967 001A7 34054         NIBASC  \CPTIM\
            594D4
  968             * Initial value
  969             * File  OutptForm.s     49
  970
  971             * File  OutptForm.s     50
  972             * Field BURN definition
  973             * File  OutptForm.s     51
  974 001B1 00000         CON(5)  ='DROPFALSE
  975             * Message handler
  976             * File  OutptForm.s     52
  977 001B6 00000         CON(5)  =TWENTYFIVE
  978 001BB 00000         CON(5)  =TWENTYSIX
  979 001C0 00000         CON(5)  =DOBINT
  980 001C5 76000         CON(5)  103
  981 001CA 00000         CON(5)  =NINE
  982             * Position & size
  983             * File  OutptForm.s     53
  984 001CF 00000         CON(5)  =ONE
  985             * Field type TEXT
  986             * File  OutptForm.s     54
  987 001D4 00000         CON(5)  =DOLIST
  988 001D9 00000         CON(5)  =ZERO
  989 001DE 00000         CON(5)  =SEMI
  990             * Allowed types REAL
  991             * File  OutptForm.s     55
  992 001E3 00000         CON(5)  =TWO
  993             * Decompile
  994             * File  OutptForm.s     56
  995 001E8 00000         CON(5)  =DOCSTR
  996 001ED F3000         CON(5)  63
  997 001F2 64555         NIBASC  \FUEL BURN FM ETP TO \
            4C402
            245525E40264D4025445050245F402

  998 0021A 54944         NIBASC  \EITHER PT\
            58454
            25020545

  999             * Help string
 1000             * File  OutptForm.s     57
 1001 0022C 00000         CON(5)  =MINUSONE
 1002             * Choose data N/A
 1003             * File  OutptForm.s     58
 1004 00231 00000         CON(5)  =MINUSONE
 1005             * Choose decompile N/A
 1006             * File  OutptForm.s     59
 1007 00236 00000         CON(5)  =DOIDNT
 1008 0023B 40            CON(2)  4
 1009 0023D 64242         NIBASC  \FBRN\
            5E4
 1010             * Reset value
 1011             * File  OutptForm.s     60
 1012 00245 00000         CON(5)  =DOIDNT
 1013 0024A 40            CON(2)  4
 1014 0024C 64242         NIBASC  \FBRN\
            5E4
 1015             * Initial value
 1016             * File  OutptForm.s     61
 1017
 1018             * File  OutptForm.s     62
 1019 00254 00000         CON(5)  =THREE
 1020 00259 00000         CON(5)  =THREE
 1021             * #labels #fields
 1022             * File  OutptForm.s     63
 1023 0025E 00000         CON(5)  ='DROPFALSE
 1024             * Message handler
 1025             * File  OutptForm.s     64
 1026 00263 00000         CON(5)  =DOCSTR
 1027 00268 53000         CON(5)  53
 1028 0026D 54155         NIBASC  \EQUI-TIME POINT - OU\
            594D2
            4594D4540205F494E44502D202F455

 1029 00295 45055         NIBASC  \TPUT\
            545
 1030             * Title
 1031             *               FLASHPTR IfMain                 ( HP50 )
 1032             * File  OutptForm.s     66
 1033 0029D 00000         CON(5)  =DoInputForm
 1034             * HP48, HP50
 1035             * File  OutptForm.s     67
 1036 002A2 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       OutptForm.a    Page    2

 'DROPFALSE                        Ext                   -   880   927   974
                                        1023
 AddressesCLEBit                   Abs       0 #00000000 -   801
 AddressesCLEFl                    Abs      89 #00000059 -   799   800   801
 AddressesCLENib                   Abs      22 #00000016 -   800
 AlarmBeepBit                      Abs       0 #00000000 -   188
 AlarmBeepFl                       Abs      57 #00000039 -   176   187   188
 AlarmBeepNib                      Abs      14 #0000000E -   187
 AlgebraicModeBit                  Abs       2 #00000002 -   819
 AlgebraicModeFl                   Abs      95 #0000005F -   817   818   819
 AlgebraicModeNib                  Abs      23 #00000017 -   818
 AngleBCt                          Abs       2 #00000002 -   139
 AngleBit1                         Abs       0 #00000000 -   191   192
 AngleBit2                         Abs       1 #00000001 -   192
 AngleFl1                          Abs      17 #00000011 -   138   190   191
 AngleNib                          Abs       4 #00000004 -   190
 ArrayOnlyBit                      Abs       2 #00000002 -   807
 ArrayOnlyFl                       Abs      91 #0000005B -   805   806   807
 ArrayOnlyNib                      Abs      22 #00000016 -   806
 AutoSaveBit                       Abs       1 #00000001 -   816
 AutoSaveFl                        Abs      94 #0000005E -   814   815   816
 AutoSaveNib                       Abs      23 #00000017 -   815
 BigFontCmdBit                     Abs       0 #00000000 -   753
 BigFontCmdFl                      Abs      73 #00000049 -   751   752   753
 BigFontCmdNib                     Abs      18 #00000012 -   752
 BigFontStackBit                   Abs       3 #00000003 -   750
 BigFontStackFl                    Abs      72 #00000048 -   748   749   750
 BigFontStackNib                   Abs      17 #00000011 -   749
 BinBaseBCt                        Abs       2 #00000002 -   134
 BinBaseBit1                       Abs       2 #00000002 -   195
 BinBaseFl1                        Abs      11 #0000000B -   133   194   195
 BinBaseNib                        Abs       2 #00000002 -   194
 BinWordSBCt                       Abs       6 #00000006 -   132
 BinWordSBit1                      Abs       0 #00000000 -   198
 BinWordSFl1                       Abs       5 #00000005 -   131   197   198
 BinWordSNib                       Abs       1 #00000001 -   197
 CarefulBit                        Abs       3 #00000003 -   201
 CarefulFl                         Abs       4 #00000004 -   129   200   201
 CarefulNib                        Abs       0 #00000000 -   200
 ClockFmtBit                       Abs       0 #00000000 -   204
 ClockFmtFl                        Abs      41 #00000029 -   161   203   204
 ClockFmtNib                       Abs      10 #0000000A -   203
 ClockOnBit                        Abs       3 #00000003 -   207
 ClockOnFl                         Abs      40 #00000028 -   160   206   207
 ClockOnNib                        Abs       9 #00000009 -   206
 CmdAutoIndentBit                  Abs       3 #00000003 -   738
 CmdAutoIndentFl                   Abs      68 #00000044 -   736   737   738
 CmdAutoIndentNib                  Abs      16 #00000010 -   737
 ComVecDiBCt                       Abs       2 #00000002 -   137
 ComVecDiBit1                      Abs       2 #00000002 -   213
 ComVecDiFl1                       Abs      15 #0000000F -   136   212   213
 ComVecDiNib                       Abs       3 #00000003 -   212
 Complex2DBit                      Abs       2 #00000002 -   210
 Complex2DFl                       Abs      19 #00000013 -   140   209   210
 Complex2DNib                      Abs       4 #00000004 -   209
 ComplexBit                        Abs       2 #00000002 -   833
 ComplexFl                         Abs     103 #00000067 -   831   832   833
 ComplexNib                        Abs      25 #00000019 -   832
 ConnectPtBit                      Abs       2 #00000002 -   216
 ConnectPtFl                       Abs      31 #0000001F -   150   215   216
 ConnectPtNib                      Abs       7 #00000007 -   215
 ConstantsBit                      Abs       1 #00000001 -   219
 ConstantsFl                       Abs       2 #00000002 -   127   218   219
 ConstantsNib                      Abs       0 #00000000 -   218
 DOBINT                            Ext                   -   885   932   979
 DOCOL                             Ext                   -   854
 DOCSTR                            Ext                   -   857   863   869
                                         901   948   995  1026
 DOIDNT                            Ext                   -   913   918   960
                                         965  1007  1012
 DOLIST                            Ext                   -   893   940   987
 DateFmtBit                        Abs       1 #00000001 -   222
 DateFmtFl                         Abs      42 #0000002A -   162   221   222
 DateFmtNib                        Abs      10 #0000000A -   221
 DblSpaceBit                       Abs       0 #00000000 -   225
 DblSpaceFl                        Abs      37 #00000025 -   156   224   225
 DblSpaceNib                       Abs       9 #00000009 -   224
 DefSysF32-01                      Abs67178480 #04010FF0 -    51
 DefSysF64-33                      Abs       0 #00000000 -    50
 DefSysF65-96                      Abs1107296256 #42000000 -    52
 DefSysF97-128                     Abs       0 #00000000 -    53
 DelNRAlmBit                       Abs       3 #00000003 -   228
 DelNRAlmFl                        Abs      44 #0000002C -   164   227   228
 DelNRAlmNib                       Abs      10 #0000000A -   227
 DesasmWithAdrBit                  Abs       2 #00000002 -   747
 DesasmWithAdrFl                   Abs      71 #00000047 -   745   746   747
 DesasmWithAdrNib                  Abs      17 #00000011 -   746
 DigitalClockBit                   Abs       2 #00000002 -   735
 DigitalClockFl                    Abs      67 #00000043 -   733   734   735
 DigitalClockNib                   Abs      16 #00000010 -   734
 DoInputForm                       Ext                   -  1033
 EIGHT                             Ext                   -   884
 ErableHeaderBit                   Abs       0 #00000000 -   813
 ErableHeaderFl                    Abs      93 #0000005D -   811   812   813
 ErableHeaderNib                   Abs      23 #00000017 -   812
 ErrorBeepBit                      Abs       3 #00000003 -   231
 ErrorBeepFl                       Abs      56 #00000038 -   175   230   231
 ErrorBeepNib                      Abs      13 #0000000D -   230
 ExactModeBit                      Abs       0 #00000000 -   838
 ExactModeFl                       Abs     105 #00000069 -   836   837   838
 ExactModeNib                      Abs      26 #0000001A -   837
 FastEViewBit                      Abs       2 #00000002 -   234
 FastEViewNib                      Abs      14 #0000000E -   233
 FastEqViewFl                      Abs      59 #0000003B -   178   233   234
 FilerConfirmBit                   Abs       0 #00000000 -   765
 FilerConfirmFl                    Abs      77 #0000004D -   763   764   765
 FilerConfirmNib                   Abs      19 #00000013 -   764
 FilerConfirmationBit              Abs       3 #00000003 -   762
 FilerConfirmationFl               Abs      76 #0000004C -   760   761   762
 FilerConfirmationNib              Abs      18 #00000012 -   761
 FullScreenEditBit                 Abs       0 #00000000 -   741
 FullScreenEditFl                  Abs      69 #00000045 -   739   740   741
 FullScreenEditNib                 Abs      17 #00000011 -   740
 FunctPlotBit                      Abs       1 #00000001 -   237
 FunctPlotFl                       Abs      30 #0000001E -   149   236   237
 FunctPlotNib                      Abs       7 #00000007 -   236
 GCursorBit                        Abs       3 #00000003 -   240
 GCursorFl                         Abs      32 #00000020 -   151   239   240
 GCursorNib                        Abs       7 #00000007 -   239
 GrobDisplayBit                    Abs       2 #00000002 -   783
 GrobDisplayFl                     Abs      83 #00000053 -   781   782   783
 GrobDisplayNib                    Abs      20 #00000014 -   782
 IODataFmtBit                      Abs       2 #00000002 -   252
 IODataFmtFl                       Abs      35 #00000023 -   154   251   252
 IODataFmtNib                      Abs       8 #00000008 -   251
 IODeviceBit                       Abs       0 #00000000 -   255
 IODeviceFl                        Abs      33 #00000021 -   152   254   255
 IODeviceNib                       Abs       8 #00000008 -   254
 IndexWrapBit                      Abs       3 #00000003 -   243
 IndexWrapFl                       Abs      64 #00000040 -   183   242   243
 IndexWrapNib                      Abs      15 #0000000F -   242
 InfResActBit                      Abs       1 #00000001 -   246
 InfResActFl                       Abs      22 #00000016 -   143   245   246
 InfResActNib                      Abs       5 #00000005 -   245
 InfResultBit                      Abs       1 #00000001 -   249
 InfResultFl                       Abs      26 #0000001A -   147   248   249
 InfResultNib                      Abs       6 #00000006 -   248
 KernelParamBit                    Abs       1 #00000001 -   768
 KernelParamFl                     Abs      78 #0000004E -   766   767   768
 KernelParamNib                    Abs      19 #00000013 -   767
 KeystrokeBeepBit                  Abs       2 #00000002 -   759
 KeystrokeBeepFl                   Abs      75 #0000004B -   757   758   759
 KeystrokeBeepNib                  Abs      18 #00000012 -   758
 LastArgsBit                       Abs       2 #00000002 -   258
 LastArgsFl                        Abs      55 #00000037 -   174   257   258
 LastArgsNib                       Abs      13 #0000000D -   257
 MASDDecompilerBit                 Abs       1 #00000001 -   792
 MASDDecompilerFl                  Abs      86 #00000056 -   790   791   792
 MASDDecompilerNib                 Abs      21 #00000015 -   791
 MINUSONE                          Ext                   -   907   910   954
                                         957  1001  1004
 MKSmallFontMenuBit                Abs       3 #00000003 -   786
 MKSmallFontMenuFl                 Abs      84 #00000054 -   784   785   786
 MKSmallFontMenuNib                Abs      20 #00000014 -   785
 MLMASDModeBit                     Abs       3 #00000003 -   810
 MLMASDModeFl                      Abs      92 #0000005C -   808   809   810
 MLMASDModeNib                     Abs      22 #00000016 -   809
 MenuOnBit                         Abs       3 #00000003 -   822
 MenuOnFl                          Abs      96 #00000060 -   820   821   822
 MenuOnNib                         Abs      23 #00000017 -   821
 MultiDispBit                      Abs       3 #00000003 -   264
 MultiDispFl                       Abs      52 #00000034 -   171   263   264
 MultiDispNib                      Abs      12 #0000000C -   263
 MultiLine2GROBBit                 Abs       1 #00000001 -   744
 MultiLine2GROBFl                  Abs      70 #00000046 -   742   743   744
 MultiLine2GROBNib                 Abs      17 #00000011 -   743
 MultiLineBit                      Abs       0 #00000000 -   729
 MultiLineFl                       Abs      65 #00000041 -   727   728   729
 MultiLineNib                      Abs      16 #00000010 -   728
 MultiLineStringsBit               Abs       1 #00000001 -   732
 MultiLineStringsFl                Abs      66 #00000042 -   730   731   732
 MultiLineStringsNib               Abs      16 #00000010 -   731
 NINE                              Ext                   -   887   934   981
 NINETEEN                          Ext                   -   867
 NoAutoCRBit                       Abs       1 #00000001 -   267
 NoAutoCRFl                        Abs      38 #00000026 -   157   266   267
 NoAutoCRNib                       Abs       9 #00000009 -   266
 NoIOStMsgBit                      Abs       2 #00000002 -   270
 NoIOStMsgNib                      Abs       9 #00000009 -   269
 NoIOStsMsgFl                      Abs      39 #00000027 -   158   269   270
 NoParseBit                        Abs       2 #00000002 -   273
 NoParseFl                         Abs      63 #0000003F -   182   272   273
 NoParseNib                        Abs      15 #0000000F -   272
 NumDigsBCt                        Abs       4 #00000004 -   167
 NumDigsBit1                       Abs       0 #00000000 -   276
 NumDigsFl1                        Abs      45 #0000002D -   166   275   276
 NumDigsNib                        Abs      11 #0000000B -   275
 NumDispBCt                        Abs       2 #00000002 -   169
 NumDispBit1                       Abs       0 #00000000 -   279
 NumDispFl1                        Abs      49 #00000031 -   168   278   279
 NumDispNib                        Abs      12 #0000000C -   278
 ONE                               Ext                   -   860   866   872
                                         890   937   984
=OutptForm                         Rel       0 #00000000 -   852
 OverfActBit                       Abs       0 #00000000 -   282
 OverfActFl                        Abs      21 #00000015 -   142   281   282
 OverfActNib                       Abs       5 #00000005 -   281
 OverflowBit                       Abs       0 #00000000 -   285
 OverflowFl                        Abs      25 #00000019 -   146   284   285
 OverflowNib                       Abs       6 #00000006 -   284
 OverwriteBit                      Abs       3 #00000003 -   288
 OverwriteFl                       Abs      36 #00000024 -   155   287   288
 OverwriteNib                      Abs       8 #00000008 -   287
 PrettyPrintBit                    Abs       2 #00000002 -   771
 PrettyPrintFl                     Abs      79 #0000004F -   769   770   771
 PrettyPrintNib                    Abs      19 #00000013 -   770
 PrintDevBit                       Abs       1 #00000001 -   291
 PrintDevFl                        Abs      34 #00000022 -   153   290   291
 PrintDevNib                       Abs       8 #00000008 -   290
 RadixBit                          Abs       2 #00000002 -   294
 RadixFl                           Abs      51 #00000033 -   170   293   294
 RadixNib                          Abs      12 #0000000C -   293
 RecursiveEditBit                  Abs       3 #00000003 -   798
 RecursiveEditFl                   Abs      88 #00000058 -   796   797   798
 RecursiveEditNib                  Abs      21 #00000015 -   797
 RecursiveStackBit                 Abs       2 #00000002 -   795
 RecursiveStackFl                  Abs      87 #00000057 -   793   794   795
 RecursiveStackNib                 Abs      21 #00000015 -   794
 ResRepAlmBit                      Abs       2 #00000002 -   297
 ResRepAlmFl                       Abs      43 #0000002B -   163   296   297
 ResRepAlmNib                      Abs      10 #0000000A -   296
 ResultsBit                        Abs       2 #00000002 -   300
 ResultsFl                         Abs       3 #00000003 -   128   299   300
 ResultsNib                        Abs       0 #00000000 -   299
 RightJustifiedStackBit            Abs       1 #00000001 -   756
 RightJustifiedStackFl             Abs      74 #0000004A -   754   755   756
 RightJustifiedStackNib            Abs      18 #00000012 -   755
=RomId                             Abs     809 #00000329 -    19
 SEMI                              Ext                   -   895   942   989
                                        1036
 SEVENTEEN                         Ext                   -   931
 ShowPrecBit                       Abs       0 #00000000 -   303
 ShowPrecFl                        Abs      53 #00000035 -   172   302   303
 ShowPrecNib                       Abs      13 #0000000D -   302
 SmallFontChooseBit                Abs       1 #00000001 -   804
 SmallFontChooseFl                 Abs      90 #0000005A -   802   803   804
 SmallFontChooseNib                Abs      22 #00000016 -   803
 SmallFontEQWEditBit               Abs       1 #00000001 -   780
 SmallFontEQWEditFl                Abs      82 #00000052 -   778   779   780
 SmallFontEQWEditNib               Abs      20 #00000014 -   779
 SmallFontEQWGrobBit               Abs       0 #00000000 -   777
 SmallFontEQWGrobFl                Abs      81 #00000051 -   775   776   777
 SmallFontEQWGrobNib               Abs      20 #00000014 -   776
 SmallFontEQWStackBit              Abs       3 #00000003 -   774
 SmallFontEQWStackFl               Abs      80 #00000050 -   772   773   774
 SmallFontEQWStackNib              Abs      19 #00000013 -   773
 SolutionsBit                      Abs       0 #00000000 -   306
 SolutionsFl                       Abs       1 #00000001 -   126   305   306
 SolutionsNib                      Abs       0 #00000000 -   305
 SystemRPLStackBit                 Abs       0 #00000000 -   789
 SystemRPLStackFl                  Abs      85 #00000055 -   787   788   789
 SystemRPLStackNib                 Abs      21 #00000015 -   788
 TEN                               Ext                   -   861
 THREE                             Ext                   -  1019  1020
 TWENTYEIGHT                       Ext                   -   873
 TWENTYFIVE                        Ext                   -   883   930   977
 TWENTYSIX                         Ext                   -   978
 TWO                               Ext                   -   898   945   992
 TriAlphaBit                       Abs       3 #00000003 -   309
 TriAlphaFl                        Abs      60 #0000003C -   179   308   309
 TriAlphaNib                       Abs      14 #0000000E -   308
 TriUserBit                        Abs       0 #00000000 -   312
 TriUserFl                         Abs      61 #0000003D -   180   311   312
 TriUserNib                        Abs      15 #0000000F -   311
 UnderfActBit                      Abs       3 #00000003 -   315
 UnderfActFl                       Abs      20 #00000014 -   141   314   315
 UnderfActNib                      Abs       4 #00000004 -   314
 UnderfNegBit                      Abs       2 #00000002 -   318
 UnderfNegFl                       Abs      23 #00000017 -   144   317   318
 UnderfNegNib                      Abs       5 #00000005 -   317
 UnderfPosBit                      Abs       3 #00000003 -   321
 UnderfPosFl                       Abs      24 #00000018 -   145   320   321
 UnderfPosNib                      Abs       5 #00000005 -   320
 UserKeysBit                       Abs       1 #00000001 -   324
 UserKeysFl                        Abs      62 #0000003E -   181   323   324
 UserKeysNib                       Abs      15 #0000000F -   323
 VerboseBit                        Abs       1 #00000001 -   261
 VerboseFl                         Abs      58 #0000003A -   177   260   261
 VerboseNib                        Abs      14 #0000000E -   260
 VerticalListBit                   Abs       0 #00000000 -   825
 VerticalListFl                    Abs      97 #00000061 -   823   824   825
 VerticalListNib                   Abs      24 #00000018 -   824
 VerticalVectorBit                 Abs       1 #00000001 -   828
 VerticalVectorFl                  Abs      98 #00000062 -   826   827   828
 VerticalVectorNib                 Abs      24 #00000018 -   827
 ZERO                              Ext                   -   894   941   988
 hasALIAS                          Abs       2 #00000002 -   337
 hasCOLCT                          Abs       2 #00000002 -   343
 hasDER                            Abs       8 #00000008 -   341
 hasEXPND                          Abs       1 #00000001 -   344
 hasFORM                           Abs       8 #00000008 -   347
 hasHELP                           Abs       4 #00000004 -   335
 hasINTG                           Abs       4 #00000004 -   348
 hasINV                            Abs       4 #00000004 -   342
 hasPDATA                          Abs       1 #00000001 -   338
 hasPROMPTM                        Abs       4 #00000004 -   336
 hasVUNS                           Abs       1 #00000001 -   350
 hasWHERE                          Abs       2 #00000002 -   349
 nonALG                            Abs       8 #00000008 -   334
 pdCM                              Abs       6 #00000006 -   359
 pdEQ                              Abs       7 #00000007 -   360
 pdEX                              Abs       0 #00000000 -   353
 pdLP                              Abs       4 #00000004 -   357
 pdOP                              Abs       1 #00000001 -   354
 pdOS0                             Abs       8 #00000008 -   361
 pdOS1                             Abs       9 #00000009 -   362
 pdOS2                             Abs      10 #0000000A -   363
 pdOS3                             Abs      11 #0000000B -   364
 pdOS4                             Abs      12 #0000000C -   365
 pdOS5                             Abs      13 #0000000D -   366
 pdOS6                             Abs      14 #0000000E -   367
 pdOS7                             Abs      15 #0000000F -   368
 pdQE                              Abs       2 #00000002 -   355
 pdQN                              Abs       3 #00000003 -   356
 pdRP                              Abs       5 #00000005 -   358
Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)   Statistics                         OutptForm.a    Page    3

Input Parameters

  Source file name is OutptForm.a

  Listing file name is OutptForm.l

  Object file name is OutptForm.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
