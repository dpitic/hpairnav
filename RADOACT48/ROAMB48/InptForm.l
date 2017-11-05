Saturn Assembler                                       Wed Jun 24 20:34:11 2009
V3.0.9 (04/15/2007)                                      InptForm.a     Page    1

    1             * File  InptForm.s      1
    2             * RPL
    3             * File  InptForm.s      2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\InptForm.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5             **********************************************************************
    6             * NAME:          InptForm
    7             * LIBRARY #:     324h = 804d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.6
   10             * DATE:          24 June 2009
   11             * COMPATIBILITY: HP50
   12             *                HP48  ( Must use DoInputForm )
   13             * DESCRIPTION:   Creates and displays the form to accept INPUT
   14             *                arguments for the library application.
   15             *
   16             * File  InptForm.s      14
   17             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROAMB48\ROAMB48.h
   18
   19             =RomId  EQU     #324
   20             * ROMID set to 324
   21
   22
   23
   24
   25
   26
   27
   28             *|| Resuming file InptForm.s at line 14
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
  850             *|| Resuming file InptForm.s at line 15
  851             * ( HP48
  852             * File  InptForm.s      18
  853 00000       =InptForm
  854             * File  InptForm.s      19
  855 00000 00000         CON(5)  =DOCOL
  856             * Label definitions
  857             * File  InptForm.s      21
  858 00005 00000         CON(5)  =DOCSTR
  859 0000A B0000         CON(5)  11
  860 0000F 7544A         NIBASC  \WD:\
            3
  861 00015 00000         CON(5)  =ONE
  862 0001A 00000         CON(5)  =TEN
  863             * File  InptForm.s      22
  864 0001F 00000         CON(5)  =DOCSTR
  865 00024 B0000         CON(5)  11
  866 00029 7535A         NIBASC  \WS:\
            3
  867 0002F 00000         CON(5)  =FOURTHREE
  868 00034 00000         CON(5)  =TEN
  869             * File  InptForm.s      23
  870 00039 00000         CON(5)  =DOCSTR
  871 0003E D0000         CON(5)  13
  872 00043 45253         NIBASC  \TRS:\
            5A3
  873 0004B 00000         CON(5)  =ONE
  874 00050 00000         CON(5)  =NINETEEN
  875             * File  InptForm.s      24
  876 00055 00000         CON(5)  =DOCSTR
  877 0005A D0000         CON(5)  13
  878 0005F 74353         NIBASC  \GSS:\
            5A3
  879 00067 00000         CON(5)  =FOURTHREE
  880 0006C 00000         CON(5)  =NINETEEN
  881             * File  InptForm.s      25
  882 00071 00000         CON(5)  =DOCSTR
  883 00076 D0000         CON(5)  13
  884 0007B 45143         NIBASC  \TAS:\
            5A3
  885 00083 00000         CON(5)  =ONE
  886 00088 00000         CON(5)  =TWENTYEIGHT
  887             * File  InptForm.s      26
  888 0008D 00000         CON(5)  =DOCSTR
  889 00092 D0000         CON(5)  13
  890 00097 45341         NIBASC  \TC1:\
            3A3
  891 0009F 00000         CON(5)  =FOURTHREE
  892 000A4 00000         CON(5)  =TWENTYEIGHT
  893             * File  InptForm.s      27
  894 000A9 00000         CON(5)  =DOCSTR
  895 000AE 90000         CON(5)  9
  896 000B3 45A3          NIBASC  \T:\
  897 000B7 00000         CON(5)  =ONE
  898 000BC 00000         CON(5)  =THIRTYSEVEN
  899             * File  InptForm.s      28
  900
  901             * Field definitions
  902             * File  InptForm.s      30
  903             * Field WD definition
  904             * File  InptForm.s      31
  905 000C1 00000         CON(5)  ='DROPFALSE
  906             * Message handler
  907             * File  InptForm.s      32
  908 000C6 00000         CON(5)  =NINETEEN
  909 000CB 00000         CON(5)  =EIGHT
  910 000D0 00000         CON(5)  =FORTYTHREE
  911 000D5 00000         CON(5)  =NINE
  912             * Position & size
  913             * File  InptForm.s      33
  914 000DA 00000         CON(5)  =ONE
  915             * Field type TEXT
  916             * File  InptForm.s      34
  917 000DF 00000         CON(5)  =DOLIST
  918 000E4 00000         CON(5)  =ZERO
  919 000E9 00000         CON(5)  =SEMI
  920             * Allowed types REAL
  921             * File  InptForm.s      35
  922 000EE 00000         CON(5)  =TWO
  923             * Decompile
  924             * File  InptForm.s      36
  925 000F3 00000         CON(5)  =DOCSTR
  926 000F8 F2000         CON(5)  47
  927 000FD 7594E         NIBASC  \WIND DIRECTION (FROM\
            44402
            44942554344594F4E402826425F4D4

  928 00125 92            NIBASC  \)\
  929             * Help string
  930             * File  InptForm.s      37
  931 00127 00000         CON(5)  =MINUSONE
  932             * Choose data N/A
  933             * File  InptForm.s      38
  934 0012C 00000         CON(5)  =MINUSONE
  935             * Choose decompile N/A
  936             * File  InptForm.s      39
  937 00131 00000         CON(5)  =MINUSONE
  938             * Reset value
  939             * File  InptForm.s      40
  940 00136 00000         CON(5)  =DOIDNT
  941 0013B 20            CON(2)  2
  942 0013D 7544          NIBASC  \WD\
  943             * Initial value
  944             * File  InptForm.s      41
  945
  946             * File  InptForm.s      42
  947             * Field WS definition
  948             * File  InptForm.s      43
  949 00141 00000         CON(5)  ='DROPFALSE
  950             * Message handler
  951             * File  InptForm.s      44
  952 00146 00000         CON(5)  =2LIST
  953 0014B 00000         CON(5)  =EIGHT
  954 00150 00000         CON(5)  =FORTYTHREE
  955 00155 00000         CON(5)  =NINE
  956             * Position & size
  957             * File  InptForm.s      45
  958 0015A 00000         CON(5)  =ONE
  959             * Field type TEXT
  960             * File  InptForm.s      46
  961 0015F 00000         CON(5)  =DOLIST
  962 00164 00000         CON(5)  =ZERO
  963 00169 00000         CON(5)  =SEMI
  964             * Allowed types REAL
  965             * File  InptForm.s      47
  966 0016E 00000         CON(5)  =TWO
  967             * Decompile
  968             * File  InptForm.s      48
  969 00173 00000         CON(5)  =DOCSTR
  970 00178 91000         CON(5)  25
  971 0017D 7594E         NIBASC  \WIND SPEED\
            44402
            3505545444

  972             * Help string
  973             * File  InptForm.s      49
  974 00191 00000         CON(5)  =MINUSONE
  975             * Choose data N/A
  976             * File  InptForm.s      50
  977 00196 00000         CON(5)  =MINUSONE
  978             * Choose decompile N/A
  979             * File  InptForm.s      51
  980 0019B 00000         CON(5)  =MINUSONE
  981             * Reset value
  982             * File  InptForm.s      52
  983 001A0 00000         CON(5)  =DOIDNT
  984 001A5 20            CON(2)  2
  985 001A7 7535          NIBASC  \WS\
  986             * Initial value
  987             * File  InptForm.s      53
  988
  989             * File  InptForm.s      54
  990             * Field TRS definition
  991             * File  InptForm.s      55
  992 001AB 00000         CON(5)  ='DROPFALSE
  993             * Message handler
  994             * File  InptForm.s      56
  995 001B0 00000         CON(5)  =NINETEEN
  996 001B5 00000         CON(5)  =SEVENTEEN
  997 001BA 00000         CON(5)  =FORTYTHREE
  998 001BF 00000         CON(5)  =NINE
  999             * Position & size
 1000             * File  InptForm.s      57
 1001 001C4 00000         CON(5)  =ONE
 1002             * Field type TEXT
 1003             * File  InptForm.s      58
 1004 001C9 00000         CON(5)  =DOLIST
 1005 001CE 00000         CON(5)  =ZERO
 1006 001D3 00000         CON(5)  =SEMI
 1007             * Allowed types REAL
 1008             * File  InptForm.s      59
 1009 001D8 00000         CON(5)  =TWO
 1010             * Decompile
 1011             * File  InptForm.s      60
 1012 001DD 00000         CON(5)  =DOCSTR
 1013 001E2 F1000         CON(5)  31
 1014 001E7 45251         NIBASC  \TRACK OF SHIP\
            434B4
            02F4640235849405

 1015             * Help string
 1016             * File  InptForm.s      61
 1017 00201 00000         CON(5)  =MINUSONE
 1018             * Choose data N/A
 1019             * File  InptForm.s      62
 1020 00206 00000         CON(5)  =MINUSONE
 1021             * Choose decompile N/A
 1022             * File  InptForm.s      63
 1023 0020B 00000         CON(5)  =MINUSONE
 1024             * Reset value
 1025             * File  InptForm.s      64
 1026 00210 00000         CON(5)  =DOIDNT
 1027 00215 30            CON(2)  3
 1028 00217 45253         NIBASC  \TRS\
            5
 1029             * Initial value
 1030             * File  InptForm.s      65
 1031
 1032             * File  InptForm.s      66
 1033             * Field GSS definition
 1034             * File  InptForm.s      67
 1035 0021D 00000         CON(5)  ='DROPFALSE
 1036             * Message handler
 1037             * File  InptForm.s      68
 1038 00222 00000         CON(5)  =2LIST
 1039 00227 00000         CON(5)  =SEVENTEEN
 1040 0022C 00000         CON(5)  =FORTYTHREE
 1041 00231 00000         CON(5)  =NINE
 1042             * Position & size
 1043             * File  InptForm.s      69
 1044 00236 00000         CON(5)  =ONE
 1045             * Field type TEXT
 1046             * File  InptForm.s      70
 1047 0023B 00000         CON(5)  =DOLIST
 1048 00240 00000         CON(5)  =ZERO
 1049 00245 00000         CON(5)  =SEMI
 1050             * Allowed types REAL
 1051             * File  InptForm.s      71
 1052 0024A 00000         CON(5)  =TWO
 1053             * Decompile
 1054             * File  InptForm.s      72
 1055 0024F 00000         CON(5)  =DOCSTR
 1056 00254 D2000         CON(5)  45
 1057 00259 7425F         NIBASC  \GROUND SPEED OF SHIP\
            455E4
            4402350554544402F4640235849405

 1058             * Help string
 1059             * File  InptForm.s      73
 1060 00281 00000         CON(5)  =MINUSONE
 1061             * Choose data N/A
 1062             * File  InptForm.s      74
 1063 00286 00000         CON(5)  =MINUSONE
 1064             * Choose decompile N/A
 1065             * File  InptForm.s      75
 1066 0028B 00000         CON(5)  =MINUSONE
 1067             * Reset value
 1068             * File  InptForm.s      76
 1069 00290 00000         CON(5)  =DOIDNT
 1070 00295 30            CON(2)  3
 1071 00297 74353         NIBASC  \GSS\
            5
 1072             * Initial value
 1073             * File  InptForm.s      77
 1074
 1075             * File  InptForm.s      78
 1076             * Field TAS definition
 1077             * File  InptForm.s      79
 1078 0029D 00000         CON(5)  ='DROPFALSE
 1079             * Message handler
 1080             * File  InptForm.s      80
 1081 002A2 00000         CON(5)  =NINETEEN
 1082 002A7 00000         CON(5)  =TWENTYSIX
 1083 002AC 00000         CON(5)  =FORTYTHREE
 1084 002B1 00000         CON(5)  =NINE
 1085             * Position & size
 1086             * File  InptForm.s      81
 1087 002B6 00000         CON(5)  =ONE
 1088             * Field type TEXT
 1089             * File  InptForm.s      82
 1090 002BB 00000         CON(5)  =DOLIST
 1091 002C0 00000         CON(5)  =ZERO
 1092 002C5 00000         CON(5)  =SEMI
 1093             * Allowed types REAL
 1094             * File  InptForm.s      83
 1095 002CA 00000         CON(5)  =TWO
 1096             * Decompile
 1097             * File  InptForm.s      84
 1098 002CF 00000         CON(5)  =DOCSTR
 1099 002D4 12000         CON(5)  33
 1100 002D9 45255         NIBASC  \TRUE AIR SPEED\
            55402
            149425023505545444

 1101             * Help string
 1102             * File  InptForm.s      85
 1103 002F5 00000         CON(5)  =MINUSONE
 1104             * Choose data N/A
 1105             * File  InptForm.s      86
 1106 002FA 00000         CON(5)  =MINUSONE
 1107             * Choose decompile N/A
 1108             * File  InptForm.s      87
 1109 002FF 00000         CON(5)  =MINUSONE
 1110             * Reset value
 1111             * File  InptForm.s      88
 1112 00304 00000         CON(5)  =DOIDNT
 1113 00309 30            CON(2)  3
 1114 0030B 45143         NIBASC  \TAS\
            5
 1115             * Initial value
 1116             * File  InptForm.s      89
 1117
 1118             * File  InptForm.s      90
 1119             * Field TC1 definition
 1120             * File  InptForm.s      91
 1121 00311 00000         CON(5)  ='DROPFALSE
 1122             * Message handler
 1123             * File  InptForm.s      92
 1124 00316 00000         CON(5)  =2LIST
 1125 0031B 00000         CON(5)  =TWENTYSIX
 1126 00320 00000         CON(5)  =FORTYTHREE
 1127 00325 00000         CON(5)  =NINE
 1128             * Position & size
 1129             * File  InptForm.s      93
 1130 0032A 00000         CON(5)  =ONE
 1131             * Field type TEXT
 1132             * File  InptForm.s      94
 1133 0032F 00000         CON(5)  =DOLIST
 1134 00334 00000         CON(5)  =ZERO
 1135 00339 00000         CON(5)  =SEMI
 1136             * Allowed types REAL
 1137             * File  InptForm.s      95
 1138 0033E 00000         CON(5)  =TWO
 1139             * Decompile
 1140             * File  InptForm.s      96
 1141 00343 00000         CON(5)  =DOCSTR
 1142 00348 12000         CON(5)  33
 1143 0034D 45251         NIBASC  \TRACK OUTBOUND\
            434B4
            02F4554524F455E444

 1144             * Help string
 1145             * File  InptForm.s      97
 1146 00369 00000         CON(5)  =MINUSONE
 1147             * Choose data N/A
 1148             * File  InptForm.s      98
 1149 0036E 00000         CON(5)  =MINUSONE
 1150             * Choose decompile N/A
 1151             * File  InptForm.s      99
 1152 00373 00000         CON(5)  =MINUSONE
 1153             * Reset value
 1154             * File  InptForm.s      100
 1155 00378 00000         CON(5)  =DOIDNT
 1156 0037D 30            CON(2)  3
 1157 0037F 45341         NIBASC  \TC1\
            3
 1158             * Initial value
 1159             * File  InptForm.s      101
 1160
 1161             * File  InptForm.s      102
 1162             * Field T definition
 1163             * File  InptForm.s      103
 1164 00385 00000         CON(5)  ='DROPFALSE
 1165             * Message handler
 1166             * File  InptForm.s      104
 1167 0038A 00000         CON(5)  =NINETEEN
 1168 0038F 00000         CON(5)  =THIRTYFIVE
 1169 00394 00000         CON(5)  =FORTYTHREE
 1170 00399 00000         CON(5)  =NINE
 1171             * Position & size
 1172             * File  InptForm.s      105
 1173 0039E 00000         CON(5)  =ONE
 1174             * Field type TEXT
 1175             * File  InptForm.s      106
 1176 003A3 00000         CON(5)  =DOLIST
 1177 003A8 00000         CON(5)  =ZERO
 1178 003AD 00000         CON(5)  =SEMI
 1179             * Allowed types REAL
 1180             * File  InptForm.s      107
 1181 003B2 00000         CON(5)  =TWO
 1182             * Decompile
 1183             * File  InptForm.s      108
 1184 003B7 00000         CON(5)  =DOCSTR
 1185 003BC 13000         CON(5)  49
 1186 003C1 35146         NIBASC  \SAFE ENDURANCE (HOUR\
            45402
            54E444552514E43454028284F45525

 1187 003E9 3592          NIBASC  \S)\
 1188             * Help string
 1189             * File  InptForm.s      109
 1190 003ED 00000         CON(5)  =MINUSONE
 1191             * Choose data N/A
 1192             * File  InptForm.s      110
 1193 003F2 00000         CON(5)  =MINUSONE
 1194             * Choose decompile N/A
 1195             * File  InptForm.s      111
 1196 003F7 00000         CON(5)  =MINUSONE
 1197             * Reset value
 1198             * File  InptForm.s      112
 1199 003FC 00000         CON(5)  =DOIDNT
 1200 00401 10            CON(2)  1
 1201 00403 45            NIBASC  \T\
 1202             * Initial value
 1203             * File  InptForm.s      113
 1204
 1205             * File  InptForm.s      114
 1206 00405 00000         CON(5)  =SEVEN
 1207 0040A 00000         CON(5)  =SEVEN
 1208             * #labels #fields
 1209             * File  InptForm.s      115
 1210 0040F 00000         CON(5)  ='DROPFALSE
 1211             * Message handler
 1212             * File  InptForm.s      116
 1213 00414 00000         CON(5)  =DOCSTR
 1214 00419 73000         CON(5)  55
 1215 0041E 25F41         NIBASC  \ROA - MOVING BASE - \
            402D2
            02D4F46594E474022414355402D202

 1216 00446 94E40         NIBASC  \INPUT\
            55545
 1217             * Title
 1218             *               FLASHPTR IfMain                  ( HP50 )
 1219             * File  InptForm.s      118
 1220 00450 00000         CON(5)  =DoInputForm
 1221             * HP50, HP48
 1222             * File  InptForm.s      119
 1223 00455 00000         CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 24 20:34:11 2009
V3.0.9 (04/15/2007)   Symbol Table                       InptForm.a     Page    2

 'DROPFALSE                        Ext                   -   905   949   992
                                        1035  1078  1121  1164  1210
 2LIST                             Ext                   -   952  1038  1124
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
 DOCOL                             Ext                   -   855
 DOCSTR                            Ext                   -   858   864   870
                                         876   882   888   894   925   969  1012
                                        1055  1098  1141  1184  1213
 DOIDNT                            Ext                   -   940   983  1026
                                        1069  1112  1155  1199
 DOLIST                            Ext                   -   917   961  1004
                                        1047  1090  1133  1176
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
 DoInputForm                       Ext                   -  1220
 EIGHT                             Ext                   -   909   953
 ErableHeaderBit                   Abs       0 #00000000 -   814
 ErableHeaderFl                    Abs      93 #0000005D -   812   813   814
 ErableHeaderNib                   Abs      23 #00000017 -   813
 ErrorBeepBit                      Abs       3 #00000003 -   232
 ErrorBeepFl                       Abs      56 #00000038 -   176   231   232
 ErrorBeepNib                      Abs      13 #0000000D -   231
 ExactModeBit                      Abs       0 #00000000 -   839
 ExactModeFl                       Abs     105 #00000069 -   837   838   839
 ExactModeNib                      Abs      26 #0000001A -   838
 FORTYTHREE                        Ext                   -   910   954   997
                                        1040  1083  1126  1169
 FOURTHREE                         Ext                   -   867   879   891
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
 IndexWrapBit                      Abs       3 #00000003 -   244
 IndexWrapFl                       Abs      64 #00000040 -   184   243   244
 IndexWrapNib                      Abs      15 #0000000F -   243
 InfResActBit                      Abs       1 #00000001 -   247
 InfResActFl                       Abs      22 #00000016 -   144   246   247
 InfResActNib                      Abs       5 #00000005 -   246
 InfResultBit                      Abs       1 #00000001 -   250
 InfResultFl                       Abs      26 #0000001A -   148   249   250
 InfResultNib                      Abs       6 #00000006 -   249
=InptForm                          Rel       0 #00000000 -   853
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
 MINUSONE                          Ext                   -   931   934   937
                                         974   977   980  1017  1020  1023  1060
                                        1063  1066  1103  1106  1109  1146  1149
                                        1152  1190  1193  1196
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
 NINE                              Ext                   -   911   955   998
                                        1041  1084  1127  1170
 NINETEEN                          Ext                   -   874   880   908
                                         995  1081  1167
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
 ONE                               Ext                   -   861   873   885
                                         897   914   958  1001  1044  1087  1130
                                        1173
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
=RomId                             Abs     804 #00000324 -    19
 SEMI                              Ext                   -   919   963  1006
                                        1049  1092  1135  1178  1223
 SEVEN                             Ext                   -  1206  1207
 SEVENTEEN                         Ext                   -   996  1039
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
 TEN                               Ext                   -   862   868
 THIRTYFIVE                        Ext                   -  1168
 THIRTYSEVEN                       Ext                   -   898
 TWENTYEIGHT                       Ext                   -   886   892
 TWENTYSIX                         Ext                   -  1082  1125
 TWO                               Ext                   -   922   966  1009
                                        1052  1095  1138  1181
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
 ZERO                              Ext                   -   918   962  1005
                                        1048  1091  1134  1177
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
Saturn Assembler                                       Wed Jun 24 20:34:11 2009
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
