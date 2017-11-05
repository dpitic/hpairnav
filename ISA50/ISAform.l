Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)                                      ISAform.a      Page    1

    1               * File  ISAform.s       1
    2               * RPL
    3               * File  ISAform.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv2\ISAform.s, part of the ISATM.hpp project, created by <> on 14/04/2009
    5               ********************************************************************
    6               * NAME:            ISAform
    7               * DESCRIPTION:     Generates the INPUT and OUTPUT form for ISA50.
    8               * VERSION:         1.23
    9               * DATE:            10 June 2009
   10               * COMPATIBILITY:   HP50
   11               *
   12               * File  ISAform.s       10
   13               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\informbox.h
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
   24
   25
   26
   27
   28
   29
   30
   31
   32
   33
   34
   35
   36
   37
   38
   39
   40
   41
   42
   43
   44
   45
   46
   47
   48
   49
   50
   51
   52
   53
   54
   55
   56
   57
   58
   59
   60
   61
   62
   63
   64
   65
   66
   67
   68
   69
   70
   71
   72
   73
   74
   75
   76
   77
   78
   79
   80
   81
   82
   83
   84
   85
   86               * Do not modify any of these constants
   87
   88               * Do not modify any of these constants
   89               * ( was zint
   90
   91
   92
   93
   94
   95
   96
   97
   98
   99               *|| Resuming file ISAform.s at line 10
  100               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
  101
  102
  103               * RPL
  104               * insure RPL-mode exit
  105
  106               * ( Rad
  107
  108               * ( %2PI
  109               * ( %PI/24
  110
  111
  112
  113
  114               * ( 1=1Var, 2=2Var Statistic
  115               * ( 1=Histogram, 2=BoxWhisker
  116
  117
  118
  119
  120
  121               * ASSEMBLE
  122               DefSysF64-33 EQU        #00000000
  123               DefSysF32-01 EQU        #04010FF0
  124               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
  125               DefSysF97-128 EQU       #00000000
  126
  127               * RPL
  128
  129
  130               * ( solution mode
  131               * ( constants mode
  132               * ( results mode
  133               * ( careful evaluation mode
  134
  135               * ( binary integer wordsize
  136               * must start on nibble boundary
  137               * ( binary integer base
  138               * must follow "fnBinWordS6"
  139
  140               * ( financial BEGIN/END mode
  141               * ( complex number and vector
  142               * mode
  143               * ( angle mode
  144               * must start on a nibble boundary
  145               * ( complex 2D mode
  146               * ( underflow action
  147               * ( overflow action
  148               * ( infinite result action
  149               * ( underflow-negative indicator
  150               * ( underflow-positive indicator
  151               * ( overflow indicator
  152               * ( infinite result indicator
  153               * ( symbolic-comples decompilation
  154               * ( simultaneous plot mode
  155               * ( axis drawing plot mode
  156
  157               * ( connect points mode
  158               * ( graphics cursor type mode
  159               * ( I/O device
  160               * ( print device
  161               * ( I/O data format
  162               * ( variable overwrite mode
  163               * ( double-space print mode
  164               * ( suppress auto CR mode
  165               * ( suppress I/O status messages
  166
  167
  168               * ( clock display mode
  169               * ( clock display format
  170               * ( date format
  171               * ( reschedule unacknowledged
  172               * repeat alarms mode
  173               * ( delete acknowledged non-repeat
  174               * alarms mode
  175
  176               * ( number of decimal digits
  177               * must start on nibble boundary
  178               * ( number display format
  179               * must start on nibble boundary
  180               * ( radix mark
  181               * ( multi-line display mode
  182               * ( show precedence mode
  183               * ( zero out tiny matrix elements
  184
  185               * ( last arguments mode
  186               * ( error beep mode
  187               * ( alarm beep mode
  188               * ( verbose display mode
  189               * ( variable name only mode
  190               * ( 3-way alpha mode
  191               * ( 3-way user keys mode
  192               * ( user keys mode
  193               * ( special parser mode
  194               * ( index wraparound indicator
  195
  196
  197               * ASSEMBLE
  198               SolutionsFl  EQU 1
  199               ConstantsFl  EQU 2
  200               ResultsFl    EQU 3
  201               CarefulFl    EQU 4
  202
  203               BinWordSFl1  EQU 5      must start on a nibble boundary
  204               BinWordSBCt  EQU 6      number of bits
  205               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  206               BinBaseBCt   EQU 2      number of bits
  207
  208               ComVecDiFl1  EQU 15
  209               ComVecDiBCt  EQU 2      number of bits
  210               AngleFl1     EQU 17     must start on a nibble boundary
  211               AngleBCt     EQU 2      number of bits
  212               Complex2DFl  EQU 19
  213               UnderfActFl  EQU 20
  214               OverfActFl   EQU 21
  215               InfResActFl  EQU 22
  216               UnderfNegFl  EQU 23
  217               UnderfPosFl  EQU 24
  218               OverflowFl   EQU 25
  219               InfResultFl  EQU 26
  220
  221               FunctPlotFl  EQU 30
  222               ConnectPtFl  EQU 31
  223               GCursorFl    EQU 32
  224               IODeviceFl   EQU 33
  225               PrintDevFl   EQU 34
  226               IODataFmtFl  EQU 35
  227               OverwriteFl  EQU 36
  228               DblSpaceFl   EQU 37
  229               NoAutoCRFl   EQU 38
  230               NoIOStsMsgFl EQU 39
  231
  232               ClockOnFl    EQU 40
  233               ClockFmtFl   EQU 41
  234               DateFmtFl    EQU 42
  235               ResRepAlmFl  EQU 43
  236               DelNRAlmFl   EQU 44
  237
  238               NumDigsFl1   EQU 45     must start on a nibble boundary
  239               NumDigsBCt   EQU 4      number of bits
  240               NumDispFl1   EQU 49     must start on a nibble boundary
  241               NumDispBCt   EQU 2      number of bits
  242               RadixFl      EQU 51
  243               MultiDispFl  EQU 52
  244               ShowPrecFl   EQU 53
  245
  246               LastArgsFl   EQU 55
  247               ErrorBeepFl  EQU 56
  248               AlarmBeepFl  EQU 57
  249               VerboseFl    EQU 58
  250               FastEqViewFl EQU 59
  251               TriAlphaFl   EQU 60
  252               TriUserFl    EQU 61
  253               UserKeysFl   EQU 62
  254               NoParseFl    EQU 63
  255               IndexWrapFl  EQU 64
  256
  257
  258
  259               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  260               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  261
  262               AngleNib     EQU ((AngleFl1)-1)/4
  263               AngleBit1    EQU ((AngleFl1)-1)%4
  264               AngleBit2    EQU (AngleBit1)+1
  265
  266               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  267               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  268
  269               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  270               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  271
  272               CarefulNib   EQU ((CarefulFl)-1)/4
  273               CarefulBit   EQU ((CarefulFl)-1)%4
  274
  275               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  276               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  277
  278               ClockOnNib   EQU ((ClockOnFl)-1)/4
  279               ClockOnBit   EQU ((ClockOnFl)-1)%4
  280
  281               Complex2DNib EQU ((Complex2DFl)-1)/4
  282               Complex2DBit EQU ((Complex2DFl)-1)%4
  283
  284               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  285               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  286
  287               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  288               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  289
  290               ConstantsNib EQU ((ConstantsFl)-1)/4
  291               ConstantsBit EQU ((ConstantsFl)-1)%4
  292
  293               DateFmtNib   EQU ((DateFmtFl)-1)/4
  294               DateFmtBit   EQU ((DateFmtFl)-1)%4
  295
  296               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  297               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  298
  299               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  300               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  301
  302               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  303               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  304
  305               FastEViewNib EQU ((FastEqViewFl)-1)/4
  306               FastEViewBit EQU ((FastEqViewFl)-1)%4
  307
  308               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  309               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  310
  311               GCursorNib   EQU ((GCursorFl)-1)/4
  312               GCursorBit   EQU ((GCursorFl)-1)%4
  313
  314               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  315               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  316
  317               InfResActNib EQU ((InfResActFl)-1)/4
  318               InfResActBit EQU ((InfResActFl)-1)%4
  319
  320               InfResultNib EQU ((InfResultFl)-1)/4
  321               InfResultBit EQU ((InfResultFl)-1)%4
  322
  323               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  324               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  325
  326               IODeviceNib  EQU ((IODeviceFl)-1)/4
  327               IODeviceBit  EQU ((IODeviceFl)-1)%4
  328
  329               LastArgsNib  EQU ((LastArgsFl)-1)/4
  330               LastArgsBit  EQU ((LastArgsFl)-1)%4
  331
  332               VerboseNib   EQU ((VerboseFl)-1)/4
  333               VerboseBit   EQU ((VerboseFl)-1)%4
  334
  335               MultiDispNib EQU ((MultiDispFl)-1)/4
  336               MultiDispBit EQU ((MultiDispFl)-1)%4
  337
  338               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  339               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  340
  341               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  342               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  343
  344               NoParseNib   EQU ((NoParseFl)-1)/4
  345               NoParseBit   EQU ((NoParseFl)-1)%4
  346
  347               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  348               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  349
  350               NumDispNib   EQU ((NumDispFl1)-1)/4
  351               NumDispBit1  EQU ((NumDispFl1)-1)%4
  352
  353               OverfActNib  EQU ((OverfActFl)-1)/4
  354               OverfActBit  EQU ((OverfActFl)-1)%4
  355
  356               OverflowNib  EQU ((OverflowFl)-1)/4
  357               OverflowBit  EQU ((OverflowFl)-1)%4
  358
  359               OverwriteNib EQU ((OverwriteFl)-1)/4
  360               OverwriteBit EQU ((OverwriteFl)-1)%4
  361
  362               PrintDevNib  EQU ((PrintDevFl)-1)/4
  363               PrintDevBit  EQU ((PrintDevFl)-1)%4
  364
  365               RadixNib     EQU ((RadixFl)-1)/4
  366               RadixBit     EQU ((RadixFl)-1)%4
  367
  368               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  369               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  370
  371               ResultsNib   EQU ((ResultsFl)-1)/4
  372               ResultsBit   EQU ((ResultsFl)-1)%4
  373
  374               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  375               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  376
  377               SolutionsNib EQU ((SolutionsFl)-1)/4
  378               SolutionsBit EQU ((SolutionsFl)-1)%4
  379
  380               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  381               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  382
  383               TriUserNib   EQU ((TriUserFl)-1)/4
  384               TriUserBit   EQU ((TriUserFl)-1)%4
  385
  386               UnderfActNib EQU ((UnderfActFl)-1)/4
  387               UnderfActBit EQU ((UnderfActFl)-1)%4
  388
  389               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  390               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  391
  392               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  393               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  394
  395               UserKeysNib  EQU ((UserKeysFl)-1)/4
  396               UserKeysBit  EQU ((UserKeysFl)-1)%4
  397
  398               * RPL
  399               * RPL
  400               * insure RPL-mode exit
  401
  402
  403               * ASSEMBLE
  404
  405
  406               nonALG EQU 8                    not-allowed-in-algebraics flag
  407               hasHELP EQU 4                   has-help-data flag
  408               hasPROMPTM EQU 4                same as above
  409               hasALIAS EQU 2                  has-algebraic-alias flag
  410               hasPDATA EQU 1                  has-parse-data flag
  411
  412
  413               hasDER EQU 8                    has-derivative flag
  414               hasINV EQU 4                    has-inverse flag
  415               hasCOLCT EQU 2                  has-COLCT-data flag
  416               hasEXPND EQU 1                  has-EXPND-data flag
  417
  418
  419               hasFORM EQU 8                   has-FORM-menu flag
  420               hasINTG EQU 4                   has-Integral-data flag
  421               hasWHERE EQU 2                  has-WHERE-code flag
  422               hasVUNS EQU 1                   has-veryunsymin-code flag
  423
  424
  425               pdEX EQU #0             general expression
  426               pdOP EQU #1             operator
  427               pdQE EQU #2             quoted expression
  428               pdQN EQU #3             quoted name
  429               pdLP EQU #4             left parenthesis
  430               pdRP EQU #5             right parenthesis
  431               pdCM EQU #6             comma (non-radix)
  432               pdEQ EQU #7             equal-sign separator
  433               pdOS0 EQU #8            optional repeat 0
  434               pdOS1 EQU #9            optional repeat 1
  435               pdOS2 EQU #A            optional repeat 2
  436               pdOS3 EQU #B            optional repeat 3
  437               pdOS4 EQU #C            optional repeat 4
  438               pdOS5 EQU #D            optional repeat 5
  439               pdOS6 EQU #E            optional repeat 6
  440               pdOS7 EQU #F            optional repeat 7
  441
  442               * RPL
  443               * RPL
  444               * insure RPL-mode exit
  445
  446
  447
  448
  449
  450
  451
  452
  453
  454
  455
  456
  457
  458
  459
  460
  461
  462               * RPL
  463               * insure RPL-mode exit
  464
  465               * RPL
  466               * insure RPL-mode exit
  467
  468
  469
  470
  471
  472
  473
  474
  475
  476               * ( for internal use only
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
  487               * ( decimal 67
  488               * ( decimal 86
  489               * ( decimal 82
  490               * ( decimal 85
  491               * ( decimal 101
  492               * ( decimal 97
  493               * ( decimal 100
  494               * ( decimal 113
  495               * ( decimal 112
  496
  497               * ( check width
  498               * ( field character width
  499
  500               * ( decimal 67
  501               * ( decimal 85
  502               * ( decimal 97
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
  520               * RPL
  521               * insure RPL-mode exit
  522
  523               * ( decimal 66
  524               * ( decimal 67
  525               * ( decimal 69
  526               * ( decimal 82
  527               * ( decimal 83
  528               * ( decimal 84
  529               * ( decimal 85
  530               * ( decimal 86
  531               * ( decimal 87
  532
  533
  534               * ( norm-view default visible row count
  535               * ( default first row X location
  536               * ( default first row Y location
  537               * ( default row width
  538               * ( default row height
  539
  540               * ( max-view width
  541               * ( max-view height
  542               * ( max-view default visible row count
  543
  544               * ( prompt area height
  545
  546               * ( more-up/down icon width
  547
  548
  549
  550               * RPL
  551               * insure RPL-mode exit
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
  696
  697
  698
  699
  700
  701
  702
  703
  704
  705
  706
  707
  708
  709
  710
  711
  712
  713
  714
  715
  716
  717
  718
  719
  720
  721
  722
  723
  724
  725
  726
  727
  728
  729
  730
  731
  732
  733
  734
  735
  736
  737
  738
  739
  740
  741
  742
  743
  744
  745
  746
  747
  748
  749
  750
  751
  752
  753
  754
  755
  756
  757
  758
  759
  760
  761
  762
  763
  764
  765
  766
  767               * RPL
  768               * insure RPL-mode exit
  769
  770
  771
  772               * ( set for informations
  773               * ( set for step by step mode on
  774               * ( internal use: true if VXXL success
  775               * ( set for no gcd computations
  776               * ( set for complex mode
  777               * ( internal use:       LN->-INV[-LN]]
  778               * ( set for approx mode
  779               * ( set for TSIMP call inside SERIES
  780               * ( internal use:       modular computation
  781               * ( internal use:       testing remainder=0
  782               * ( set to allow numeric factorization
  783               * ( set for large matrices
  784               * ( set: don't simplify inside non rational operation
  785               * ( set to see i as an irrquad c=-1
  786               * ( set to disable linearity simplif.
  787               * ( set for increasing power x+1 -> 1+x
  788               * ( internal use:       sqrt not as irrquad
  789               * ( set if sin are prefered to cos
  790               * ( set for menu as choosebox
  791               * ( set if xINT is not simplified
  792               * ( set if non rigourous mode
  793               * ( set to allow silent mode switch
  794               * ( set if xLN returns LN[ABS[]]
  795
  796
  797               * ASSEMBLE
  798
  799               MultiLineFl     EQU     65
  800               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  801               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  802               MultiLineStringsFl      EQU     66
  803               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  804               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  805               DigitalClockFl  EQU     67
  806               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  807               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  808               CmdAutoIndentFl EQU     68
  809               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  810               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  811               FullScreenEditFl        EQU     69
  812               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  813               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  814               MultiLine2GROBFl        EQU     70
  815               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  816               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  817               DesasmWithAdrFl EQU     71
  818               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  819               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  820               BigFontStackFl  EQU     72
  821               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  822               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  823               BigFontCmdFl    EQU     73
  824               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  825               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  826               RightJustifiedStackFl   EQU     74
  827               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  828               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  829               KeystrokeBeepFl EQU     75
  830               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  831               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  832               FilerConfirmationFl     EQU     76
  833               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  834               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  835               FilerConfirmFl  EQU     77
  836               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  837               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  838               KernelParamFl   EQU     78
  839               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  840               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  841               PrettyPrintFl   EQU     79
  842               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  843               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  844               SmallFontEQWStackFl     EQU     80
  845               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  846               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  847               SmallFontEQWGrobFl      EQU     81
  848               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  849               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  850               SmallFontEQWEditFl      EQU     82
  851               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  852               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  853               GrobDisplayFl   EQU     83
  854               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  855               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  856               MKSmallFontMenuFl       EQU     84
  857               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  858               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  859               SystemRPLStackFl        EQU     85
  860               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  861               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  862               MASDDecompilerFl        EQU     86
  863               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  864               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  865               RecursiveStackFl        EQU     87
  866               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  867               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  868               RecursiveEditFl EQU     88
  869               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  870               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  871               AddressesCLEFl  EQU     89
  872               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  873               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  874               SmallFontChooseFl       EQU     90
  875               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  876               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  877               ArrayOnlyFl     EQU     91
  878               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  879               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  880               MLMASDModeFl    EQU     92
  881               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  882               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  883               ErableHeaderFl  EQU     93
  884               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  885               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  886               AutoSaveFl      EQU     94
  887               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  888               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  889               AlgebraicModeFl EQU     95
  890               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  891               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  892               MenuOnFl        EQU     96
  893               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  894               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  895               VerticalListFl  EQU     97
  896               VerticalListNib EQU     ((VerticalListFl)-1)/4
  897               VerticalListBit EQU     ((VerticalListFl)-1)%4
  898               VerticalVectorFl        EQU     98
  899               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  900               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  901
  902
  903               ComplexFl       EQU     103
  904               ComplexNib      EQU     ((ComplexFl)-1)/4
  905               ComplexBit      EQU     ((ComplexFl)-1)%4
  906
  907
  908               ExactModeFl     EQU     105
  909               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  910               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  911
  912
  913               * RPL
  914
  915
  916
  917               * ASSEMBLE
  918                       SETLIST CODE, INCLUDE, PSEUDO
  919               * RPL
  920
  921               *|| Resuming file ISAform.s at line 11
  922               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA50\ISA50.h
  923
  924               =RomId  EQU     #326
  925               * ROMID set to 326
  926
  927
  928
  929
  930
  931
  932
  933
  934
  935               *|| Resuming file ISAform.s at line 12
  936 00000         =ISAform
  937               * File  ISAform.s       14
  938 00000 00000           CON(5)  =DOCOL
  939               * Label definitions (X pos     Y pos)
  940               * File  ISAform.s       16
  941 00005 00000           CON(5)  =DOCSTR
  942 0000A B0000           CON(5)  11
  943 0000F 0514A3          NIBASC  \PA:\
  944 00015 00000           CON(5)  =ONE
  945 0001A 00000           CON(5)  =TEN
  946               * File  ISAform.s       17
  947 0001F 00000           CON(5)  =DOCSTR
  948 00024 B0000           CON(5)  11
  949 00029 4513A3          NIBASC  \T1:\
  950 0002F 00000           CON(5)  =ONE
  951 00034 00000           CON(5)  =NINETEEN
  952               * File  ISAform.s       18
  953 00039 00000           CON(5)  =DOCSTR
  954 0003E B0000           CON(5)  11
  955 00043 0513A3          NIBASC  \P1:\
  956 00049 00000           CON(5)  =ONE
  957 0004E 00000           CON(5)  =TWENTYEIGHT
  958               * File  ISAform.s       19
  959 00053 00000           CON(5)  =DOCSTR
  960 00058 B0000           CON(5)  11
  961 0005D 79              CON(2)  #97
  962 0005F 13A3            NIBASC  \1:\
  963 00063 00000           CON(5)  =ONE
  964 00068 00000           CON(5)  =THIRTYSEVEN
  965               * File  ISAform.s       20
  966 0006D 00000           CON(5)  =DOCSTR
  967 00072 B0000           CON(5)  11
  968 00077 1613A3          NIBASC  \a1:\
  969 0007D 00000           CON(5)  =ONE
  970 00082 00000           CON(5)  =FORTYSIX
  971               * File  ISAform.s       21
  972
  973               * Field definitions
  974               * File  ISAform.s       23
  975               * Field PA definition [#BINT0]
  976               * File  ISAform.s       24
  977 00087 00000           CON(5)  ='
  978 0008C 00000           CON(5)  =DOCOL
  979               * Field message handler
  980               * File  ISAform.s       25
  981 00091 00000           CON(5)  =FOUR
  982 00096 00000           CON(5)  =#=case
  983 0009B 00000           CON(5)  =DOCOL
  984               * Get internal field value
  985               * File  ISAform.s       26
  986 000A0 00000           CON(5)  =DUPTYPEREAL?
  987 000A5 00000           CON(5)  =case
  988 000AA 00000           CON(5)  =DOCOL
  989               * REAL
  990               * File  ISAform.s       27
  991 000AF 00000           CON(5)  =DOCSTR
  992 000B4 90000           CON(5)  9
  993 000B9 6647            NIBASC  \ft\
  994 000BD 00000           CON(5)  =umEND
  995 000C2 00000           CON(5)  =BINT3
  996 000C7 00000           CON(5)  =EXTN
  997               * Add default feet units
  998               * File  ISAform.s       28
  999 000CC 00000           CON(5)  =DUP
 1000 000D1 00000           CON(5)  =DOEXT
 1001 000D6 00000           CON(5)  =DOREAL
 1002 000DB 400             NIBHEX  400
 1003 000DE 0000000         NIBHEX  000000000002
            00002
 1004 000EA 0               NIBHEX  0
 1005 000EB 00000           CON(5)  =DOCSTR
 1006 000F0 70000           CON(5)  7
 1007 000F5 D6              NIBASC  \m\
 1008 000F7 00000           CON(5)  =umEND
 1009 000FC 00000           CON(5)  =SEMI
 1010               * Check if PA is > 20 km
 1011               * File  ISAform.s       29
 1012 00101 00000           CON(5)  =UM>?
 1013 00106 00000           CON(5)  =%0<>
 1014 0010B 00000           CON(5)  =ITE
 1015 00110 00000           CON(5)  =DOCOL
 1016               * IF PA is > 20 km
 1017               * File  ISAform.s       30
 1018 00115 00000           CON(5)  =DROP
 1019               * DROP field value
 1020               * File  ISAform.s       31
 1021 0011A 00000           CON(5)  =DOCSTR
 1022 0011F 13000           CON(5)  49
 1023 00124 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

 1024 0014C B6D6            NIBASC  \km\
 1025               * Display warning message and error beep
 1026               * File  ISAform.s       32
 1027 00150 00000           CON(5)  =FlashWarning
 1028               * and wait for key press to exit
 1029               * File  ISAform.s       33
 1030 00155 00000           CON(5)  =BINT4
 1031 0015A 00000           CON(5)  =DOFLASHP
 1032 0015F 0000000         CON(7)  =^IfSetField
 1033               * Keep field focus
 1034               * File  ISAform.s       34
 1035 00166 00000           CON(5)  =DOIDNT
 1036 0016B 20              CON(2)  2
 1037 0016D 0514            NIBASC  \PA\
 1038               * Keep original PA field value
 1039               * File  ISAform.s       35
 1040 00171 00000           CON(5)  =SEMI
 1041               * File  ISAform.s       36
 1042 00176 00000           CON(5)  =DOCOL
 1043               * ELSE
 1044               * File  ISAform.s       37
 1045 0017B 00000           CON(5)  =NOVAL
 1046 00180 00000           CON(5)  =BINT1
 1047 00185 00000           CON(5)  =DOFLASHP
 1048 0018A 0000000         CON(7)  =^IfSetFieldValue
 1049               * Reset all other fields
 1050               * File  ISAform.s       38
 1051 00191 00000           CON(5)  =NOVAL
 1052 00196 00000           CON(5)  =BINT2
 1053 0019B 00000           CON(5)  =DOFLASHP
 1054 001A0 0000000         CON(7)  =^IfSetFieldValue
 1055               * with NOVAL
 1056               * File  ISAform.s       39
 1057 001A7 00000           CON(5)  =NOVAL
 1058 001AC 00000           CON(5)  =BINT3
 1059 001B1 00000           CON(5)  =DOFLASHP
 1060 001B6 0000000         CON(7)  =^IfSetFieldValue
 1061               * File  ISAform.s       40
 1062 001BD 00000           CON(5)  =NOVAL
 1063 001C2 00000           CON(5)  =BINT4
 1064 001C7 00000           CON(5)  =DOFLASHP
 1065 001CC 0000000         CON(7)  =^IfSetFieldValue
 1066               * File  ISAform.s       41
 1067 001D3 00000           CON(5)  =BINT4
 1068 001D8 00000           CON(5)  =DOFLASHP
 1069 001DD 0000000         CON(7)  =^IfSetField
 1070               * Keep field focus
 1071               * File  ISAform.s       42
 1072 001E4 00000           CON(5)  =SEMI
 1073               * File  ISAform.s       43
 1074 001E9 00000           CON(5)  =TRUE
 1075               * Return external value
 1076               * File  ISAform.s       44
 1077 001EE 00000           CON(5)  =SEMI
 1078               * File  ISAform.s       45
 1079 001F3 00000           CON(5)  =DUPTYPEEXT?
 1080 001F8 00000           CON(5)  =case
 1081 001FD 00000           CON(5)  =DOCOL
 1082               * UNIT
 1083               * File  ISAform.s       46
 1084 00202 00000           CON(5)  =DUP
 1085 00207 00000           CON(5)  =DOEXT
 1086 0020C 00000           CON(5)  =DOREAL
 1087 00211 400             NIBHEX  400
 1088 00214 0000000         NIBHEX  000000000002
            00002
 1089 00220 0               NIBHEX  0
 1090 00221 00000           CON(5)  =DOCSTR
 1091 00226 70000           CON(5)  7
 1092 0022B D6              NIBASC  \m\
 1093 0022D 00000           CON(5)  =umEND
 1094 00232 00000           CON(5)  =SEMI
 1095               * Check if PA is > 20 km
 1096               * File  ISAform.s       47
 1097 00237 00000           CON(5)  =UM>?
 1098 0023C 00000           CON(5)  =%0<>
 1099 00241 00000           CON(5)  =ITE
 1100 00246 00000           CON(5)  =DOCOL
 1101               * IF PA is > 20 km
 1102               * File  ISAform.s       48
 1103 0024B 00000           CON(5)  =DROP
 1104               * DROP field value
 1105               * File  ISAform.s       49
 1106 00250 00000           CON(5)  =DOCSTR
 1107 00255 13000           CON(5)  49
 1108 0025A 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

 1109 00282 B6D6            NIBASC  \km\
 1110               * Display warning message and error beep
 1111               * File  ISAform.s       50
 1112 00286 00000           CON(5)  =FlashWarning
 1113               * and wait for key press to exit
 1114               * File  ISAform.s       51
 1115 0028B 00000           CON(5)  =BINT4
 1116 00290 00000           CON(5)  =DOFLASHP
 1117 00295 0000000         CON(7)  =^IfSetField
 1118               * Keep field focus
 1119               * File  ISAform.s       52
 1120 0029C 00000           CON(5)  =DOIDNT
 1121 002A1 20              CON(2)  2
 1122 002A3 0514            NIBASC  \PA\
 1123               * Keep original PA field value
 1124               * File  ISAform.s       53
 1125 002A7 00000           CON(5)  =SEMI
 1126               * File  ISAform.s       54
 1127 002AC 00000           CON(5)  =DOCOL
 1128               * ELSE
 1129               * File  ISAform.s       55
 1130 002B1 00000           CON(5)  =DUP
 1131 002B6 00000           CON(5)  =DOIDNT
 1132 002BB 20              CON(2)  2
 1133 002BD 0514            NIBASC  \PA\
 1134 002C1 00000           CON(5)  =EQUALNOT
 1135 002C6 00000           CON(5)  =IT
 1136 002CB 00000           CON(5)  =DOCOL
 1137               * IF changed from initial value
 1138               * File  ISAform.s       56
 1139 002D0 00000           CON(5)  =NOVAL
 1140 002D5 00000           CON(5)  =BINT1
 1141 002DA 00000           CON(5)  =DOFLASHP
 1142 002DF 0000000         CON(7)  =^IfSetFieldValue
 1143               * Reset all other fields
 1144               * File  ISAform.s       57
 1145 002E6 00000           CON(5)  =NOVAL
 1146 002EB 00000           CON(5)  =BINT2
 1147 002F0 00000           CON(5)  =DOFLASHP
 1148 002F5 0000000         CON(7)  =^IfSetFieldValue
 1149               * with NOVAL
 1150               * File  ISAform.s       58
 1151 002FC 00000           CON(5)  =NOVAL
 1152 00301 00000           CON(5)  =BINT3
 1153 00306 00000           CON(5)  =DOFLASHP
 1154 0030B 0000000         CON(7)  =^IfSetFieldValue
 1155               * File  ISAform.s       59
 1156 00312 00000           CON(5)  =NOVAL
 1157 00317 00000           CON(5)  =BINT4
 1158 0031C 00000           CON(5)  =DOFLASHP
 1159 00321 0000000         CON(7)  =^IfSetFieldValue
 1160               * File  ISAform.s       60
 1161 00328 00000           CON(5)  =BINT4
 1162 0032D 00000           CON(5)  =DOFLASHP
 1163 00332 0000000         CON(7)  =^IfSetField
 1164               * Keep field focus
 1165               * File  ISAform.s       61
 1166 00339 00000           CON(5)  =SEMI
 1167               * File  ISAform.s       62
 1168 0033E 00000           CON(5)  =SEMI
 1169               * File  ISAform.s       63
 1170 00343 00000           CON(5)  =TRUE
 1171               * Return external value
 1172               * File  ISAform.s       64
 1173 00348 00000           CON(5)  =SEMI
 1174               * File  ISAform.s       65
 1175 0034D 00000           CON(5)  =TRUE
 1176               * Message was handled
 1177               * File  ISAform.s       66
 1178 00352 00000           CON(5)  =SEMI
 1179               * File  ISAform.s       67
 1180 00357 00000           CON(5)  =FALSE
 1181               * Other messages not handled
 1182               * File  ISAform.s       68
 1183 0035C 00000           CON(5)  =SEMI
 1184               * File  ISAform.s       69
 1185 00361 00000           CON(5)  =THIRTEEN
 1186 00366 00000           CON(5)  =EIGHT
 1187 0036B 00000           CON(5)  =BINT_115d
 1188 00370 00000           CON(5)  =EIGHT
 1189               * Position & size
 1190               * File  ISAform.s       70
 1191 00375 00000           CON(5)  =ONE
 1192               * Field type: TEXT
 1193               * File  ISAform.s       71
 1194 0037A 00000           CON(5)  =DOLIST
 1195 0037F 00000           CON(5)  =ZERO
 1196 00384 00000           CON(5)  =THIRTEEN
 1197 00389 00000           CON(5)  =SEMI
 1198               * Allowed type: REAL, UNIT object
 1199               * File  ISAform.s       72
 1200 0038E 00000           CON(5)  =TWO
 1201               * Decompile with stack appearance
 1202               * File  ISAform.s       73
 1203 00393 00000           CON(5)  =DOCSTR
 1204 00398 93000           CON(5)  57
 1205 0039D 0525543         NIBASC  \PRESSURE ALTITUDE (#\
            5355525
            540214C4459445554454028232

 1206 003C5 32              NIBASC  \#\
 1207 003C7 D8              CON(2)  #8D
 1208 003C9 0266479         NIBASC  \ ft)\
            2
 1209               * Help text
 1210               * File  ISAform.s       74
 1211 003D1 00000           CON(5)  =MINUSONE
 1212               * ChooseData N/A
 1213               * File  ISAform.s       75
 1214 003D6 00000           CON(5)  =MINUSONE
 1215               * ChooseDecompile - ignored
 1216               * File  ISAform.s       76
 1217 003DB 00000           CON(5)  =MINUSONE
 1218               * Reset value
 1219               * File  ISAform.s       77
 1220 003E0 00000           CON(5)  =DOIDNT
 1221 003E5 20              CON(2)  2
 1222 003E7 0514            NIBASC  \PA\
 1223               * Initial value
 1224               * File  ISAform.s       78
 1225
 1226               * File  ISAform.s       79
 1227               * Field T1 definition [#BINT1]
 1228               * File  ISAform.s       80
 1229 003EB 00000           CON(5)  ='
 1230 003F0 00000           CON(5)  =DOCOL
 1231               * Field Message Handler
 1232               * File  ISAform.s       81
 1233 003F5 00000           CON(5)  =FOUR
 1234 003FA 00000           CON(5)  =#=case
 1235 003FF 00000           CON(5)  =DOCOL
 1236               * Get internal field value
 1237               * File  ISAform.s       82
 1238 00404 00000           CON(5)  =DUPTYPEREAL?
 1239 00409 00000           CON(5)  =case
 1240 0040E 00000           CON(5)  =DOCOL
 1241               * Real object
 1242               * File  ISAform.s       83
 1243 00413 00000           CON(5)  =DOCSTR
 1244 00418 90000           CON(5)  9
 1245 0041D 0B              CON(2)  #B0
 1246 0041F 34              NIBASC  \C\
 1247 00421 00000           CON(5)  =umEND
 1248 00426 00000           CON(5)  =BINT3
 1249 0042B 00000           CON(5)  =EXTN
 1250               * Add default deg C units
 1251               * File  ISAform.s       84
 1252 00430 00000           CON(5)  =NOVAL
 1253 00435 00000           CON(5)  =BINT0
 1254 0043A 00000           CON(5)  =DOFLASHP
 1255 0043F 0000000         CON(7)  =^IfSetFieldValue
 1256               * Reset all other
 1257               * File  ISAform.s       85
 1258 00446 00000           CON(5)  =NOVAL
 1259 0044B 00000           CON(5)  =BINT2
 1260 00450 00000           CON(5)  =DOFLASHP
 1261 00455 0000000         CON(7)  =^IfSetFieldValue
 1262               * fields with
 1263               * File  ISAform.s       86
 1264 0045C 00000           CON(5)  =NOVAL
 1265 00461 00000           CON(5)  =BINT3
 1266 00466 00000           CON(5)  =DOFLASHP
 1267 0046B 0000000         CON(7)  =^IfSetFieldValue
 1268               * NOVAL
 1269               * File  ISAform.s       87
 1270 00472 00000           CON(5)  =NOVAL
 1271 00477 00000           CON(5)  =BINT4
 1272 0047C 00000           CON(5)  =DOFLASHP
 1273 00481 0000000         CON(7)  =^IfSetFieldValue
 1274               * File  ISAform.s       88
 1275 00488 00000           CON(5)  =BINT0
 1276 0048D 00000           CON(5)  =DOFLASHP
 1277 00492 0000000         CON(7)  =^IfSetField
 1278               * Keep field focus
 1279               * File  ISAform.s       89
 1280 00499 00000           CON(5)  =TRUE
 1281               * Return external value
 1282               * File  ISAform.s       90
 1283 0049E 00000           CON(5)  =SEMI
 1284               * File  ISAform.s       91
 1285 004A3 00000           CON(5)  =DUPTYPEEXT?
 1286 004A8 00000           CON(5)  =case
 1287 004AD 00000           CON(5)  =DOCOL
 1288               * Unit object
 1289               * File  ISAform.s       92
 1290 004B2 00000           CON(5)  =DUP
 1291 004B7 00000           CON(5)  =DOIDNT
 1292 004BC 20              CON(2)  2
 1293 004BE 4513            NIBASC  \T1\
 1294 004C2 00000           CON(5)  =EQUALNOT
 1295 004C7 00000           CON(5)  =IT
 1296 004CC 00000           CON(5)  =DOCOL
 1297               * IF changed from internal value
 1298               * File  ISAform.s       93
 1299 004D1 00000           CON(5)  =NOVAL
 1300 004D6 00000           CON(5)  =BINT0
 1301 004DB 00000           CON(5)  =DOFLASHP
 1302 004E0 0000000         CON(7)  =^IfSetFieldValue
 1303               * Reset all other
 1304               * File  ISAform.s       94
 1305 004E7 00000           CON(5)  =NOVAL
 1306 004EC 00000           CON(5)  =BINT2
 1307 004F1 00000           CON(5)  =DOFLASHP
 1308 004F6 0000000         CON(7)  =^IfSetFieldValue
 1309               * fields with
 1310               * File  ISAform.s       95
 1311 004FD 00000           CON(5)  =NOVAL
 1312 00502 00000           CON(5)  =BINT3
 1313 00507 00000           CON(5)  =DOFLASHP
 1314 0050C 0000000         CON(7)  =^IfSetFieldValue
 1315               * NOVAL
 1316               * File  ISAform.s       96
 1317 00513 00000           CON(5)  =NOVAL
 1318 00518 00000           CON(5)  =BINT4
 1319 0051D 00000           CON(5)  =DOFLASHP
 1320 00522 0000000         CON(7)  =^IfSetFieldValue
 1321               * File  ISAform.s       97
 1322 00529 00000           CON(5)  =BINT0
 1323 0052E 00000           CON(5)  =DOFLASHP
 1324 00533 0000000         CON(7)  =^IfSetField
 1325               * Keep field focus
 1326               * File  ISAform.s       98
 1327 0053A 00000           CON(5)  =SEMI
 1328               * File  ISAform.s       99
 1329 0053F 00000           CON(5)  =TRUE
 1330               * Return external value
 1331               * File  ISAform.s       100
 1332 00544 00000           CON(5)  =SEMI
 1333               * File  ISAform.s       101
 1334 00549 00000           CON(5)  =TRUE
 1335               * Message was handled
 1336               * File  ISAform.s       102
 1337 0054E 00000           CON(5)  =SEMI
 1338               * File  ISAform.s       103
 1339 00553 00000           CON(5)  =FALSE
 1340               * Other messages not handled
 1341               * File  ISAform.s       104
 1342 00558 00000           CON(5)  =SEMI
 1343               * File  ISAform.s       105
 1344 0055D 00000           CON(5)  =THIRTEEN
 1345 00562 00000           CON(5)  =SEVENTEEN
 1346 00567 00000           CON(5)  =BINT_115d
 1347 0056C 00000           CON(5)  =EIGHT
 1348               * Position & size
 1349               * File  ISAform.s       106
 1350 00571 00000           CON(5)  =ONE
 1351               * Field type: TEXT
 1352               * File  ISAform.s       107
 1353 00576 00000           CON(5)  =DOLIST
 1354 0057B 00000           CON(5)  =ZERO
 1355 00580 00000           CON(5)  =THIRTEEN
 1356 00585 00000           CON(5)  =SEMI
 1357               * Allowed type: REAL, UNIT object
 1358               * File  ISAform.s       108
 1359 0058A 00000           CON(5)  =TWO
 1360               * Decompile with stack appearance
 1361               * File  ISAform.s       109
 1362 0058F 00000           CON(5)  =DOCSTR
 1363 00594 14000           CON(5)  65
 1364 00599 3545144         NIBASC  \STATIC AIR TEMP. (TR\
            5943402
            149425024554D405E202824525

 1365 005C1 5554023         NIBASC  \UE ##\
            232
 1366 005CB D8              CON(2)  #8D
 1367 005CD 02              NIBASC  \ \
 1368 005CF 0B              CON(2)  #B0
 1369 005D1 3492            NIBASC  \C)\
 1370               * Help string
 1371               * File  ISAform.s       110
 1372 005D5 00000           CON(5)  =MINUSONE
 1373               * ChooseData N/A
 1374               * File  ISAform.s       111
 1375 005DA 00000           CON(5)  =MINUSONE
 1376               * ChooseDecompile
 1377               * File  ISAform.s       112
 1378 005DF 00000           CON(5)  =MINUSONE
 1379               * Reset value
 1380               * File  ISAform.s       113
 1381 005E4 00000           CON(5)  =DOIDNT
 1382 005E9 20              CON(2)  2
 1383 005EB 4513            NIBASC  \T1\
 1384               * Initial value
 1385               * File  ISAform.s       114
 1386
 1387               * File  ISAform.s       115
 1388               * Field P1 definition [#BINT2]
 1389               * File  ISAform.s       116
 1390 005EF 00000           CON(5)  ='
 1391 005F4 00000           CON(5)  =DOCOL
 1392               * Field message handler
 1393               * File  ISAform.s       117
 1394 005F9 00000           CON(5)  =FOUR
 1395 005FE 00000           CON(5)  =#=case
 1396 00603 00000           CON(5)  =DOCOL
 1397               * Get internal field value
 1398               * File  ISAform.s       118
 1399 00608 00000           CON(5)  =DUPTYPEREAL?
 1400 0060D 00000           CON(5)  =case
 1401 00612 00000           CON(5)  =DOCOL
 1402               * REAL
 1403               * File  ISAform.s       119
 1404 00617 00000           CON(5)  =DUP
 1405 0061C 00000           CON(5)  =DOREAL
 1406 00621 100             NIBHEX  100
 1407 00624 0000000         NIBHEX  000000000005
            00005
 1408 00630 0               NIBHEX  0
 1409 00631 00000           CON(5)  =%<
 1410 00636 00000           CON(5)  =ITE
 1411 0063B 00000           CON(5)  =DOCOL
 1412               * IF it is < 50
 1413               * File  ISAform.s       120
 1414 00640 00000           CON(5)  =DOCSTR
 1415 00645 D0000           CON(5)  13
 1416 0064A 96E6847         NIBASC  \inHg\
            6
 1417 00652 00000           CON(5)  =umEND
 1418 00657 00000           CON(5)  =BINT3
 1419 0065C 00000           CON(5)  =EXTN
 1420               * add inHg units
 1421               * File  ISAform.s       121
 1422 00661 00000           CON(5)  =SEMI
 1423               * File  ISAform.s       122
 1424 00666 00000           CON(5)  =DOCOL
 1425               * ELSE if it is > 50
 1426               * File  ISAform.s       123
 1427 0066B 00000           CON(5)  =CHR_m
 1428 00670 00000           CON(5)  =DOCSTR
 1429 00675 B0000           CON(5)  11
 1430 0067A 261627          NIBASC  \bar\
 1431 00680 00000           CON(5)  =umP
 1432 00685 00000           CON(5)  =umEND
 1433               * add mbar units
 1434               * File  ISAform.s       124
 1435 0068A 00000           CON(5)  =BINT5
 1436 0068F 00000           CON(5)  =EXTN
 1437               * File  ISAform.s       125
 1438 00694 00000           CON(5)  =SEMI
 1439               * File  ISAform.s       126
 1440 00699 00000           CON(5)  =NOVAL
 1441 0069E 00000           CON(5)  =BINT0
 1442 006A3 00000           CON(5)  =DOFLASHP
 1443 006A8 0000000         CON(7)  =^IfSetFieldValue
 1444               * Reset other fields
 1445               * File  ISAform.s       127
 1446 006AF 00000           CON(5)  =NOVAL
 1447 006B4 00000           CON(5)  =BINT1
 1448 006B9 00000           CON(5)  =DOFLASHP
 1449 006BE 0000000         CON(7)  =^IfSetFieldValue
 1450               * with NOVAL
 1451               * File  ISAform.s       128
 1452 006C5 00000           CON(5)  =NOVAL
 1453 006CA 00000           CON(5)  =BINT3
 1454 006CF 00000           CON(5)  =DOFLASHP
 1455 006D4 0000000         CON(7)  =^IfSetFieldValue
 1456               * File  ISAform.s       129
 1457 006DB 00000           CON(5)  =NOVAL
 1458 006E0 00000           CON(5)  =BINT4
 1459 006E5 00000           CON(5)  =DOFLASHP
 1460 006EA 0000000         CON(7)  =^IfSetFieldValue
 1461               * File  ISAform.s       130
 1462 006F1 00000           CON(5)  =BINT1
 1463 006F6 00000           CON(5)  =DOFLASHP
 1464 006FB 0000000         CON(7)  =^IfSetField
 1465               * Keep field focus
 1466               * File  ISAform.s       131
 1467 00702 00000           CON(5)  =TRUE
 1468               * Return external value
 1469               * File  ISAform.s       132
 1470 00707 00000           CON(5)  =SEMI
 1471               * File  ISAform.s       133
 1472 0070C 00000           CON(5)  =DUPTYPEEXT?
 1473 00711 00000           CON(5)  =case
 1474 00716 00000           CON(5)  =DOCOL
 1475               * UNIT
 1476               * File  ISAform.s       134
 1477 0071B 00000           CON(5)  =DUP
 1478 00720 00000           CON(5)  =DOIDNT
 1479 00725 20              CON(2)  2
 1480 00727 0513            NIBASC  \P1\
 1481 0072B 00000           CON(5)  =EQUALNOT
 1482 00730 00000           CON(5)  =IT
 1483 00735 00000           CON(5)  =DOCOL
 1484               * IF changed from initial value
 1485               * File  ISAform.s       135
 1486 0073A 00000           CON(5)  =NOVAL
 1487 0073F 00000           CON(5)  =BINT0
 1488 00744 00000           CON(5)  =DOFLASHP
 1489 00749 0000000         CON(7)  =^IfSetFieldValue
 1490               * Reset all other fields
 1491               * File  ISAform.s       136
 1492 00750 00000           CON(5)  =NOVAL
 1493 00755 00000           CON(5)  =BINT1
 1494 0075A 00000           CON(5)  =DOFLASHP
 1495 0075F 0000000         CON(7)  =^IfSetFieldValue
 1496               * with NOVAL
 1497               * File  ISAform.s       137
 1498 00766 00000           CON(5)  =NOVAL
 1499 0076B 00000           CON(5)  =BINT3
 1500 00770 00000           CON(5)  =DOFLASHP
 1501 00775 0000000         CON(7)  =^IfSetFieldValue
 1502               * File  ISAform.s       138
 1503 0077C 00000           CON(5)  =NOVAL
 1504 00781 00000           CON(5)  =BINT4
 1505 00786 00000           CON(5)  =DOFLASHP
 1506 0078B 0000000         CON(7)  =^IfSetFieldValue
 1507               * File  ISAform.s       139
 1508 00792 00000           CON(5)  =BINT1
 1509 00797 00000           CON(5)  =DOFLASHP
 1510 0079C 0000000         CON(7)  =^IfSetField
 1511               * Keep field focus
 1512               * File  ISAform.s       140
 1513 007A3 00000           CON(5)  =SEMI
 1514               * File  ISAform.s       141
 1515 007A8 00000           CON(5)  =TRUE
 1516               * Return external value
 1517               * File  ISAform.s       142
 1518 007AD 00000           CON(5)  =SEMI
 1519               * File  ISAform.s       143
 1520 007B2 00000           CON(5)  =TRUE
 1521               * Message was handled
 1522               * File  ISAform.s       144
 1523 007B7 00000           CON(5)  =SEMI
 1524               * File  ISAform.s       145
 1525 007BC 00000           CON(5)  =FALSE
 1526               * Other messages not handled
 1527               * File  ISAform.s       146
 1528 007C1 00000           CON(5)  =SEMI
 1529               * File  ISAform.s       147
 1530 007C6 00000           CON(5)  =THIRTEEN
 1531 007CB 00000           CON(5)  =TWENTYSIX
 1532 007D0 00000           CON(5)  =BINT_115d
 1533 007D5 00000           CON(5)  =EIGHT
 1534               * Position & size
 1535               * File  ISAform.s       148
 1536 007DA 00000           CON(5)  =ONE
 1537               * Field type: TEXT
 1538               * File  ISAform.s       149
 1539 007DF 00000           CON(5)  =DOLIST
 1540 007E4 00000           CON(5)  =ZERO
 1541 007E9 00000           CON(5)  =THIRTEEN
 1542 007EE 00000           CON(5)  =SEMI
 1543               * Allowed type: REAL, UNIT object
 1544               * File  ISAform.s       150
 1545 007F3 00000           CON(5)  =TWO
 1546               * Decompile with stack appearance
 1547               * File  ISAform.s       151
 1548 007F8 00000           CON(5)  =DOCSTR
 1549 007FD 34000           CON(5)  67
 1550 00802 3545144         NIBASC  \STATIC PRESSURE (##\
            5943402
            052554353555255402823232

 1551 00828 D8              CON(2)  #8D
 1552 0082A 02D6261         NIBASC  \ mbar/inHg)\
            627F296
            E6847692
 1553               * Help string
 1554               * File  ISAform.s       152
 1555 00840 00000           CON(5)  =MINUSONE
 1556               * ChooseData N/A
 1557               * File  ISAform.s       153
 1558 00845 00000           CON(5)  =MINUSONE
 1559               * ChooseDecompile
 1560               * File  ISAform.s       154
 1561 0084A 00000           CON(5)  =MINUSONE
 1562               * Reset value
 1563               * File  ISAform.s       155
 1564 0084F 00000           CON(5)  =DOIDNT
 1565 00854 20              CON(2)  2
 1566 00856 0513            NIBASC  \P1\
 1567               * Initial value
 1568               * File  ISAform.s       156
 1569
 1570               * File  ISAform.s       157
 1571               * Field rho1 definition
 1572               * File  ISAform.s       158
 1573 0085A 00000           CON(5)  ='
 1574 0085F 00000           CON(5)  =DOCOL
 1575               * Field message handler
 1576               * File  ISAform.s       159
 1577 00864 00000           CON(5)  =FOUR
 1578 00869 00000           CON(5)  =#=case
 1579 0086E 00000           CON(5)  =DOCOL
 1580               * Get internal field value
 1581               * File  ISAform.s       160
 1582 00873 00000           CON(5)  =DUPTYPEREAL?
 1583 00878 00000           CON(5)  =case
 1584 0087D 00000           CON(5)  =DOCOL
 1585               * REAL
 1586               * File  ISAform.s       161
 1587 00882 00000           CON(5)  =CHR_k
 1588 00887 00000           CON(5)  =DOCSTR
 1589 0088C 70000           CON(5)  7
 1590 00891 76              NIBASC  \g\
 1591 00893 00000           CON(5)  =umP
 1592 00898 00000           CON(5)  =DOCSTR
 1593 0089D 70000           CON(5)  7
 1594 008A2 D6              NIBASC  \m\
 1595 008A4 00000           CON(5)  =%3
 1596               * Add kg/m^3 units
 1597               * File  ISAform.s       162
 1598 008A9 00000           CON(5)  =um^
 1599 008AE 00000           CON(5)  =um/
 1600 008B3 00000           CON(5)  =umEND
 1601               * File  ISAform.s       163
 1602 008B8 00000           CON(5)  =BINT9
 1603 008BD 00000           CON(5)  =EXTN
 1604               * File  ISAform.s       164
 1605 008C2 00000           CON(5)  =NOVAL
 1606 008C7 00000           CON(5)  =BINT0
 1607 008CC 00000           CON(5)  =DOFLASHP
 1608 008D1 0000000         CON(7)  =^IfSetFieldValue
 1609               * Reset all other fields
 1610               * File  ISAform.s       165
 1611 008D8 00000           CON(5)  =NOVAL
 1612 008DD 00000           CON(5)  =BINT1
 1613 008E2 00000           CON(5)  =DOFLASHP
 1614 008E7 0000000         CON(7)  =^IfSetFieldValue
 1615               * with NOVAL
 1616               * File  ISAform.s       166
 1617 008EE 00000           CON(5)  =NOVAL
 1618 008F3 00000           CON(5)  =BINT2
 1619 008F8 00000           CON(5)  =DOFLASHP
 1620 008FD 0000000         CON(7)  =^IfSetFieldValue
 1621               * File  ISAform.s       167
 1622 00904 00000           CON(5)  =NOVAL
 1623 00909 00000           CON(5)  =BINT4
 1624 0090E 00000           CON(5)  =DOFLASHP
 1625 00913 0000000         CON(7)  =^IfSetFieldValue
 1626               * File  ISAform.s       168
 1627 0091A 00000           CON(5)  =BINT2
 1628 0091F 00000           CON(5)  =DOFLASHP
 1629 00924 0000000         CON(7)  =^IfSetField
 1630               * Keep field focus
 1631               * File  ISAform.s       169
 1632 0092B 00000           CON(5)  =TRUE
 1633               * Return external value
 1634               * File  ISAform.s       170
 1635 00930 00000           CON(5)  =SEMI
 1636               * File  ISAform.s       171
 1637 00935 00000           CON(5)  =DUPTYPEEXT?
 1638 0093A 00000           CON(5)  =case
 1639 0093F 00000           CON(5)  =DOCOL
 1640               * UNIT
 1641               * File  ISAform.s       172
 1642 00944 00000           CON(5)  =DUP
 1643 00949 00000           CON(5)  =DOIDNT
 1644 0094E 20              CON(2)  2
 1645 00950 79              CON(2)  #97
 1646 00952 13              NIBASC  \1\
 1647 00954 00000           CON(5)  =EQUALNOT
 1648 00959 00000           CON(5)  =IT
 1649 0095E 00000           CON(5)  =DOCOL
 1650               * IF changed from initial value
 1651               * File  ISAform.s       173
 1652 00963 00000           CON(5)  =NOVAL
 1653 00968 00000           CON(5)  =BINT0
 1654 0096D 00000           CON(5)  =DOFLASHP
 1655 00972 0000000         CON(7)  =^IfSetFieldValue
 1656               * Reset all other fields
 1657               * File  ISAform.s       174
 1658 00979 00000           CON(5)  =NOVAL
 1659 0097E 00000           CON(5)  =BINT1
 1660 00983 00000           CON(5)  =DOFLASHP
 1661 00988 0000000         CON(7)  =^IfSetFieldValue
 1662               * with NOVAL
 1663               * File  ISAform.s       175
 1664 0098F 00000           CON(5)  =NOVAL
 1665 00994 00000           CON(5)  =BINT2
 1666 00999 00000           CON(5)  =DOFLASHP
 1667 0099E 0000000         CON(7)  =^IfSetFieldValue
 1668               * File  ISAform.s       176
 1669 009A5 00000           CON(5)  =NOVAL
 1670 009AA 00000           CON(5)  =BINT4
 1671 009AF 00000           CON(5)  =DOFLASHP
 1672 009B4 0000000         CON(7)  =^IfSetFieldValue
 1673               * File  ISAform.s       177
 1674 009BB 00000           CON(5)  =BINT2
 1675 009C0 00000           CON(5)  =DOFLASHP
 1676 009C5 0000000         CON(7)  =^IfSetField
 1677               * Keep field focus
 1678               * File  ISAform.s       178
 1679 009CC 00000           CON(5)  =SEMI
 1680               * File  ISAform.s       179
 1681 009D1 00000           CON(5)  =TRUE
 1682               * Return external value
 1683               * File  ISAform.s       180
 1684 009D6 00000           CON(5)  =SEMI
 1685               * File  ISAform.s       181
 1686 009DB 00000           CON(5)  =TRUE
 1687               * Message was handled
 1688               * File  ISAform.s       182
 1689 009E0 00000           CON(5)  =SEMI
 1690               * File  ISAform.s       183
 1691 009E5 00000           CON(5)  =FALSE
 1692               * Other messages not handled
 1693               * File  ISAform.s       184
 1694 009EA 00000           CON(5)  =SEMI
 1695               * File  ISAform.s       185
 1696 009EF 00000           CON(5)  =THIRTEEN
 1697 009F4 00000           CON(5)  =THIRTYFIVE
 1698 009F9 00000           CON(5)  =BINT_115d
 1699 009FE 00000           CON(5)  =EIGHT
 1700               * Position & size
 1701               * File  ISAform.s       186
 1702 00A03 00000           CON(5)  =ONE
 1703               * Field type: TEXT
 1704               * File  ISAform.s       187
 1705 00A08 00000           CON(5)  =DOLIST
 1706 00A0D 00000           CON(5)  =ZERO
 1707 00A12 00000           CON(5)  =THIRTEEN
 1708 00A17 00000           CON(5)  =SEMI
 1709               * Allowed type: REAL, UNIT object
 1710               * File  ISAform.s       188
 1711 00A1C 00000           CON(5)  =TWO
 1712               * Decompile with stack appearance
 1713               * File  ISAform.s       189
 1714 00A21 00000           CON(5)  =DOCSTR
 1715 00A26 D2000           CON(5)  45
 1716 00A2B 4454E43         NIBASC  \DENSITY (##\
            5944595
            02823232
 1717 00A41 D8              CON(2)  #8D
 1718 00A43 02B676F         NIBASC  \ kg/m^3)\
            2D6E533
            92
 1719               * Help string
 1720               * File  ISAform.s       190
 1721 00A53 00000           CON(5)  =MINUSONE
 1722               * ChooseData N/A
 1723               * File  ISAform.s       191
 1724 00A58 00000           CON(5)  =MINUSONE
 1725               * ChooseDecompile
 1726               * File  ISAform.s       192
 1727 00A5D 00000           CON(5)  =MINUSONE
 1728               * Reset value
 1729               * File  ISAform.s       193
 1730 00A62 00000           CON(5)  =DOIDNT
 1731 00A67 20              CON(2)  2
 1732 00A69 79              CON(2)  #97
 1733 00A6B 13              NIBASC  \1\
 1734               * Initial value
 1735               * File  ISAform.s       194
 1736
 1737               * File  ISAform.s       195
 1738               * Field a1 definition
 1739               * File  ISAform.s       196
 1740 00A6D 00000           CON(5)  ='
 1741 00A72 00000           CON(5)  =DOCOL
 1742               * Field message handler
 1743               * File  ISAform.s       197
 1744 00A77 00000           CON(5)  =FOUR
 1745 00A7C 00000           CON(5)  =#=case
 1746 00A81 00000           CON(5)  =DOCOL
 1747               * Get internal field value
 1748               * File  ISAform.s       198
 1749 00A86 00000           CON(5)  =DUPTYPEREAL?
 1750 00A8B 00000           CON(5)  =case
 1751 00A90 00000           CON(5)  =DOCOL
 1752               * REAL
 1753               * File  ISAform.s       199
 1754 00A95 00000           CON(5)  =DOCSTR
 1755 00A9A D0000           CON(5)  13
 1756 00A9F B6E6F64         NIBASC  \knot\
            7
 1757 00AA7 00000           CON(5)  =umEND
 1758               * Add default knot units
 1759               * File  ISAform.s       200
 1760 00AAC 00000           CON(5)  =BINT3
 1761 00AB1 00000           CON(5)  =EXTN
 1762               * File  ISAform.s       201
 1763 00AB6 00000           CON(5)  =NOVAL
 1764 00ABB 00000           CON(5)  =BINT0
 1765 00AC0 00000           CON(5)  =DOFLASHP
 1766 00AC5 0000000         CON(7)  =^IfSetFieldValue
 1767               * Reset all other fields
 1768               * File  ISAform.s       202
 1769 00ACC 00000           CON(5)  =NOVAL
 1770 00AD1 00000           CON(5)  =BINT1
 1771 00AD6 00000           CON(5)  =DOFLASHP
 1772 00ADB 0000000         CON(7)  =^IfSetFieldValue
 1773               * with NOVAL
 1774               * File  ISAform.s       203
 1775 00AE2 00000           CON(5)  =NOVAL
 1776 00AE7 00000           CON(5)  =BINT2
 1777 00AEC 00000           CON(5)  =DOFLASHP
 1778 00AF1 0000000         CON(7)  =^IfSetFieldValue
 1779               * File  ISAform.s       204
 1780 00AF8 00000           CON(5)  =NOVAL
 1781 00AFD 00000           CON(5)  =BINT3
 1782 00B02 00000           CON(5)  =DOFLASHP
 1783 00B07 0000000         CON(7)  =^IfSetFieldValue
 1784               * File  ISAform.s       205
 1785 00B0E 00000           CON(5)  =BINT3
 1786 00B13 00000           CON(5)  =DOFLASHP
 1787 00B18 0000000         CON(7)  =^IfSetField
 1788               * Keep field focus
 1789               * File  ISAform.s       206
 1790 00B1F 00000           CON(5)  =TRUE
 1791               * Return external value
 1792               * File  ISAform.s       207
 1793 00B24 00000           CON(5)  =SEMI
 1794               * File  ISAform.s       208
 1795 00B29 00000           CON(5)  =DUPTYPEEXT?
 1796 00B2E 00000           CON(5)  =case
 1797 00B33 00000           CON(5)  =DOCOL
 1798               * UNIT
 1799               * File  ISAform.s       209
 1800 00B38 00000           CON(5)  =DUP
 1801 00B3D 00000           CON(5)  =DOIDNT
 1802 00B42 20              CON(2)  2
 1803 00B44 1413            NIBASC  \A1\
 1804 00B48 00000           CON(5)  =EQUALNOT
 1805 00B4D 00000           CON(5)  =IT
 1806 00B52 00000           CON(5)  =DOCOL
 1807               * IF changed from initial value
 1808               * File  ISAform.s       210
 1809 00B57 00000           CON(5)  =NOVAL
 1810 00B5C 00000           CON(5)  =BINT0
 1811 00B61 00000           CON(5)  =DOFLASHP
 1812 00B66 0000000         CON(7)  =^IfSetFieldValue
 1813               * Reset all other fields
 1814               * File  ISAform.s       211
 1815 00B6D 00000           CON(5)  =NOVAL
 1816 00B72 00000           CON(5)  =BINT1
 1817 00B77 00000           CON(5)  =DOFLASHP
 1818 00B7C 0000000         CON(7)  =^IfSetFieldValue
 1819               * with NOVAL
 1820               * File  ISAform.s       212
 1821 00B83 00000           CON(5)  =NOVAL
 1822 00B88 00000           CON(5)  =BINT2
 1823 00B8D 00000           CON(5)  =DOFLASHP
 1824 00B92 0000000         CON(7)  =^IfSetFieldValue
 1825               * File  ISAform.s       213
 1826 00B99 00000           CON(5)  =NOVAL
 1827 00B9E 00000           CON(5)  =BINT3
 1828 00BA3 00000           CON(5)  =DOFLASHP
 1829 00BA8 0000000         CON(7)  =^IfSetFieldValue
 1830               * File  ISAform.s       214
 1831 00BAF 00000           CON(5)  =BINT3
 1832 00BB4 00000           CON(5)  =DOFLASHP
 1833 00BB9 0000000         CON(7)  =^IfSetField
 1834               * Keep field focus
 1835               * File  ISAform.s       215
 1836 00BC0 00000           CON(5)  =SEMI
 1837               * File  ISAform.s       216
 1838 00BC5 00000           CON(5)  =TRUE
 1839               * Return external value
 1840               * File  ISAform.s       217
 1841 00BCA 00000           CON(5)  =SEMI
 1842               * File  ISAform.s       218
 1843 00BCF 00000           CON(5)  =TRUE
 1844               * Message was handled
 1845               * File  ISAform.s       219
 1846 00BD4 00000           CON(5)  =SEMI
 1847               * File  ISAform.s       220
 1848 00BD9 00000           CON(5)  =FALSE
 1849               * Other messages not handled
 1850               * File  ISAform.s       221
 1851 00BDE 00000           CON(5)  =SEMI
 1852               * File  ISAform.s       222
 1853 00BE3 00000           CON(5)  =THIRTEEN
 1854 00BE8 00000           CON(5)  =FORTYFOUR
 1855 00BED 00000           CON(5)  =BINT_115d
 1856 00BF2 00000           CON(5)  =EIGHT
 1857               * Position & size
 1858               * File  ISAform.s       223
 1859 00BF7 00000           CON(5)  =ONE
 1860               * Field type: TEXT
 1861               * File  ISAform.s       224
 1862 00BFC 00000           CON(5)  =DOLIST
 1863 00C01 00000           CON(5)  =ZERO
 1864 00C06 00000           CON(5)  =THIRTEEN
 1865 00C0B 00000           CON(5)  =SEMI
 1866               * Allowed type: REAL, UNIT object
 1867               * File  ISAform.s       225
 1868 00C10 00000           CON(5)  =TWO
 1869               * Decompile with stack appearance
 1870               * File  ISAform.s       226
 1871 00C15 00000           CON(5)  =DOCSTR
 1872 00C1A 73000           CON(5)  55
 1873 00C1F 3505545         NIBASC  \SPEED OF SOUND (##\
            44402F4
            640235F455E44402823232

 1874 00C43 D8              CON(2)  #8D
 1875 00C45 02B6E6F         NIBASC  \ knot)\
            64792
 1876               * Help string
 1877               * File  ISAform.s       227
 1878 00C51 00000           CON(5)  =MINUSONE
 1879               * ChooseData N/A
 1880               * File  ISAform.s       228
 1881 00C56 00000           CON(5)  =MINUSONE
 1882               * ChooseDecompile
 1883               * File  ISAform.s       229
 1884 00C5B 00000           CON(5)  =MINUSONE
 1885               * Reset value
 1886               * File  ISAform.s       230
 1887 00C60 00000           CON(5)  =DOIDNT
 1888 00C65 20              CON(2)  2
 1889 00C67 1413            NIBASC  \A1\
 1890               * Initial value
 1891               * File  ISAform.s       231
 1892
 1893               * File  ISAform.s       232
 1894 00C6B 00000           CON(5)  =BINT5
 1895 00C70 00000           CON(5)  =BINT5
 1896               * Label & field counts
 1897               * File  ISAform.s       233
 1898
 1899               * File  ISAform.s       234
 1900 00C75 00000           CON(5)  ='DROPFALSE
 1901               * Inform Box message handler
 1902               * File  ISAform.s       235
 1903 00C7A 00000           CON(5)  =DOCSTR
 1904 00C7F B0000           CON(5)  11
 1905 00C84 943514          NIBASC  \ISA\
 1906               * Title
 1907               * File  ISAform.s       236
 1908 00C8A 00000           CON(5)  =DOFLASHP
 1909 00C8F 0000000         CON(7)  =^IfMain
 1910               * Create and run the input form
 1911               * File  ISAform.s       237
 1912 00C96 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAform.a      Page    2

 #=case                            Ext                   -   982  1234  1395
                                        1578  1745
 %0<>                              Ext                   -  1013  1098
 %3                                Ext                   -  1595
 %<                                Ext                   -  1409
 '                                 Ext                   -   977  1229  1390
                                        1573  1740
 'DROPFALSE                        Ext                   -  1900
 AddressesCLEBit                   Abs       0 #00000000 -   873
 AddressesCLEFl                    Abs      89 #00000059 -   871   872   873
 AddressesCLENib                   Abs      22 #00000016 -   872
 AlarmBeepBit                      Abs       0 #00000000 -   260
 AlarmBeepFl                       Abs      57 #00000039 -   248   259   260
 AlarmBeepNib                      Abs      14 #0000000E -   259
 AlgebraicModeBit                  Abs       2 #00000002 -   891
 AlgebraicModeFl                   Abs      95 #0000005F -   889   890   891
 AlgebraicModeNib                  Abs      23 #00000017 -   890
 AngleBCt                          Abs       2 #00000002 -   211
 AngleBit1                         Abs       0 #00000000 -   263   264
 AngleBit2                         Abs       1 #00000001 -   264
 AngleFl1                          Abs      17 #00000011 -   210   262   263
 AngleNib                          Abs       4 #00000004 -   262
 ArrayOnlyBit                      Abs       2 #00000002 -   879
 ArrayOnlyFl                       Abs      91 #0000005B -   877   878   879
 ArrayOnlyNib                      Abs      22 #00000016 -   878
 AutoSaveBit                       Abs       1 #00000001 -   888
 AutoSaveFl                        Abs      94 #0000005E -   886   887   888
 AutoSaveNib                       Abs      23 #00000017 -   887
 BINT0                             Ext                   -  1253  1275  1300
                                        1322  1441  1487  1606  1653  1764  1810
 BINT1                             Ext                   -  1046  1140  1447
                                        1462  1493  1508  1612  1659  1770  1816
 BINT2                             Ext                   -  1052  1146  1259
                                        1306  1618  1627  1665  1674  1776  1822
 BINT3                             Ext                   -   995  1058  1152
                                        1248  1265  1312  1418  1453  1499  1760
                                        1781  1785  1827  1831
 BINT4                             Ext                   -  1030  1063  1067
                                        1115  1157  1161  1271  1318  1458  1504
                                        1623  1670
 BINT5                             Ext                   -  1435  1894  1895
 BINT9                             Ext                   -  1602
 BINT_115d                         Ext                   -  1187  1346  1532
                                        1698  1855
 BigFontCmdBit                     Abs       0 #00000000 -   825
 BigFontCmdFl                      Abs      73 #00000049 -   823   824   825
 BigFontCmdNib                     Abs      18 #00000012 -   824
 BigFontStackBit                   Abs       3 #00000003 -   822
 BigFontStackFl                    Abs      72 #00000048 -   820   821   822
 BigFontStackNib                   Abs      17 #00000011 -   821
 BinBaseBCt                        Abs       2 #00000002 -   206
 BinBaseBit1                       Abs       2 #00000002 -   267
 BinBaseFl1                        Abs      11 #0000000B -   205   266   267
 BinBaseNib                        Abs       2 #00000002 -   266
 BinWordSBCt                       Abs       6 #00000006 -   204
 BinWordSBit1                      Abs       0 #00000000 -   270
 BinWordSFl1                       Abs       5 #00000005 -   203   269   270
 BinWordSNib                       Abs       1 #00000001 -   269
 CHR_k                             Ext                   -  1587
 CHR_m                             Ext                   -  1427
 CarefulBit                        Abs       3 #00000003 -   273
 CarefulFl                         Abs       4 #00000004 -   201   272   273
 CarefulNib                        Abs       0 #00000000 -   272
 ClockFmtBit                       Abs       0 #00000000 -   276
 ClockFmtFl                        Abs      41 #00000029 -   233   275   276
 ClockFmtNib                       Abs      10 #0000000A -   275
 ClockOnBit                        Abs       3 #00000003 -   279
 ClockOnFl                         Abs      40 #00000028 -   232   278   279
 ClockOnNib                        Abs       9 #00000009 -   278
 CmdAutoIndentBit                  Abs       3 #00000003 -   810
 CmdAutoIndentFl                   Abs      68 #00000044 -   808   809   810
 CmdAutoIndentNib                  Abs      16 #00000010 -   809
 ComVecDiBCt                       Abs       2 #00000002 -   209
 ComVecDiBit1                      Abs       2 #00000002 -   285
 ComVecDiFl1                       Abs      15 #0000000F -   208   284   285
 ComVecDiNib                       Abs       3 #00000003 -   284
 Complex2DBit                      Abs       2 #00000002 -   282
 Complex2DFl                       Abs      19 #00000013 -   212   281   282
 Complex2DNib                      Abs       4 #00000004 -   281
 ComplexBit                        Abs       2 #00000002 -   905
 ComplexFl                         Abs     103 #00000067 -   903   904   905
 ComplexNib                        Abs      25 #00000019 -   904
 ConnectPtBit                      Abs       2 #00000002 -   288
 ConnectPtFl                       Abs      31 #0000001F -   222   287   288
 ConnectPtNib                      Abs       7 #00000007 -   287
 ConstantsBit                      Abs       1 #00000001 -   291
 ConstantsFl                       Abs       2 #00000002 -   199   290   291
 ConstantsNib                      Abs       0 #00000000 -   290
 DOCOL                             Ext                   -   938   978   983
                                         988  1015  1042  1081  1100  1127  1136
                                        1230  1235  1240  1287  1296  1391  1396
                                        1401  1411  1424  1474  1483  1574  1579
                                        1584  1639  1649  1741  1746  1751  1797
                                        1806
 DOCSTR                            Ext                   -   941   947   953
                                         959   966   991  1005  1021  1090  1106
                                        1203  1243  1362  1414  1428  1548  1588
                                        1592  1714  1754  1871  1903
 DOEXT                             Ext                   -  1000  1085
 DOFLASHP                          Ext                   -  1031  1047  1053
                                        1059  1064  1068  1116  1141  1147  1153
                                        1158  1162  1254  1260  1266  1272  1276
                                        1301  1307  1313  1319  1323  1442  1448
                                        1454  1459  1463  1488  1494  1500  1505
                                        1509  1607  1613  1619  1624  1628  1654
                                        1660  1666  1671  1675  1765  1771  1777
                                        1782  1786  1811  1817  1823  1828  1832
                                        1908
 DOIDNT                            Ext                   -  1035  1120  1131
                                        1220  1291  1381  1478  1564  1643  1730
                                        1801  1887
 DOLIST                            Ext                   -  1194  1353  1539
                                        1705  1862
 DOREAL                            Ext                   -  1001  1086  1405
 DROP                              Ext                   -  1018  1103
 DUP                               Ext                   -   999  1084  1130
                                        1290  1404  1477  1642  1800
 DUPTYPEEXT?                       Ext                   -  1079  1285  1472
                                        1637  1795
 DUPTYPEREAL?                      Ext                   -   986  1238  1399
                                        1582  1749
 DateFmtBit                        Abs       1 #00000001 -   294
 DateFmtFl                         Abs      42 #0000002A -   234   293   294
 DateFmtNib                        Abs      10 #0000000A -   293
 DblSpaceBit                       Abs       0 #00000000 -   297
 DblSpaceFl                        Abs      37 #00000025 -   228   296   297
 DblSpaceNib                       Abs       9 #00000009 -   296
 DefSysF32-01                      Abs67178480 #04010FF0 -   123
 DefSysF64-33                      Abs       0 #00000000 -   122
 DefSysF65-96                      Abs1107296256 #42000000 -   124
 DefSysF97-128                     Abs       0 #00000000 -   125
 DelNRAlmBit                       Abs       3 #00000003 -   300
 DelNRAlmFl                        Abs      44 #0000002C -   236   299   300
 DelNRAlmNib                       Abs      10 #0000000A -   299
 DesasmWithAdrBit                  Abs       2 #00000002 -   819
 DesasmWithAdrFl                   Abs      71 #00000047 -   817   818   819
 DesasmWithAdrNib                  Abs      17 #00000011 -   818
 DigitalClockBit                   Abs       2 #00000002 -   807
 DigitalClockFl                    Abs      67 #00000043 -   805   806   807
 DigitalClockNib                   Abs      16 #00000010 -   806
 EIGHT                             Ext                   -  1186  1188  1347
                                        1533  1699  1856
 EQUALNOT                          Ext                   -  1134  1294  1481
                                        1647  1804
 EXTN                              Ext                   -   996  1249  1419
                                        1436  1603  1761
 ErableHeaderBit                   Abs       0 #00000000 -   885
 ErableHeaderFl                    Abs      93 #0000005D -   883   884   885
 ErableHeaderNib                   Abs      23 #00000017 -   884
 ErrorBeepBit                      Abs       3 #00000003 -   303
 ErrorBeepFl                       Abs      56 #00000038 -   247   302   303
 ErrorBeepNib                      Abs      13 #0000000D -   302
 ExactModeBit                      Abs       0 #00000000 -   910
 ExactModeFl                       Abs     105 #00000069 -   908   909   910
 ExactModeNib                      Abs      26 #0000001A -   909
 FALSE                             Ext                   -  1180  1339  1525
                                        1691  1848
 FORTYFOUR                         Ext                   -  1854
 FORTYSIX                          Ext                   -   970
 FOUR                              Ext                   -   981  1233  1394
                                        1577  1744
 FastEViewBit                      Abs       2 #00000002 -   306
 FastEViewNib                      Abs      14 #0000000E -   305
 FastEqViewFl                      Abs      59 #0000003B -   250   305   306
 FilerConfirmBit                   Abs       0 #00000000 -   837
 FilerConfirmFl                    Abs      77 #0000004D -   835   836   837
 FilerConfirmNib                   Abs      19 #00000013 -   836
 FilerConfirmationBit              Abs       3 #00000003 -   834
 FilerConfirmationFl               Abs      76 #0000004C -   832   833   834
 FilerConfirmationNib              Abs      18 #00000012 -   833
 FlashWarning                      Ext                   -  1027  1112
 FullScreenEditBit                 Abs       0 #00000000 -   813
 FullScreenEditFl                  Abs      69 #00000045 -   811   812   813
 FullScreenEditNib                 Abs      17 #00000011 -   812
 FunctPlotBit                      Abs       1 #00000001 -   309
 FunctPlotFl                       Abs      30 #0000001E -   221   308   309
 FunctPlotNib                      Abs       7 #00000007 -   308
 GCursorBit                        Abs       3 #00000003 -   312
 GCursorFl                         Abs      32 #00000020 -   223   311   312
 GCursorNib                        Abs       7 #00000007 -   311
 GrobDisplayBit                    Abs       2 #00000002 -   855
 GrobDisplayFl                     Abs      83 #00000053 -   853   854   855
 GrobDisplayNib                    Abs      20 #00000014 -   854
 IODataFmtBit                      Abs       2 #00000002 -   324
 IODataFmtFl                       Abs      35 #00000023 -   226   323   324
 IODataFmtNib                      Abs       8 #00000008 -   323
 IODeviceBit                       Abs       0 #00000000 -   327
 IODeviceFl                        Abs      33 #00000021 -   224   326   327
 IODeviceNib                       Abs       8 #00000008 -   326
=ISAform                           Rel       0 #00000000 -   936
 IT                                Ext                   -  1135  1295  1482
                                        1648  1805
 ITE                               Ext                   -  1014  1099  1410
 IndexWrapBit                      Abs       3 #00000003 -   315
 IndexWrapFl                       Abs      64 #00000040 -   255   314   315
 IndexWrapNib                      Abs      15 #0000000F -   314
 InfResActBit                      Abs       1 #00000001 -   318
 InfResActFl                       Abs      22 #00000016 -   215   317   318
 InfResActNib                      Abs       5 #00000005 -   317
 InfResultBit                      Abs       1 #00000001 -   321
 InfResultFl                       Abs      26 #0000001A -   219   320   321
 InfResultNib                      Abs       6 #00000006 -   320
 KernelParamBit                    Abs       1 #00000001 -   840
 KernelParamFl                     Abs      78 #0000004E -   838   839   840
 KernelParamNib                    Abs      19 #00000013 -   839
 KeystrokeBeepBit                  Abs       2 #00000002 -   831
 KeystrokeBeepFl                   Abs      75 #0000004B -   829   830   831
 KeystrokeBeepNib                  Abs      18 #00000012 -   830
 LastArgsBit                       Abs       2 #00000002 -   330
 LastArgsFl                        Abs      55 #00000037 -   246   329   330
 LastArgsNib                       Abs      13 #0000000D -   329
 MASDDecompilerBit                 Abs       1 #00000001 -   864
 MASDDecompilerFl                  Abs      86 #00000056 -   862   863   864
 MASDDecompilerNib                 Abs      21 #00000015 -   863
 MINUSONE                          Ext                   -  1211  1214  1217
                                        1372  1375  1378  1555  1558  1561  1721
                                        1724  1727  1878  1881  1884
 MKSmallFontMenuBit                Abs       3 #00000003 -   858
 MKSmallFontMenuFl                 Abs      84 #00000054 -   856   857   858
 MKSmallFontMenuNib                Abs      20 #00000014 -   857
 MLMASDModeBit                     Abs       3 #00000003 -   882
 MLMASDModeFl                      Abs      92 #0000005C -   880   881   882
 MLMASDModeNib                     Abs      22 #00000016 -   881
 MenuOnBit                         Abs       3 #00000003 -   894
 MenuOnFl                          Abs      96 #00000060 -   892   893   894
 MenuOnNib                         Abs      23 #00000017 -   893
 MultiDispBit                      Abs       3 #00000003 -   336
 MultiDispFl                       Abs      52 #00000034 -   243   335   336
 MultiDispNib                      Abs      12 #0000000C -   335
 MultiLine2GROBBit                 Abs       1 #00000001 -   816
 MultiLine2GROBFl                  Abs      70 #00000046 -   814   815   816
 MultiLine2GROBNib                 Abs      17 #00000011 -   815
 MultiLineBit                      Abs       0 #00000000 -   801
 MultiLineFl                       Abs      65 #00000041 -   799   800   801
 MultiLineNib                      Abs      16 #00000010 -   800
 MultiLineStringsBit               Abs       1 #00000001 -   804
 MultiLineStringsFl                Abs      66 #00000042 -   802   803   804
 MultiLineStringsNib               Abs      16 #00000010 -   803
 NINETEEN                          Ext                   -   951
 NOVAL                             Ext                   -  1045  1051  1057
                                        1062  1139  1145  1151  1156  1252  1258
                                        1264  1270  1299  1305  1311  1317  1440
                                        1446  1452  1457  1486  1492  1498  1503
                                        1605  1611  1617  1622  1652  1658  1664
                                        1669  1763  1769  1775  1780  1809  1815
                                        1821  1826
 NoAutoCRBit                       Abs       1 #00000001 -   339
 NoAutoCRFl                        Abs      38 #00000026 -   229   338   339
 NoAutoCRNib                       Abs       9 #00000009 -   338
 NoIOStMsgBit                      Abs       2 #00000002 -   342
 NoIOStMsgNib                      Abs       9 #00000009 -   341
 NoIOStsMsgFl                      Abs      39 #00000027 -   230   341   342
 NoParseBit                        Abs       2 #00000002 -   345
 NoParseFl                         Abs      63 #0000003F -   254   344   345
 NoParseNib                        Abs      15 #0000000F -   344
 NumDigsBCt                        Abs       4 #00000004 -   239
 NumDigsBit1                       Abs       0 #00000000 -   348
 NumDigsFl1                        Abs      45 #0000002D -   238   347   348
 NumDigsNib                        Abs      11 #0000000B -   347
 NumDispBCt                        Abs       2 #00000002 -   241
 NumDispBit1                       Abs       0 #00000000 -   351
 NumDispFl1                        Abs      49 #00000031 -   240   350   351
 NumDispNib                        Abs      12 #0000000C -   350
 ONE                               Ext                   -   944   950   956
                                         963   969  1191  1350  1536  1702  1859
 OverfActBit                       Abs       0 #00000000 -   354
 OverfActFl                        Abs      21 #00000015 -   214   353   354
 OverfActNib                       Abs       5 #00000005 -   353
 OverflowBit                       Abs       0 #00000000 -   357
 OverflowFl                        Abs      25 #00000019 -   218   356   357
 OverflowNib                       Abs       6 #00000006 -   356
 OverwriteBit                      Abs       3 #00000003 -   360
 OverwriteFl                       Abs      36 #00000024 -   227   359   360
 OverwriteNib                      Abs       8 #00000008 -   359
 PrettyPrintBit                    Abs       2 #00000002 -   843
 PrettyPrintFl                     Abs      79 #0000004F -   841   842   843
 PrettyPrintNib                    Abs      19 #00000013 -   842
 PrintDevBit                       Abs       1 #00000001 -   363
 PrintDevFl                        Abs      34 #00000022 -   225   362   363
 PrintDevNib                       Abs       8 #00000008 -   362
 RadixBit                          Abs       2 #00000002 -   366
 RadixFl                           Abs      51 #00000033 -   242   365   366
 RadixNib                          Abs      12 #0000000C -   365
 RecursiveEditBit                  Abs       3 #00000003 -   870
 RecursiveEditFl                   Abs      88 #00000058 -   868   869   870
 RecursiveEditNib                  Abs      21 #00000015 -   869
 RecursiveStackBit                 Abs       2 #00000002 -   867
 RecursiveStackFl                  Abs      87 #00000057 -   865   866   867
 RecursiveStackNib                 Abs      21 #00000015 -   866
 ResRepAlmBit                      Abs       2 #00000002 -   369
 ResRepAlmFl                       Abs      43 #0000002B -   235   368   369
 ResRepAlmNib                      Abs      10 #0000000A -   368
 ResultsBit                        Abs       2 #00000002 -   372
 ResultsFl                         Abs       3 #00000003 -   200   371   372
 ResultsNib                        Abs       0 #00000000 -   371
 RightJustifiedStackBit            Abs       1 #00000001 -   828
 RightJustifiedStackFl             Abs      74 #0000004A -   826   827   828
 RightJustifiedStackNib            Abs      18 #00000012 -   827
=RomId                             Abs     806 #00000326 -   924
 SEMI                              Ext                   -  1009  1040  1072
                                        1077  1094  1125  1166  1168  1173  1178
                                        1183  1197  1283  1327  1332  1337  1342
                                        1356  1422  1438  1470  1513  1518  1523
                                        1528  1542  1635  1679  1684  1689  1694
                                        1708  1793  1836  1841  1846  1851  1865
                                        1912
 SEVENTEEN                         Ext                   -  1345
 ShowPrecBit                       Abs       0 #00000000 -   375
 ShowPrecFl                        Abs      53 #00000035 -   244   374   375
 ShowPrecNib                       Abs      13 #0000000D -   374
 SmallFontChooseBit                Abs       1 #00000001 -   876
 SmallFontChooseFl                 Abs      90 #0000005A -   874   875   876
 SmallFontChooseNib                Abs      22 #00000016 -   875
 SmallFontEQWEditBit               Abs       1 #00000001 -   852
 SmallFontEQWEditFl                Abs      82 #00000052 -   850   851   852
 SmallFontEQWEditNib               Abs      20 #00000014 -   851
 SmallFontEQWGrobBit               Abs       0 #00000000 -   849
 SmallFontEQWGrobFl                Abs      81 #00000051 -   847   848   849
 SmallFontEQWGrobNib               Abs      20 #00000014 -   848
 SmallFontEQWStackBit              Abs       3 #00000003 -   846
 SmallFontEQWStackFl               Abs      80 #00000050 -   844   845   846
 SmallFontEQWStackNib              Abs      19 #00000013 -   845
 SolutionsBit                      Abs       0 #00000000 -   378
 SolutionsFl                       Abs       1 #00000001 -   198   377   378
 SolutionsNib                      Abs       0 #00000000 -   377
 SystemRPLStackBit                 Abs       0 #00000000 -   861
 SystemRPLStackFl                  Abs      85 #00000055 -   859   860   861
 SystemRPLStackNib                 Abs      21 #00000015 -   860
 TEN                               Ext                   -   945
 THIRTEEN                          Ext                   -  1185  1196  1344
                                        1355  1530  1541  1696  1707  1853  1864
 THIRTYFIVE                        Ext                   -  1697
 THIRTYSEVEN                       Ext                   -   964
 TRUE                              Ext                   -  1074  1170  1175
                                        1280  1329  1334  1467  1515  1520  1632
                                        1681  1686  1790  1838  1843
 TWENTYEIGHT                       Ext                   -   957
 TWENTYSIX                         Ext                   -  1531
 TWO                               Ext                   -  1200  1359  1545
                                        1711  1868
 TriAlphaBit                       Abs       3 #00000003 -   381
 TriAlphaFl                        Abs      60 #0000003C -   251   380   381
 TriAlphaNib                       Abs      14 #0000000E -   380
 TriUserBit                        Abs       0 #00000000 -   384
 TriUserFl                         Abs      61 #0000003D -   252   383   384
 TriUserNib                        Abs      15 #0000000F -   383
 UM>?                              Ext                   -  1012  1097
 UnderfActBit                      Abs       3 #00000003 -   387
 UnderfActFl                       Abs      20 #00000014 -   213   386   387
 UnderfActNib                      Abs       4 #00000004 -   386
 UnderfNegBit                      Abs       2 #00000002 -   390
 UnderfNegFl                       Abs      23 #00000017 -   216   389   390
 UnderfNegNib                      Abs       5 #00000005 -   389
 UnderfPosBit                      Abs       3 #00000003 -   393
 UnderfPosFl                       Abs      24 #00000018 -   217   392   393
 UnderfPosNib                      Abs       5 #00000005 -   392
 UserKeysBit                       Abs       1 #00000001 -   396
 UserKeysFl                        Abs      62 #0000003E -   253   395   396
 UserKeysNib                       Abs      15 #0000000F -   395
 VerboseBit                        Abs       1 #00000001 -   333
 VerboseFl                         Abs      58 #0000003A -   249   332   333
 VerboseNib                        Abs      14 #0000000E -   332
 VerticalListBit                   Abs       0 #00000000 -   897
 VerticalListFl                    Abs      97 #00000061 -   895   896   897
 VerticalListNib                   Abs      24 #00000018 -   896
 VerticalVectorBit                 Abs       1 #00000001 -   900
 VerticalVectorFl                  Abs      98 #00000062 -   898   899   900
 VerticalVectorNib                 Abs      24 #00000018 -   899
 ZERO                              Ext                   -  1195  1354  1540
                                        1706  1863
 ^IfMain                           Ext                   -  1909
 ^IfSetField                       Ext                   -  1032  1069  1117
                                        1163  1277  1324  1464  1510  1629  1676
                                        1787  1833
 ^IfSetFieldValue                  Ext                   -  1048  1054  1060
                                        1065  1142  1148  1154  1159  1255  1261
                                        1267  1273  1302  1308  1314  1320  1443
                                        1449  1455  1460  1489  1495  1501  1506
                                        1608  1614  1620  1625  1655  1661  1667
                                        1672  1766  1772  1778  1783  1812  1818
                                        1824  1829
 case                              Ext                   -   987  1080  1239
                                        1286  1400  1473  1583  1638  1750  1796
 hasALIAS                          Abs       2 #00000002 -   409
 hasCOLCT                          Abs       2 #00000002 -   415
 hasDER                            Abs       8 #00000008 -   413
 hasEXPND                          Abs       1 #00000001 -   416
 hasFORM                           Abs       8 #00000008 -   419
 hasHELP                           Abs       4 #00000004 -   407
 hasINTG                           Abs       4 #00000004 -   420
 hasINV                            Abs       4 #00000004 -   414
 hasPDATA                          Abs       1 #00000001 -   410
 hasPROMPTM                        Abs       4 #00000004 -   408
 hasVUNS                           Abs       1 #00000001 -   422
 hasWHERE                          Abs       2 #00000002 -   421
 nonALG                            Abs       8 #00000008 -   406
 pdCM                              Abs       6 #00000006 -   431
 pdEQ                              Abs       7 #00000007 -   432
 pdEX                              Abs       0 #00000000 -   425
 pdLP                              Abs       4 #00000004 -   429
 pdOP                              Abs       1 #00000001 -   426
 pdOS0                             Abs       8 #00000008 -   433
 pdOS1                             Abs       9 #00000009 -   434
 pdOS2                             Abs      10 #0000000A -   435
 pdOS3                             Abs      11 #0000000B -   436
 pdOS4                             Abs      12 #0000000C -   437
 pdOS5                             Abs      13 #0000000D -   438
 pdOS6                             Abs      14 #0000000E -   439
 pdOS7                             Abs      15 #0000000F -   440
 pdQE                              Abs       2 #00000002 -   427
 pdQN                              Abs       3 #00000003 -   428
 pdRP                              Abs       5 #00000005 -   430
 um/                               Ext                   -  1599
 umEND                             Ext                   -   994  1008  1093
                                        1247  1417  1432  1600  1757
 umP                               Ext                   -  1431  1591
 um^                               Ext                   -  1598
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
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
