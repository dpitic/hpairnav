Saturn Assembler                                       Fri Jun 19 12:17:08 2009
V3.0.9 (04/15/2007)                                      ALTform.a      Page    1

    1               * File  ALTform.s       1
    2               * RPL
    3               * File  ALTform.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTform.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               **********************************************************************
    6               * NAME:            ALTform
    7               * AUTHOR:          Dan Pitic
    8               * VERSION:         1.14
    9               * DATE:            12 June 2009
   10               * COMPATIBILITY:   HP50
   11               * DESCRIPTION:     Displays INPUT and OUTPUT form for ALT.
   12               * TODO:     1)     Make QNH field a combo field and allow user to
   13               *                  choose 1013.25_mbar as the standard QNH and
   14               *                  alternatively allow user to input or edit QNH
   15               *
   16               * File  ALTform.s       14
   17               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.H
   18
   19
   20               * RPL
   21               * insure RPL-mode exit
   22
   23               * ( Rad
   24
   25               * ( %2PI
   26               * ( %PI/24
   27
   28
   29
   30
   31               * ( 1=1Var, 2=2Var Statistic
   32               * ( 1=Histogram, 2=BoxWhisker
   33
   34
   35
   36
   37
   38               * ASSEMBLE
   39               DefSysF64-33 EQU        #00000000
   40               DefSysF32-01 EQU        #04010FF0
   41               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   42               DefSysF97-128 EQU       #00000000
   43
   44               * RPL
   45
   46
   47               * ( solution mode
   48               * ( constants mode
   49               * ( results mode
   50               * ( careful evaluation mode
   51
   52               * ( binary integer wordsize
   53               * must start on nibble boundary
   54               * ( binary integer base
   55               * must follow "fnBinWordS6"
   56
   57               * ( financial BEGIN/END mode
   58               * ( complex number and vector
   59               * mode
   60               * ( angle mode
   61               * must start on a nibble boundary
   62               * ( complex 2D mode
   63               * ( underflow action
   64               * ( overflow action
   65               * ( infinite result action
   66               * ( underflow-negative indicator
   67               * ( underflow-positive indicator
   68               * ( overflow indicator
   69               * ( infinite result indicator
   70               * ( symbolic-comples decompilation
   71               * ( simultaneous plot mode
   72               * ( axis drawing plot mode
   73
   74               * ( connect points mode
   75               * ( graphics cursor type mode
   76               * ( I/O device
   77               * ( print device
   78               * ( I/O data format
   79               * ( variable overwrite mode
   80               * ( double-space print mode
   81               * ( suppress auto CR mode
   82               * ( suppress I/O status messages
   83
   84
   85               * ( clock display mode
   86               * ( clock display format
   87               * ( date format
   88               * ( reschedule unacknowledged
   89               * repeat alarms mode
   90               * ( delete acknowledged non-repeat
   91               * alarms mode
   92
   93               * ( number of decimal digits
   94               * must start on nibble boundary
   95               * ( number display format
   96               * must start on nibble boundary
   97               * ( radix mark
   98               * ( multi-line display mode
   99               * ( show precedence mode
  100               * ( zero out tiny matrix elements
  101
  102               * ( last arguments mode
  103               * ( error beep mode
  104               * ( alarm beep mode
  105               * ( verbose display mode
  106               * ( variable name only mode
  107               * ( 3-way alpha mode
  108               * ( 3-way user keys mode
  109               * ( user keys mode
  110               * ( special parser mode
  111               * ( index wraparound indicator
  112
  113
  114               * ASSEMBLE
  115               SolutionsFl  EQU 1
  116               ConstantsFl  EQU 2
  117               ResultsFl    EQU 3
  118               CarefulFl    EQU 4
  119
  120               BinWordSFl1  EQU 5      must start on a nibble boundary
  121               BinWordSBCt  EQU 6      number of bits
  122               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  123               BinBaseBCt   EQU 2      number of bits
  124
  125               ComVecDiFl1  EQU 15
  126               ComVecDiBCt  EQU 2      number of bits
  127               AngleFl1     EQU 17     must start on a nibble boundary
  128               AngleBCt     EQU 2      number of bits
  129               Complex2DFl  EQU 19
  130               UnderfActFl  EQU 20
  131               OverfActFl   EQU 21
  132               InfResActFl  EQU 22
  133               UnderfNegFl  EQU 23
  134               UnderfPosFl  EQU 24
  135               OverflowFl   EQU 25
  136               InfResultFl  EQU 26
  137
  138               FunctPlotFl  EQU 30
  139               ConnectPtFl  EQU 31
  140               GCursorFl    EQU 32
  141               IODeviceFl   EQU 33
  142               PrintDevFl   EQU 34
  143               IODataFmtFl  EQU 35
  144               OverwriteFl  EQU 36
  145               DblSpaceFl   EQU 37
  146               NoAutoCRFl   EQU 38
  147               NoIOStsMsgFl EQU 39
  148
  149               ClockOnFl    EQU 40
  150               ClockFmtFl   EQU 41
  151               DateFmtFl    EQU 42
  152               ResRepAlmFl  EQU 43
  153               DelNRAlmFl   EQU 44
  154
  155               NumDigsFl1   EQU 45     must start on a nibble boundary
  156               NumDigsBCt   EQU 4      number of bits
  157               NumDispFl1   EQU 49     must start on a nibble boundary
  158               NumDispBCt   EQU 2      number of bits
  159               RadixFl      EQU 51
  160               MultiDispFl  EQU 52
  161               ShowPrecFl   EQU 53
  162
  163               LastArgsFl   EQU 55
  164               ErrorBeepFl  EQU 56
  165               AlarmBeepFl  EQU 57
  166               VerboseFl    EQU 58
  167               FastEqViewFl EQU 59
  168               TriAlphaFl   EQU 60
  169               TriUserFl    EQU 61
  170               UserKeysFl   EQU 62
  171               NoParseFl    EQU 63
  172               IndexWrapFl  EQU 64
  173
  174
  175
  176               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  177               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  178
  179               AngleNib     EQU ((AngleFl1)-1)/4
  180               AngleBit1    EQU ((AngleFl1)-1)%4
  181               AngleBit2    EQU (AngleBit1)+1
  182
  183               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  184               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  185
  186               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  187               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  188
  189               CarefulNib   EQU ((CarefulFl)-1)/4
  190               CarefulBit   EQU ((CarefulFl)-1)%4
  191
  192               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  193               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  194
  195               ClockOnNib   EQU ((ClockOnFl)-1)/4
  196               ClockOnBit   EQU ((ClockOnFl)-1)%4
  197
  198               Complex2DNib EQU ((Complex2DFl)-1)/4
  199               Complex2DBit EQU ((Complex2DFl)-1)%4
  200
  201               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  202               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  203
  204               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  205               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  206
  207               ConstantsNib EQU ((ConstantsFl)-1)/4
  208               ConstantsBit EQU ((ConstantsFl)-1)%4
  209
  210               DateFmtNib   EQU ((DateFmtFl)-1)/4
  211               DateFmtBit   EQU ((DateFmtFl)-1)%4
  212
  213               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  214               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  215
  216               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  217               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  218
  219               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  220               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  221
  222               FastEViewNib EQU ((FastEqViewFl)-1)/4
  223               FastEViewBit EQU ((FastEqViewFl)-1)%4
  224
  225               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  226               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  227
  228               GCursorNib   EQU ((GCursorFl)-1)/4
  229               GCursorBit   EQU ((GCursorFl)-1)%4
  230
  231               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  232               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  233
  234               InfResActNib EQU ((InfResActFl)-1)/4
  235               InfResActBit EQU ((InfResActFl)-1)%4
  236
  237               InfResultNib EQU ((InfResultFl)-1)/4
  238               InfResultBit EQU ((InfResultFl)-1)%4
  239
  240               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  241               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  242
  243               IODeviceNib  EQU ((IODeviceFl)-1)/4
  244               IODeviceBit  EQU ((IODeviceFl)-1)%4
  245
  246               LastArgsNib  EQU ((LastArgsFl)-1)/4
  247               LastArgsBit  EQU ((LastArgsFl)-1)%4
  248
  249               VerboseNib   EQU ((VerboseFl)-1)/4
  250               VerboseBit   EQU ((VerboseFl)-1)%4
  251
  252               MultiDispNib EQU ((MultiDispFl)-1)/4
  253               MultiDispBit EQU ((MultiDispFl)-1)%4
  254
  255               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  256               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  257
  258               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  259               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  260
  261               NoParseNib   EQU ((NoParseFl)-1)/4
  262               NoParseBit   EQU ((NoParseFl)-1)%4
  263
  264               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  265               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  266
  267               NumDispNib   EQU ((NumDispFl1)-1)/4
  268               NumDispBit1  EQU ((NumDispFl1)-1)%4
  269
  270               OverfActNib  EQU ((OverfActFl)-1)/4
  271               OverfActBit  EQU ((OverfActFl)-1)%4
  272
  273               OverflowNib  EQU ((OverflowFl)-1)/4
  274               OverflowBit  EQU ((OverflowFl)-1)%4
  275
  276               OverwriteNib EQU ((OverwriteFl)-1)/4
  277               OverwriteBit EQU ((OverwriteFl)-1)%4
  278
  279               PrintDevNib  EQU ((PrintDevFl)-1)/4
  280               PrintDevBit  EQU ((PrintDevFl)-1)%4
  281
  282               RadixNib     EQU ((RadixFl)-1)/4
  283               RadixBit     EQU ((RadixFl)-1)%4
  284
  285               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  286               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  287
  288               ResultsNib   EQU ((ResultsFl)-1)/4
  289               ResultsBit   EQU ((ResultsFl)-1)%4
  290
  291               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  292               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  293
  294               SolutionsNib EQU ((SolutionsFl)-1)/4
  295               SolutionsBit EQU ((SolutionsFl)-1)%4
  296
  297               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  298               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  299
  300               TriUserNib   EQU ((TriUserFl)-1)/4
  301               TriUserBit   EQU ((TriUserFl)-1)%4
  302
  303               UnderfActNib EQU ((UnderfActFl)-1)/4
  304               UnderfActBit EQU ((UnderfActFl)-1)%4
  305
  306               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  307               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  308
  309               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  310               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  311
  312               UserKeysNib  EQU ((UserKeysFl)-1)/4
  313               UserKeysBit  EQU ((UserKeysFl)-1)%4
  314
  315               * RPL
  316               * RPL
  317               * insure RPL-mode exit
  318
  319
  320               * ASSEMBLE
  321
  322
  323               nonALG EQU 8                    not-allowed-in-algebraics flag
  324               hasHELP EQU 4                   has-help-data flag
  325               hasPROMPTM EQU 4                same as above
  326               hasALIAS EQU 2                  has-algebraic-alias flag
  327               hasPDATA EQU 1                  has-parse-data flag
  328
  329
  330               hasDER EQU 8                    has-derivative flag
  331               hasINV EQU 4                    has-inverse flag
  332               hasCOLCT EQU 2                  has-COLCT-data flag
  333               hasEXPND EQU 1                  has-EXPND-data flag
  334
  335
  336               hasFORM EQU 8                   has-FORM-menu flag
  337               hasINTG EQU 4                   has-Integral-data flag
  338               hasWHERE EQU 2                  has-WHERE-code flag
  339               hasVUNS EQU 1                   has-veryunsymin-code flag
  340
  341
  342               pdEX EQU #0             general expression
  343               pdOP EQU #1             operator
  344               pdQE EQU #2             quoted expression
  345               pdQN EQU #3             quoted name
  346               pdLP EQU #4             left parenthesis
  347               pdRP EQU #5             right parenthesis
  348               pdCM EQU #6             comma (non-radix)
  349               pdEQ EQU #7             equal-sign separator
  350               pdOS0 EQU #8            optional repeat 0
  351               pdOS1 EQU #9            optional repeat 1
  352               pdOS2 EQU #A            optional repeat 2
  353               pdOS3 EQU #B            optional repeat 3
  354               pdOS4 EQU #C            optional repeat 4
  355               pdOS5 EQU #D            optional repeat 5
  356               pdOS6 EQU #E            optional repeat 6
  357               pdOS7 EQU #F            optional repeat 7
  358
  359               * RPL
  360               * RPL
  361               * insure RPL-mode exit
  362
  363
  364
  365
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
  379               * RPL
  380               * insure RPL-mode exit
  381
  382               * RPL
  383               * insure RPL-mode exit
  384
  385
  386
  387
  388
  389
  390
  391
  392
  393               * ( for internal use only
  394
  395
  396
  397
  398
  399
  400
  401
  402
  403
  404               * ( decimal 67
  405               * ( decimal 86
  406               * ( decimal 82
  407               * ( decimal 85
  408               * ( decimal 101
  409               * ( decimal 97
  410               * ( decimal 100
  411               * ( decimal 113
  412               * ( decimal 112
  413
  414               * ( check width
  415               * ( field character width
  416
  417               * ( decimal 67
  418               * ( decimal 85
  419               * ( decimal 97
  420
  421
  422
  423
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
  437               * RPL
  438               * insure RPL-mode exit
  439
  440               * ( decimal 66
  441               * ( decimal 67
  442               * ( decimal 69
  443               * ( decimal 82
  444               * ( decimal 83
  445               * ( decimal 84
  446               * ( decimal 85
  447               * ( decimal 86
  448               * ( decimal 87
  449
  450
  451               * ( norm-view default visible row count
  452               * ( default first row X location
  453               * ( default first row Y location
  454               * ( default row width
  455               * ( default row height
  456
  457               * ( max-view width
  458               * ( max-view height
  459               * ( max-view default visible row count
  460
  461               * ( prompt area height
  462
  463               * ( more-up/down icon width
  464
  465
  466
  467               * RPL
  468               * insure RPL-mode exit
  469
  470
  471
  472
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
  684               * RPL
  685               * insure RPL-mode exit
  686
  687
  688
  689               * ( set for informations
  690               * ( set for step by step mode on
  691               * ( internal use: true if VXXL success
  692               * ( set for no gcd computations
  693               * ( set for complex mode
  694               * ( internal use:       LN->-INV[-LN]]
  695               * ( set for approx mode
  696               * ( set for TSIMP call inside SERIES
  697               * ( internal use:       modular computation
  698               * ( internal use:       testing remainder=0
  699               * ( set to allow numeric factorization
  700               * ( set for large matrices
  701               * ( set: don't simplify inside non rational operation
  702               * ( set to see i as an irrquad c=-1
  703               * ( set to disable linearity simplif.
  704               * ( set for increasing power x+1 -> 1+x
  705               * ( internal use:       sqrt not as irrquad
  706               * ( set if sin are prefered to cos
  707               * ( set for menu as choosebox
  708               * ( set if xINT is not simplified
  709               * ( set if non rigourous mode
  710               * ( set to allow silent mode switch
  711               * ( set if xLN returns LN[ABS[]]
  712
  713
  714               * ASSEMBLE
  715
  716               MultiLineFl     EQU     65
  717               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  718               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  719               MultiLineStringsFl      EQU     66
  720               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  721               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  722               DigitalClockFl  EQU     67
  723               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  724               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  725               CmdAutoIndentFl EQU     68
  726               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  727               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  728               FullScreenEditFl        EQU     69
  729               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  730               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  731               MultiLine2GROBFl        EQU     70
  732               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  733               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  734               DesasmWithAdrFl EQU     71
  735               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  736               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  737               BigFontStackFl  EQU     72
  738               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  739               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  740               BigFontCmdFl    EQU     73
  741               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  742               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  743               RightJustifiedStackFl   EQU     74
  744               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  745               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  746               KeystrokeBeepFl EQU     75
  747               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  748               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  749               FilerConfirmationFl     EQU     76
  750               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  751               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  752               FilerConfirmFl  EQU     77
  753               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  754               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  755               KernelParamFl   EQU     78
  756               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  757               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  758               PrettyPrintFl   EQU     79
  759               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  760               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  761               SmallFontEQWStackFl     EQU     80
  762               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  763               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  764               SmallFontEQWGrobFl      EQU     81
  765               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  766               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  767               SmallFontEQWEditFl      EQU     82
  768               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  769               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  770               GrobDisplayFl   EQU     83
  771               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  772               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  773               MKSmallFontMenuFl       EQU     84
  774               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  775               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  776               SystemRPLStackFl        EQU     85
  777               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  778               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  779               MASDDecompilerFl        EQU     86
  780               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  781               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  782               RecursiveStackFl        EQU     87
  783               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  784               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  785               RecursiveEditFl EQU     88
  786               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  787               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  788               AddressesCLEFl  EQU     89
  789               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  790               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  791               SmallFontChooseFl       EQU     90
  792               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  793               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  794               ArrayOnlyFl     EQU     91
  795               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  796               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  797               MLMASDModeFl    EQU     92
  798               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  799               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  800               ErableHeaderFl  EQU     93
  801               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  802               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  803               AutoSaveFl      EQU     94
  804               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  805               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  806               AlgebraicModeFl EQU     95
  807               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  808               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  809               MenuOnFl        EQU     96
  810               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  811               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  812               VerticalListFl  EQU     97
  813               VerticalListNib EQU     ((VerticalListFl)-1)/4
  814               VerticalListBit EQU     ((VerticalListFl)-1)%4
  815               VerticalVectorFl        EQU     98
  816               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  817               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  818
  819
  820               ComplexFl       EQU     103
  821               ComplexNib      EQU     ((ComplexFl)-1)/4
  822               ComplexBit      EQU     ((ComplexFl)-1)%4
  823
  824
  825               ExactModeFl     EQU     105
  826               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  827               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  828
  829
  830               * RPL
  831
  832
  833
  834               * ASSEMBLE
  835                       SETLIST CODE, INCLUDE, PSEUDO
  836               * RPL
  837
  838               *|| Resuming file ALTform.s at line 14
  839               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\informbox.h
  840
  841
  842
  843
  844
  845
  846
  847
  848
  849
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
  912               * Do not modify any of these constants
  913
  914               * Do not modify any of these constants
  915               * ( was zint
  916
  917
  918
  919
  920
  921
  922
  923
  924
  925               *|| Resuming file ALTform.s at line 15
  926               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALT50\ALT50.h
  927
  928               =RomId  EQU     #327
  929               * ROMID set to 327
  930
  931
  932
  933
  934
  935
  936               *|| Resuming file ALTform.s at line 16
  937               * ( Redefine standard field height
  938               * File  ALTform.s       18
  939 00000         =ALTform
  940               * File  ALTform.s       19
  941 00000 00000           CON(5)  =DOCOL
  942               * Label definitions (X pos    Y pos)
  943               * File  ALTform.s       21
  944 00005 00000           CON(5)  =DOCSTR
  945 0000A F0000           CON(5)  15
  946 0000F 3414C44         NIBASC  \CALT:\
            5A3
  947 00019 00000           CON(5)  =ONE
  948 0001E 00000           CON(5)  =TEN
  949               * File  ALTform.s       22
  950 00023 00000           CON(5)  =DOCSTR
  951 00028 D0000           CON(5)  13
  952 0002D 15E484A         NIBASC  \QNH:\
            3
  953 00035 00000           CON(5)  =FOURTHREE
  954 0003A 00000           CON(5)  =TEN
  955               * File  ALTform.s       23
  956 0003F 00000           CON(5)  =DOCSTR
  957 00044 F0000           CON(5)  15
  958 00049 0514C44         NIBASC  \PALT:\
            5A3
  959 00053 00000           CON(5)  =ONE
  960 00058 00000           CON(5)  =NINETEEN
  961               * File  ALTform.s       24
  962 0005D 00000           CON(5)  =DOCSTR
  963 00062 D0000           CON(5)  13
  964 00067 351445A         NIBASC  \SAT:\
            3
  965 0006F 00000           CON(5)  =FOURTHREE
  966 00074 00000           CON(5)  =NINETEEN
  967               * File  ALTform.s       25
  968 00079 00000           CON(5)  =DOCSTR
  969 0007E 11000           CON(5)  17
  970 00083 74E4443         NIBASC  \GNDST:\
            545A3
  971 0008F 00000           CON(5)  =ONE
  972 00094 00000           CON(5)  =TWENTYEIGHT
  973               * File  ALTform.s       26
  974 00099 00000           CON(5)  =DOCSTR
  975 0009E F0000           CON(5)  15
  976 000A3 4514C44         NIBASC  \TALT:\
            5A3
  977 000AD 00000           CON(5)  =ONE
  978 000B2 00000           CON(5)  =THIRTYSEVEN
  979               * File  ALTform.s       27
  980 000B7 00000           CON(5)  =DOCSTR
  981 000BC F0000           CON(5)  15
  982 000C1 4414C44         NIBASC  \DALT:\
            5A3
  983 000CB 00000           CON(5)  =ONE
  984 000D0 00000           CON(5)  =FORTYSIX
  985               * File  ALTform.s       28
  986
  987               * Field definitions
  988               * File  ALTform.s       30
  989               * Field CA definition
  990               * File  ALTform.s       31
  991 000D5 00000           CON(5)  ='
  992 000DA 00000           CON(5)  =DOCOL
  993               * Field Message Handler
  994               * File  ALTform.s       32
  995 000DF 00000           CON(5)  =FOUR
  996 000E4 00000           CON(5)  =#=case
  997 000E9 00000           CON(5)  =DOCOL
  998               * Get internal field value
  999               * File  ALTform.s       33
 1000 000EE 00000           CON(5)  =DUPTYPEREAL?
 1001 000F3 00000           CON(5)  =case
 1002 000F8 00000           CON(5)  =DOCOL
 1003               * REAL
 1004               * File  ALTform.s       34
 1005 000FD 00000           CON(5)  =DOCSTR
 1006 00102 90000           CON(5)  9
 1007 00107 6647            NIBASC  \ft\
 1008 0010B 00000           CON(5)  =umEND
 1009 00110 00000           CON(5)  =BINT3
 1010 00115 00000           CON(5)  =EXTN
 1011               * Add default feet units
 1012               * File  ALTform.s       35
 1013 0011A 00000           CON(5)  =NOVAL
 1014 0011F 00000           CON(5)  =BINT5
 1015               * File  ALTform.s       36
 1016 00124 00000           CON(5)  =DOFLASHP
 1017 00129 0000000         CON(7)  =^IfSetFieldValue
 1018               * Reset TA field
 1019               * File  ALTform.s       37
 1020 00130 00000           CON(5)  =NOVAL
 1021 00135 00000           CON(5)  =BINT6
 1022               * File  ALTform.s       38
 1023 0013A 00000           CON(5)  =DOFLASHP
 1024 0013F 0000000         CON(7)  =^IfSetFieldValue
 1025               * Reset DA field
 1026               * File  ALTform.s       39
 1027 00146 00000           CON(5)  =BINT1
 1028 0014B 00000           CON(5)  =DOFLASHP
 1029 00150 0000000         CON(7)  =^IfGetFieldValue
 1030               * Get QNH field value
 1031               * File  ALTform.s       40
 1032 00157 00000           CON(5)  =NOVAL
 1033 0015C 00000           CON(5)  =EQUALNOT
 1034 00161 00000           CON(5)  =IT
 1035 00166 00000           CON(5)  =DOCOL
 1036               * IF QNH is NOT NOVAL
 1037               * File  ALTform.s       41
 1038 0016B 00000           CON(5)  =NOVAL
 1039 00170 00000           CON(5)  =BINT2
 1040               * THEN
 1041               * File  ALTform.s       42
 1042 00175 00000           CON(5)  =DOFLASHP
 1043 0017A 0000000         CON(7)  =^IfSetFieldValue
 1044               * Reset PA FIELD
 1045               * File  ALTform.s       43
 1046 00181 00000           CON(5)  =SEMI
 1047               * File  ALTform.s       44
 1048 00186 00000           CON(5)  =TRUE
 1049               * Return external value
 1050               * File  ALTform.s       45
 1051 0018B 00000           CON(5)  =SEMI
 1052               * File  ALTform.s       46
 1053 00190 00000           CON(5)  =DUPTYPEEXT?
 1054 00195 00000           CON(5)  =case
 1055 0019A 00000           CON(5)  =DOCOL
 1056               * UNIT
 1057               * File  ALTform.s       47
 1058 0019F 00000           CON(5)  =DUP
 1059 001A4 00000           CON(5)  =DOIDNT
 1060 001A9 20              CON(2)  2
 1061 001AB 3414            NIBASC  \CA\
 1062 001AF 00000           CON(5)  =EQUALNOT
 1063 001B4 00000           CON(5)  =IT
 1064 001B9 00000           CON(5)  =DOCOL
 1065               * IF field CA is changed
 1066               * File  ALTform.s       48
 1067 001BE 00000           CON(5)  =NOVAL
 1068 001C3 00000           CON(5)  =BINT5
 1069               * File  ALTform.s       49
 1070 001C8 00000           CON(5)  =DOFLASHP
 1071 001CD 0000000         CON(7)  =^IfSetFieldValue
 1072               * Reset TA field
 1073               * File  ALTform.s       50
 1074 001D4 00000           CON(5)  =NOVAL
 1075 001D9 00000           CON(5)  =BINT6
 1076               * File  ALTform.s       51
 1077 001DE 00000           CON(5)  =DOFLASHP
 1078 001E3 0000000         CON(7)  =^IfSetFieldValue
 1079               * Reset DA field
 1080               * File  ALTform.s       52
 1081 001EA 00000           CON(5)  =BINT1
 1082 001EF 00000           CON(5)  =DOFLASHP
 1083 001F4 0000000         CON(7)  =^IfGetFieldValue
 1084               * Get QNH field value
 1085               * File  ALTform.s       53
 1086 001FB 00000           CON(5)  =NOVAL
 1087 00200 00000           CON(5)  =EQUALNOT
 1088 00205 00000           CON(5)  =IT
 1089 0020A 00000           CON(5)  =DOCOL
 1090               * IF QNH is NOT NOVAL
 1091               * File  ALTform.s       54
 1092 0020F 00000           CON(5)  =NOVAL
 1093 00214 00000           CON(5)  =BINT2
 1094               * THEN
 1095               * File  ALTform.s       55
 1096 00219 00000           CON(5)  =DOFLASHP
 1097 0021E 0000000         CON(7)  =^IfSetFieldValue
 1098               * Reset PA FIELD
 1099               * File  ALTform.s       56
 1100 00225 00000           CON(5)  =SEMI
 1101               * File  ALTform.s       57
 1102 0022A 00000           CON(5)  =SEMI
 1103               * File  ALTform.s       58
 1104 0022F 00000           CON(5)  =TRUE
 1105               * Return external value
 1106               * File  ALTform.s       59
 1107 00234 00000           CON(5)  =SEMI
 1108               * File  ALTform.s       60
 1109 00239 00000           CON(5)  =TRUE
 1110               * Message was handled
 1111               * File  ALTform.s       61
 1112 0023E 00000           CON(5)  =SEMI
 1113               * File  ALTform.s       62
 1114 00243 00000           CON(5)  =FALSE
 1115               * No other messages handled
 1116               * File  ALTform.s       63
 1117 00248 00000           CON(5)  =SEMI
 1118               * File  ALTform.s       64
 1119 0024D 00000           CON(5)  =TWENTYTWO
 1120 00252 00000           CON(5)  =EIGHT
 1121 00257 00000           CON(5)  =FORTYTHREE
 1122 0025C 00000           CON(5)  =EIGHT
 1123               * Position & size
 1124               * File  ALTform.s       65
 1125 00261 00000           CON(5)  =ONE
 1126               * Field type: TEXT
 1127               * File  ALTform.s       66
 1128 00266 00000           CON(5)  =DOLIST
 1129 0026B 00000           CON(5)  =ZERO
 1130 00270 00000           CON(5)  =THIRTEEN
 1131 00275 00000           CON(5)  =SEMI
 1132               * Allowed type: REAL, UNIT
 1133               * File  ALTform.s       67
 1134 0027A 00000           CON(5)  =TWO
 1135               * Decompile with stack appearance
 1136               * File  ALTform.s       68
 1137 0027F 00000           CON(5)  =DOCSTR
 1138 00284 14000           CON(5)  65
 1139 00289 3414C49         NIBASC  \CALIBRATED ALTITUDE \
            4242514
            4554440214C445944555445402

 1140 002B1 8264F42         NIBASC  \(FOR TALT)\
            5024514
            C44592
 1141               * Help string
 1142               * File  ALTform.s       69
 1143 002C5 00000           CON(5)  =MINUSONE
 1144               * ChooseData N/A
 1145               * File  ALTform.s       70
 1146 002CA 00000           CON(5)  =MINUSONE
 1147               * ChooseDecomile
 1148               * File  ALTform.s       71
 1149 002CF 00000           CON(5)  =MINUSONE
 1150               * Reset value
 1151               * File  ALTform.s       72
 1152 002D4 00000           CON(5)  =DOIDNT
 1153 002D9 20              CON(2)  2
 1154 002DB 3414            NIBASC  \CA\
 1155               * Initial value
 1156               * File  ALTform.s       73
 1157
 1158               * File  ALTform.s       74
 1159               * Field QNH definition
 1160               * File  ALTform.s       75
 1161 002DF 00000           CON(5)  ='
 1162 002E4 00000           CON(5)  =DOCOL
 1163               * Field Message Handler
 1164               * File  ALTform.s       76
 1165 002E9 00000           CON(5)  =FIVE
 1166 002EE 00000           CON(5)  =#=case
 1167 002F3 00000           CON(5)  =DOCOL
 1168               * Get internval value
 1169               * File  ALTform.s       77
 1170 002F8 00000           CON(5)  =DUPTYPEREAL?
 1171 002FD 00000           CON(5)  =case
 1172 00302 00000           CON(5)  =DOCOL
 1173               * REAL
 1174               * File  ALTform.s       78
 1175 00307 00000           CON(5)  =DUP
 1176 0030C 00000           CON(5)  =DOREAL
 1177 00311 100             NIBHEX  100
 1178 00314 0000000         NIBHEX  000000000005
            00005
 1179 00320 0               NIBHEX  0
 1180 00321 00000           CON(5)  =%<
 1181 00326 00000           CON(5)  =ITE
 1182 0032B 00000           CON(5)  =DOCOL
 1183               * IF it is < 50
 1184               * File  ALTform.s       79
 1185 00330 00000           CON(5)  =DOCSTR
 1186 00335 D0000           CON(5)  13
 1187 0033A 96E6847         NIBASC  \inHg\
            6
 1188 00342 00000           CON(5)  =umEND
 1189 00347 00000           CON(5)  =BINT3
 1190 0034C 00000           CON(5)  =EXTN
 1191               * add inHg units
 1192               * File  ALTform.s       80
 1193 00351 00000           CON(5)  =SEMI
 1194               * File  ALTform.s       81
 1195 00356 00000           CON(5)  =DOCOL
 1196               * ELSE
 1197               * File  ALTform.s       82
 1198 0035B 00000           CON(5)  =CHR_m
 1199 00360 00000           CON(5)  =DOCSTR
 1200 00365 B0000           CON(5)  11
 1201 0036A 261627          NIBASC  \bar\
 1202 00370 00000           CON(5)  =umP
 1203 00375 00000           CON(5)  =umEND
 1204               * add mbar units
 1205               * File  ALTform.s       83
 1206 0037A 00000           CON(5)  =BINT5
 1207 0037F 00000           CON(5)  =EXTN
 1208               * File  ALTform.s       84
 1209 00384 00000           CON(5)  =SEMI
 1210               * File  ALTform.s       85
 1211 00389 00000           CON(5)  =NOVAL
 1212 0038E 00000           CON(5)  =BINT5
 1213               * File  ALTform.s       86
 1214 00393 00000           CON(5)  =DOFLASHP
 1215 00398 0000000         CON(7)  =^IfSetFieldValue
 1216               * Reset TA field
 1217               * File  ALTform.s       87
 1218 0039F 00000           CON(5)  =NOVAL
 1219 003A4 00000           CON(5)  =BINT6
 1220               * File  ALTform.s       88
 1221 003A9 00000           CON(5)  =DOFLASHP
 1222 003AE 0000000         CON(7)  =^IfSetFieldValue
 1223               * Reset DA field
 1224               * File  ALTform.s       89
 1225 003B5 00000           CON(5)  =BINT0
 1226 003BA 00000           CON(5)  =DOFLASHP
 1227 003BF 0000000         CON(7)  =^IfGetFieldValue
 1228               * Get CA field value
 1229               * File  ALTform.s       90
 1230 003C6 00000           CON(5)  =NOVAL
 1231 003CB 00000           CON(5)  =EQUALNOT
 1232 003D0 00000           CON(5)  =IT
 1233 003D5 00000           CON(5)  =DOCOL
 1234               * IF it is NOT NOVAL
 1235               * File  ALTform.s       91
 1236 003DA 00000           CON(5)  =NOVAL
 1237 003DF 00000           CON(5)  =BINT2
 1238               * THEN
 1239               * File  ALTform.s       92
 1240 003E4 00000           CON(5)  =DOFLASHP
 1241 003E9 0000000         CON(7)  =^IfSetFieldValue
 1242               * Reset PA field
 1243               * File  ALTform.s       93
 1244 003F0 00000           CON(5)  =SEMI
 1245               * File  ALTform.s       94
 1246 003F5 00000           CON(5)  =TRUE
 1247               * Return external value
 1248               * File  ALTform.s       95
 1249 003FA 00000           CON(5)  =SEMI
 1250               * File  ALTform.s       96
 1251 003FF 00000           CON(5)  =DUPTYPEEXT?
 1252 00404 00000           CON(5)  =case
 1253 00409 00000           CON(5)  =DOCOL
 1254               * File  ALTform.s       97
 1255 0040E 00000           CON(5)  =DUP
 1256 00413 00000           CON(5)  =DOIDNT
 1257 00418 30              CON(2)  3
 1258 0041A 15E484          NIBASC  \QNH\
 1259 00420 00000           CON(5)  =EQUALNOT
 1260 00425 00000           CON(5)  =IT
 1261 0042A 00000           CON(5)  =DOCOL
 1262               * File  ALTform.s       98
 1263 0042F 00000           CON(5)  =NOVAL
 1264 00434 00000           CON(5)  =BINT5
 1265               * File  ALTform.s       99
 1266 00439 00000           CON(5)  =DOFLASHP
 1267 0043E 0000000         CON(7)  =^IfSetFieldValue
 1268               * Reset TA field
 1269               * File  ALTform.s       100
 1270 00445 00000           CON(5)  =NOVAL
 1271 0044A 00000           CON(5)  =BINT6
 1272               * File  ALTform.s       101
 1273 0044F 00000           CON(5)  =DOFLASHP
 1274 00454 0000000         CON(7)  =^IfSetFieldValue
 1275               * Reset DA field
 1276               * File  ALTform.s       102
 1277 0045B 00000           CON(5)  =BINT0
 1278 00460 00000           CON(5)  =DOFLASHP
 1279 00465 0000000         CON(7)  =^IfGetFieldValue
 1280               * Get CA field value
 1281               * File  ALTform.s       103
 1282 0046C 00000           CON(5)  =NOVAL
 1283 00471 00000           CON(5)  =EQUALNOT
 1284 00476 00000           CON(5)  =IT
 1285 0047B 00000           CON(5)  =DOCOL
 1286               * IF it it NOT NOVAL
 1287               * File  ALTform.s       104
 1288 00480 00000           CON(5)  =NOVAL
 1289 00485 00000           CON(5)  =BINT2
 1290               * THEN
 1291               * File  ALTform.s       105
 1292 0048A 00000           CON(5)  =DOFLASHP
 1293 0048F 0000000         CON(7)  =^IfSetFieldValue
 1294               * Reset PA field
 1295               * File  ALTform.s       106
 1296 00496 00000           CON(5)  =SEMI
 1297               * File  ALTform.s       107
 1298 0049B 00000           CON(5)  =SEMI
 1299               * File  ALTform.s       108
 1300 004A0 00000           CON(5)  =TRUE
 1301               * Return external value
 1302               * File  ALTform.s       109
 1303 004A5 00000           CON(5)  =SEMI
 1304               * File  ALTform.s       110
 1305 004AA 00000           CON(5)  =TRUE
 1306               * Message was handled
 1307               * File  ALTform.s       111
 1308 004AF 00000           CON(5)  =SEMI
 1309               * File  ALTform.s       112
 1310 004B4 00000           CON(5)  =FALSE
 1311               * No other messages handled
 1312               * File  ALTform.s       113
 1313 004B9 00000           CON(5)  =SEMI
 1314               * File  ALTform.s       114
 1315 004BE 00000           CON(5)  =2LIST
 1316 004C3 00000           CON(5)  =EIGHT
 1317 004C8 00000           CON(5)  =FORTYTHREE
 1318 004CD 00000           CON(5)  =EIGHT
 1319               * Position & size
 1320               * File  ALTform.s       115
 1321 004D2 00000           CON(5)  =ONE
 1322               * Field type: TEXT
 1323               * File  ALTform.s       116
 1324 004D7 00000           CON(5)  =DOLIST
 1325 004DC 00000           CON(5)  =ZERO
 1326 004E1 00000           CON(5)  =THIRTEEN
 1327 004E6 00000           CON(5)  =SEMI
 1328               * Allowed type: REAL, UNIT
 1329               * File  ALTform.s       117
 1330 004EB 00000           CON(5)  =TWO
 1331               * Decompile with stack appearance
 1332               * File  ALTform.s       118
 1333 004F0 00000           CON(5)  =DOCSTR
 1334 004F5 72000           CON(5)  39
 1335 004FA 14C4459         NIBASC  \ALTIMETER SETTING\
            4D45445
            5425023554454594E474

 1336               * Help string
 1337               * File  ALTform.s       119
 1338 0051C 00000           CON(5)  =MINUSONE
 1339               * ChooseData N/A
 1340               * File  ALTform.s       120
 1341 00521 00000           CON(5)  =MINUSONE
 1342               * ChooseDecompile
 1343               * File  ALTform.s       121
 1344 00526 00000           CON(5)  =MINUSONE
 1345               * Reset value
 1346               * File  ALTform.s       122
 1347 0052B 00000           CON(5)  =DOIDNT
 1348 00530 30              CON(2)  3
 1349 00532 15E484          NIBASC  \QNH\
 1350               * Initial value
 1351               * File  ALTform.s       123
 1352
 1353               * File  ALTform.s       124
 1354               * Field PA definition
 1355               * File  ALTform.s       125
 1356 00538 00000           CON(5)  ='
 1357 0053D 00000           CON(5)  =DOCOL
 1358               * Field message handler
 1359               * File  ALTform.s       126
 1360 00542 00000           CON(5)  =FOUR
 1361 00547 00000           CON(5)  =#=case
 1362 0054C 00000           CON(5)  =DOCOL
 1363               * Get internal value
 1364               * File  ALTform.s       127
 1365 00551 00000           CON(5)  =DUPTYPEREAL?
 1366 00556 00000           CON(5)  =case
 1367 0055B 00000           CON(5)  =DOCOL
 1368               * REAL
 1369               * File  ALTform.s       128
 1370 00560 00000           CON(5)  =DOCSTR
 1371 00565 90000           CON(5)  9
 1372 0056A 6647            NIBASC  \ft\
 1373 0056E 00000           CON(5)  =umEND
 1374 00573 00000           CON(5)  =BINT3
 1375 00578 00000           CON(5)  =EXTN
 1376               * Add default feet units
 1377               * File  ALTform.s       129
 1378 0057D 00000           CON(5)  =DUP
 1379 00582 00000           CON(5)  =DOEXT
 1380 00587 00000           CON(5)  =DOREAL
 1381 0058C 400             NIBHEX  400
 1382 0058F 0000000         NIBHEX  000000000002
            00002
 1383 0059B 0               NIBHEX  0
 1384 0059C 00000           CON(5)  =DOCSTR
 1385 005A1 70000           CON(5)  7
 1386 005A6 D6              NIBASC  \m\
 1387 005A8 00000           CON(5)  =umEND
 1388 005AD 00000           CON(5)  =SEMI
 1389               * File  ALTform.s       130
 1390 005B2 00000           CON(5)  =UM>?
 1391 005B7 00000           CON(5)  =%0<>
 1392 005BC 00000           CON(5)  =ITE
 1393 005C1 00000           CON(5)  =DOCOL
 1394               * IF PA is > 20 km
 1395               * File  ALTform.s       131
 1396 005C6 00000           CON(5)  =DROP
 1397               * DROP field value
 1398               * File  ALTform.s       132
 1399 005CB 00000           CON(5)  =DOCSTR
 1400 005D0 13000           CON(5)  49
 1401 005D5 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

 1402 005FD B6D6            NIBASC  \km\
 1403               * Display warning message and error beep
 1404               * File  ALTform.s       133
 1405 00601 00000           CON(5)  =FlashWarning
 1406               * File  ALTform.s       134
 1407 00606 00000           CON(5)  =BINT1
 1408 0060B 00000           CON(5)  =DOFLASHP
 1409 00610 0000000         CON(7)  =^IfSetField
 1410               * Keep field focus
 1411               * File  ALTform.s       135
 1412 00617 00000           CON(5)  =NOVAL
 1413               * Set PA field value to NOVAL
 1414               *                  ID PA                            ( Keep original field value )
 1415               * File  ALTform.s       137
 1416 0061C 00000           CON(5)  =SEMI
 1417               * File  ALTform.s       138
 1418 00621 00000           CON(5)  =DOCOL
 1419               * ELSE
 1420               * File  ALTform.s       139
 1421 00626 00000           CON(5)  =NOVAL
 1422 0062B 00000           CON(5)  =BINT5
 1423               * File  ALTform.s       140
 1424 00630 00000           CON(5)  =DOFLASHP
 1425 00635 0000000         CON(7)  =^IfSetFieldValue
 1426               * Reset TA field
 1427               * File  ALTform.s       141
 1428 0063C 00000           CON(5)  =NOVAL
 1429 00641 00000           CON(5)  =BINT6
 1430               * File  ALTform.s       142
 1431 00646 00000           CON(5)  =DOFLASHP
 1432 0064B 0000000         CON(7)  =^IfSetFieldValue
 1433               * Reset DA field
 1434               * File  ALTform.s       143
 1435 00652 00000           CON(5)  =BINT1
 1436 00657 00000           CON(5)  =DOFLASHP
 1437 0065C 0000000         CON(7)  =^IfGetFieldValue
 1438               * Get QNH field
 1439               * File  ALTform.s       144
 1440 00663 00000           CON(5)  =NOVAL
 1441 00668 00000           CON(5)  =EQUALNOT
 1442 0066D 00000           CON(5)  =IT
 1443 00672 00000           CON(5)  =DOCOL
 1444               * IF it is NOT NOVAL
 1445               * File  ALTform.s       145
 1446 00677 00000           CON(5)  =NOVAL
 1447 0067C 00000           CON(5)  =BINT0
 1448               * THEN
 1449               * File  ALTform.s       146
 1450 00681 00000           CON(5)  =DOFLASHP
 1451 00686 0000000         CON(7)  =^IfSetFieldValue
 1452               * Reset CA field
 1453               * File  ALTform.s       147
 1454 0068D 00000           CON(5)  =SEMI
 1455               * File  ALTform.s       148
 1456 00692 00000           CON(5)  =SEMI
 1457               * File  ALTform.s       149
 1458 00697 00000           CON(5)  =TRUE
 1459               * Return external value
 1460               * File  ALTform.s       150
 1461 0069C 00000           CON(5)  =SEMI
 1462               * File  ALTform.s       151
 1463 006A1 00000           CON(5)  =DUPTYPEEXT?
 1464 006A6 00000           CON(5)  =case
 1465 006AB 00000           CON(5)  =DOCOL
 1466               * UNIT
 1467               * File  ALTform.s       152
 1468 006B0 00000           CON(5)  =DUP
 1469 006B5 00000           CON(5)  =DOEXT
 1470 006BA 00000           CON(5)  =DOREAL
 1471 006BF 400             NIBHEX  400
 1472 006C2 0000000         NIBHEX  000000000002
            00002
 1473 006CE 0               NIBHEX  0
 1474 006CF 00000           CON(5)  =DOCSTR
 1475 006D4 70000           CON(5)  7
 1476 006D9 D6              NIBASC  \m\
 1477 006DB 00000           CON(5)  =umEND
 1478 006E0 00000           CON(5)  =SEMI
 1479               * File  ALTform.s       153
 1480 006E5 00000           CON(5)  =UM>?
 1481 006EA 00000           CON(5)  =%0<>
 1482 006EF 00000           CON(5)  =ITE
 1483 006F4 00000           CON(5)  =DOCOL
 1484               * IF PA is > 20 km
 1485               * File  ALTform.s       154
 1486 006F9 00000           CON(5)  =DROP
 1487               * DROP field value
 1488               * File  ALTform.s       155
 1489 006FE 00000           CON(5)  =DOCSTR
 1490 00703 13000           CON(5)  49
 1491 00708 542525F         NIBASC  \ERROR: Alt.    > 20 \
            425A302
            14C647E202020202E302230302

 1492 00730 B6D6            NIBASC  \km\
 1493               * Display warning message and error beep
 1494               * File  ALTform.s       156
 1495 00734 00000           CON(5)  =FlashWarning
 1496               * File  ALTform.s       157
 1497 00739 00000           CON(5)  =BINT1
 1498 0073E 00000           CON(5)  =DOFLASHP
 1499 00743 0000000         CON(7)  =^IfSetField
 1500               * Keep field focus
 1501               * File  ALTform.s       158
 1502 0074A 00000           CON(5)  =NOVAL
 1503               * Set PA field value to NOVAL
 1504               *                    ID PA                          ( Keep original field value )
 1505               * File  ALTform.s       160
 1506 0074F 00000           CON(5)  =SEMI
 1507               * File  ALTform.s       161
 1508 00754 00000           CON(5)  =DOCOL
 1509               * ELSE
 1510               * File  ALTform.s       162
 1511 00759 00000           CON(5)  =DUP
 1512 0075E 00000           CON(5)  =DOIDNT
 1513 00763 20              CON(2)  2
 1514 00765 0514            NIBASC  \PA\
 1515 00769 00000           CON(5)  =EQUALNOT
 1516 0076E 00000           CON(5)  =IT
 1517 00773 00000           CON(5)  =DOCOL
 1518               * IF the value has changed
 1519               * File  ALTform.s       163
 1520 00778 00000           CON(5)  =NOVAL
 1521 0077D 00000           CON(5)  =BINT5
 1522               * File  ALTform.s       164
 1523 00782 00000           CON(5)  =DOFLASHP
 1524 00787 0000000         CON(7)  =^IfSetFieldValue
 1525               * Reset TA field
 1526               * File  ALTform.s       165
 1527 0078E 00000           CON(5)  =NOVAL
 1528 00793 00000           CON(5)  =BINT6
 1529               * File  ALTform.s       166
 1530 00798 00000           CON(5)  =DOFLASHP
 1531 0079D 0000000         CON(7)  =^IfSetFieldValue
 1532               * Reset DA field
 1533               * File  ALTform.s       167
 1534 007A4 00000           CON(5)  =BINT1
 1535 007A9 00000           CON(5)  =DOFLASHP
 1536 007AE 0000000         CON(7)  =^IfGetFieldValue
 1537               * Get QNH field
 1538               * File  ALTform.s       168
 1539 007B5 00000           CON(5)  =NOVAL
 1540 007BA 00000           CON(5)  =EQUALNOT
 1541 007BF 00000           CON(5)  =IT
 1542 007C4 00000           CON(5)  =DOCOL
 1543               * IF it is NOT NOVAL
 1544               * File  ALTform.s       169
 1545 007C9 00000           CON(5)  =NOVAL
 1546 007CE 00000           CON(5)  =BINT0
 1547               * THEN
 1548               * File  ALTform.s       170
 1549 007D3 00000           CON(5)  =DOFLASHP
 1550 007D8 0000000         CON(7)  =^IfSetFieldValue
 1551               * Reset CA field
 1552               * File  ALTform.s       171
 1553 007DF 00000           CON(5)  =SEMI
 1554               * File  ALTform.s       172
 1555 007E4 00000           CON(5)  =SEMI
 1556               * File  ALTform.s       173
 1557 007E9 00000           CON(5)  =SEMI
 1558               * File  ALTform.s       174
 1559 007EE 00000           CON(5)  =TRUE
 1560               * Return external value
 1561               * File  ALTform.s       175
 1562 007F3 00000           CON(5)  =SEMI
 1563               * File  ALTform.s       176
 1564 007F8 00000           CON(5)  =TRUE
 1565               * Message was handled
 1566               * File  ALTform.s       177
 1567 007FD 00000           CON(5)  =SEMI
 1568               * File  ALTform.s       178
 1569 00802 00000           CON(5)  =FALSE
 1570               * No other messages handled
 1571               * File  ALTform.s       179
 1572 00807 00000           CON(5)  =SEMI
 1573               * File  ALTform.s       180
 1574 0080C 00000           CON(5)  =TWENTYTWO
 1575 00811 00000           CON(5)  =SEVENTEEN
 1576 00816 00000           CON(5)  =FORTYTHREE
 1577 0081B 00000           CON(5)  =EIGHT
 1578               * Position & size
 1579               * File  ALTform.s       181
 1580 00820 00000           CON(5)  =ONE
 1581               * Field type: TEXT
 1582               * File  ALTform.s       182
 1583 00825 00000           CON(5)  =DOLIST
 1584 0082A 00000           CON(5)  =ZERO
 1585 0082F 00000           CON(5)  =THIRTEEN
 1586 00834 00000           CON(5)  =SEMI
 1587               * Allowed type: REAL, UNIT
 1588               * File  ALTform.s       183
 1589 00839 00000           CON(5)  =TWO
 1590               * Decompile with stack appearance
 1591               * File  ALTform.s       184
 1592 0083E 00000           CON(5)  =DOCSTR
 1593 00843 72000           CON(5)  39
 1594 00848 0525543         NIBASC  \PRESSURE ALTITUDE\
            5355525
            540214C4459445554454

 1595               * Help string
 1596               * File  ALTform.s       185
 1597 0086A 00000           CON(5)  =MINUSONE
 1598               * ChooseData N/A
 1599               * File  ALTform.s       186
 1600 0086F 00000           CON(5)  =MINUSONE
 1601               * ChooseDecomile
 1602               * File  ALTform.s       187
 1603 00874 00000           CON(5)  =MINUSONE
 1604               * Reset value
 1605               * File  ALTform.s       188
 1606 00879 00000           CON(5)  =DOIDNT
 1607 0087E 20              CON(2)  2
 1608 00880 0514            NIBASC  \PA\
 1609               * Initial value
 1610               * File  ALTform.s       189
 1611
 1612               * File  ALTform.s       190
 1613               * Field SAT definition
 1614               * File  ALTform.s       191
 1615 00884 00000           CON(5)  ='
 1616 00889 00000           CON(5)  =DOCOL
 1617               * Field message handler
 1618               * File  ALTform.s       192
 1619 0088E 00000           CON(5)  =FOUR
 1620 00893 00000           CON(5)  =#=case
 1621 00898 00000           CON(5)  =DOCOL
 1622               * Get internal value
 1623               * File  ALTform.s       193
 1624 0089D 00000           CON(5)  =DUPTYPEREAL?
 1625 008A2 00000           CON(5)  =case
 1626 008A7 00000           CON(5)  =DOCOL
 1627               * REAL
 1628               * File  ALTform.s       194
 1629 008AC 00000           CON(5)  =DOCSTR
 1630 008B1 90000           CON(5)  9
 1631 008B6 0B              CON(2)  #B0
 1632 008B8 34              NIBASC  \C\
 1633 008BA 00000           CON(5)  =umEND
 1634 008BF 00000           CON(5)  =BINT3
 1635 008C4 00000           CON(5)  =EXTN
 1636               * Add default deg C units
 1637               * File  ALTform.s       195
 1638 008C9 00000           CON(5)  =NOVAL
 1639 008CE 00000           CON(5)  =BINT5
 1640               * Reset TA field
 1641               * File  ALTform.s       196
 1642 008D3 00000           CON(5)  =DOFLASHP
 1643 008D8 0000000         CON(7)  =^IfSetFieldValue
 1644               * File  ALTform.s       197
 1645 008DF 00000           CON(5)  =NOVAL
 1646 008E4 00000           CON(5)  =BINT6
 1647               * Reset DA field
 1648               * File  ALTform.s       198
 1649 008E9 00000           CON(5)  =DOFLASHP
 1650 008EE 0000000         CON(7)  =^IfSetFieldValue
 1651               * File  ALTform.s       199
 1652 008F5 00000           CON(5)  =TRUE
 1653               * Return external value
 1654               * File  ALTform.s       200
 1655 008FA 00000           CON(5)  =SEMI
 1656               * File  ALTform.s       201
 1657 008FF 00000           CON(5)  =DUPTYPEEXT?
 1658 00904 00000           CON(5)  =case
 1659 00909 00000           CON(5)  =DOCOL
 1660               * UNIT
 1661               * File  ALTform.s       202
 1662 0090E 00000           CON(5)  =DUP
 1663 00913 00000           CON(5)  =DOIDNT
 1664 00918 30              CON(2)  3
 1665 0091A 351445          NIBASC  \SAT\
 1666 00920 00000           CON(5)  =EQUALNOT
 1667 00925 00000           CON(5)  =IT
 1668 0092A 00000           CON(5)  =DOCOL
 1669               * IF the value has changed
 1670               * File  ALTform.s       203
 1671 0092F 00000           CON(5)  =NOVAL
 1672 00934 00000           CON(5)  =BINT5
 1673               * Reset TA field
 1674               * File  ALTform.s       204
 1675 00939 00000           CON(5)  =DOFLASHP
 1676 0093E 0000000         CON(7)  =^IfSetFieldValue
 1677               * File  ALTform.s       205
 1678 00945 00000           CON(5)  =NOVAL
 1679 0094A 00000           CON(5)  =BINT6
 1680               * Reset DA field
 1681               * File  ALTform.s       206
 1682 0094F 00000           CON(5)  =DOFLASHP
 1683 00954 0000000         CON(7)  =^IfSetFieldValue
 1684               * File  ALTform.s       207
 1685 0095B 00000           CON(5)  =SEMI
 1686               * File  ALTform.s       208
 1687 00960 00000           CON(5)  =TRUE
 1688               * Return external value
 1689               * File  ALTform.s       209
 1690 00965 00000           CON(5)  =SEMI
 1691               * File  ALTform.s       210
 1692 0096A 00000           CON(5)  =TRUE
 1693               * Message was handled
 1694               * File  ALTform.s       211
 1695 0096F 00000           CON(5)  =SEMI
 1696               * File  ALTform.s       212
 1697 00974 00000           CON(5)  =FALSE
 1698               * No other messages handled
 1699               * File  ALTform.s       213
 1700 00979 00000           CON(5)  =SEMI
 1701               * File  ALTform.s       214
 1702 0097E 00000           CON(5)  =2LIST
 1703 00983 00000           CON(5)  =SEVENTEEN
 1704 00988 00000           CON(5)  =FORTYTHREE
 1705 0098D 00000           CON(5)  =EIGHT
 1706               * Position & size
 1707               * File  ALTform.s       215
 1708 00992 00000           CON(5)  =ONE
 1709               * Field type: TEXT
 1710               * File  ALTform.s       216
 1711 00997 00000           CON(5)  =DOLIST
 1712 0099C 00000           CON(5)  =ZERO
 1713 009A1 00000           CON(5)  =THIRTEEN
 1714 009A6 00000           CON(5)  =SEMI
 1715               * Allowed type: REAL, UNIT
 1716               * File  ALTform.s       217
 1717 009AB 00000           CON(5)  =TWO
 1718               * Decompile with stack appearance
 1719               * File  ALTform.s       218
 1720 009B0 00000           CON(5)  =DOCSTR
 1721 009B5 73000           CON(5)  55
 1722 009BA 4525555         NIBASC  \TRUE AIR TEMPERATURE\
            4021494
            25024554D40554251445552554

 1723 009E2 0282            NIBASC  \ (\
 1724 009E6 0B              CON(2)  #B0
 1725 009E8 3492            NIBASC  \C)\
 1726               * Help string
 1727               * File  ALTform.s       219
 1728 009EC 00000           CON(5)  =MINUSONE
 1729               * ChooseData N/A
 1730               * File  ALTform.s       220
 1731 009F1 00000           CON(5)  =MINUSONE
 1732               * ChooseDecompile
 1733               * File  ALTform.s       221
 1734 009F6 00000           CON(5)  =MINUSONE
 1735               * Reset value
 1736               * File  ALTform.s       222
 1737 009FB 00000           CON(5)  =DOIDNT
 1738 00A00 30              CON(2)  3
 1739 00A02 351445          NIBASC  \SAT\
 1740               * Initial value
 1741               * File  ALTform.s       223
 1742
 1743               * File  ALTform.s       224
 1744               * Field GNDST definition
 1745               * File  ALTform.s       225
 1746 00A08 00000           CON(5)  ='
 1747 00A0D 00000           CON(5)  =DOCOL
 1748               * Field message handler
 1749               * File  ALTform.s       226
 1750 00A12 00000           CON(5)  =FOUR
 1751 00A17 00000           CON(5)  =#=case
 1752 00A1C 00000           CON(5)  =DOCOL
 1753               * Get internal value
 1754               * File  ALTform.s       227
 1755 00A21 00000           CON(5)  =DUPTYPEREAL?
 1756 00A26 00000           CON(5)  =case
 1757 00A2B 00000           CON(5)  =DOCOL
 1758               * REAL
 1759               * File  ALTform.s       228
 1760 00A30 00000           CON(5)  =DOCSTR
 1761 00A35 90000           CON(5)  9
 1762 00A3A 6647            NIBASC  \ft\
 1763 00A3E 00000           CON(5)  =umEND
 1764 00A43 00000           CON(5)  =BINT3
 1765 00A48 00000           CON(5)  =EXTN
 1766               * Add default feet units
 1767               * File  ALTform.s       229
 1768 00A4D 00000           CON(5)  =NOVAL
 1769 00A52 00000           CON(5)  =BINT5
 1770               * Reset TA field
 1771               * File  ALTform.s       230
 1772 00A57 00000           CON(5)  =DOFLASHP
 1773 00A5C 0000000         CON(7)  =^IfSetFieldValue
 1774               * File  ALTform.s       231
 1775 00A63 00000           CON(5)  =NOVAL
 1776 00A68 00000           CON(5)  =BINT6
 1777               * Reset DA field
 1778               * File  ALTform.s       232
 1779 00A6D 00000           CON(5)  =DOFLASHP
 1780 00A72 0000000         CON(7)  =^IfSetFieldValue
 1781               * File  ALTform.s       233
 1782 00A79 00000           CON(5)  =BINT6
 1783 00A7E 00000           CON(5)  =DOFLASHP
 1784 00A83 0000000         CON(7)  =^IfSetField
 1785               * Set focus to CA
 1786               * File  ALTform.s       234
 1787 00A8A 00000           CON(5)  =TRUE
 1788               * Return external value
 1789               * File  ALTform.s       235
 1790 00A8F 00000           CON(5)  =SEMI
 1791               * File  ALTform.s       236
 1792 00A94 00000           CON(5)  =DUPTYPEEXT?
 1793 00A99 00000           CON(5)  =case
 1794 00A9E 00000           CON(5)  =DOCOL
 1795               * UNIT
 1796               * File  ALTform.s       237
 1797 00AA3 00000           CON(5)  =DUP
 1798 00AA8 00000           CON(5)  =DOIDNT
 1799 00AAD 50              CON(2)  5
 1800 00AAF 74E4443         NIBASC  \GNDST\
            545
 1801 00AB9 00000           CON(5)  =EQUALNOT
 1802 00ABE 00000           CON(5)  =IT
 1803 00AC3 00000           CON(5)  =DOCOL
 1804               * IF field value has changed
 1805               * File  ALTform.s       238
 1806 00AC8 00000           CON(5)  =NOVAL
 1807 00ACD 00000           CON(5)  =BINT5
 1808               * Reset TA field
 1809               * File  ALTform.s       239
 1810 00AD2 00000           CON(5)  =DOFLASHP
 1811 00AD7 0000000         CON(7)  =^IfSetFieldValue
 1812               * File  ALTform.s       240
 1813 00ADE 00000           CON(5)  =NOVAL
 1814 00AE3 00000           CON(5)  =BINT6
 1815               * Reset DA field
 1816               * File  ALTform.s       241
 1817 00AE8 00000           CON(5)  =DOFLASHP
 1818 00AED 0000000         CON(7)  =^IfSetFieldValue
 1819               * File  ALTform.s       242
 1820 00AF4 00000           CON(5)  =BINT6
 1821 00AF9 00000           CON(5)  =DOFLASHP
 1822 00AFE 0000000         CON(7)  =^IfSetField
 1823               * Set focus to CA
 1824               * File  ALTform.s       243
 1825 00B05 00000           CON(5)  =SEMI
 1826               * File  ALTform.s       244
 1827 00B0A 00000           CON(5)  =TRUE
 1828               * Return external value
 1829               * File  ALTform.s       245
 1830 00B0F 00000           CON(5)  =SEMI
 1831               * File  ALTform.s       246
 1832 00B14 00000           CON(5)  =TRUE
 1833               * Message was handled
 1834               * File  ALTform.s       247
 1835 00B19 00000           CON(5)  =SEMI
 1836               * File  ALTform.s       248
 1837 00B1E 00000           CON(5)  =FALSE
 1838               * No other messages handled
 1839               * File  ALTform.s       249
 1840 00B23 00000           CON(5)  =SEMI
 1841               * File  ALTform.s       250
 1842 00B28 00000           CON(5)  =TWENTYFIVE
 1843 00B2D 00000           CON(5)  =TWENTYSIX
 1844 00B32 00000           CON(5)  =FIFTYFIVE
 1845 00B37 00000           CON(5)  =EIGHT
 1846               * Position & size
 1847               * File  ALTform.s       251
 1848 00B3C 00000           CON(5)  =ONE
 1849               * Field type: TEXT
 1850               * File  ALTform.s       252
 1851 00B41 00000           CON(5)  =DOLIST
 1852 00B46 00000           CON(5)  =ZERO
 1853 00B4B 00000           CON(5)  =THIRTEEN
 1854 00B50 00000           CON(5)  =SEMI
 1855               * Allowed type: REAL, UNIT
 1856               * File  ALTform.s       253
 1857 00B55 00000           CON(5)  =TWO
 1858               * Decompile with stack appearance
 1859               * File  ALTform.s       254
 1860 00B5A 00000           CON(5)  =DOCSTR
 1861 00B5F 34000           CON(5)  67
 1862 00B64 7425F45         NIBASC  \GROUND STATION ELEV.\
            5E44402
            3545144594F4E40254C45465E2

 1863 00B8C 028264F         NIBASC  \ (FOR TALT)\
            4250245
            14C44592
 1864               * Help string
 1865               * File  ALTform.s       255
 1866 00BA2 00000           CON(5)  =MINUSONE
 1867               * ChooseData N/A
 1868               * File  ALTform.s       256
 1869 00BA7 00000           CON(5)  =MINUSONE
 1870               * ChooseDecompile
 1871               * File  ALTform.s       257
 1872 00BAC 00000           CON(5)  =DOEXT
 1873 00BB1 00000           CON(5)  =DOREAL
 1874 00BB6 000             NIBHEX  000
 1875 00BB9 0000000         NIBHEX  000000000000
            00000
 1876 00BC5 0               NIBHEX  0
 1877 00BC6 00000           CON(5)  =DOCSTR
 1878 00BCB 90000           CON(5)  9
 1879 00BD0 6647            NIBASC  \ft\
 1880 00BD4 00000           CON(5)  =umEND
 1881 00BD9 00000           CON(5)  =SEMI
 1882               * Reset Value
 1883               * File  ALTform.s       258
 1884 00BDE 00000           CON(5)  =DOIDNT
 1885 00BE3 50              CON(2)  5
 1886 00BE5 74E4443         NIBASC  \GNDST\
            545
 1887               * Initial Value
 1888               * File  ALTform.s       259
 1889
 1890               * File  ALTform.s       260
 1891               * Field TA definition
 1892               * File  ALTform.s       261
 1893 00BEF 00000           CON(5)  ='DROPFALSE
 1894               * Field message handler
 1895               * File  ALTform.s       262
 1896 00BF4 00000           CON(5)  =TWENTYTWO
 1897 00BF9 00000           CON(5)  =THIRTYFIVE
 1898 00BFE 00000           CON(5)  =DOBINT
 1899 00C03 D6000           CON(5)  109
 1900 00C08 00000           CON(5)  =EIGHT
 1901               * Position & size
 1902               * File  ALTform.s       263
 1903 00C0D 00000           CON(5)  =ONE
 1904               * Field type: TEXT
 1905               * File  ALTform.s       264
 1906 00C12 00000           CON(5)  =DOLIST
 1907 00C17 00000           CON(5)  =ZERO
 1908 00C1C 00000           CON(5)  =THIRTEEN
 1909 00C21 00000           CON(5)  =SEMI
 1910               * Allowed type:  REAL, UNIT
 1911               * File  ALTform.s       265
 1912 00C26 00000           CON(5)  =TWO
 1913               * Decompile with stack appearance
 1914               * File  ALTform.s       266
 1915 00C2B 00000           CON(5)  =DOCSTR
 1916 00C30 13000           CON(5)  49
 1917 00C35 4525555         NIBASC  \TRUE ALTITUDE (OUTPU\
            40214C4
            4594455544540282F455450555

 1918 00C5D 4592            NIBASC  \T)\
 1919               * Help string
 1920               * File  ALTform.s       267
 1921 00C61 00000           CON(5)  =MINUSONE
 1922               * ChooseData N/A
 1923               * File  ALTform.s       268
 1924 00C66 00000           CON(5)  =MINUSONE
 1925               * ChooseDecompile
 1926               * File  ALTform.s       269
 1927 00C6B 00000           CON(5)  =MINUSONE
 1928               * Reset Value
 1929               * File  ALTform.s       270
 1930 00C70 00000           CON(5)  =DOIDNT
 1931 00C75 20              CON(2)  2
 1932 00C77 4514            NIBASC  \TA\
 1933               * Initial Value
 1934               * File  ALTform.s       271
 1935
 1936               * File  ALTform.s       272
 1937               * Field DA definition
 1938               * File  ALTform.s       273
 1939 00C7B 00000           CON(5)  ='DROPFALSE
 1940               * Field message handler
 1941               * File  ALTform.s       274
 1942 00C80 00000           CON(5)  =TWENTYTWO
 1943 00C85 00000           CON(5)  =FORTYFOUR
 1944 00C8A 00000           CON(5)  =DOBINT
 1945 00C8F D6000           CON(5)  109
 1946 00C94 00000           CON(5)  =EIGHT
 1947               * Position & size
 1948               * File  ALTform.s       275
 1949 00C99 00000           CON(5)  =ONE
 1950               * Field type: TEXT
 1951               * File  ALTform.s       276
 1952 00C9E 00000           CON(5)  =DOLIST
 1953 00CA3 00000           CON(5)  =ZERO
 1954 00CA8 00000           CON(5)  =THIRTEEN
 1955 00CAD 00000           CON(5)  =SEMI
 1956               * Allowed type: REAL, UNIT
 1957               * File  ALTform.s       277
 1958 00CB2 00000           CON(5)  =TWO
 1959               * Decompile with stack appearance
 1960               * File  ALTform.s       278
 1961 00CB7 00000           CON(5)  =DOCSTR
 1962 00CBC 93000           CON(5)  57
 1963 00CC1 4454E43         NIBASC  \DENSITY ALTITUDE (OU\
            5944595
            0214C44594455544540282F455

 1964 00CE9 4505554         NIBASC  \TPUT) \
            59202
 1965               * Help string
 1966               * File  ALTform.s       279
 1967 00CF5 00000           CON(5)  =MINUSONE
 1968               * ChooseData N/A
 1969               * File  ALTform.s       280
 1970 00CFA 00000           CON(5)  =MINUSONE
 1971               * ChooseDecompile
 1972               * File  ALTform.s       281
 1973 00CFF 00000           CON(5)  =MINUSONE
 1974               * Reset Value
 1975               * File  ALTform.s       282
 1976 00D04 00000           CON(5)  =DOIDNT
 1977 00D09 20              CON(2)  2
 1978 00D0B 4414            NIBASC  \DA\
 1979               * Initial value
 1980               * File  ALTform.s       283
 1981
 1982               * File  ALTform.s       284
 1983 00D0F 00000           CON(5)  =SEVEN
 1984 00D14 00000           CON(5)  =SEVEN
 1985               * Label & field counts
 1986               * File  ALTform.s       285
 1987 00D19 00000           CON(5)  ='DROPFALSE
 1988               * Inform Box message handler
 1989               * File  ALTform.s       286
 1990 00D1E 00000           CON(5)  =DOCSTR
 1991 00D23 51000           CON(5)  21
 1992 00D28 14C4459         NIBASC  \ALTITUDE\
            4455544
            54
 1993               * Title
 1994               * File  ALTform.s       287
 1995 00D38 00000           CON(5)  =DOFLASHP
 1996 00D3D 0000000         CON(7)  =^IfMain
 1997               * Create and run the input form
 1998               * File  ALTform.s       288
 1999 00D44 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:17:08 2009
V3.0.9 (04/15/2007)   Symbol Table                       ALTform.a      Page    2

 #=case                            Ext                   -   996  1166  1361
                                        1620  1751
 %0<>                              Ext                   -  1391  1481
 %<                                Ext                   -  1180
 '                                 Ext                   -   991  1161  1356
                                        1615  1746
 'DROPFALSE                        Ext                   -  1893  1939  1987
 2LIST                             Ext                   -  1315  1702
=ALTform                           Rel       0 #00000000 -   939
 AddressesCLEBit                   Abs       0 #00000000 -   790
 AddressesCLEFl                    Abs      89 #00000059 -   788   789   790
 AddressesCLENib                   Abs      22 #00000016 -   789
 AlarmBeepBit                      Abs       0 #00000000 -   177
 AlarmBeepFl                       Abs      57 #00000039 -   165   176   177
 AlarmBeepNib                      Abs      14 #0000000E -   176
 AlgebraicModeBit                  Abs       2 #00000002 -   808
 AlgebraicModeFl                   Abs      95 #0000005F -   806   807   808
 AlgebraicModeNib                  Abs      23 #00000017 -   807
 AngleBCt                          Abs       2 #00000002 -   128
 AngleBit1                         Abs       0 #00000000 -   180   181
 AngleBit2                         Abs       1 #00000001 -   181
 AngleFl1                          Abs      17 #00000011 -   127   179   180
 AngleNib                          Abs       4 #00000004 -   179
 ArrayOnlyBit                      Abs       2 #00000002 -   796
 ArrayOnlyFl                       Abs      91 #0000005B -   794   795   796
 ArrayOnlyNib                      Abs      22 #00000016 -   795
 AutoSaveBit                       Abs       1 #00000001 -   805
 AutoSaveFl                        Abs      94 #0000005E -   803   804   805
 AutoSaveNib                       Abs      23 #00000017 -   804
 BINT0                             Ext                   -  1225  1277  1447
                                        1546
 BINT1                             Ext                   -  1027  1081  1407
                                        1435  1497  1534
 BINT2                             Ext                   -  1039  1093  1237
                                        1289
 BINT3                             Ext                   -  1009  1189  1374
                                        1634  1764
 BINT5                             Ext                   -  1014  1068  1206
                                        1212  1264  1422  1521  1639  1672  1769
                                        1807
 BINT6                             Ext                   -  1021  1075  1219
                                        1271  1429  1528  1646  1679  1776  1782
                                        1814  1820
 BigFontCmdBit                     Abs       0 #00000000 -   742
 BigFontCmdFl                      Abs      73 #00000049 -   740   741   742
 BigFontCmdNib                     Abs      18 #00000012 -   741
 BigFontStackBit                   Abs       3 #00000003 -   739
 BigFontStackFl                    Abs      72 #00000048 -   737   738   739
 BigFontStackNib                   Abs      17 #00000011 -   738
 BinBaseBCt                        Abs       2 #00000002 -   123
 BinBaseBit1                       Abs       2 #00000002 -   184
 BinBaseFl1                        Abs      11 #0000000B -   122   183   184
 BinBaseNib                        Abs       2 #00000002 -   183
 BinWordSBCt                       Abs       6 #00000006 -   121
 BinWordSBit1                      Abs       0 #00000000 -   187
 BinWordSFl1                       Abs       5 #00000005 -   120   186   187
 BinWordSNib                       Abs       1 #00000001 -   186
 CHR_m                             Ext                   -  1198
 CarefulBit                        Abs       3 #00000003 -   190
 CarefulFl                         Abs       4 #00000004 -   118   189   190
 CarefulNib                        Abs       0 #00000000 -   189
 ClockFmtBit                       Abs       0 #00000000 -   193
 ClockFmtFl                        Abs      41 #00000029 -   150   192   193
 ClockFmtNib                       Abs      10 #0000000A -   192
 ClockOnBit                        Abs       3 #00000003 -   196
 ClockOnFl                         Abs      40 #00000028 -   149   195   196
 ClockOnNib                        Abs       9 #00000009 -   195
 CmdAutoIndentBit                  Abs       3 #00000003 -   727
 CmdAutoIndentFl                   Abs      68 #00000044 -   725   726   727
 CmdAutoIndentNib                  Abs      16 #00000010 -   726
 ComVecDiBCt                       Abs       2 #00000002 -   126
 ComVecDiBit1                      Abs       2 #00000002 -   202
 ComVecDiFl1                       Abs      15 #0000000F -   125   201   202
 ComVecDiNib                       Abs       3 #00000003 -   201
 Complex2DBit                      Abs       2 #00000002 -   199
 Complex2DFl                       Abs      19 #00000013 -   129   198   199
 Complex2DNib                      Abs       4 #00000004 -   198
 ComplexBit                        Abs       2 #00000002 -   822
 ComplexFl                         Abs     103 #00000067 -   820   821   822
 ComplexNib                        Abs      25 #00000019 -   821
 ConnectPtBit                      Abs       2 #00000002 -   205
 ConnectPtFl                       Abs      31 #0000001F -   139   204   205
 ConnectPtNib                      Abs       7 #00000007 -   204
 ConstantsBit                      Abs       1 #00000001 -   208
 ConstantsFl                       Abs       2 #00000002 -   116   207   208
 ConstantsNib                      Abs       0 #00000000 -   207
 DOBINT                            Ext                   -  1898  1944
 DOCOL                             Ext                   -   941   992   997
                                        1002  1035  1055  1064  1089  1162  1167
                                        1172  1182  1195  1233  1253  1261  1285
                                        1357  1362  1367  1393  1418  1443  1465
                                        1483  1508  1517  1542  1616  1621  1626
                                        1659  1668  1747  1752  1757  1794  1803
 DOCSTR                            Ext                   -   944   950   956
                                         962   968   974   980  1005  1137  1185
                                        1199  1333  1370  1384  1399  1474  1489
                                        1592  1629  1720  1760  1860  1877  1915
                                        1961  1990
 DOEXT                             Ext                   -  1379  1469  1872
 DOFLASHP                          Ext                   -  1016  1023  1028
                                        1042  1070  1077  1082  1096  1214  1221
                                        1226  1240  1266  1273  1278  1292  1408
                                        1424  1431  1436  1450  1498  1523  1530
                                        1535  1549  1642  1649  1675  1682  1772
                                        1779  1783  1810  1817  1821  1995
 DOIDNT                            Ext                   -  1059  1152  1256
                                        1347  1512  1606  1663  1737  1798  1884
                                        1930  1976
 DOLIST                            Ext                   -  1128  1324  1583
                                        1711  1851  1906  1952
 DOREAL                            Ext                   -  1176  1380  1470
                                        1873
 DROP                              Ext                   -  1396  1486
 DUP                               Ext                   -  1058  1175  1255
                                        1378  1468  1511  1662  1797
 DUPTYPEEXT?                       Ext                   -  1053  1251  1463
                                        1657  1792
 DUPTYPEREAL?                      Ext                   -  1000  1170  1365
                                        1624  1755
 DateFmtBit                        Abs       1 #00000001 -   211
 DateFmtFl                         Abs      42 #0000002A -   151   210   211
 DateFmtNib                        Abs      10 #0000000A -   210
 DblSpaceBit                       Abs       0 #00000000 -   214
 DblSpaceFl                        Abs      37 #00000025 -   145   213   214
 DblSpaceNib                       Abs       9 #00000009 -   213
 DefSysF32-01                      Abs67178480 #04010FF0 -    40
 DefSysF64-33                      Abs       0 #00000000 -    39
 DefSysF65-96                      Abs1107296256 #42000000 -    41
 DefSysF97-128                     Abs       0 #00000000 -    42
 DelNRAlmBit                       Abs       3 #00000003 -   217
 DelNRAlmFl                        Abs      44 #0000002C -   153   216   217
 DelNRAlmNib                       Abs      10 #0000000A -   216
 DesasmWithAdrBit                  Abs       2 #00000002 -   736
 DesasmWithAdrFl                   Abs      71 #00000047 -   734   735   736
 DesasmWithAdrNib                  Abs      17 #00000011 -   735
 DigitalClockBit                   Abs       2 #00000002 -   724
 DigitalClockFl                    Abs      67 #00000043 -   722   723   724
 DigitalClockNib                   Abs      16 #00000010 -   723
 EIGHT                             Ext                   -  1120  1122  1316
                                        1318  1577  1705  1845  1900  1946
 EQUALNOT                          Ext                   -  1033  1062  1087
                                        1231  1259  1283  1441  1515  1540  1666
                                        1801
 EXTN                              Ext                   -  1010  1190  1207
                                        1375  1635  1765
 ErableHeaderBit                   Abs       0 #00000000 -   802
 ErableHeaderFl                    Abs      93 #0000005D -   800   801   802
 ErableHeaderNib                   Abs      23 #00000017 -   801
 ErrorBeepBit                      Abs       3 #00000003 -   220
 ErrorBeepFl                       Abs      56 #00000038 -   164   219   220
 ErrorBeepNib                      Abs      13 #0000000D -   219
 ExactModeBit                      Abs       0 #00000000 -   827
 ExactModeFl                       Abs     105 #00000069 -   825   826   827
 ExactModeNib                      Abs      26 #0000001A -   826
 FALSE                             Ext                   -  1114  1310  1569
                                        1697  1837
 FIFTYFIVE                         Ext                   -  1844
 FIVE                              Ext                   -  1165
 FORTYFOUR                         Ext                   -  1943
 FORTYSIX                          Ext                   -   984
 FORTYTHREE                        Ext                   -  1121  1317  1576
                                        1704
 FOUR                              Ext                   -   995  1360  1619
                                        1750
 FOURTHREE                         Ext                   -   953   965
 FastEViewBit                      Abs       2 #00000002 -   223
 FastEViewNib                      Abs      14 #0000000E -   222
 FastEqViewFl                      Abs      59 #0000003B -   167   222   223
 FilerConfirmBit                   Abs       0 #00000000 -   754
 FilerConfirmFl                    Abs      77 #0000004D -   752   753   754
 FilerConfirmNib                   Abs      19 #00000013 -   753
 FilerConfirmationBit              Abs       3 #00000003 -   751
 FilerConfirmationFl               Abs      76 #0000004C -   749   750   751
 FilerConfirmationNib              Abs      18 #00000012 -   750
 FlashWarning                      Ext                   -  1405  1495
 FullScreenEditBit                 Abs       0 #00000000 -   730
 FullScreenEditFl                  Abs      69 #00000045 -   728   729   730
 FullScreenEditNib                 Abs      17 #00000011 -   729
 FunctPlotBit                      Abs       1 #00000001 -   226
 FunctPlotFl                       Abs      30 #0000001E -   138   225   226
 FunctPlotNib                      Abs       7 #00000007 -   225
 GCursorBit                        Abs       3 #00000003 -   229
 GCursorFl                         Abs      32 #00000020 -   140   228   229
 GCursorNib                        Abs       7 #00000007 -   228
 GrobDisplayBit                    Abs       2 #00000002 -   772
 GrobDisplayFl                     Abs      83 #00000053 -   770   771   772
 GrobDisplayNib                    Abs      20 #00000014 -   771
 IODataFmtBit                      Abs       2 #00000002 -   241
 IODataFmtFl                       Abs      35 #00000023 -   143   240   241
 IODataFmtNib                      Abs       8 #00000008 -   240
 IODeviceBit                       Abs       0 #00000000 -   244
 IODeviceFl                        Abs      33 #00000021 -   141   243   244
 IODeviceNib                       Abs       8 #00000008 -   243
 IT                                Ext                   -  1034  1063  1088
                                        1232  1260  1284  1442  1516  1541  1667
                                        1802
 ITE                               Ext                   -  1181  1392  1482
 IndexWrapBit                      Abs       3 #00000003 -   232
 IndexWrapFl                       Abs      64 #00000040 -   172   231   232
 IndexWrapNib                      Abs      15 #0000000F -   231
 InfResActBit                      Abs       1 #00000001 -   235
 InfResActFl                       Abs      22 #00000016 -   132   234   235
 InfResActNib                      Abs       5 #00000005 -   234
 InfResultBit                      Abs       1 #00000001 -   238
 InfResultFl                       Abs      26 #0000001A -   136   237   238
 InfResultNib                      Abs       6 #00000006 -   237
 KernelParamBit                    Abs       1 #00000001 -   757
 KernelParamFl                     Abs      78 #0000004E -   755   756   757
 KernelParamNib                    Abs      19 #00000013 -   756
 KeystrokeBeepBit                  Abs       2 #00000002 -   748
 KeystrokeBeepFl                   Abs      75 #0000004B -   746   747   748
 KeystrokeBeepNib                  Abs      18 #00000012 -   747
 LastArgsBit                       Abs       2 #00000002 -   247
 LastArgsFl                        Abs      55 #00000037 -   163   246   247
 LastArgsNib                       Abs      13 #0000000D -   246
 MASDDecompilerBit                 Abs       1 #00000001 -   781
 MASDDecompilerFl                  Abs      86 #00000056 -   779   780   781
 MASDDecompilerNib                 Abs      21 #00000015 -   780
 MINUSONE                          Ext                   -  1143  1146  1149
                                        1338  1341  1344  1597  1600  1603  1728
                                        1731  1734  1866  1869  1921  1924  1927
                                        1967  1970  1973
 MKSmallFontMenuBit                Abs       3 #00000003 -   775
 MKSmallFontMenuFl                 Abs      84 #00000054 -   773   774   775
 MKSmallFontMenuNib                Abs      20 #00000014 -   774
 MLMASDModeBit                     Abs       3 #00000003 -   799
 MLMASDModeFl                      Abs      92 #0000005C -   797   798   799
 MLMASDModeNib                     Abs      22 #00000016 -   798
 MenuOnBit                         Abs       3 #00000003 -   811
 MenuOnFl                          Abs      96 #00000060 -   809   810   811
 MenuOnNib                         Abs      23 #00000017 -   810
 MultiDispBit                      Abs       3 #00000003 -   253
 MultiDispFl                       Abs      52 #00000034 -   160   252   253
 MultiDispNib                      Abs      12 #0000000C -   252
 MultiLine2GROBBit                 Abs       1 #00000001 -   733
 MultiLine2GROBFl                  Abs      70 #00000046 -   731   732   733
 MultiLine2GROBNib                 Abs      17 #00000011 -   732
 MultiLineBit                      Abs       0 #00000000 -   718
 MultiLineFl                       Abs      65 #00000041 -   716   717   718
 MultiLineNib                      Abs      16 #00000010 -   717
 MultiLineStringsBit               Abs       1 #00000001 -   721
 MultiLineStringsFl                Abs      66 #00000042 -   719   720   721
 MultiLineStringsNib               Abs      16 #00000010 -   720
 NINETEEN                          Ext                   -   960   966
 NOVAL                             Ext                   -  1013  1020  1032
                                        1038  1067  1074  1086  1092  1211  1218
                                        1230  1236  1263  1270  1282  1288  1412
                                        1421  1428  1440  1446  1502  1520  1527
                                        1539  1545  1638  1645  1671  1678  1768
                                        1775  1806  1813
 NoAutoCRBit                       Abs       1 #00000001 -   256
 NoAutoCRFl                        Abs      38 #00000026 -   146   255   256
 NoAutoCRNib                       Abs       9 #00000009 -   255
 NoIOStMsgBit                      Abs       2 #00000002 -   259
 NoIOStMsgNib                      Abs       9 #00000009 -   258
 NoIOStsMsgFl                      Abs      39 #00000027 -   147   258   259
 NoParseBit                        Abs       2 #00000002 -   262
 NoParseFl                         Abs      63 #0000003F -   171   261   262
 NoParseNib                        Abs      15 #0000000F -   261
 NumDigsBCt                        Abs       4 #00000004 -   156
 NumDigsBit1                       Abs       0 #00000000 -   265
 NumDigsFl1                        Abs      45 #0000002D -   155   264   265
 NumDigsNib                        Abs      11 #0000000B -   264
 NumDispBCt                        Abs       2 #00000002 -   158
 NumDispBit1                       Abs       0 #00000000 -   268
 NumDispFl1                        Abs      49 #00000031 -   157   267   268
 NumDispNib                        Abs      12 #0000000C -   267
 ONE                               Ext                   -   947   959   971
                                         977   983  1125  1321  1580  1708  1848
                                        1903  1949
 OverfActBit                       Abs       0 #00000000 -   271
 OverfActFl                        Abs      21 #00000015 -   131   270   271
 OverfActNib                       Abs       5 #00000005 -   270
 OverflowBit                       Abs       0 #00000000 -   274
 OverflowFl                        Abs      25 #00000019 -   135   273   274
 OverflowNib                       Abs       6 #00000006 -   273
 OverwriteBit                      Abs       3 #00000003 -   277
 OverwriteFl                       Abs      36 #00000024 -   144   276   277
 OverwriteNib                      Abs       8 #00000008 -   276
 PrettyPrintBit                    Abs       2 #00000002 -   760
 PrettyPrintFl                     Abs      79 #0000004F -   758   759   760
 PrettyPrintNib                    Abs      19 #00000013 -   759
 PrintDevBit                       Abs       1 #00000001 -   280
 PrintDevFl                        Abs      34 #00000022 -   142   279   280
 PrintDevNib                       Abs       8 #00000008 -   279
 RadixBit                          Abs       2 #00000002 -   283
 RadixFl                           Abs      51 #00000033 -   159   282   283
 RadixNib                          Abs      12 #0000000C -   282
 RecursiveEditBit                  Abs       3 #00000003 -   787
 RecursiveEditFl                   Abs      88 #00000058 -   785   786   787
 RecursiveEditNib                  Abs      21 #00000015 -   786
 RecursiveStackBit                 Abs       2 #00000002 -   784
 RecursiveStackFl                  Abs      87 #00000057 -   782   783   784
 RecursiveStackNib                 Abs      21 #00000015 -   783
 ResRepAlmBit                      Abs       2 #00000002 -   286
 ResRepAlmFl                       Abs      43 #0000002B -   152   285   286
 ResRepAlmNib                      Abs      10 #0000000A -   285
 ResultsBit                        Abs       2 #00000002 -   289
 ResultsFl                         Abs       3 #00000003 -   117   288   289
 ResultsNib                        Abs       0 #00000000 -   288
 RightJustifiedStackBit            Abs       1 #00000001 -   745
 RightJustifiedStackFl             Abs      74 #0000004A -   743   744   745
 RightJustifiedStackNib            Abs      18 #00000012 -   744
=RomId                             Abs     807 #00000327 -   928
 SEMI                              Ext                   -  1046  1051  1100
                                        1102  1107  1112  1117  1131  1193  1209
                                        1244  1249  1296  1298  1303  1308  1313
                                        1327  1388  1416  1454  1456  1461  1478
                                        1506  1553  1555  1557  1562  1567  1572
                                        1586  1655  1685  1690  1695  1700  1714
                                        1790  1825  1830  1835  1840  1854  1881
                                        1909  1955  1999
 SEVEN                             Ext                   -  1983  1984
 SEVENTEEN                         Ext                   -  1575  1703
 ShowPrecBit                       Abs       0 #00000000 -   292
 ShowPrecFl                        Abs      53 #00000035 -   161   291   292
 ShowPrecNib                       Abs      13 #0000000D -   291
 SmallFontChooseBit                Abs       1 #00000001 -   793
 SmallFontChooseFl                 Abs      90 #0000005A -   791   792   793
 SmallFontChooseNib                Abs      22 #00000016 -   792
 SmallFontEQWEditBit               Abs       1 #00000001 -   769
 SmallFontEQWEditFl                Abs      82 #00000052 -   767   768   769
 SmallFontEQWEditNib               Abs      20 #00000014 -   768
 SmallFontEQWGrobBit               Abs       0 #00000000 -   766
 SmallFontEQWGrobFl                Abs      81 #00000051 -   764   765   766
 SmallFontEQWGrobNib               Abs      20 #00000014 -   765
 SmallFontEQWStackBit              Abs       3 #00000003 -   763
 SmallFontEQWStackFl               Abs      80 #00000050 -   761   762   763
 SmallFontEQWStackNib              Abs      19 #00000013 -   762
 SolutionsBit                      Abs       0 #00000000 -   295
 SolutionsFl                       Abs       1 #00000001 -   115   294   295
 SolutionsNib                      Abs       0 #00000000 -   294
 SystemRPLStackBit                 Abs       0 #00000000 -   778
 SystemRPLStackFl                  Abs      85 #00000055 -   776   777   778
 SystemRPLStackNib                 Abs      21 #00000015 -   777
 TEN                               Ext                   -   948   954
 THIRTEEN                          Ext                   -  1130  1326  1585
                                        1713  1853  1908  1954
 THIRTYFIVE                        Ext                   -  1897
 THIRTYSEVEN                       Ext                   -   978
 TRUE                              Ext                   -  1048  1104  1109
                                        1246  1300  1305  1458  1559  1564  1652
                                        1687  1692  1787  1827  1832
 TWENTYEIGHT                       Ext                   -   972
 TWENTYFIVE                        Ext                   -  1842
 TWENTYSIX                         Ext                   -  1843
 TWENTYTWO                         Ext                   -  1119  1574  1896
                                        1942
 TWO                               Ext                   -  1134  1330  1589
                                        1717  1857  1912  1958
 TriAlphaBit                       Abs       3 #00000003 -   298
 TriAlphaFl                        Abs      60 #0000003C -   168   297   298
 TriAlphaNib                       Abs      14 #0000000E -   297
 TriUserBit                        Abs       0 #00000000 -   301
 TriUserFl                         Abs      61 #0000003D -   169   300   301
 TriUserNib                        Abs      15 #0000000F -   300
 UM>?                              Ext                   -  1390  1480
 UnderfActBit                      Abs       3 #00000003 -   304
 UnderfActFl                       Abs      20 #00000014 -   130   303   304
 UnderfActNib                      Abs       4 #00000004 -   303
 UnderfNegBit                      Abs       2 #00000002 -   307
 UnderfNegFl                       Abs      23 #00000017 -   133   306   307
 UnderfNegNib                      Abs       5 #00000005 -   306
 UnderfPosBit                      Abs       3 #00000003 -   310
 UnderfPosFl                       Abs      24 #00000018 -   134   309   310
 UnderfPosNib                      Abs       5 #00000005 -   309
 UserKeysBit                       Abs       1 #00000001 -   313
 UserKeysFl                        Abs      62 #0000003E -   170   312   313
 UserKeysNib                       Abs      15 #0000000F -   312
 VerboseBit                        Abs       1 #00000001 -   250
 VerboseFl                         Abs      58 #0000003A -   166   249   250
 VerboseNib                        Abs      14 #0000000E -   249
 VerticalListBit                   Abs       0 #00000000 -   814
 VerticalListFl                    Abs      97 #00000061 -   812   813   814
 VerticalListNib                   Abs      24 #00000018 -   813
 VerticalVectorBit                 Abs       1 #00000001 -   817
 VerticalVectorFl                  Abs      98 #00000062 -   815   816   817
 VerticalVectorNib                 Abs      24 #00000018 -   816
 ZERO                              Ext                   -  1129  1325  1584
                                        1712  1852  1907  1953
 ^IfGetFieldValue                  Ext                   -  1029  1083  1227
                                        1279  1437  1536
 ^IfMain                           Ext                   -  1996
 ^IfSetField                       Ext                   -  1409  1499  1784
                                        1822
 ^IfSetFieldValue                  Ext                   -  1017  1024  1043
                                        1071  1078  1097  1215  1222  1241  1267
                                        1274  1293  1425  1432  1451  1524  1531
                                        1550  1643  1650  1676  1683  1773  1780
                                        1811  1818
 case                              Ext                   -  1001  1054  1171
                                        1252  1366  1464  1625  1658  1756  1793
 hasALIAS                          Abs       2 #00000002 -   326
 hasCOLCT                          Abs       2 #00000002 -   332
 hasDER                            Abs       8 #00000008 -   330
 hasEXPND                          Abs       1 #00000001 -   333
 hasFORM                           Abs       8 #00000008 -   336
 hasHELP                           Abs       4 #00000004 -   324
 hasINTG                           Abs       4 #00000004 -   337
 hasINV                            Abs       4 #00000004 -   331
 hasPDATA                          Abs       1 #00000001 -   327
 hasPROMPTM                        Abs       4 #00000004 -   325
 hasVUNS                           Abs       1 #00000001 -   339
 hasWHERE                          Abs       2 #00000002 -   338
 nonALG                            Abs       8 #00000008 -   323
 pdCM                              Abs       6 #00000006 -   348
 pdEQ                              Abs       7 #00000007 -   349
 pdEX                              Abs       0 #00000000 -   342
 pdLP                              Abs       4 #00000004 -   346
 pdOP                              Abs       1 #00000001 -   343
 pdOS0                             Abs       8 #00000008 -   350
 pdOS1                             Abs       9 #00000009 -   351
 pdOS2                             Abs      10 #0000000A -   352
 pdOS3                             Abs      11 #0000000B -   353
 pdOS4                             Abs      12 #0000000C -   354
 pdOS5                             Abs      13 #0000000D -   355
 pdOS6                             Abs      14 #0000000E -   356
 pdOS7                             Abs      15 #0000000F -   357
 pdQE                              Abs       2 #00000002 -   344
 pdQN                              Abs       3 #00000003 -   345
 pdRP                              Abs       5 #00000005 -   347
 umEND                             Ext                   -  1008  1188  1203
                                        1373  1387  1477  1633  1763  1880
 umP                               Ext                   -  1202
Saturn Assembler                                       Fri Jun 19 12:17:08 2009
V3.0.9 (04/15/2007)   Statistics                         ALTform.a      Page    3

Input Parameters

  Source file name is ALTform.a

  Listing file name is ALTform.l

  Object file name is ALTform.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
