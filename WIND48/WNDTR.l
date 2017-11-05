Saturn Assembler                                       Thu Jun 18 17:14:43 2009
V3.0.9 (04/15/2007)                                      WNDTR.a        Page    1

    1             * File  WNDTR.s 1
    2             * RPL
    3             * File  WNDTR.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\WNDTR.s, part of the WIND50.hpp project, created by <> on 17/06/2009
    5             **********************************************************************
    6             * NAME:          WNDTR
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.7
    9             * DATE:          17 June 2009
   10             * COMPATIBILITY: HP50, HP48
   11             * DESCRIPTION:   Displays the input/output form for the variables
   12             *                in the wind triangle problem and the choose box to
   13             *                select a solution.
   14             *
   15             * File  WNDTR.s 13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND48\WIND48.h
   17
   18             =RomId  EQU     #320
   19             * ROMID set to 320
   20
   21
   22
   23
   24
   25
   26
   27
   28             *|| Resuming file WNDTR.s at line 13
   29             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
   30
   31
   32             * RPL
   33             * insure RPL-mode exit
   34
   35             * ( Rad
   36
   37             * ( %2PI
   38             * ( %PI/24
   39
   40
   41
   42
   43             * ( 1=1Var, 2=2Var Statistic
   44             * ( 1=Histogram, 2=BoxWhisker
   45
   46
   47
   48
   49
   50             * ASSEMBLE
   51             DefSysF64-33 EQU        #00000000
   52             DefSysF32-01 EQU        #04010FF0
   53             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   54             DefSysF97-128 EQU       #00000000
   55
   56             * RPL
   57
   58
   59             * ( solution mode
   60             * ( constants mode
   61             * ( results mode
   62             * ( careful evaluation mode
   63
   64             * ( binary integer wordsize
   65             * must start on nibble boundary
   66             * ( binary integer base
   67             * must follow "fnBinWordS6"
   68
   69             * ( financial BEGIN/END mode
   70             * ( complex number and vector
   71             * mode
   72             * ( angle mode
   73             * must start on a nibble boundary
   74             * ( complex 2D mode
   75             * ( underflow action
   76             * ( overflow action
   77             * ( infinite result action
   78             * ( underflow-negative indicator
   79             * ( underflow-positive indicator
   80             * ( overflow indicator
   81             * ( infinite result indicator
   82             * ( symbolic-comples decompilation
   83             * ( simultaneous plot mode
   84             * ( axis drawing plot mode
   85
   86             * ( connect points mode
   87             * ( graphics cursor type mode
   88             * ( I/O device
   89             * ( print device
   90             * ( I/O data format
   91             * ( variable overwrite mode
   92             * ( double-space print mode
   93             * ( suppress auto CR mode
   94             * ( suppress I/O status messages
   95
   96
   97             * ( clock display mode
   98             * ( clock display format
   99             * ( date format
  100             * ( reschedule unacknowledged
  101             * repeat alarms mode
  102             * ( delete acknowledged non-repeat
  103             * alarms mode
  104
  105             * ( number of decimal digits
  106             * must start on nibble boundary
  107             * ( number display format
  108             * must start on nibble boundary
  109             * ( radix mark
  110             * ( multi-line display mode
  111             * ( show precedence mode
  112             * ( zero out tiny matrix elements
  113
  114             * ( last arguments mode
  115             * ( error beep mode
  116             * ( alarm beep mode
  117             * ( verbose display mode
  118             * ( variable name only mode
  119             * ( 3-way alpha mode
  120             * ( 3-way user keys mode
  121             * ( user keys mode
  122             * ( special parser mode
  123             * ( index wraparound indicator
  124
  125
  126             * ASSEMBLE
  127             SolutionsFl  EQU 1
  128             ConstantsFl  EQU 2
  129             ResultsFl    EQU 3
  130             CarefulFl    EQU 4
  131
  132             BinWordSFl1  EQU 5      must start on a nibble boundary
  133             BinWordSBCt  EQU 6      number of bits
  134             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  135             BinBaseBCt   EQU 2      number of bits
  136
  137             ComVecDiFl1  EQU 15
  138             ComVecDiBCt  EQU 2      number of bits
  139             AngleFl1     EQU 17     must start on a nibble boundary
  140             AngleBCt     EQU 2      number of bits
  141             Complex2DFl  EQU 19
  142             UnderfActFl  EQU 20
  143             OverfActFl   EQU 21
  144             InfResActFl  EQU 22
  145             UnderfNegFl  EQU 23
  146             UnderfPosFl  EQU 24
  147             OverflowFl   EQU 25
  148             InfResultFl  EQU 26
  149
  150             FunctPlotFl  EQU 30
  151             ConnectPtFl  EQU 31
  152             GCursorFl    EQU 32
  153             IODeviceFl   EQU 33
  154             PrintDevFl   EQU 34
  155             IODataFmtFl  EQU 35
  156             OverwriteFl  EQU 36
  157             DblSpaceFl   EQU 37
  158             NoAutoCRFl   EQU 38
  159             NoIOStsMsgFl EQU 39
  160
  161             ClockOnFl    EQU 40
  162             ClockFmtFl   EQU 41
  163             DateFmtFl    EQU 42
  164             ResRepAlmFl  EQU 43
  165             DelNRAlmFl   EQU 44
  166
  167             NumDigsFl1   EQU 45     must start on a nibble boundary
  168             NumDigsBCt   EQU 4      number of bits
  169             NumDispFl1   EQU 49     must start on a nibble boundary
  170             NumDispBCt   EQU 2      number of bits
  171             RadixFl      EQU 51
  172             MultiDispFl  EQU 52
  173             ShowPrecFl   EQU 53
  174
  175             LastArgsFl   EQU 55
  176             ErrorBeepFl  EQU 56
  177             AlarmBeepFl  EQU 57
  178             VerboseFl    EQU 58
  179             FastEqViewFl EQU 59
  180             TriAlphaFl   EQU 60
  181             TriUserFl    EQU 61
  182             UserKeysFl   EQU 62
  183             NoParseFl    EQU 63
  184             IndexWrapFl  EQU 64
  185
  186
  187
  188             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  189             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  190
  191             AngleNib     EQU ((AngleFl1)-1)/4
  192             AngleBit1    EQU ((AngleFl1)-1)%4
  193             AngleBit2    EQU (AngleBit1)+1
  194
  195             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  196             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  197
  198             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  199             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  200
  201             CarefulNib   EQU ((CarefulFl)-1)/4
  202             CarefulBit   EQU ((CarefulFl)-1)%4
  203
  204             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  205             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  206
  207             ClockOnNib   EQU ((ClockOnFl)-1)/4
  208             ClockOnBit   EQU ((ClockOnFl)-1)%4
  209
  210             Complex2DNib EQU ((Complex2DFl)-1)/4
  211             Complex2DBit EQU ((Complex2DFl)-1)%4
  212
  213             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  214             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  215
  216             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  217             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  218
  219             ConstantsNib EQU ((ConstantsFl)-1)/4
  220             ConstantsBit EQU ((ConstantsFl)-1)%4
  221
  222             DateFmtNib   EQU ((DateFmtFl)-1)/4
  223             DateFmtBit   EQU ((DateFmtFl)-1)%4
  224
  225             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  226             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  227
  228             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  229             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  230
  231             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  232             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  233
  234             FastEViewNib EQU ((FastEqViewFl)-1)/4
  235             FastEViewBit EQU ((FastEqViewFl)-1)%4
  236
  237             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  238             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  239
  240             GCursorNib   EQU ((GCursorFl)-1)/4
  241             GCursorBit   EQU ((GCursorFl)-1)%4
  242
  243             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  244             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  245
  246             InfResActNib EQU ((InfResActFl)-1)/4
  247             InfResActBit EQU ((InfResActFl)-1)%4
  248
  249             InfResultNib EQU ((InfResultFl)-1)/4
  250             InfResultBit EQU ((InfResultFl)-1)%4
  251
  252             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  253             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  254
  255             IODeviceNib  EQU ((IODeviceFl)-1)/4
  256             IODeviceBit  EQU ((IODeviceFl)-1)%4
  257
  258             LastArgsNib  EQU ((LastArgsFl)-1)/4
  259             LastArgsBit  EQU ((LastArgsFl)-1)%4
  260
  261             VerboseNib   EQU ((VerboseFl)-1)/4
  262             VerboseBit   EQU ((VerboseFl)-1)%4
  263
  264             MultiDispNib EQU ((MultiDispFl)-1)/4
  265             MultiDispBit EQU ((MultiDispFl)-1)%4
  266
  267             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  268             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  269
  270             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  271             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  272
  273             NoParseNib   EQU ((NoParseFl)-1)/4
  274             NoParseBit   EQU ((NoParseFl)-1)%4
  275
  276             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  277             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  278
  279             NumDispNib   EQU ((NumDispFl1)-1)/4
  280             NumDispBit1  EQU ((NumDispFl1)-1)%4
  281
  282             OverfActNib  EQU ((OverfActFl)-1)/4
  283             OverfActBit  EQU ((OverfActFl)-1)%4
  284
  285             OverflowNib  EQU ((OverflowFl)-1)/4
  286             OverflowBit  EQU ((OverflowFl)-1)%4
  287
  288             OverwriteNib EQU ((OverwriteFl)-1)/4
  289             OverwriteBit EQU ((OverwriteFl)-1)%4
  290
  291             PrintDevNib  EQU ((PrintDevFl)-1)/4
  292             PrintDevBit  EQU ((PrintDevFl)-1)%4
  293
  294             RadixNib     EQU ((RadixFl)-1)/4
  295             RadixBit     EQU ((RadixFl)-1)%4
  296
  297             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  298             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  299
  300             ResultsNib   EQU ((ResultsFl)-1)/4
  301             ResultsBit   EQU ((ResultsFl)-1)%4
  302
  303             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  304             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  305
  306             SolutionsNib EQU ((SolutionsFl)-1)/4
  307             SolutionsBit EQU ((SolutionsFl)-1)%4
  308
  309             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  310             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  311
  312             TriUserNib   EQU ((TriUserFl)-1)/4
  313             TriUserBit   EQU ((TriUserFl)-1)%4
  314
  315             UnderfActNib EQU ((UnderfActFl)-1)/4
  316             UnderfActBit EQU ((UnderfActFl)-1)%4
  317
  318             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  319             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  320
  321             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  322             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  323
  324             UserKeysNib  EQU ((UserKeysFl)-1)/4
  325             UserKeysBit  EQU ((UserKeysFl)-1)%4
  326
  327             * RPL
  328             * RPL
  329             * insure RPL-mode exit
  330
  331
  332             * ASSEMBLE
  333
  334
  335             nonALG EQU 8                    not-allowed-in-algebraics flag
  336             hasHELP EQU 4                   has-help-data flag
  337             hasPROMPTM EQU 4                same as above
  338             hasALIAS EQU 2                  has-algebraic-alias flag
  339             hasPDATA EQU 1                  has-parse-data flag
  340
  341
  342             hasDER EQU 8                    has-derivative flag
  343             hasINV EQU 4                    has-inverse flag
  344             hasCOLCT EQU 2                  has-COLCT-data flag
  345             hasEXPND EQU 1                  has-EXPND-data flag
  346
  347
  348             hasFORM EQU 8                   has-FORM-menu flag
  349             hasINTG EQU 4                   has-Integral-data flag
  350             hasWHERE EQU 2                  has-WHERE-code flag
  351             hasVUNS EQU 1                   has-veryunsymin-code flag
  352
  353
  354             pdEX EQU #0             general expression
  355             pdOP EQU #1             operator
  356             pdQE EQU #2             quoted expression
  357             pdQN EQU #3             quoted name
  358             pdLP EQU #4             left parenthesis
  359             pdRP EQU #5             right parenthesis
  360             pdCM EQU #6             comma (non-radix)
  361             pdEQ EQU #7             equal-sign separator
  362             pdOS0 EQU #8            optional repeat 0
  363             pdOS1 EQU #9            optional repeat 1
  364             pdOS2 EQU #A            optional repeat 2
  365             pdOS3 EQU #B            optional repeat 3
  366             pdOS4 EQU #C            optional repeat 4
  367             pdOS5 EQU #D            optional repeat 5
  368             pdOS6 EQU #E            optional repeat 6
  369             pdOS7 EQU #F            optional repeat 7
  370
  371             * RPL
  372             * RPL
  373             * insure RPL-mode exit
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
  390
  391             * RPL
  392             * insure RPL-mode exit
  393
  394             * RPL
  395             * insure RPL-mode exit
  396
  397
  398
  399
  400
  401
  402
  403
  404
  405             * ( for internal use only
  406
  407
  408
  409
  410
  411
  412
  413
  414
  415
  416             * ( decimal 67
  417             * ( decimal 86
  418             * ( decimal 82
  419             * ( decimal 85
  420             * ( decimal 101
  421             * ( decimal 97
  422             * ( decimal 100
  423             * ( decimal 113
  424             * ( decimal 112
  425
  426             * ( check width
  427             * ( field character width
  428
  429             * ( decimal 67
  430             * ( decimal 85
  431             * ( decimal 97
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
  448
  449             * RPL
  450             * insure RPL-mode exit
  451
  452             * ( decimal 66
  453             * ( decimal 67
  454             * ( decimal 69
  455             * ( decimal 82
  456             * ( decimal 83
  457             * ( decimal 84
  458             * ( decimal 85
  459             * ( decimal 86
  460             * ( decimal 87
  461
  462
  463             * ( norm-view default visible row count
  464             * ( default first row X location
  465             * ( default first row Y location
  466             * ( default row width
  467             * ( default row height
  468
  469             * ( max-view width
  470             * ( max-view height
  471             * ( max-view default visible row count
  472
  473             * ( prompt area height
  474
  475             * ( more-up/down icon width
  476
  477
  478
  479             * RPL
  480             * insure RPL-mode exit
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
  695
  696             * RPL
  697             * insure RPL-mode exit
  698
  699
  700
  701             * ( set for informations
  702             * ( set for step by step mode on
  703             * ( internal use: true if VXXL success
  704             * ( set for no gcd computations
  705             * ( set for complex mode
  706             * ( internal use:       LN->-INV[-LN]]
  707             * ( set for approx mode
  708             * ( set for TSIMP call inside SERIES
  709             * ( internal use:       modular computation
  710             * ( internal use:       testing remainder=0
  711             * ( set to allow numeric factorization
  712             * ( set for large matrices
  713             * ( set: don't simplify inside non rational operation
  714             * ( set to see i as an irrquad c=-1
  715             * ( set to disable linearity simplif.
  716             * ( set for increasing power x+1 -> 1+x
  717             * ( internal use:       sqrt not as irrquad
  718             * ( set if sin are prefered to cos
  719             * ( set for menu as choosebox
  720             * ( set if xINT is not simplified
  721             * ( set if non rigourous mode
  722             * ( set to allow silent mode switch
  723             * ( set if xLN returns LN[ABS[]]
  724
  725
  726             * ASSEMBLE
  727
  728             MultiLineFl     EQU     65
  729             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  730             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  731             MultiLineStringsFl      EQU     66
  732             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  733             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  734             DigitalClockFl  EQU     67
  735             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  736             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  737             CmdAutoIndentFl EQU     68
  738             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  739             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  740             FullScreenEditFl        EQU     69
  741             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  742             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  743             MultiLine2GROBFl        EQU     70
  744             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  745             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  746             DesasmWithAdrFl EQU     71
  747             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  748             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  749             BigFontStackFl  EQU     72
  750             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  751             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  752             BigFontCmdFl    EQU     73
  753             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  754             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  755             RightJustifiedStackFl   EQU     74
  756             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  757             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  758             KeystrokeBeepFl EQU     75
  759             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  760             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  761             FilerConfirmationFl     EQU     76
  762             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  763             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  764             FilerConfirmFl  EQU     77
  765             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  766             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  767             KernelParamFl   EQU     78
  768             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  769             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  770             PrettyPrintFl   EQU     79
  771             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  772             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  773             SmallFontEQWStackFl     EQU     80
  774             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  775             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  776             SmallFontEQWGrobFl      EQU     81
  777             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  778             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  779             SmallFontEQWEditFl      EQU     82
  780             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  781             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  782             GrobDisplayFl   EQU     83
  783             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  784             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  785             MKSmallFontMenuFl       EQU     84
  786             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  787             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  788             SystemRPLStackFl        EQU     85
  789             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  790             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  791             MASDDecompilerFl        EQU     86
  792             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  793             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  794             RecursiveStackFl        EQU     87
  795             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  796             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  797             RecursiveEditFl EQU     88
  798             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  799             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  800             AddressesCLEFl  EQU     89
  801             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  802             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  803             SmallFontChooseFl       EQU     90
  804             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  805             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  806             ArrayOnlyFl     EQU     91
  807             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  808             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  809             MLMASDModeFl    EQU     92
  810             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  811             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  812             ErableHeaderFl  EQU     93
  813             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  814             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  815             AutoSaveFl      EQU     94
  816             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  817             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  818             AlgebraicModeFl EQU     95
  819             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  820             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  821             MenuOnFl        EQU     96
  822             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  823             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  824             VerticalListFl  EQU     97
  825             VerticalListNib EQU     ((VerticalListFl)-1)/4
  826             VerticalListBit EQU     ((VerticalListFl)-1)%4
  827             VerticalVectorFl        EQU     98
  828             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  829             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  830
  831
  832             ComplexFl       EQU     103
  833             ComplexNib      EQU     ((ComplexFl)-1)/4
  834             ComplexBit      EQU     ((ComplexFl)-1)%4
  835
  836
  837             ExactModeFl     EQU     105
  838             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  839             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  840
  841
  842             * RPL
  843
  844
  845
  846             * ASSEMBLE
  847                     SETLIST CODE, INCLUDE, PSEUDO
  848             * RPL
  849
  850             *|| Resuming file WNDTR.s at line 14
  851 00000 00000         CON(6)  =~xWNDTR
            0
  852 00006       =xWNDTR
  853             * File  WNDTR.s 17
  854 00006 00000         CON(5)  =DOCOL
  855             * File  WNDTR.s 18
  856 0000B 00000         CON(5)  =CK0
  857             * No arguments
  858             * File  WNDTR.s 19
  859 00010 00000         CON(5)  =BEGIN
  860             * File  WNDTR.s 20
  861 00015 00000         CON(5)  =DOROMP
  862 0001A 00000         CON(6)  =~WINDTRform
            0
  863             *          DROP                             ( Flag )
  864             * File  WNDTR.s 22
  865 00020 00000         CON(5)  =WHILE
  866 00025 00000         CON(5)  =DOCOL
  867             * STO results of input form in global variables )
  868             * File  WNDTR.s 24
  869 0002A 00000         CON(5)  ='
  870 0002F 00000         CON(5)  =DOIDNT
  871 00034 40            CON(2)  4
  872 00036 34251         NIBASC  \CRAB\
            424
  873 0003E 00000         CON(5)  =STO
  874             * CRAB
  875             * File  WNDTR.s 25
  876 00043 00000         CON(5)  ='
  877 00048 00000         CON(5)  =DOIDNT
  878 0004D 20            CON(2)  2
  879 0004F 7535          NIBASC  \WS\
  880 00053 00000         CON(5)  =STO
  881             * WIND SPEED
  882             * File  WNDTR.s 26
  883 00058 00000         CON(5)  ='
  884 0005D 00000         CON(5)  =DOIDNT
  885 00062 20            CON(2)  2
  886 00064 7544          NIBASC  \WD\
  887 00068 00000         CON(5)  =STO
  888             * WIND DIRECTION
  889             * File  WNDTR.s 27
  890 0006D 00000         CON(5)  ='
  891 00072 00000         CON(5)  =DOIDNT
  892 00077 20            CON(2)  2
  893 00079 7435          NIBASC  \GS\
  894 0007D 00000         CON(5)  =STO
  895             * GROUND SPEED
  896             * File  WNDTR.s 28
  897 00082 00000         CON(5)  ='
  898 00087 00000         CON(5)  =DOIDNT
  899 0008C 20            CON(2)  2
  900 0008E 4534          NIBASC  \TC\
  901 00092 00000         CON(5)  =STO
  902             * TRACK
  903             * File  WNDTR.s 29
  904 00097 00000         CON(5)  ='
  905 0009C 00000         CON(5)  =DOIDNT
  906 000A1 30            CON(2)  3
  907 000A3 45143         NIBASC  \TAS\
            5
  908 000A9 00000         CON(5)  =STO
  909             * TRUE AIR SPEED
  910             * File  WNDTR.s 30
  911 000AE 00000         CON(5)  ='
  912 000B3 00000         CON(5)  =DOIDNT
  913 000B8 30            CON(2)  3
  914 000BA 84447         NIBASC  \HDG\
            4
  915 000C0 00000         CON(5)  =STO
  916             * HEADING
  917             * Choose box parameters
  918             * File  WNDTR.s 32
  919 000C5 00000         CON(5)  ='DROPFALSE
  920             * Message handler
  921             * File  WNDTR.s 33
  922 000CA 00000         CON(5)  =DOCSTR
  923 000CF 91000         CON(5)  25
  924 000D4 35F4C         NIBASC  \SOLVE MENU\
            46554
            02D454E455

  925             * Title
  926             * File  WNDTR.s 34
  927 000E8 00000         CON(5)  =SEVENTEEN
  928             * Decompile
  929             * File  WNDTR.s 35
  930 000ED 00000         CON(5)  =DOLIST
  931             * File  WNDTR.s 36
  932 000F2 00000         CON(5)  =DOLIST
  933 000F7 00000         CON(5)  =DOCSTR
  934 000FC 51000         CON(5)  21
  935 00101 84447         NIBASC  \HDG & GS\
            40262
            027435
  936 00111 00000         CON(5)  =DOCOL
  937             * Solve for HEADING & GROUND SPEED
  938             * File  WNDTR.s 37
  939 00116 00000         CON(5)  =DOIDNT
  940 0011B 30            CON(2)  3
  941 0011D 45143         NIBASC  \TAS\
            5
  942 00123 00000         CON(5)  =DOIDNT
  943 00128 20            CON(2)  2
  944 0012A 4534          NIBASC  \TC\
  945 0012E 00000         CON(5)  =DOIDNT
  946 00133 20            CON(2)  2
  947 00135 7544          NIBASC  \WD\
  948 00139 00000         CON(5)  =DOIDNT
  949 0013E 20            CON(2)  2
  950 00140 7535          NIBASC  \WS\
  951             * Arguments
  952             * File  WNDTR.s 38
  953 00144 00000         CON(5)  =DOROMP
  954 00149 00000         CON(6)  =~xTHGS
            0
  955             * ... -> %HDG %GS %CRAB
  956             * File  WNDTR.s 39
  957 0014F 00000         CON(5)  ='
  958 00154 00000         CON(5)  =DOIDNT
  959 00159 40            CON(2)  4
  960 0015B 34251         NIBASC  \CRAB\
            424
  961 00163 00000         CON(5)  =STO
  962             * STO output in global variables
  963             * File  WNDTR.s 40
  964 00168 00000         CON(5)  ='
  965 0016D 00000         CON(5)  =DOIDNT
  966 00172 20            CON(2)  2
  967 00174 7435          NIBASC  \GS\
  968 00178 00000         CON(5)  =STO
  969             * File  WNDTR.s 41
  970 0017D 00000         CON(5)  ='
  971 00182 00000         CON(5)  =DOIDNT
  972 00187 30            CON(2)  3
  973 00189 84447         NIBASC  \HDG\
            4
  974 0018F 00000         CON(5)  =STO
  975             * File  WNDTR.s 42
  976 00194 00000         CON(5)  =SEMI
  977 00199 00000         CON(5)  =SEMI
  978             * File  WNDTR.s 43
  979 0019E 00000         CON(5)  =DOLIST
  980 001A3 00000         CON(5)  =DOCSTR
  981 001A8 91000         CON(5)  25
  982 001AD 45251         NIBASC  \TRACK & GS\
            434B4
            0262027435

  983 001C1 00000         CON(5)  =DOCOL
  984             * Solve for TRACK & GROUND SPEED
  985             * File  WNDTR.s 44
  986 001C6 00000         CON(5)  =DOIDNT
  987 001CB 30            CON(2)  3
  988 001CD 84447         NIBASC  \HDG\
            4
  989 001D3 00000         CON(5)  =DOIDNT
  990 001D8 30            CON(2)  3
  991 001DA 45143         NIBASC  \TAS\
            5
  992 001E0 00000         CON(5)  =DOIDNT
  993 001E5 20            CON(2)  2
  994 001E7 7544          NIBASC  \WD\
  995 001EB 00000         CON(5)  =DOIDNT
  996 001F0 20            CON(2)  2
  997 001F2 7535          NIBASC  \WS\
  998             * Arguments
  999             * File  WNDTR.s 45
 1000 001F6 00000         CON(5)  =DOROMP
 1001 001FB 00000         CON(6)  =~xCGVE
            0
 1002             * ... -> %TC %GS %CRAB
 1003             * File  WNDTR.s 46
 1004 00201 00000         CON(5)  ='
 1005 00206 00000         CON(5)  =DOIDNT
 1006 0020B 40            CON(2)  4
 1007 0020D 34251         NIBASC  \CRAB\
            424
 1008 00215 00000         CON(5)  =STO
 1009             * STO output in global variables
 1010             * File  WNDTR.s 47
 1011 0021A 00000         CON(5)  ='
 1012 0021F 00000         CON(5)  =DOIDNT
 1013 00224 20            CON(2)  2
 1014 00226 7435          NIBASC  \GS\
 1015 0022A 00000         CON(5)  =STO
 1016             * File  WNDTR.s 48
 1017 0022F 00000         CON(5)  ='
 1018 00234 00000         CON(5)  =DOIDNT
 1019 00239 20            CON(2)  2
 1020 0023B 4534          NIBASC  \TC\
 1021 0023F 00000         CON(5)  =STO
 1022             * File  WNDTR.s 49
 1023 00244 00000         CON(5)  =SEMI
 1024 00249 00000         CON(5)  =SEMI
 1025             * File  WNDTR.s 50
 1026 0024E 00000         CON(5)  =DOLIST
 1027 00253 00000         CON(5)  =DOCSTR
 1028 00258 71000         CON(5)  23
 1029 0025D 84447         NIBASC  \HDG & TAS\
            40262
            02451435

 1030 0026F 00000         CON(5)  =DOCOL
 1031             * Solve for HEADING & TRUE AIR SPEED
 1032             * File  WNDTR.s 51
 1033 00274 00000         CON(5)  =DOIDNT
 1034 00279 20            CON(2)  2
 1035 0027B 4534          NIBASC  \TC\
 1036 0027F 00000         CON(5)  =DOIDNT
 1037 00284 20            CON(2)  2
 1038 00286 7435          NIBASC  \GS\
 1039 0028A 00000         CON(5)  =DOIDNT
 1040 0028F 20            CON(2)  2
 1041 00291 7544          NIBASC  \WD\
 1042 00295 00000         CON(5)  =DOIDNT
 1043 0029A 20            CON(2)  2
 1044 0029C 7535          NIBASC  \WS\
 1045             * Arguments
 1046             * File  WNDTR.s 52
 1047 002A0 00000         CON(5)  =DOROMP
 1048 002A5 00000         CON(6)  =~xCAVE
            0
 1049             * ... -> %HDG %TAS %CRAB
 1050             * File  WNDTR.s 53
 1051 002AB 00000         CON(5)  ='
 1052 002B0 00000         CON(5)  =DOIDNT
 1053 002B5 40            CON(2)  4
 1054 002B7 34251         NIBASC  \CRAB\
            424
 1055 002BF 00000         CON(5)  =STO
 1056             * STO output in global variables
 1057             * File  WNDTR.s 54
 1058 002C4 00000         CON(5)  ='
 1059 002C9 00000         CON(5)  =DOIDNT
 1060 002CE 30            CON(2)  3
 1061 002D0 45143         NIBASC  \TAS\
            5
 1062 002D6 00000         CON(5)  =STO
 1063             * File  WNDTR.s 55
 1064 002DB 00000         CON(5)  ='
 1065 002E0 00000         CON(5)  =DOIDNT
 1066 002E5 30            CON(2)  3
 1067 002E7 84447         NIBASC  \HDG\
            4
 1068 002ED 00000         CON(5)  =STO
 1069             * File  WNDTR.s 56
 1070 002F2 00000         CON(5)  =SEMI
 1071 002F7 00000         CON(5)  =SEMI
 1072             * File  WNDTR.s 57
 1073 002FC 00000         CON(5)  =DOLIST
 1074 00301 00000         CON(5)  =DOCSTR
 1075 00306 D0000         CON(5)  13
 1076 0030B 7594E         NIBASC  \WIND\
            444
 1077 00313 00000         CON(5)  =DOCOL
 1078             * Solve for WIND
 1079             * File  WNDTR.s 58
 1080 00318 00000         CON(5)  =DOIDNT
 1081 0031D 30            CON(2)  3
 1082 0031F 84447         NIBASC  \HDG\
            4
 1083 00325 00000         CON(5)  =DOIDNT
 1084 0032A 30            CON(2)  3
 1085 0032C 45143         NIBASC  \TAS\
            5
 1086 00332 00000         CON(5)  =DOIDNT
 1087 00337 20            CON(2)  2
 1088 00339 4534          NIBASC  \TC\
 1089 0033D 00000         CON(5)  =DOIDNT
 1090 00342 20            CON(2)  2
 1091 00344 7435          NIBASC  \GS\
 1092             * Arguments
 1093             * File  WNDTR.s 59
 1094 00348 00000         CON(5)  =DOROMP
 1095 0034D 00000         CON(6)  =~xCWVE
            0
 1096             * ... -> %WD %WS %CRAB
 1097             * File  WNDTR.s 60
 1098 00353 00000         CON(5)  ='
 1099 00358 00000         CON(5)  =DOIDNT
 1100 0035D 40            CON(2)  4
 1101 0035F 34251         NIBASC  \CRAB\
            424
 1102 00367 00000         CON(5)  =STO
 1103             * STO output in global variables
 1104             * File  WNDTR.s 61
 1105 0036C 00000         CON(5)  ='
 1106 00371 00000         CON(5)  =DOIDNT
 1107 00376 20            CON(2)  2
 1108 00378 7535          NIBASC  \WS\
 1109 0037C 00000         CON(5)  =STO
 1110             * File  WNDTR.s 62
 1111 00381 00000         CON(5)  ='
 1112 00386 00000         CON(5)  =DOIDNT
 1113 0038B 20            CON(2)  2
 1114 0038D 7544          NIBASC  \WD\
 1115 00391 00000         CON(5)  =STO
 1116             * File  WNDTR.s 63
 1117 00396 00000         CON(5)  =SEMI
 1118 0039B 00000         CON(5)  =SEMI
 1119             * File  WNDTR.s 64
 1120 003A0 00000         CON(5)  =SEMI
 1121             * File  WNDTR.s 65
 1122 003A5 00000         CON(5)  =ONE
 1123             * #FocusPos
 1124             * File  WNDTR.s 66
 1125 003AA 00000         CON(5)  =DOROMP
 1126 003AF 00000         CON(6)  =~Choose
            0
 1127             * Run the choose box
 1128             * Process results of the choose box
 1129             * File  WNDTR.s 68
 1130 003B5 00000         CON(5)  =TRUE
 1131 003BA 00000         CON(5)  =EQUAL
 1132 003BF 00000         CON(5)  =IT
 1133 003C4 00000         CON(5)  =DOCOL
 1134             * If a choice is made
 1135             * File  WNDTR.s 69
 1136 003C9 00000         CON(5)  =TWO
 1137 003CE 00000         CON(5)  =NTHCOMPDROP
 1138             * Extract secondary
 1139             * File  WNDTR.s 70
 1140 003D3 00000         CON(5)  =EVAL
 1141             * Run the secondary
 1142             * File  WNDTR.s 71
 1143 003D8 00000         CON(5)  =SEMI
 1144             * File  WNDTR.s 72
 1145 003DD 00000         CON(5)  =SEMI
 1146 003E2 00000         CON(5)  =REPEAT
 1147             * File  WNDTR.s 73
 1148 003E7 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 18 17:14:43 2009
V3.0.9 (04/15/2007)   Symbol Table                       WNDTR.a        Page    2

 '                                 Ext                   -   869   876   883
                                         890   897   904   911   957   964   970
                                        1004  1011  1017  1051  1058  1064  1098
                                        1105  1111
 'DROPFALSE                        Ext                   -   919
 AddressesCLEBit                   Abs       0 #00000000 -   802
 AddressesCLEFl                    Abs      89 #00000059 -   800   801   802
 AddressesCLENib                   Abs      22 #00000016 -   801
 AlarmBeepBit                      Abs       0 #00000000 -   189
 AlarmBeepFl                       Abs      57 #00000039 -   177   188   189
 AlarmBeepNib                      Abs      14 #0000000E -   188
 AlgebraicModeBit                  Abs       2 #00000002 -   820
 AlgebraicModeFl                   Abs      95 #0000005F -   818   819   820
 AlgebraicModeNib                  Abs      23 #00000017 -   819
 AngleBCt                          Abs       2 #00000002 -   140
 AngleBit1                         Abs       0 #00000000 -   192   193
 AngleBit2                         Abs       1 #00000001 -   193
 AngleFl1                          Abs      17 #00000011 -   139   191   192
 AngleNib                          Abs       4 #00000004 -   191
 ArrayOnlyBit                      Abs       2 #00000002 -   808
 ArrayOnlyFl                       Abs      91 #0000005B -   806   807   808
 ArrayOnlyNib                      Abs      22 #00000016 -   807
 AutoSaveBit                       Abs       1 #00000001 -   817
 AutoSaveFl                        Abs      94 #0000005E -   815   816   817
 AutoSaveNib                       Abs      23 #00000017 -   816
 BEGIN                             Ext                   -   859
 BigFontCmdBit                     Abs       0 #00000000 -   754
 BigFontCmdFl                      Abs      73 #00000049 -   752   753   754
 BigFontCmdNib                     Abs      18 #00000012 -   753
 BigFontStackBit                   Abs       3 #00000003 -   751
 BigFontStackFl                    Abs      72 #00000048 -   749   750   751
 BigFontStackNib                   Abs      17 #00000011 -   750
 BinBaseBCt                        Abs       2 #00000002 -   135
 BinBaseBit1                       Abs       2 #00000002 -   196
 BinBaseFl1                        Abs      11 #0000000B -   134   195   196
 BinBaseNib                        Abs       2 #00000002 -   195
 BinWordSBCt                       Abs       6 #00000006 -   133
 BinWordSBit1                      Abs       0 #00000000 -   199
 BinWordSFl1                       Abs       5 #00000005 -   132   198   199
 BinWordSNib                       Abs       1 #00000001 -   198
 CK0                               Ext                   -   856
 CarefulBit                        Abs       3 #00000003 -   202
 CarefulFl                         Abs       4 #00000004 -   130   201   202
 CarefulNib                        Abs       0 #00000000 -   201
 ClockFmtBit                       Abs       0 #00000000 -   205
 ClockFmtFl                        Abs      41 #00000029 -   162   204   205
 ClockFmtNib                       Abs      10 #0000000A -   204
 ClockOnBit                        Abs       3 #00000003 -   208
 ClockOnFl                         Abs      40 #00000028 -   161   207   208
 ClockOnNib                        Abs       9 #00000009 -   207
 CmdAutoIndentBit                  Abs       3 #00000003 -   739
 CmdAutoIndentFl                   Abs      68 #00000044 -   737   738   739
 CmdAutoIndentNib                  Abs      16 #00000010 -   738
 ComVecDiBCt                       Abs       2 #00000002 -   138
 ComVecDiBit1                      Abs       2 #00000002 -   214
 ComVecDiFl1                       Abs      15 #0000000F -   137   213   214
 ComVecDiNib                       Abs       3 #00000003 -   213
 Complex2DBit                      Abs       2 #00000002 -   211
 Complex2DFl                       Abs      19 #00000013 -   141   210   211
 Complex2DNib                      Abs       4 #00000004 -   210
 ComplexBit                        Abs       2 #00000002 -   834
 ComplexFl                         Abs     103 #00000067 -   832   833   834
 ComplexNib                        Abs      25 #00000019 -   833
 ConnectPtBit                      Abs       2 #00000002 -   217
 ConnectPtFl                       Abs      31 #0000001F -   151   216   217
 ConnectPtNib                      Abs       7 #00000007 -   216
 ConstantsBit                      Abs       1 #00000001 -   220
 ConstantsFl                       Abs       2 #00000002 -   128   219   220
 ConstantsNib                      Abs       0 #00000000 -   219
 DOCOL                             Ext                   -   854   866   936
                                         983  1030  1077  1133
 DOCSTR                            Ext                   -   922   933   980
                                        1027  1074
 DOIDNT                            Ext                   -   870   877   884
                                         891   898   905   912   939   942   945
                                         948   958   965   971   986   989   992
                                         995  1005  1012  1018  1033  1036  1039
                                        1042  1052  1059  1065  1080  1083  1086
                                        1089  1099  1106  1112
 DOLIST                            Ext                   -   930   932   979
                                        1026  1073
 DOROMP                            Ext                   -   861   953  1000
                                        1047  1094  1125
 DateFmtBit                        Abs       1 #00000001 -   223
 DateFmtFl                         Abs      42 #0000002A -   163   222   223
 DateFmtNib                        Abs      10 #0000000A -   222
 DblSpaceBit                       Abs       0 #00000000 -   226
 DblSpaceFl                        Abs      37 #00000025 -   157   225   226
 DblSpaceNib                       Abs       9 #00000009 -   225
 DefSysF32-01                      Abs67178480 #04010FF0 -    52
 DefSysF64-33                      Abs       0 #00000000 -    51
 DefSysF65-96                      Abs1107296256 #42000000 -    53
 DefSysF97-128                     Abs       0 #00000000 -    54
 DelNRAlmBit                       Abs       3 #00000003 -   229
 DelNRAlmFl                        Abs      44 #0000002C -   165   228   229
 DelNRAlmNib                       Abs      10 #0000000A -   228
 DesasmWithAdrBit                  Abs       2 #00000002 -   748
 DesasmWithAdrFl                   Abs      71 #00000047 -   746   747   748
 DesasmWithAdrNib                  Abs      17 #00000011 -   747
 DigitalClockBit                   Abs       2 #00000002 -   736
 DigitalClockFl                    Abs      67 #00000043 -   734   735   736
 DigitalClockNib                   Abs      16 #00000010 -   735
 EQUAL                             Ext                   -  1131
 EVAL                              Ext                   -  1140
 ErableHeaderBit                   Abs       0 #00000000 -   814
 ErableHeaderFl                    Abs      93 #0000005D -   812   813   814
 ErableHeaderNib                   Abs      23 #00000017 -   813
 ErrorBeepBit                      Abs       3 #00000003 -   232
 ErrorBeepFl                       Abs      56 #00000038 -   176   231   232
 ErrorBeepNib                      Abs      13 #0000000D -   231
 ExactModeBit                      Abs       0 #00000000 -   839
 ExactModeFl                       Abs     105 #00000069 -   837   838   839
 ExactModeNib                      Abs      26 #0000001A -   838
 FastEViewBit                      Abs       2 #00000002 -   235
 FastEViewNib                      Abs      14 #0000000E -   234
 FastEqViewFl                      Abs      59 #0000003B -   179   234   235
 FilerConfirmBit                   Abs       0 #00000000 -   766
 FilerConfirmFl                    Abs      77 #0000004D -   764   765   766
 FilerConfirmNib                   Abs      19 #00000013 -   765
 FilerConfirmationBit              Abs       3 #00000003 -   763
 FilerConfirmationFl               Abs      76 #0000004C -   761   762   763
 FilerConfirmationNib              Abs      18 #00000012 -   762
 FullScreenEditBit                 Abs       0 #00000000 -   742
 FullScreenEditFl                  Abs      69 #00000045 -   740   741   742
 FullScreenEditNib                 Abs      17 #00000011 -   741
 FunctPlotBit                      Abs       1 #00000001 -   238
 FunctPlotFl                       Abs      30 #0000001E -   150   237   238
 FunctPlotNib                      Abs       7 #00000007 -   237
 GCursorBit                        Abs       3 #00000003 -   241
 GCursorFl                         Abs      32 #00000020 -   152   240   241
 GCursorNib                        Abs       7 #00000007 -   240
 GrobDisplayBit                    Abs       2 #00000002 -   784
 GrobDisplayFl                     Abs      83 #00000053 -   782   783   784
 GrobDisplayNib                    Abs      20 #00000014 -   783
 IODataFmtBit                      Abs       2 #00000002 -   253
 IODataFmtFl                       Abs      35 #00000023 -   155   252   253
 IODataFmtNib                      Abs       8 #00000008 -   252
 IODeviceBit                       Abs       0 #00000000 -   256
 IODeviceFl                        Abs      33 #00000021 -   153   255   256
 IODeviceNib                       Abs       8 #00000008 -   255
 IT                                Ext                   -  1132
 IndexWrapBit                      Abs       3 #00000003 -   244
 IndexWrapFl                       Abs      64 #00000040 -   184   243   244
 IndexWrapNib                      Abs      15 #0000000F -   243
 InfResActBit                      Abs       1 #00000001 -   247
 InfResActFl                       Abs      22 #00000016 -   144   246   247
 InfResActNib                      Abs       5 #00000005 -   246
 InfResultBit                      Abs       1 #00000001 -   250
 InfResultFl                       Abs      26 #0000001A -   148   249   250
 InfResultNib                      Abs       6 #00000006 -   249
 KernelParamBit                    Abs       1 #00000001 -   769
 KernelParamFl                     Abs      78 #0000004E -   767   768   769
 KernelParamNib                    Abs      19 #00000013 -   768
 KeystrokeBeepBit                  Abs       2 #00000002 -   760
 KeystrokeBeepFl                   Abs      75 #0000004B -   758   759   760
 KeystrokeBeepNib                  Abs      18 #00000012 -   759
 LastArgsBit                       Abs       2 #00000002 -   259
 LastArgsFl                        Abs      55 #00000037 -   175   258   259
 LastArgsNib                       Abs      13 #0000000D -   258
 MASDDecompilerBit                 Abs       1 #00000001 -   793
 MASDDecompilerFl                  Abs      86 #00000056 -   791   792   793
 MASDDecompilerNib                 Abs      21 #00000015 -   792
 MKSmallFontMenuBit                Abs       3 #00000003 -   787
 MKSmallFontMenuFl                 Abs      84 #00000054 -   785   786   787
 MKSmallFontMenuNib                Abs      20 #00000014 -   786
 MLMASDModeBit                     Abs       3 #00000003 -   811
 MLMASDModeFl                      Abs      92 #0000005C -   809   810   811
 MLMASDModeNib                     Abs      22 #00000016 -   810
 MenuOnBit                         Abs       3 #00000003 -   823
 MenuOnFl                          Abs      96 #00000060 -   821   822   823
 MenuOnNib                         Abs      23 #00000017 -   822
 MultiDispBit                      Abs       3 #00000003 -   265
 MultiDispFl                       Abs      52 #00000034 -   172   264   265
 MultiDispNib                      Abs      12 #0000000C -   264
 MultiLine2GROBBit                 Abs       1 #00000001 -   745
 MultiLine2GROBFl                  Abs      70 #00000046 -   743   744   745
 MultiLine2GROBNib                 Abs      17 #00000011 -   744
 MultiLineBit                      Abs       0 #00000000 -   730
 MultiLineFl                       Abs      65 #00000041 -   728   729   730
 MultiLineNib                      Abs      16 #00000010 -   729
 MultiLineStringsBit               Abs       1 #00000001 -   733
 MultiLineStringsFl                Abs      66 #00000042 -   731   732   733
 MultiLineStringsNib               Abs      16 #00000010 -   732
 NTHCOMPDROP                       Ext                   -  1137
 NoAutoCRBit                       Abs       1 #00000001 -   268
 NoAutoCRFl                        Abs      38 #00000026 -   158   267   268
 NoAutoCRNib                       Abs       9 #00000009 -   267
 NoIOStMsgBit                      Abs       2 #00000002 -   271
 NoIOStMsgNib                      Abs       9 #00000009 -   270
 NoIOStsMsgFl                      Abs      39 #00000027 -   159   270   271
 NoParseBit                        Abs       2 #00000002 -   274
 NoParseFl                         Abs      63 #0000003F -   183   273   274
 NoParseNib                        Abs      15 #0000000F -   273
 NumDigsBCt                        Abs       4 #00000004 -   168
 NumDigsBit1                       Abs       0 #00000000 -   277
 NumDigsFl1                        Abs      45 #0000002D -   167   276   277
 NumDigsNib                        Abs      11 #0000000B -   276
 NumDispBCt                        Abs       2 #00000002 -   170
 NumDispBit1                       Abs       0 #00000000 -   280
 NumDispFl1                        Abs      49 #00000031 -   169   279   280
 NumDispNib                        Abs      12 #0000000C -   279
 ONE                               Ext                   -  1122
 OverfActBit                       Abs       0 #00000000 -   283
 OverfActFl                        Abs      21 #00000015 -   143   282   283
 OverfActNib                       Abs       5 #00000005 -   282
 OverflowBit                       Abs       0 #00000000 -   286
 OverflowFl                        Abs      25 #00000019 -   147   285   286
 OverflowNib                       Abs       6 #00000006 -   285
 OverwriteBit                      Abs       3 #00000003 -   289
 OverwriteFl                       Abs      36 #00000024 -   156   288   289
 OverwriteNib                      Abs       8 #00000008 -   288
 PrettyPrintBit                    Abs       2 #00000002 -   772
 PrettyPrintFl                     Abs      79 #0000004F -   770   771   772
 PrettyPrintNib                    Abs      19 #00000013 -   771
 PrintDevBit                       Abs       1 #00000001 -   292
 PrintDevFl                        Abs      34 #00000022 -   154   291   292
 PrintDevNib                       Abs       8 #00000008 -   291
 REPEAT                            Ext                   -  1146
 RadixBit                          Abs       2 #00000002 -   295
 RadixFl                           Abs      51 #00000033 -   171   294   295
 RadixNib                          Abs      12 #0000000C -   294
 RecursiveEditBit                  Abs       3 #00000003 -   799
 RecursiveEditFl                   Abs      88 #00000058 -   797   798   799
 RecursiveEditNib                  Abs      21 #00000015 -   798
 RecursiveStackBit                 Abs       2 #00000002 -   796
 RecursiveStackFl                  Abs      87 #00000057 -   794   795   796
 RecursiveStackNib                 Abs      21 #00000015 -   795
 ResRepAlmBit                      Abs       2 #00000002 -   298
 ResRepAlmFl                       Abs      43 #0000002B -   164   297   298
 ResRepAlmNib                      Abs      10 #0000000A -   297
 ResultsBit                        Abs       2 #00000002 -   301
 ResultsFl                         Abs       3 #00000003 -   129   300   301
 ResultsNib                        Abs       0 #00000000 -   300
 RightJustifiedStackBit            Abs       1 #00000001 -   757
 RightJustifiedStackFl             Abs      74 #0000004A -   755   756   757
 RightJustifiedStackNib            Abs      18 #00000012 -   756
=RomId                             Abs     800 #00000320 -    18
 SEMI                              Ext                   -   976   977  1023
                                        1024  1070  1071  1117  1118  1120  1143
                                        1145  1148
 SEVENTEEN                         Ext                   -   927
 STO                               Ext                   -   873   880   887
                                         894   901   908   915   961   968   974
                                        1008  1015  1021  1055  1062  1068  1102
                                        1109  1115
 ShowPrecBit                       Abs       0 #00000000 -   304
 ShowPrecFl                        Abs      53 #00000035 -   173   303   304
 ShowPrecNib                       Abs      13 #0000000D -   303
 SmallFontChooseBit                Abs       1 #00000001 -   805
 SmallFontChooseFl                 Abs      90 #0000005A -   803   804   805
 SmallFontChooseNib                Abs      22 #00000016 -   804
 SmallFontEQWEditBit               Abs       1 #00000001 -   781
 SmallFontEQWEditFl                Abs      82 #00000052 -   779   780   781
 SmallFontEQWEditNib               Abs      20 #00000014 -   780
 SmallFontEQWGrobBit               Abs       0 #00000000 -   778
 SmallFontEQWGrobFl                Abs      81 #00000051 -   776   777   778
 SmallFontEQWGrobNib               Abs      20 #00000014 -   777
 SmallFontEQWStackBit              Abs       3 #00000003 -   775
 SmallFontEQWStackFl               Abs      80 #00000050 -   773   774   775
 SmallFontEQWStackNib              Abs      19 #00000013 -   774
 SolutionsBit                      Abs       0 #00000000 -   307
 SolutionsFl                       Abs       1 #00000001 -   127   306   307
 SolutionsNib                      Abs       0 #00000000 -   306
 SystemRPLStackBit                 Abs       0 #00000000 -   790
 SystemRPLStackFl                  Abs      85 #00000055 -   788   789   790
 SystemRPLStackNib                 Abs      21 #00000015 -   789
 TRUE                              Ext                   -  1130
 TWO                               Ext                   -  1136
 TriAlphaBit                       Abs       3 #00000003 -   310
 TriAlphaFl                        Abs      60 #0000003C -   180   309   310
 TriAlphaNib                       Abs      14 #0000000E -   309
 TriUserBit                        Abs       0 #00000000 -   313
 TriUserFl                         Abs      61 #0000003D -   181   312   313
 TriUserNib                        Abs      15 #0000000F -   312
 UnderfActBit                      Abs       3 #00000003 -   316
 UnderfActFl                       Abs      20 #00000014 -   142   315   316
 UnderfActNib                      Abs       4 #00000004 -   315
 UnderfNegBit                      Abs       2 #00000002 -   319
 UnderfNegFl                       Abs      23 #00000017 -   145   318   319
 UnderfNegNib                      Abs       5 #00000005 -   318
 UnderfPosBit                      Abs       3 #00000003 -   322
 UnderfPosFl                       Abs      24 #00000018 -   146   321   322
 UnderfPosNib                      Abs       5 #00000005 -   321
 UserKeysBit                       Abs       1 #00000001 -   325
 UserKeysFl                        Abs      62 #0000003E -   182   324   325
 UserKeysNib                       Abs      15 #0000000F -   324
 VerboseBit                        Abs       1 #00000001 -   262
 VerboseFl                         Abs      58 #0000003A -   178   261   262
 VerboseNib                        Abs      14 #0000000E -   261
 VerticalListBit                   Abs       0 #00000000 -   826
 VerticalListFl                    Abs      97 #00000061 -   824   825   826
 VerticalListNib                   Abs      24 #00000018 -   825
 VerticalVectorBit                 Abs       1 #00000001 -   829
 VerticalVectorFl                  Abs      98 #00000062 -   827   828   829
 VerticalVectorNib                 Abs      24 #00000018 -   828
 WHILE                             Ext                   -   865
 hasALIAS                          Abs       2 #00000002 -   338
 hasCOLCT                          Abs       2 #00000002 -   344
 hasDER                            Abs       8 #00000008 -   342
 hasEXPND                          Abs       1 #00000001 -   345
 hasFORM                           Abs       8 #00000008 -   348
 hasHELP                           Abs       4 #00000004 -   336
 hasINTG                           Abs       4 #00000004 -   349
 hasINV                            Abs       4 #00000004 -   343
 hasPDATA                          Abs       1 #00000001 -   339
 hasPROMPTM                        Abs       4 #00000004 -   337
 hasVUNS                           Abs       1 #00000001 -   351
 hasWHERE                          Abs       2 #00000002 -   350
 nonALG                            Abs       8 #00000008 -   335
 pdCM                              Abs       6 #00000006 -   360
 pdEQ                              Abs       7 #00000007 -   361
 pdEX                              Abs       0 #00000000 -   354
 pdLP                              Abs       4 #00000004 -   358
 pdOP                              Abs       1 #00000001 -   355
 pdOS0                             Abs       8 #00000008 -   362
 pdOS1                             Abs       9 #00000009 -   363
 pdOS2                             Abs      10 #0000000A -   364
 pdOS3                             Abs      11 #0000000B -   365
 pdOS4                             Abs      12 #0000000C -   366
 pdOS5                             Abs      13 #0000000D -   367
 pdOS6                             Abs      14 #0000000E -   368
 pdOS7                             Abs      15 #0000000F -   369
 pdQE                              Abs       2 #00000002 -   356
 pdQN                              Abs       3 #00000003 -   357
 pdRP                              Abs       5 #00000005 -   359
=xWNDTR                            Rel       6 #00000006 -   852
 ~Choose                           Ext                   -  1126
 ~WINDTRform                       Ext                   -   862
 ~xCAVE                            Ext                   -  1048
 ~xCGVE                            Ext                   -  1001
 ~xCWVE                            Ext                   -  1095
 ~xTHGS                            Ext                   -   954
 ~xWNDTR                           Ext                   -   851
Saturn Assembler                                       Thu Jun 18 17:14:43 2009
V3.0.9 (04/15/2007)   Statistics                         WNDTR.a        Page    3

Input Parameters

  Source file name is WNDTR.a

  Listing file name is WNDTR.l

  Object file name is WNDTR.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
