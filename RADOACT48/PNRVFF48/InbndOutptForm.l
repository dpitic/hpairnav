Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)                                      InbndOutptForm Page    1

    1             * File  InbndOutptForm.s        1
    2             * RPL
    3             * File  InbndOutptForm.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\InbndOutptForm.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009
    5             * File  InbndOutptForm.s        3
    6
    7             * File  InbndOutptForm.s        4
    8             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\PNRVFF48\PNRVF48.h
    9
   10             =RomId  EQU     #322
   11             * ROMID set to 322
   12
   13
   14
   15
   16
   17
   18
   19
   20             *|| Resuming file InbndOutptForm.s at line 4
   21             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
   22
   23
   24             * RPL
   25             * insure RPL-mode exit
   26
   27             * ( Rad
   28
   29             * ( %2PI
   30             * ( %PI/24
   31
   32
   33
   34
   35             * ( 1=1Var, 2=2Var Statistic
   36             * ( 1=Histogram, 2=BoxWhisker
   37
   38
   39
   40
   41
   42             * ASSEMBLE
   43             DefSysF64-33 EQU        #00000000
   44             DefSysF32-01 EQU        #04010FF0
   45             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   46             DefSysF97-128 EQU       #00000000
   47
   48             * RPL
   49
   50
   51             * ( solution mode
   52             * ( constants mode
   53             * ( results mode
   54             * ( careful evaluation mode
   55
   56             * ( binary integer wordsize
   57             * must start on nibble boundary
   58             * ( binary integer base
   59             * must follow "fnBinWordS6"
   60
   61             * ( financial BEGIN/END mode
   62             * ( complex number and vector
   63             * mode
   64             * ( angle mode
   65             * must start on a nibble boundary
   66             * ( complex 2D mode
   67             * ( underflow action
   68             * ( overflow action
   69             * ( infinite result action
   70             * ( underflow-negative indicator
   71             * ( underflow-positive indicator
   72             * ( overflow indicator
   73             * ( infinite result indicator
   74             * ( symbolic-comples decompilation
   75             * ( simultaneous plot mode
   76             * ( axis drawing plot mode
   77
   78             * ( connect points mode
   79             * ( graphics cursor type mode
   80             * ( I/O device
   81             * ( print device
   82             * ( I/O data format
   83             * ( variable overwrite mode
   84             * ( double-space print mode
   85             * ( suppress auto CR mode
   86             * ( suppress I/O status messages
   87
   88
   89             * ( clock display mode
   90             * ( clock display format
   91             * ( date format
   92             * ( reschedule unacknowledged
   93             * repeat alarms mode
   94             * ( delete acknowledged non-repeat
   95             * alarms mode
   96
   97             * ( number of decimal digits
   98             * must start on nibble boundary
   99             * ( number display format
  100             * must start on nibble boundary
  101             * ( radix mark
  102             * ( multi-line display mode
  103             * ( show precedence mode
  104             * ( zero out tiny matrix elements
  105
  106             * ( last arguments mode
  107             * ( error beep mode
  108             * ( alarm beep mode
  109             * ( verbose display mode
  110             * ( variable name only mode
  111             * ( 3-way alpha mode
  112             * ( 3-way user keys mode
  113             * ( user keys mode
  114             * ( special parser mode
  115             * ( index wraparound indicator
  116
  117
  118             * ASSEMBLE
  119             SolutionsFl  EQU 1
  120             ConstantsFl  EQU 2
  121             ResultsFl    EQU 3
  122             CarefulFl    EQU 4
  123
  124             BinWordSFl1  EQU 5      must start on a nibble boundary
  125             BinWordSBCt  EQU 6      number of bits
  126             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  127             BinBaseBCt   EQU 2      number of bits
  128
  129             ComVecDiFl1  EQU 15
  130             ComVecDiBCt  EQU 2      number of bits
  131             AngleFl1     EQU 17     must start on a nibble boundary
  132             AngleBCt     EQU 2      number of bits
  133             Complex2DFl  EQU 19
  134             UnderfActFl  EQU 20
  135             OverfActFl   EQU 21
  136             InfResActFl  EQU 22
  137             UnderfNegFl  EQU 23
  138             UnderfPosFl  EQU 24
  139             OverflowFl   EQU 25
  140             InfResultFl  EQU 26
  141
  142             FunctPlotFl  EQU 30
  143             ConnectPtFl  EQU 31
  144             GCursorFl    EQU 32
  145             IODeviceFl   EQU 33
  146             PrintDevFl   EQU 34
  147             IODataFmtFl  EQU 35
  148             OverwriteFl  EQU 36
  149             DblSpaceFl   EQU 37
  150             NoAutoCRFl   EQU 38
  151             NoIOStsMsgFl EQU 39
  152
  153             ClockOnFl    EQU 40
  154             ClockFmtFl   EQU 41
  155             DateFmtFl    EQU 42
  156             ResRepAlmFl  EQU 43
  157             DelNRAlmFl   EQU 44
  158
  159             NumDigsFl1   EQU 45     must start on a nibble boundary
  160             NumDigsBCt   EQU 4      number of bits
  161             NumDispFl1   EQU 49     must start on a nibble boundary
  162             NumDispBCt   EQU 2      number of bits
  163             RadixFl      EQU 51
  164             MultiDispFl  EQU 52
  165             ShowPrecFl   EQU 53
  166
  167             LastArgsFl   EQU 55
  168             ErrorBeepFl  EQU 56
  169             AlarmBeepFl  EQU 57
  170             VerboseFl    EQU 58
  171             FastEqViewFl EQU 59
  172             TriAlphaFl   EQU 60
  173             TriUserFl    EQU 61
  174             UserKeysFl   EQU 62
  175             NoParseFl    EQU 63
  176             IndexWrapFl  EQU 64
  177
  178
  179
  180             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  181             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  182
  183             AngleNib     EQU ((AngleFl1)-1)/4
  184             AngleBit1    EQU ((AngleFl1)-1)%4
  185             AngleBit2    EQU (AngleBit1)+1
  186
  187             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  188             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  189
  190             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  191             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  192
  193             CarefulNib   EQU ((CarefulFl)-1)/4
  194             CarefulBit   EQU ((CarefulFl)-1)%4
  195
  196             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  197             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  198
  199             ClockOnNib   EQU ((ClockOnFl)-1)/4
  200             ClockOnBit   EQU ((ClockOnFl)-1)%4
  201
  202             Complex2DNib EQU ((Complex2DFl)-1)/4
  203             Complex2DBit EQU ((Complex2DFl)-1)%4
  204
  205             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  206             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  207
  208             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  209             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  210
  211             ConstantsNib EQU ((ConstantsFl)-1)/4
  212             ConstantsBit EQU ((ConstantsFl)-1)%4
  213
  214             DateFmtNib   EQU ((DateFmtFl)-1)/4
  215             DateFmtBit   EQU ((DateFmtFl)-1)%4
  216
  217             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  218             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  219
  220             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  221             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  222
  223             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  224             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  225
  226             FastEViewNib EQU ((FastEqViewFl)-1)/4
  227             FastEViewBit EQU ((FastEqViewFl)-1)%4
  228
  229             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  230             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  231
  232             GCursorNib   EQU ((GCursorFl)-1)/4
  233             GCursorBit   EQU ((GCursorFl)-1)%4
  234
  235             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  236             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  237
  238             InfResActNib EQU ((InfResActFl)-1)/4
  239             InfResActBit EQU ((InfResActFl)-1)%4
  240
  241             InfResultNib EQU ((InfResultFl)-1)/4
  242             InfResultBit EQU ((InfResultFl)-1)%4
  243
  244             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  245             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  246
  247             IODeviceNib  EQU ((IODeviceFl)-1)/4
  248             IODeviceBit  EQU ((IODeviceFl)-1)%4
  249
  250             LastArgsNib  EQU ((LastArgsFl)-1)/4
  251             LastArgsBit  EQU ((LastArgsFl)-1)%4
  252
  253             VerboseNib   EQU ((VerboseFl)-1)/4
  254             VerboseBit   EQU ((VerboseFl)-1)%4
  255
  256             MultiDispNib EQU ((MultiDispFl)-1)/4
  257             MultiDispBit EQU ((MultiDispFl)-1)%4
  258
  259             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  260             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  261
  262             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  263             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  264
  265             NoParseNib   EQU ((NoParseFl)-1)/4
  266             NoParseBit   EQU ((NoParseFl)-1)%4
  267
  268             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  269             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  270
  271             NumDispNib   EQU ((NumDispFl1)-1)/4
  272             NumDispBit1  EQU ((NumDispFl1)-1)%4
  273
  274             OverfActNib  EQU ((OverfActFl)-1)/4
  275             OverfActBit  EQU ((OverfActFl)-1)%4
  276
  277             OverflowNib  EQU ((OverflowFl)-1)/4
  278             OverflowBit  EQU ((OverflowFl)-1)%4
  279
  280             OverwriteNib EQU ((OverwriteFl)-1)/4
  281             OverwriteBit EQU ((OverwriteFl)-1)%4
  282
  283             PrintDevNib  EQU ((PrintDevFl)-1)/4
  284             PrintDevBit  EQU ((PrintDevFl)-1)%4
  285
  286             RadixNib     EQU ((RadixFl)-1)/4
  287             RadixBit     EQU ((RadixFl)-1)%4
  288
  289             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  290             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  291
  292             ResultsNib   EQU ((ResultsFl)-1)/4
  293             ResultsBit   EQU ((ResultsFl)-1)%4
  294
  295             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  296             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  297
  298             SolutionsNib EQU ((SolutionsFl)-1)/4
  299             SolutionsBit EQU ((SolutionsFl)-1)%4
  300
  301             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  302             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  303
  304             TriUserNib   EQU ((TriUserFl)-1)/4
  305             TriUserBit   EQU ((TriUserFl)-1)%4
  306
  307             UnderfActNib EQU ((UnderfActFl)-1)/4
  308             UnderfActBit EQU ((UnderfActFl)-1)%4
  309
  310             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  311             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  312
  313             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  314             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  315
  316             UserKeysNib  EQU ((UserKeysFl)-1)/4
  317             UserKeysBit  EQU ((UserKeysFl)-1)%4
  318
  319             * RPL
  320             * RPL
  321             * insure RPL-mode exit
  322
  323
  324             * ASSEMBLE
  325
  326
  327             nonALG EQU 8                    not-allowed-in-algebraics flag
  328             hasHELP EQU 4                   has-help-data flag
  329             hasPROMPTM EQU 4                same as above
  330             hasALIAS EQU 2                  has-algebraic-alias flag
  331             hasPDATA EQU 1                  has-parse-data flag
  332
  333
  334             hasDER EQU 8                    has-derivative flag
  335             hasINV EQU 4                    has-inverse flag
  336             hasCOLCT EQU 2                  has-COLCT-data flag
  337             hasEXPND EQU 1                  has-EXPND-data flag
  338
  339
  340             hasFORM EQU 8                   has-FORM-menu flag
  341             hasINTG EQU 4                   has-Integral-data flag
  342             hasWHERE EQU 2                  has-WHERE-code flag
  343             hasVUNS EQU 1                   has-veryunsymin-code flag
  344
  345
  346             pdEX EQU #0             general expression
  347             pdOP EQU #1             operator
  348             pdQE EQU #2             quoted expression
  349             pdQN EQU #3             quoted name
  350             pdLP EQU #4             left parenthesis
  351             pdRP EQU #5             right parenthesis
  352             pdCM EQU #6             comma (non-radix)
  353             pdEQ EQU #7             equal-sign separator
  354             pdOS0 EQU #8            optional repeat 0
  355             pdOS1 EQU #9            optional repeat 1
  356             pdOS2 EQU #A            optional repeat 2
  357             pdOS3 EQU #B            optional repeat 3
  358             pdOS4 EQU #C            optional repeat 4
  359             pdOS5 EQU #D            optional repeat 5
  360             pdOS6 EQU #E            optional repeat 6
  361             pdOS7 EQU #F            optional repeat 7
  362
  363             * RPL
  364             * RPL
  365             * insure RPL-mode exit
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
  380
  381
  382
  383             * RPL
  384             * insure RPL-mode exit
  385
  386             * RPL
  387             * insure RPL-mode exit
  388
  389
  390
  391
  392
  393
  394
  395
  396
  397             * ( for internal use only
  398
  399
  400
  401
  402
  403
  404
  405
  406
  407
  408             * ( decimal 67
  409             * ( decimal 86
  410             * ( decimal 82
  411             * ( decimal 85
  412             * ( decimal 101
  413             * ( decimal 97
  414             * ( decimal 100
  415             * ( decimal 113
  416             * ( decimal 112
  417
  418             * ( check width
  419             * ( field character width
  420
  421             * ( decimal 67
  422             * ( decimal 85
  423             * ( decimal 97
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
  438
  439
  440
  441             * RPL
  442             * insure RPL-mode exit
  443
  444             * ( decimal 66
  445             * ( decimal 67
  446             * ( decimal 69
  447             * ( decimal 82
  448             * ( decimal 83
  449             * ( decimal 84
  450             * ( decimal 85
  451             * ( decimal 86
  452             * ( decimal 87
  453
  454
  455             * ( norm-view default visible row count
  456             * ( default first row X location
  457             * ( default first row Y location
  458             * ( default row width
  459             * ( default row height
  460
  461             * ( max-view width
  462             * ( max-view height
  463             * ( max-view default visible row count
  464
  465             * ( prompt area height
  466
  467             * ( more-up/down icon width
  468
  469
  470
  471             * RPL
  472             * insure RPL-mode exit
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
  685
  686
  687
  688             * RPL
  689             * insure RPL-mode exit
  690
  691
  692
  693             * ( set for informations
  694             * ( set for step by step mode on
  695             * ( internal use: true if VXXL success
  696             * ( set for no gcd computations
  697             * ( set for complex mode
  698             * ( internal use:       LN->-INV[-LN]]
  699             * ( set for approx mode
  700             * ( set for TSIMP call inside SERIES
  701             * ( internal use:       modular computation
  702             * ( internal use:       testing remainder=0
  703             * ( set to allow numeric factorization
  704             * ( set for large matrices
  705             * ( set: don't simplify inside non rational operation
  706             * ( set to see i as an irrquad c=-1
  707             * ( set to disable linearity simplif.
  708             * ( set for increasing power x+1 -> 1+x
  709             * ( internal use:       sqrt not as irrquad
  710             * ( set if sin are prefered to cos
  711             * ( set for menu as choosebox
  712             * ( set if xINT is not simplified
  713             * ( set if non rigourous mode
  714             * ( set to allow silent mode switch
  715             * ( set if xLN returns LN[ABS[]]
  716
  717
  718             * ASSEMBLE
  719
  720             MultiLineFl     EQU     65
  721             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  722             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  723             MultiLineStringsFl      EQU     66
  724             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  725             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  726             DigitalClockFl  EQU     67
  727             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  728             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  729             CmdAutoIndentFl EQU     68
  730             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  731             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  732             FullScreenEditFl        EQU     69
  733             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  734             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  735             MultiLine2GROBFl        EQU     70
  736             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  737             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  738             DesasmWithAdrFl EQU     71
  739             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  740             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  741             BigFontStackFl  EQU     72
  742             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  743             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  744             BigFontCmdFl    EQU     73
  745             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  746             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  747             RightJustifiedStackFl   EQU     74
  748             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  749             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  750             KeystrokeBeepFl EQU     75
  751             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  752             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  753             FilerConfirmationFl     EQU     76
  754             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  755             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  756             FilerConfirmFl  EQU     77
  757             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  758             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  759             KernelParamFl   EQU     78
  760             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  761             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  762             PrettyPrintFl   EQU     79
  763             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  764             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  765             SmallFontEQWStackFl     EQU     80
  766             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  767             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  768             SmallFontEQWGrobFl      EQU     81
  769             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  770             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  771             SmallFontEQWEditFl      EQU     82
  772             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  773             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  774             GrobDisplayFl   EQU     83
  775             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  776             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  777             MKSmallFontMenuFl       EQU     84
  778             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  779             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  780             SystemRPLStackFl        EQU     85
  781             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  782             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  783             MASDDecompilerFl        EQU     86
  784             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  785             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  786             RecursiveStackFl        EQU     87
  787             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  788             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  789             RecursiveEditFl EQU     88
  790             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  791             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  792             AddressesCLEFl  EQU     89
  793             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  794             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  795             SmallFontChooseFl       EQU     90
  796             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  797             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  798             ArrayOnlyFl     EQU     91
  799             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  800             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  801             MLMASDModeFl    EQU     92
  802             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  803             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  804             ErableHeaderFl  EQU     93
  805             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  806             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  807             AutoSaveFl      EQU     94
  808             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  809             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  810             AlgebraicModeFl EQU     95
  811             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  812             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  813             MenuOnFl        EQU     96
  814             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  815             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  816             VerticalListFl  EQU     97
  817             VerticalListNib EQU     ((VerticalListFl)-1)/4
  818             VerticalListBit EQU     ((VerticalListFl)-1)%4
  819             VerticalVectorFl        EQU     98
  820             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  821             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  822
  823
  824             ComplexFl       EQU     103
  825             ComplexNib      EQU     ((ComplexFl)-1)/4
  826             ComplexBit      EQU     ((ComplexFl)-1)%4
  827
  828
  829             ExactModeFl     EQU     105
  830             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  831             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  832
  833
  834             * RPL
  835
  836
  837
  838             * ASSEMBLE
  839                     SETLIST CODE, INCLUDE, PSEUDO
  840             * RPL
  841
  842             *|| Resuming file InbndOutptForm.s at line 5
  843             * ( HP48
  844             * File  InbndOutptForm.s        9
  845 00000       =InbndOutptForm
  846             * File  InbndOutptForm.s        10
  847 00000 00000         CON(5)  =DOCOL
  848             * Label definitions
  849             * File  InbndOutptForm.s        12
  850 00005 00000         CON(5)  =DOCSTR
  851 0000A F0000         CON(5)  15
  852 0000F 84447         NIBASC  \HDG2:\
            423A3
  853 00019 00000         CON(5)  =ONE
  854 0001E 00000         CON(5)  =TEN
  855             * File  InbndOutptForm.s        13
  856 00023 00000         CON(5)  =DOCSTR
  857 00028 B0000         CON(5)  11
  858 0002D 3523A         NIBASC  \S2:\
            3
  859 00033 00000         CON(5)  =ONE
  860 00038 00000         CON(5)  =NINETEEN
  861             * File  InbndOutptForm.s        14
  862 0003D 00000         CON(5)  =DOCSTR
  863 00042 F0000         CON(5)  15
  864 00047 35742         NIBASC  \SGR2:\
            523A3
  865 00051 00000         CON(5)  =ONE
  866 00056 00000         CON(5)  =TWENTYEIGHT
  867             * File  InbndOutptForm.s        15
  868
  869             * Field definitions
  870             * File  InbndOutptForm.s        17
  871             * Field HDG2 definition
  872             * File  InbndOutptForm.s        18
  873 0005B 00000         CON(5)  ='DROPFALSE
  874             * Message handler
  875             * File  InbndOutptForm.s        19
  876 00060 00000         CON(5)  =TWENTYFIVE
  877 00065 00000         CON(5)  =EIGHT
  878 0006A 00000         CON(5)  =DOBINT
  879 0006F 76000         CON(5)  103
  880 00074 00000         CON(5)  =NINE
  881             * Position & size
  882             * File  InbndOutptForm.s        20
  883 00079 00000         CON(5)  =ONE
  884             * Field type TEXT
  885             * File  InbndOutptForm.s        21
  886 0007E 00000         CON(5)  =DOLIST
  887 00083 00000         CON(5)  =ZERO
  888 00088 00000         CON(5)  =SEMI
  889             * Allowed types REAL
  890             * File  InbndOutptForm.s        22
  891 0008D 00000         CON(5)  =TWO
  892             * Decompile
  893             * File  InbndOutptForm.s        23
  894 00092 00000         CON(5)  =DOCSTR
  895 00097 32000         CON(5)  35
  896 0009C 84541         NIBASC  \HEADING INBOUND\
            44494
            E4740294E424F455E444

  897             * Help string
  898             * File  InbndOutptForm.s        24
  899 000BA 00000         CON(5)  =MINUSONE
  900             * Choose data N/A
  901             * File  InbndOutptForm.s        25
  902 000BF 00000         CON(5)  =MINUSONE
  903             * Choose decompile N/A
  904             * File  InbndOutptForm.s        26
  905 000C4 00000         CON(5)  =DOIDNT
  906 000C9 40            CON(2)  4
  907 000CB 84447         NIBASC  \HDG2\
            423
  908             * Reset value
  909             * File  InbndOutptForm.s        27
  910 000D3 00000         CON(5)  =DOIDNT
  911 000D8 40            CON(2)  4
  912 000DA 84447         NIBASC  \HDG2\
            423
  913             * Initial value
  914             * File  InbndOutptForm.s        28
  915
  916             * File  InbndOutptForm.s        29
  917             * Field S2 definition
  918             * File  InbndOutptForm.s        30
  919 000E2 00000         CON(5)  ='DROPFALSE
  920             * Message handler
  921             * File  InbndOutptForm.s        31
  922 000E7 00000         CON(5)  =TWENTYFIVE
  923 000EC 00000         CON(5)  =SEVENTEEN
  924 000F1 00000         CON(5)  =DOBINT
  925 000F6 76000         CON(5)  103
  926 000FB 00000         CON(5)  =NINE
  927             * Position & size
  928             * File  InbndOutptForm.s        32
  929 00100 00000         CON(5)  =ONE
  930             * Field type TEXT
  931             * File  InbndOutptForm.s        33
  932 00105 00000         CON(5)  =DOLIST
  933 0010A 00000         CON(5)  =ZERO
  934 0010F 00000         CON(5)  =SEMI
  935             * Allowed types REAL
  936             * File  InbndOutptForm.s        34
  937 00114 00000         CON(5)  =TWO
  938             * Decompile
  939             * File  InbndOutptForm.s        35
  940 00119 00000         CON(5)  =DOCSTR
  941 0011E D2000         CON(5)  45
  942 00123 7425F         NIBASC  \GROUND SPEED INBOUND\
            455E4
            440235055454440294E424F455E444

  943             * Help string
  944             * File  InbndOutptForm.s        36
  945 0014B 00000         CON(5)  =MINUSONE
  946             * Choose data N/A
  947             * File  InbndOutptForm.s        37
  948 00150 00000         CON(5)  =MINUSONE
  949             * Choose decompile N/A
  950             * File  InbndOutptForm.s        38
  951 00155 00000         CON(5)  =DOIDNT
  952 0015A 20            CON(2)  2
  953 0015C 3523          NIBASC  \S2\
  954             * Reset value
  955             * File  InbndOutptForm.s        39
  956 00160 00000         CON(5)  =DOIDNT
  957 00165 20            CON(2)  2
  958 00167 3523          NIBASC  \S2\
  959             * Initial value
  960             * File  InbndOutptForm.s        40
  961
  962             * File  InbndOutptForm.s        41
  963             * Field SGR2 definition
  964             * File  InbndOutptForm.s        42
  965 0016B 00000         CON(5)  ='DROPFALSE
  966             * Message handler
  967             * File  InbndOutptForm.s        43
  968 00170 00000         CON(5)  =TWENTYFIVE
  969 00175 00000         CON(5)  =TWENTYSIX
  970 0017A 00000         CON(5)  =DOBINT
  971 0017F 76000         CON(5)  103
  972 00184 00000         CON(5)  =NINE
  973             * Position & size
  974             * File  InbndOutptForm.s        44
  975 00189 00000         CON(5)  =ONE
  976             * Field type TEXT
  977             * File  InbndOutptForm.s        45
  978 0018E 00000         CON(5)  =DOLIST
  979 00193 00000         CON(5)  =ZERO
  980 00198 00000         CON(5)  =SEMI
  981             * Allowed types REAL
  982             * File  InbndOutptForm.s        46
  983 0019D 00000         CON(5)  =TWO
  984             * Decompile
  985             * File  InbndOutptForm.s        47
  986 001A2 00000         CON(5)  =DOCSTR
  987 001A7 93000         CON(5)  57
  988 001AC 35055         NIBASC  \SPEC. GND. RANGE (IN\
            434E2
            0274E444E2022514E47454028294E4

  989 001D4 24F45         NIBASC  \BOUND)\
            5E444
            92
  990             * Help string
  991             * File  InbndOutptForm.s        48
  992 001E0 00000         CON(5)  =MINUSONE
  993             * Choose data N/A
  994             * File  InbndOutptForm.s        49
  995 001E5 00000         CON(5)  =MINUSONE
  996             * Choose decompile N/A
  997             * File  InbndOutptForm.s        50
  998 001EA 00000         CON(5)  =DOIDNT
  999 001EF 40            CON(2)  4
 1000 001F1 35742         NIBASC  \SGR2\
            523
 1001             * Reset value
 1002             * File  InbndOutptForm.s        51
 1003 001F9 00000         CON(5)  =DOIDNT
 1004 001FE 40            CON(2)  4
 1005 00200 35742         NIBASC  \SGR2\
            523
 1006             * Initial value
 1007             * File  InbndOutptForm.s        52
 1008
 1009             * File  InbndOutptForm.s        53
 1010 00208 00000         CON(5)  =THREE
 1011 0020D 00000         CON(5)  =THREE
 1012             * #labels #fields
 1013             * File  InbndOutptForm.s        54
 1014 00212 00000         CON(5)  ='DROPFALSE
 1015             * Message handler
 1016             * File  InbndOutptForm.s        55
 1017 00217 00000         CON(5)  =DOCSTR
 1018 0021C 73000         CON(5)  55
 1019 00221 05E42         NIBASC  \PNR: OUTPUT 2/2 - IN\
            5A302
            F455450555450223F22302D20294E4

 1020 00249 24F45         NIBASC  \BOUND\
            5E444
 1021             * Title
 1022             *               FLASHPTR IfMain                  ( HP50 )
 1023             * File  InbndOutptForm.s        57
 1024 00253 00000         CON(5)  =DoInputForm
 1025             * HP48, HP50
 1026             * File  InbndOutptForm.s        58
 1027 00258 00000         CON(5)  =SEMI
Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)   Symbol Table                       InbndOutptForm Page    2

 'DROPFALSE                        Ext                   -   873   919   965
                                        1014
 AddressesCLEBit                   Abs       0 #00000000 -   794
 AddressesCLEFl                    Abs      89 #00000059 -   792   793   794
 AddressesCLENib                   Abs      22 #00000016 -   793
 AlarmBeepBit                      Abs       0 #00000000 -   181
 AlarmBeepFl                       Abs      57 #00000039 -   169   180   181
 AlarmBeepNib                      Abs      14 #0000000E -   180
 AlgebraicModeBit                  Abs       2 #00000002 -   812
 AlgebraicModeFl                   Abs      95 #0000005F -   810   811   812
 AlgebraicModeNib                  Abs      23 #00000017 -   811
 AngleBCt                          Abs       2 #00000002 -   132
 AngleBit1                         Abs       0 #00000000 -   184   185
 AngleBit2                         Abs       1 #00000001 -   185
 AngleFl1                          Abs      17 #00000011 -   131   183   184
 AngleNib                          Abs       4 #00000004 -   183
 ArrayOnlyBit                      Abs       2 #00000002 -   800
 ArrayOnlyFl                       Abs      91 #0000005B -   798   799   800
 ArrayOnlyNib                      Abs      22 #00000016 -   799
 AutoSaveBit                       Abs       1 #00000001 -   809
 AutoSaveFl                        Abs      94 #0000005E -   807   808   809
 AutoSaveNib                       Abs      23 #00000017 -   808
 BigFontCmdBit                     Abs       0 #00000000 -   746
 BigFontCmdFl                      Abs      73 #00000049 -   744   745   746
 BigFontCmdNib                     Abs      18 #00000012 -   745
 BigFontStackBit                   Abs       3 #00000003 -   743
 BigFontStackFl                    Abs      72 #00000048 -   741   742   743
 BigFontStackNib                   Abs      17 #00000011 -   742
 BinBaseBCt                        Abs       2 #00000002 -   127
 BinBaseBit1                       Abs       2 #00000002 -   188
 BinBaseFl1                        Abs      11 #0000000B -   126   187   188
 BinBaseNib                        Abs       2 #00000002 -   187
 BinWordSBCt                       Abs       6 #00000006 -   125
 BinWordSBit1                      Abs       0 #00000000 -   191
 BinWordSFl1                       Abs       5 #00000005 -   124   190   191
 BinWordSNib                       Abs       1 #00000001 -   190
 CarefulBit                        Abs       3 #00000003 -   194
 CarefulFl                         Abs       4 #00000004 -   122   193   194
 CarefulNib                        Abs       0 #00000000 -   193
 ClockFmtBit                       Abs       0 #00000000 -   197
 ClockFmtFl                        Abs      41 #00000029 -   154   196   197
 ClockFmtNib                       Abs      10 #0000000A -   196
 ClockOnBit                        Abs       3 #00000003 -   200
 ClockOnFl                         Abs      40 #00000028 -   153   199   200
 ClockOnNib                        Abs       9 #00000009 -   199
 CmdAutoIndentBit                  Abs       3 #00000003 -   731
 CmdAutoIndentFl                   Abs      68 #00000044 -   729   730   731
 CmdAutoIndentNib                  Abs      16 #00000010 -   730
 ComVecDiBCt                       Abs       2 #00000002 -   130
 ComVecDiBit1                      Abs       2 #00000002 -   206
 ComVecDiFl1                       Abs      15 #0000000F -   129   205   206
 ComVecDiNib                       Abs       3 #00000003 -   205
 Complex2DBit                      Abs       2 #00000002 -   203
 Complex2DFl                       Abs      19 #00000013 -   133   202   203
 Complex2DNib                      Abs       4 #00000004 -   202
 ComplexBit                        Abs       2 #00000002 -   826
 ComplexFl                         Abs     103 #00000067 -   824   825   826
 ComplexNib                        Abs      25 #00000019 -   825
 ConnectPtBit                      Abs       2 #00000002 -   209
 ConnectPtFl                       Abs      31 #0000001F -   143   208   209
 ConnectPtNib                      Abs       7 #00000007 -   208
 ConstantsBit                      Abs       1 #00000001 -   212
 ConstantsFl                       Abs       2 #00000002 -   120   211   212
 ConstantsNib                      Abs       0 #00000000 -   211
 DOBINT                            Ext                   -   878   924   970
 DOCOL                             Ext                   -   847
 DOCSTR                            Ext                   -   850   856   862
                                         894   940   986  1017
 DOIDNT                            Ext                   -   905   910   951
                                         956   998  1003
 DOLIST                            Ext                   -   886   932   978
 DateFmtBit                        Abs       1 #00000001 -   215
 DateFmtFl                         Abs      42 #0000002A -   155   214   215
 DateFmtNib                        Abs      10 #0000000A -   214
 DblSpaceBit                       Abs       0 #00000000 -   218
 DblSpaceFl                        Abs      37 #00000025 -   149   217   218
 DblSpaceNib                       Abs       9 #00000009 -   217
 DefSysF32-01                      Abs67178480 #04010FF0 -    44
 DefSysF64-33                      Abs       0 #00000000 -    43
 DefSysF65-96                      Abs1107296256 #42000000 -    45
 DefSysF97-128                     Abs       0 #00000000 -    46
 DelNRAlmBit                       Abs       3 #00000003 -   221
 DelNRAlmFl                        Abs      44 #0000002C -   157   220   221
 DelNRAlmNib                       Abs      10 #0000000A -   220
 DesasmWithAdrBit                  Abs       2 #00000002 -   740
 DesasmWithAdrFl                   Abs      71 #00000047 -   738   739   740
 DesasmWithAdrNib                  Abs      17 #00000011 -   739
 DigitalClockBit                   Abs       2 #00000002 -   728
 DigitalClockFl                    Abs      67 #00000043 -   726   727   728
 DigitalClockNib                   Abs      16 #00000010 -   727
 DoInputForm                       Ext                   -  1024
 EIGHT                             Ext                   -   877
 ErableHeaderBit                   Abs       0 #00000000 -   806
 ErableHeaderFl                    Abs      93 #0000005D -   804   805   806
 ErableHeaderNib                   Abs      23 #00000017 -   805
 ErrorBeepBit                      Abs       3 #00000003 -   224
 ErrorBeepFl                       Abs      56 #00000038 -   168   223   224
 ErrorBeepNib                      Abs      13 #0000000D -   223
 ExactModeBit                      Abs       0 #00000000 -   831
 ExactModeFl                       Abs     105 #00000069 -   829   830   831
 ExactModeNib                      Abs      26 #0000001A -   830
 FastEViewBit                      Abs       2 #00000002 -   227
 FastEViewNib                      Abs      14 #0000000E -   226
 FastEqViewFl                      Abs      59 #0000003B -   171   226   227
 FilerConfirmBit                   Abs       0 #00000000 -   758
 FilerConfirmFl                    Abs      77 #0000004D -   756   757   758
 FilerConfirmNib                   Abs      19 #00000013 -   757
 FilerConfirmationBit              Abs       3 #00000003 -   755
 FilerConfirmationFl               Abs      76 #0000004C -   753   754   755
 FilerConfirmationNib              Abs      18 #00000012 -   754
 FullScreenEditBit                 Abs       0 #00000000 -   734
 FullScreenEditFl                  Abs      69 #00000045 -   732   733   734
 FullScreenEditNib                 Abs      17 #00000011 -   733
 FunctPlotBit                      Abs       1 #00000001 -   230
 FunctPlotFl                       Abs      30 #0000001E -   142   229   230
 FunctPlotNib                      Abs       7 #00000007 -   229
 GCursorBit                        Abs       3 #00000003 -   233
 GCursorFl                         Abs      32 #00000020 -   144   232   233
 GCursorNib                        Abs       7 #00000007 -   232
 GrobDisplayBit                    Abs       2 #00000002 -   776
 GrobDisplayFl                     Abs      83 #00000053 -   774   775   776
 GrobDisplayNib                    Abs      20 #00000014 -   775
 IODataFmtBit                      Abs       2 #00000002 -   245
 IODataFmtFl                       Abs      35 #00000023 -   147   244   245
 IODataFmtNib                      Abs       8 #00000008 -   244
 IODeviceBit                       Abs       0 #00000000 -   248
 IODeviceFl                        Abs      33 #00000021 -   145   247   248
 IODeviceNib                       Abs       8 #00000008 -   247
=InbndOutptForm                    Rel       0 #00000000 -   845
 IndexWrapBit                      Abs       3 #00000003 -   236
 IndexWrapFl                       Abs      64 #00000040 -   176   235   236
 IndexWrapNib                      Abs      15 #0000000F -   235
 InfResActBit                      Abs       1 #00000001 -   239
 InfResActFl                       Abs      22 #00000016 -   136   238   239
 InfResActNib                      Abs       5 #00000005 -   238
 InfResultBit                      Abs       1 #00000001 -   242
 InfResultFl                       Abs      26 #0000001A -   140   241   242
 InfResultNib                      Abs       6 #00000006 -   241
 KernelParamBit                    Abs       1 #00000001 -   761
 KernelParamFl                     Abs      78 #0000004E -   759   760   761
 KernelParamNib                    Abs      19 #00000013 -   760
 KeystrokeBeepBit                  Abs       2 #00000002 -   752
 KeystrokeBeepFl                   Abs      75 #0000004B -   750   751   752
 KeystrokeBeepNib                  Abs      18 #00000012 -   751
 LastArgsBit                       Abs       2 #00000002 -   251
 LastArgsFl                        Abs      55 #00000037 -   167   250   251
 LastArgsNib                       Abs      13 #0000000D -   250
 MASDDecompilerBit                 Abs       1 #00000001 -   785
 MASDDecompilerFl                  Abs      86 #00000056 -   783   784   785
 MASDDecompilerNib                 Abs      21 #00000015 -   784
 MINUSONE                          Ext                   -   899   902   945
                                         948   992   995
 MKSmallFontMenuBit                Abs       3 #00000003 -   779
 MKSmallFontMenuFl                 Abs      84 #00000054 -   777   778   779
 MKSmallFontMenuNib                Abs      20 #00000014 -   778
 MLMASDModeBit                     Abs       3 #00000003 -   803
 MLMASDModeFl                      Abs      92 #0000005C -   801   802   803
 MLMASDModeNib                     Abs      22 #00000016 -   802
 MenuOnBit                         Abs       3 #00000003 -   815
 MenuOnFl                          Abs      96 #00000060 -   813   814   815
 MenuOnNib                         Abs      23 #00000017 -   814
 MultiDispBit                      Abs       3 #00000003 -   257
 MultiDispFl                       Abs      52 #00000034 -   164   256   257
 MultiDispNib                      Abs      12 #0000000C -   256
 MultiLine2GROBBit                 Abs       1 #00000001 -   737
 MultiLine2GROBFl                  Abs      70 #00000046 -   735   736   737
 MultiLine2GROBNib                 Abs      17 #00000011 -   736
 MultiLineBit                      Abs       0 #00000000 -   722
 MultiLineFl                       Abs      65 #00000041 -   720   721   722
 MultiLineNib                      Abs      16 #00000010 -   721
 MultiLineStringsBit               Abs       1 #00000001 -   725
 MultiLineStringsFl                Abs      66 #00000042 -   723   724   725
 MultiLineStringsNib               Abs      16 #00000010 -   724
 NINE                              Ext                   -   880   926   972
 NINETEEN                          Ext                   -   860
 NoAutoCRBit                       Abs       1 #00000001 -   260
 NoAutoCRFl                        Abs      38 #00000026 -   150   259   260
 NoAutoCRNib                       Abs       9 #00000009 -   259
 NoIOStMsgBit                      Abs       2 #00000002 -   263
 NoIOStMsgNib                      Abs       9 #00000009 -   262
 NoIOStsMsgFl                      Abs      39 #00000027 -   151   262   263
 NoParseBit                        Abs       2 #00000002 -   266
 NoParseFl                         Abs      63 #0000003F -   175   265   266
 NoParseNib                        Abs      15 #0000000F -   265
 NumDigsBCt                        Abs       4 #00000004 -   160
 NumDigsBit1                       Abs       0 #00000000 -   269
 NumDigsFl1                        Abs      45 #0000002D -   159   268   269
 NumDigsNib                        Abs      11 #0000000B -   268
 NumDispBCt                        Abs       2 #00000002 -   162
 NumDispBit1                       Abs       0 #00000000 -   272
 NumDispFl1                        Abs      49 #00000031 -   161   271   272
 NumDispNib                        Abs      12 #0000000C -   271
 ONE                               Ext                   -   853   859   865
                                         883   929   975
 OverfActBit                       Abs       0 #00000000 -   275
 OverfActFl                        Abs      21 #00000015 -   135   274   275
 OverfActNib                       Abs       5 #00000005 -   274
 OverflowBit                       Abs       0 #00000000 -   278
 OverflowFl                        Abs      25 #00000019 -   139   277   278
 OverflowNib                       Abs       6 #00000006 -   277
 OverwriteBit                      Abs       3 #00000003 -   281
 OverwriteFl                       Abs      36 #00000024 -   148   280   281
 OverwriteNib                      Abs       8 #00000008 -   280
 PrettyPrintBit                    Abs       2 #00000002 -   764
 PrettyPrintFl                     Abs      79 #0000004F -   762   763   764
 PrettyPrintNib                    Abs      19 #00000013 -   763
 PrintDevBit                       Abs       1 #00000001 -   284
 PrintDevFl                        Abs      34 #00000022 -   146   283   284
 PrintDevNib                       Abs       8 #00000008 -   283
 RadixBit                          Abs       2 #00000002 -   287
 RadixFl                           Abs      51 #00000033 -   163   286   287
 RadixNib                          Abs      12 #0000000C -   286
 RecursiveEditBit                  Abs       3 #00000003 -   791
 RecursiveEditFl                   Abs      88 #00000058 -   789   790   791
 RecursiveEditNib                  Abs      21 #00000015 -   790
 RecursiveStackBit                 Abs       2 #00000002 -   788
 RecursiveStackFl                  Abs      87 #00000057 -   786   787   788
 RecursiveStackNib                 Abs      21 #00000015 -   787
 ResRepAlmBit                      Abs       2 #00000002 -   290
 ResRepAlmFl                       Abs      43 #0000002B -   156   289   290
 ResRepAlmNib                      Abs      10 #0000000A -   289
 ResultsBit                        Abs       2 #00000002 -   293
 ResultsFl                         Abs       3 #00000003 -   121   292   293
 ResultsNib                        Abs       0 #00000000 -   292
 RightJustifiedStackBit            Abs       1 #00000001 -   749
 RightJustifiedStackFl             Abs      74 #0000004A -   747   748   749
 RightJustifiedStackNib            Abs      18 #00000012 -   748
=RomId                             Abs     802 #00000322 -    10
 SEMI                              Ext                   -   888   934   980
                                        1027
 SEVENTEEN                         Ext                   -   923
 ShowPrecBit                       Abs       0 #00000000 -   296
 ShowPrecFl                        Abs      53 #00000035 -   165   295   296
 ShowPrecNib                       Abs      13 #0000000D -   295
 SmallFontChooseBit                Abs       1 #00000001 -   797
 SmallFontChooseFl                 Abs      90 #0000005A -   795   796   797
 SmallFontChooseNib                Abs      22 #00000016 -   796
 SmallFontEQWEditBit               Abs       1 #00000001 -   773
 SmallFontEQWEditFl                Abs      82 #00000052 -   771   772   773
 SmallFontEQWEditNib               Abs      20 #00000014 -   772
 SmallFontEQWGrobBit               Abs       0 #00000000 -   770
 SmallFontEQWGrobFl                Abs      81 #00000051 -   768   769   770
 SmallFontEQWGrobNib               Abs      20 #00000014 -   769
 SmallFontEQWStackBit              Abs       3 #00000003 -   767
 SmallFontEQWStackFl               Abs      80 #00000050 -   765   766   767
 SmallFontEQWStackNib              Abs      19 #00000013 -   766
 SolutionsBit                      Abs       0 #00000000 -   299
 SolutionsFl                       Abs       1 #00000001 -   119   298   299
 SolutionsNib                      Abs       0 #00000000 -   298
 SystemRPLStackBit                 Abs       0 #00000000 -   782
 SystemRPLStackFl                  Abs      85 #00000055 -   780   781   782
 SystemRPLStackNib                 Abs      21 #00000015 -   781
 TEN                               Ext                   -   854
 THREE                             Ext                   -  1010  1011
 TWENTYEIGHT                       Ext                   -   866
 TWENTYFIVE                        Ext                   -   876   922   968
 TWENTYSIX                         Ext                   -   969
 TWO                               Ext                   -   891   937   983
 TriAlphaBit                       Abs       3 #00000003 -   302
 TriAlphaFl                        Abs      60 #0000003C -   172   301   302
 TriAlphaNib                       Abs      14 #0000000E -   301
 TriUserBit                        Abs       0 #00000000 -   305
 TriUserFl                         Abs      61 #0000003D -   173   304   305
 TriUserNib                        Abs      15 #0000000F -   304
 UnderfActBit                      Abs       3 #00000003 -   308
 UnderfActFl                       Abs      20 #00000014 -   134   307   308
 UnderfActNib                      Abs       4 #00000004 -   307
 UnderfNegBit                      Abs       2 #00000002 -   311
 UnderfNegFl                       Abs      23 #00000017 -   137   310   311
 UnderfNegNib                      Abs       5 #00000005 -   310
 UnderfPosBit                      Abs       3 #00000003 -   314
 UnderfPosFl                       Abs      24 #00000018 -   138   313   314
 UnderfPosNib                      Abs       5 #00000005 -   313
 UserKeysBit                       Abs       1 #00000001 -   317
 UserKeysFl                        Abs      62 #0000003E -   174   316   317
 UserKeysNib                       Abs      15 #0000000F -   316
 VerboseBit                        Abs       1 #00000001 -   254
 VerboseFl                         Abs      58 #0000003A -   170   253   254
 VerboseNib                        Abs      14 #0000000E -   253
 VerticalListBit                   Abs       0 #00000000 -   818
 VerticalListFl                    Abs      97 #00000061 -   816   817   818
 VerticalListNib                   Abs      24 #00000018 -   817
 VerticalVectorBit                 Abs       1 #00000001 -   821
 VerticalVectorFl                  Abs      98 #00000062 -   819   820   821
 VerticalVectorNib                 Abs      24 #00000018 -   820
 ZERO                              Ext                   -   887   933   979
 hasALIAS                          Abs       2 #00000002 -   330
 hasCOLCT                          Abs       2 #00000002 -   336
 hasDER                            Abs       8 #00000008 -   334
 hasEXPND                          Abs       1 #00000001 -   337
 hasFORM                           Abs       8 #00000008 -   340
 hasHELP                           Abs       4 #00000004 -   328
 hasINTG                           Abs       4 #00000004 -   341
 hasINV                            Abs       4 #00000004 -   335
 hasPDATA                          Abs       1 #00000001 -   331
 hasPROMPTM                        Abs       4 #00000004 -   329
 hasVUNS                           Abs       1 #00000001 -   343
 hasWHERE                          Abs       2 #00000002 -   342
 nonALG                            Abs       8 #00000008 -   327
 pdCM                              Abs       6 #00000006 -   352
 pdEQ                              Abs       7 #00000007 -   353
 pdEX                              Abs       0 #00000000 -   346
 pdLP                              Abs       4 #00000004 -   350
 pdOP                              Abs       1 #00000001 -   347
 pdOS0                             Abs       8 #00000008 -   354
 pdOS1                             Abs       9 #00000009 -   355
 pdOS2                             Abs      10 #0000000A -   356
 pdOS3                             Abs      11 #0000000B -   357
 pdOS4                             Abs      12 #0000000C -   358
 pdOS5                             Abs      13 #0000000D -   359
 pdOS6                             Abs      14 #0000000E -   360
 pdOS7                             Abs      15 #0000000F -   361
 pdQE                              Abs       2 #00000002 -   348
 pdQN                              Abs       3 #00000003 -   349
 pdRP                              Abs       5 #00000005 -   351
Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)   Statistics                         InbndOutptForm Page    3

Input Parameters

  Source file name is InbndOutptForm.a

  Listing file name is InbndOutptForm.l

  Object file name is InbndOutptForm.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
