Saturn Assembler                                       Wed Jun 24 18:55:05 2009
V3.0.9 (04/15/2007)                                      OutptOutbndFor Page    1

    1               * File  OutptOutbndForm.s       1
    2               * RPL
    3               * File  OutptOutbndForm.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\OutptOutbndForm.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5               **********************************************************************
    6               * NAME:          OutptOutbndForm
    7               * LIBRARY #:     324h = 804d
    8               * AUTHOR:        Dan Pitic
    9               * VERSION:       1.6
   10               * DATE:          24 June 2009
   11               * COMPATIBILITY: HP50
   12               *                HP48  ( Must use DoInputForm )
   13               * DESCRIPTION:   Creates and displays the form to display the OUTPUT
   14               *                results for the OUTBOUND leg of the library
   15               *                application.
   16               *
   17               * File  OutptOutbndForm.s       15
   18               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\ROAMB50.h
   19
   20               =RomId  EQU     #324
   21               * ROMID set to 324
   22
   23
   24
   25
   26
   27
   28
   29
   30               *|| Resuming file OutptOutbndForm.s at line 15
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
  852               *|| Resuming file OutptOutbndForm.s at line 16
  853               * ( HP50
  854               *DEFINE FHEIGHT NINE                ( HP48 )
  855               * File  OutptOutbndForm.s       19
  856 00000         =OutptOutbndForm
  857               * File  OutptOutbndForm.s       20
  858 00000 00000           CON(5)  =DOCOL
  859               * Label definitions
  860               * File  OutptOutbndForm.s       22
  861 00005 00000           CON(5)  =DOCSTR
  862 0000A 90000           CON(5)  9
  863 0000F 25A3            NIBASC  \R:\
  864 00013 00000           CON(5)  =ONE
  865 00018 00000           CON(5)  =TEN
  866               * File  OutptOutbndForm.s       23
  867 0001D 00000           CON(5)  =DOCSTR
  868 00022 B0000           CON(5)  11
  869 00027 4513A3          NIBASC  \T1:\
  870 0002D 00000           CON(5)  =ONE
  871 00032 00000           CON(5)  =NINETEEN
  872               * File  OutptOutbndForm.s       24
  873 00037 00000           CON(5)  =DOCSTR
  874 0003C F0000           CON(5)  15
  875 00041 8444741         NIBASC  \HDG1:\
            3A3
  876 0004B 00000           CON(5)  =ONE
  877 00050 00000           CON(5)  =TWENTYEIGHT
  878               * File  OutptOutbndForm.s       25
  879 00055 00000           CON(5)  =DOCSTR
  880 0005A D0000           CON(5)  13
  881 0005F 743513A         NIBASC  \GS1:\
            3
  882 00067 00000           CON(5)  =ONE
  883 0006C 00000           CON(5)  =THIRTYSEVEN
  884               * File  OutptOutbndForm.s       26
  885
  886               * Field definitions
  887               * File  OutptOutbndForm.s       28
  888               * Field R definition
  889               * File  OutptOutbndForm.s       29
  890 00071 00000           CON(5)  ='DROPFALSE
  891               * Message handler
  892               * File  OutptOutbndForm.s       30
  893 00076 00000           CON(5)  =TWENTYFIVE
  894 0007B 00000           CON(5)  =EIGHT
  895 00080 00000           CON(5)  =IDREAL
  896 00085 00000           CON(5)  =EIGHT
  897               * Position & size
  898               * File  OutptOutbndForm.s       31
  899 0008A 00000           CON(5)  =ONE
  900               * Field type TEXT
  901               * File  OutptOutbndForm.s       32
  902 0008F 00000           CON(5)  =DOLIST
  903 00094 00000           CON(5)  =ZERO
  904 00099 00000           CON(5)  =SEMI
  905               * Allowed types REAL
  906               * File  OutptOutbndForm.s       33
  907 0009E 00000           CON(5)  =TWO
  908               * Decompile
  909               * File  OutptOutbndForm.s       34
  910 000A3 00000           CON(5)  =DOCSTR
  911 000A8 D3000           CON(5)  61
  912 000AD 2514449         NIBASC  \RADIUS OF ACTION (FR\
            4553502
            F4640214344594F4E402826425

  913 000D5 F4D4024         NIBASC  \OM DEP.)\
            45405E2
            92
  914               * Help string
  915               * File  OutptOutbndForm.s       35
  916 000E5 00000           CON(5)  =MINUSONE
  917               * Choose data N/A
  918               * File  OutptOutbndForm.s       36
  919 000EA 00000           CON(5)  =MINUSONE
  920               * Choose decompile N/A
  921               * File  OutptOutbndForm.s       37
  922 000EF 00000           CON(5)  =DOIDNT
  923 000F4 10              CON(2)  1
  924 000F6 25              NIBASC  \R\
  925               * Reset value
  926               * File  OutptOutbndForm.s       38
  927 000F8 00000           CON(5)  =DOIDNT
  928 000FD 10              CON(2)  1
  929 000FF 25              NIBASC  \R\
  930               * Initial value
  931               * File  OutptOutbndForm.s       39
  932
  933               * File  OutptOutbndForm.s       40
  934               * Field T1 definition
  935               * File  OutptOutbndForm.s       41
  936 00101 00000           CON(5)  ='DROPFALSE
  937               * Message handler
  938               * File  OutptOutbndForm.s       42
  939 00106 00000           CON(5)  =TWENTYFIVE
  940 0010B 00000           CON(5)  =SEVENTEEN
  941 00110 00000           CON(5)  =IDREAL
  942 00115 00000           CON(5)  =EIGHT
  943               * Position & size
  944               * File  OutptOutbndForm.s       43
  945 0011A 00000           CON(5)  =ONE
  946               * Field type TEXT
  947               * File  OutptOutbndForm.s       44
  948 0011F 00000           CON(5)  =DOLIST
  949 00124 00000           CON(5)  =ZERO
  950 00129 00000           CON(5)  =SEMI
  951               * Allowed types REAL
  952               * File  OutptOutbndForm.s       45
  953 0012E 00000           CON(5)  =TWO
  954               * Decompile
  955               * File  OutptOutbndForm.s       46
  956 00133 00000           CON(5)  =DOCSTR
  957 00138 53000           CON(5)  53
  958 0013D 4594D45         NIBASC  \TIME TO TURN (FROM D\
            40245F4
            02455525E402826425F4D40244

  959 00165 5405E29         NIBASC  \EP.)\
            2
  960               * Help string
  961               * File  OutptOutbndForm.s       47
  962 0016D 00000           CON(5)  =MINUSONE
  963               * Choose data N/A
  964               * File  OutptOutbndForm.s       48
  965 00172 00000           CON(5)  =MINUSONE
  966               * Choose decompile N/A
  967               * File  OutptOutbndForm.s       49
  968 00177 00000           CON(5)  =DOIDNT
  969 0017C 20              CON(2)  2
  970 0017E 4513            NIBASC  \T1\
  971               * Reset value
  972               * File  OutptOutbndForm.s       50
  973 00182 00000           CON(5)  =DOIDNT
  974 00187 20              CON(2)  2
  975 00189 4513            NIBASC  \T1\
  976               * Initial value
  977               * File  OutptOutbndForm.s       51
  978
  979               * File  OutptOutbndForm.s       52
  980               * Field HDG1 definition
  981               * File  OutptOutbndForm.s       53
  982 0018D 00000           CON(5)  ='DROPFALSE
  983               * Message handler
  984               * File  OutptOutbndForm.s       54
  985 00192 00000           CON(5)  =TWENTYFIVE
  986 00197 00000           CON(5)  =TWENTYSIX
  987 0019C 00000           CON(5)  =IDREAL
  988 001A1 00000           CON(5)  =EIGHT
  989               * Position & size
  990               * File  OutptOutbndForm.s       55
  991 001A6 00000           CON(5)  =ONE
  992               * Field type TEXT
  993               * File  OutptOutbndForm.s       56
  994 001AB 00000           CON(5)  =DOLIST
  995 001B0 00000           CON(5)  =ZERO
  996 001B5 00000           CON(5)  =SEMI
  997               * Allowed types REAL
  998               * File  OutptOutbndForm.s       57
  999 001BA 00000           CON(5)  =TWO
 1000               * Decompile
 1001               * File  OutptOutbndForm.s       58
 1002 001BF 00000           CON(5)  =DOCSTR
 1003 001C4 52000           CON(5)  37
 1004 001C9 8454144         NIBASC  \HEADING OUTBOUND\
            494E474
            02F4554524F455E444

 1005               * Help string
 1006               * File  OutptOutbndForm.s       59
 1007 001E9 00000           CON(5)  =MINUSONE
 1008               * Choose data N/A
 1009               * File  OutptOutbndForm.s       60
 1010 001EE 00000           CON(5)  =MINUSONE
 1011               * Choose decompile N/A
 1012               * File  OutptOutbndForm.s       61
 1013 001F3 00000           CON(5)  =DOIDNT
 1014 001F8 40              CON(2)  4
 1015 001FA 8444741         NIBASC  \HDG1\
            3
 1016               * Reset value
 1017               * File  OutptOutbndForm.s       62
 1018 00202 00000           CON(5)  =DOIDNT
 1019 00207 40              CON(2)  4
 1020 00209 8444741         NIBASC  \HDG1\
            3
 1021               * Initial value
 1022               * File  OutptOutbndForm.s       63
 1023
 1024               * File  OutptOutbndForm.s       64
 1025               * Field GS1 definition
 1026               * File  OutptOutbndForm.s       65
 1027 00211 00000           CON(5)  ='DROPFALSE
 1028               * Message handler
 1029               * File  OutptOutbndForm.s       66
 1030 00216 00000           CON(5)  =TWENTYFIVE
 1031 0021B 00000           CON(5)  =THIRTYFIVE
 1032 00220 00000           CON(5)  =IDREAL
 1033 00225 00000           CON(5)  =EIGHT
 1034               * Position & size
 1035               * File  OutptOutbndForm.s       67
 1036 0022A 00000           CON(5)  =ONE
 1037               * Field type TEXT
 1038               * File  OutptOutbndForm.s       68
 1039 0022F 00000           CON(5)  =DOLIST
 1040 00234 00000           CON(5)  =ZERO
 1041 00239 00000           CON(5)  =SEMI
 1042               * Allowed types REAL
 1043               * File  OutptOutbndForm.s       69
 1044 0023E 00000           CON(5)  =TWO
 1045               * Decompile
 1046               * File  OutptOutbndForm.s       70
 1047 00243 00000           CON(5)  =DOCSTR
 1048 00248 F2000           CON(5)  47
 1049 0024D 7425F45         NIBASC  \GROUND SPEED OUTBOUN\
            5E44402
            350554544402F4554524F455E4

 1050 00275 44              NIBASC  \D\
 1051               * Help string
 1052               * File  OutptOutbndForm.s       71
 1053 00277 00000           CON(5)  =MINUSONE
 1054               * Choose data N/A
 1055               * File  OutptOutbndForm.s       72
 1056 0027C 00000           CON(5)  =MINUSONE
 1057               * Choose decompile N/A
 1058               * File  OutptOutbndForm.s       73
 1059 00281 00000           CON(5)  =DOIDNT
 1060 00286 30              CON(2)  3
 1061 00288 743513          NIBASC  \GS1\
 1062               * Reset value
 1063               * File  OutptOutbndForm.s       74
 1064 0028E 00000           CON(5)  =DOIDNT
 1065 00293 30              CON(2)  3
 1066 00295 743513          NIBASC  \GS1\
 1067               * Initial value
 1068               * File  OutptOutbndForm.s       75
 1069
 1070               * File  OutptOutbndForm.s       76
 1071 0029B 00000           CON(5)  =FOUR
 1072 002A0 00000           CON(5)  =FOUR
 1073               * #labels #fields
 1074               * File  OutptOutbndForm.s       77
 1075 002A5 00000           CON(5)  ='DROPFALSE
 1076               * Message handler
 1077               * File  OutptOutbndForm.s       78
 1078 002AA 00000           CON(5)  =DOCSTR
 1079 002AF D3000           CON(5)  61
 1080 002B4 25F4140         NIBASC  \ROA - MOVING BASE - \
            2D202D4
            F46594E474022414355402D202

 1081 002DC F455452         NIBASC  \OUTBOUND\
            4F455E4
            44
 1082               * Title
 1083               * File  OutptOutbndForm.s       79
 1084 002EC 00000           CON(5)  =DOFLASHP
 1085 002F1 0000000         CON(7)  =^IfMain
 1086               * HP50
 1087               *               DoInputForm                      ( HP50, HP48 )
 1088               * File  OutptOutbndForm.s       81
 1089 002F8 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 24 18:55:05 2009
V3.0.9 (04/15/2007)   Symbol Table                       OutptOutbndFor Page    2

 'DROPFALSE                        Ext                   -   890   936   982
                                        1027  1075
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
 DOCOL                             Ext                   -   858
 DOCSTR                            Ext                   -   861   867   873
                                         879   910   956  1002  1047  1078
 DOFLASHP                          Ext                   -  1084
 DOIDNT                            Ext                   -   922   927   968
                                         973  1013  1018  1059  1064
 DOLIST                            Ext                   -   902   948   994
                                        1039
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
 EIGHT                             Ext                   -   894   896   942
                                         988  1033
 ErableHeaderBit                   Abs       0 #00000000 -   816
 ErableHeaderFl                    Abs      93 #0000005D -   814   815   816
 ErableHeaderNib                   Abs      23 #00000017 -   815
 ErrorBeepBit                      Abs       3 #00000003 -   234
 ErrorBeepFl                       Abs      56 #00000038 -   178   233   234
 ErrorBeepNib                      Abs      13 #0000000D -   233
 ExactModeBit                      Abs       0 #00000000 -   841
 ExactModeFl                       Abs     105 #00000069 -   839   840   841
 ExactModeNib                      Abs      26 #0000001A -   840
 FOUR                              Ext                   -  1071  1072
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
 IDREAL                            Ext                   -   895   941   987
                                        1032
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
 LastArgsBit                       Abs       2 #00000002 -   261
 LastArgsFl                        Abs      55 #00000037 -   177   260   261
 LastArgsNib                       Abs      13 #0000000D -   260
 MASDDecompilerBit                 Abs       1 #00000001 -   795
 MASDDecompilerFl                  Abs      86 #00000056 -   793   794   795
 MASDDecompilerNib                 Abs      21 #00000015 -   794
 MINUSONE                          Ext                   -   916   919   962
                                         965  1007  1010  1053  1056
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
 NINETEEN                          Ext                   -   871
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
 ONE                               Ext                   -   864   870   876
                                         882   899   945   991  1036
=OutptOutbndForm                   Rel       0 #00000000 -   856
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
=RomId                             Abs     804 #00000324 -    20
 SEMI                              Ext                   -   904   950   996
                                        1041  1089
 SEVENTEEN                         Ext                   -   940
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
 TEN                               Ext                   -   865
 THIRTYFIVE                        Ext                   -  1031
 THIRTYSEVEN                       Ext                   -   883
 TWENTYEIGHT                       Ext                   -   877
 TWENTYFIVE                        Ext                   -   893   939   985
                                        1030
 TWENTYSIX                         Ext                   -   986
 TWO                               Ext                   -   907   953   999
                                        1044
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
 ZERO                              Ext                   -   903   949   995
                                        1040
 ^IfMain                           Ext                   -  1085
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
Saturn Assembler                                       Wed Jun 24 18:55:05 2009
V3.0.9 (04/15/2007)   Statistics                         OutptOutbndFor Page    3

Input Parameters

  Source file name is OutptOutbndForm.a

  Listing file name is OutptOutbndForm.l

  Object file name is OutptOutbndForm.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
