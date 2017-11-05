Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)                                      InptForm.a     Page    1

    1             * File  InptForm.s      1
    2             * RPL
    3             * File  InptForm.s      2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\InptForm.s, part of the ROASB50.hpp project, created by <> on 23/06/2009
    5             **********************************************************************
    6             * NAME:          InptForm
    7             * AUTHOR:        Dan Pitic
    8             * LIBRARY #:     323h = 803d
    9             * VERSION:       1.4
   10             * DATE:          22 June 2009
   11             * COMPATIBILITY: HP50
   12             *                HP48  ( Requires DoInputForm )
   13             * DESCRIPTION:   Generates the INPUT form to enter the INPUT arguments
   14             *                for the library application.
   15             *
   16             * File  InptForm.s      14
   17             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROASB48\ROASB48.h
   18
   19             =RomId  EQU     #323
   20             * ROMID set to 323
   21
   22
   23
   24
   25
   26
   27             *|| Resuming file InptForm.s at line 14
   28             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
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
  849             *|| Resuming file InptForm.s at line 15
  850             * ( HP48
  851             * File  InptForm.s      18
  852 00000       =InptForm
  853             * File  InptForm.s      19
  854 00000 00000         CON(5)  =DOCOL
  855             * Label definitions
  856             * File  InptForm.s      21
  857 00005 00000         CON(5)  =DOCSTR
  858 0000A B0000         CON(5)  11
  859 0000F 7544A         NIBASC  \WD:\
            3
  860 00015 00000         CON(5)  =ONE
  861 0001A 00000         CON(5)  =TEN
  862             * File  InptForm.s      22
  863 0001F 00000         CON(5)  =DOCSTR
  864 00024 B0000         CON(5)  11
  865 00029 7535A         NIBASC  \WS:\
            3
  866 0002F 00000         CON(5)  =FOURTHREE
  867 00034 00000         CON(5)  =TEN
  868             * File  InptForm.s      23
  869 00039 00000         CON(5)  =DOCSTR
  870 0003E D0000         CON(5)  13
  871 00043 45341         NIBASC  \TC1:\
            3A3
  872 0004B 00000         CON(5)  =ONE
  873 00050 00000         CON(5)  =NINETEEN
  874             * File  InptForm.s      24
  875 00055 00000         CON(5)  =DOCSTR
  876 0005A 90000         CON(5)  9
  877 0005F 45A3          NIBASC  \T:\
  878 00063 00000         CON(5)  =FOURTHREE
  879 00068 00000         CON(5)  =NINETEEN
  880             * File  InptForm.s      25
  881 0006D 00000         CON(5)  =DOCSTR
  882 00072 D0000         CON(5)  13
  883 00077 45143         NIBASC  \TAS:\
            5A3
  884 0007F 00000         CON(5)  =ONE
  885 00084 00000         CON(5)  =TWENTYEIGHT
  886             * File  InptForm.s      26
  887 00089 00000         CON(5)  =DOCSTR
  888 0008E F0000         CON(5)  15
  889 00093 4484F         NIBASC  \DHOM:\
            4D4A3
  890 0009D 00000         CON(5)  =FOURTHREE
  891 000A2 00000         CON(5)  =TWENTYEIGHT
  892             * File  InptForm.s      27
  893
  894             * Field definitions
  895             * File  InptForm.s      29
  896             * Field WD definition
  897             * File  InptForm.s      30
  898 000A7 00000         CON(5)  ='DROPFALSE
  899             * Message handler
  900             * File  InptForm.s      31
  901 000AC 00000         CON(5)  =NINETEEN
  902 000B1 00000         CON(5)  =EIGHT
  903 000B6 00000         CON(5)  =FORTYTHREE
  904 000BB 00000         CON(5)  =NINE
  905             * Position & size
  906             * File  InptForm.s      32
  907 000C0 00000         CON(5)  =ONE
  908             * Field type TEXT
  909             * File  InptForm.s      33
  910 000C5 00000         CON(5)  =DOLIST
  911 000CA 00000         CON(5)  =ZERO
  912 000CF 00000         CON(5)  =SEMI
  913             * Allowed types REAL
  914             * File  InptForm.s      34
  915 000D4 00000         CON(5)  =TWO
  916             * Decompile
  917             * File  InptForm.s      35
  918 000D9 00000         CON(5)  =DOCSTR
  919 000DE F2000         CON(5)  47
  920 000E3 7594E         NIBASC  \WIND DIRECTION (FROM\
            44402
            44942554344594F4E402826425F4D4

  921 0010B 92            NIBASC  \)\
  922             * Help string
  923             * File  InptForm.s      36
  924 0010D 00000         CON(5)  =MINUSONE
  925             * Choose data N/A
  926             * File  InptForm.s      37
  927 00112 00000         CON(5)  =MINUSONE
  928             * Choose decompile N/A
  929             * File  InptForm.s      38
  930 00117 00000         CON(5)  =MINUSONE
  931             * Reset value
  932             * File  InptForm.s      39
  933 0011C 00000         CON(5)  =DOIDNT
  934 00121 20            CON(2)  2
  935 00123 7544          NIBASC  \WD\
  936             * Initial value
  937             * File  InptForm.s      40
  938
  939             * File  InptForm.s      41
  940             * Field WS definition
  941             * File  InptForm.s      42
  942 00127 00000         CON(5)  ='DROPFALSE
  943             * Message handler
  944             * File  InptForm.s      43
  945 0012C 00000         CON(5)  =LISTCMP
  946 00131 00000         CON(5)  =EIGHT
  947 00136 00000         CON(5)  =FORTYTHREE
  948 0013B 00000         CON(5)  =NINE
  949             * Position & size
  950             * File  InptForm.s      44
  951 00140 00000         CON(5)  =ONE
  952             * Field type TEXT
  953             * File  InptForm.s      45
  954 00145 00000         CON(5)  =DOLIST
  955 0014A 00000         CON(5)  =ZERO
  956 0014F 00000         CON(5)  =SEMI
  957             * Allowed types REAL
  958             * File  InptForm.s      46
  959 00154 00000         CON(5)  =TWO
  960             * Decompile
  961             * File  InptForm.s      47
  962 00159 00000         CON(5)  =DOCSTR
  963 0015E 91000         CON(5)  25
  964 00163 7594E         NIBASC  \WIND SPEED\
            44402
            3505545444

  965             * Help string
  966             * File  InptForm.s      48
  967 00177 00000         CON(5)  =MINUSONE
  968             * Choose data N/A
  969             * File  InptForm.s      49
  970 0017C 00000         CON(5)  =MINUSONE
  971             * Choose decompile N/A
  972             * File  InptForm.s      50
  973 00181 00000         CON(5)  =MINUSONE
  974             * Reset value
  975             * File  InptForm.s      51
  976 00186 00000         CON(5)  =DOIDNT
  977 0018B 20            CON(2)  2
  978 0018D 7535          NIBASC  \WS\
  979             * Initial value
  980             * File  InptForm.s      52
  981
  982             * File  InptForm.s      53
  983             * Field TC1 definition
  984             * File  InptForm.s      54
  985 00191 00000         CON(5)  ='DROPFALSE
  986             * Message handler
  987             * File  InptForm.s      55
  988 00196 00000         CON(5)  =NINETEEN
  989 0019B 00000         CON(5)  =SEVENTEEN
  990 001A0 00000         CON(5)  =FORTYTHREE
  991 001A5 00000         CON(5)  =NINE
  992             * Position & size
  993             * File  InptForm.s      56
  994 001AA 00000         CON(5)  =ONE
  995             * Field type TEXT
  996             * File  InptForm.s      57
  997 001AF 00000         CON(5)  =DOLIST
  998 001B4 00000         CON(5)  =ZERO
  999 001B9 00000         CON(5)  =SEMI
 1000             * Allowed types REAL
 1001             * File  InptForm.s      58
 1002 001BE 00000         CON(5)  =TWO
 1003             * Decompile
 1004             * File  InptForm.s      59
 1005 001C3 00000         CON(5)  =DOCSTR
 1006 001C8 12000         CON(5)  33
 1007 001CD 45251         NIBASC  \TRACK OUTBOUND\
            434B4
            02F4554524F455E444

 1008             * Help string
 1009             * File  InptForm.s      60
 1010 001E9 00000         CON(5)  =MINUSONE
 1011             * Choose data N/A
 1012             * File  InptForm.s      61
 1013 001EE 00000         CON(5)  =MINUSONE
 1014             * Choose decompile N/A
 1015             * File  InptForm.s      62
 1016 001F3 00000         CON(5)  =MINUSONE
 1017             * Reset value
 1018             * File  InptForm.s      63
 1019 001F8 00000         CON(5)  =DOIDNT
 1020 001FD 30            CON(2)  3
 1021 001FF 45341         NIBASC  \TC1\
            3
 1022             * Initial value
 1023             * File  InptForm.s      64
 1024
 1025             * File  InptForm.s      65
 1026             * Field T definition
 1027             * File  InptForm.s      66
 1028 00205 00000         CON(5)  ='DROPFALSE
 1029             * Message handler
 1030             * File  InptForm.s      67
 1031 0020A 00000         CON(5)  =LISTCMP
 1032 0020F 00000         CON(5)  =SEVENTEEN
 1033 00214 00000         CON(5)  =FORTYTHREE
 1034 00219 00000         CON(5)  =NINE
 1035             * Position & size
 1036             * File  InptForm.s      68
 1037 0021E 00000         CON(5)  =ONE
 1038             * Field type TEXT
 1039             * File  InptForm.s      69
 1040 00223 00000         CON(5)  =DOLIST
 1041 00228 00000         CON(5)  =ZERO
 1042 0022D 00000         CON(5)  =SEMI
 1043             * Allowed types REAL
 1044             * File  InptForm.s      70
 1045 00232 00000         CON(5)  =TWO
 1046             * Decompile
 1047             * File  InptForm.s      71
 1048 00237 00000         CON(5)  =DOCSTR
 1049 0023C 13000         CON(5)  49
 1050 00241 35146         NIBASC  \SAFE ENDURANCE (HOUR\
            45402
            54E444552514E43454028284F45525

 1051 00269 3592          NIBASC  \S)\
 1052             * Help string
 1053             * File  InptForm.s      72
 1054 0026D 00000         CON(5)  =MINUSONE
 1055             * Choose data N/A
 1056             * File  InptForm.s      73
 1057 00272 00000         CON(5)  =MINUSONE
 1058             * Choose decompile N/A
 1059             * File  InptForm.s      74
 1060 00277 00000         CON(5)  =MINUSONE
 1061             * Reset value
 1062             * File  InptForm.s      75
 1063 0027C 00000         CON(5)  =DOIDNT
 1064 00281 10            CON(2)  1
 1065 00283 45            NIBASC  \T\
 1066             * Initial value
 1067             * File  InptForm.s      76
 1068
 1069             * File  InptForm.s      77
 1070             * Field TAS definition
 1071             * File  InptForm.s      78
 1072 00285 00000         CON(5)  ='DROPFALSE
 1073             * Message handler
 1074             * File  InptForm.s      79
 1075 0028A 00000         CON(5)  =NINETEEN
 1076 0028F 00000         CON(5)  =TWENTYSIX
 1077 00294 00000         CON(5)  =FORTYTHREE
 1078 00299 00000         CON(5)  =NINE
 1079             * Position & size
 1080             * File  InptForm.s      80
 1081 0029E 00000         CON(5)  =ONE
 1082             * Field type TEXT
 1083             * File  InptForm.s      81
 1084 002A3 00000         CON(5)  =DOLIST
 1085 002A8 00000         CON(5)  =ZERO
 1086 002AD 00000         CON(5)  =SEMI
 1087             * Allowed types REAL
 1088             * File  InptForm.s      82
 1089 002B2 00000         CON(5)  =TWO
 1090             * Decompile
 1091             * File  InptForm.s      83
 1092 002B7 00000         CON(5)  =DOCSTR
 1093 002BC 12000         CON(5)  33
 1094 002C1 45255         NIBASC  \TRUE AIR SPEED\
            55402
            149425023505545444

 1095             * Help string
 1096             * File  InptForm.s      84
 1097 002DD 00000         CON(5)  =MINUSONE
 1098             * Choose data N/A
 1099             * File  InptForm.s      85
 1100 002E2 00000         CON(5)  =MINUSONE
 1101             * Choose decompile N/A
 1102             * File  InptForm.s      86
 1103 002E7 00000         CON(5)  =MINUSONE
 1104             * Reset value
 1105             * File  InptForm.s      87
 1106 002EC 00000         CON(5)  =DOIDNT
 1107 002F1 30            CON(2)  3
 1108 002F3 45143         NIBASC  \TAS\
            5
 1109             * Initial value
 1110             * File  InptForm.s      88
 1111
 1112             * File  InptForm.s      89
 1113             * Field DHOM definition
 1114             * File  InptForm.s      90
 1115 002F9 00000         CON(5)  ='DROPFALSE
 1116             * Message handler
 1117             * File  InptForm.s      91
 1118 002FE 00000         CON(5)  =BINT_91d
 1119 00303 00000         CON(5)  =TWENTYSIX
 1120 00308 00000         CON(5)  =THIRTYSEVEN
 1121 0030D 00000         CON(5)  =NINE
 1122             * Position & size
 1123             * File  InptForm.s      92
 1124 00312 00000         CON(5)  =ONE
 1125             * Field type TEXT
 1126             * File  InptForm.s      93
 1127 00317 00000         CON(5)  =DOLIST
 1128 0031C 00000         CON(5)  =ZERO
 1129 00321 00000         CON(5)  =SEMI
 1130             * Allowed types REAL
 1131             * File  InptForm.s      94
 1132 00326 00000         CON(5)  =TWO
 1133             * Decompile
 1134             * File  InptForm.s      95
 1135 0032B 00000         CON(5)  =DOCSTR
 1136 00330 14000         CON(5)  65
 1137 00335 44943         NIBASC  \DISTANCE FROM FIX BA\
            54514
            E43454026425F4D402649485022414

 1138 0035D 34B40         NIBASC  \CK TO HOME\
            245F4
            0284F4D454

 1139             * Help string
 1140             * File  InptForm.s      96
 1141 00371 00000         CON(5)  =MINUSONE
 1142             * Choose data N/A
 1143             * File  InptForm.s      97
 1144 00376 00000         CON(5)  =MINUSONE
 1145             * Choose decompile N/A
 1146             * File  InptForm.s      98
 1147 0037B 00000         CON(5)  =MINUSONE
 1148             * Reset value
 1149             * File  InptForm.s      99
 1150 00380 00000         CON(5)  =DOIDNT
 1151 00385 40            CON(2)  4
 1152 00387 4484F         NIBASC  \DHOM\
            4D4
 1153             * Initial value
 1154             * File  InptForm.s      100
 1155
 1156             * File  InptForm.s      101
 1157 0038F 00000         CON(5)  =SIX
 1158 00394 00000         CON(5)  =SIX
 1159             * #labels #fields
 1160             * File  InptForm.s      102
 1161 00399 00000         CON(5)  ='DROPFALSE
 1162             * Message handler
 1163             * File  InptForm.s      103
 1164 0039E 00000         CON(5)  =DOCSTR
 1165 003A3 33000         CON(5)  51
 1166 003A8 25F41         NIBASC  \ROA - SAME BASE - IN\
            402D2
            023514D454022414355402D20294E4

 1167 003D0 05554         NIBASC  \PUT\
            5
 1168             * Title
 1169             *               FLASHPTR IfMain               ( HP50 )
 1170             * File  InptForm.s      105
 1171 003D6 00000         CON(5)  =DoInputForm
 1172             * HP48, HP58
 1173             * File  InptForm.s      106
 1174 003DB 00000         CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)   Symbol Table                       InptForm.a     Page    2

 'DROPFALSE                        Ext                   -   898   942   985
                                        1028  1072  1115  1161
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
 BINT_91d                          Ext                   -  1118
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
 DOCOL                             Ext                   -   854
 DOCSTR                            Ext                   -   857   863   869
                                         875   881   887   918   962  1005  1048
                                        1092  1135  1164
 DOIDNT                            Ext                   -   933   976  1019
                                        1063  1106  1150
 DOLIST                            Ext                   -   910   954   997
                                        1040  1084  1127
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
 DoInputForm                       Ext                   -  1171
 EIGHT                             Ext                   -   902   946
 ErableHeaderBit                   Abs       0 #00000000 -   813
 ErableHeaderFl                    Abs      93 #0000005D -   811   812   813
 ErableHeaderNib                   Abs      23 #00000017 -   812
 ErrorBeepBit                      Abs       3 #00000003 -   231
 ErrorBeepFl                       Abs      56 #00000038 -   175   230   231
 ErrorBeepNib                      Abs      13 #0000000D -   230
 ExactModeBit                      Abs       0 #00000000 -   838
 ExactModeFl                       Abs     105 #00000069 -   836   837   838
 ExactModeNib                      Abs      26 #0000001A -   837
 FORTYTHREE                        Ext                   -   903   947   990
                                        1033  1077
 FOURTHREE                         Ext                   -   866   878   890
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
=InptForm                          Rel       0 #00000000 -   852
 KernelParamBit                    Abs       1 #00000001 -   768
 KernelParamFl                     Abs      78 #0000004E -   766   767   768
 KernelParamNib                    Abs      19 #00000013 -   767
 KeystrokeBeepBit                  Abs       2 #00000002 -   759
 KeystrokeBeepFl                   Abs      75 #0000004B -   757   758   759
 KeystrokeBeepNib                  Abs      18 #00000012 -   758
 LISTCMP                           Ext                   -   945  1031
 LastArgsBit                       Abs       2 #00000002 -   258
 LastArgsFl                        Abs      55 #00000037 -   174   257   258
 LastArgsNib                       Abs      13 #0000000D -   257
 MASDDecompilerBit                 Abs       1 #00000001 -   792
 MASDDecompilerFl                  Abs      86 #00000056 -   790   791   792
 MASDDecompilerNib                 Abs      21 #00000015 -   791
 MINUSONE                          Ext                   -   924   927   930
                                         967   970   973  1010  1013  1016  1054
                                        1057  1060  1097  1100  1103  1141  1144
                                        1147
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
 NINE                              Ext                   -   904   948   991
                                        1034  1078  1121
 NINETEEN                          Ext                   -   873   879   901
                                         988  1075
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
 ONE                               Ext                   -   860   872   884
                                         907   951   994  1037  1081  1124
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
=RomId                             Abs     803 #00000323 -    19
 SEMI                              Ext                   -   912   956   999
                                        1042  1086  1129  1174
 SEVENTEEN                         Ext                   -   989  1032
 SIX                               Ext                   -  1157  1158
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
 TEN                               Ext                   -   861   867
 THIRTYSEVEN                       Ext                   -  1120
 TWENTYEIGHT                       Ext                   -   885   891
 TWENTYSIX                         Ext                   -  1076  1119
 TWO                               Ext                   -   915   959  1002
                                        1045  1089  1132
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
 ZERO                              Ext                   -   911   955   998
                                        1041  1085  1128
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
Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)   Statistics                         InptForm.a     Page    3

Input Parameters

  Source file name is InptForm.a

  Listing file name is InptForm.l

  Object file name is InptForm.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
