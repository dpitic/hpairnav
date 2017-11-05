Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)                                      PA_FLD_MSGHNDL Page    1

    1             * File  PA_FLD_MSGHNDLR.s       1
    2             * RPL
    3             * File  PA_FLD_MSGHNDLR.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\PA_FLD_MSGHNDLR.s, part of the ISA48.hpp project, created by <> on 11/06/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Pressure altitude (PA) field message handler placed
    7             *                  in a separate file to allow debugging.
    8             *
    9             * File  PA_FLD_MSGHNDLR.s       7
   10             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\ISA48.h
   11
   12             =RomId  EQU     #326
   13             * ROMID set to 326
   14
   15
   16
   17
   18
   19
   20
   21
   22
   23
   24             *|| Resuming file PA_FLD_MSGHNDLR.s at line 7
   25             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
   26
   27
   28             * RPL
   29             * insure RPL-mode exit
   30
   31             * ( Rad
   32
   33             * ( %2PI
   34             * ( %PI/24
   35
   36
   37
   38
   39             * ( 1=1Var, 2=2Var Statistic
   40             * ( 1=Histogram, 2=BoxWhisker
   41
   42
   43
   44
   45
   46             * ASSEMBLE
   47             DefSysF64-33 EQU        #00000000
   48             DefSysF32-01 EQU        #04010FF0
   49             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   50             DefSysF97-128 EQU       #00000000
   51
   52             * RPL
   53
   54
   55             * ( solution mode
   56             * ( constants mode
   57             * ( results mode
   58             * ( careful evaluation mode
   59
   60             * ( binary integer wordsize
   61             * must start on nibble boundary
   62             * ( binary integer base
   63             * must follow "fnBinWordS6"
   64
   65             * ( financial BEGIN/END mode
   66             * ( complex number and vector
   67             * mode
   68             * ( angle mode
   69             * must start on a nibble boundary
   70             * ( complex 2D mode
   71             * ( underflow action
   72             * ( overflow action
   73             * ( infinite result action
   74             * ( underflow-negative indicator
   75             * ( underflow-positive indicator
   76             * ( overflow indicator
   77             * ( infinite result indicator
   78             * ( symbolic-comples decompilation
   79             * ( simultaneous plot mode
   80             * ( axis drawing plot mode
   81
   82             * ( connect points mode
   83             * ( graphics cursor type mode
   84             * ( I/O device
   85             * ( print device
   86             * ( I/O data format
   87             * ( variable overwrite mode
   88             * ( double-space print mode
   89             * ( suppress auto CR mode
   90             * ( suppress I/O status messages
   91
   92
   93             * ( clock display mode
   94             * ( clock display format
   95             * ( date format
   96             * ( reschedule unacknowledged
   97             * repeat alarms mode
   98             * ( delete acknowledged non-repeat
   99             * alarms mode
  100
  101             * ( number of decimal digits
  102             * must start on nibble boundary
  103             * ( number display format
  104             * must start on nibble boundary
  105             * ( radix mark
  106             * ( multi-line display mode
  107             * ( show precedence mode
  108             * ( zero out tiny matrix elements
  109
  110             * ( last arguments mode
  111             * ( error beep mode
  112             * ( alarm beep mode
  113             * ( verbose display mode
  114             * ( variable name only mode
  115             * ( 3-way alpha mode
  116             * ( 3-way user keys mode
  117             * ( user keys mode
  118             * ( special parser mode
  119             * ( index wraparound indicator
  120
  121
  122             * ASSEMBLE
  123             SolutionsFl  EQU 1
  124             ConstantsFl  EQU 2
  125             ResultsFl    EQU 3
  126             CarefulFl    EQU 4
  127
  128             BinWordSFl1  EQU 5      must start on a nibble boundary
  129             BinWordSBCt  EQU 6      number of bits
  130             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  131             BinBaseBCt   EQU 2      number of bits
  132
  133             ComVecDiFl1  EQU 15
  134             ComVecDiBCt  EQU 2      number of bits
  135             AngleFl1     EQU 17     must start on a nibble boundary
  136             AngleBCt     EQU 2      number of bits
  137             Complex2DFl  EQU 19
  138             UnderfActFl  EQU 20
  139             OverfActFl   EQU 21
  140             InfResActFl  EQU 22
  141             UnderfNegFl  EQU 23
  142             UnderfPosFl  EQU 24
  143             OverflowFl   EQU 25
  144             InfResultFl  EQU 26
  145
  146             FunctPlotFl  EQU 30
  147             ConnectPtFl  EQU 31
  148             GCursorFl    EQU 32
  149             IODeviceFl   EQU 33
  150             PrintDevFl   EQU 34
  151             IODataFmtFl  EQU 35
  152             OverwriteFl  EQU 36
  153             DblSpaceFl   EQU 37
  154             NoAutoCRFl   EQU 38
  155             NoIOStsMsgFl EQU 39
  156
  157             ClockOnFl    EQU 40
  158             ClockFmtFl   EQU 41
  159             DateFmtFl    EQU 42
  160             ResRepAlmFl  EQU 43
  161             DelNRAlmFl   EQU 44
  162
  163             NumDigsFl1   EQU 45     must start on a nibble boundary
  164             NumDigsBCt   EQU 4      number of bits
  165             NumDispFl1   EQU 49     must start on a nibble boundary
  166             NumDispBCt   EQU 2      number of bits
  167             RadixFl      EQU 51
  168             MultiDispFl  EQU 52
  169             ShowPrecFl   EQU 53
  170
  171             LastArgsFl   EQU 55
  172             ErrorBeepFl  EQU 56
  173             AlarmBeepFl  EQU 57
  174             VerboseFl    EQU 58
  175             FastEqViewFl EQU 59
  176             TriAlphaFl   EQU 60
  177             TriUserFl    EQU 61
  178             UserKeysFl   EQU 62
  179             NoParseFl    EQU 63
  180             IndexWrapFl  EQU 64
  181
  182
  183
  184             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  185             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  186
  187             AngleNib     EQU ((AngleFl1)-1)/4
  188             AngleBit1    EQU ((AngleFl1)-1)%4
  189             AngleBit2    EQU (AngleBit1)+1
  190
  191             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  192             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  193
  194             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  195             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  196
  197             CarefulNib   EQU ((CarefulFl)-1)/4
  198             CarefulBit   EQU ((CarefulFl)-1)%4
  199
  200             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  201             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  202
  203             ClockOnNib   EQU ((ClockOnFl)-1)/4
  204             ClockOnBit   EQU ((ClockOnFl)-1)%4
  205
  206             Complex2DNib EQU ((Complex2DFl)-1)/4
  207             Complex2DBit EQU ((Complex2DFl)-1)%4
  208
  209             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  210             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  211
  212             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  213             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  214
  215             ConstantsNib EQU ((ConstantsFl)-1)/4
  216             ConstantsBit EQU ((ConstantsFl)-1)%4
  217
  218             DateFmtNib   EQU ((DateFmtFl)-1)/4
  219             DateFmtBit   EQU ((DateFmtFl)-1)%4
  220
  221             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  222             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  223
  224             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  225             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  226
  227             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  228             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  229
  230             FastEViewNib EQU ((FastEqViewFl)-1)/4
  231             FastEViewBit EQU ((FastEqViewFl)-1)%4
  232
  233             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  234             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  235
  236             GCursorNib   EQU ((GCursorFl)-1)/4
  237             GCursorBit   EQU ((GCursorFl)-1)%4
  238
  239             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  240             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  241
  242             InfResActNib EQU ((InfResActFl)-1)/4
  243             InfResActBit EQU ((InfResActFl)-1)%4
  244
  245             InfResultNib EQU ((InfResultFl)-1)/4
  246             InfResultBit EQU ((InfResultFl)-1)%4
  247
  248             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  249             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  250
  251             IODeviceNib  EQU ((IODeviceFl)-1)/4
  252             IODeviceBit  EQU ((IODeviceFl)-1)%4
  253
  254             LastArgsNib  EQU ((LastArgsFl)-1)/4
  255             LastArgsBit  EQU ((LastArgsFl)-1)%4
  256
  257             VerboseNib   EQU ((VerboseFl)-1)/4
  258             VerboseBit   EQU ((VerboseFl)-1)%4
  259
  260             MultiDispNib EQU ((MultiDispFl)-1)/4
  261             MultiDispBit EQU ((MultiDispFl)-1)%4
  262
  263             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  264             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  265
  266             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  267             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  268
  269             NoParseNib   EQU ((NoParseFl)-1)/4
  270             NoParseBit   EQU ((NoParseFl)-1)%4
  271
  272             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  273             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  274
  275             NumDispNib   EQU ((NumDispFl1)-1)/4
  276             NumDispBit1  EQU ((NumDispFl1)-1)%4
  277
  278             OverfActNib  EQU ((OverfActFl)-1)/4
  279             OverfActBit  EQU ((OverfActFl)-1)%4
  280
  281             OverflowNib  EQU ((OverflowFl)-1)/4
  282             OverflowBit  EQU ((OverflowFl)-1)%4
  283
  284             OverwriteNib EQU ((OverwriteFl)-1)/4
  285             OverwriteBit EQU ((OverwriteFl)-1)%4
  286
  287             PrintDevNib  EQU ((PrintDevFl)-1)/4
  288             PrintDevBit  EQU ((PrintDevFl)-1)%4
  289
  290             RadixNib     EQU ((RadixFl)-1)/4
  291             RadixBit     EQU ((RadixFl)-1)%4
  292
  293             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  294             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  295
  296             ResultsNib   EQU ((ResultsFl)-1)/4
  297             ResultsBit   EQU ((ResultsFl)-1)%4
  298
  299             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  300             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  301
  302             SolutionsNib EQU ((SolutionsFl)-1)/4
  303             SolutionsBit EQU ((SolutionsFl)-1)%4
  304
  305             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  306             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  307
  308             TriUserNib   EQU ((TriUserFl)-1)/4
  309             TriUserBit   EQU ((TriUserFl)-1)%4
  310
  311             UnderfActNib EQU ((UnderfActFl)-1)/4
  312             UnderfActBit EQU ((UnderfActFl)-1)%4
  313
  314             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  315             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  316
  317             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  318             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  319
  320             UserKeysNib  EQU ((UserKeysFl)-1)/4
  321             UserKeysBit  EQU ((UserKeysFl)-1)%4
  322
  323             * RPL
  324             * RPL
  325             * insure RPL-mode exit
  326
  327
  328             * ASSEMBLE
  329
  330
  331             nonALG EQU 8                    not-allowed-in-algebraics flag
  332             hasHELP EQU 4                   has-help-data flag
  333             hasPROMPTM EQU 4                same as above
  334             hasALIAS EQU 2                  has-algebraic-alias flag
  335             hasPDATA EQU 1                  has-parse-data flag
  336
  337
  338             hasDER EQU 8                    has-derivative flag
  339             hasINV EQU 4                    has-inverse flag
  340             hasCOLCT EQU 2                  has-COLCT-data flag
  341             hasEXPND EQU 1                  has-EXPND-data flag
  342
  343
  344             hasFORM EQU 8                   has-FORM-menu flag
  345             hasINTG EQU 4                   has-Integral-data flag
  346             hasWHERE EQU 2                  has-WHERE-code flag
  347             hasVUNS EQU 1                   has-veryunsymin-code flag
  348
  349
  350             pdEX EQU #0             general expression
  351             pdOP EQU #1             operator
  352             pdQE EQU #2             quoted expression
  353             pdQN EQU #3             quoted name
  354             pdLP EQU #4             left parenthesis
  355             pdRP EQU #5             right parenthesis
  356             pdCM EQU #6             comma (non-radix)
  357             pdEQ EQU #7             equal-sign separator
  358             pdOS0 EQU #8            optional repeat 0
  359             pdOS1 EQU #9            optional repeat 1
  360             pdOS2 EQU #A            optional repeat 2
  361             pdOS3 EQU #B            optional repeat 3
  362             pdOS4 EQU #C            optional repeat 4
  363             pdOS5 EQU #D            optional repeat 5
  364             pdOS6 EQU #E            optional repeat 6
  365             pdOS7 EQU #F            optional repeat 7
  366
  367             * RPL
  368             * RPL
  369             * insure RPL-mode exit
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
  380
  381
  382
  383
  384
  385
  386
  387             * RPL
  388             * insure RPL-mode exit
  389
  390             * RPL
  391             * insure RPL-mode exit
  392
  393
  394
  395
  396
  397
  398
  399
  400
  401             * ( for internal use only
  402
  403
  404
  405
  406
  407
  408
  409
  410
  411
  412             * ( decimal 67
  413             * ( decimal 86
  414             * ( decimal 82
  415             * ( decimal 85
  416             * ( decimal 101
  417             * ( decimal 97
  418             * ( decimal 100
  419             * ( decimal 113
  420             * ( decimal 112
  421
  422             * ( check width
  423             * ( field character width
  424
  425             * ( decimal 67
  426             * ( decimal 85
  427             * ( decimal 97
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
  438
  439
  440
  441
  442
  443
  444
  445             * RPL
  446             * insure RPL-mode exit
  447
  448             * ( decimal 66
  449             * ( decimal 67
  450             * ( decimal 69
  451             * ( decimal 82
  452             * ( decimal 83
  453             * ( decimal 84
  454             * ( decimal 85
  455             * ( decimal 86
  456             * ( decimal 87
  457
  458
  459             * ( norm-view default visible row count
  460             * ( default first row X location
  461             * ( default first row Y location
  462             * ( default row width
  463             * ( default row height
  464
  465             * ( max-view width
  466             * ( max-view height
  467             * ( max-view default visible row count
  468
  469             * ( prompt area height
  470
  471             * ( more-up/down icon width
  472
  473
  474
  475             * RPL
  476             * insure RPL-mode exit
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
  685
  686
  687
  688
  689
  690
  691
  692             * RPL
  693             * insure RPL-mode exit
  694
  695
  696
  697             * ( set for informations
  698             * ( set for step by step mode on
  699             * ( internal use: true if VXXL success
  700             * ( set for no gcd computations
  701             * ( set for complex mode
  702             * ( internal use:       LN->-INV[-LN]]
  703             * ( set for approx mode
  704             * ( set for TSIMP call inside SERIES
  705             * ( internal use:       modular computation
  706             * ( internal use:       testing remainder=0
  707             * ( set to allow numeric factorization
  708             * ( set for large matrices
  709             * ( set: don't simplify inside non rational operation
  710             * ( set to see i as an irrquad c=-1
  711             * ( set to disable linearity simplif.
  712             * ( set for increasing power x+1 -> 1+x
  713             * ( internal use:       sqrt not as irrquad
  714             * ( set if sin are prefered to cos
  715             * ( set for menu as choosebox
  716             * ( set if xINT is not simplified
  717             * ( set if non rigourous mode
  718             * ( set to allow silent mode switch
  719             * ( set if xLN returns LN[ABS[]]
  720
  721
  722             * ASSEMBLE
  723
  724             MultiLineFl     EQU     65
  725             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  726             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  727             MultiLineStringsFl      EQU     66
  728             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  729             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  730             DigitalClockFl  EQU     67
  731             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  732             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  733             CmdAutoIndentFl EQU     68
  734             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  735             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  736             FullScreenEditFl        EQU     69
  737             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  738             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  739             MultiLine2GROBFl        EQU     70
  740             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  741             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  742             DesasmWithAdrFl EQU     71
  743             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  744             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  745             BigFontStackFl  EQU     72
  746             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  747             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  748             BigFontCmdFl    EQU     73
  749             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  750             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  751             RightJustifiedStackFl   EQU     74
  752             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  753             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  754             KeystrokeBeepFl EQU     75
  755             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  756             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  757             FilerConfirmationFl     EQU     76
  758             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  759             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  760             FilerConfirmFl  EQU     77
  761             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  762             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  763             KernelParamFl   EQU     78
  764             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  765             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  766             PrettyPrintFl   EQU     79
  767             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  768             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  769             SmallFontEQWStackFl     EQU     80
  770             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  771             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  772             SmallFontEQWGrobFl      EQU     81
  773             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  774             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  775             SmallFontEQWEditFl      EQU     82
  776             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  777             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  778             GrobDisplayFl   EQU     83
  779             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  780             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  781             MKSmallFontMenuFl       EQU     84
  782             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  783             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  784             SystemRPLStackFl        EQU     85
  785             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  786             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  787             MASDDecompilerFl        EQU     86
  788             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  789             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  790             RecursiveStackFl        EQU     87
  791             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  792             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  793             RecursiveEditFl EQU     88
  794             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  795             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  796             AddressesCLEFl  EQU     89
  797             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  798             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  799             SmallFontChooseFl       EQU     90
  800             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  801             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  802             ArrayOnlyFl     EQU     91
  803             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  804             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  805             MLMASDModeFl    EQU     92
  806             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  807             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  808             ErableHeaderFl  EQU     93
  809             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  810             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  811             AutoSaveFl      EQU     94
  812             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  813             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  814             AlgebraicModeFl EQU     95
  815             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  816             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  817             MenuOnFl        EQU     96
  818             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  819             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  820             VerticalListFl  EQU     97
  821             VerticalListNib EQU     ((VerticalListFl)-1)/4
  822             VerticalListBit EQU     ((VerticalListFl)-1)%4
  823             VerticalVectorFl        EQU     98
  824             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  825             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  826
  827
  828             ComplexFl       EQU     103
  829             ComplexNib      EQU     ((ComplexFl)-1)/4
  830             ComplexBit      EQU     ((ComplexFl)-1)%4
  831
  832
  833             ExactModeFl     EQU     105
  834             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  835             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  836
  837
  838             * RPL
  839
  840
  841
  842             * ASSEMBLE
  843                     SETLIST CODE, INCLUDE, PSEUDO
  844             * RPL
  845
  846             *|| Resuming file PA_FLD_MSGHNDLR.s at line 8
  847             *EXTERNAL MsgBoxMenu
  848             * File  PA_FLD_MSGHNDLR.s       12
  849 00000       =PA_FLD_MSGHNDLR
  850             * File  PA_FLD_MSGHNDLR.s       13
  851 00000 00000         CON(5)  =DOCOL
  852             * File  PA_FLD_MSGHNDLR.s       14
  853 00005 00000         CON(5)  =TWENTYFIVE
  854 0000A 00000         CON(5)  =#=case
  855 0000F 00000         CON(5)  =DOCOL
  856             * Get internal field value
  857             * File  PA_FLD_MSGHNDLR.s       15
  858 00014 00000         CON(5)  =DUPTYPEREAL?
  859 00019 00000         CON(5)  =case
  860 0001E 00000         CON(5)  =DOCOL
  861             * REAL
  862             * File  PA_FLD_MSGHNDLR.s       16
  863 00023 00000         CON(5)  =DOCSTR
  864 00028 90000         CON(5)  9
  865 0002D 6647          NIBASC  \ft\
  866 00031 00000         CON(5)  =umEND
  867 00036 00000         CON(5)  =THREE
  868 0003B 00000         CON(5)  =EXTN
  869             * Add default feet units
  870             * File  PA_FLD_MSGHNDLR.s       17
  871 00040 00000         CON(5)  =DUP
  872 00045 00000         CON(5)  =DOEXT
  873 0004A 00000         CON(5)  =DOREAL
  874 0004F 400           NIBHEX  400
  875 00052 00000         NIBHEX  000000000002
            00000
            02
  876 0005E 0             NIBHEX  0
  877 0005F 00000         CON(5)  =DOCSTR
  878 00064 70000         CON(5)  7
  879 00069 D6            NIBASC  \m\
  880 0006B 00000         CON(5)  =umEND
  881 00070 00000         CON(5)  =SEMI
  882             * File  PA_FLD_MSGHNDLR.s       18
  883 00075 00000         CON(5)  =UM>?
  884 0007A 00000         CON(5)  =%0<>
  885 0007F 00000         CON(5)  =IT
  886 00084 00000         CON(5)  =DOCOL
  887             * IF PA > 20 km
  888             * File  PA_FLD_MSGHNDLR.s       19
  889 00089 00000         CON(5)  =DROP
  890             * DROP field value
  891             * File  PA_FLD_MSGHNDLR.s       20
  892 0008E 00000         CON(5)  =ERRBEEP
  893             * Error beep and display flashwarning message
  894             * Message box parameters
  895             * File  PA_FLD_MSGHNDLR.s       22
  896 00093 00000         CON(5)  =DOCSTR
  897 00098 F2000         CON(5)  47
  898 0009D 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

  899 000C5 D6            NIBASC  \m\
  900             * message$
  901             * File  PA_FLD_MSGHNDLR.s       23
  902 000C7 00000         CON(5)  =TWELVE
  903             * #maxwidth
  904             * File  PA_FLD_MSGHNDLR.s       24
  905 000CC 00000         CON(5)  =TEN
  906             * #minwidth
  907             * File  PA_FLD_MSGHNDLR.s       25
  908 000D1 00000         CON(5)  =DOROMP
  909 000D6 00000         CON(6)  =~grobAlertIcon
            0
  910             * grob
  911             * File  PA_FLD_MSGHNDLR.s       26
  912 000DC 00000         CON(5)  =DOROMP
  913 000E1 00000         CON(6)  =~MsgBoxMenu
            0
  914             * menuobject
  915             * File  PA_FLD_MSGHNDLR.s       27
  916 000E7 00000         CON(5)  =DOROMP
  917 000EC 00000         CON(6)  =~DoMsgBox
            0
  918 000F2 00000         CON(5)  =DROP
  919             * Draw the message box, DROP FLAG
  920             * File  PA_FLD_MSGHNDLR.s       28
  921 000F7 00000         CON(5)  =DOIDNT
  922 000FC 20            CON(2)  2
  923 000FE 0514          NIBASC  \PA\
  924             * Keep original field value
  925             * File  PA_FLD_MSGHNDLR.s       29
  926 00102 00000         CON(5)  =SEMI
  927             * File  PA_FLD_MSGHNDLR.s       30
  928 00107 00000         CON(5)  =TRUE
  929             * Return external field value
  930             * File  PA_FLD_MSGHNDLR.s       31
  931 0010C 00000         CON(5)  =SEMI
  932             * File  PA_FLD_MSGHNDLR.s       32
  933 00111 00000         CON(5)  =DUPTYPEEXT?
  934 00116 00000         CON(5)  =case
  935 0011B 00000         CON(5)  =DOCOL
  936             * UNIT
  937             * File  PA_FLD_MSGHNDLR.s       33
  938 00120 00000         CON(5)  =DUP
  939 00125 00000         CON(5)  =DOEXT
  940 0012A 00000         CON(5)  =DOREAL
  941 0012F 400           NIBHEX  400
  942 00132 00000         NIBHEX  000000000002
            00000
            02
  943 0013E 0             NIBHEX  0
  944 0013F 00000         CON(5)  =DOCSTR
  945 00144 70000         CON(5)  7
  946 00149 D6            NIBASC  \m\
  947 0014B 00000         CON(5)  =umEND
  948 00150 00000         CON(5)  =SEMI
  949             * File  PA_FLD_MSGHNDLR.s       34
  950 00155 00000         CON(5)  =UM>?
  951 0015A 00000         CON(5)  =%0<>
  952 0015F 00000         CON(5)  =IT
  953 00164 00000         CON(5)  =DOCOL
  954             * IF PA > 20 km
  955             * File  PA_FLD_MSGHNDLR.s       35
  956 00169 00000         CON(5)  =DROP
  957             * DROP field value
  958             * File  PA_FLD_MSGHNDLR.s       36
  959 0016E 00000         CON(5)  =ERRBEEP
  960             * Error beep and display flashwarning message
  961             * Message box parameters
  962             * File  PA_FLD_MSGHNDLR.s       38
  963 00173 00000         CON(5)  =DOCSTR
  964 00178 F2000         CON(5)  47
  965 0017D 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

  966 001A5 D6            NIBASC  \m\
  967             * message$
  968             * File  PA_FLD_MSGHNDLR.s       39
  969 001A7 00000         CON(5)  =TWELVE
  970             * #maxwidth
  971             * File  PA_FLD_MSGHNDLR.s       40
  972 001AC 00000         CON(5)  =TEN
  973             * #minwidth
  974             * File  PA_FLD_MSGHNDLR.s       41
  975 001B1 00000         CON(5)  =DOROMP
  976 001B6 00000         CON(6)  =~grobAlertIcon
            0
  977             * grob
  978             * File  PA_FLD_MSGHNDLR.s       42
  979 001BC 00000         CON(5)  =DOROMP
  980 001C1 00000         CON(6)  =~MsgBoxMenu
            0
  981             * menuobject
  982             * File  PA_FLD_MSGHNDLR.s       43
  983 001C7 00000         CON(5)  =DOROMP
  984 001CC 00000         CON(6)  =~DoMsgBox
            0
  985 001D2 00000         CON(5)  =DROP
  986             * Draw the message box, DROP FLAG
  987             * File  PA_FLD_MSGHNDLR.s       44
  988 001D7 00000         CON(5)  =DOIDNT
  989 001DC 20            CON(2)  2
  990 001DE 0514          NIBASC  \PA\
  991             * Keep original field value
  992             * File  PA_FLD_MSGHNDLR.s       45
  993 001E2 00000         CON(5)  =SEMI
  994             * File  PA_FLD_MSGHNDLR.s       46
  995 001E7 00000         CON(5)  =TRUE
  996             * Return external field value
  997             * File  PA_FLD_MSGHNDLR.s       47
  998 001EC 00000         CON(5)  =SEMI
  999             * File  PA_FLD_MSGHNDLR.s       48
 1000 001F1 00000         CON(5)  =TRUE
 1001             * Message was handled
 1002             * File  PA_FLD_MSGHNDLR.s       49
 1003 001F6 00000         CON(5)  =SEMI
 1004             * File  PA_FLD_MSGHNDLR.s       50
 1005 001FB 00000         CON(5)  =FALSE
 1006             * No other messages handled
 1007             * File  PA_FLD_MSGHNDLR.s       51
 1008 00200 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       PA_FLD_MSGHNDL Page    2

 #=case                            Ext                   -   854
 %0<>                              Ext                   -   884   951
 AddressesCLEBit                   Abs       0 #00000000 -   798
 AddressesCLEFl                    Abs      89 #00000059 -   796   797   798
 AddressesCLENib                   Abs      22 #00000016 -   797
 AlarmBeepBit                      Abs       0 #00000000 -   185
 AlarmBeepFl                       Abs      57 #00000039 -   173   184   185
 AlarmBeepNib                      Abs      14 #0000000E -   184
 AlgebraicModeBit                  Abs       2 #00000002 -   816
 AlgebraicModeFl                   Abs      95 #0000005F -   814   815   816
 AlgebraicModeNib                  Abs      23 #00000017 -   815
 AngleBCt                          Abs       2 #00000002 -   136
 AngleBit1                         Abs       0 #00000000 -   188   189
 AngleBit2                         Abs       1 #00000001 -   189
 AngleFl1                          Abs      17 #00000011 -   135   187   188
 AngleNib                          Abs       4 #00000004 -   187
 ArrayOnlyBit                      Abs       2 #00000002 -   804
 ArrayOnlyFl                       Abs      91 #0000005B -   802   803   804
 ArrayOnlyNib                      Abs      22 #00000016 -   803
 AutoSaveBit                       Abs       1 #00000001 -   813
 AutoSaveFl                        Abs      94 #0000005E -   811   812   813
 AutoSaveNib                       Abs      23 #00000017 -   812
 BigFontCmdBit                     Abs       0 #00000000 -   750
 BigFontCmdFl                      Abs      73 #00000049 -   748   749   750
 BigFontCmdNib                     Abs      18 #00000012 -   749
 BigFontStackBit                   Abs       3 #00000003 -   747
 BigFontStackFl                    Abs      72 #00000048 -   745   746   747
 BigFontStackNib                   Abs      17 #00000011 -   746
 BinBaseBCt                        Abs       2 #00000002 -   131
 BinBaseBit1                       Abs       2 #00000002 -   192
 BinBaseFl1                        Abs      11 #0000000B -   130   191   192
 BinBaseNib                        Abs       2 #00000002 -   191
 BinWordSBCt                       Abs       6 #00000006 -   129
 BinWordSBit1                      Abs       0 #00000000 -   195
 BinWordSFl1                       Abs       5 #00000005 -   128   194   195
 BinWordSNib                       Abs       1 #00000001 -   194
 CarefulBit                        Abs       3 #00000003 -   198
 CarefulFl                         Abs       4 #00000004 -   126   197   198
 CarefulNib                        Abs       0 #00000000 -   197
 ClockFmtBit                       Abs       0 #00000000 -   201
 ClockFmtFl                        Abs      41 #00000029 -   158   200   201
 ClockFmtNib                       Abs      10 #0000000A -   200
 ClockOnBit                        Abs       3 #00000003 -   204
 ClockOnFl                         Abs      40 #00000028 -   157   203   204
 ClockOnNib                        Abs       9 #00000009 -   203
 CmdAutoIndentBit                  Abs       3 #00000003 -   735
 CmdAutoIndentFl                   Abs      68 #00000044 -   733   734   735
 CmdAutoIndentNib                  Abs      16 #00000010 -   734
 ComVecDiBCt                       Abs       2 #00000002 -   134
 ComVecDiBit1                      Abs       2 #00000002 -   210
 ComVecDiFl1                       Abs      15 #0000000F -   133   209   210
 ComVecDiNib                       Abs       3 #00000003 -   209
 Complex2DBit                      Abs       2 #00000002 -   207
 Complex2DFl                       Abs      19 #00000013 -   137   206   207
 Complex2DNib                      Abs       4 #00000004 -   206
 ComplexBit                        Abs       2 #00000002 -   830
 ComplexFl                         Abs     103 #00000067 -   828   829   830
 ComplexNib                        Abs      25 #00000019 -   829
 ConnectPtBit                      Abs       2 #00000002 -   213
 ConnectPtFl                       Abs      31 #0000001F -   147   212   213
 ConnectPtNib                      Abs       7 #00000007 -   212
 ConstantsBit                      Abs       1 #00000001 -   216
 ConstantsFl                       Abs       2 #00000002 -   124   215   216
 ConstantsNib                      Abs       0 #00000000 -   215
 DOCOL                             Ext                   -   851   855   860
                                         886   935   953
 DOCSTR                            Ext                   -   863   877   896
                                         944   963
 DOEXT                             Ext                   -   872   939
 DOIDNT                            Ext                   -   921   988
 DOREAL                            Ext                   -   873   940
 DOROMP                            Ext                   -   908   912   916
                                         975   979   983
 DROP                              Ext                   -   889   918   956
                                         985
 DUP                               Ext                   -   871   938
 DUPTYPEEXT?                       Ext                   -   933
 DUPTYPEREAL?                      Ext                   -   858
 DateFmtBit                        Abs       1 #00000001 -   219
 DateFmtFl                         Abs      42 #0000002A -   159   218   219
 DateFmtNib                        Abs      10 #0000000A -   218
 DblSpaceBit                       Abs       0 #00000000 -   222
 DblSpaceFl                        Abs      37 #00000025 -   153   221   222
 DblSpaceNib                       Abs       9 #00000009 -   221
 DefSysF32-01                      Abs67178480 #04010FF0 -    48
 DefSysF64-33                      Abs       0 #00000000 -    47
 DefSysF65-96                      Abs1107296256 #42000000 -    49
 DefSysF97-128                     Abs       0 #00000000 -    50
 DelNRAlmBit                       Abs       3 #00000003 -   225
 DelNRAlmFl                        Abs      44 #0000002C -   161   224   225
 DelNRAlmNib                       Abs      10 #0000000A -   224
 DesasmWithAdrBit                  Abs       2 #00000002 -   744
 DesasmWithAdrFl                   Abs      71 #00000047 -   742   743   744
 DesasmWithAdrNib                  Abs      17 #00000011 -   743
 DigitalClockBit                   Abs       2 #00000002 -   732
 DigitalClockFl                    Abs      67 #00000043 -   730   731   732
 DigitalClockNib                   Abs      16 #00000010 -   731
 ERRBEEP                           Ext                   -   892   959
 EXTN                              Ext                   -   868
 ErableHeaderBit                   Abs       0 #00000000 -   810
 ErableHeaderFl                    Abs      93 #0000005D -   808   809   810
 ErableHeaderNib                   Abs      23 #00000017 -   809
 ErrorBeepBit                      Abs       3 #00000003 -   228
 ErrorBeepFl                       Abs      56 #00000038 -   172   227   228
 ErrorBeepNib                      Abs      13 #0000000D -   227
 ExactModeBit                      Abs       0 #00000000 -   835
 ExactModeFl                       Abs     105 #00000069 -   833   834   835
 ExactModeNib                      Abs      26 #0000001A -   834
 FALSE                             Ext                   -  1005
 FastEViewBit                      Abs       2 #00000002 -   231
 FastEViewNib                      Abs      14 #0000000E -   230
 FastEqViewFl                      Abs      59 #0000003B -   175   230   231
 FilerConfirmBit                   Abs       0 #00000000 -   762
 FilerConfirmFl                    Abs      77 #0000004D -   760   761   762
 FilerConfirmNib                   Abs      19 #00000013 -   761
 FilerConfirmationBit              Abs       3 #00000003 -   759
 FilerConfirmationFl               Abs      76 #0000004C -   757   758   759
 FilerConfirmationNib              Abs      18 #00000012 -   758
 FullScreenEditBit                 Abs       0 #00000000 -   738
 FullScreenEditFl                  Abs      69 #00000045 -   736   737   738
 FullScreenEditNib                 Abs      17 #00000011 -   737
 FunctPlotBit                      Abs       1 #00000001 -   234
 FunctPlotFl                       Abs      30 #0000001E -   146   233   234
 FunctPlotNib                      Abs       7 #00000007 -   233
 GCursorBit                        Abs       3 #00000003 -   237
 GCursorFl                         Abs      32 #00000020 -   148   236   237
 GCursorNib                        Abs       7 #00000007 -   236
 GrobDisplayBit                    Abs       2 #00000002 -   780
 GrobDisplayFl                     Abs      83 #00000053 -   778   779   780
 GrobDisplayNib                    Abs      20 #00000014 -   779
 IODataFmtBit                      Abs       2 #00000002 -   249
 IODataFmtFl                       Abs      35 #00000023 -   151   248   249
 IODataFmtNib                      Abs       8 #00000008 -   248
 IODeviceBit                       Abs       0 #00000000 -   252
 IODeviceFl                        Abs      33 #00000021 -   149   251   252
 IODeviceNib                       Abs       8 #00000008 -   251
 IT                                Ext                   -   885   952
 IndexWrapBit                      Abs       3 #00000003 -   240
 IndexWrapFl                       Abs      64 #00000040 -   180   239   240
 IndexWrapNib                      Abs      15 #0000000F -   239
 InfResActBit                      Abs       1 #00000001 -   243
 InfResActFl                       Abs      22 #00000016 -   140   242   243
 InfResActNib                      Abs       5 #00000005 -   242
 InfResultBit                      Abs       1 #00000001 -   246
 InfResultFl                       Abs      26 #0000001A -   144   245   246
 InfResultNib                      Abs       6 #00000006 -   245
 KernelParamBit                    Abs       1 #00000001 -   765
 KernelParamFl                     Abs      78 #0000004E -   763   764   765
 KernelParamNib                    Abs      19 #00000013 -   764
 KeystrokeBeepBit                  Abs       2 #00000002 -   756
 KeystrokeBeepFl                   Abs      75 #0000004B -   754   755   756
 KeystrokeBeepNib                  Abs      18 #00000012 -   755
 LastArgsBit                       Abs       2 #00000002 -   255
 LastArgsFl                        Abs      55 #00000037 -   171   254   255
 LastArgsNib                       Abs      13 #0000000D -   254
 MASDDecompilerBit                 Abs       1 #00000001 -   789
 MASDDecompilerFl                  Abs      86 #00000056 -   787   788   789
 MASDDecompilerNib                 Abs      21 #00000015 -   788
 MKSmallFontMenuBit                Abs       3 #00000003 -   783
 MKSmallFontMenuFl                 Abs      84 #00000054 -   781   782   783
 MKSmallFontMenuNib                Abs      20 #00000014 -   782
 MLMASDModeBit                     Abs       3 #00000003 -   807
 MLMASDModeFl                      Abs      92 #0000005C -   805   806   807
 MLMASDModeNib                     Abs      22 #00000016 -   806
 MenuOnBit                         Abs       3 #00000003 -   819
 MenuOnFl                          Abs      96 #00000060 -   817   818   819
 MenuOnNib                         Abs      23 #00000017 -   818
 MultiDispBit                      Abs       3 #00000003 -   261
 MultiDispFl                       Abs      52 #00000034 -   168   260   261
 MultiDispNib                      Abs      12 #0000000C -   260
 MultiLine2GROBBit                 Abs       1 #00000001 -   741
 MultiLine2GROBFl                  Abs      70 #00000046 -   739   740   741
 MultiLine2GROBNib                 Abs      17 #00000011 -   740
 MultiLineBit                      Abs       0 #00000000 -   726
 MultiLineFl                       Abs      65 #00000041 -   724   725   726
 MultiLineNib                      Abs      16 #00000010 -   725
 MultiLineStringsBit               Abs       1 #00000001 -   729
 MultiLineStringsFl                Abs      66 #00000042 -   727   728   729
 MultiLineStringsNib               Abs      16 #00000010 -   728
 NoAutoCRBit                       Abs       1 #00000001 -   264
 NoAutoCRFl                        Abs      38 #00000026 -   154   263   264
 NoAutoCRNib                       Abs       9 #00000009 -   263
 NoIOStMsgBit                      Abs       2 #00000002 -   267
 NoIOStMsgNib                      Abs       9 #00000009 -   266
 NoIOStsMsgFl                      Abs      39 #00000027 -   155   266   267
 NoParseBit                        Abs       2 #00000002 -   270
 NoParseFl                         Abs      63 #0000003F -   179   269   270
 NoParseNib                        Abs      15 #0000000F -   269
 NumDigsBCt                        Abs       4 #00000004 -   164
 NumDigsBit1                       Abs       0 #00000000 -   273
 NumDigsFl1                        Abs      45 #0000002D -   163   272   273
 NumDigsNib                        Abs      11 #0000000B -   272
 NumDispBCt                        Abs       2 #00000002 -   166
 NumDispBit1                       Abs       0 #00000000 -   276
 NumDispFl1                        Abs      49 #00000031 -   165   275   276
 NumDispNib                        Abs      12 #0000000C -   275
 OverfActBit                       Abs       0 #00000000 -   279
 OverfActFl                        Abs      21 #00000015 -   139   278   279
 OverfActNib                       Abs       5 #00000005 -   278
 OverflowBit                       Abs       0 #00000000 -   282
 OverflowFl                        Abs      25 #00000019 -   143   281   282
 OverflowNib                       Abs       6 #00000006 -   281
 OverwriteBit                      Abs       3 #00000003 -   285
 OverwriteFl                       Abs      36 #00000024 -   152   284   285
 OverwriteNib                      Abs       8 #00000008 -   284
=PA_FLD_MSGHNDLR                   Rel       0 #00000000 -   849
 PrettyPrintBit                    Abs       2 #00000002 -   768
 PrettyPrintFl                     Abs      79 #0000004F -   766   767   768
 PrettyPrintNib                    Abs      19 #00000013 -   767
 PrintDevBit                       Abs       1 #00000001 -   288
 PrintDevFl                        Abs      34 #00000022 -   150   287   288
 PrintDevNib                       Abs       8 #00000008 -   287
 RadixBit                          Abs       2 #00000002 -   291
 RadixFl                           Abs      51 #00000033 -   167   290   291
 RadixNib                          Abs      12 #0000000C -   290
 RecursiveEditBit                  Abs       3 #00000003 -   795
 RecursiveEditFl                   Abs      88 #00000058 -   793   794   795
 RecursiveEditNib                  Abs      21 #00000015 -   794
 RecursiveStackBit                 Abs       2 #00000002 -   792
 RecursiveStackFl                  Abs      87 #00000057 -   790   791   792
 RecursiveStackNib                 Abs      21 #00000015 -   791
 ResRepAlmBit                      Abs       2 #00000002 -   294
 ResRepAlmFl                       Abs      43 #0000002B -   160   293   294
 ResRepAlmNib                      Abs      10 #0000000A -   293
 ResultsBit                        Abs       2 #00000002 -   297
 ResultsFl                         Abs       3 #00000003 -   125   296   297
 ResultsNib                        Abs       0 #00000000 -   296
 RightJustifiedStackBit            Abs       1 #00000001 -   753
 RightJustifiedStackFl             Abs      74 #0000004A -   751   752   753
 RightJustifiedStackNib            Abs      18 #00000012 -   752
=RomId                             Abs     806 #00000326 -    12
 SEMI                              Ext                   -   881   926   931
                                         948   993   998  1003  1008
 ShowPrecBit                       Abs       0 #00000000 -   300
 ShowPrecFl                        Abs      53 #00000035 -   169   299   300
 ShowPrecNib                       Abs      13 #0000000D -   299
 SmallFontChooseBit                Abs       1 #00000001 -   801
 SmallFontChooseFl                 Abs      90 #0000005A -   799   800   801
 SmallFontChooseNib                Abs      22 #00000016 -   800
 SmallFontEQWEditBit               Abs       1 #00000001 -   777
 SmallFontEQWEditFl                Abs      82 #00000052 -   775   776   777
 SmallFontEQWEditNib               Abs      20 #00000014 -   776
 SmallFontEQWGrobBit               Abs       0 #00000000 -   774
 SmallFontEQWGrobFl                Abs      81 #00000051 -   772   773   774
 SmallFontEQWGrobNib               Abs      20 #00000014 -   773
 SmallFontEQWStackBit              Abs       3 #00000003 -   771
 SmallFontEQWStackFl               Abs      80 #00000050 -   769   770   771
 SmallFontEQWStackNib              Abs      19 #00000013 -   770
 SolutionsBit                      Abs       0 #00000000 -   303
 SolutionsFl                       Abs       1 #00000001 -   123   302   303
 SolutionsNib                      Abs       0 #00000000 -   302
 SystemRPLStackBit                 Abs       0 #00000000 -   786
 SystemRPLStackFl                  Abs      85 #00000055 -   784   785   786
 SystemRPLStackNib                 Abs      21 #00000015 -   785
 TEN                               Ext                   -   905   972
 THREE                             Ext                   -   867
 TRUE                              Ext                   -   928   995  1000
 TWELVE                            Ext                   -   902   969
 TWENTYFIVE                        Ext                   -   853
 TriAlphaBit                       Abs       3 #00000003 -   306
 TriAlphaFl                        Abs      60 #0000003C -   176   305   306
 TriAlphaNib                       Abs      14 #0000000E -   305
 TriUserBit                        Abs       0 #00000000 -   309
 TriUserFl                         Abs      61 #0000003D -   177   308   309
 TriUserNib                        Abs      15 #0000000F -   308
 UM>?                              Ext                   -   883   950
 UnderfActBit                      Abs       3 #00000003 -   312
 UnderfActFl                       Abs      20 #00000014 -   138   311   312
 UnderfActNib                      Abs       4 #00000004 -   311
 UnderfNegBit                      Abs       2 #00000002 -   315
 UnderfNegFl                       Abs      23 #00000017 -   141   314   315
 UnderfNegNib                      Abs       5 #00000005 -   314
 UnderfPosBit                      Abs       3 #00000003 -   318
 UnderfPosFl                       Abs      24 #00000018 -   142   317   318
 UnderfPosNib                      Abs       5 #00000005 -   317
 UserKeysBit                       Abs       1 #00000001 -   321
 UserKeysFl                        Abs      62 #0000003E -   178   320   321
 UserKeysNib                       Abs      15 #0000000F -   320
 VerboseBit                        Abs       1 #00000001 -   258
 VerboseFl                         Abs      58 #0000003A -   174   257   258
 VerboseNib                        Abs      14 #0000000E -   257
 VerticalListBit                   Abs       0 #00000000 -   822
 VerticalListFl                    Abs      97 #00000061 -   820   821   822
 VerticalListNib                   Abs      24 #00000018 -   821
 VerticalVectorBit                 Abs       1 #00000001 -   825
 VerticalVectorFl                  Abs      98 #00000062 -   823   824   825
 VerticalVectorNib                 Abs      24 #00000018 -   824
 case                              Ext                   -   859   934
 hasALIAS                          Abs       2 #00000002 -   334
 hasCOLCT                          Abs       2 #00000002 -   340
 hasDER                            Abs       8 #00000008 -   338
 hasEXPND                          Abs       1 #00000001 -   341
 hasFORM                           Abs       8 #00000008 -   344
 hasHELP                           Abs       4 #00000004 -   332
 hasINTG                           Abs       4 #00000004 -   345
 hasINV                            Abs       4 #00000004 -   339
 hasPDATA                          Abs       1 #00000001 -   335
 hasPROMPTM                        Abs       4 #00000004 -   333
 hasVUNS                           Abs       1 #00000001 -   347
 hasWHERE                          Abs       2 #00000002 -   346
 nonALG                            Abs       8 #00000008 -   331
 pdCM                              Abs       6 #00000006 -   356
 pdEQ                              Abs       7 #00000007 -   357
 pdEX                              Abs       0 #00000000 -   350
 pdLP                              Abs       4 #00000004 -   354
 pdOP                              Abs       1 #00000001 -   351
 pdOS0                             Abs       8 #00000008 -   358
 pdOS1                             Abs       9 #00000009 -   359
 pdOS2                             Abs      10 #0000000A -   360
 pdOS3                             Abs      11 #0000000B -   361
 pdOS4                             Abs      12 #0000000C -   362
 pdOS5                             Abs      13 #0000000D -   363
 pdOS6                             Abs      14 #0000000E -   364
 pdOS7                             Abs      15 #0000000F -   365
 pdQE                              Abs       2 #00000002 -   352
 pdQN                              Abs       3 #00000003 -   353
 pdRP                              Abs       5 #00000005 -   355
 umEND                             Ext                   -   866   880   947
 ~DoMsgBox                         Ext                   -   917   984
 ~MsgBoxMenu                       Ext                   -   913   980
 ~grobAlertIcon                    Ext                   -   909   976
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Statistics                         PA_FLD_MSGHNDL Page    3

Input Parameters

  Source file name is PA_FLD_MSGHNDLR.a

  Listing file name is PA_FLD_MSGHNDLR.l

  Object file name is PA_FLD_MSGHNDLR.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
