Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)                                      ASPDform.a     Page    1

    1             * File  ASPDform.s      1
    2             * RPL
    3             * File  ASPDform.s      2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDform.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5             **********************************************************************
    6             * NAME:          ASPDform
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.33
    9             * DATE:          13 June 2009
   10             * COMPATIBILITY: HP50
   11             *                HP48
   12             * DESCRIPTION:   Generates the input and output form for ASPD50
   13             *
   14             * File  ASPDform.s      12
   15             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD48\ASPD48.h
   16
   17             =RomId  EQU     #328
   18             * ROMID set to 328
   19
   20
   21
   22
   23
   24
   25
   26
   27
   28             *|| Resuming file ASPDform.s at line 12
   29             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.H
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
  850             *|| Resuming file ASPDform.s at line 13
  851             * ( Defined in GUI.H [NOT Header.H]
  852             * File  ASPDform.s      17
  853             * File  ASPDform.s      18
  854 00000       =ASPDform
  855             * File  ASPDform.s      19
  856 00000 00000         CON(5)  =DOCOL
  857             * Label definitions (X pos    Y pos)
  858             * File  ASPDform.s      21
  859 00005 00000         CON(5)  =DOCSTR
  860 0000A B0000         CON(5)  11
  861 0000F 6534A         NIBASC  \VC:\
            3
  862 00015 00000         CON(5)  =ONE
  863 0001A 00000         CON(5)  =TEN
  864             * File  ASPDform.s      22
  865 0001F 00000         CON(5)  =DOCSTR
  866 00024 B0000         CON(5)  11
  867 00029 0514A         NIBASC  \PA:\
            3
  868 0002F 00000         CON(5)  =ONE
  869 00034 00000         CON(5)  =NINETEEN
  870             * File  ASPDform.s      23
  871 00039 00000         CON(5)  =DOCSTR
  872 0003E 90000         CON(5)  9
  873 00043 D4A3          NIBASC  \M:\
  874 00047 00000         CON(5)  =FOURTHREE
  875 0004C 00000         CON(5)  =NINETEEN
  876             * File  ASPDform.s      24
  877 00051 00000         CON(5)  =DOCSTR
  878 00056 B0000         CON(5)  11
  879 0005B 4523A         NIBASC  \T2:\
            3
  880 00061 00000         CON(5)  =ONE
  881 00066 00000         CON(5)  =TWENTYEIGHT
  882             * File  ASPDform.s      25
  883 0006B 00000         CON(5)  =DOCSTR
  884 00070 B0000         CON(5)  11
  885 00075 4513A         NIBASC  \T1:\
            3
  886 0007B 00000         CON(5)  =FOURTHREE
  887 00080 00000         CON(5)  =TWENTYEIGHT
  888             * File  ASPDform.s      26
  889 00085 00000         CON(5)  =DOCSTR
  890 0008A B0000         CON(5)  11
  891 0008F 6513A         NIBASC  \V1:\
            3
  892 00095 00000         CON(5)  =ONE
  893 0009A 00000         CON(5)  =THIRTYSEVEN
  894             * File  ASPDform.s      27
  895
  896             * Field definitions
  897             * File  ASPDform.s      29
  898             * Field VC definition [#BINT0]
  899             * File  ASPDform.s      30
  900 0009F 00000         CON(5)  ='
  901 000A4 00000         CON(5)  =DOCOL
  902             * Field message handler
  903             * File  ASPDform.s      31
  904 000A9 00000         CON(5)  =TWENTYFIVE
  905 000AE 00000         CON(5)  =#=case
  906 000B3 00000         CON(5)  =DOCOL
  907             * Get internal field value
  908             * File  ASPDform.s      32
  909 000B8 00000         CON(5)  =DUPTYPEREAL?
  910 000BD 00000         CON(5)  =case
  911 000C2 00000         CON(5)  =DOCOL
  912             * REAL
  913             * File  ASPDform.s      33
  914 000C7 00000         CON(5)  =DOCSTR
  915 000CC D0000         CON(5)  13
  916 000D1 B6E6F         NIBASC  \knot\
            647
  917 000D9 00000         CON(5)  =umEND
  918 000DE 00000         CON(5)  =THREE
  919 000E3 00000         CON(5)  =EXTN
  920             * Add default knot units
  921             *                              NOVAL BINT2
  922             *                                                                                 FLASHPTR IfSetFieldValue      ( Reset M )
  923             *                       NOVAL BINT5
  924             *                                                                                 FLASHPTR IfSetFieldValue      ( and TAS )
  925             * File  ASPDform.s      38
  926 000E8 00000         CON(5)  =TRUE
  927             * Return external value
  928             * File  ASPDform.s      39
  929 000ED 00000         CON(5)  =SEMI
  930             *                            DUPTYPEEXT? case ::               ( UNIT )
  931             *                              DUP ID VC EQUALNOT IT ::        ( IF changed from initial value )
  932             *                                NOVAL BINT2
  933             *                                                                                   FLASHPTR IfSetFieldValue        ( Reset M )
  934             *                         NOVAL BINT5
  935             *                                                                                   FLASHPTR IfSetFieldValue        ( and TAS )
  936             *                              ;
  937             *                              TRUE                            ( Return external value )
  938             *                            ;
  939             * File  ASPDform.s      49
  940 000F2 00000         CON(5)  =TRUE
  941             * Message handled
  942             * File  ASPDform.s      50
  943 000F7 00000         CON(5)  =SEMI
  944             * File  ASPDform.s      51
  945 000FC 00000         CON(5)  =FALSE
  946             * Other messages not handled
  947             * File  ASPDform.s      52
  948 00101 00000         CON(5)  =SEMI
  949             *               BINT14  BINT8  BINT110  BINT8        ( Position & size )
  950             * File  ASPDform.s      54
  951 00106 00000         CON(5)  =FOURTEEN
  952 0010B 00000         CON(5)  =EIGHT
  953 00110 00000         CON(5)  =DOBINT
  954 00115 D6000         CON(5)  109
  955 0011A 00000         CON(5)  =NINE
  956             * Position & size
  957             * File  ASPDform.s      55
  958 0011F 00000         CON(5)  =ONE
  959             * Field type: TEXT
  960             * File  ASPDform.s      56
  961 00124 00000         CON(5)  =DOLIST
  962 00129 00000         CON(5)  =ZERO
  963 0012E 00000         CON(5)  =THIRTEEN
  964 00133 00000         CON(5)  =SEMI
  965             * Allowed type: REAL, UNIT
  966             * File  ASPDform.s      57
  967 00138 00000         CON(5)  =TWO
  968             * Decompile with stack appearance
  969             * File  ASPDform.s      58
  970 0013D 00000         CON(5)  =DOCSTR
  971 00142 F3000         CON(5)  63
  972 00147 3414C         NIBASC  \CALIBRATED AIR SPEED\
            49424
            251445544402149425023505545444

  973 0016F 02823         NIBASC  \ (#\
            2
  974 00175 D8            CON(2)  #8D
  975 00177 B6E6F         NIBASC  \knot)\
            64792
  976             * Help string
  977             * File  ASPDform.s      59
  978 00181 00000         CON(5)  =MINUSONE
  979             * ChooseData N/A
  980             * File  ASPDform.s      60
  981 00186 00000         CON(5)  =MINUSONE
  982             * ChooseDecompile
  983             * File  ASPDform.s      61
  984 0018B 00000         CON(5)  =MINUSONE
  985             * Reset value
  986             * File  ASPDform.s      62
  987 00190 00000         CON(5)  =DOIDNT
  988 00195 20            CON(2)  2
  989 00197 6534          NIBASC  \VC\
  990             * Initial value
  991             * File  ASPDform.s      63
  992
  993             * File  ASPDform.s      64
  994             * Field PA definition [#BINT1]
  995             * File  ASPDform.s      65
  996 0019B 00000         CON(5)  ='
  997 001A0 00000         CON(5)  =DOCOL
  998             * Field message handler
  999             * File  ASPDform.s      66
 1000 001A5 00000         CON(5)  =TWENTYFIVE
 1001 001AA 00000         CON(5)  =#=case
 1002 001AF 00000         CON(5)  =DOCOL
 1003             * Get internal field value
 1004             * File  ASPDform.s      67
 1005 001B4 00000         CON(5)  =DUPTYPEREAL?
 1006 001B9 00000         CON(5)  =case
 1007 001BE 00000         CON(5)  =DOCOL
 1008             * REAL
 1009             * File  ASPDform.s      68
 1010 001C3 00000         CON(5)  =DOCSTR
 1011 001C8 90000         CON(5)  9
 1012 001CD 6647          NIBASC  \ft\
 1013 001D1 00000         CON(5)  =umEND
 1014 001D6 00000         CON(5)  =THREE
 1015 001DB 00000         CON(5)  =EXTN
 1016             * Add default feet units
 1017             * File  ASPDform.s      69
 1018 001E0 00000         CON(5)  =DUP
 1019 001E5 00000         CON(5)  =DOEXT
 1020 001EA 00000         CON(5)  =DOREAL
 1021 001EF 400           NIBHEX  400
 1022 001F2 00000         NIBHEX  000000000002
            00000
            02
 1023 001FE 0             NIBHEX  0
 1024 001FF 00000         CON(5)  =DOCSTR
 1025 00204 70000         CON(5)  7
 1026 00209 D6            NIBASC  \m\
 1027 0020B 00000         CON(5)  =umEND
 1028 00210 00000         CON(5)  =SEMI
 1029             * IF PA is > 20 km
 1030             * File  ASPDform.s      70
 1031 00215 00000         CON(5)  =UM>?
 1032 0021A 00000         CON(5)  =%0<>
 1033 0021F 00000         CON(5)  =IT
 1034 00224 00000         CON(5)  =DOCOL
 1035             * File  ASPDform.s      71
 1036 00229 00000         CON(5)  =DROP
 1037             * DROP value
 1038             * File  ASPDform.s      72
 1039 0022E 00000         CON(5)  =ERRBEEP
 1040             * Error beep and display flashwarning message
 1041             * Message box parameters
 1042             * File  ASPDform.s      74
 1043 00233 00000         CON(5)  =DOCSTR
 1044 00238 F2000         CON(5)  47
 1045 0023D 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

 1046 00265 D6            NIBASC  \m\
 1047             * message$
 1048             * File  ASPDform.s      75
 1049 00267 00000         CON(5)  =TWELVE
 1050             * #maxwidth
 1051             * File  ASPDform.s      76
 1052 0026C 00000         CON(5)  =TEN
 1053             * #minwidth
 1054             * File  ASPDform.s      77
 1055 00271 00000         CON(5)  =DOROMP
 1056 00276 00000         CON(6)  =~grobAlertIcon
            0
 1057             * grob
 1058             * File  ASPDform.s      78
 1059 0027C 00000         CON(5)  =DOROMP
 1060 00281 00000         CON(6)  =~MsgBoxMenu
            0
 1061             * menuobject
 1062             * File  ASPDform.s      79
 1063 00287 00000         CON(5)  =DOROMP
 1064 0028C 00000         CON(6)  =~DoMsgBox
            0
 1065 00292 00000         CON(5)  =DROP
 1066             * Draw the message box, DROP FLAG
 1067             * File  ASPDform.s      80
 1068 00297 00000         CON(5)  =DOIDNT
 1069 0029C 20            CON(2)  2
 1070 0029E 0514          NIBASC  \PA\
 1071             * Keep original field value
 1072             *                                                                                   "ERROR: Alt.    > 20 km"    ( Display error message and error beep )
 1073             *                                                                                     FlashWarning
 1074             *                                                                                   NOVAL                       ( Set value to NOVAL )
 1075             *                                                                                   BINT0 FLASHPTR IfSetField   ( Keep focus )
 1076             * File  ASPDform.s      85
 1077 002A2 00000         CON(5)  =SEMI
 1078             *                                                                               ::                              ( ELSE )
 1079             *                         NOVAL BINT2
 1080             *                                                                                   FLASHPTR IfSetFieldValue      ( Reset M )
 1081             *                         NOVAL BINT5
 1082             *                                                                                   FLASHPTR IfSetFieldValue      ( and TAS )
 1083             *                                                                                 BINT2 FLASHPTR IfSetField       ( Set focus on T2 field )
 1084             *                                                                               ;
 1085             * File  ASPDform.s      93
 1086 002A7 00000         CON(5)  =TRUE
 1087             * Return external value
 1088             * File  ASPDform.s      94
 1089 002AC 00000         CON(5)  =SEMI
 1090             * File  ASPDform.s      95
 1091 002B1 00000         CON(5)  =DUPTYPEEXT?
 1092 002B6 00000         CON(5)  =case
 1093 002BB 00000         CON(5)  =DOCOL
 1094             * UNIT
 1095             * File  ASPDform.s      96
 1096 002C0 00000         CON(5)  =DUP
 1097 002C5 00000         CON(5)  =DOIDNT
 1098 002CA 20            CON(2)  2
 1099 002CC 0514          NIBASC  \PA\
 1100 002D0 00000         CON(5)  =EQUALNOT
 1101 002D5 00000         CON(5)  =IT
 1102 002DA 00000         CON(5)  =DOCOL
 1103             * IF changed from initial value
 1104             * File  ASPDform.s      97
 1105 002DF 00000         CON(5)  =DUP
 1106 002E4 00000         CON(5)  =DOEXT
 1107 002E9 00000         CON(5)  =DOREAL
 1108 002EE 400           NIBHEX  400
 1109 002F1 00000         NIBHEX  000000000002
            00000
            02
 1110 002FD 0             NIBHEX  0
 1111 002FE 00000         CON(5)  =DOCSTR
 1112 00303 70000         CON(5)  7
 1113 00308 D6            NIBASC  \m\
 1114 0030A 00000         CON(5)  =umEND
 1115 0030F 00000         CON(5)  =SEMI
 1116             * IF PA is > 20 km
 1117             * File  ASPDform.s      98
 1118 00314 00000         CON(5)  =UM>?
 1119 00319 00000         CON(5)  =%0<>
 1120 0031E 00000         CON(5)  =IT
 1121 00323 00000         CON(5)  =DOCOL
 1122             * File  ASPDform.s      99
 1123 00328 00000         CON(5)  =DROP
 1124             * DROP value
 1125             * File  ASPDform.s      100
 1126 0032D 00000         CON(5)  =ERRBEEP
 1127             * Error beep and display flashwarning message
 1128             * Message box parameters
 1129             * File  ASPDform.s      102
 1130 00332 00000         CON(5)  =DOCSTR
 1131 00337 F2000         CON(5)  47
 1132 0033C 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

 1133 00364 D6            NIBASC  \m\
 1134             * message$
 1135             * File  ASPDform.s      103
 1136 00366 00000         CON(5)  =TWELVE
 1137             * #maxwidth
 1138             * File  ASPDform.s      104
 1139 0036B 00000         CON(5)  =TEN
 1140             * #minwidth
 1141             * File  ASPDform.s      105
 1142 00370 00000         CON(5)  =DOROMP
 1143 00375 00000         CON(6)  =~grobAlertIcon
            0
 1144             * grob
 1145             * File  ASPDform.s      106
 1146 0037B 00000         CON(5)  =DOROMP
 1147 00380 00000         CON(6)  =~MsgBoxMenu
            0
 1148             * menuobject
 1149             * File  ASPDform.s      107
 1150 00386 00000         CON(5)  =DOROMP
 1151 0038B 00000         CON(6)  =~DoMsgBox
            0
 1152 00391 00000         CON(5)  =DROP
 1153             * Draw the message box, DROP FLAG
 1154             * File  ASPDform.s      108
 1155 00396 00000         CON(5)  =DOIDNT
 1156 0039B 20            CON(2)  2
 1157 0039D 0514          NIBASC  \PA\
 1158             * Keep original field value
 1159             *                             "ERROR: Alt.    > 20 km"    ( Display error message and error beep )
 1160             *                                                                                       FlashWarning
 1161             *                             NOVAL                       ( Set value to NOVAL )
 1162             *                             BINT0 FLASHPTR IfSetField   ( Keep focus )
 1163             * File  ASPDform.s      113
 1164 003A1 00000         CON(5)  =SEMI
 1165             *                         ::                            ( ELSE )
 1166             *                           NOVAL BINT2
 1167             *                                                                                     FLASHPTR IfSetFieldValue      ( Reset M )
 1168             *                           NOVAL BINT5
 1169             *                                                                                     FLASHPTR IfSetFieldValue      ( and TAS )
 1170             *                                                                                   BINT2 FLASHPTR IfSetField       ( Set focus on T2 field )
 1171             *                                                                                 ;
 1172             * File  ASPDform.s      121
 1173 003A6 00000         CON(5)  =SEMI
 1174             * File  ASPDform.s      122
 1175 003AB 00000         CON(5)  =TRUE
 1176             * Return external value
 1177             * File  ASPDform.s      123
 1178 003B0 00000         CON(5)  =SEMI
 1179             * File  ASPDform.s      124
 1180 003B5 00000         CON(5)  =TRUE
 1181             * Message was handled
 1182             * File  ASPDform.s      125
 1183 003BA 00000         CON(5)  =SEMI
 1184             * File  ASPDform.s      126
 1185 003BF 00000         CON(5)  =FALSE
 1186             * No other messagges handled
 1187             * File  ASPDform.s      127
 1188 003C4 00000         CON(5)  =SEMI
 1189             *               BINT14  BINT17  BINT45  BINT8     ( Position & size )
 1190             * File  ASPDform.s      129
 1191 003C9 00000         CON(5)  =FOURTEEN
 1192 003CE 00000         CON(5)  =SEVENTEEN
 1193 003D3 00000         CON(5)  =FORTYNINE
 1194 003D8 00000         CON(5)  =NINE
 1195             * Position & size
 1196             * File  ASPDform.s      130
 1197 003DD 00000         CON(5)  =ONE
 1198             * Field type: TEXT
 1199             * File  ASPDform.s      131
 1200 003E2 00000         CON(5)  =DOLIST
 1201 003E7 00000         CON(5)  =ZERO
 1202 003EC 00000         CON(5)  =THIRTEEN
 1203 003F1 00000         CON(5)  =SEMI
 1204             * Allowed type: REAL, UNIT
 1205             * File  ASPDform.s      132
 1206 003F6 00000         CON(5)  =TWO
 1207             * Decompile with stack appearance
 1208             * File  ASPDform.s      133
 1209 003FB 00000         CON(5)  =DOCSTR
 1210 00400 53000         CON(5)  53
 1211 00405 05255         NIBASC  \PRESSURE ALTITUDE (#\
            43535
            5525540214C4459445554454028232

 1212 0042D D8            CON(2)  #8D
 1213 0042F 66479         NIBASC  \ft)\
            2
 1214             * Help string
 1215             * File  ASPDform.s      134
 1216 00435 00000         CON(5)  =MINUSONE
 1217             * ChooseData N/A
 1218             * File  ASPDform.s      135
 1219 0043A 00000         CON(5)  =MINUSONE
 1220             * ChooseDecompile
 1221             * File  ASPDform.s      136
 1222 0043F 00000         CON(5)  =MINUSONE
 1223             * Reset value
 1224             * File  ASPDform.s      137
 1225 00444 00000         CON(5)  =DOIDNT
 1226 00449 20            CON(2)  2
 1227 0044B 0514          NIBASC  \PA\
 1228             * Initial value
 1229             * File  ASPDform.s      138
 1230
 1231             * File  ASPDform.s      139
 1232             * Field M definition [#BINT2]
 1233             * File  ASPDform.s      140
 1234 0044F 00000         CON(5)  ='
 1235 00454 00000         CON(5)  =DOROMP
 1236 00459 00000         CON(6)  =~FLD_M_MSGHNDLR
            0
 1237             *               'DROPFALSE
 1238             *               ' ::                                    ( Field message handler )
 1239             **                  IfMsgGetFieldValue OVER#=case ::    ( Get internal field value )
 1240             **                    DROP
 1241             **                                                              DUPTYPEREAL? case ::                  ( REAL )
 1242             **                      DUP ID M EQUALNOT IT ::             ( IF changed from initial value )
 1243             **                        NOVAL BINT0
 1244             **                                                                    FLASHPTR IfSetFieldValue        ( Reset VC, )
 1245             **                        NOVAL BINT1
 1246             **                                                                    FLASHPTR IfSetFieldValue        ( PA and )
 1247             **                        NOVAL BINT5
 1248             **                                                                    FLASHPTR IfSetFieldValue        ( TAS fields with NOVAL )
 1249             **                                                                              ;
 1250             **                      TRUE                            ( Return external value )
 1251             **                    ;
 1252             **                                                              TRUE                              ( Message was handled )
 1253             **                  ;
 1254             *                   TWENTYFOUR #=case ::                ( Get internal field value )
 1255             **                    DROP
 1256             *              DUPTYPEREAL? case ::
 1257             *                       DUP %1 %> IT ::                                  ( IF M > 1 )
 1258             **                      BINT0 FLASHPTR IfGetFieldValue NOVAL EQUALNOT  ( and IF VC and PA )
 1259             **                      BINT1 FLASHPTR IfGetFieldValue NOVAL EQUALNOT  ( are not NOVAL )
 1260             **                                                                              AND IT ::
 1261             **                        " MACH > 1        TAS    INACCURATE"         ( Display flash warning )
 1262             **                        FlashWarning
 1263             **                      ;
 1264             *                                                               ERRBEEP                     ( Error beep and display flashwarning message )
 1265             * Message box parameters
 1266             *                                                               " MACH > 1        TAS    INACCURATE"     ( message$ )
 1267             *                                                               TWELVE                      ( #maxwidth )
 1268             *                                                               TEN                         ( #minwidth )
 1269             *                                                               grobAlertIcon               ( grob )
 1270             *                                                               MsgBoxMenu                  ( menuobject )
 1271             *                                                               DoMsgBox DROP               ( Draw the message box, DROP FLAG )
 1272             *                                                                 ;                                 ( Return internal value )
 1273             *                                                                 TRUE
 1274             *                                                               ;
 1275             *                     TRUE                              ( Message was handled )
 1276             *                   ;
 1277             **          DROPFALSE                            ( No other messages handled )
 1278             *           FALSE
 1279             *                 ;
 1280             *               BINT75  BINT17  BINT49  BINT8     ( Position & size )
 1281             * File  ASPDform.s      185
 1282 0045F 00000         CON(5)  =DOBINT
 1283 00464 C4000         CON(5)  76
 1284 00469 00000         CON(5)  =SEVENTEEN
 1285 0046E 00000         CON(5)  =FORTYNINE
 1286 00473 00000         CON(5)  =NINE
 1287             * File  ASPDform.s      186
 1288 00478 00000         CON(5)  =ONE
 1289             * Field type: TEXT
 1290             * File  ASPDform.s      187
 1291 0047D 00000         CON(5)  =DOLIST
 1292 00482 00000         CON(5)  =ZERO
 1293 00487 00000         CON(5)  =SEMI
 1294             * Allowed type: REAL
 1295             * File  ASPDform.s      188
 1296 0048C 00000         CON(5)  =TWO
 1297             * Decompile with stack appearance
 1298             * File  ASPDform.s      189
 1299 00491 00000         CON(5)  =DOCSTR
 1300 00496 B1000         CON(5)  27
 1301 0049B D4143         NIBASC  \MACH NUMBER\
            48402
            E455D4245425

 1302             * Help string
 1303             * File  ASPDform.s      190
 1304 004B1 00000         CON(5)  =MINUSONE
 1305             * ChooseData N/A
 1306             * File  ASPDform.s      191
 1307 004B6 00000         CON(5)  =MINUSONE
 1308             * ChooseDecompile
 1309             * File  ASPDform.s      192
 1310 004BB 00000         CON(5)  =MINUSONE
 1311             * Reset value
 1312             * File  ASPDform.s      193
 1313 004C0 00000         CON(5)  =DOIDNT
 1314 004C5 10            CON(2)  1
 1315 004C7 D4            NIBASC  \M\
 1316             * Initial value
 1317             * File  ASPDform.s      194
 1318
 1319             * File  ASPDform.s      195
 1320             * Field T2 definition [#BINT3]
 1321             * File  ASPDform.s      196
 1322 004C9 00000         CON(5)  ='
 1323 004CE 00000         CON(5)  =DOCOL
 1324             * Field message handler
 1325             * File  ASPDform.s      197
 1326 004D3 00000         CON(5)  =TWENTYFIVE
 1327 004D8 00000         CON(5)  =#=case
 1328 004DD 00000         CON(5)  =DOCOL
 1329             * Get internal field value
 1330             * File  ASPDform.s      198
 1331 004E2 00000         CON(5)  =DUPTYPEREAL?
 1332 004E7 00000         CON(5)  =case
 1333 004EC 00000         CON(5)  =DOCOL
 1334             * REAL
 1335             * File  ASPDform.s      199
 1336 004F1 00000         CON(5)  =DOCSTR
 1337 004F6 90000         CON(5)  9
 1338 004FB 0B            CON(2)  #B0
 1339 004FD 34            NIBASC  \C\
 1340 004FF 00000         CON(5)  =umEND
 1341 00504 00000         CON(5)  =THREE
 1342 00509 00000         CON(5)  =EXTN
 1343             * Add default deg C units
 1344             *                       NOVAL BINT4
 1345             *                                                                                 FLASHPTR IfSetFieldValue      ( Reset T1 field )
 1346             *                                                                               NOVAL BINT5
 1347             *                                                                                 FLASHPTR IfSetFieldValue      ( Reset TAS field )
 1348             * File  ASPDform.s      204
 1349 0050E 00000         CON(5)  =TRUE
 1350             * Return external value
 1351             * File  ASPDform.s      205
 1352 00513 00000         CON(5)  =SEMI
 1353             *                     DUPTYPEEXT? case ::               ( UNIT )
 1354             *                       DUP ID T2 EQUALNOT IT ::        ( IF changed from initial value )
 1355             *                         NOVAL BINT4
 1356             *                                                                                   FLASHPTR IfSetFieldValue      ( Reset T1 field )
 1357             *                                                                                 NOVAL BINT5
 1358             *                                                                                   FLASHPTR IfSetFieldValue      ( Reset TAS field )
 1359             *                       ;
 1360             *                       TRUE                            ( Return external value )
 1361             *                     ;
 1362             * File  ASPDform.s      215
 1363 00518 00000         CON(5)  =TRUE
 1364             * Message was handled
 1365             * File  ASPDform.s      216
 1366 0051D 00000         CON(5)  =SEMI
 1367             * File  ASPDform.s      217
 1368 00522 00000         CON(5)  =FALSE
 1369             * Other messages not handled
 1370             * File  ASPDform.s      218
 1371 00527 00000         CON(5)  =SEMI
 1372             *               BINT14  BINT26  BINT45  BINT8         ( Position & size )
 1373             * File  ASPDform.s      220
 1374 0052C 00000         CON(5)  =FOURTEEN
 1375 00531 00000         CON(5)  =TWENTYSIX
 1376 00536 00000         CON(5)  =FORTYNINE
 1377 0053B 00000         CON(5)  =NINE
 1378             * Position & size
 1379             * File  ASPDform.s      221
 1380 00540 00000         CON(5)  =ONE
 1381             * Field type: TEXT
 1382             * File  ASPDform.s      222
 1383 00545 00000         CON(5)  =DOLIST
 1384 0054A 00000         CON(5)  =ZERO
 1385 0054F 00000         CON(5)  =THIRTEEN
 1386 00554 00000         CON(5)  =SEMI
 1387             * Allowed type: REAL, UNIT
 1388             * File  ASPDform.s      223
 1389 00559 00000         CON(5)  =TWO
 1390             * Decompile with stack appearance
 1391             * File  ASPDform.s      224
 1392 0055E 00000         CON(5)  =DOCSTR
 1393 00563 94000         CON(5)  73
 1394 00568 45F44         NIBASC  \TOTAL (INDICATED) AI\
            514C4
            028294E44494341445544492021494

 1395 00590 25024         NIBASC  \R TEMP. (#\
            554D4
            05E2028232

 1396 005A4 D8            CON(2)  #8D
 1397 005A6 0B            CON(2)  #B0
 1398 005A8 3492          NIBASC  \C)\
 1399             * Help string
 1400             * File  ASPDform.s      225
 1401 005AC 00000         CON(5)  =MINUSONE
 1402             * ChooseData N/A
 1403             * File  ASPDform.s      226
 1404 005B1 00000         CON(5)  =MINUSONE
 1405             * ChooseDecompile
 1406             * File  ASPDform.s      227
 1407 005B6 00000         CON(5)  =MINUSONE
 1408             * Reset value
 1409             * File  ASPDform.s      228
 1410 005BB 00000         CON(5)  =DOIDNT
 1411 005C0 20            CON(2)  2
 1412 005C2 4523          NIBASC  \T2\
 1413             * Initial value
 1414             * File  ASPDform.s      229
 1415
 1416             * File  ASPDform.s      230
 1417             * Field T1 definition [#BINT4]
 1418             * File  ASPDform.s      231
 1419 005C6 00000         CON(5)  ='
 1420 005CB 00000         CON(5)  =DOCOL
 1421             * Field message handler
 1422             * File  ASPDform.s      232
 1423 005D0 00000         CON(5)  =TWENTYFIVE
 1424 005D5 00000         CON(5)  =#=case
 1425 005DA 00000         CON(5)  =DOCOL
 1426             * Get internal field value
 1427             * File  ASPDform.s      233
 1428 005DF 00000         CON(5)  =DUPTYPEREAL?
 1429 005E4 00000         CON(5)  =case
 1430 005E9 00000         CON(5)  =DOCOL
 1431             * REAL
 1432             * File  ASPDform.s      234
 1433 005EE 00000         CON(5)  =DOCSTR
 1434 005F3 90000         CON(5)  9
 1435 005F8 0B            CON(2)  #B0
 1436 005FA 34            NIBASC  \C\
 1437 005FC 00000         CON(5)  =umEND
 1438 00601 00000         CON(5)  =THREE
 1439 00606 00000         CON(5)  =EXTN
 1440             * Add default feet units
 1441             *                       NOVAL BINT3
 1442             *                                                                                 FLASHPTR IfSetFieldValue      ( Reset T2 field )
 1443             *                                                                               NOVAL BINT5
 1444             *                                                                                 FLASHPTR IfSetFieldValue      ( Reset TAS field )
 1445             *                                 BINT5 FLASHPTR IfSetField       ( Set focus to VC )
 1446             * File  ASPDform.s      240
 1447 0060B 00000         CON(5)  =TRUE
 1448             * Return external value
 1449             * File  ASPDform.s      241
 1450 00610 00000         CON(5)  =SEMI
 1451             *                     DUPTYPEEXT? case ::               ( UNIT )
 1452             *                       DUP ID T1 EQUALNOT IT ::        ( IF changed from initial value )
 1453             *                         NOVAL BINT3
 1454             *                                                                                   FLASHPTR IfSetFieldValue      ( Reset T2 field )
 1455             *                                                                                 NOVAL BINT5
 1456             *                                                                                   FLASHPTR IfSetFieldValue      ( Reset TAS field )
 1457             *                                   BINT5 FLASHPTR IfSetField       ( Set focus to VC )
 1458             *                       ;
 1459             *                       TRUE                            ( Return external value )
 1460             *                     ;
 1461             * File  ASPDform.s      252
 1462 00615 00000         CON(5)  =TRUE
 1463             * Message was handled
 1464             * File  ASPDform.s      253
 1465 0061A 00000         CON(5)  =SEMI
 1466             * File  ASPDform.s      254
 1467 0061F 00000         CON(5)  =FALSE
 1468             * Other messages not handled
 1469             * File  ASPDform.s      255
 1470 00624 00000         CON(5)  =SEMI
 1471             *               BINT79  BINT26  BINT45  BINT8      ( Position & size )
 1472             * File  ASPDform.s      257
 1473 00629 00000         CON(5)  =SEVENTYNINE
 1474 0062E 00000         CON(5)  =TWENTYSIX
 1475 00633 00000         CON(5)  =FORTYNINE
 1476 00638 00000         CON(5)  =NINE
 1477             * Position & size
 1478             * File  ASPDform.s      258
 1479 0063D 00000         CON(5)  =ONE
 1480             * Field type: TEXT
 1481             * File  ASPDform.s      259
 1482 00642 00000         CON(5)  =DOLIST
 1483 00647 00000         CON(5)  =ZERO
 1484 0064C 00000         CON(5)  =THIRTEEN
 1485 00651 00000         CON(5)  =SEMI
 1486             * Allowed type: REAL, UNIT
 1487             * File  ASPDform.s      260
 1488 00656 00000         CON(5)  =TWO
 1489             * Decompile with stack appearance
 1490             * File  ASPDform.s      261
 1491 0065B 00000         CON(5)  =DOCSTR
 1492 00660 14000         CON(5)  65
 1493 00665 35451         NIBASC  \STATIC (TRUE) AIR TE\
            44594
            340282452555549202149425024554

 1494 0068D D405E         NIBASC  \MP. (#\
            20282
            32
 1495 00699 D8            CON(2)  #8D
 1496 0069B 0B            CON(2)  #B0
 1497 0069D 3492          NIBASC  \C)\
 1498             * Help string
 1499             * File  ASPDform.s      262
 1500 006A1 00000         CON(5)  =MINUSONE
 1501             * ChooseData N/A
 1502             * File  ASPDform.s      263
 1503 006A6 00000         CON(5)  =MINUSONE
 1504             * ChooseDecompile
 1505             * File  ASPDform.s      264
 1506 006AB 00000         CON(5)  =MINUSONE
 1507             * Reset value
 1508             * File  ASPDform.s      265
 1509 006B0 00000         CON(5)  =DOIDNT
 1510 006B5 20            CON(2)  2
 1511 006B7 4513          NIBASC  \T1\
 1512             * Initial value
 1513             * File  ASPDform.s      266
 1514
 1515             * File  ASPDform.s      267
 1516             * Field V1 definition [#BINT5]
 1517             * File  ASPDform.s      268
 1518 006BB 00000         CON(5)  ='DROPFALSE
 1519             *               BINT14  BINT35  BINT110  BINT8    ( Position & size )
 1520             * File  ASPDform.s      270
 1521 006C0 00000         CON(5)  =FOURTEEN
 1522 006C5 00000         CON(5)  =THIRTYFIVE
 1523 006CA 00000         CON(5)  =DOBINT
 1524 006CF D6000         CON(5)  109
 1525 006D4 00000         CON(5)  =NINE
 1526             * Position & size
 1527             * File  ASPDform.s      271
 1528 006D9 00000         CON(5)  =ONE
 1529             * Field type: TEXT
 1530             * File  ASPDform.s      272
 1531 006DE 00000         CON(5)  =DOLIST
 1532 006E3 00000         CON(5)  =ZERO
 1533 006E8 00000         CON(5)  =THIRTEEN
 1534 006ED 00000         CON(5)  =SEMI
 1535             * Allowed type: REAL, UNIT
 1536             * File  ASPDform.s      273
 1537 006F2 00000         CON(5)  =TWO
 1538             * Decompile with stack appearance
 1539             * File  ASPDform.s      274
 1540 006F7 00000         CON(5)  =DOCSTR
 1541 006FC 33000         CON(5)  51
 1542 00701 45255         NIBASC  \TRUE AIR SPEED (OUTP\
            55402
            1494250235055454440282F4554505

 1543 00729 55459         NIBASC  \UT)\
            2
 1544             * Help string
 1545             * File  ASPDform.s      275
 1546 0072F 00000         CON(5)  =MINUSONE
 1547             * ChooseData N/A
 1548             * File  ASPDform.s      276
 1549 00734 00000         CON(5)  =MINUSONE
 1550             * ChooseDecompile
 1551             * File  ASPDform.s      277
 1552 00739 00000         CON(5)  =MINUSONE
 1553             * Reset value
 1554             * File  ASPDform.s      278
 1555 0073E 00000         CON(5)  =DOIDNT
 1556 00743 20            CON(2)  2
 1557 00745 6513          NIBASC  \V1\
 1558             * Initial value
 1559             * File  ASPDform.s      279
 1560
 1561             * File  ASPDform.s      280
 1562 00749 00000         CON(5)  =SIX
 1563 0074E 00000         CON(5)  =SIX
 1564             * Label and field count
 1565             * File  ASPDform.s      281
 1566
 1567             * File  ASPDform.s      282
 1568 00753 00000         CON(5)  ='DROPFALSE
 1569             * Inform Box message handler
 1570             * File  ASPDform.s      283
 1571 00758 00000         CON(5)  =DOCSTR
 1572 0075D 51000         CON(5)  21
 1573 00762 14942         NIBASC  \AIRSPEED\
            53505
            545444
 1574             * Title
 1575             * File  ASPDform.s      284
 1576 00772 00000         CON(5)  =DoInputForm
 1577             * Create and run the input form
 1578             * File  ASPDform.s      285
 1579 00777 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       ASPDform.a     Page    2

 #=case                            Ext                   -   905  1001  1327
                                        1424
 %0<>                              Ext                   -  1032  1119
 '                                 Ext                   -   900   996  1234
                                        1322  1419
 'DROPFALSE                        Ext                   -  1518  1568
=ASPDform                          Rel       0 #00000000 -   854
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
 DOBINT                            Ext                   -   953  1282  1523
 DOCOL                             Ext                   -   856   901   906
                                         911   997  1002  1007  1034  1093  1102
                                        1121  1323  1328  1333  1420  1425  1430
 DOCSTR                            Ext                   -   859   865   871
                                         877   883   889   914   970  1010  1024
                                        1043  1111  1130  1209  1299  1336  1392
                                        1433  1491  1540  1571
 DOEXT                             Ext                   -  1019  1106
 DOIDNT                            Ext                   -   987  1068  1097
                                        1155  1225  1313  1410  1509  1555
 DOLIST                            Ext                   -   961  1200  1291
                                        1383  1482  1531
 DOREAL                            Ext                   -  1020  1107
 DOROMP                            Ext                   -  1055  1059  1063
                                        1142  1146  1150  1235
 DROP                              Ext                   -  1036  1065  1123
                                        1152
 DUP                               Ext                   -  1018  1096  1105
 DUPTYPEEXT?                       Ext                   -  1091
 DUPTYPEREAL?                      Ext                   -   909  1005  1331
                                        1428
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
 DoInputForm                       Ext                   -  1576
 EIGHT                             Ext                   -   952
 EQUALNOT                          Ext                   -  1100
 ERRBEEP                           Ext                   -  1039  1126
 EXTN                              Ext                   -   919  1015  1342
                                        1439
 ErableHeaderBit                   Abs       0 #00000000 -   814
 ErableHeaderFl                    Abs      93 #0000005D -   812   813   814
 ErableHeaderNib                   Abs      23 #00000017 -   813
 ErrorBeepBit                      Abs       3 #00000003 -   232
 ErrorBeepFl                       Abs      56 #00000038 -   176   231   232
 ErrorBeepNib                      Abs      13 #0000000D -   231
 ExactModeBit                      Abs       0 #00000000 -   839
 ExactModeFl                       Abs     105 #00000069 -   837   838   839
 ExactModeNib                      Abs      26 #0000001A -   838
 FALSE                             Ext                   -   945  1185  1368
                                        1467
 FORTYNINE                         Ext                   -  1193  1285  1376
                                        1475
 FOURTEEN                          Ext                   -   951  1191  1374
                                        1521
 FOURTHREE                         Ext                   -   874   886
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
 IT                                Ext                   -  1033  1101  1120
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
 MINUSONE                          Ext                   -   978   981   984
                                        1216  1219  1222  1304  1307  1310  1401
                                        1404  1407  1500  1503  1506  1546  1549
                                        1552
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
 NINE                              Ext                   -   955  1194  1286
                                        1377  1476  1525
 NINETEEN                          Ext                   -   869   875
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
 ONE                               Ext                   -   862   868   880
                                         892   958  1197  1288  1380  1479  1528
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
=RomId                             Abs     808 #00000328 -    17
 SEMI                              Ext                   -   929   943   948
                                         964  1028  1077  1089  1115  1164  1173
                                        1178  1183  1188  1203  1293  1352  1366
                                        1371  1386  1450  1465  1470  1485  1534
                                        1579
 SEVENTEEN                         Ext                   -  1192  1284
 SEVENTYNINE                       Ext                   -  1473
 SIX                               Ext                   -  1562  1563
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
 TEN                               Ext                   -   863  1052  1139
 THIRTEEN                          Ext                   -   963  1202  1385
                                        1484  1533
 THIRTYFIVE                        Ext                   -  1522
 THIRTYSEVEN                       Ext                   -   893
 THREE                             Ext                   -   918  1014  1341
                                        1438
 TRUE                              Ext                   -   926   940  1086
                                        1175  1180  1349  1363  1447  1462
 TWELVE                            Ext                   -  1049  1136
 TWENTYEIGHT                       Ext                   -   881   887
 TWENTYFIVE                        Ext                   -   904  1000  1326
                                        1423
 TWENTYSIX                         Ext                   -  1375  1474
 TWO                               Ext                   -   967  1206  1296
                                        1389  1488  1537
 TriAlphaBit                       Abs       3 #00000003 -   310
 TriAlphaFl                        Abs      60 #0000003C -   180   309   310
 TriAlphaNib                       Abs      14 #0000000E -   309
 TriUserBit                        Abs       0 #00000000 -   313
 TriUserFl                         Abs      61 #0000003D -   181   312   313
 TriUserNib                        Abs      15 #0000000F -   312
 UM>?                              Ext                   -  1031  1118
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
 ZERO                              Ext                   -   962  1201  1292
                                        1384  1483  1532
 case                              Ext                   -   910  1006  1092
                                        1332  1429
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
 umEND                             Ext                   -   917  1013  1027
                                        1114  1340  1437
 ~DoMsgBox                         Ext                   -  1064  1151
 ~FLD_M_MSGHNDLR                   Ext                   -  1236
 ~MsgBoxMenu                       Ext                   -  1060  1147
 ~grobAlertIcon                    Ext                   -  1056  1143
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Statistics                         ASPDform.a     Page    3

Input Parameters

  Source file name is ASPDform.a

  Listing file name is ASPDform.l

  Object file name is ASPDform.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
