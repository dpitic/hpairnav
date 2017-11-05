Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)                                      FLD_M_MSGHNDLR Page    1

    1             * File  FLD_M_MSGHNDLR.s        1
    2             * RPL
    3             * File  FLD_M_MSGHNDLR.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD48\FLD_M_MSGHNDLR.s, part of the ASPD48.hpp project, created by <> on 14/06/2009
    5             * File  FLD_M_MSGHNDLR.s        3
    6
    7             * File  FLD_M_MSGHNDLR.s        4
    8             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD48\ASPD48.h
    9
   10             =RomId  EQU     #328
   11             * ROMID set to 328
   12
   13
   14
   15
   16
   17
   18
   19
   20
   21             *|| Resuming file FLD_M_MSGHNDLR.s at line 4
   22             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.H
   23
   24
   25             * RPL
   26             * insure RPL-mode exit
   27
   28             * ( Rad
   29
   30             * ( %2PI
   31             * ( %PI/24
   32
   33
   34
   35
   36             * ( 1=1Var, 2=2Var Statistic
   37             * ( 1=Histogram, 2=BoxWhisker
   38
   39
   40
   41
   42
   43             * ASSEMBLE
   44             DefSysF64-33 EQU        #00000000
   45             DefSysF32-01 EQU        #04010FF0
   46             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   47             DefSysF97-128 EQU       #00000000
   48
   49             * RPL
   50
   51
   52             * ( solution mode
   53             * ( constants mode
   54             * ( results mode
   55             * ( careful evaluation mode
   56
   57             * ( binary integer wordsize
   58             * must start on nibble boundary
   59             * ( binary integer base
   60             * must follow "fnBinWordS6"
   61
   62             * ( financial BEGIN/END mode
   63             * ( complex number and vector
   64             * mode
   65             * ( angle mode
   66             * must start on a nibble boundary
   67             * ( complex 2D mode
   68             * ( underflow action
   69             * ( overflow action
   70             * ( infinite result action
   71             * ( underflow-negative indicator
   72             * ( underflow-positive indicator
   73             * ( overflow indicator
   74             * ( infinite result indicator
   75             * ( symbolic-comples decompilation
   76             * ( simultaneous plot mode
   77             * ( axis drawing plot mode
   78
   79             * ( connect points mode
   80             * ( graphics cursor type mode
   81             * ( I/O device
   82             * ( print device
   83             * ( I/O data format
   84             * ( variable overwrite mode
   85             * ( double-space print mode
   86             * ( suppress auto CR mode
   87             * ( suppress I/O status messages
   88
   89
   90             * ( clock display mode
   91             * ( clock display format
   92             * ( date format
   93             * ( reschedule unacknowledged
   94             * repeat alarms mode
   95             * ( delete acknowledged non-repeat
   96             * alarms mode
   97
   98             * ( number of decimal digits
   99             * must start on nibble boundary
  100             * ( number display format
  101             * must start on nibble boundary
  102             * ( radix mark
  103             * ( multi-line display mode
  104             * ( show precedence mode
  105             * ( zero out tiny matrix elements
  106
  107             * ( last arguments mode
  108             * ( error beep mode
  109             * ( alarm beep mode
  110             * ( verbose display mode
  111             * ( variable name only mode
  112             * ( 3-way alpha mode
  113             * ( 3-way user keys mode
  114             * ( user keys mode
  115             * ( special parser mode
  116             * ( index wraparound indicator
  117
  118
  119             * ASSEMBLE
  120             SolutionsFl  EQU 1
  121             ConstantsFl  EQU 2
  122             ResultsFl    EQU 3
  123             CarefulFl    EQU 4
  124
  125             BinWordSFl1  EQU 5      must start on a nibble boundary
  126             BinWordSBCt  EQU 6      number of bits
  127             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  128             BinBaseBCt   EQU 2      number of bits
  129
  130             ComVecDiFl1  EQU 15
  131             ComVecDiBCt  EQU 2      number of bits
  132             AngleFl1     EQU 17     must start on a nibble boundary
  133             AngleBCt     EQU 2      number of bits
  134             Complex2DFl  EQU 19
  135             UnderfActFl  EQU 20
  136             OverfActFl   EQU 21
  137             InfResActFl  EQU 22
  138             UnderfNegFl  EQU 23
  139             UnderfPosFl  EQU 24
  140             OverflowFl   EQU 25
  141             InfResultFl  EQU 26
  142
  143             FunctPlotFl  EQU 30
  144             ConnectPtFl  EQU 31
  145             GCursorFl    EQU 32
  146             IODeviceFl   EQU 33
  147             PrintDevFl   EQU 34
  148             IODataFmtFl  EQU 35
  149             OverwriteFl  EQU 36
  150             DblSpaceFl   EQU 37
  151             NoAutoCRFl   EQU 38
  152             NoIOStsMsgFl EQU 39
  153
  154             ClockOnFl    EQU 40
  155             ClockFmtFl   EQU 41
  156             DateFmtFl    EQU 42
  157             ResRepAlmFl  EQU 43
  158             DelNRAlmFl   EQU 44
  159
  160             NumDigsFl1   EQU 45     must start on a nibble boundary
  161             NumDigsBCt   EQU 4      number of bits
  162             NumDispFl1   EQU 49     must start on a nibble boundary
  163             NumDispBCt   EQU 2      number of bits
  164             RadixFl      EQU 51
  165             MultiDispFl  EQU 52
  166             ShowPrecFl   EQU 53
  167
  168             LastArgsFl   EQU 55
  169             ErrorBeepFl  EQU 56
  170             AlarmBeepFl  EQU 57
  171             VerboseFl    EQU 58
  172             FastEqViewFl EQU 59
  173             TriAlphaFl   EQU 60
  174             TriUserFl    EQU 61
  175             UserKeysFl   EQU 62
  176             NoParseFl    EQU 63
  177             IndexWrapFl  EQU 64
  178
  179
  180
  181             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  182             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  183
  184             AngleNib     EQU ((AngleFl1)-1)/4
  185             AngleBit1    EQU ((AngleFl1)-1)%4
  186             AngleBit2    EQU (AngleBit1)+1
  187
  188             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  189             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  190
  191             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  192             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  193
  194             CarefulNib   EQU ((CarefulFl)-1)/4
  195             CarefulBit   EQU ((CarefulFl)-1)%4
  196
  197             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  198             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  199
  200             ClockOnNib   EQU ((ClockOnFl)-1)/4
  201             ClockOnBit   EQU ((ClockOnFl)-1)%4
  202
  203             Complex2DNib EQU ((Complex2DFl)-1)/4
  204             Complex2DBit EQU ((Complex2DFl)-1)%4
  205
  206             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  207             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  208
  209             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  210             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  211
  212             ConstantsNib EQU ((ConstantsFl)-1)/4
  213             ConstantsBit EQU ((ConstantsFl)-1)%4
  214
  215             DateFmtNib   EQU ((DateFmtFl)-1)/4
  216             DateFmtBit   EQU ((DateFmtFl)-1)%4
  217
  218             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  219             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  220
  221             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  222             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  223
  224             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  225             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  226
  227             FastEViewNib EQU ((FastEqViewFl)-1)/4
  228             FastEViewBit EQU ((FastEqViewFl)-1)%4
  229
  230             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  231             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  232
  233             GCursorNib   EQU ((GCursorFl)-1)/4
  234             GCursorBit   EQU ((GCursorFl)-1)%4
  235
  236             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  237             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  238
  239             InfResActNib EQU ((InfResActFl)-1)/4
  240             InfResActBit EQU ((InfResActFl)-1)%4
  241
  242             InfResultNib EQU ((InfResultFl)-1)/4
  243             InfResultBit EQU ((InfResultFl)-1)%4
  244
  245             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  246             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  247
  248             IODeviceNib  EQU ((IODeviceFl)-1)/4
  249             IODeviceBit  EQU ((IODeviceFl)-1)%4
  250
  251             LastArgsNib  EQU ((LastArgsFl)-1)/4
  252             LastArgsBit  EQU ((LastArgsFl)-1)%4
  253
  254             VerboseNib   EQU ((VerboseFl)-1)/4
  255             VerboseBit   EQU ((VerboseFl)-1)%4
  256
  257             MultiDispNib EQU ((MultiDispFl)-1)/4
  258             MultiDispBit EQU ((MultiDispFl)-1)%4
  259
  260             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  261             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  262
  263             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  264             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  265
  266             NoParseNib   EQU ((NoParseFl)-1)/4
  267             NoParseBit   EQU ((NoParseFl)-1)%4
  268
  269             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  270             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  271
  272             NumDispNib   EQU ((NumDispFl1)-1)/4
  273             NumDispBit1  EQU ((NumDispFl1)-1)%4
  274
  275             OverfActNib  EQU ((OverfActFl)-1)/4
  276             OverfActBit  EQU ((OverfActFl)-1)%4
  277
  278             OverflowNib  EQU ((OverflowFl)-1)/4
  279             OverflowBit  EQU ((OverflowFl)-1)%4
  280
  281             OverwriteNib EQU ((OverwriteFl)-1)/4
  282             OverwriteBit EQU ((OverwriteFl)-1)%4
  283
  284             PrintDevNib  EQU ((PrintDevFl)-1)/4
  285             PrintDevBit  EQU ((PrintDevFl)-1)%4
  286
  287             RadixNib     EQU ((RadixFl)-1)/4
  288             RadixBit     EQU ((RadixFl)-1)%4
  289
  290             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  291             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  292
  293             ResultsNib   EQU ((ResultsFl)-1)/4
  294             ResultsBit   EQU ((ResultsFl)-1)%4
  295
  296             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  297             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  298
  299             SolutionsNib EQU ((SolutionsFl)-1)/4
  300             SolutionsBit EQU ((SolutionsFl)-1)%4
  301
  302             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  303             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  304
  305             TriUserNib   EQU ((TriUserFl)-1)/4
  306             TriUserBit   EQU ((TriUserFl)-1)%4
  307
  308             UnderfActNib EQU ((UnderfActFl)-1)/4
  309             UnderfActBit EQU ((UnderfActFl)-1)%4
  310
  311             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  312             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  313
  314             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  315             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  316
  317             UserKeysNib  EQU ((UserKeysFl)-1)/4
  318             UserKeysBit  EQU ((UserKeysFl)-1)%4
  319
  320             * RPL
  321             * RPL
  322             * insure RPL-mode exit
  323
  324
  325             * ASSEMBLE
  326
  327
  328             nonALG EQU 8                    not-allowed-in-algebraics flag
  329             hasHELP EQU 4                   has-help-data flag
  330             hasPROMPTM EQU 4                same as above
  331             hasALIAS EQU 2                  has-algebraic-alias flag
  332             hasPDATA EQU 1                  has-parse-data flag
  333
  334
  335             hasDER EQU 8                    has-derivative flag
  336             hasINV EQU 4                    has-inverse flag
  337             hasCOLCT EQU 2                  has-COLCT-data flag
  338             hasEXPND EQU 1                  has-EXPND-data flag
  339
  340
  341             hasFORM EQU 8                   has-FORM-menu flag
  342             hasINTG EQU 4                   has-Integral-data flag
  343             hasWHERE EQU 2                  has-WHERE-code flag
  344             hasVUNS EQU 1                   has-veryunsymin-code flag
  345
  346
  347             pdEX EQU #0             general expression
  348             pdOP EQU #1             operator
  349             pdQE EQU #2             quoted expression
  350             pdQN EQU #3             quoted name
  351             pdLP EQU #4             left parenthesis
  352             pdRP EQU #5             right parenthesis
  353             pdCM EQU #6             comma (non-radix)
  354             pdEQ EQU #7             equal-sign separator
  355             pdOS0 EQU #8            optional repeat 0
  356             pdOS1 EQU #9            optional repeat 1
  357             pdOS2 EQU #A            optional repeat 2
  358             pdOS3 EQU #B            optional repeat 3
  359             pdOS4 EQU #C            optional repeat 4
  360             pdOS5 EQU #D            optional repeat 5
  361             pdOS6 EQU #E            optional repeat 6
  362             pdOS7 EQU #F            optional repeat 7
  363
  364             * RPL
  365             * RPL
  366             * insure RPL-mode exit
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
  380
  381
  382
  383
  384             * RPL
  385             * insure RPL-mode exit
  386
  387             * RPL
  388             * insure RPL-mode exit
  389
  390
  391
  392
  393
  394
  395
  396
  397
  398             * ( for internal use only
  399
  400
  401
  402
  403
  404
  405
  406
  407
  408
  409             * ( decimal 67
  410             * ( decimal 86
  411             * ( decimal 82
  412             * ( decimal 85
  413             * ( decimal 101
  414             * ( decimal 97
  415             * ( decimal 100
  416             * ( decimal 113
  417             * ( decimal 112
  418
  419             * ( check width
  420             * ( field character width
  421
  422             * ( decimal 67
  423             * ( decimal 85
  424             * ( decimal 97
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
  438
  439
  440
  441
  442             * RPL
  443             * insure RPL-mode exit
  444
  445             * ( decimal 66
  446             * ( decimal 67
  447             * ( decimal 69
  448             * ( decimal 82
  449             * ( decimal 83
  450             * ( decimal 84
  451             * ( decimal 85
  452             * ( decimal 86
  453             * ( decimal 87
  454
  455
  456             * ( norm-view default visible row count
  457             * ( default first row X location
  458             * ( default first row Y location
  459             * ( default row width
  460             * ( default row height
  461
  462             * ( max-view width
  463             * ( max-view height
  464             * ( max-view default visible row count
  465
  466             * ( prompt area height
  467
  468             * ( more-up/down icon width
  469
  470
  471
  472             * RPL
  473             * insure RPL-mode exit
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
  685
  686
  687
  688
  689             * RPL
  690             * insure RPL-mode exit
  691
  692
  693
  694             * ( set for informations
  695             * ( set for step by step mode on
  696             * ( internal use: true if VXXL success
  697             * ( set for no gcd computations
  698             * ( set for complex mode
  699             * ( internal use:       LN->-INV[-LN]]
  700             * ( set for approx mode
  701             * ( set for TSIMP call inside SERIES
  702             * ( internal use:       modular computation
  703             * ( internal use:       testing remainder=0
  704             * ( set to allow numeric factorization
  705             * ( set for large matrices
  706             * ( set: don't simplify inside non rational operation
  707             * ( set to see i as an irrquad c=-1
  708             * ( set to disable linearity simplif.
  709             * ( set for increasing power x+1 -> 1+x
  710             * ( internal use:       sqrt not as irrquad
  711             * ( set if sin are prefered to cos
  712             * ( set for menu as choosebox
  713             * ( set if xINT is not simplified
  714             * ( set if non rigourous mode
  715             * ( set to allow silent mode switch
  716             * ( set if xLN returns LN[ABS[]]
  717
  718
  719             * ASSEMBLE
  720
  721             MultiLineFl     EQU     65
  722             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  723             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  724             MultiLineStringsFl      EQU     66
  725             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  726             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  727             DigitalClockFl  EQU     67
  728             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  729             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  730             CmdAutoIndentFl EQU     68
  731             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  732             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  733             FullScreenEditFl        EQU     69
  734             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  735             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  736             MultiLine2GROBFl        EQU     70
  737             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  738             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  739             DesasmWithAdrFl EQU     71
  740             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  741             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  742             BigFontStackFl  EQU     72
  743             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  744             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  745             BigFontCmdFl    EQU     73
  746             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  747             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  748             RightJustifiedStackFl   EQU     74
  749             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  750             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  751             KeystrokeBeepFl EQU     75
  752             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  753             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  754             FilerConfirmationFl     EQU     76
  755             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  756             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  757             FilerConfirmFl  EQU     77
  758             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  759             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  760             KernelParamFl   EQU     78
  761             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  762             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  763             PrettyPrintFl   EQU     79
  764             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  765             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  766             SmallFontEQWStackFl     EQU     80
  767             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  768             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  769             SmallFontEQWGrobFl      EQU     81
  770             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  771             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  772             SmallFontEQWEditFl      EQU     82
  773             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  774             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  775             GrobDisplayFl   EQU     83
  776             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  777             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  778             MKSmallFontMenuFl       EQU     84
  779             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  780             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  781             SystemRPLStackFl        EQU     85
  782             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  783             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  784             MASDDecompilerFl        EQU     86
  785             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  786             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  787             RecursiveStackFl        EQU     87
  788             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  789             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  790             RecursiveEditFl EQU     88
  791             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  792             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  793             AddressesCLEFl  EQU     89
  794             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  795             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  796             SmallFontChooseFl       EQU     90
  797             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  798             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  799             ArrayOnlyFl     EQU     91
  800             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  801             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  802             MLMASDModeFl    EQU     92
  803             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  804             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  805             ErableHeaderFl  EQU     93
  806             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  807             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  808             AutoSaveFl      EQU     94
  809             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  810             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  811             AlgebraicModeFl EQU     95
  812             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  813             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  814             MenuOnFl        EQU     96
  815             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  816             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  817             VerticalListFl  EQU     97
  818             VerticalListNib EQU     ((VerticalListFl)-1)/4
  819             VerticalListBit EQU     ((VerticalListFl)-1)%4
  820             VerticalVectorFl        EQU     98
  821             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  822             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  823
  824
  825             ComplexFl       EQU     103
  826             ComplexNib      EQU     ((ComplexFl)-1)/4
  827             ComplexBit      EQU     ((ComplexFl)-1)%4
  828
  829
  830             ExactModeFl     EQU     105
  831             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  832             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  833
  834
  835             * RPL
  836
  837
  838
  839             * ASSEMBLE
  840                     SETLIST CODE, INCLUDE, PSEUDO
  841             * RPL
  842
  843             *|| Resuming file FLD_M_MSGHNDLR.s at line 5
  844             * File  FLD_M_MSGHNDLR.s        7
  845 00000       =FLD_M_MSGHNDLR
  846             * File  FLD_M_MSGHNDLR.s        8
  847 00000 00000         CON(5)  =DOCOL
  848             * File  FLD_M_MSGHNDLR.s        9
  849 00005 00000         CON(5)  =DROPFALSE
  850             *        IFM_CHKOBVALUE #=case ::
  851             *          TRUE
  852             *        ;
  853             *        FALSE
  854             *  FIFTYSIX #=case ::                    ( Get internal field value )
  855             **                    DROP
  856             *              DUPTYPEREAL? case ::
  857             *                       DUP %1 %> IT ::                                  ( IF M > 1 )
  858             **                      BINT0 FLASHPTR IfGetFieldValue NOVAL EQUALNOT  ( and IF VC and PA )
  859             **                      BINT1 FLASHPTR IfGetFieldValue NOVAL EQUALNOT  ( are not NOVAL )
  860             **                                                                              AND IT ::
  861             **                        " MACH > 1        TAS    INACCURATE"         ( Display flash warning )
  862             **                        FlashWarning
  863             **                      ;
  864             *                                                               ERRBEEP                     ( Error beep and display flashwarning message )
  865             * Message box parameters
  866             *                                                               " MACH > 1        TAS    INACCURATE"     ( message$ )
  867             *                                                               TWELVE                      ( #maxwidth )
  868             *                                                               TEN                         ( #minwidth )
  869             *                                                               grobAlertIcon               ( grob )
  870             *                                                               MsgBoxMenu                  ( menuobject )
  871             *                                                               DoMsgBox DROP               ( Draw the message box, DROP FLAG )
  872             *                                                                 ;                                 ( Return internal value )
  873             *                                                                 TRUE
  874             *                                                               ;
  875             *                     TRUE                              ( Message was handled )
  876             *                   ;
  877             **          DROPFALSE                            ( No other messages handled )
  878             *          FALSE
  879             * File  FLD_M_MSGHNDLR.s        39
  880 0000A 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       FLD_M_MSGHNDLR Page    2

 AddressesCLEBit                   Abs       0 #00000000 -   795
 AddressesCLEFl                    Abs      89 #00000059 -   793   794   795
 AddressesCLENib                   Abs      22 #00000016 -   794
 AlarmBeepBit                      Abs       0 #00000000 -   182
 AlarmBeepFl                       Abs      57 #00000039 -   170   181   182
 AlarmBeepNib                      Abs      14 #0000000E -   181
 AlgebraicModeBit                  Abs       2 #00000002 -   813
 AlgebraicModeFl                   Abs      95 #0000005F -   811   812   813
 AlgebraicModeNib                  Abs      23 #00000017 -   812
 AngleBCt                          Abs       2 #00000002 -   133
 AngleBit1                         Abs       0 #00000000 -   185   186
 AngleBit2                         Abs       1 #00000001 -   186
 AngleFl1                          Abs      17 #00000011 -   132   184   185
 AngleNib                          Abs       4 #00000004 -   184
 ArrayOnlyBit                      Abs       2 #00000002 -   801
 ArrayOnlyFl                       Abs      91 #0000005B -   799   800   801
 ArrayOnlyNib                      Abs      22 #00000016 -   800
 AutoSaveBit                       Abs       1 #00000001 -   810
 AutoSaveFl                        Abs      94 #0000005E -   808   809   810
 AutoSaveNib                       Abs      23 #00000017 -   809
 BigFontCmdBit                     Abs       0 #00000000 -   747
 BigFontCmdFl                      Abs      73 #00000049 -   745   746   747
 BigFontCmdNib                     Abs      18 #00000012 -   746
 BigFontStackBit                   Abs       3 #00000003 -   744
 BigFontStackFl                    Abs      72 #00000048 -   742   743   744
 BigFontStackNib                   Abs      17 #00000011 -   743
 BinBaseBCt                        Abs       2 #00000002 -   128
 BinBaseBit1                       Abs       2 #00000002 -   189
 BinBaseFl1                        Abs      11 #0000000B -   127   188   189
 BinBaseNib                        Abs       2 #00000002 -   188
 BinWordSBCt                       Abs       6 #00000006 -   126
 BinWordSBit1                      Abs       0 #00000000 -   192
 BinWordSFl1                       Abs       5 #00000005 -   125   191   192
 BinWordSNib                       Abs       1 #00000001 -   191
 CarefulBit                        Abs       3 #00000003 -   195
 CarefulFl                         Abs       4 #00000004 -   123   194   195
 CarefulNib                        Abs       0 #00000000 -   194
 ClockFmtBit                       Abs       0 #00000000 -   198
 ClockFmtFl                        Abs      41 #00000029 -   155   197   198
 ClockFmtNib                       Abs      10 #0000000A -   197
 ClockOnBit                        Abs       3 #00000003 -   201
 ClockOnFl                         Abs      40 #00000028 -   154   200   201
 ClockOnNib                        Abs       9 #00000009 -   200
 CmdAutoIndentBit                  Abs       3 #00000003 -   732
 CmdAutoIndentFl                   Abs      68 #00000044 -   730   731   732
 CmdAutoIndentNib                  Abs      16 #00000010 -   731
 ComVecDiBCt                       Abs       2 #00000002 -   131
 ComVecDiBit1                      Abs       2 #00000002 -   207
 ComVecDiFl1                       Abs      15 #0000000F -   130   206   207
 ComVecDiNib                       Abs       3 #00000003 -   206
 Complex2DBit                      Abs       2 #00000002 -   204
 Complex2DFl                       Abs      19 #00000013 -   134   203   204
 Complex2DNib                      Abs       4 #00000004 -   203
 ComplexBit                        Abs       2 #00000002 -   827
 ComplexFl                         Abs     103 #00000067 -   825   826   827
 ComplexNib                        Abs      25 #00000019 -   826
 ConnectPtBit                      Abs       2 #00000002 -   210
 ConnectPtFl                       Abs      31 #0000001F -   144   209   210
 ConnectPtNib                      Abs       7 #00000007 -   209
 ConstantsBit                      Abs       1 #00000001 -   213
 ConstantsFl                       Abs       2 #00000002 -   121   212   213
 ConstantsNib                      Abs       0 #00000000 -   212
 DOCOL                             Ext                   -   847
 DROPFALSE                         Ext                   -   849
 DateFmtBit                        Abs       1 #00000001 -   216
 DateFmtFl                         Abs      42 #0000002A -   156   215   216
 DateFmtNib                        Abs      10 #0000000A -   215
 DblSpaceBit                       Abs       0 #00000000 -   219
 DblSpaceFl                        Abs      37 #00000025 -   150   218   219
 DblSpaceNib                       Abs       9 #00000009 -   218
 DefSysF32-01                      Abs67178480 #04010FF0 -    45
 DefSysF64-33                      Abs       0 #00000000 -    44
 DefSysF65-96                      Abs1107296256 #42000000 -    46
 DefSysF97-128                     Abs       0 #00000000 -    47
 DelNRAlmBit                       Abs       3 #00000003 -   222
 DelNRAlmFl                        Abs      44 #0000002C -   158   221   222
 DelNRAlmNib                       Abs      10 #0000000A -   221
 DesasmWithAdrBit                  Abs       2 #00000002 -   741
 DesasmWithAdrFl                   Abs      71 #00000047 -   739   740   741
 DesasmWithAdrNib                  Abs      17 #00000011 -   740
 DigitalClockBit                   Abs       2 #00000002 -   729
 DigitalClockFl                    Abs      67 #00000043 -   727   728   729
 DigitalClockNib                   Abs      16 #00000010 -   728
 ErableHeaderBit                   Abs       0 #00000000 -   807
 ErableHeaderFl                    Abs      93 #0000005D -   805   806   807
 ErableHeaderNib                   Abs      23 #00000017 -   806
 ErrorBeepBit                      Abs       3 #00000003 -   225
 ErrorBeepFl                       Abs      56 #00000038 -   169   224   225
 ErrorBeepNib                      Abs      13 #0000000D -   224
 ExactModeBit                      Abs       0 #00000000 -   832
 ExactModeFl                       Abs     105 #00000069 -   830   831   832
 ExactModeNib                      Abs      26 #0000001A -   831
=FLD_M_MSGHNDLR                    Rel       0 #00000000 -   845
 FastEViewBit                      Abs       2 #00000002 -   228
 FastEViewNib                      Abs      14 #0000000E -   227
 FastEqViewFl                      Abs      59 #0000003B -   172   227   228
 FilerConfirmBit                   Abs       0 #00000000 -   759
 FilerConfirmFl                    Abs      77 #0000004D -   757   758   759
 FilerConfirmNib                   Abs      19 #00000013 -   758
 FilerConfirmationBit              Abs       3 #00000003 -   756
 FilerConfirmationFl               Abs      76 #0000004C -   754   755   756
 FilerConfirmationNib              Abs      18 #00000012 -   755
 FullScreenEditBit                 Abs       0 #00000000 -   735
 FullScreenEditFl                  Abs      69 #00000045 -   733   734   735
 FullScreenEditNib                 Abs      17 #00000011 -   734
 FunctPlotBit                      Abs       1 #00000001 -   231
 FunctPlotFl                       Abs      30 #0000001E -   143   230   231
 FunctPlotNib                      Abs       7 #00000007 -   230
 GCursorBit                        Abs       3 #00000003 -   234
 GCursorFl                         Abs      32 #00000020 -   145   233   234
 GCursorNib                        Abs       7 #00000007 -   233
 GrobDisplayBit                    Abs       2 #00000002 -   777
 GrobDisplayFl                     Abs      83 #00000053 -   775   776   777
 GrobDisplayNib                    Abs      20 #00000014 -   776
 IODataFmtBit                      Abs       2 #00000002 -   246
 IODataFmtFl                       Abs      35 #00000023 -   148   245   246
 IODataFmtNib                      Abs       8 #00000008 -   245
 IODeviceBit                       Abs       0 #00000000 -   249
 IODeviceFl                        Abs      33 #00000021 -   146   248   249
 IODeviceNib                       Abs       8 #00000008 -   248
 IndexWrapBit                      Abs       3 #00000003 -   237
 IndexWrapFl                       Abs      64 #00000040 -   177   236   237
 IndexWrapNib                      Abs      15 #0000000F -   236
 InfResActBit                      Abs       1 #00000001 -   240
 InfResActFl                       Abs      22 #00000016 -   137   239   240
 InfResActNib                      Abs       5 #00000005 -   239
 InfResultBit                      Abs       1 #00000001 -   243
 InfResultFl                       Abs      26 #0000001A -   141   242   243
 InfResultNib                      Abs       6 #00000006 -   242
 KernelParamBit                    Abs       1 #00000001 -   762
 KernelParamFl                     Abs      78 #0000004E -   760   761   762
 KernelParamNib                    Abs      19 #00000013 -   761
 KeystrokeBeepBit                  Abs       2 #00000002 -   753
 KeystrokeBeepFl                   Abs      75 #0000004B -   751   752   753
 KeystrokeBeepNib                  Abs      18 #00000012 -   752
 LastArgsBit                       Abs       2 #00000002 -   252
 LastArgsFl                        Abs      55 #00000037 -   168   251   252
 LastArgsNib                       Abs      13 #0000000D -   251
 MASDDecompilerBit                 Abs       1 #00000001 -   786
 MASDDecompilerFl                  Abs      86 #00000056 -   784   785   786
 MASDDecompilerNib                 Abs      21 #00000015 -   785
 MKSmallFontMenuBit                Abs       3 #00000003 -   780
 MKSmallFontMenuFl                 Abs      84 #00000054 -   778   779   780
 MKSmallFontMenuNib                Abs      20 #00000014 -   779
 MLMASDModeBit                     Abs       3 #00000003 -   804
 MLMASDModeFl                      Abs      92 #0000005C -   802   803   804
 MLMASDModeNib                     Abs      22 #00000016 -   803
 MenuOnBit                         Abs       3 #00000003 -   816
 MenuOnFl                          Abs      96 #00000060 -   814   815   816
 MenuOnNib                         Abs      23 #00000017 -   815
 MultiDispBit                      Abs       3 #00000003 -   258
 MultiDispFl                       Abs      52 #00000034 -   165   257   258
 MultiDispNib                      Abs      12 #0000000C -   257
 MultiLine2GROBBit                 Abs       1 #00000001 -   738
 MultiLine2GROBFl                  Abs      70 #00000046 -   736   737   738
 MultiLine2GROBNib                 Abs      17 #00000011 -   737
 MultiLineBit                      Abs       0 #00000000 -   723
 MultiLineFl                       Abs      65 #00000041 -   721   722   723
 MultiLineNib                      Abs      16 #00000010 -   722
 MultiLineStringsBit               Abs       1 #00000001 -   726
 MultiLineStringsFl                Abs      66 #00000042 -   724   725   726
 MultiLineStringsNib               Abs      16 #00000010 -   725
 NoAutoCRBit                       Abs       1 #00000001 -   261
 NoAutoCRFl                        Abs      38 #00000026 -   151   260   261
 NoAutoCRNib                       Abs       9 #00000009 -   260
 NoIOStMsgBit                      Abs       2 #00000002 -   264
 NoIOStMsgNib                      Abs       9 #00000009 -   263
 NoIOStsMsgFl                      Abs      39 #00000027 -   152   263   264
 NoParseBit                        Abs       2 #00000002 -   267
 NoParseFl                         Abs      63 #0000003F -   176   266   267
 NoParseNib                        Abs      15 #0000000F -   266
 NumDigsBCt                        Abs       4 #00000004 -   161
 NumDigsBit1                       Abs       0 #00000000 -   270
 NumDigsFl1                        Abs      45 #0000002D -   160   269   270
 NumDigsNib                        Abs      11 #0000000B -   269
 NumDispBCt                        Abs       2 #00000002 -   163
 NumDispBit1                       Abs       0 #00000000 -   273
 NumDispFl1                        Abs      49 #00000031 -   162   272   273
 NumDispNib                        Abs      12 #0000000C -   272
 OverfActBit                       Abs       0 #00000000 -   276
 OverfActFl                        Abs      21 #00000015 -   136   275   276
 OverfActNib                       Abs       5 #00000005 -   275
 OverflowBit                       Abs       0 #00000000 -   279
 OverflowFl                        Abs      25 #00000019 -   140   278   279
 OverflowNib                       Abs       6 #00000006 -   278
 OverwriteBit                      Abs       3 #00000003 -   282
 OverwriteFl                       Abs      36 #00000024 -   149   281   282
 OverwriteNib                      Abs       8 #00000008 -   281
 PrettyPrintBit                    Abs       2 #00000002 -   765
 PrettyPrintFl                     Abs      79 #0000004F -   763   764   765
 PrettyPrintNib                    Abs      19 #00000013 -   764
 PrintDevBit                       Abs       1 #00000001 -   285
 PrintDevFl                        Abs      34 #00000022 -   147   284   285
 PrintDevNib                       Abs       8 #00000008 -   284
 RadixBit                          Abs       2 #00000002 -   288
 RadixFl                           Abs      51 #00000033 -   164   287   288
 RadixNib                          Abs      12 #0000000C -   287
 RecursiveEditBit                  Abs       3 #00000003 -   792
 RecursiveEditFl                   Abs      88 #00000058 -   790   791   792
 RecursiveEditNib                  Abs      21 #00000015 -   791
 RecursiveStackBit                 Abs       2 #00000002 -   789
 RecursiveStackFl                  Abs      87 #00000057 -   787   788   789
 RecursiveStackNib                 Abs      21 #00000015 -   788
 ResRepAlmBit                      Abs       2 #00000002 -   291
 ResRepAlmFl                       Abs      43 #0000002B -   157   290   291
 ResRepAlmNib                      Abs      10 #0000000A -   290
 ResultsBit                        Abs       2 #00000002 -   294
 ResultsFl                         Abs       3 #00000003 -   122   293   294
 ResultsNib                        Abs       0 #00000000 -   293
 RightJustifiedStackBit            Abs       1 #00000001 -   750
 RightJustifiedStackFl             Abs      74 #0000004A -   748   749   750
 RightJustifiedStackNib            Abs      18 #00000012 -   749
=RomId                             Abs     808 #00000328 -    10
 SEMI                              Ext                   -   880
 ShowPrecBit                       Abs       0 #00000000 -   297
 ShowPrecFl                        Abs      53 #00000035 -   166   296   297
 ShowPrecNib                       Abs      13 #0000000D -   296
 SmallFontChooseBit                Abs       1 #00000001 -   798
 SmallFontChooseFl                 Abs      90 #0000005A -   796   797   798
 SmallFontChooseNib                Abs      22 #00000016 -   797
 SmallFontEQWEditBit               Abs       1 #00000001 -   774
 SmallFontEQWEditFl                Abs      82 #00000052 -   772   773   774
 SmallFontEQWEditNib               Abs      20 #00000014 -   773
 SmallFontEQWGrobBit               Abs       0 #00000000 -   771
 SmallFontEQWGrobFl                Abs      81 #00000051 -   769   770   771
 SmallFontEQWGrobNib               Abs      20 #00000014 -   770
 SmallFontEQWStackBit              Abs       3 #00000003 -   768
 SmallFontEQWStackFl               Abs      80 #00000050 -   766   767   768
 SmallFontEQWStackNib              Abs      19 #00000013 -   767
 SolutionsBit                      Abs       0 #00000000 -   300
 SolutionsFl                       Abs       1 #00000001 -   120   299   300
 SolutionsNib                      Abs       0 #00000000 -   299
 SystemRPLStackBit                 Abs       0 #00000000 -   783
 SystemRPLStackFl                  Abs      85 #00000055 -   781   782   783
 SystemRPLStackNib                 Abs      21 #00000015 -   782
 TriAlphaBit                       Abs       3 #00000003 -   303
 TriAlphaFl                        Abs      60 #0000003C -   173   302   303
 TriAlphaNib                       Abs      14 #0000000E -   302
 TriUserBit                        Abs       0 #00000000 -   306
 TriUserFl                         Abs      61 #0000003D -   174   305   306
 TriUserNib                        Abs      15 #0000000F -   305
 UnderfActBit                      Abs       3 #00000003 -   309
 UnderfActFl                       Abs      20 #00000014 -   135   308   309
 UnderfActNib                      Abs       4 #00000004 -   308
 UnderfNegBit                      Abs       2 #00000002 -   312
 UnderfNegFl                       Abs      23 #00000017 -   138   311   312
 UnderfNegNib                      Abs       5 #00000005 -   311
 UnderfPosBit                      Abs       3 #00000003 -   315
 UnderfPosFl                       Abs      24 #00000018 -   139   314   315
 UnderfPosNib                      Abs       5 #00000005 -   314
 UserKeysBit                       Abs       1 #00000001 -   318
 UserKeysFl                        Abs      62 #0000003E -   175   317   318
 UserKeysNib                       Abs      15 #0000000F -   317
 VerboseBit                        Abs       1 #00000001 -   255
 VerboseFl                         Abs      58 #0000003A -   171   254   255
 VerboseNib                        Abs      14 #0000000E -   254
 VerticalListBit                   Abs       0 #00000000 -   819
 VerticalListFl                    Abs      97 #00000061 -   817   818   819
 VerticalListNib                   Abs      24 #00000018 -   818
 VerticalVectorBit                 Abs       1 #00000001 -   822
 VerticalVectorFl                  Abs      98 #00000062 -   820   821   822
 VerticalVectorNib                 Abs      24 #00000018 -   821
 hasALIAS                          Abs       2 #00000002 -   331
 hasCOLCT                          Abs       2 #00000002 -   337
 hasDER                            Abs       8 #00000008 -   335
 hasEXPND                          Abs       1 #00000001 -   338
 hasFORM                           Abs       8 #00000008 -   341
 hasHELP                           Abs       4 #00000004 -   329
 hasINTG                           Abs       4 #00000004 -   342
 hasINV                            Abs       4 #00000004 -   336
 hasPDATA                          Abs       1 #00000001 -   332
 hasPROMPTM                        Abs       4 #00000004 -   330
 hasVUNS                           Abs       1 #00000001 -   344
 hasWHERE                          Abs       2 #00000002 -   343
 nonALG                            Abs       8 #00000008 -   328
 pdCM                              Abs       6 #00000006 -   353
 pdEQ                              Abs       7 #00000007 -   354
 pdEX                              Abs       0 #00000000 -   347
 pdLP                              Abs       4 #00000004 -   351
 pdOP                              Abs       1 #00000001 -   348
 pdOS0                             Abs       8 #00000008 -   355
 pdOS1                             Abs       9 #00000009 -   356
 pdOS2                             Abs      10 #0000000A -   357
 pdOS3                             Abs      11 #0000000B -   358
 pdOS4                             Abs      12 #0000000C -   359
 pdOS5                             Abs      13 #0000000D -   360
 pdOS6                             Abs      14 #0000000E -   361
 pdOS7                             Abs      15 #0000000F -   362
 pdQE                              Abs       2 #00000002 -   349
 pdQN                              Abs       3 #00000003 -   350
 pdRP                              Abs       5 #00000005 -   352
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Statistics                         FLD_M_MSGHNDLR Page    3

Input Parameters

  Source file name is FLD_M_MSGHNDLR.a

  Listing file name is FLD_M_MSGHNDLR.l

  Object file name is FLD_M_MSGHNDLR.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
