Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)                                      ASPDform.a     Page    1

    1               * File  ASPDform.s      1
    2               * RPL
    3               * File  ASPDform.s      2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDform.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               **********************************************************************
    6               * NAME:          ASPDform
    7               * AUTHOR:        Dan Pitic
    8               * VERSION:       1.33
    9               * DATE:          13 June 2009
   10               * COMPATIBILITY: HP50
   11               * DESCRIPTION:   Generates the input and output form for ASPD50
   12               *
   13               * File  ASPDform.s      11
   14               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD50\ASPD50.h
   15
   16               =RomId  EQU     #328
   17               * ROMID set to 328
   18
   19
   20
   21
   22
   23
   24
   25
   26               *|| Resuming file ASPDform.s at line 11
   27               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.H
   28
   29
   30               * RPL
   31               * insure RPL-mode exit
   32
   33               * ( Rad
   34
   35               * ( %2PI
   36               * ( %PI/24
   37
   38
   39
   40
   41               * ( 1=1Var, 2=2Var Statistic
   42               * ( 1=Histogram, 2=BoxWhisker
   43
   44
   45
   46
   47
   48               * ASSEMBLE
   49               DefSysF64-33 EQU        #00000000
   50               DefSysF32-01 EQU        #04010FF0
   51               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   52               DefSysF97-128 EQU       #00000000
   53
   54               * RPL
   55
   56
   57               * ( solution mode
   58               * ( constants mode
   59               * ( results mode
   60               * ( careful evaluation mode
   61
   62               * ( binary integer wordsize
   63               * must start on nibble boundary
   64               * ( binary integer base
   65               * must follow "fnBinWordS6"
   66
   67               * ( financial BEGIN/END mode
   68               * ( complex number and vector
   69               * mode
   70               * ( angle mode
   71               * must start on a nibble boundary
   72               * ( complex 2D mode
   73               * ( underflow action
   74               * ( overflow action
   75               * ( infinite result action
   76               * ( underflow-negative indicator
   77               * ( underflow-positive indicator
   78               * ( overflow indicator
   79               * ( infinite result indicator
   80               * ( symbolic-comples decompilation
   81               * ( simultaneous plot mode
   82               * ( axis drawing plot mode
   83
   84               * ( connect points mode
   85               * ( graphics cursor type mode
   86               * ( I/O device
   87               * ( print device
   88               * ( I/O data format
   89               * ( variable overwrite mode
   90               * ( double-space print mode
   91               * ( suppress auto CR mode
   92               * ( suppress I/O status messages
   93
   94
   95               * ( clock display mode
   96               * ( clock display format
   97               * ( date format
   98               * ( reschedule unacknowledged
   99               * repeat alarms mode
  100               * ( delete acknowledged non-repeat
  101               * alarms mode
  102
  103               * ( number of decimal digits
  104               * must start on nibble boundary
  105               * ( number display format
  106               * must start on nibble boundary
  107               * ( radix mark
  108               * ( multi-line display mode
  109               * ( show precedence mode
  110               * ( zero out tiny matrix elements
  111
  112               * ( last arguments mode
  113               * ( error beep mode
  114               * ( alarm beep mode
  115               * ( verbose display mode
  116               * ( variable name only mode
  117               * ( 3-way alpha mode
  118               * ( 3-way user keys mode
  119               * ( user keys mode
  120               * ( special parser mode
  121               * ( index wraparound indicator
  122
  123
  124               * ASSEMBLE
  125               SolutionsFl  EQU 1
  126               ConstantsFl  EQU 2
  127               ResultsFl    EQU 3
  128               CarefulFl    EQU 4
  129
  130               BinWordSFl1  EQU 5      must start on a nibble boundary
  131               BinWordSBCt  EQU 6      number of bits
  132               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  133               BinBaseBCt   EQU 2      number of bits
  134
  135               ComVecDiFl1  EQU 15
  136               ComVecDiBCt  EQU 2      number of bits
  137               AngleFl1     EQU 17     must start on a nibble boundary
  138               AngleBCt     EQU 2      number of bits
  139               Complex2DFl  EQU 19
  140               UnderfActFl  EQU 20
  141               OverfActFl   EQU 21
  142               InfResActFl  EQU 22
  143               UnderfNegFl  EQU 23
  144               UnderfPosFl  EQU 24
  145               OverflowFl   EQU 25
  146               InfResultFl  EQU 26
  147
  148               FunctPlotFl  EQU 30
  149               ConnectPtFl  EQU 31
  150               GCursorFl    EQU 32
  151               IODeviceFl   EQU 33
  152               PrintDevFl   EQU 34
  153               IODataFmtFl  EQU 35
  154               OverwriteFl  EQU 36
  155               DblSpaceFl   EQU 37
  156               NoAutoCRFl   EQU 38
  157               NoIOStsMsgFl EQU 39
  158
  159               ClockOnFl    EQU 40
  160               ClockFmtFl   EQU 41
  161               DateFmtFl    EQU 42
  162               ResRepAlmFl  EQU 43
  163               DelNRAlmFl   EQU 44
  164
  165               NumDigsFl1   EQU 45     must start on a nibble boundary
  166               NumDigsBCt   EQU 4      number of bits
  167               NumDispFl1   EQU 49     must start on a nibble boundary
  168               NumDispBCt   EQU 2      number of bits
  169               RadixFl      EQU 51
  170               MultiDispFl  EQU 52
  171               ShowPrecFl   EQU 53
  172
  173               LastArgsFl   EQU 55
  174               ErrorBeepFl  EQU 56
  175               AlarmBeepFl  EQU 57
  176               VerboseFl    EQU 58
  177               FastEqViewFl EQU 59
  178               TriAlphaFl   EQU 60
  179               TriUserFl    EQU 61
  180               UserKeysFl   EQU 62
  181               NoParseFl    EQU 63
  182               IndexWrapFl  EQU 64
  183
  184
  185
  186               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  187               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  188
  189               AngleNib     EQU ((AngleFl1)-1)/4
  190               AngleBit1    EQU ((AngleFl1)-1)%4
  191               AngleBit2    EQU (AngleBit1)+1
  192
  193               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  194               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  195
  196               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  197               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  198
  199               CarefulNib   EQU ((CarefulFl)-1)/4
  200               CarefulBit   EQU ((CarefulFl)-1)%4
  201
  202               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  203               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  204
  205               ClockOnNib   EQU ((ClockOnFl)-1)/4
  206               ClockOnBit   EQU ((ClockOnFl)-1)%4
  207
  208               Complex2DNib EQU ((Complex2DFl)-1)/4
  209               Complex2DBit EQU ((Complex2DFl)-1)%4
  210
  211               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  212               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  213
  214               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  215               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  216
  217               ConstantsNib EQU ((ConstantsFl)-1)/4
  218               ConstantsBit EQU ((ConstantsFl)-1)%4
  219
  220               DateFmtNib   EQU ((DateFmtFl)-1)/4
  221               DateFmtBit   EQU ((DateFmtFl)-1)%4
  222
  223               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  224               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  225
  226               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  227               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  228
  229               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  230               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  231
  232               FastEViewNib EQU ((FastEqViewFl)-1)/4
  233               FastEViewBit EQU ((FastEqViewFl)-1)%4
  234
  235               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  236               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  237
  238               GCursorNib   EQU ((GCursorFl)-1)/4
  239               GCursorBit   EQU ((GCursorFl)-1)%4
  240
  241               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  242               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  243
  244               InfResActNib EQU ((InfResActFl)-1)/4
  245               InfResActBit EQU ((InfResActFl)-1)%4
  246
  247               InfResultNib EQU ((InfResultFl)-1)/4
  248               InfResultBit EQU ((InfResultFl)-1)%4
  249
  250               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  251               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  252
  253               IODeviceNib  EQU ((IODeviceFl)-1)/4
  254               IODeviceBit  EQU ((IODeviceFl)-1)%4
  255
  256               LastArgsNib  EQU ((LastArgsFl)-1)/4
  257               LastArgsBit  EQU ((LastArgsFl)-1)%4
  258
  259               VerboseNib   EQU ((VerboseFl)-1)/4
  260               VerboseBit   EQU ((VerboseFl)-1)%4
  261
  262               MultiDispNib EQU ((MultiDispFl)-1)/4
  263               MultiDispBit EQU ((MultiDispFl)-1)%4
  264
  265               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  266               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  267
  268               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  269               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  270
  271               NoParseNib   EQU ((NoParseFl)-1)/4
  272               NoParseBit   EQU ((NoParseFl)-1)%4
  273
  274               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  275               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  276
  277               NumDispNib   EQU ((NumDispFl1)-1)/4
  278               NumDispBit1  EQU ((NumDispFl1)-1)%4
  279
  280               OverfActNib  EQU ((OverfActFl)-1)/4
  281               OverfActBit  EQU ((OverfActFl)-1)%4
  282
  283               OverflowNib  EQU ((OverflowFl)-1)/4
  284               OverflowBit  EQU ((OverflowFl)-1)%4
  285
  286               OverwriteNib EQU ((OverwriteFl)-1)/4
  287               OverwriteBit EQU ((OverwriteFl)-1)%4
  288
  289               PrintDevNib  EQU ((PrintDevFl)-1)/4
  290               PrintDevBit  EQU ((PrintDevFl)-1)%4
  291
  292               RadixNib     EQU ((RadixFl)-1)/4
  293               RadixBit     EQU ((RadixFl)-1)%4
  294
  295               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  296               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  297
  298               ResultsNib   EQU ((ResultsFl)-1)/4
  299               ResultsBit   EQU ((ResultsFl)-1)%4
  300
  301               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  302               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  303
  304               SolutionsNib EQU ((SolutionsFl)-1)/4
  305               SolutionsBit EQU ((SolutionsFl)-1)%4
  306
  307               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  308               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  309
  310               TriUserNib   EQU ((TriUserFl)-1)/4
  311               TriUserBit   EQU ((TriUserFl)-1)%4
  312
  313               UnderfActNib EQU ((UnderfActFl)-1)/4
  314               UnderfActBit EQU ((UnderfActFl)-1)%4
  315
  316               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  317               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  318
  319               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  320               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  321
  322               UserKeysNib  EQU ((UserKeysFl)-1)/4
  323               UserKeysBit  EQU ((UserKeysFl)-1)%4
  324
  325               * RPL
  326               * RPL
  327               * insure RPL-mode exit
  328
  329
  330               * ASSEMBLE
  331
  332
  333               nonALG EQU 8                    not-allowed-in-algebraics flag
  334               hasHELP EQU 4                   has-help-data flag
  335               hasPROMPTM EQU 4                same as above
  336               hasALIAS EQU 2                  has-algebraic-alias flag
  337               hasPDATA EQU 1                  has-parse-data flag
  338
  339
  340               hasDER EQU 8                    has-derivative flag
  341               hasINV EQU 4                    has-inverse flag
  342               hasCOLCT EQU 2                  has-COLCT-data flag
  343               hasEXPND EQU 1                  has-EXPND-data flag
  344
  345
  346               hasFORM EQU 8                   has-FORM-menu flag
  347               hasINTG EQU 4                   has-Integral-data flag
  348               hasWHERE EQU 2                  has-WHERE-code flag
  349               hasVUNS EQU 1                   has-veryunsymin-code flag
  350
  351
  352               pdEX EQU #0             general expression
  353               pdOP EQU #1             operator
  354               pdQE EQU #2             quoted expression
  355               pdQN EQU #3             quoted name
  356               pdLP EQU #4             left parenthesis
  357               pdRP EQU #5             right parenthesis
  358               pdCM EQU #6             comma (non-radix)
  359               pdEQ EQU #7             equal-sign separator
  360               pdOS0 EQU #8            optional repeat 0
  361               pdOS1 EQU #9            optional repeat 1
  362               pdOS2 EQU #A            optional repeat 2
  363               pdOS3 EQU #B            optional repeat 3
  364               pdOS4 EQU #C            optional repeat 4
  365               pdOS5 EQU #D            optional repeat 5
  366               pdOS6 EQU #E            optional repeat 6
  367               pdOS7 EQU #F            optional repeat 7
  368
  369               * RPL
  370               * RPL
  371               * insure RPL-mode exit
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
  387
  388
  389               * RPL
  390               * insure RPL-mode exit
  391
  392               * RPL
  393               * insure RPL-mode exit
  394
  395
  396
  397
  398
  399
  400
  401
  402
  403               * ( for internal use only
  404
  405
  406
  407
  408
  409
  410
  411
  412
  413
  414               * ( decimal 67
  415               * ( decimal 86
  416               * ( decimal 82
  417               * ( decimal 85
  418               * ( decimal 101
  419               * ( decimal 97
  420               * ( decimal 100
  421               * ( decimal 113
  422               * ( decimal 112
  423
  424               * ( check width
  425               * ( field character width
  426
  427               * ( decimal 67
  428               * ( decimal 85
  429               * ( decimal 97
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
  445
  446
  447               * RPL
  448               * insure RPL-mode exit
  449
  450               * ( decimal 66
  451               * ( decimal 67
  452               * ( decimal 69
  453               * ( decimal 82
  454               * ( decimal 83
  455               * ( decimal 84
  456               * ( decimal 85
  457               * ( decimal 86
  458               * ( decimal 87
  459
  460
  461               * ( norm-view default visible row count
  462               * ( default first row X location
  463               * ( default first row Y location
  464               * ( default row width
  465               * ( default row height
  466
  467               * ( max-view width
  468               * ( max-view height
  469               * ( max-view default visible row count
  470
  471               * ( prompt area height
  472
  473               * ( more-up/down icon width
  474
  475
  476
  477               * RPL
  478               * insure RPL-mode exit
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
  692
  693
  694               * RPL
  695               * insure RPL-mode exit
  696
  697
  698
  699               * ( set for informations
  700               * ( set for step by step mode on
  701               * ( internal use: true if VXXL success
  702               * ( set for no gcd computations
  703               * ( set for complex mode
  704               * ( internal use:       LN->-INV[-LN]]
  705               * ( set for approx mode
  706               * ( set for TSIMP call inside SERIES
  707               * ( internal use:       modular computation
  708               * ( internal use:       testing remainder=0
  709               * ( set to allow numeric factorization
  710               * ( set for large matrices
  711               * ( set: don't simplify inside non rational operation
  712               * ( set to see i as an irrquad c=-1
  713               * ( set to disable linearity simplif.
  714               * ( set for increasing power x+1 -> 1+x
  715               * ( internal use:       sqrt not as irrquad
  716               * ( set if sin are prefered to cos
  717               * ( set for menu as choosebox
  718               * ( set if xINT is not simplified
  719               * ( set if non rigourous mode
  720               * ( set to allow silent mode switch
  721               * ( set if xLN returns LN[ABS[]]
  722
  723
  724               * ASSEMBLE
  725
  726               MultiLineFl     EQU     65
  727               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  728               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  729               MultiLineStringsFl      EQU     66
  730               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  731               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  732               DigitalClockFl  EQU     67
  733               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  734               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  735               CmdAutoIndentFl EQU     68
  736               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  737               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  738               FullScreenEditFl        EQU     69
  739               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  740               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  741               MultiLine2GROBFl        EQU     70
  742               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  743               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  744               DesasmWithAdrFl EQU     71
  745               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  746               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  747               BigFontStackFl  EQU     72
  748               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  749               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  750               BigFontCmdFl    EQU     73
  751               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  752               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  753               RightJustifiedStackFl   EQU     74
  754               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  755               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  756               KeystrokeBeepFl EQU     75
  757               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  758               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  759               FilerConfirmationFl     EQU     76
  760               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  761               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  762               FilerConfirmFl  EQU     77
  763               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  764               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  765               KernelParamFl   EQU     78
  766               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  767               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  768               PrettyPrintFl   EQU     79
  769               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  770               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  771               SmallFontEQWStackFl     EQU     80
  772               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  773               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  774               SmallFontEQWGrobFl      EQU     81
  775               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  776               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  777               SmallFontEQWEditFl      EQU     82
  778               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  779               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  780               GrobDisplayFl   EQU     83
  781               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  782               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  783               MKSmallFontMenuFl       EQU     84
  784               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  785               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  786               SystemRPLStackFl        EQU     85
  787               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  788               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  789               MASDDecompilerFl        EQU     86
  790               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  791               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  792               RecursiveStackFl        EQU     87
  793               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  794               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  795               RecursiveEditFl EQU     88
  796               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  797               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  798               AddressesCLEFl  EQU     89
  799               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  800               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  801               SmallFontChooseFl       EQU     90
  802               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  803               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  804               ArrayOnlyFl     EQU     91
  805               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  806               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  807               MLMASDModeFl    EQU     92
  808               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  809               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  810               ErableHeaderFl  EQU     93
  811               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  812               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  813               AutoSaveFl      EQU     94
  814               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  815               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  816               AlgebraicModeFl EQU     95
  817               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  818               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  819               MenuOnFl        EQU     96
  820               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  821               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  822               VerticalListFl  EQU     97
  823               VerticalListNib EQU     ((VerticalListFl)-1)/4
  824               VerticalListBit EQU     ((VerticalListFl)-1)%4
  825               VerticalVectorFl        EQU     98
  826               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  827               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  828
  829
  830               ComplexFl       EQU     103
  831               ComplexNib      EQU     ((ComplexFl)-1)/4
  832               ComplexBit      EQU     ((ComplexFl)-1)%4
  833
  834
  835               ExactModeFl     EQU     105
  836               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  837               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  838
  839
  840               * RPL
  841
  842
  843
  844               * ASSEMBLE
  845                       SETLIST CODE, INCLUDE, PSEUDO
  846               * RPL
  847
  848               *|| Resuming file ASPDform.s at line 12
  849               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\informbox.h
  850
  851
  852
  853
  854
  855
  856
  857
  858
  859
  860
  861
  862
  863
  864
  865
  866
  867
  868
  869
  870
  871
  872
  873
  874
  875
  876
  877
  878
  879
  880
  881
  882
  883
  884
  885
  886
  887
  888
  889
  890
  891
  892
  893
  894
  895
  896
  897
  898
  899
  900
  901
  902
  903
  904
  905
  906
  907
  908
  909
  910
  911
  912
  913
  914
  915
  916
  917
  918
  919
  920
  921
  922               * Do not modify any of these constants
  923
  924               * Do not modify any of these constants
  925               * ( was zint
  926
  927
  928
  929
  930
  931
  932
  933
  934
  935               *|| Resuming file ASPDform.s at line 13
  936               * ( Redefine std. field height for HP50
  937               * File  ASPDform.s      15
  938 00000         =ASPDform
  939               * File  ASPDform.s      16
  940 00000 00000           CON(5)  =DOCOL
  941               * Label definitions (X pos    Y pos)
  942               * File  ASPDform.s      18
  943 00005 00000           CON(5)  =DOCSTR
  944 0000A B0000           CON(5)  11
  945 0000F 6534A3          NIBASC  \VC:\
  946 00015 00000           CON(5)  =ONE
  947 0001A 00000           CON(5)  =TEN
  948               * File  ASPDform.s      19
  949 0001F 00000           CON(5)  =DOCSTR
  950 00024 B0000           CON(5)  11
  951 00029 0514A3          NIBASC  \PA:\
  952 0002F 00000           CON(5)  =ONE
  953 00034 00000           CON(5)  =NINETEEN
  954               * File  ASPDform.s      20
  955 00039 00000           CON(5)  =DOCSTR
  956 0003E 90000           CON(5)  9
  957 00043 D4A3            NIBASC  \M:\
  958 00047 00000           CON(5)  =FOURTHREE
  959 0004C 00000           CON(5)  =NINETEEN
  960               * File  ASPDform.s      21
  961 00051 00000           CON(5)  =DOCSTR
  962 00056 B0000           CON(5)  11
  963 0005B 4523A3          NIBASC  \T2:\
  964 00061 00000           CON(5)  =ONE
  965 00066 00000           CON(5)  =TWENTYEIGHT
  966               * File  ASPDform.s      22
  967 0006B 00000           CON(5)  =DOCSTR
  968 00070 B0000           CON(5)  11
  969 00075 4513A3          NIBASC  \T1:\
  970 0007B 00000           CON(5)  =FOURTHREE
  971 00080 00000           CON(5)  =TWENTYEIGHT
  972               * File  ASPDform.s      23
  973 00085 00000           CON(5)  =DOCSTR
  974 0008A B0000           CON(5)  11
  975 0008F 6513A3          NIBASC  \V1:\
  976 00095 00000           CON(5)  =ONE
  977 0009A 00000           CON(5)  =THIRTYSEVEN
  978               * File  ASPDform.s      24
  979
  980               * Field definitions
  981               * File  ASPDform.s      26
  982               * Field VC definition [#BINT0]
  983               * File  ASPDform.s      27
  984 0009F 00000           CON(5)  ='
  985 000A4 00000           CON(5)  =DOCOL
  986               * Field message handler
  987               * File  ASPDform.s      28
  988 000A9 00000           CON(5)  =FOUR
  989 000AE 00000           CON(5)  =#=case
  990 000B3 00000           CON(5)  =DOCOL
  991               * Get internal field value
  992               * File  ASPDform.s      29
  993 000B8 00000           CON(5)  =DUPTYPEREAL?
  994 000BD 00000           CON(5)  =case
  995 000C2 00000           CON(5)  =DOCOL
  996               * REAL
  997               * File  ASPDform.s      30
  998 000C7 00000           CON(5)  =DOCSTR
  999 000CC D0000           CON(5)  13
 1000 000D1 B6E6F64         NIBASC  \knot\
            7
 1001 000D9 00000           CON(5)  =umEND
 1002 000DE 00000           CON(5)  =BINT3
 1003 000E3 00000           CON(5)  =EXTN
 1004               * Add default knot units
 1005               * File  ASPDform.s      31
 1006 000E8 00000           CON(5)  =NOVAL
 1007 000ED 00000           CON(5)  =BINT2
 1008               * File  ASPDform.s      32
 1009 000F2 00000           CON(5)  =DOFLASHP
 1010 000F7 0000000         CON(7)  =^IfSetFieldValue
 1011               * Reset M
 1012               * File  ASPDform.s      33
 1013 000FE 00000           CON(5)  =NOVAL
 1014 00103 00000           CON(5)  =BINT5
 1015               * File  ASPDform.s      34
 1016 00108 00000           CON(5)  =DOFLASHP
 1017 0010D 0000000         CON(7)  =^IfSetFieldValue
 1018               * and TAS
 1019               * File  ASPDform.s      35
 1020 00114 00000           CON(5)  =TRUE
 1021               * Return external value
 1022               * File  ASPDform.s      36
 1023 00119 00000           CON(5)  =SEMI
 1024               * File  ASPDform.s      37
 1025 0011E 00000           CON(5)  =DUPTYPEEXT?
 1026 00123 00000           CON(5)  =case
 1027 00128 00000           CON(5)  =DOCOL
 1028               * UNIT
 1029               * File  ASPDform.s      38
 1030 0012D 00000           CON(5)  =DUP
 1031 00132 00000           CON(5)  =DOIDNT
 1032 00137 20              CON(2)  2
 1033 00139 6534            NIBASC  \VC\
 1034 0013D 00000           CON(5)  =EQUALNOT
 1035 00142 00000           CON(5)  =IT
 1036 00147 00000           CON(5)  =DOCOL
 1037               * IF changed from initial value
 1038               * File  ASPDform.s      39
 1039 0014C 00000           CON(5)  =NOVAL
 1040 00151 00000           CON(5)  =BINT2
 1041               * File  ASPDform.s      40
 1042 00156 00000           CON(5)  =DOFLASHP
 1043 0015B 0000000         CON(7)  =^IfSetFieldValue
 1044               * Reset M
 1045               * File  ASPDform.s      41
 1046 00162 00000           CON(5)  =NOVAL
 1047 00167 00000           CON(5)  =BINT5
 1048               * File  ASPDform.s      42
 1049 0016C 00000           CON(5)  =DOFLASHP
 1050 00171 0000000         CON(7)  =^IfSetFieldValue
 1051               * and TAS
 1052               * File  ASPDform.s      43
 1053 00178 00000           CON(5)  =SEMI
 1054               * File  ASPDform.s      44
 1055 0017D 00000           CON(5)  =TRUE
 1056               * Return external value
 1057               * File  ASPDform.s      45
 1058 00182 00000           CON(5)  =SEMI
 1059               * File  ASPDform.s      46
 1060 00187 00000           CON(5)  =TRUE
 1061               * Message handled
 1062               * File  ASPDform.s      47
 1063 0018C 00000           CON(5)  =SEMI
 1064               * File  ASPDform.s      48
 1065 00191 00000           CON(5)  =FALSE
 1066               * Other messages not handled
 1067               * File  ASPDform.s      49
 1068 00196 00000           CON(5)  =SEMI
 1069               *               BINT14  BINT8  BINT110  BINT8        ( Position & size )
 1070               * File  ASPDform.s      51
 1071 0019B 00000           CON(5)  =FOURTEEN
 1072 001A0 00000           CON(5)  =EIGHT
 1073 001A5 00000           CON(5)  =DOBINT
 1074 001AA D6000           CON(5)  109
 1075 001AF 00000           CON(5)  =EIGHT
 1076               * Position & size
 1077               * File  ASPDform.s      52
 1078 001B4 00000           CON(5)  =ONE
 1079               * Field type: TEXT
 1080               * File  ASPDform.s      53
 1081 001B9 00000           CON(5)  =DOLIST
 1082 001BE 00000           CON(5)  =ZERO
 1083 001C3 00000           CON(5)  =THIRTEEN
 1084 001C8 00000           CON(5)  =SEMI
 1085               * Allowed type: REAL, UNIT
 1086               * File  ASPDform.s      54
 1087 001CD 00000           CON(5)  =TWO
 1088               * Decompile with stack appearance
 1089               * File  ASPDform.s      55
 1090 001D2 00000           CON(5)  =DOCSTR
 1091 001D7 34000           CON(5)  67
 1092 001DC 3414C49         NIBASC  \CALIBRATED AIR SPEED\
            4242514
            45544402149425023505545444

 1093 00204 0282323         NIBASC  \ (##\
            2
 1094 0020C D8              CON(2)  #8D
 1095 0020E 02B6E6F         NIBASC  \ knot)\
            64792
 1096               * Help string
 1097               * File  ASPDform.s      56
 1098 0021A 00000           CON(5)  =MINUSONE
 1099               * ChooseData N/A
 1100               * File  ASPDform.s      57
 1101 0021F 00000           CON(5)  =MINUSONE
 1102               * ChooseDecompile
 1103               * File  ASPDform.s      58
 1104 00224 00000           CON(5)  =MINUSONE
 1105               * Reset value
 1106               * File  ASPDform.s      59
 1107 00229 00000           CON(5)  =DOIDNT
 1108 0022E 20              CON(2)  2
 1109 00230 6534            NIBASC  \VC\
 1110               * Initial value
 1111               * File  ASPDform.s      60
 1112
 1113               * File  ASPDform.s      61
 1114               * Field PA definition [#BINT1]
 1115               * File  ASPDform.s      62
 1116 00234 00000           CON(5)  ='
 1117 00239 00000           CON(5)  =DOCOL
 1118               * Field message handler
 1119               * File  ASPDform.s      63
 1120 0023E 00000           CON(5)  =FOUR
 1121 00243 00000           CON(5)  =#=case
 1122 00248 00000           CON(5)  =DOCOL
 1123               * Get internal field value
 1124               * File  ASPDform.s      64
 1125 0024D 00000           CON(5)  =DUPTYPEREAL?
 1126 00252 00000           CON(5)  =case
 1127 00257 00000           CON(5)  =DOCOL
 1128               * REAL
 1129               * File  ASPDform.s      65
 1130 0025C 00000           CON(5)  =DOCSTR
 1131 00261 90000           CON(5)  9
 1132 00266 6647            NIBASC  \ft\
 1133 0026A 00000           CON(5)  =umEND
 1134 0026F 00000           CON(5)  =BINT3
 1135 00274 00000           CON(5)  =EXTN
 1136               * Add default feet units
 1137               * File  ASPDform.s      66
 1138 00279 00000           CON(5)  =DUP
 1139 0027E 00000           CON(5)  =DOEXT
 1140 00283 00000           CON(5)  =DOREAL
 1141 00288 400             NIBHEX  400
 1142 0028B 0000000         NIBHEX  000000000002
            00002
 1143 00297 0               NIBHEX  0
 1144 00298 00000           CON(5)  =DOCSTR
 1145 0029D 70000           CON(5)  7
 1146 002A2 D6              NIBASC  \m\
 1147 002A4 00000           CON(5)  =umEND
 1148 002A9 00000           CON(5)  =SEMI
 1149               * IF PA is > 20 km
 1150               * File  ASPDform.s      67
 1151 002AE 00000           CON(5)  =UM>?
 1152 002B3 00000           CON(5)  =%0<>
 1153 002B8 00000           CON(5)  =ITE
 1154 002BD 00000           CON(5)  =DOCOL
 1155               * File  ASPDform.s      68
 1156 002C2 00000           CON(5)  =DROP
 1157               * DROP value
 1158               * File  ASPDform.s      69
 1159 002C7 00000           CON(5)  =DOCSTR
 1160 002CC 13000           CON(5)  49
 1161 002D1 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

 1162 002F9 B6D6            NIBASC  \km\
 1163               * Display error message and error beep
 1164               * File  ASPDform.s      70
 1165 002FD 00000           CON(5)  =FlashWarning
 1166               * File  ASPDform.s      71
 1167 00302 00000           CON(5)  =NOVAL
 1168               * Set value to NOVAL
 1169               * File  ASPDform.s      72
 1170 00307 00000           CON(5)  =BINT0
 1171 0030C 00000           CON(5)  =DOFLASHP
 1172 00311 0000000         CON(7)  =^IfSetField
 1173               * Keep focus
 1174               * File  ASPDform.s      73
 1175 00318 00000           CON(5)  =SEMI
 1176               * File  ASPDform.s      74
 1177 0031D 00000           CON(5)  =DOCOL
 1178               * ELSE
 1179               * File  ASPDform.s      75
 1180 00322 00000           CON(5)  =NOVAL
 1181 00327 00000           CON(5)  =BINT2
 1182               * File  ASPDform.s      76
 1183 0032C 00000           CON(5)  =DOFLASHP
 1184 00331 0000000         CON(7)  =^IfSetFieldValue
 1185               * Reset M
 1186               * File  ASPDform.s      77
 1187 00338 00000           CON(5)  =NOVAL
 1188 0033D 00000           CON(5)  =BINT5
 1189               * File  ASPDform.s      78
 1190 00342 00000           CON(5)  =DOFLASHP
 1191 00347 0000000         CON(7)  =^IfSetFieldValue
 1192               * and TAS
 1193               * File  ASPDform.s      79
 1194 0034E 00000           CON(5)  =BINT2
 1195 00353 00000           CON(5)  =DOFLASHP
 1196 00358 0000000         CON(7)  =^IfSetField
 1197               * Set focus on T2 field
 1198               * File  ASPDform.s      80
 1199 0035F 00000           CON(5)  =SEMI
 1200               * File  ASPDform.s      81
 1201 00364 00000           CON(5)  =TRUE
 1202               * Return external value
 1203               * File  ASPDform.s      82
 1204 00369 00000           CON(5)  =SEMI
 1205               * File  ASPDform.s      83
 1206 0036E 00000           CON(5)  =DUPTYPEEXT?
 1207 00373 00000           CON(5)  =case
 1208 00378 00000           CON(5)  =DOCOL
 1209               * UNIT
 1210               * File  ASPDform.s      84
 1211 0037D 00000           CON(5)  =DUP
 1212 00382 00000           CON(5)  =DOIDNT
 1213 00387 20              CON(2)  2
 1214 00389 0514            NIBASC  \PA\
 1215 0038D 00000           CON(5)  =EQUALNOT
 1216 00392 00000           CON(5)  =IT
 1217 00397 00000           CON(5)  =DOCOL
 1218               * IF changed from initial value
 1219               * File  ASPDform.s      85
 1220 0039C 00000           CON(5)  =DUP
 1221 003A1 00000           CON(5)  =DOEXT
 1222 003A6 00000           CON(5)  =DOREAL
 1223 003AB 400             NIBHEX  400
 1224 003AE 0000000         NIBHEX  000000000002
            00002
 1225 003BA 0               NIBHEX  0
 1226 003BB 00000           CON(5)  =DOCSTR
 1227 003C0 70000           CON(5)  7
 1228 003C5 D6              NIBASC  \m\
 1229 003C7 00000           CON(5)  =umEND
 1230 003CC 00000           CON(5)  =SEMI
 1231               * IF PA is > 20 km
 1232               * File  ASPDform.s      86
 1233 003D1 00000           CON(5)  =UM>?
 1234 003D6 00000           CON(5)  =%0<>
 1235 003DB 00000           CON(5)  =ITE
 1236 003E0 00000           CON(5)  =DOCOL
 1237               * File  ASPDform.s      87
 1238 003E5 00000           CON(5)  =DROP
 1239               * DROP value
 1240               * File  ASPDform.s      88
 1241 003EA 00000           CON(5)  =DOCSTR
 1242 003EF 13000           CON(5)  49
 1243 003F4 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

 1244 0041C B6D6            NIBASC  \km\
 1245               * Display error message and error beep
 1246               * File  ASPDform.s      89
 1247 00420 00000           CON(5)  =FlashWarning
 1248               * File  ASPDform.s      90
 1249 00425 00000           CON(5)  =NOVAL
 1250               * Set value to NOVAL
 1251               * File  ASPDform.s      91
 1252 0042A 00000           CON(5)  =BINT0
 1253 0042F 00000           CON(5)  =DOFLASHP
 1254 00434 0000000         CON(7)  =^IfSetField
 1255               * Keep focus
 1256               * File  ASPDform.s      92
 1257 0043B 00000           CON(5)  =SEMI
 1258               * File  ASPDform.s      93
 1259 00440 00000           CON(5)  =DOCOL
 1260               * ELSE
 1261               * File  ASPDform.s      94
 1262 00445 00000           CON(5)  =NOVAL
 1263 0044A 00000           CON(5)  =BINT2
 1264               * File  ASPDform.s      95
 1265 0044F 00000           CON(5)  =DOFLASHP
 1266 00454 0000000         CON(7)  =^IfSetFieldValue
 1267               * Reset M
 1268               * File  ASPDform.s      96
 1269 0045B 00000           CON(5)  =NOVAL
 1270 00460 00000           CON(5)  =BINT5
 1271               * File  ASPDform.s      97
 1272 00465 00000           CON(5)  =DOFLASHP
 1273 0046A 0000000         CON(7)  =^IfSetFieldValue
 1274               * and TAS
 1275               * File  ASPDform.s      98
 1276 00471 00000           CON(5)  =BINT2
 1277 00476 00000           CON(5)  =DOFLASHP
 1278 0047B 0000000         CON(7)  =^IfSetField
 1279               * Set focus on T2 field
 1280               * File  ASPDform.s      99
 1281 00482 00000           CON(5)  =SEMI
 1282               * File  ASPDform.s      100
 1283 00487 00000           CON(5)  =SEMI
 1284               * File  ASPDform.s      101
 1285 0048C 00000           CON(5)  =TRUE
 1286               * Return external value
 1287               * File  ASPDform.s      102
 1288 00491 00000           CON(5)  =SEMI
 1289               * File  ASPDform.s      103
 1290 00496 00000           CON(5)  =TRUE
 1291               * Message was handled
 1292               * File  ASPDform.s      104
 1293 0049B 00000           CON(5)  =SEMI
 1294               * File  ASPDform.s      105
 1295 004A0 00000           CON(5)  =FALSE
 1296               * No other messagges handled
 1297               * File  ASPDform.s      106
 1298 004A5 00000           CON(5)  =SEMI
 1299               *               BINT14  BINT17  BINT45  BINT8     ( Position & size )
 1300               * File  ASPDform.s      108
 1301 004AA 00000           CON(5)  =FOURTEEN
 1302 004AF 00000           CON(5)  =SEVENTEEN
 1303 004B4 00000           CON(5)  =FORTYNINE
 1304 004B9 00000           CON(5)  =EIGHT
 1305               * Position & size
 1306               * File  ASPDform.s      109
 1307 004BE 00000           CON(5)  =ONE
 1308               * Field type: TEXT
 1309               * File  ASPDform.s      110
 1310 004C3 00000           CON(5)  =DOLIST
 1311 004C8 00000           CON(5)  =ZERO
 1312 004CD 00000           CON(5)  =THIRTEEN
 1313 004D2 00000           CON(5)  =SEMI
 1314               * Allowed type: REAL, UNIT
 1315               * File  ASPDform.s      111
 1316 004D7 00000           CON(5)  =TWO
 1317               * Decompile with stack appearance
 1318               * File  ASPDform.s      112
 1319 004DC 00000           CON(5)  =DOCSTR
 1320 004E1 93000           CON(5)  57
 1321 004E6 0525543         NIBASC  \PRESSURE ALTITUDE (#\
            5355525
            540214C4459445554454028232

 1322 0050E 32              NIBASC  \#\
 1323 00510 D8              CON(2)  #8D
 1324 00512 0266479         NIBASC  \ ft)\
            2
 1325               * Help string
 1326               * File  ASPDform.s      113
 1327 0051A 00000           CON(5)  =MINUSONE
 1328               * ChooseData N/A
 1329               * File  ASPDform.s      114
 1330 0051F 00000           CON(5)  =MINUSONE
 1331               * ChooseDecompile
 1332               * File  ASPDform.s      115
 1333 00524 00000           CON(5)  =MINUSONE
 1334               * Reset value
 1335               * File  ASPDform.s      116
 1336 00529 00000           CON(5)  =DOIDNT
 1337 0052E 20              CON(2)  2
 1338 00530 0514            NIBASC  \PA\
 1339               * Initial value
 1340               * File  ASPDform.s      117
 1341
 1342               * File  ASPDform.s      118
 1343               * Field M definition [#BINT2]
 1344               * File  ASPDform.s      119
 1345 00534 00000           CON(5)  ='
 1346 00539 00000           CON(5)  =DOCOL
 1347               * Field message handler
 1348               * File  ASPDform.s      120
 1349 0053E 00000           CON(5)  =FOUR
 1350 00543 00000           CON(5)  =OVER#=case
 1351 00548 00000           CON(5)  =DOCOL
 1352               * Get internal field value
 1353               * File  ASPDform.s      121
 1354 0054D 00000           CON(5)  =DROP
 1355               * File  ASPDform.s      122
 1356 00552 00000           CON(5)  =DUPTYPEREAL?
 1357 00557 00000           CON(5)  =case
 1358 0055C 00000           CON(5)  =DOCOL
 1359               * REAL
 1360               * File  ASPDform.s      123
 1361 00561 00000           CON(5)  =DUP
 1362 00566 00000           CON(5)  =DOIDNT
 1363 0056B 10              CON(2)  1
 1364 0056D D4              NIBASC  \M\
 1365 0056F 00000           CON(5)  =EQUALNOT
 1366 00574 00000           CON(5)  =IT
 1367 00579 00000           CON(5)  =DOCOL
 1368               * IF changed from initial value
 1369               * File  ASPDform.s      124
 1370 0057E 00000           CON(5)  =NOVAL
 1371 00583 00000           CON(5)  =BINT0
 1372               * File  ASPDform.s      125
 1373 00588 00000           CON(5)  =DOFLASHP
 1374 0058D 0000000         CON(7)  =^IfSetFieldValue
 1375               * Reset VC,
 1376               * File  ASPDform.s      126
 1377 00594 00000           CON(5)  =NOVAL
 1378 00599 00000           CON(5)  =BINT1
 1379               * File  ASPDform.s      127
 1380 0059E 00000           CON(5)  =DOFLASHP
 1381 005A3 0000000         CON(7)  =^IfSetFieldValue
 1382               * PA and
 1383               * File  ASPDform.s      128
 1384 005AA 00000           CON(5)  =NOVAL
 1385 005AF 00000           CON(5)  =BINT5
 1386               * File  ASPDform.s      129
 1387 005B4 00000           CON(5)  =DOFLASHP
 1388 005B9 0000000         CON(7)  =^IfSetFieldValue
 1389               * TAS fields with NOVAL
 1390               * File  ASPDform.s      130
 1391 005C0 00000           CON(5)  =SEMI
 1392               * File  ASPDform.s      131
 1393 005C5 00000           CON(5)  =TRUE
 1394               * Return external value
 1395               * File  ASPDform.s      132
 1396 005CA 00000           CON(5)  =SEMI
 1397               * File  ASPDform.s      133
 1398 005CF 00000           CON(5)  =TRUE
 1399               * Message was handled
 1400               * File  ASPDform.s      134
 1401 005D4 00000           CON(5)  =SEMI
 1402               * File  ASPDform.s      135
 1403 005D9 00000           CON(5)  =FIVE
 1404 005DE 00000           CON(5)  =OVER#=case
 1405 005E3 00000           CON(5)  =DOCOL
 1406               * Get external value
 1407               * File  ASPDform.s      136
 1408 005E8 00000           CON(5)  =DROP
 1409               * File  ASPDform.s      137
 1410 005ED 00000           CON(5)  =DUP
 1411 005F2 00000           CON(5)  =%1
 1412 005F7 00000           CON(5)  =%>
 1413 005FC 00000           CON(5)  =IT
 1414 00601 00000           CON(5)  =DOCOL
 1415               * IF M > 1
 1416               * File  ASPDform.s      138
 1417 00606 00000           CON(5)  =BINT0
 1418 0060B 00000           CON(5)  =DOFLASHP
 1419 00610 0000000         CON(7)  =^IfGetFieldValue
 1420 00617 00000           CON(5)  =NOVAL
 1421 0061C 00000           CON(5)  =EQUALNOT
 1422               * and IF VC and PA
 1423               * File  ASPDform.s      139
 1424 00621 00000           CON(5)  =BINT1
 1425 00626 00000           CON(5)  =DOFLASHP
 1426 0062B 0000000         CON(7)  =^IfGetFieldValue
 1427 00632 00000           CON(5)  =NOVAL
 1428 00637 00000           CON(5)  =EQUALNOT
 1429               * are not NOVAL
 1430               * File  ASPDform.s      140
 1431 0063C 00000           CON(5)  =AND
 1432 00641 00000           CON(5)  =IT
 1433 00646 00000           CON(5)  =DOCOL
 1434               * File  ASPDform.s      141
 1435 0064B 00000           CON(5)  =DOCSTR
 1436 00650 94000           CON(5)  73
 1437 00655 02D4143         NIBASC  \ MACH > 1        TAS\
            48402E3
            02130202020202020202451435

 1438 0067D 0202020         NIBASC  \    INACCURATE\
            294E414
            34345525144554

 1439               * Display flash warning
 1440               * File  ASPDform.s      142
 1441 00699 00000           CON(5)  =FlashWarning
 1442               * File  ASPDform.s      143
 1443 0069E 00000           CON(5)  =SEMI
 1444               * File  ASPDform.s      144
 1445 006A3 00000           CON(5)  =SEMI
 1446               * Return internal value
 1447               * File  ASPDform.s      145
 1448 006A8 00000           CON(5)  =TRUE
 1449               * Message was handled
 1450               * File  ASPDform.s      146
 1451 006AD 00000           CON(5)  =SEMI
 1452               * File  ASPDform.s      147
 1453 006B2 00000           CON(5)  =DROPFALSE
 1454               * No other messages handled
 1455               * File  ASPDform.s      148
 1456 006B7 00000           CON(5)  =SEMI
 1457               *               BINT75  BINT17  BINT49  BINT8     ( Position & size )
 1458               * File  ASPDform.s      150
 1459 006BC 00000           CON(5)  =DOBINT
 1460 006C1 C4000           CON(5)  76
 1461 006C6 00000           CON(5)  =SEVENTEEN
 1462 006CB 00000           CON(5)  =FORTYNINE
 1463 006D0 00000           CON(5)  =EIGHT
 1464               * File  ASPDform.s      151
 1465 006D5 00000           CON(5)  =ONE
 1466               * Field type: TEXT
 1467               * File  ASPDform.s      152
 1468 006DA 00000           CON(5)  =DOLIST
 1469 006DF 00000           CON(5)  =ZERO
 1470 006E4 00000           CON(5)  =SEMI
 1471               * Allowed type: REAL
 1472               * File  ASPDform.s      153
 1473 006E9 00000           CON(5)  =TWO
 1474               * Decompile with stack appearance
 1475               * File  ASPDform.s      154
 1476 006EE 00000           CON(5)  =DOCSTR
 1477 006F3 B1000           CON(5)  27
 1478 006F8 D414348         NIBASC  \MACH NUMBER\
            402E455
            D4245425
 1479               * Help string
 1480               * File  ASPDform.s      155
 1481 0070E 00000           CON(5)  =MINUSONE
 1482               * ChooseData N/A
 1483               * File  ASPDform.s      156
 1484 00713 00000           CON(5)  =MINUSONE
 1485               * ChooseDecompile
 1486               * File  ASPDform.s      157
 1487 00718 00000           CON(5)  =MINUSONE
 1488               * Reset value
 1489               * File  ASPDform.s      158
 1490 0071D 00000           CON(5)  =DOIDNT
 1491 00722 10              CON(2)  1
 1492 00724 D4              NIBASC  \M\
 1493               * Initial value
 1494               * File  ASPDform.s      159
 1495
 1496               * File  ASPDform.s      160
 1497               * Field T2 definition [#BINT3]
 1498               * File  ASPDform.s      161
 1499 00726 00000           CON(5)  ='
 1500 0072B 00000           CON(5)  =DOCOL
 1501               * Field message handler
 1502               * File  ASPDform.s      162
 1503 00730 00000           CON(5)  =FOUR
 1504 00735 00000           CON(5)  =#=case
 1505 0073A 00000           CON(5)  =DOCOL
 1506               * Get internal field value
 1507               * File  ASPDform.s      163
 1508 0073F 00000           CON(5)  =DUPTYPEREAL?
 1509 00744 00000           CON(5)  =case
 1510 00749 00000           CON(5)  =DOCOL
 1511               * REAL
 1512               * File  ASPDform.s      164
 1513 0074E 00000           CON(5)  =DOCSTR
 1514 00753 90000           CON(5)  9
 1515 00758 0B              CON(2)  #B0
 1516 0075A 34              NIBASC  \C\
 1517 0075C 00000           CON(5)  =umEND
 1518 00761 00000           CON(5)  =BINT3
 1519 00766 00000           CON(5)  =EXTN
 1520               * Add default deg C units
 1521               * File  ASPDform.s      165
 1522 0076B 00000           CON(5)  =NOVAL
 1523 00770 00000           CON(5)  =BINT4
 1524               * File  ASPDform.s      166
 1525 00775 00000           CON(5)  =DOFLASHP
 1526 0077A 0000000         CON(7)  =^IfSetFieldValue
 1527               * Reset T1 field
 1528               * File  ASPDform.s      167
 1529 00781 00000           CON(5)  =NOVAL
 1530 00786 00000           CON(5)  =BINT5
 1531               * File  ASPDform.s      168
 1532 0078B 00000           CON(5)  =DOFLASHP
 1533 00790 0000000         CON(7)  =^IfSetFieldValue
 1534               * Reset TAS field
 1535               * File  ASPDform.s      169
 1536 00797 00000           CON(5)  =TRUE
 1537               * Return external value
 1538               * File  ASPDform.s      170
 1539 0079C 00000           CON(5)  =SEMI
 1540               * File  ASPDform.s      171
 1541 007A1 00000           CON(5)  =DUPTYPEEXT?
 1542 007A6 00000           CON(5)  =case
 1543 007AB 00000           CON(5)  =DOCOL
 1544               * UNIT
 1545               * File  ASPDform.s      172
 1546 007B0 00000           CON(5)  =DUP
 1547 007B5 00000           CON(5)  =DOIDNT
 1548 007BA 20              CON(2)  2
 1549 007BC 4523            NIBASC  \T2\
 1550 007C0 00000           CON(5)  =EQUALNOT
 1551 007C5 00000           CON(5)  =IT
 1552 007CA 00000           CON(5)  =DOCOL
 1553               * IF changed from initial value
 1554               * File  ASPDform.s      173
 1555 007CF 00000           CON(5)  =NOVAL
 1556 007D4 00000           CON(5)  =BINT4
 1557               * File  ASPDform.s      174
 1558 007D9 00000           CON(5)  =DOFLASHP
 1559 007DE 0000000         CON(7)  =^IfSetFieldValue
 1560               * Reset T1 field
 1561               * File  ASPDform.s      175
 1562 007E5 00000           CON(5)  =NOVAL
 1563 007EA 00000           CON(5)  =BINT5
 1564               * File  ASPDform.s      176
 1565 007EF 00000           CON(5)  =DOFLASHP
 1566 007F4 0000000         CON(7)  =^IfSetFieldValue
 1567               * Reset TAS field
 1568               * File  ASPDform.s      177
 1569 007FB 00000           CON(5)  =SEMI
 1570               * File  ASPDform.s      178
 1571 00800 00000           CON(5)  =TRUE
 1572               * Return external value
 1573               * File  ASPDform.s      179
 1574 00805 00000           CON(5)  =SEMI
 1575               * File  ASPDform.s      180
 1576 0080A 00000           CON(5)  =TRUE
 1577               * Message was handled
 1578               * File  ASPDform.s      181
 1579 0080F 00000           CON(5)  =SEMI
 1580               * File  ASPDform.s      182
 1581 00814 00000           CON(5)  =FALSE
 1582               * Other messages not handled
 1583               * File  ASPDform.s      183
 1584 00819 00000           CON(5)  =SEMI
 1585               *               BINT14  BINT26  BINT45  BINT8         ( Position & size )
 1586               * File  ASPDform.s      185
 1587 0081E 00000           CON(5)  =FOURTEEN
 1588 00823 00000           CON(5)  =TWENTYSIX
 1589 00828 00000           CON(5)  =FORTYNINE
 1590 0082D 00000           CON(5)  =EIGHT
 1591               * Position & size
 1592               * File  ASPDform.s      186
 1593 00832 00000           CON(5)  =ONE
 1594               * Field type: TEXT
 1595               * File  ASPDform.s      187
 1596 00837 00000           CON(5)  =DOLIST
 1597 0083C 00000           CON(5)  =ZERO
 1598 00841 00000           CON(5)  =THIRTEEN
 1599 00846 00000           CON(5)  =SEMI
 1600               * Allowed type: REAL, UNIT
 1601               * File  ASPDform.s      188
 1602 0084B 00000           CON(5)  =TWO
 1603               * Decompile with stack appearance
 1604               * File  ASPDform.s      189
 1605 00850 00000           CON(5)  =DOCSTR
 1606 00855 54000           CON(5)  69
 1607 0085A 45F4451         NIBASC  \TOTAL (INDICATED) AI\
            4C40282
            94E44494341445544492021494

 1608 00882 2502455         NIBASC  \R TEMP. (\
            4D405E2
            0282
 1609 00894 0B              CON(2)  #B0
 1610 00896 3492            NIBASC  \C)\
 1611               * Help string
 1612               * File  ASPDform.s      190
 1613 0089A 00000           CON(5)  =MINUSONE
 1614               * ChooseData N/A
 1615               * File  ASPDform.s      191
 1616 0089F 00000           CON(5)  =MINUSONE
 1617               * ChooseDecompile
 1618               * File  ASPDform.s      192
 1619 008A4 00000           CON(5)  =MINUSONE
 1620               * Reset value
 1621               * File  ASPDform.s      193
 1622 008A9 00000           CON(5)  =DOIDNT
 1623 008AE 20              CON(2)  2
 1624 008B0 4523            NIBASC  \T2\
 1625               * Initial value
 1626               * File  ASPDform.s      194
 1627
 1628               * File  ASPDform.s      195
 1629               * Field T1 definition [#BINT4]
 1630               * File  ASPDform.s      196
 1631 008B4 00000           CON(5)  ='
 1632 008B9 00000           CON(5)  =DOCOL
 1633               * Field message handler
 1634               * File  ASPDform.s      197
 1635 008BE 00000           CON(5)  =FOUR
 1636 008C3 00000           CON(5)  =#=case
 1637 008C8 00000           CON(5)  =DOCOL
 1638               * Get internal field value
 1639               * File  ASPDform.s      198
 1640 008CD 00000           CON(5)  =DUPTYPEREAL?
 1641 008D2 00000           CON(5)  =case
 1642 008D7 00000           CON(5)  =DOCOL
 1643               * REAL
 1644               * File  ASPDform.s      199
 1645 008DC 00000           CON(5)  =DOCSTR
 1646 008E1 90000           CON(5)  9
 1647 008E6 0B              CON(2)  #B0
 1648 008E8 34              NIBASC  \C\
 1649 008EA 00000           CON(5)  =umEND
 1650 008EF 00000           CON(5)  =BINT3
 1651 008F4 00000           CON(5)  =EXTN
 1652               * Add default feet units
 1653               * File  ASPDform.s      200
 1654 008F9 00000           CON(5)  =NOVAL
 1655 008FE 00000           CON(5)  =BINT3
 1656               * File  ASPDform.s      201
 1657 00903 00000           CON(5)  =DOFLASHP
 1658 00908 0000000         CON(7)  =^IfSetFieldValue
 1659               * Reset T2 field
 1660               * File  ASPDform.s      202
 1661 0090F 00000           CON(5)  =NOVAL
 1662 00914 00000           CON(5)  =BINT5
 1663               * File  ASPDform.s      203
 1664 00919 00000           CON(5)  =DOFLASHP
 1665 0091E 0000000         CON(7)  =^IfSetFieldValue
 1666               * Reset TAS field
 1667               * File  ASPDform.s      204
 1668 00925 00000           CON(5)  =BINT5
 1669 0092A 00000           CON(5)  =DOFLASHP
 1670 0092F 0000000         CON(7)  =^IfSetField
 1671               * Set focus to VC
 1672               * File  ASPDform.s      205
 1673 00936 00000           CON(5)  =TRUE
 1674               * Return external value
 1675               * File  ASPDform.s      206
 1676 0093B 00000           CON(5)  =SEMI
 1677               * File  ASPDform.s      207
 1678 00940 00000           CON(5)  =DUPTYPEEXT?
 1679 00945 00000           CON(5)  =case
 1680 0094A 00000           CON(5)  =DOCOL
 1681               * UNIT
 1682               * File  ASPDform.s      208
 1683 0094F 00000           CON(5)  =DUP
 1684 00954 00000           CON(5)  =DOIDNT
 1685 00959 20              CON(2)  2
 1686 0095B 4513            NIBASC  \T1\
 1687 0095F 00000           CON(5)  =EQUALNOT
 1688 00964 00000           CON(5)  =IT
 1689 00969 00000           CON(5)  =DOCOL
 1690               * IF changed from initial value
 1691               * File  ASPDform.s      209
 1692 0096E 00000           CON(5)  =NOVAL
 1693 00973 00000           CON(5)  =BINT3
 1694               * File  ASPDform.s      210
 1695 00978 00000           CON(5)  =DOFLASHP
 1696 0097D 0000000         CON(7)  =^IfSetFieldValue
 1697               * Reset T2 field
 1698               * File  ASPDform.s      211
 1699 00984 00000           CON(5)  =NOVAL
 1700 00989 00000           CON(5)  =BINT5
 1701               * File  ASPDform.s      212
 1702 0098E 00000           CON(5)  =DOFLASHP
 1703 00993 0000000         CON(7)  =^IfSetFieldValue
 1704               * Reset TAS field
 1705               * File  ASPDform.s      213
 1706 0099A 00000           CON(5)  =BINT5
 1707 0099F 00000           CON(5)  =DOFLASHP
 1708 009A4 0000000         CON(7)  =^IfSetField
 1709               * Set focus to VC
 1710               * File  ASPDform.s      214
 1711 009AB 00000           CON(5)  =SEMI
 1712               * File  ASPDform.s      215
 1713 009B0 00000           CON(5)  =TRUE
 1714               * Return external value
 1715               * File  ASPDform.s      216
 1716 009B5 00000           CON(5)  =SEMI
 1717               * File  ASPDform.s      217
 1718 009BA 00000           CON(5)  =TRUE
 1719               * Message was handled
 1720               * File  ASPDform.s      218
 1721 009BF 00000           CON(5)  =SEMI
 1722               * File  ASPDform.s      219
 1723 009C4 00000           CON(5)  =FALSE
 1724               * Other messages not handled
 1725               * File  ASPDform.s      220
 1726 009C9 00000           CON(5)  =SEMI
 1727               *               BINT79  BINT26  BINT45  BINT8      ( Position & size )
 1728               * File  ASPDform.s      222
 1729 009CE 00000           CON(5)  =SEVENTYNINE
 1730 009D3 00000           CON(5)  =TWENTYSIX
 1731 009D8 00000           CON(5)  =FORTYNINE
 1732 009DD 00000           CON(5)  =EIGHT
 1733               * Position & size
 1734               * File  ASPDform.s      223
 1735 009E2 00000           CON(5)  =ONE
 1736               * Field type: TEXT
 1737               * File  ASPDform.s      224
 1738 009E7 00000           CON(5)  =DOLIST
 1739 009EC 00000           CON(5)  =ZERO
 1740 009F1 00000           CON(5)  =THIRTEEN
 1741 009F6 00000           CON(5)  =SEMI
 1742               * Allowed type: REAL, UNIT
 1743               * File  ASPDform.s      225
 1744 009FB 00000           CON(5)  =TWO
 1745               * Decompile with stack appearance
 1746               * File  ASPDform.s      226
 1747 00A00 00000           CON(5)  =DOCSTR
 1748 00A05 D3000           CON(5)  61
 1749 00A0A 3545144         NIBASC  \STATIC (TRUE) AIR TE\
            5943402
            82452555549202149425024554

 1750 00A32 D405E20         NIBASC  \MP. (\
            282
 1751 00A3C 0B              CON(2)  #B0
 1752 00A3E 3492            NIBASC  \C)\
 1753               * Help string
 1754               * File  ASPDform.s      227
 1755 00A42 00000           CON(5)  =MINUSONE
 1756               * ChooseData N/A
 1757               * File  ASPDform.s      228
 1758 00A47 00000           CON(5)  =MINUSONE
 1759               * ChooseDecompile
 1760               * File  ASPDform.s      229
 1761 00A4C 00000           CON(5)  =MINUSONE
 1762               * Reset value
 1763               * File  ASPDform.s      230
 1764 00A51 00000           CON(5)  =DOIDNT
 1765 00A56 20              CON(2)  2
 1766 00A58 4513            NIBASC  \T1\
 1767               * Initial value
 1768               * File  ASPDform.s      231
 1769
 1770               * File  ASPDform.s      232
 1771               * Field V1 definition [#BINT5]
 1772               * File  ASPDform.s      233
 1773 00A5C 00000           CON(5)  ='DROPFALSE
 1774               *               BINT14  BINT35  BINT110  BINT8    ( Position & size )
 1775               * File  ASPDform.s      235
 1776 00A61 00000           CON(5)  =FOURTEEN
 1777 00A66 00000           CON(5)  =THIRTYFIVE
 1778 00A6B 00000           CON(5)  =DOBINT
 1779 00A70 D6000           CON(5)  109
 1780 00A75 00000           CON(5)  =EIGHT
 1781               * Position & size
 1782               * File  ASPDform.s      236
 1783 00A7A 00000           CON(5)  =ONE
 1784               * Field type: TEXT
 1785               * File  ASPDform.s      237
 1786 00A7F 00000           CON(5)  =DOLIST
 1787 00A84 00000           CON(5)  =ZERO
 1788 00A89 00000           CON(5)  =THIRTEEN
 1789 00A8E 00000           CON(5)  =SEMI
 1790               * Allowed type: REAL, UNIT
 1791               * File  ASPDform.s      238
 1792 00A93 00000           CON(5)  =TWO
 1793               * Decompile with stack appearance
 1794               * File  ASPDform.s      239
 1795 00A98 00000           CON(5)  =DOCSTR
 1796 00A9D 33000           CON(5)  51
 1797 00AA2 4525555         NIBASC  \TRUE AIR SPEED (OUTP\
            4021494
            250235055454440282F4554505

 1798 00ACA 554592          NIBASC  \UT)\
 1799               * Help string
 1800               * File  ASPDform.s      240
 1801 00AD0 00000           CON(5)  =MINUSONE
 1802               * ChooseData N/A
 1803               * File  ASPDform.s      241
 1804 00AD5 00000           CON(5)  =MINUSONE
 1805               * ChooseDecompile
 1806               * File  ASPDform.s      242
 1807 00ADA 00000           CON(5)  =MINUSONE
 1808               * Reset value
 1809               * File  ASPDform.s      243
 1810 00ADF 00000           CON(5)  =DOIDNT
 1811 00AE4 20              CON(2)  2
 1812 00AE6 6513            NIBASC  \V1\
 1813               * Initial value
 1814               * File  ASPDform.s      244
 1815
 1816               * File  ASPDform.s      245
 1817 00AEA 00000           CON(5)  =SIX
 1818 00AEF 00000           CON(5)  =SIX
 1819               * Label and field count
 1820               * File  ASPDform.s      246
 1821
 1822               * File  ASPDform.s      247
 1823 00AF4 00000           CON(5)  ='DROPFALSE
 1824               * Inform Box message handler
 1825               * File  ASPDform.s      248
 1826 00AF9 00000           CON(5)  =DOCSTR
 1827 00AFE 51000           CON(5)  21
 1828 00B03 1494253         NIBASC  \AIRSPEED\
            5055454
            44
 1829               * Title
 1830               * File  ASPDform.s      249
 1831 00B13 00000           CON(5)  =DOFLASHP
 1832 00B18 0000000         CON(7)  =^IfMain
 1833               * Create and run the input form
 1834               * File  ASPDform.s      250
 1835 00B1F 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Symbol Table                       ASPDform.a     Page    2

 #=case                            Ext                   -   989  1121  1504
                                        1636
 %0<>                              Ext                   -  1152  1234
 %1                                Ext                   -  1411
 %>                                Ext                   -  1412
 '                                 Ext                   -   984  1116  1345
                                        1499  1631
 'DROPFALSE                        Ext                   -  1773  1823
 AND                               Ext                   -  1431
=ASPDform                          Rel       0 #00000000 -   938
 AddressesCLEBit                   Abs       0 #00000000 -   800
 AddressesCLEFl                    Abs      89 #00000059 -   798   799   800
 AddressesCLENib                   Abs      22 #00000016 -   799
 AlarmBeepBit                      Abs       0 #00000000 -   187
 AlarmBeepFl                       Abs      57 #00000039 -   175   186   187
 AlarmBeepNib                      Abs      14 #0000000E -   186
 AlgebraicModeBit                  Abs       2 #00000002 -   818
 AlgebraicModeFl                   Abs      95 #0000005F -   816   817   818
 AlgebraicModeNib                  Abs      23 #00000017 -   817
 AngleBCt                          Abs       2 #00000002 -   138
 AngleBit1                         Abs       0 #00000000 -   190   191
 AngleBit2                         Abs       1 #00000001 -   191
 AngleFl1                          Abs      17 #00000011 -   137   189   190
 AngleNib                          Abs       4 #00000004 -   189
 ArrayOnlyBit                      Abs       2 #00000002 -   806
 ArrayOnlyFl                       Abs      91 #0000005B -   804   805   806
 ArrayOnlyNib                      Abs      22 #00000016 -   805
 AutoSaveBit                       Abs       1 #00000001 -   815
 AutoSaveFl                        Abs      94 #0000005E -   813   814   815
 AutoSaveNib                       Abs      23 #00000017 -   814
 BINT0                             Ext                   -  1170  1252  1371
                                        1417
 BINT1                             Ext                   -  1378  1424
 BINT2                             Ext                   -  1007  1040  1181
                                        1194  1263  1276
 BINT3                             Ext                   -  1002  1134  1518
                                        1650  1655  1693
 BINT4                             Ext                   -  1523  1556
 BINT5                             Ext                   -  1014  1047  1188
                                        1270  1385  1530  1563  1662  1668  1700
                                        1706
 BigFontCmdBit                     Abs       0 #00000000 -   752
 BigFontCmdFl                      Abs      73 #00000049 -   750   751   752
 BigFontCmdNib                     Abs      18 #00000012 -   751
 BigFontStackBit                   Abs       3 #00000003 -   749
 BigFontStackFl                    Abs      72 #00000048 -   747   748   749
 BigFontStackNib                   Abs      17 #00000011 -   748
 BinBaseBCt                        Abs       2 #00000002 -   133
 BinBaseBit1                       Abs       2 #00000002 -   194
 BinBaseFl1                        Abs      11 #0000000B -   132   193   194
 BinBaseNib                        Abs       2 #00000002 -   193
 BinWordSBCt                       Abs       6 #00000006 -   131
 BinWordSBit1                      Abs       0 #00000000 -   197
 BinWordSFl1                       Abs       5 #00000005 -   130   196   197
 BinWordSNib                       Abs       1 #00000001 -   196
 CarefulBit                        Abs       3 #00000003 -   200
 CarefulFl                         Abs       4 #00000004 -   128   199   200
 CarefulNib                        Abs       0 #00000000 -   199
 ClockFmtBit                       Abs       0 #00000000 -   203
 ClockFmtFl                        Abs      41 #00000029 -   160   202   203
 ClockFmtNib                       Abs      10 #0000000A -   202
 ClockOnBit                        Abs       3 #00000003 -   206
 ClockOnFl                         Abs      40 #00000028 -   159   205   206
 ClockOnNib                        Abs       9 #00000009 -   205
 CmdAutoIndentBit                  Abs       3 #00000003 -   737
 CmdAutoIndentFl                   Abs      68 #00000044 -   735   736   737
 CmdAutoIndentNib                  Abs      16 #00000010 -   736
 ComVecDiBCt                       Abs       2 #00000002 -   136
 ComVecDiBit1                      Abs       2 #00000002 -   212
 ComVecDiFl1                       Abs      15 #0000000F -   135   211   212
 ComVecDiNib                       Abs       3 #00000003 -   211
 Complex2DBit                      Abs       2 #00000002 -   209
 Complex2DFl                       Abs      19 #00000013 -   139   208   209
 Complex2DNib                      Abs       4 #00000004 -   208
 ComplexBit                        Abs       2 #00000002 -   832
 ComplexFl                         Abs     103 #00000067 -   830   831   832
 ComplexNib                        Abs      25 #00000019 -   831
 ConnectPtBit                      Abs       2 #00000002 -   215
 ConnectPtFl                       Abs      31 #0000001F -   149   214   215
 ConnectPtNib                      Abs       7 #00000007 -   214
 ConstantsBit                      Abs       1 #00000001 -   218
 ConstantsFl                       Abs       2 #00000002 -   126   217   218
 ConstantsNib                      Abs       0 #00000000 -   217
 DOBINT                            Ext                   -  1073  1459  1778
 DOCOL                             Ext                   -   940   985   990
                                         995  1027  1036  1117  1122  1127  1154
                                        1177  1208  1217  1236  1259  1346  1351
                                        1358  1367  1405  1414  1433  1500  1505
                                        1510  1543  1552  1632  1637  1642  1680
                                        1689
 DOCSTR                            Ext                   -   943   949   955
                                         961   967   973   998  1090  1130  1144
                                        1159  1226  1241  1319  1435  1476  1513
                                        1605  1645  1747  1795  1826
 DOEXT                             Ext                   -  1139  1221
 DOFLASHP                          Ext                   -  1009  1016  1042
                                        1049  1171  1183  1190  1195  1253  1265
                                        1272  1277  1373  1380  1387  1418  1425
                                        1525  1532  1558  1565  1657  1664  1669
                                        1695  1702  1707  1831
 DOIDNT                            Ext                   -  1031  1107  1212
                                        1336  1362  1490  1547  1622  1684  1764
                                        1810
 DOLIST                            Ext                   -  1081  1310  1468
                                        1596  1738  1786
 DOREAL                            Ext                   -  1140  1222
 DROP                              Ext                   -  1156  1238  1354
                                        1408
 DROPFALSE                         Ext                   -  1453
 DUP                               Ext                   -  1030  1138  1211
                                        1220  1361  1410  1546  1683
 DUPTYPEEXT?                       Ext                   -  1025  1206  1541
                                        1678
 DUPTYPEREAL?                      Ext                   -   993  1125  1356
                                        1508  1640
 DateFmtBit                        Abs       1 #00000001 -   221
 DateFmtFl                         Abs      42 #0000002A -   161   220   221
 DateFmtNib                        Abs      10 #0000000A -   220
 DblSpaceBit                       Abs       0 #00000000 -   224
 DblSpaceFl                        Abs      37 #00000025 -   155   223   224
 DblSpaceNib                       Abs       9 #00000009 -   223
 DefSysF32-01                      Abs67178480 #04010FF0 -    50
 DefSysF64-33                      Abs       0 #00000000 -    49
 DefSysF65-96                      Abs1107296256 #42000000 -    51
 DefSysF97-128                     Abs       0 #00000000 -    52
 DelNRAlmBit                       Abs       3 #00000003 -   227
 DelNRAlmFl                        Abs      44 #0000002C -   163   226   227
 DelNRAlmNib                       Abs      10 #0000000A -   226
 DesasmWithAdrBit                  Abs       2 #00000002 -   746
 DesasmWithAdrFl                   Abs      71 #00000047 -   744   745   746
 DesasmWithAdrNib                  Abs      17 #00000011 -   745
 DigitalClockBit                   Abs       2 #00000002 -   734
 DigitalClockFl                    Abs      67 #00000043 -   732   733   734
 DigitalClockNib                   Abs      16 #00000010 -   733
 EIGHT                             Ext                   -  1072  1075  1304
                                        1463  1590  1732  1780
 EQUALNOT                          Ext                   -  1034  1215  1365
                                        1421  1428  1550  1687
 EXTN                              Ext                   -  1003  1135  1519
                                        1651
 ErableHeaderBit                   Abs       0 #00000000 -   812
 ErableHeaderFl                    Abs      93 #0000005D -   810   811   812
 ErableHeaderNib                   Abs      23 #00000017 -   811
 ErrorBeepBit                      Abs       3 #00000003 -   230
 ErrorBeepFl                       Abs      56 #00000038 -   174   229   230
 ErrorBeepNib                      Abs      13 #0000000D -   229
 ExactModeBit                      Abs       0 #00000000 -   837
 ExactModeFl                       Abs     105 #00000069 -   835   836   837
 ExactModeNib                      Abs      26 #0000001A -   836
 FALSE                             Ext                   -  1065  1295  1581
                                        1723
 FIVE                              Ext                   -  1403
 FORTYNINE                         Ext                   -  1303  1462  1589
                                        1731
 FOUR                              Ext                   -   988  1120  1349
                                        1503  1635
 FOURTEEN                          Ext                   -  1071  1301  1587
                                        1776
 FOURTHREE                         Ext                   -   958   970
 FastEViewBit                      Abs       2 #00000002 -   233
 FastEViewNib                      Abs      14 #0000000E -   232
 FastEqViewFl                      Abs      59 #0000003B -   177   232   233
 FilerConfirmBit                   Abs       0 #00000000 -   764
 FilerConfirmFl                    Abs      77 #0000004D -   762   763   764
 FilerConfirmNib                   Abs      19 #00000013 -   763
 FilerConfirmationBit              Abs       3 #00000003 -   761
 FilerConfirmationFl               Abs      76 #0000004C -   759   760   761
 FilerConfirmationNib              Abs      18 #00000012 -   760
 FlashWarning                      Ext                   -  1165  1247  1441
 FullScreenEditBit                 Abs       0 #00000000 -   740
 FullScreenEditFl                  Abs      69 #00000045 -   738   739   740
 FullScreenEditNib                 Abs      17 #00000011 -   739
 FunctPlotBit                      Abs       1 #00000001 -   236
 FunctPlotFl                       Abs      30 #0000001E -   148   235   236
 FunctPlotNib                      Abs       7 #00000007 -   235
 GCursorBit                        Abs       3 #00000003 -   239
 GCursorFl                         Abs      32 #00000020 -   150   238   239
 GCursorNib                        Abs       7 #00000007 -   238
 GrobDisplayBit                    Abs       2 #00000002 -   782
 GrobDisplayFl                     Abs      83 #00000053 -   780   781   782
 GrobDisplayNib                    Abs      20 #00000014 -   781
 IODataFmtBit                      Abs       2 #00000002 -   251
 IODataFmtFl                       Abs      35 #00000023 -   153   250   251
 IODataFmtNib                      Abs       8 #00000008 -   250
 IODeviceBit                       Abs       0 #00000000 -   254
 IODeviceFl                        Abs      33 #00000021 -   151   253   254
 IODeviceNib                       Abs       8 #00000008 -   253
 IT                                Ext                   -  1035  1216  1366
                                        1413  1432  1551  1688
 ITE                               Ext                   -  1153  1235
 IndexWrapBit                      Abs       3 #00000003 -   242
 IndexWrapFl                       Abs      64 #00000040 -   182   241   242
 IndexWrapNib                      Abs      15 #0000000F -   241
 InfResActBit                      Abs       1 #00000001 -   245
 InfResActFl                       Abs      22 #00000016 -   142   244   245
 InfResActNib                      Abs       5 #00000005 -   244
 InfResultBit                      Abs       1 #00000001 -   248
 InfResultFl                       Abs      26 #0000001A -   146   247   248
 InfResultNib                      Abs       6 #00000006 -   247
 KernelParamBit                    Abs       1 #00000001 -   767
 KernelParamFl                     Abs      78 #0000004E -   765   766   767
 KernelParamNib                    Abs      19 #00000013 -   766
 KeystrokeBeepBit                  Abs       2 #00000002 -   758
 KeystrokeBeepFl                   Abs      75 #0000004B -   756   757   758
 KeystrokeBeepNib                  Abs      18 #00000012 -   757
 LastArgsBit                       Abs       2 #00000002 -   257
 LastArgsFl                        Abs      55 #00000037 -   173   256   257
 LastArgsNib                       Abs      13 #0000000D -   256
 MASDDecompilerBit                 Abs       1 #00000001 -   791
 MASDDecompilerFl                  Abs      86 #00000056 -   789   790   791
 MASDDecompilerNib                 Abs      21 #00000015 -   790
 MINUSONE                          Ext                   -  1098  1101  1104
                                        1327  1330  1333  1481  1484  1487  1613
                                        1616  1619  1755  1758  1761  1801  1804
                                        1807
 MKSmallFontMenuBit                Abs       3 #00000003 -   785
 MKSmallFontMenuFl                 Abs      84 #00000054 -   783   784   785
 MKSmallFontMenuNib                Abs      20 #00000014 -   784
 MLMASDModeBit                     Abs       3 #00000003 -   809
 MLMASDModeFl                      Abs      92 #0000005C -   807   808   809
 MLMASDModeNib                     Abs      22 #00000016 -   808
 MenuOnBit                         Abs       3 #00000003 -   821
 MenuOnFl                          Abs      96 #00000060 -   819   820   821
 MenuOnNib                         Abs      23 #00000017 -   820
 MultiDispBit                      Abs       3 #00000003 -   263
 MultiDispFl                       Abs      52 #00000034 -   170   262   263
 MultiDispNib                      Abs      12 #0000000C -   262
 MultiLine2GROBBit                 Abs       1 #00000001 -   743
 MultiLine2GROBFl                  Abs      70 #00000046 -   741   742   743
 MultiLine2GROBNib                 Abs      17 #00000011 -   742
 MultiLineBit                      Abs       0 #00000000 -   728
 MultiLineFl                       Abs      65 #00000041 -   726   727   728
 MultiLineNib                      Abs      16 #00000010 -   727
 MultiLineStringsBit               Abs       1 #00000001 -   731
 MultiLineStringsFl                Abs      66 #00000042 -   729   730   731
 MultiLineStringsNib               Abs      16 #00000010 -   730
 NINETEEN                          Ext                   -   953   959
 NOVAL                             Ext                   -  1006  1013  1039
                                        1046  1167  1180  1187  1249  1262  1269
                                        1370  1377  1384  1420  1427  1522  1529
                                        1555  1562  1654  1661  1692  1699
 NoAutoCRBit                       Abs       1 #00000001 -   266
 NoAutoCRFl                        Abs      38 #00000026 -   156   265   266
 NoAutoCRNib                       Abs       9 #00000009 -   265
 NoIOStMsgBit                      Abs       2 #00000002 -   269
 NoIOStMsgNib                      Abs       9 #00000009 -   268
 NoIOStsMsgFl                      Abs      39 #00000027 -   157   268   269
 NoParseBit                        Abs       2 #00000002 -   272
 NoParseFl                         Abs      63 #0000003F -   181   271   272
 NoParseNib                        Abs      15 #0000000F -   271
 NumDigsBCt                        Abs       4 #00000004 -   166
 NumDigsBit1                       Abs       0 #00000000 -   275
 NumDigsFl1                        Abs      45 #0000002D -   165   274   275
 NumDigsNib                        Abs      11 #0000000B -   274
 NumDispBCt                        Abs       2 #00000002 -   168
 NumDispBit1                       Abs       0 #00000000 -   278
 NumDispFl1                        Abs      49 #00000031 -   167   277   278
 NumDispNib                        Abs      12 #0000000C -   277
 ONE                               Ext                   -   946   952   964
                                         976  1078  1307  1465  1593  1735  1783
 OVER#=case                        Ext                   -  1350  1404
 OverfActBit                       Abs       0 #00000000 -   281
 OverfActFl                        Abs      21 #00000015 -   141   280   281
 OverfActNib                       Abs       5 #00000005 -   280
 OverflowBit                       Abs       0 #00000000 -   284
 OverflowFl                        Abs      25 #00000019 -   145   283   284
 OverflowNib                       Abs       6 #00000006 -   283
 OverwriteBit                      Abs       3 #00000003 -   287
 OverwriteFl                       Abs      36 #00000024 -   154   286   287
 OverwriteNib                      Abs       8 #00000008 -   286
 PrettyPrintBit                    Abs       2 #00000002 -   770
 PrettyPrintFl                     Abs      79 #0000004F -   768   769   770
 PrettyPrintNib                    Abs      19 #00000013 -   769
 PrintDevBit                       Abs       1 #00000001 -   290
 PrintDevFl                        Abs      34 #00000022 -   152   289   290
 PrintDevNib                       Abs       8 #00000008 -   289
 RadixBit                          Abs       2 #00000002 -   293
 RadixFl                           Abs      51 #00000033 -   169   292   293
 RadixNib                          Abs      12 #0000000C -   292
 RecursiveEditBit                  Abs       3 #00000003 -   797
 RecursiveEditFl                   Abs      88 #00000058 -   795   796   797
 RecursiveEditNib                  Abs      21 #00000015 -   796
 RecursiveStackBit                 Abs       2 #00000002 -   794
 RecursiveStackFl                  Abs      87 #00000057 -   792   793   794
 RecursiveStackNib                 Abs      21 #00000015 -   793
 ResRepAlmBit                      Abs       2 #00000002 -   296
 ResRepAlmFl                       Abs      43 #0000002B -   162   295   296
 ResRepAlmNib                      Abs      10 #0000000A -   295
 ResultsBit                        Abs       2 #00000002 -   299
 ResultsFl                         Abs       3 #00000003 -   127   298   299
 ResultsNib                        Abs       0 #00000000 -   298
 RightJustifiedStackBit            Abs       1 #00000001 -   755
 RightJustifiedStackFl             Abs      74 #0000004A -   753   754   755
 RightJustifiedStackNib            Abs      18 #00000012 -   754
=RomId                             Abs     808 #00000328 -    16
 SEMI                              Ext                   -  1023  1053  1058
                                        1063  1068  1084  1148  1175  1199  1204
                                        1230  1257  1281  1283  1288  1293  1298
                                        1313  1391  1396  1401  1443  1445  1451
                                        1456  1470  1539  1569  1574  1579  1584
                                        1599  1676  1711  1716  1721  1726  1741
                                        1789  1835
 SEVENTEEN                         Ext                   -  1302  1461
 SEVENTYNINE                       Ext                   -  1729
 SIX                               Ext                   -  1817  1818
 ShowPrecBit                       Abs       0 #00000000 -   302
 ShowPrecFl                        Abs      53 #00000035 -   171   301   302
 ShowPrecNib                       Abs      13 #0000000D -   301
 SmallFontChooseBit                Abs       1 #00000001 -   803
 SmallFontChooseFl                 Abs      90 #0000005A -   801   802   803
 SmallFontChooseNib                Abs      22 #00000016 -   802
 SmallFontEQWEditBit               Abs       1 #00000001 -   779
 SmallFontEQWEditFl                Abs      82 #00000052 -   777   778   779
 SmallFontEQWEditNib               Abs      20 #00000014 -   778
 SmallFontEQWGrobBit               Abs       0 #00000000 -   776
 SmallFontEQWGrobFl                Abs      81 #00000051 -   774   775   776
 SmallFontEQWGrobNib               Abs      20 #00000014 -   775
 SmallFontEQWStackBit              Abs       3 #00000003 -   773
 SmallFontEQWStackFl               Abs      80 #00000050 -   771   772   773
 SmallFontEQWStackNib              Abs      19 #00000013 -   772
 SolutionsBit                      Abs       0 #00000000 -   305
 SolutionsFl                       Abs       1 #00000001 -   125   304   305
 SolutionsNib                      Abs       0 #00000000 -   304
 SystemRPLStackBit                 Abs       0 #00000000 -   788
 SystemRPLStackFl                  Abs      85 #00000055 -   786   787   788
 SystemRPLStackNib                 Abs      21 #00000015 -   787
 TEN                               Ext                   -   947
 THIRTEEN                          Ext                   -  1083  1312  1598
                                        1740  1788
 THIRTYFIVE                        Ext                   -  1777
 THIRTYSEVEN                       Ext                   -   977
 TRUE                              Ext                   -  1020  1055  1060
                                        1201  1285  1290  1393  1398  1448  1536
                                        1571  1576  1673  1713  1718
 TWENTYEIGHT                       Ext                   -   965   971
 TWENTYSIX                         Ext                   -  1588  1730
 TWO                               Ext                   -  1087  1316  1473
                                        1602  1744  1792
 TriAlphaBit                       Abs       3 #00000003 -   308
 TriAlphaFl                        Abs      60 #0000003C -   178   307   308
 TriAlphaNib                       Abs      14 #0000000E -   307
 TriUserBit                        Abs       0 #00000000 -   311
 TriUserFl                         Abs      61 #0000003D -   179   310   311
 TriUserNib                        Abs      15 #0000000F -   310
 UM>?                              Ext                   -  1151  1233
 UnderfActBit                      Abs       3 #00000003 -   314
 UnderfActFl                       Abs      20 #00000014 -   140   313   314
 UnderfActNib                      Abs       4 #00000004 -   313
 UnderfNegBit                      Abs       2 #00000002 -   317
 UnderfNegFl                       Abs      23 #00000017 -   143   316   317
 UnderfNegNib                      Abs       5 #00000005 -   316
 UnderfPosBit                      Abs       3 #00000003 -   320
 UnderfPosFl                       Abs      24 #00000018 -   144   319   320
 UnderfPosNib                      Abs       5 #00000005 -   319
 UserKeysBit                       Abs       1 #00000001 -   323
 UserKeysFl                        Abs      62 #0000003E -   180   322   323
 UserKeysNib                       Abs      15 #0000000F -   322
 VerboseBit                        Abs       1 #00000001 -   260
 VerboseFl                         Abs      58 #0000003A -   176   259   260
 VerboseNib                        Abs      14 #0000000E -   259
 VerticalListBit                   Abs       0 #00000000 -   824
 VerticalListFl                    Abs      97 #00000061 -   822   823   824
 VerticalListNib                   Abs      24 #00000018 -   823
 VerticalVectorBit                 Abs       1 #00000001 -   827
 VerticalVectorFl                  Abs      98 #00000062 -   825   826   827
 VerticalVectorNib                 Abs      24 #00000018 -   826
 ZERO                              Ext                   -  1082  1311  1469
                                        1597  1739  1787
 ^IfGetFieldValue                  Ext                   -  1419  1426
 ^IfMain                           Ext                   -  1832
 ^IfSetField                       Ext                   -  1172  1196  1254
                                        1278  1670  1708
 ^IfSetFieldValue                  Ext                   -  1010  1017  1043
                                        1050  1184  1191  1266  1273  1374  1381
                                        1388  1526  1533  1559  1566  1658  1665
                                        1696  1703
 case                              Ext                   -   994  1026  1126
                                        1207  1357  1509  1542  1641  1679
 hasALIAS                          Abs       2 #00000002 -   336
 hasCOLCT                          Abs       2 #00000002 -   342
 hasDER                            Abs       8 #00000008 -   340
 hasEXPND                          Abs       1 #00000001 -   343
 hasFORM                           Abs       8 #00000008 -   346
 hasHELP                           Abs       4 #00000004 -   334
 hasINTG                           Abs       4 #00000004 -   347
 hasINV                            Abs       4 #00000004 -   341
 hasPDATA                          Abs       1 #00000001 -   337
 hasPROMPTM                        Abs       4 #00000004 -   335
 hasVUNS                           Abs       1 #00000001 -   349
 hasWHERE                          Abs       2 #00000002 -   348
 nonALG                            Abs       8 #00000008 -   333
 pdCM                              Abs       6 #00000006 -   358
 pdEQ                              Abs       7 #00000007 -   359
 pdEX                              Abs       0 #00000000 -   352
 pdLP                              Abs       4 #00000004 -   356
 pdOP                              Abs       1 #00000001 -   353
 pdOS0                             Abs       8 #00000008 -   360
 pdOS1                             Abs       9 #00000009 -   361
 pdOS2                             Abs      10 #0000000A -   362
 pdOS3                             Abs      11 #0000000B -   363
 pdOS4                             Abs      12 #0000000C -   364
 pdOS5                             Abs      13 #0000000D -   365
 pdOS6                             Abs      14 #0000000E -   366
 pdOS7                             Abs      15 #0000000F -   367
 pdQE                              Abs       2 #00000002 -   354
 pdQN                              Abs       3 #00000003 -   355
 pdRP                              Abs       5 #00000005 -   357
 umEND                             Ext                   -  1001  1133  1147
                                        1229  1517  1649
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
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
