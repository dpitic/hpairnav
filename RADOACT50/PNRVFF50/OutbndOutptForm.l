Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)                                      OutbndOutptFor Page    1

    1               * File  OutbndOutptForm.s       1
    2               * RPL
    3               * File  OutbndOutptForm.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\OutbndOutptForm.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009
    5               **********************************************************************
    6               * NAME:          OutbndOutptForm
    7               * LIBRARY #:     322h = 802d
    8               * AUTHOR:        Dan Pitic
    9               * DATE:          22 June 2009
   10               * VERSION:       1.3
   11               * COMPATIBILITY: HP50
   12               *                HP48 ( Use DoInputForm )
   13               * DESCRIPTION:   Generates and displays the OUTBOUND leg output form
   14               *                for the library application.
   15               *
   16               * File  OutbndOutptForm.s       14
   17               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVF50.h
   18
   19               =RomId  EQU     #322
   20               * ROMID set to 322
   21
   22
   23
   24
   25
   26
   27
   28
   29
   30               *|| Resuming file OutbndOutptForm.s at line 14
   31               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
   32
   33
   34               * RPL
   35               * insure RPL-mode exit
   36
   37               * ( Rad
   38
   39               * ( %2PI
   40               * ( %PI/24
   41
   42
   43
   44
   45               * ( 1=1Var, 2=2Var Statistic
   46               * ( 1=Histogram, 2=BoxWhisker
   47
   48
   49
   50
   51
   52               * ASSEMBLE
   53               DefSysF64-33 EQU        #00000000
   54               DefSysF32-01 EQU        #04010FF0
   55               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   56               DefSysF97-128 EQU       #00000000
   57
   58               * RPL
   59
   60
   61               * ( solution mode
   62               * ( constants mode
   63               * ( results mode
   64               * ( careful evaluation mode
   65
   66               * ( binary integer wordsize
   67               * must start on nibble boundary
   68               * ( binary integer base
   69               * must follow "fnBinWordS6"
   70
   71               * ( financial BEGIN/END mode
   72               * ( complex number and vector
   73               * mode
   74               * ( angle mode
   75               * must start on a nibble boundary
   76               * ( complex 2D mode
   77               * ( underflow action
   78               * ( overflow action
   79               * ( infinite result action
   80               * ( underflow-negative indicator
   81               * ( underflow-positive indicator
   82               * ( overflow indicator
   83               * ( infinite result indicator
   84               * ( symbolic-comples decompilation
   85               * ( simultaneous plot mode
   86               * ( axis drawing plot mode
   87
   88               * ( connect points mode
   89               * ( graphics cursor type mode
   90               * ( I/O device
   91               * ( print device
   92               * ( I/O data format
   93               * ( variable overwrite mode
   94               * ( double-space print mode
   95               * ( suppress auto CR mode
   96               * ( suppress I/O status messages
   97
   98
   99               * ( clock display mode
  100               * ( clock display format
  101               * ( date format
  102               * ( reschedule unacknowledged
  103               * repeat alarms mode
  104               * ( delete acknowledged non-repeat
  105               * alarms mode
  106
  107               * ( number of decimal digits
  108               * must start on nibble boundary
  109               * ( number display format
  110               * must start on nibble boundary
  111               * ( radix mark
  112               * ( multi-line display mode
  113               * ( show precedence mode
  114               * ( zero out tiny matrix elements
  115
  116               * ( last arguments mode
  117               * ( error beep mode
  118               * ( alarm beep mode
  119               * ( verbose display mode
  120               * ( variable name only mode
  121               * ( 3-way alpha mode
  122               * ( 3-way user keys mode
  123               * ( user keys mode
  124               * ( special parser mode
  125               * ( index wraparound indicator
  126
  127
  128               * ASSEMBLE
  129               SolutionsFl  EQU 1
  130               ConstantsFl  EQU 2
  131               ResultsFl    EQU 3
  132               CarefulFl    EQU 4
  133
  134               BinWordSFl1  EQU 5      must start on a nibble boundary
  135               BinWordSBCt  EQU 6      number of bits
  136               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  137               BinBaseBCt   EQU 2      number of bits
  138
  139               ComVecDiFl1  EQU 15
  140               ComVecDiBCt  EQU 2      number of bits
  141               AngleFl1     EQU 17     must start on a nibble boundary
  142               AngleBCt     EQU 2      number of bits
  143               Complex2DFl  EQU 19
  144               UnderfActFl  EQU 20
  145               OverfActFl   EQU 21
  146               InfResActFl  EQU 22
  147               UnderfNegFl  EQU 23
  148               UnderfPosFl  EQU 24
  149               OverflowFl   EQU 25
  150               InfResultFl  EQU 26
  151
  152               FunctPlotFl  EQU 30
  153               ConnectPtFl  EQU 31
  154               GCursorFl    EQU 32
  155               IODeviceFl   EQU 33
  156               PrintDevFl   EQU 34
  157               IODataFmtFl  EQU 35
  158               OverwriteFl  EQU 36
  159               DblSpaceFl   EQU 37
  160               NoAutoCRFl   EQU 38
  161               NoIOStsMsgFl EQU 39
  162
  163               ClockOnFl    EQU 40
  164               ClockFmtFl   EQU 41
  165               DateFmtFl    EQU 42
  166               ResRepAlmFl  EQU 43
  167               DelNRAlmFl   EQU 44
  168
  169               NumDigsFl1   EQU 45     must start on a nibble boundary
  170               NumDigsBCt   EQU 4      number of bits
  171               NumDispFl1   EQU 49     must start on a nibble boundary
  172               NumDispBCt   EQU 2      number of bits
  173               RadixFl      EQU 51
  174               MultiDispFl  EQU 52
  175               ShowPrecFl   EQU 53
  176
  177               LastArgsFl   EQU 55
  178               ErrorBeepFl  EQU 56
  179               AlarmBeepFl  EQU 57
  180               VerboseFl    EQU 58
  181               FastEqViewFl EQU 59
  182               TriAlphaFl   EQU 60
  183               TriUserFl    EQU 61
  184               UserKeysFl   EQU 62
  185               NoParseFl    EQU 63
  186               IndexWrapFl  EQU 64
  187
  188
  189
  190               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  191               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  192
  193               AngleNib     EQU ((AngleFl1)-1)/4
  194               AngleBit1    EQU ((AngleFl1)-1)%4
  195               AngleBit2    EQU (AngleBit1)+1
  196
  197               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  198               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  199
  200               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  201               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  202
  203               CarefulNib   EQU ((CarefulFl)-1)/4
  204               CarefulBit   EQU ((CarefulFl)-1)%4
  205
  206               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  207               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  208
  209               ClockOnNib   EQU ((ClockOnFl)-1)/4
  210               ClockOnBit   EQU ((ClockOnFl)-1)%4
  211
  212               Complex2DNib EQU ((Complex2DFl)-1)/4
  213               Complex2DBit EQU ((Complex2DFl)-1)%4
  214
  215               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  216               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  217
  218               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  219               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  220
  221               ConstantsNib EQU ((ConstantsFl)-1)/4
  222               ConstantsBit EQU ((ConstantsFl)-1)%4
  223
  224               DateFmtNib   EQU ((DateFmtFl)-1)/4
  225               DateFmtBit   EQU ((DateFmtFl)-1)%4
  226
  227               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  228               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  229
  230               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  231               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  232
  233               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  234               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  235
  236               FastEViewNib EQU ((FastEqViewFl)-1)/4
  237               FastEViewBit EQU ((FastEqViewFl)-1)%4
  238
  239               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  240               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  241
  242               GCursorNib   EQU ((GCursorFl)-1)/4
  243               GCursorBit   EQU ((GCursorFl)-1)%4
  244
  245               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  246               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  247
  248               InfResActNib EQU ((InfResActFl)-1)/4
  249               InfResActBit EQU ((InfResActFl)-1)%4
  250
  251               InfResultNib EQU ((InfResultFl)-1)/4
  252               InfResultBit EQU ((InfResultFl)-1)%4
  253
  254               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  255               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  256
  257               IODeviceNib  EQU ((IODeviceFl)-1)/4
  258               IODeviceBit  EQU ((IODeviceFl)-1)%4
  259
  260               LastArgsNib  EQU ((LastArgsFl)-1)/4
  261               LastArgsBit  EQU ((LastArgsFl)-1)%4
  262
  263               VerboseNib   EQU ((VerboseFl)-1)/4
  264               VerboseBit   EQU ((VerboseFl)-1)%4
  265
  266               MultiDispNib EQU ((MultiDispFl)-1)/4
  267               MultiDispBit EQU ((MultiDispFl)-1)%4
  268
  269               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  270               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  271
  272               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  273               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  274
  275               NoParseNib   EQU ((NoParseFl)-1)/4
  276               NoParseBit   EQU ((NoParseFl)-1)%4
  277
  278               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  279               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  280
  281               NumDispNib   EQU ((NumDispFl1)-1)/4
  282               NumDispBit1  EQU ((NumDispFl1)-1)%4
  283
  284               OverfActNib  EQU ((OverfActFl)-1)/4
  285               OverfActBit  EQU ((OverfActFl)-1)%4
  286
  287               OverflowNib  EQU ((OverflowFl)-1)/4
  288               OverflowBit  EQU ((OverflowFl)-1)%4
  289
  290               OverwriteNib EQU ((OverwriteFl)-1)/4
  291               OverwriteBit EQU ((OverwriteFl)-1)%4
  292
  293               PrintDevNib  EQU ((PrintDevFl)-1)/4
  294               PrintDevBit  EQU ((PrintDevFl)-1)%4
  295
  296               RadixNib     EQU ((RadixFl)-1)/4
  297               RadixBit     EQU ((RadixFl)-1)%4
  298
  299               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  300               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  301
  302               ResultsNib   EQU ((ResultsFl)-1)/4
  303               ResultsBit   EQU ((ResultsFl)-1)%4
  304
  305               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  306               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  307
  308               SolutionsNib EQU ((SolutionsFl)-1)/4
  309               SolutionsBit EQU ((SolutionsFl)-1)%4
  310
  311               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  312               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  313
  314               TriUserNib   EQU ((TriUserFl)-1)/4
  315               TriUserBit   EQU ((TriUserFl)-1)%4
  316
  317               UnderfActNib EQU ((UnderfActFl)-1)/4
  318               UnderfActBit EQU ((UnderfActFl)-1)%4
  319
  320               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  321               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  322
  323               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  324               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  325
  326               UserKeysNib  EQU ((UserKeysFl)-1)/4
  327               UserKeysBit  EQU ((UserKeysFl)-1)%4
  328
  329               * RPL
  330               * RPL
  331               * insure RPL-mode exit
  332
  333
  334               * ASSEMBLE
  335
  336
  337               nonALG EQU 8                    not-allowed-in-algebraics flag
  338               hasHELP EQU 4                   has-help-data flag
  339               hasPROMPTM EQU 4                same as above
  340               hasALIAS EQU 2                  has-algebraic-alias flag
  341               hasPDATA EQU 1                  has-parse-data flag
  342
  343
  344               hasDER EQU 8                    has-derivative flag
  345               hasINV EQU 4                    has-inverse flag
  346               hasCOLCT EQU 2                  has-COLCT-data flag
  347               hasEXPND EQU 1                  has-EXPND-data flag
  348
  349
  350               hasFORM EQU 8                   has-FORM-menu flag
  351               hasINTG EQU 4                   has-Integral-data flag
  352               hasWHERE EQU 2                  has-WHERE-code flag
  353               hasVUNS EQU 1                   has-veryunsymin-code flag
  354
  355
  356               pdEX EQU #0             general expression
  357               pdOP EQU #1             operator
  358               pdQE EQU #2             quoted expression
  359               pdQN EQU #3             quoted name
  360               pdLP EQU #4             left parenthesis
  361               pdRP EQU #5             right parenthesis
  362               pdCM EQU #6             comma (non-radix)
  363               pdEQ EQU #7             equal-sign separator
  364               pdOS0 EQU #8            optional repeat 0
  365               pdOS1 EQU #9            optional repeat 1
  366               pdOS2 EQU #A            optional repeat 2
  367               pdOS3 EQU #B            optional repeat 3
  368               pdOS4 EQU #C            optional repeat 4
  369               pdOS5 EQU #D            optional repeat 5
  370               pdOS6 EQU #E            optional repeat 6
  371               pdOS7 EQU #F            optional repeat 7
  372
  373               * RPL
  374               * RPL
  375               * insure RPL-mode exit
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
  391
  392
  393               * RPL
  394               * insure RPL-mode exit
  395
  396               * RPL
  397               * insure RPL-mode exit
  398
  399
  400
  401
  402
  403
  404
  405
  406
  407               * ( for internal use only
  408
  409
  410
  411
  412
  413
  414
  415
  416
  417
  418               * ( decimal 67
  419               * ( decimal 86
  420               * ( decimal 82
  421               * ( decimal 85
  422               * ( decimal 101
  423               * ( decimal 97
  424               * ( decimal 100
  425               * ( decimal 113
  426               * ( decimal 112
  427
  428               * ( check width
  429               * ( field character width
  430
  431               * ( decimal 67
  432               * ( decimal 85
  433               * ( decimal 97
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
  449
  450
  451               * RPL
  452               * insure RPL-mode exit
  453
  454               * ( decimal 66
  455               * ( decimal 67
  456               * ( decimal 69
  457               * ( decimal 82
  458               * ( decimal 83
  459               * ( decimal 84
  460               * ( decimal 85
  461               * ( decimal 86
  462               * ( decimal 87
  463
  464
  465               * ( norm-view default visible row count
  466               * ( default first row X location
  467               * ( default first row Y location
  468               * ( default row width
  469               * ( default row height
  470
  471               * ( max-view width
  472               * ( max-view height
  473               * ( max-view default visible row count
  474
  475               * ( prompt area height
  476
  477               * ( more-up/down icon width
  478
  479
  480
  481               * RPL
  482               * insure RPL-mode exit
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
  696
  697
  698               * RPL
  699               * insure RPL-mode exit
  700
  701
  702
  703               * ( set for informations
  704               * ( set for step by step mode on
  705               * ( internal use: true if VXXL success
  706               * ( set for no gcd computations
  707               * ( set for complex mode
  708               * ( internal use:       LN->-INV[-LN]]
  709               * ( set for approx mode
  710               * ( set for TSIMP call inside SERIES
  711               * ( internal use:       modular computation
  712               * ( internal use:       testing remainder=0
  713               * ( set to allow numeric factorization
  714               * ( set for large matrices
  715               * ( set: don't simplify inside non rational operation
  716               * ( set to see i as an irrquad c=-1
  717               * ( set to disable linearity simplif.
  718               * ( set for increasing power x+1 -> 1+x
  719               * ( internal use:       sqrt not as irrquad
  720               * ( set if sin are prefered to cos
  721               * ( set for menu as choosebox
  722               * ( set if xINT is not simplified
  723               * ( set if non rigourous mode
  724               * ( set to allow silent mode switch
  725               * ( set if xLN returns LN[ABS[]]
  726
  727
  728               * ASSEMBLE
  729
  730               MultiLineFl     EQU     65
  731               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  732               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  733               MultiLineStringsFl      EQU     66
  734               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  735               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  736               DigitalClockFl  EQU     67
  737               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  738               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  739               CmdAutoIndentFl EQU     68
  740               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  741               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  742               FullScreenEditFl        EQU     69
  743               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  744               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  745               MultiLine2GROBFl        EQU     70
  746               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  747               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  748               DesasmWithAdrFl EQU     71
  749               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  750               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  751               BigFontStackFl  EQU     72
  752               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  753               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  754               BigFontCmdFl    EQU     73
  755               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  756               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  757               RightJustifiedStackFl   EQU     74
  758               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  759               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  760               KeystrokeBeepFl EQU     75
  761               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  762               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  763               FilerConfirmationFl     EQU     76
  764               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  765               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  766               FilerConfirmFl  EQU     77
  767               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  768               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  769               KernelParamFl   EQU     78
  770               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  771               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  772               PrettyPrintFl   EQU     79
  773               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  774               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  775               SmallFontEQWStackFl     EQU     80
  776               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  777               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  778               SmallFontEQWGrobFl      EQU     81
  779               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  780               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  781               SmallFontEQWEditFl      EQU     82
  782               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  783               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  784               GrobDisplayFl   EQU     83
  785               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  786               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  787               MKSmallFontMenuFl       EQU     84
  788               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  789               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  790               SystemRPLStackFl        EQU     85
  791               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  792               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  793               MASDDecompilerFl        EQU     86
  794               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  795               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  796               RecursiveStackFl        EQU     87
  797               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  798               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  799               RecursiveEditFl EQU     88
  800               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  801               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  802               AddressesCLEFl  EQU     89
  803               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  804               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  805               SmallFontChooseFl       EQU     90
  806               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  807               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  808               ArrayOnlyFl     EQU     91
  809               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  810               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  811               MLMASDModeFl    EQU     92
  812               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  813               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  814               ErableHeaderFl  EQU     93
  815               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  816               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  817               AutoSaveFl      EQU     94
  818               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  819               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  820               AlgebraicModeFl EQU     95
  821               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  822               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  823               MenuOnFl        EQU     96
  824               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  825               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  826               VerticalListFl  EQU     97
  827               VerticalListNib EQU     ((VerticalListFl)-1)/4
  828               VerticalListBit EQU     ((VerticalListFl)-1)%4
  829               VerticalVectorFl        EQU     98
  830               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  831               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  832
  833
  834               ComplexFl       EQU     103
  835               ComplexNib      EQU     ((ComplexFl)-1)/4
  836               ComplexBit      EQU     ((ComplexFl)-1)%4
  837
  838
  839               ExactModeFl     EQU     105
  840               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  841               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  842
  843
  844               * RPL
  845
  846
  847
  848               * ASSEMBLE
  849                       SETLIST CODE, INCLUDE, PSEUDO
  850               * RPL
  851
  852               *|| Resuming file OutbndOutptForm.s at line 15
  853               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\informbox.h
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
  922
  923
  924
  925
  926               * Do not modify any of these constants
  927
  928               * Do not modify any of these constants
  929               * ( was zint
  930
  931
  932
  933
  934
  935
  936
  937
  938
  939               *|| Resuming file OutbndOutptForm.s at line 16
  940               * ( HP50
  941               * File  OutbndOutptForm.s       18
  942 00000         =OutbndOutptForm
  943               * File  OutbndOutptForm.s       19
  944 00000 00000           CON(5)  =DOCOL
  945               * Label definitions
  946               * File  OutbndOutptForm.s       21
  947 00005 00000           CON(5)  =DOCSTR
  948 0000A 90000           CON(5)  9
  949 0000F 25A3            NIBASC  \R:\
  950 00013 00000           CON(5)  =ONE
  951 00018 00000           CON(5)  =TEN
  952               * File  OutbndOutptForm.s       22
  953 0001D 00000           CON(5)  =DOCSTR
  954 00022 F0000           CON(5)  15
  955 00027 4464D48         NIBASC  \DFMH:\
            4A3
  956 00031 00000           CON(5)  =FOURTHREE
  957 00036 00000           CON(5)  =TEN
  958               * File  OutbndOutptForm.s       23
  959 0003B 00000           CON(5)  =DOCSTR
  960 00040 B0000           CON(5)  11
  961 00045 4513A3          NIBASC  \T1:\
  962 0004B 00000           CON(5)  =ONE
  963 00050 00000           CON(5)  =NINETEEN
  964               * File  OutbndOutptForm.s       24
  965 00055 00000           CON(5)  =DOCSTR
  966 0005A F0000           CON(5)  15
  967 0005F 8444741         NIBASC  \HDG1:\
            3A3
  968 00069 00000           CON(5)  =ONE
  969 0006E 00000           CON(5)  =TWENTYEIGHT
  970               * File  OutbndOutptForm.s       25
  971 00073 00000           CON(5)  =DOCSTR
  972 00078 B0000           CON(5)  11
  973 0007D 3513A3          NIBASC  \S1:\
  974 00083 00000           CON(5)  =FOURTHREE
  975 00088 00000           CON(5)  =TWENTYEIGHT
  976               * File  OutbndOutptForm.s       26
  977 0008D 00000           CON(5)  =DOCSTR
  978 00092 F0000           CON(5)  15
  979 00097 3574251         NIBASC  \SGR1:\
            3A3
  980 000A1 00000           CON(5)  =ONE
  981 000A6 00000           CON(5)  =THIRTYSEVEN
  982               * File  OutbndOutptForm.s       27
  983
  984               * Field definitions
  985               * File  OutbndOutptForm.s       29
  986               * Field R definition
  987               * File  OutbndOutptForm.s       30
  988 000AB 00000           CON(5)  ='DROPFALSE
  989               * Message handler
  990               * File  OutbndOutptForm.s       31
  991 000B0 00000           CON(5)  =THIRTEEN
  992 000B5 00000           CON(5)  =EIGHT
  993 000BA 00000           CON(5)  =FORTYNINE
  994 000BF 00000           CON(5)  =EIGHT
  995               * Position & size
  996               * File  OutbndOutptForm.s       32
  997 000C4 00000           CON(5)  =ONE
  998               * Field type TEXT
  999               * File  OutbndOutptForm.s       33
 1000 000C9 00000           CON(5)  =DOLIST
 1001 000CE 00000           CON(5)  =ZERO
 1002 000D3 00000           CON(5)  =SEMI
 1003               * Allowed types REAL
 1004               * File  OutbndOutptForm.s       34
 1005 000D8 00000           CON(5)  =TWO
 1006               * Decompile
 1007               * File  OutbndOutptForm.s       35
 1008 000DD 00000           CON(5)  =DOCSTR
 1009 000E2 F3000           CON(5)  63
 1010 000E7 05F494E         NIBASC  \POINT OF NO RETURN (\
            44502F4
            6402E4F4022554455525E40282

 1011 0010F 6425F4D         NIBASC  \FROM FIX)\
            4026494
            8592
 1012               * Help string
 1013               * File  OutbndOutptForm.s       36
 1014 00121 00000           CON(5)  =MINUSONE
 1015               * Choose data N/A
 1016               * File  OutbndOutptForm.s       37
 1017 00126 00000           CON(5)  =MINUSONE
 1018               * Choose decompile N/A
 1019               * File  OutbndOutptForm.s       38
 1020 0012B 00000           CON(5)  =DOIDNT
 1021 00130 10              CON(2)  1
 1022 00132 25              NIBASC  \R\
 1023               * Reset value
 1024               * File  OutbndOutptForm.s       39
 1025 00134 00000           CON(5)  =DOIDNT
 1026 00139 10              CON(2)  1
 1027 0013B 25              NIBASC  \R\
 1028               * Initial value
 1029               * File  OutbndOutptForm.s       40
 1030
 1031               * File  OutbndOutptForm.s       41
 1032               * Field DFMH definition
 1033               * File  OutbndOutptForm.s       42
 1034 0013D 00000           CON(5)  ='DROPFALSE
 1035               * Message handler
 1036               * File  OutbndOutptForm.s       43
 1037 00142 00000           CON(5)  =BINT_91d
 1038 00147 00000           CON(5)  =EIGHT
 1039 0014C 00000           CON(5)  =THIRTYSEVEN
 1040 00151 00000           CON(5)  =EIGHT
 1041               * Position & size
 1042               * File  OutbndOutptForm.s       44
 1043 00156 00000           CON(5)  =ONE
 1044               * Field type TEXT
 1045               * File  OutbndOutptForm.s       45
 1046 0015B 00000           CON(5)  =DOLIST
 1047 00160 00000           CON(5)  =ZERO
 1048 00165 00000           CON(5)  =SEMI
 1049               * Allowed types REAL
 1050               * File  OutbndOutptForm.s       46
 1051 0016A 00000           CON(5)  =TWO
 1052               * Decompile
 1053               * File  OutbndOutptForm.s       47
 1054 0016F 00000           CON(5)  =DOCSTR
 1055 00174 93000           CON(5)  57
 1056 00179 2514449         NIBASC  \RADIUS OF ACTION FRO\
            4553502
            F4640214344594F4E4026425F4

 1057 001A1 D40284F         NIBASC  \M HOME\
            4D454
 1058               * Help string
 1059               * File  OutbndOutptForm.s       48
 1060 001AD 00000           CON(5)  =MINUSONE
 1061               * Choose data N/A
 1062               * File  OutbndOutptForm.s       49
 1063 001B2 00000           CON(5)  =MINUSONE
 1064               * Choose decompile N/A
 1065               * File  OutbndOutptForm.s       50
 1066 001B7 00000           CON(5)  =DOIDNT
 1067 001BC 40              CON(2)  4
 1068 001BE 4464D48         NIBASC  \DFMH\
            4
 1069               * Reset value
 1070               * File  OutbndOutptForm.s       51
 1071 001C6 00000           CON(5)  =DOIDNT
 1072 001CB 40              CON(2)  4
 1073 001CD 4464D48         NIBASC  \DFMH\
            4
 1074               * Initial value
 1075               * File  OutbndOutptForm.s       52
 1076
 1077               * File  OutbndOutptForm.s       53
 1078               * Field T1 definition
 1079               * File  OutbndOutptForm.s       54
 1080 001D5 00000           CON(5)  ='DROPFALSE
 1081               * Message handler
 1082               * File  OutbndOutptForm.s       55
 1083 001DA 00000           CON(5)  =SIXTEEN
 1084 001DF 00000           CON(5)  =SEVENTEEN
 1085 001E4 00000           CON(5)  =DOBINT
 1086 001E9 D6000           CON(5)  109
 1087 001EE 00000           CON(5)  =EIGHT
 1088               * Position & size
 1089               * File  OutbndOutptForm.s       56
 1090 001F3 00000           CON(5)  =ONE
 1091               * Field type TEXT
 1092               * File  OutbndOutptForm.s       57
 1093 001F8 00000           CON(5)  =DOLIST
 1094 001FD 00000           CON(5)  =ZERO
 1095 00202 00000           CON(5)  =SEMI
 1096               * Allowed types REAL
 1097               * File  OutbndOutptForm.s       58
 1098 00207 00000           CON(5)  =TWO
 1099               * Decompile
 1100               * File  OutbndOutptForm.s       59
 1101 0020C 00000           CON(5)  =DOCSTR
 1102 00211 F2000           CON(5)  47
 1103 00216 4594D45         NIBASC  \TIME TO TURN (AT PNR\
            40245F4
            02455525E4028214450205E425

 1104 0023E 92              NIBASC  \)\
 1105               * Help string
 1106               * File  OutbndOutptForm.s       60
 1107 00240 00000           CON(5)  =MINUSONE
 1108               * Choose data N/A
 1109               * File  OutbndOutptForm.s       61
 1110 00245 00000           CON(5)  =MINUSONE
 1111               * Choose decompile N/A
 1112               * File  OutbndOutptForm.s       62
 1113 0024A 00000           CON(5)  =DOIDNT
 1114 0024F 20              CON(2)  2
 1115 00251 4513            NIBASC  \T1\
 1116               * Reset value
 1117               * File  OutbndOutptForm.s       63
 1118 00255 00000           CON(5)  =DOIDNT
 1119 0025A 20              CON(2)  2
 1120 0025C 4513            NIBASC  \T1\
 1121               * Initial value
 1122               * File  OutbndOutptForm.s       64
 1123
 1124               * File  OutbndOutptForm.s       65
 1125               * Field HDG1 definition
 1126               * File  OutbndOutptForm.s       66
 1127 00260 00000           CON(5)  ='DROPFALSE
 1128               * Message handler
 1129               * File  OutbndOutptForm.s       67
 1130 00265 00000           CON(5)  =TWENTYFIVE
 1131 0026A 00000           CON(5)  =TWENTYSIX
 1132 0026F 00000           CON(5)  =THIRTYSEVEN
 1133 00274 00000           CON(5)  =EIGHT
 1134               * Position & size
 1135               * File  OutbndOutptForm.s       68
 1136 00279 00000           CON(5)  =ONE
 1137               * Field type TEXT
 1138               * File  OutbndOutptForm.s       69
 1139 0027E 00000           CON(5)  =DOLIST
 1140 00283 00000           CON(5)  =ZERO
 1141 00288 00000           CON(5)  =SEMI
 1142               * Allowed types REAL
 1143               * File  OutbndOutptForm.s       70
 1144 0028D 00000           CON(5)  =TWO
 1145               * Decompile
 1146               * File  OutbndOutptForm.s       71
 1147 00292 00000           CON(5)  =DOCSTR
 1148 00297 52000           CON(5)  37
 1149 0029C 8454144         NIBASC  \HEADING OUTBOUND\
            494E474
            02F4554524F455E444

 1150               * Help string
 1151               * File  OutbndOutptForm.s       72
 1152 002BC 00000           CON(5)  =MINUSONE
 1153               * Choose data N/A
 1154               * File  OutbndOutptForm.s       73
 1155 002C1 00000           CON(5)  =MINUSONE
 1156               * Choose decompile N/A
 1157               * File  OutbndOutptForm.s       74
 1158 002C6 00000           CON(5)  =DOIDNT
 1159 002CB 40              CON(2)  4
 1160 002CD 8444741         NIBASC  \HDG1\
            3
 1161               * Reset value
 1162               * File  OutbndOutptForm.s       75
 1163 002D5 00000           CON(5)  =DOIDNT
 1164 002DA 40              CON(2)  4
 1165 002DC 8444741         NIBASC  \HDG1\
            3
 1166               * Initial value
 1167               * File  OutbndOutptForm.s       76
 1168
 1169               * File  OutbndOutptForm.s       77
 1170               * Field S1 definition
 1171               * File  OutbndOutptForm.s       78
 1172 002E4 00000           CON(5)  ='DROPFALSE
 1173               * Message handler
 1174               * File  OutbndOutptForm.s       79
 1175 002E9 00000           CON(5)  =LISTCMP
 1176 002EE 00000           CON(5)  =TWENTYSIX
 1177 002F3 00000           CON(5)  =FORTYTHREE
 1178 002F8 00000           CON(5)  =EIGHT
 1179               * Position & size
 1180               * File  OutbndOutptForm.s       80
 1181 002FD 00000           CON(5)  =ONE
 1182               * Field type TEXT
 1183               * File  OutbndOutptForm.s       81
 1184 00302 00000           CON(5)  =DOLIST
 1185 00307 00000           CON(5)  =ZERO
 1186 0030C 00000           CON(5)  =SEMI
 1187               * Allowed types REAL
 1188               * File  OutbndOutptForm.s       82
 1189 00311 00000           CON(5)  =TWO
 1190               * Decompile
 1191               * File  OutbndOutptForm.s       83
 1192 00316 00000           CON(5)  =DOCSTR
 1193 0031B F2000           CON(5)  47
 1194 00320 7425F45         NIBASC  \GROUND SPEED OUTBOUN\
            5E44402
            350554544402F4554524F455E4

 1195 00348 44              NIBASC  \D\
 1196               * Help string
 1197               * File  OutbndOutptForm.s       84
 1198 0034A 00000           CON(5)  =MINUSONE
 1199               * Choose data N/A
 1200               * File  OutbndOutptForm.s       85
 1201 0034F 00000           CON(5)  =MINUSONE
 1202               * Choose decompile N/A
 1203               * File  OutbndOutptForm.s       86
 1204 00354 00000           CON(5)  =DOIDNT
 1205 00359 20              CON(2)  2
 1206 0035B 3513            NIBASC  \S1\
 1207               * Reset value
 1208               * File  OutbndOutptForm.s       87
 1209 0035F 00000           CON(5)  =DOIDNT
 1210 00364 20              CON(2)  2
 1211 00366 3513            NIBASC  \S1\
 1212               * Initial value
 1213               * File  OutbndOutptForm.s       88
 1214
 1215               * File  OutbndOutptForm.s       89
 1216               * Field SGR1 definition
 1217               * File  OutbndOutptForm.s       90
 1218 0036A 00000           CON(5)  ='DROPFALSE
 1219               * Message handler
 1220               * File  OutbndOutptForm.s       91
 1221 0036F 00000           CON(5)  =TWENTYFIVE
 1222 00374 00000           CON(5)  =THIRTYFIVE
 1223 00379 00000           CON(5)  =DOBINT
 1224 0037E 76000           CON(5)  103
 1225 00383 00000           CON(5)  =EIGHT
 1226               * Position & size
 1227               * File  OutbndOutptForm.s       92
 1228 00388 00000           CON(5)  =ONE
 1229               * Field type TEXT
 1230               * File  OutbndOutptForm.s       93
 1231 0038D 00000           CON(5)  =DOLIST
 1232 00392 00000           CON(5)  =ZERO
 1233 00397 00000           CON(5)  =SEMI
 1234               * Allowed types REAL
 1235               * File  OutbndOutptForm.s       94
 1236 0039C 00000           CON(5)  =TWO
 1237               * Decompile
 1238               * File  OutbndOutptForm.s       95
 1239 003A1 00000           CON(5)  =DOCSTR
 1240 003A6 B3000           CON(5)  59
 1241 003AB 3505543         NIBASC  \SPEC. GND. RANGE (OU\
            4E20274
            E444E2022514E474540282F455

 1242 003D3 4524F45         NIBASC  \TBOUND)\
            5E44492
 1243               * Help string
 1244               * File  OutbndOutptForm.s       96
 1245 003E1 00000           CON(5)  =MINUSONE
 1246               * Choose data N/A
 1247               * File  OutbndOutptForm.s       97
 1248 003E6 00000           CON(5)  =MINUSONE
 1249               * Choose decompile N/A
 1250               * File  OutbndOutptForm.s       98
 1251 003EB 00000           CON(5)  =DOIDNT
 1252 003F0 40              CON(2)  4
 1253 003F2 3574251         NIBASC  \SGR1\
            3
 1254               * Reset value
 1255               * File  OutbndOutptForm.s       99
 1256 003FA 00000           CON(5)  =DOIDNT
 1257 003FF 40              CON(2)  4
 1258 00401 3574251         NIBASC  \SGR1\
            3
 1259               * Initial value
 1260               * File  OutbndOutptForm.s       100
 1261
 1262               * File  OutbndOutptForm.s       101
 1263 00409 00000           CON(5)  =SIX
 1264 0040E 00000           CON(5)  =SIX
 1265               * #labels #fields
 1266               * File  OutbndOutptForm.s       102
 1267 00413 00000           CON(5)  ='DROPFALSE
 1268               * Message handler
 1269               * File  OutbndOutptForm.s       103
 1270 00418 00000           CON(5)  =DOCSTR
 1271 0041D 93000           CON(5)  57
 1272 00422 05E425A         NIBASC  \PNR: OUTPUT 1/2 - OU\
            302F455
            450555450213F22302D202F455

 1273 0044A 4524F45         NIBASC  \TBOUND\
            5E444
 1274               * Title
 1275               * File  OutbndOutptForm.s       104
 1276 00456 00000           CON(5)  =DOFLASHP
 1277 0045B 0000000         CON(7)  =^IfMain
 1278               * HP50
 1279               *               DoInputForm                      ( HP50, HP48 )
 1280               * File  OutbndOutptForm.s       106
 1281 00462 00000           CON(5)  =SEMI
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)   Symbol Table                       OutbndOutptFor Page    2

 'DROPFALSE                        Ext                   -   988  1034  1080
                                        1127  1172  1218  1267
 AddressesCLEBit                   Abs       0 #00000000 -   804
 AddressesCLEFl                    Abs      89 #00000059 -   802   803   804
 AddressesCLENib                   Abs      22 #00000016 -   803
 AlarmBeepBit                      Abs       0 #00000000 -   191
 AlarmBeepFl                       Abs      57 #00000039 -   179   190   191
 AlarmBeepNib                      Abs      14 #0000000E -   190
 AlgebraicModeBit                  Abs       2 #00000002 -   822
 AlgebraicModeFl                   Abs      95 #0000005F -   820   821   822
 AlgebraicModeNib                  Abs      23 #00000017 -   821
 AngleBCt                          Abs       2 #00000002 -   142
 AngleBit1                         Abs       0 #00000000 -   194   195
 AngleBit2                         Abs       1 #00000001 -   195
 AngleFl1                          Abs      17 #00000011 -   141   193   194
 AngleNib                          Abs       4 #00000004 -   193
 ArrayOnlyBit                      Abs       2 #00000002 -   810
 ArrayOnlyFl                       Abs      91 #0000005B -   808   809   810
 ArrayOnlyNib                      Abs      22 #00000016 -   809
 AutoSaveBit                       Abs       1 #00000001 -   819
 AutoSaveFl                        Abs      94 #0000005E -   817   818   819
 AutoSaveNib                       Abs      23 #00000017 -   818
 BINT_91d                          Ext                   -  1037
 BigFontCmdBit                     Abs       0 #00000000 -   756
 BigFontCmdFl                      Abs      73 #00000049 -   754   755   756
 BigFontCmdNib                     Abs      18 #00000012 -   755
 BigFontStackBit                   Abs       3 #00000003 -   753
 BigFontStackFl                    Abs      72 #00000048 -   751   752   753
 BigFontStackNib                   Abs      17 #00000011 -   752
 BinBaseBCt                        Abs       2 #00000002 -   137
 BinBaseBit1                       Abs       2 #00000002 -   198
 BinBaseFl1                        Abs      11 #0000000B -   136   197   198
 BinBaseNib                        Abs       2 #00000002 -   197
 BinWordSBCt                       Abs       6 #00000006 -   135
 BinWordSBit1                      Abs       0 #00000000 -   201
 BinWordSFl1                       Abs       5 #00000005 -   134   200   201
 BinWordSNib                       Abs       1 #00000001 -   200
 CarefulBit                        Abs       3 #00000003 -   204
 CarefulFl                         Abs       4 #00000004 -   132   203   204
 CarefulNib                        Abs       0 #00000000 -   203
 ClockFmtBit                       Abs       0 #00000000 -   207
 ClockFmtFl                        Abs      41 #00000029 -   164   206   207
 ClockFmtNib                       Abs      10 #0000000A -   206
 ClockOnBit                        Abs       3 #00000003 -   210
 ClockOnFl                         Abs      40 #00000028 -   163   209   210
 ClockOnNib                        Abs       9 #00000009 -   209
 CmdAutoIndentBit                  Abs       3 #00000003 -   741
 CmdAutoIndentFl                   Abs      68 #00000044 -   739   740   741
 CmdAutoIndentNib                  Abs      16 #00000010 -   740
 ComVecDiBCt                       Abs       2 #00000002 -   140
 ComVecDiBit1                      Abs       2 #00000002 -   216
 ComVecDiFl1                       Abs      15 #0000000F -   139   215   216
 ComVecDiNib                       Abs       3 #00000003 -   215
 Complex2DBit                      Abs       2 #00000002 -   213
 Complex2DFl                       Abs      19 #00000013 -   143   212   213
 Complex2DNib                      Abs       4 #00000004 -   212
 ComplexBit                        Abs       2 #00000002 -   836
 ComplexFl                         Abs     103 #00000067 -   834   835   836
 ComplexNib                        Abs      25 #00000019 -   835
 ConnectPtBit                      Abs       2 #00000002 -   219
 ConnectPtFl                       Abs      31 #0000001F -   153   218   219
 ConnectPtNib                      Abs       7 #00000007 -   218
 ConstantsBit                      Abs       1 #00000001 -   222
 ConstantsFl                       Abs       2 #00000002 -   130   221   222
 ConstantsNib                      Abs       0 #00000000 -   221
 DOBINT                            Ext                   -  1085  1223
 DOCOL                             Ext                   -   944
 DOCSTR                            Ext                   -   947   953   959
                                         965   971   977  1008  1054  1101  1147
                                        1192  1239  1270
 DOFLASHP                          Ext                   -  1276
 DOIDNT                            Ext                   -  1020  1025  1066
                                        1071  1113  1118  1158  1163  1204  1209
                                        1251  1256
 DOLIST                            Ext                   -  1000  1046  1093
                                        1139  1184  1231
 DateFmtBit                        Abs       1 #00000001 -   225
 DateFmtFl                         Abs      42 #0000002A -   165   224   225
 DateFmtNib                        Abs      10 #0000000A -   224
 DblSpaceBit                       Abs       0 #00000000 -   228
 DblSpaceFl                        Abs      37 #00000025 -   159   227   228
 DblSpaceNib                       Abs       9 #00000009 -   227
 DefSysF32-01                      Abs67178480 #04010FF0 -    54
 DefSysF64-33                      Abs       0 #00000000 -    53
 DefSysF65-96                      Abs1107296256 #42000000 -    55
 DefSysF97-128                     Abs       0 #00000000 -    56
 DelNRAlmBit                       Abs       3 #00000003 -   231
 DelNRAlmFl                        Abs      44 #0000002C -   167   230   231
 DelNRAlmNib                       Abs      10 #0000000A -   230
 DesasmWithAdrBit                  Abs       2 #00000002 -   750
 DesasmWithAdrFl                   Abs      71 #00000047 -   748   749   750
 DesasmWithAdrNib                  Abs      17 #00000011 -   749
 DigitalClockBit                   Abs       2 #00000002 -   738
 DigitalClockFl                    Abs      67 #00000043 -   736   737   738
 DigitalClockNib                   Abs      16 #00000010 -   737
 EIGHT                             Ext                   -   992   994  1038
                                        1040  1087  1133  1178  1225
 ErableHeaderBit                   Abs       0 #00000000 -   816
 ErableHeaderFl                    Abs      93 #0000005D -   814   815   816
 ErableHeaderNib                   Abs      23 #00000017 -   815
 ErrorBeepBit                      Abs       3 #00000003 -   234
 ErrorBeepFl                       Abs      56 #00000038 -   178   233   234
 ErrorBeepNib                      Abs      13 #0000000D -   233
 ExactModeBit                      Abs       0 #00000000 -   841
 ExactModeFl                       Abs     105 #00000069 -   839   840   841
 ExactModeNib                      Abs      26 #0000001A -   840
 FORTYNINE                         Ext                   -   993
 FORTYTHREE                        Ext                   -  1177
 FOURTHREE                         Ext                   -   956   974
 FastEViewBit                      Abs       2 #00000002 -   237
 FastEViewNib                      Abs      14 #0000000E -   236
 FastEqViewFl                      Abs      59 #0000003B -   181   236   237
 FilerConfirmBit                   Abs       0 #00000000 -   768
 FilerConfirmFl                    Abs      77 #0000004D -   766   767   768
 FilerConfirmNib                   Abs      19 #00000013 -   767
 FilerConfirmationBit              Abs       3 #00000003 -   765
 FilerConfirmationFl               Abs      76 #0000004C -   763   764   765
 FilerConfirmationNib              Abs      18 #00000012 -   764
 FullScreenEditBit                 Abs       0 #00000000 -   744
 FullScreenEditFl                  Abs      69 #00000045 -   742   743   744
 FullScreenEditNib                 Abs      17 #00000011 -   743
 FunctPlotBit                      Abs       1 #00000001 -   240
 FunctPlotFl                       Abs      30 #0000001E -   152   239   240
 FunctPlotNib                      Abs       7 #00000007 -   239
 GCursorBit                        Abs       3 #00000003 -   243
 GCursorFl                         Abs      32 #00000020 -   154   242   243
 GCursorNib                        Abs       7 #00000007 -   242
 GrobDisplayBit                    Abs       2 #00000002 -   786
 GrobDisplayFl                     Abs      83 #00000053 -   784   785   786
 GrobDisplayNib                    Abs      20 #00000014 -   785
 IODataFmtBit                      Abs       2 #00000002 -   255
 IODataFmtFl                       Abs      35 #00000023 -   157   254   255
 IODataFmtNib                      Abs       8 #00000008 -   254
 IODeviceBit                       Abs       0 #00000000 -   258
 IODeviceFl                        Abs      33 #00000021 -   155   257   258
 IODeviceNib                       Abs       8 #00000008 -   257
 IndexWrapBit                      Abs       3 #00000003 -   246
 IndexWrapFl                       Abs      64 #00000040 -   186   245   246
 IndexWrapNib                      Abs      15 #0000000F -   245
 InfResActBit                      Abs       1 #00000001 -   249
 InfResActFl                       Abs      22 #00000016 -   146   248   249
 InfResActNib                      Abs       5 #00000005 -   248
 InfResultBit                      Abs       1 #00000001 -   252
 InfResultFl                       Abs      26 #0000001A -   150   251   252
 InfResultNib                      Abs       6 #00000006 -   251
 KernelParamBit                    Abs       1 #00000001 -   771
 KernelParamFl                     Abs      78 #0000004E -   769   770   771
 KernelParamNib                    Abs      19 #00000013 -   770
 KeystrokeBeepBit                  Abs       2 #00000002 -   762
 KeystrokeBeepFl                   Abs      75 #0000004B -   760   761   762
 KeystrokeBeepNib                  Abs      18 #00000012 -   761
 LISTCMP                           Ext                   -  1175
 LastArgsBit                       Abs       2 #00000002 -   261
 LastArgsFl                        Abs      55 #00000037 -   177   260   261
 LastArgsNib                       Abs      13 #0000000D -   260
 MASDDecompilerBit                 Abs       1 #00000001 -   795
 MASDDecompilerFl                  Abs      86 #00000056 -   793   794   795
 MASDDecompilerNib                 Abs      21 #00000015 -   794
 MINUSONE                          Ext                   -  1014  1017  1060
                                        1063  1107  1110  1152  1155  1198  1201
                                        1245  1248
 MKSmallFontMenuBit                Abs       3 #00000003 -   789
 MKSmallFontMenuFl                 Abs      84 #00000054 -   787   788   789
 MKSmallFontMenuNib                Abs      20 #00000014 -   788
 MLMASDModeBit                     Abs       3 #00000003 -   813
 MLMASDModeFl                      Abs      92 #0000005C -   811   812   813
 MLMASDModeNib                     Abs      22 #00000016 -   812
 MenuOnBit                         Abs       3 #00000003 -   825
 MenuOnFl                          Abs      96 #00000060 -   823   824   825
 MenuOnNib                         Abs      23 #00000017 -   824
 MultiDispBit                      Abs       3 #00000003 -   267
 MultiDispFl                       Abs      52 #00000034 -   174   266   267
 MultiDispNib                      Abs      12 #0000000C -   266
 MultiLine2GROBBit                 Abs       1 #00000001 -   747
 MultiLine2GROBFl                  Abs      70 #00000046 -   745   746   747
 MultiLine2GROBNib                 Abs      17 #00000011 -   746
 MultiLineBit                      Abs       0 #00000000 -   732
 MultiLineFl                       Abs      65 #00000041 -   730   731   732
 MultiLineNib                      Abs      16 #00000010 -   731
 MultiLineStringsBit               Abs       1 #00000001 -   735
 MultiLineStringsFl                Abs      66 #00000042 -   733   734   735
 MultiLineStringsNib               Abs      16 #00000010 -   734
 NINETEEN                          Ext                   -   963
 NoAutoCRBit                       Abs       1 #00000001 -   270
 NoAutoCRFl                        Abs      38 #00000026 -   160   269   270
 NoAutoCRNib                       Abs       9 #00000009 -   269
 NoIOStMsgBit                      Abs       2 #00000002 -   273
 NoIOStMsgNib                      Abs       9 #00000009 -   272
 NoIOStsMsgFl                      Abs      39 #00000027 -   161   272   273
 NoParseBit                        Abs       2 #00000002 -   276
 NoParseFl                         Abs      63 #0000003F -   185   275   276
 NoParseNib                        Abs      15 #0000000F -   275
 NumDigsBCt                        Abs       4 #00000004 -   170
 NumDigsBit1                       Abs       0 #00000000 -   279
 NumDigsFl1                        Abs      45 #0000002D -   169   278   279
 NumDigsNib                        Abs      11 #0000000B -   278
 NumDispBCt                        Abs       2 #00000002 -   172
 NumDispBit1                       Abs       0 #00000000 -   282
 NumDispFl1                        Abs      49 #00000031 -   171   281   282
 NumDispNib                        Abs      12 #0000000C -   281
 ONE                               Ext                   -   950   962   968
                                         980   997  1043  1090  1136  1181  1228
=OutbndOutptForm                   Rel       0 #00000000 -   942
 OverfActBit                       Abs       0 #00000000 -   285
 OverfActFl                        Abs      21 #00000015 -   145   284   285
 OverfActNib                       Abs       5 #00000005 -   284
 OverflowBit                       Abs       0 #00000000 -   288
 OverflowFl                        Abs      25 #00000019 -   149   287   288
 OverflowNib                       Abs       6 #00000006 -   287
 OverwriteBit                      Abs       3 #00000003 -   291
 OverwriteFl                       Abs      36 #00000024 -   158   290   291
 OverwriteNib                      Abs       8 #00000008 -   290
 PrettyPrintBit                    Abs       2 #00000002 -   774
 PrettyPrintFl                     Abs      79 #0000004F -   772   773   774
 PrettyPrintNib                    Abs      19 #00000013 -   773
 PrintDevBit                       Abs       1 #00000001 -   294
 PrintDevFl                        Abs      34 #00000022 -   156   293   294
 PrintDevNib                       Abs       8 #00000008 -   293
 RadixBit                          Abs       2 #00000002 -   297
 RadixFl                           Abs      51 #00000033 -   173   296   297
 RadixNib                          Abs      12 #0000000C -   296
 RecursiveEditBit                  Abs       3 #00000003 -   801
 RecursiveEditFl                   Abs      88 #00000058 -   799   800   801
 RecursiveEditNib                  Abs      21 #00000015 -   800
 RecursiveStackBit                 Abs       2 #00000002 -   798
 RecursiveStackFl                  Abs      87 #00000057 -   796   797   798
 RecursiveStackNib                 Abs      21 #00000015 -   797
 ResRepAlmBit                      Abs       2 #00000002 -   300
 ResRepAlmFl                       Abs      43 #0000002B -   166   299   300
 ResRepAlmNib                      Abs      10 #0000000A -   299
 ResultsBit                        Abs       2 #00000002 -   303
 ResultsFl                         Abs       3 #00000003 -   131   302   303
 ResultsNib                        Abs       0 #00000000 -   302
 RightJustifiedStackBit            Abs       1 #00000001 -   759
 RightJustifiedStackFl             Abs      74 #0000004A -   757   758   759
 RightJustifiedStackNib            Abs      18 #00000012 -   758
=RomId                             Abs     802 #00000322 -    19
 SEMI                              Ext                   -  1002  1048  1095
                                        1141  1186  1233  1281
 SEVENTEEN                         Ext                   -  1084
 SIX                               Ext                   -  1263  1264
 SIXTEEN                           Ext                   -  1083
 ShowPrecBit                       Abs       0 #00000000 -   306
 ShowPrecFl                        Abs      53 #00000035 -   175   305   306
 ShowPrecNib                       Abs      13 #0000000D -   305
 SmallFontChooseBit                Abs       1 #00000001 -   807
 SmallFontChooseFl                 Abs      90 #0000005A -   805   806   807
 SmallFontChooseNib                Abs      22 #00000016 -   806
 SmallFontEQWEditBit               Abs       1 #00000001 -   783
 SmallFontEQWEditFl                Abs      82 #00000052 -   781   782   783
 SmallFontEQWEditNib               Abs      20 #00000014 -   782
 SmallFontEQWGrobBit               Abs       0 #00000000 -   780
 SmallFontEQWGrobFl                Abs      81 #00000051 -   778   779   780
 SmallFontEQWGrobNib               Abs      20 #00000014 -   779
 SmallFontEQWStackBit              Abs       3 #00000003 -   777
 SmallFontEQWStackFl               Abs      80 #00000050 -   775   776   777
 SmallFontEQWStackNib              Abs      19 #00000013 -   776
 SolutionsBit                      Abs       0 #00000000 -   309
 SolutionsFl                       Abs       1 #00000001 -   129   308   309
 SolutionsNib                      Abs       0 #00000000 -   308
 SystemRPLStackBit                 Abs       0 #00000000 -   792
 SystemRPLStackFl                  Abs      85 #00000055 -   790   791   792
 SystemRPLStackNib                 Abs      21 #00000015 -   791
 TEN                               Ext                   -   951   957
 THIRTEEN                          Ext                   -   991
 THIRTYFIVE                        Ext                   -  1222
 THIRTYSEVEN                       Ext                   -   981  1039  1132
 TWENTYEIGHT                       Ext                   -   969   975
 TWENTYFIVE                        Ext                   -  1130  1221
 TWENTYSIX                         Ext                   -  1131  1176
 TWO                               Ext                   -  1005  1051  1098
                                        1144  1189  1236
 TriAlphaBit                       Abs       3 #00000003 -   312
 TriAlphaFl                        Abs      60 #0000003C -   182   311   312
 TriAlphaNib                       Abs      14 #0000000E -   311
 TriUserBit                        Abs       0 #00000000 -   315
 TriUserFl                         Abs      61 #0000003D -   183   314   315
 TriUserNib                        Abs      15 #0000000F -   314
 UnderfActBit                      Abs       3 #00000003 -   318
 UnderfActFl                       Abs      20 #00000014 -   144   317   318
 UnderfActNib                      Abs       4 #00000004 -   317
 UnderfNegBit                      Abs       2 #00000002 -   321
 UnderfNegFl                       Abs      23 #00000017 -   147   320   321
 UnderfNegNib                      Abs       5 #00000005 -   320
 UnderfPosBit                      Abs       3 #00000003 -   324
 UnderfPosFl                       Abs      24 #00000018 -   148   323   324
 UnderfPosNib                      Abs       5 #00000005 -   323
 UserKeysBit                       Abs       1 #00000001 -   327
 UserKeysFl                        Abs      62 #0000003E -   184   326   327
 UserKeysNib                       Abs      15 #0000000F -   326
 VerboseBit                        Abs       1 #00000001 -   264
 VerboseFl                         Abs      58 #0000003A -   180   263   264
 VerboseNib                        Abs      14 #0000000E -   263
 VerticalListBit                   Abs       0 #00000000 -   828
 VerticalListFl                    Abs      97 #00000061 -   826   827   828
 VerticalListNib                   Abs      24 #00000018 -   827
 VerticalVectorBit                 Abs       1 #00000001 -   831
 VerticalVectorFl                  Abs      98 #00000062 -   829   830   831
 VerticalVectorNib                 Abs      24 #00000018 -   830
 ZERO                              Ext                   -  1001  1047  1094
                                        1140  1185  1232
 ^IfMain                           Ext                   -  1277
 hasALIAS                          Abs       2 #00000002 -   340
 hasCOLCT                          Abs       2 #00000002 -   346
 hasDER                            Abs       8 #00000008 -   344
 hasEXPND                          Abs       1 #00000001 -   347
 hasFORM                           Abs       8 #00000008 -   350
 hasHELP                           Abs       4 #00000004 -   338
 hasINTG                           Abs       4 #00000004 -   351
 hasINV                            Abs       4 #00000004 -   345
 hasPDATA                          Abs       1 #00000001 -   341
 hasPROMPTM                        Abs       4 #00000004 -   339
 hasVUNS                           Abs       1 #00000001 -   353
 hasWHERE                          Abs       2 #00000002 -   352
 nonALG                            Abs       8 #00000008 -   337
 pdCM                              Abs       6 #00000006 -   362
 pdEQ                              Abs       7 #00000007 -   363
 pdEX                              Abs       0 #00000000 -   356
 pdLP                              Abs       4 #00000004 -   360
 pdOP                              Abs       1 #00000001 -   357
 pdOS0                             Abs       8 #00000008 -   364
 pdOS1                             Abs       9 #00000009 -   365
 pdOS2                             Abs      10 #0000000A -   366
 pdOS3                             Abs      11 #0000000B -   367
 pdOS4                             Abs      12 #0000000C -   368
 pdOS5                             Abs      13 #0000000D -   369
 pdOS6                             Abs      14 #0000000E -   370
 pdOS7                             Abs      15 #0000000F -   371
 pdQE                              Abs       2 #00000002 -   358
 pdQN                              Abs       3 #00000003 -   359
 pdRP                              Abs       5 #00000005 -   361
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)   Statistics                         OutbndOutptFor Page    3

Input Parameters

  Source file name is OutbndOutptForm.a

  Listing file name is OutbndOutptForm.l

  Object file name is OutbndOutptForm.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
