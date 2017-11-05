Saturn Assembler                                       Sun Jun 07 19:41:28 2009
V3.0.9 (04/15/2007)                                      POL3.a         Page    1

    1               * File  POL3.s  1
    2               * RPL
    3               * File  POL3.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\POL\POL3.s, part of the POL3.hpp project, created by <> on 10/05/2009
    5               ********************************************************************
    6               * DESCRIPTION:     Define a 1 key menu labelled "KEY" allowing
    7               *                  no-shift, left-shift and right-shift actions which
    8               *                  display the plane of the key (Primary, Left-Shift,
    9               *                  Right-Shift).  The program waits for any key press
   10               *                  to continue.  Press ON key to exit.
   11               *                  #Keycode definitions for HP48 and HP50 listed.
   12               * COMPATIBILITY:   HP48  ( Must use HP48 kc & kp defs. )
   13               *                  HP50  ( Must include Header.H )
   14               *
   15               * File  POL3.s  13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.H
   17
   18
   19               * RPL
   20               * insure RPL-mode exit
   21
   22               * ( Rad
   23
   24               * ( %2PI
   25               * ( %PI/24
   26
   27
   28
   29
   30               * ( 1=1Var, 2=2Var Statistic
   31               * ( 1=Histogram, 2=BoxWhisker
   32
   33
   34
   35
   36
   37               * ASSEMBLE
   38               DefSysF64-33 EQU        #00000000
   39               DefSysF32-01 EQU        #04010FF0
   40               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   41               DefSysF97-128 EQU       #00000000
   42
   43               * RPL
   44
   45
   46               * ( solution mode
   47               * ( constants mode
   48               * ( results mode
   49               * ( careful evaluation mode
   50
   51               * ( binary integer wordsize
   52               * must start on nibble boundary
   53               * ( binary integer base
   54               * must follow "fnBinWordS6"
   55
   56               * ( financial BEGIN/END mode
   57               * ( complex number and vector
   58               * mode
   59               * ( angle mode
   60               * must start on a nibble boundary
   61               * ( complex 2D mode
   62               * ( underflow action
   63               * ( overflow action
   64               * ( infinite result action
   65               * ( underflow-negative indicator
   66               * ( underflow-positive indicator
   67               * ( overflow indicator
   68               * ( infinite result indicator
   69               * ( symbolic-comples decompilation
   70               * ( simultaneous plot mode
   71               * ( axis drawing plot mode
   72
   73               * ( connect points mode
   74               * ( graphics cursor type mode
   75               * ( I/O device
   76               * ( print device
   77               * ( I/O data format
   78               * ( variable overwrite mode
   79               * ( double-space print mode
   80               * ( suppress auto CR mode
   81               * ( suppress I/O status messages
   82
   83
   84               * ( clock display mode
   85               * ( clock display format
   86               * ( date format
   87               * ( reschedule unacknowledged
   88               * repeat alarms mode
   89               * ( delete acknowledged non-repeat
   90               * alarms mode
   91
   92               * ( number of decimal digits
   93               * must start on nibble boundary
   94               * ( number display format
   95               * must start on nibble boundary
   96               * ( radix mark
   97               * ( multi-line display mode
   98               * ( show precedence mode
   99               * ( zero out tiny matrix elements
  100
  101               * ( last arguments mode
  102               * ( error beep mode
  103               * ( alarm beep mode
  104               * ( verbose display mode
  105               * ( variable name only mode
  106               * ( 3-way alpha mode
  107               * ( 3-way user keys mode
  108               * ( user keys mode
  109               * ( special parser mode
  110               * ( index wraparound indicator
  111
  112
  113               * ASSEMBLE
  114               SolutionsFl  EQU 1
  115               ConstantsFl  EQU 2
  116               ResultsFl    EQU 3
  117               CarefulFl    EQU 4
  118
  119               BinWordSFl1  EQU 5      must start on a nibble boundary
  120               BinWordSBCt  EQU 6      number of bits
  121               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  122               BinBaseBCt   EQU 2      number of bits
  123
  124               ComVecDiFl1  EQU 15
  125               ComVecDiBCt  EQU 2      number of bits
  126               AngleFl1     EQU 17     must start on a nibble boundary
  127               AngleBCt     EQU 2      number of bits
  128               Complex2DFl  EQU 19
  129               UnderfActFl  EQU 20
  130               OverfActFl   EQU 21
  131               InfResActFl  EQU 22
  132               UnderfNegFl  EQU 23
  133               UnderfPosFl  EQU 24
  134               OverflowFl   EQU 25
  135               InfResultFl  EQU 26
  136
  137               FunctPlotFl  EQU 30
  138               ConnectPtFl  EQU 31
  139               GCursorFl    EQU 32
  140               IODeviceFl   EQU 33
  141               PrintDevFl   EQU 34
  142               IODataFmtFl  EQU 35
  143               OverwriteFl  EQU 36
  144               DblSpaceFl   EQU 37
  145               NoAutoCRFl   EQU 38
  146               NoIOStsMsgFl EQU 39
  147
  148               ClockOnFl    EQU 40
  149               ClockFmtFl   EQU 41
  150               DateFmtFl    EQU 42
  151               ResRepAlmFl  EQU 43
  152               DelNRAlmFl   EQU 44
  153
  154               NumDigsFl1   EQU 45     must start on a nibble boundary
  155               NumDigsBCt   EQU 4      number of bits
  156               NumDispFl1   EQU 49     must start on a nibble boundary
  157               NumDispBCt   EQU 2      number of bits
  158               RadixFl      EQU 51
  159               MultiDispFl  EQU 52
  160               ShowPrecFl   EQU 53
  161
  162               LastArgsFl   EQU 55
  163               ErrorBeepFl  EQU 56
  164               AlarmBeepFl  EQU 57
  165               VerboseFl    EQU 58
  166               FastEqViewFl EQU 59
  167               TriAlphaFl   EQU 60
  168               TriUserFl    EQU 61
  169               UserKeysFl   EQU 62
  170               NoParseFl    EQU 63
  171               IndexWrapFl  EQU 64
  172
  173
  174
  175               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  176               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  177
  178               AngleNib     EQU ((AngleFl1)-1)/4
  179               AngleBit1    EQU ((AngleFl1)-1)%4
  180               AngleBit2    EQU (AngleBit1)+1
  181
  182               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  183               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  184
  185               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  186               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  187
  188               CarefulNib   EQU ((CarefulFl)-1)/4
  189               CarefulBit   EQU ((CarefulFl)-1)%4
  190
  191               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  192               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  193
  194               ClockOnNib   EQU ((ClockOnFl)-1)/4
  195               ClockOnBit   EQU ((ClockOnFl)-1)%4
  196
  197               Complex2DNib EQU ((Complex2DFl)-1)/4
  198               Complex2DBit EQU ((Complex2DFl)-1)%4
  199
  200               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  201               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  202
  203               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  204               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  205
  206               ConstantsNib EQU ((ConstantsFl)-1)/4
  207               ConstantsBit EQU ((ConstantsFl)-1)%4
  208
  209               DateFmtNib   EQU ((DateFmtFl)-1)/4
  210               DateFmtBit   EQU ((DateFmtFl)-1)%4
  211
  212               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  213               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  214
  215               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  216               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  217
  218               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  219               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  220
  221               FastEViewNib EQU ((FastEqViewFl)-1)/4
  222               FastEViewBit EQU ((FastEqViewFl)-1)%4
  223
  224               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  225               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  226
  227               GCursorNib   EQU ((GCursorFl)-1)/4
  228               GCursorBit   EQU ((GCursorFl)-1)%4
  229
  230               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  231               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  232
  233               InfResActNib EQU ((InfResActFl)-1)/4
  234               InfResActBit EQU ((InfResActFl)-1)%4
  235
  236               InfResultNib EQU ((InfResultFl)-1)/4
  237               InfResultBit EQU ((InfResultFl)-1)%4
  238
  239               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  240               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  241
  242               IODeviceNib  EQU ((IODeviceFl)-1)/4
  243               IODeviceBit  EQU ((IODeviceFl)-1)%4
  244
  245               LastArgsNib  EQU ((LastArgsFl)-1)/4
  246               LastArgsBit  EQU ((LastArgsFl)-1)%4
  247
  248               VerboseNib   EQU ((VerboseFl)-1)/4
  249               VerboseBit   EQU ((VerboseFl)-1)%4
  250
  251               MultiDispNib EQU ((MultiDispFl)-1)/4
  252               MultiDispBit EQU ((MultiDispFl)-1)%4
  253
  254               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  255               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  256
  257               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  258               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  259
  260               NoParseNib   EQU ((NoParseFl)-1)/4
  261               NoParseBit   EQU ((NoParseFl)-1)%4
  262
  263               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  264               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  265
  266               NumDispNib   EQU ((NumDispFl1)-1)/4
  267               NumDispBit1  EQU ((NumDispFl1)-1)%4
  268
  269               OverfActNib  EQU ((OverfActFl)-1)/4
  270               OverfActBit  EQU ((OverfActFl)-1)%4
  271
  272               OverflowNib  EQU ((OverflowFl)-1)/4
  273               OverflowBit  EQU ((OverflowFl)-1)%4
  274
  275               OverwriteNib EQU ((OverwriteFl)-1)/4
  276               OverwriteBit EQU ((OverwriteFl)-1)%4
  277
  278               PrintDevNib  EQU ((PrintDevFl)-1)/4
  279               PrintDevBit  EQU ((PrintDevFl)-1)%4
  280
  281               RadixNib     EQU ((RadixFl)-1)/4
  282               RadixBit     EQU ((RadixFl)-1)%4
  283
  284               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  285               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  286
  287               ResultsNib   EQU ((ResultsFl)-1)/4
  288               ResultsBit   EQU ((ResultsFl)-1)%4
  289
  290               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  291               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  292
  293               SolutionsNib EQU ((SolutionsFl)-1)/4
  294               SolutionsBit EQU ((SolutionsFl)-1)%4
  295
  296               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  297               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  298
  299               TriUserNib   EQU ((TriUserFl)-1)/4
  300               TriUserBit   EQU ((TriUserFl)-1)%4
  301
  302               UnderfActNib EQU ((UnderfActFl)-1)/4
  303               UnderfActBit EQU ((UnderfActFl)-1)%4
  304
  305               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  306               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  307
  308               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  309               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  310
  311               UserKeysNib  EQU ((UserKeysFl)-1)/4
  312               UserKeysBit  EQU ((UserKeysFl)-1)%4
  313
  314               * RPL
  315               * RPL
  316               * insure RPL-mode exit
  317
  318
  319               * ASSEMBLE
  320
  321
  322               nonALG EQU 8                    not-allowed-in-algebraics flag
  323               hasHELP EQU 4                   has-help-data flag
  324               hasPROMPTM EQU 4                same as above
  325               hasALIAS EQU 2                  has-algebraic-alias flag
  326               hasPDATA EQU 1                  has-parse-data flag
  327
  328
  329               hasDER EQU 8                    has-derivative flag
  330               hasINV EQU 4                    has-inverse flag
  331               hasCOLCT EQU 2                  has-COLCT-data flag
  332               hasEXPND EQU 1                  has-EXPND-data flag
  333
  334
  335               hasFORM EQU 8                   has-FORM-menu flag
  336               hasINTG EQU 4                   has-Integral-data flag
  337               hasWHERE EQU 2                  has-WHERE-code flag
  338               hasVUNS EQU 1                   has-veryunsymin-code flag
  339
  340
  341               pdEX EQU #0             general expression
  342               pdOP EQU #1             operator
  343               pdQE EQU #2             quoted expression
  344               pdQN EQU #3             quoted name
  345               pdLP EQU #4             left parenthesis
  346               pdRP EQU #5             right parenthesis
  347               pdCM EQU #6             comma (non-radix)
  348               pdEQ EQU #7             equal-sign separator
  349               pdOS0 EQU #8            optional repeat 0
  350               pdOS1 EQU #9            optional repeat 1
  351               pdOS2 EQU #A            optional repeat 2
  352               pdOS3 EQU #B            optional repeat 3
  353               pdOS4 EQU #C            optional repeat 4
  354               pdOS5 EQU #D            optional repeat 5
  355               pdOS6 EQU #E            optional repeat 6
  356               pdOS7 EQU #F            optional repeat 7
  357
  358               * RPL
  359               * RPL
  360               * insure RPL-mode exit
  361
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
  378               * RPL
  379               * insure RPL-mode exit
  380
  381               * RPL
  382               * insure RPL-mode exit
  383
  384
  385
  386
  387
  388
  389
  390
  391
  392               * ( for internal use only
  393
  394
  395
  396
  397
  398
  399
  400
  401
  402
  403               * ( decimal 67
  404               * ( decimal 86
  405               * ( decimal 82
  406               * ( decimal 85
  407               * ( decimal 101
  408               * ( decimal 97
  409               * ( decimal 100
  410               * ( decimal 113
  411               * ( decimal 112
  412
  413               * ( check width
  414               * ( field character width
  415
  416               * ( decimal 67
  417               * ( decimal 85
  418               * ( decimal 97
  419
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
  436               * RPL
  437               * insure RPL-mode exit
  438
  439               * ( decimal 66
  440               * ( decimal 67
  441               * ( decimal 69
  442               * ( decimal 82
  443               * ( decimal 83
  444               * ( decimal 84
  445               * ( decimal 85
  446               * ( decimal 86
  447               * ( decimal 87
  448
  449
  450               * ( norm-view default visible row count
  451               * ( default first row X location
  452               * ( default first row Y location
  453               * ( default row width
  454               * ( default row height
  455
  456               * ( max-view width
  457               * ( max-view height
  458               * ( max-view default visible row count
  459
  460               * ( prompt area height
  461
  462               * ( more-up/down icon width
  463
  464
  465
  466               * RPL
  467               * insure RPL-mode exit
  468
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
  683               * RPL
  684               * insure RPL-mode exit
  685
  686
  687
  688               * ( set for informations
  689               * ( set for step by step mode on
  690               * ( internal use: true if VXXL success
  691               * ( set for no gcd computations
  692               * ( set for complex mode
  693               * ( internal use:       LN->-INV[-LN]]
  694               * ( set for approx mode
  695               * ( set for TSIMP call inside SERIES
  696               * ( internal use:       modular computation
  697               * ( internal use:       testing remainder=0
  698               * ( set to allow numeric factorization
  699               * ( set for large matrices
  700               * ( set: don't simplify inside non rational operation
  701               * ( set to see i as an irrquad c=-1
  702               * ( set to disable linearity simplif.
  703               * ( set for increasing power x+1 -> 1+x
  704               * ( internal use:       sqrt not as irrquad
  705               * ( set if sin are prefered to cos
  706               * ( set for menu as choosebox
  707               * ( set if xINT is not simplified
  708               * ( set if non rigourous mode
  709               * ( set to allow silent mode switch
  710               * ( set if xLN returns LN[ABS[]]
  711
  712
  713               * ASSEMBLE
  714
  715               MultiLineFl     EQU     65
  716               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  717               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  718               MultiLineStringsFl      EQU     66
  719               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  720               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  721               DigitalClockFl  EQU     67
  722               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  723               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  724               CmdAutoIndentFl EQU     68
  725               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  726               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  727               FullScreenEditFl        EQU     69
  728               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  729               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  730               MultiLine2GROBFl        EQU     70
  731               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  732               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  733               DesasmWithAdrFl EQU     71
  734               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  735               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  736               BigFontStackFl  EQU     72
  737               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  738               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  739               BigFontCmdFl    EQU     73
  740               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  741               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  742               RightJustifiedStackFl   EQU     74
  743               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  744               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  745               KeystrokeBeepFl EQU     75
  746               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  747               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  748               FilerConfirmationFl     EQU     76
  749               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  750               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  751               FilerConfirmFl  EQU     77
  752               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  753               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  754               KernelParamFl   EQU     78
  755               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  756               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  757               PrettyPrintFl   EQU     79
  758               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  759               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  760               SmallFontEQWStackFl     EQU     80
  761               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  762               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  763               SmallFontEQWGrobFl      EQU     81
  764               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  765               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  766               SmallFontEQWEditFl      EQU     82
  767               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  768               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  769               GrobDisplayFl   EQU     83
  770               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  771               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  772               MKSmallFontMenuFl       EQU     84
  773               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  774               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  775               SystemRPLStackFl        EQU     85
  776               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  777               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  778               MASDDecompilerFl        EQU     86
  779               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  780               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  781               RecursiveStackFl        EQU     87
  782               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  783               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  784               RecursiveEditFl EQU     88
  785               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  786               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  787               AddressesCLEFl  EQU     89
  788               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  789               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  790               SmallFontChooseFl       EQU     90
  791               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  792               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  793               ArrayOnlyFl     EQU     91
  794               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  795               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  796               MLMASDModeFl    EQU     92
  797               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  798               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  799               ErableHeaderFl  EQU     93
  800               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  801               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  802               AutoSaveFl      EQU     94
  803               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  804               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  805               AlgebraicModeFl EQU     95
  806               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  807               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  808               MenuOnFl        EQU     96
  809               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  810               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  811               VerticalListFl  EQU     97
  812               VerticalListNib EQU     ((VerticalListFl)-1)/4
  813               VerticalListBit EQU     ((VerticalListFl)-1)%4
  814               VerticalVectorFl        EQU     98
  815               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  816               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  817
  818
  819               ComplexFl       EQU     103
  820               ComplexNib      EQU     ((ComplexFl)-1)/4
  821               ComplexBit      EQU     ((ComplexFl)-1)%4
  822
  823
  824               ExactModeFl     EQU     105
  825               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  826               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  827
  828
  829               * RPL
  830
  831
  832
  833               * ASSEMBLE
  834                       SETLIST CODE, INCLUDE, PSEUDO
  835               * RPL
  836
  837               *|| Resuming file POL3.s at line 13
  838               * Comment/uncomment as appropriate
  839               *DEFINE kpNoShift    ONE             ( HP48 & HP50 )
  840               *DEFINE kpLeftShift  TWO             ( ... )
  841               *DEFINE kpRightShift THREE           ( ... )
  842               *DEFINE kcLeftShift  THIRTYFIVE      ( HP48 )
  843               **DEFINE kcLeftShift  THIRTYSEVEN     ( HP50 )
  844               *DEFINE kcRightShift FORTY           ( HP48 )
  845               **DEFINE kcRightShift FORTYTWO        ( HP50 )
  846               *DEFINE kcOn         FORTYFIVE       ( HP48 )
  847               **DEFINE kcOn         FORTYSEVEN      ( HP50 )
  848               * Main program
  849               * File  POL3.s  26
  850 00000 00000           CON(5)  =DOCOL
  851               * File  POL3.s  27
  852 00005 00000           CON(5)  =0LASTOWDOB!
  853               * Clear protection word
  854               * File  POL3.s  28
  855 0000A 00000           CON(5)  =CK0NOLASTWD
  856               * No arguments
  857               * File  POL3.s  29
  858 0000F 00000           CON(5)  =RECLAIMDISP
  859               * Clear display
  860               * File  POL3.s  30
  861 00014 00000           CON(5)  =ClrDA1IsStat
  862               * Suspend clock
  863               * File  POL3.s  31
  864 00019 00000           CON(5)  =FALSE
  865               * Exit flag [FALSE = continue, TRUE = exit]
  866               * File  POL3.s  32
  867 0001E 00000           CON(5)  ='
  868 00023 00000           CON(5)  =DOLAM
  869 00028 70              CON(2)  7
  870 0002A 2557E6E         NIBASC  \Running\
            696E676
  871               * Exit object
  872               * File  POL3.s  33
  873 00038 00000           CON(5)  =ONE
  874 0003D 00000           CON(5)  =DOBIND
  875               * Create temporary environment
  876               * ParOuterLoop parameters
  877               * File  POL3.s  35
  878 00042 00000           CON(5)  ='
  879 00047 00000           CON(5)  =DOCOL
  880               * Display object
  881               * File  POL3.s  36
  882 0004C 00000           CON(5)  =DA3OK?
  883 00051 00000           CON(5)  =?SEMI
  884               * Exit if menu display is valid
  885               * File  POL3.s  37
  886 00056 00000           CON(5)  =DispMenu.1
  887 0005B 00000           CON(5)  =SetDA3Valid
  888               * Otherwise display the menu
  889               * File  POL3.s  38
  890 00060 00000           CON(5)  =SEMI
  891               * File  POL3.s  39
  892 00065 00000           CON(5)  ='
  893 0006A 00000           CON(5)  =DOCOL
  894               * Hardkey handler
  895               * File  POL3.s  40
  896 0006F 00000           CON(5)  =ONE
  897 00074 00000           CON(5)  =#=casedrop
  898 00079 00000           CON(5)  =DOCOL
  899               * Process no shift keyplane [primary plane]
  900               * File  POL3.s  41
  901 0007E 00000           CON(5)  =DUP#<7
  902 00083 00000           CON(5)  =casedrpfls
  903               * Enable primary softkeys
  904               * File  POL3.s  42
  905 00088 00000           CON(5)  =THIRTYSEVEN
  906 0008D 00000           CON(5)  =#=casedrpfls
  907               * Enable left shift key
  908               * File  POL3.s  43
  909 00092 00000           CON(5)  =FORTYTWO
  910 00097 00000           CON(5)  =#=casedrpfls
  911               * Enable right shift key
  912               * File  POL3.s  44
  913 0009C 00000           CON(5)  =FORTYSEVEN
  914 000A1 00000           CON(5)  =?CaseKeyDef
  915 000A6 00000           CON(5)  =DOCOL
  916               * Enable On key
  917               * File  POL3.s  45
  918 000AB 00000           CON(5)  =TakeOver
  919               * Custom key definition placeholder
  920               * File  POL3.s  46
  921 000B0 00000           CON(5)  =TRUE
  922               * Exit Flag [TRUE = exit]
  923               * File  POL3.s  47
  924 000B5 00000           CON(5)  ='
  925 000BA 00000           CON(5)  =DOLAM
  926 000BF 70              CON(2)  7
  927 000C1 2557E6E         NIBASC  \Running\
            696E676
  928 000CF 00000           CON(5)  =STO
  929               * STO in Exit Object
  930               * File  POL3.s  48
  931 000D4 00000           CON(5)  =SEMI
  932               * File  POL3.s  49
  933 000D9 00000           CON(5)  =DROP
  934 000DE 00000           CON(5)  ='DoBadKeyT
  935               * Reject all other keys
  936               * File  POL3.s  50
  937 000E3 00000           CON(5)  =SEMI
  938               * File  POL3.s  51
  939 000E8 00000           CON(5)  =TWO
  940 000ED 00000           CON(5)  =#=casedrop
  941 000F2 00000           CON(5)  =DOCOL
  942               * Process left shift keyplane
  943               * File  POL3.s  52
  944 000F7 00000           CON(5)  =DUP#<7
  945 000FC 00000           CON(5)  =casedrpfls
  946               * Enable primary softkeys
  947               * File  POL3.s  53
  948 00101 00000           CON(5)  =THIRTYSEVEN
  949 00106 00000           CON(5)  =#=casedrpfls
  950               * Enable left shift key
  951               * File  POL3.s  54
  952 0010B 00000           CON(5)  =FORTYTWO
  953 00110 00000           CON(5)  =#=casedrpfls
  954               * Enable right shift key
  955               * File  POL3.s  55
  956 00115 00000           CON(5)  =DROP
  957 0011A 00000           CON(5)  ='DoBadKeyT
  958               * Reject all other keys
  959               * File  POL3.s  56
  960 0011F 00000           CON(5)  =SEMI
  961               * File  POL3.s  57
  962 00124 00000           CON(5)  =THREE
  963 00129 00000           CON(5)  =#=casedrop
  964 0012E 00000           CON(5)  =DOCOL
  965               * Process right shift keyplane
  966               * File  POL3.s  58
  967 00133 00000           CON(5)  =DUP#<7
  968 00138 00000           CON(5)  =casedrpfls
  969               * Enable primary softkeys
  970               * File  POL3.s  59
  971 0013D 00000           CON(5)  =THIRTYSEVEN
  972 00142 00000           CON(5)  =#=casedrpfls
  973               * Enable left shift key
  974               * File  POL3.s  60
  975 00147 00000           CON(5)  =FORTYTWO
  976 0014C 00000           CON(5)  =#=casedrpfls
  977               * Enable right shift key
  978               * File  POL3.s  61
  979 00151 00000           CON(5)  =FORTYSEVEN
  980 00156 00000           CON(5)  =#=casedrpfls
  981               * Enable On key
  982               * File  POL3.s  62
  983 0015B 00000           CON(5)  =DROP
  984 00160 00000           CON(5)  ='DoBadKeyT
  985               * Reject all other keys
  986               * File  POL3.s  63
  987 00165 00000           CON(5)  =SEMI
  988               * File  POL3.s  64
  989 0016A 00000           CON(5)  =2DROP
  990 0016F 00000           CON(5)  ='DoBadKeyT
  991               * Reject all other keyplanes
  992               * File  POL3.s  65
  993 00174 00000           CON(5)  =SEMI
  994               * File  POL3.s  66
  995 00179 00000           CON(5)  =TRUE
  996               * NonAppKey Flag TRUE = allow softkey control
  997               * File  POL3.s  67
  998 0017E 00000           CON(5)  =TRUE
  999               * DoStdKeys Flag TRUE = ignore user key assignments
 1000               * File  POL3.s  68
 1001 00183 00000           CON(5)  =DOLIST
 1002               * Softkey Menu
 1003               * File  POL3.s  69
 1004 00188 00000           CON(5)  =DOLIST
 1005               * File  POL3.s  70
 1006 0018D 00000           CON(5)  =DOCSTR
 1007 00192 B0000           CON(5)  11
 1008 00197 B45495          NIBASC  \KEY\
 1009               * $Label
 1010               * File  POL3.s  71
 1011 0019D 00000           CON(5)  =DOLIST
 1012               * Softkey action object
 1013               * File  POL3.s  72
 1014 001A2 00000           CON(5)  =DOCOL
 1015               * Primary plane
 1016               * File  POL3.s  73
 1017 001A7 00000           CON(5)  =TakeOver
 1018               * Custom key definition placeholder
 1019               * File  POL3.s  74
 1020 001AC 00000           CON(5)  =DOCSTR
 1021 001B1 31000           CON(5)  19
 1022 001B6 052796D         NIBASC  \Primary\
            6162797
 1023               * $
 1024               * File  POL3.s  75
 1025 001C4 00000           CON(5)  =DISPROW3
 1026               * Display $
 1027               * File  POL3.s  76
 1028 001C9 00000           CON(5)  =WaitForKey
 1029 001CE 00000           CON(5)  =2DROP
 1030               * Wait for ANY key press and DROP #Keycode #Keyplane
 1031               *                VERYSLOW                  ( Delay )
 1032               * File  POL3.s  78
 1033 001D3 00000           CON(5)  =DOCLLCD
 1034               * Clear screen
 1035               * File  POL3.s  79
 1036 001D8 00000           CON(5)  =SEMI
 1037               * File  POL3.s  80
 1038 001DD 00000           CON(5)  =DOCOL
 1039               * Left-shift keyplane
 1040               * File  POL3.s  81
 1041 001E2 00000           CON(5)  =TakeOver
 1042               * Custom key definition placeholder
 1043               * File  POL3.s  82
 1044 001E7 00000           CON(5)  =DOCSTR
 1045 001EC 91000           CON(5)  25
 1046 001F1 C456664         NIBASC  \Left-Shift\
            7D23586
            966647
 1047               * $
 1048               * File  POL3.s  83
 1049 00205 00000           CON(5)  =DISPROW4
 1050               * Display $
 1051               * File  POL3.s  84
 1052 0020A 00000           CON(5)  =WaitForKey
 1053 0020F 00000           CON(5)  =2DROP
 1054               * Wait for ANY key press and DROP #Keycode #Keyplane
 1055               *                  VERYSLOW                  ( Delay )
 1056               * File  POL3.s  86
 1057 00214 00000           CON(5)  =DOCLLCD
 1058               * Clear screen
 1059               * File  POL3.s  87
 1060 00219 00000           CON(5)  =SEMI
 1061               * File  POL3.s  88
 1062 0021E 00000           CON(5)  =DOCOL
 1063               * Right-shift keyplane
 1064               * File  POL3.s  89
 1065 00223 00000           CON(5)  =TakeOver
 1066               * Custome key definition placeholder
 1067               * File  POL3.s  90
 1068 00228 00000           CON(5)  =DOCSTR
 1069 0022D B1000           CON(5)  27
 1070 00232 2596768         NIBASC  \Right-Shift\
            647D235
            86966647
 1071               * $
 1072               * File  POL3.s  91
 1073 00248 00000           CON(5)  =DISPROW5
 1074               * Display $
 1075               * File  POL3.s  92
 1076 0024D 00000           CON(5)  =WaitForKey
 1077 00252 00000           CON(5)  =2DROP
 1078               * Wait for ANY key press and DROP #Keycode #Keyplane
 1079               *                VERYSLOW                  ( Delay )
 1080               * File  POL3.s  94
 1081 00257 00000           CON(5)  =DOCLLCD
 1082               * Clear screen
 1083               * File  POL3.s  95
 1084 0025C 00000           CON(5)  =SEMI
 1085               * File  POL3.s  96
 1086 00261 00000           CON(5)  =SEMI
 1087               * File  POL3.s  97
 1088 00266 00000           CON(5)  =SEMI
 1089               * File  POL3.s  98
 1090 0026B 00000           CON(5)  =SEMI
 1091               * File  POL3.s  99
 1092 00270 00000           CON(5)  =ONEFALSE
 1093               * #Menu row, Suspend Flag
 1094               * File  POL3.s  100
 1095 00275 00000           CON(5)  ='
 1096 0027A 00000           CON(5)  =DOLAM
 1097 0027F 70              CON(2)  7
 1098 00281 2557E6E         NIBASC  \Running\
            696E676
 1099               * Exit Object
 1100               * File  POL3.s  101
 1101 0028F 00000           CON(5)  ='
 1102 00294 00000           CON(5)  =ERRJMP
 1103               * Error Object
 1104               * File  POL3.s  102
 1105 00299 00000           CON(5)  =ParOuterLoop
 1106               * Run the POL
 1107               * File  POL3.s  103
 1108 0029E 00000           CON(5)  =ABND
 1109               * Abandon temporary environment
 1110               * File  POL3.s  104
 1111 002A3 00000           CON(5)  =ClrDAsOK
 1112               * Redraw display
 1113               * File  POL3.s  105
 1114 002A8 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun Jun 07 19:41:28 2009
V3.0.9 (04/15/2007)   Symbol Table                       POL3.a         Page    2

 #=casedrop                        Ext                   -   897   940   963
 #=casedrpfls                      Ext                   -   906   910   949
                                         953   972   976   980
 '                                 Ext                   -   867   878   892
                                         924  1095  1101
 'DoBadKeyT                        Ext                   -   934   957   984
                                         990
 0LASTOWDOB!                       Ext                   -   852
 2DROP                             Ext                   -   989  1029  1053
                                        1077
 ?CaseKeyDef                       Ext                   -   914
 ?SEMI                             Ext                   -   883
 ABND                              Ext                   -  1108
 AddressesCLEBit                   Abs       0 #00000000 -   789
 AddressesCLEFl                    Abs      89 #00000059 -   787   788   789
 AddressesCLENib                   Abs      22 #00000016 -   788
 AlarmBeepBit                      Abs       0 #00000000 -   176
 AlarmBeepFl                       Abs      57 #00000039 -   164   175   176
 AlarmBeepNib                      Abs      14 #0000000E -   175
 AlgebraicModeBit                  Abs       2 #00000002 -   807
 AlgebraicModeFl                   Abs      95 #0000005F -   805   806   807
 AlgebraicModeNib                  Abs      23 #00000017 -   806
 AngleBCt                          Abs       2 #00000002 -   127
 AngleBit1                         Abs       0 #00000000 -   179   180
 AngleBit2                         Abs       1 #00000001 -   180
 AngleFl1                          Abs      17 #00000011 -   126   178   179
 AngleNib                          Abs       4 #00000004 -   178
 ArrayOnlyBit                      Abs       2 #00000002 -   795
 ArrayOnlyFl                       Abs      91 #0000005B -   793   794   795
 ArrayOnlyNib                      Abs      22 #00000016 -   794
 AutoSaveBit                       Abs       1 #00000001 -   804
 AutoSaveFl                        Abs      94 #0000005E -   802   803   804
 AutoSaveNib                       Abs      23 #00000017 -   803
 BigFontCmdBit                     Abs       0 #00000000 -   741
 BigFontCmdFl                      Abs      73 #00000049 -   739   740   741
 BigFontCmdNib                     Abs      18 #00000012 -   740
 BigFontStackBit                   Abs       3 #00000003 -   738
 BigFontStackFl                    Abs      72 #00000048 -   736   737   738
 BigFontStackNib                   Abs      17 #00000011 -   737
 BinBaseBCt                        Abs       2 #00000002 -   122
 BinBaseBit1                       Abs       2 #00000002 -   183
 BinBaseFl1                        Abs      11 #0000000B -   121   182   183
 BinBaseNib                        Abs       2 #00000002 -   182
 BinWordSBCt                       Abs       6 #00000006 -   120
 BinWordSBit1                      Abs       0 #00000000 -   186
 BinWordSFl1                       Abs       5 #00000005 -   119   185   186
 BinWordSNib                       Abs       1 #00000001 -   185
 CK0NOLASTWD                       Ext                   -   855
 CarefulBit                        Abs       3 #00000003 -   189
 CarefulFl                         Abs       4 #00000004 -   117   188   189
 CarefulNib                        Abs       0 #00000000 -   188
 ClockFmtBit                       Abs       0 #00000000 -   192
 ClockFmtFl                        Abs      41 #00000029 -   149   191   192
 ClockFmtNib                       Abs      10 #0000000A -   191
 ClockOnBit                        Abs       3 #00000003 -   195
 ClockOnFl                         Abs      40 #00000028 -   148   194   195
 ClockOnNib                        Abs       9 #00000009 -   194
 ClrDA1IsStat                      Ext                   -   861
 ClrDAsOK                          Ext                   -  1111
 CmdAutoIndentBit                  Abs       3 #00000003 -   726
 CmdAutoIndentFl                   Abs      68 #00000044 -   724   725   726
 CmdAutoIndentNib                  Abs      16 #00000010 -   725
 ComVecDiBCt                       Abs       2 #00000002 -   125
 ComVecDiBit1                      Abs       2 #00000002 -   201
 ComVecDiFl1                       Abs      15 #0000000F -   124   200   201
 ComVecDiNib                       Abs       3 #00000003 -   200
 Complex2DBit                      Abs       2 #00000002 -   198
 Complex2DFl                       Abs      19 #00000013 -   128   197   198
 Complex2DNib                      Abs       4 #00000004 -   197
 ComplexBit                        Abs       2 #00000002 -   821
 ComplexFl                         Abs     103 #00000067 -   819   820   821
 ComplexNib                        Abs      25 #00000019 -   820
 ConnectPtBit                      Abs       2 #00000002 -   204
 ConnectPtFl                       Abs      31 #0000001F -   138   203   204
 ConnectPtNib                      Abs       7 #00000007 -   203
 ConstantsBit                      Abs       1 #00000001 -   207
 ConstantsFl                       Abs       2 #00000002 -   115   206   207
 ConstantsNib                      Abs       0 #00000000 -   206
 DA3OK?                            Ext                   -   882
 DISPROW3                          Ext                   -  1025
 DISPROW4                          Ext                   -  1049
 DISPROW5                          Ext                   -  1073
 DOBIND                            Ext                   -   874
 DOCLLCD                           Ext                   -  1033  1057  1081
 DOCOL                             Ext                   -   850   879   893
                                         898   915   941   964  1014  1038  1062
 DOCSTR                            Ext                   -  1006  1020  1044
                                        1068
 DOLAM                             Ext                   -   868   925  1096
 DOLIST                            Ext                   -  1001  1004  1011
 DROP                              Ext                   -   933   956   983
 DUP#<7                            Ext                   -   901   944   967
 DateFmtBit                        Abs       1 #00000001 -   210
 DateFmtFl                         Abs      42 #0000002A -   150   209   210
 DateFmtNib                        Abs      10 #0000000A -   209
 DblSpaceBit                       Abs       0 #00000000 -   213
 DblSpaceFl                        Abs      37 #00000025 -   144   212   213
 DblSpaceNib                       Abs       9 #00000009 -   212
 DefSysF32-01                      Abs67178480 #04010FF0 -    39
 DefSysF64-33                      Abs       0 #00000000 -    38
 DefSysF65-96                      Abs1107296256 #42000000 -    40
 DefSysF97-128                     Abs       0 #00000000 -    41
 DelNRAlmBit                       Abs       3 #00000003 -   216
 DelNRAlmFl                        Abs      44 #0000002C -   152   215   216
 DelNRAlmNib                       Abs      10 #0000000A -   215
 DesasmWithAdrBit                  Abs       2 #00000002 -   735
 DesasmWithAdrFl                   Abs      71 #00000047 -   733   734   735
 DesasmWithAdrNib                  Abs      17 #00000011 -   734
 DigitalClockBit                   Abs       2 #00000002 -   723
 DigitalClockFl                    Abs      67 #00000043 -   721   722   723
 DigitalClockNib                   Abs      16 #00000010 -   722
 DispMenu.1                        Ext                   -   886
 ERRJMP                            Ext                   -  1102
 ErableHeaderBit                   Abs       0 #00000000 -   801
 ErableHeaderFl                    Abs      93 #0000005D -   799   800   801
 ErableHeaderNib                   Abs      23 #00000017 -   800
 ErrorBeepBit                      Abs       3 #00000003 -   219
 ErrorBeepFl                       Abs      56 #00000038 -   163   218   219
 ErrorBeepNib                      Abs      13 #0000000D -   218
 ExactModeBit                      Abs       0 #00000000 -   826
 ExactModeFl                       Abs     105 #00000069 -   824   825   826
 ExactModeNib                      Abs      26 #0000001A -   825
 FALSE                             Ext                   -   864
 FORTYSEVEN                        Ext                   -   913   979
 FORTYTWO                          Ext                   -   909   952   975
 FastEViewBit                      Abs       2 #00000002 -   222
 FastEViewNib                      Abs      14 #0000000E -   221
 FastEqViewFl                      Abs      59 #0000003B -   166   221   222
 FilerConfirmBit                   Abs       0 #00000000 -   753
 FilerConfirmFl                    Abs      77 #0000004D -   751   752   753
 FilerConfirmNib                   Abs      19 #00000013 -   752
 FilerConfirmationBit              Abs       3 #00000003 -   750
 FilerConfirmationFl               Abs      76 #0000004C -   748   749   750
 FilerConfirmationNib              Abs      18 #00000012 -   749
 FullScreenEditBit                 Abs       0 #00000000 -   729
 FullScreenEditFl                  Abs      69 #00000045 -   727   728   729
 FullScreenEditNib                 Abs      17 #00000011 -   728
 FunctPlotBit                      Abs       1 #00000001 -   225
 FunctPlotFl                       Abs      30 #0000001E -   137   224   225
 FunctPlotNib                      Abs       7 #00000007 -   224
 GCursorBit                        Abs       3 #00000003 -   228
 GCursorFl                         Abs      32 #00000020 -   139   227   228
 GCursorNib                        Abs       7 #00000007 -   227
 GrobDisplayBit                    Abs       2 #00000002 -   771
 GrobDisplayFl                     Abs      83 #00000053 -   769   770   771
 GrobDisplayNib                    Abs      20 #00000014 -   770
 IODataFmtBit                      Abs       2 #00000002 -   240
 IODataFmtFl                       Abs      35 #00000023 -   142   239   240
 IODataFmtNib                      Abs       8 #00000008 -   239
 IODeviceBit                       Abs       0 #00000000 -   243
 IODeviceFl                        Abs      33 #00000021 -   140   242   243
 IODeviceNib                       Abs       8 #00000008 -   242
 IndexWrapBit                      Abs       3 #00000003 -   231
 IndexWrapFl                       Abs      64 #00000040 -   171   230   231
 IndexWrapNib                      Abs      15 #0000000F -   230
 InfResActBit                      Abs       1 #00000001 -   234
 InfResActFl                       Abs      22 #00000016 -   131   233   234
 InfResActNib                      Abs       5 #00000005 -   233
 InfResultBit                      Abs       1 #00000001 -   237
 InfResultFl                       Abs      26 #0000001A -   135   236   237
 InfResultNib                      Abs       6 #00000006 -   236
 KernelParamBit                    Abs       1 #00000001 -   756
 KernelParamFl                     Abs      78 #0000004E -   754   755   756
 KernelParamNib                    Abs      19 #00000013 -   755
 KeystrokeBeepBit                  Abs       2 #00000002 -   747
 KeystrokeBeepFl                   Abs      75 #0000004B -   745   746   747
 KeystrokeBeepNib                  Abs      18 #00000012 -   746
 LastArgsBit                       Abs       2 #00000002 -   246
 LastArgsFl                        Abs      55 #00000037 -   162   245   246
 LastArgsNib                       Abs      13 #0000000D -   245
 MASDDecompilerBit                 Abs       1 #00000001 -   780
 MASDDecompilerFl                  Abs      86 #00000056 -   778   779   780
 MASDDecompilerNib                 Abs      21 #00000015 -   779
 MKSmallFontMenuBit                Abs       3 #00000003 -   774
 MKSmallFontMenuFl                 Abs      84 #00000054 -   772   773   774
 MKSmallFontMenuNib                Abs      20 #00000014 -   773
 MLMASDModeBit                     Abs       3 #00000003 -   798
 MLMASDModeFl                      Abs      92 #0000005C -   796   797   798
 MLMASDModeNib                     Abs      22 #00000016 -   797
 MenuOnBit                         Abs       3 #00000003 -   810
 MenuOnFl                          Abs      96 #00000060 -   808   809   810
 MenuOnNib                         Abs      23 #00000017 -   809
 MultiDispBit                      Abs       3 #00000003 -   252
 MultiDispFl                       Abs      52 #00000034 -   159   251   252
 MultiDispNib                      Abs      12 #0000000C -   251
 MultiLine2GROBBit                 Abs       1 #00000001 -   732
 MultiLine2GROBFl                  Abs      70 #00000046 -   730   731   732
 MultiLine2GROBNib                 Abs      17 #00000011 -   731
 MultiLineBit                      Abs       0 #00000000 -   717
 MultiLineFl                       Abs      65 #00000041 -   715   716   717
 MultiLineNib                      Abs      16 #00000010 -   716
 MultiLineStringsBit               Abs       1 #00000001 -   720
 MultiLineStringsFl                Abs      66 #00000042 -   718   719   720
 MultiLineStringsNib               Abs      16 #00000010 -   719
 NoAutoCRBit                       Abs       1 #00000001 -   255
 NoAutoCRFl                        Abs      38 #00000026 -   145   254   255
 NoAutoCRNib                       Abs       9 #00000009 -   254
 NoIOStMsgBit                      Abs       2 #00000002 -   258
 NoIOStMsgNib                      Abs       9 #00000009 -   257
 NoIOStsMsgFl                      Abs      39 #00000027 -   146   257   258
 NoParseBit                        Abs       2 #00000002 -   261
 NoParseFl                         Abs      63 #0000003F -   170   260   261
 NoParseNib                        Abs      15 #0000000F -   260
 NumDigsBCt                        Abs       4 #00000004 -   155
 NumDigsBit1                       Abs       0 #00000000 -   264
 NumDigsFl1                        Abs      45 #0000002D -   154   263   264
 NumDigsNib                        Abs      11 #0000000B -   263
 NumDispBCt                        Abs       2 #00000002 -   157
 NumDispBit1                       Abs       0 #00000000 -   267
 NumDispFl1                        Abs      49 #00000031 -   156   266   267
 NumDispNib                        Abs      12 #0000000C -   266
 ONE                               Ext                   -   873   896
 ONEFALSE                          Ext                   -  1092
 OverfActBit                       Abs       0 #00000000 -   270
 OverfActFl                        Abs      21 #00000015 -   130   269   270
 OverfActNib                       Abs       5 #00000005 -   269
 OverflowBit                       Abs       0 #00000000 -   273
 OverflowFl                        Abs      25 #00000019 -   134   272   273
 OverflowNib                       Abs       6 #00000006 -   272
 OverwriteBit                      Abs       3 #00000003 -   276
 OverwriteFl                       Abs      36 #00000024 -   143   275   276
 OverwriteNib                      Abs       8 #00000008 -   275
 ParOuterLoop                      Ext                   -  1105
 PrettyPrintBit                    Abs       2 #00000002 -   759
 PrettyPrintFl                     Abs      79 #0000004F -   757   758   759
 PrettyPrintNib                    Abs      19 #00000013 -   758
 PrintDevBit                       Abs       1 #00000001 -   279
 PrintDevFl                        Abs      34 #00000022 -   141   278   279
 PrintDevNib                       Abs       8 #00000008 -   278
 RECLAIMDISP                       Ext                   -   858
 RadixBit                          Abs       2 #00000002 -   282
 RadixFl                           Abs      51 #00000033 -   158   281   282
 RadixNib                          Abs      12 #0000000C -   281
 RecursiveEditBit                  Abs       3 #00000003 -   786
 RecursiveEditFl                   Abs      88 #00000058 -   784   785   786
 RecursiveEditNib                  Abs      21 #00000015 -   785
 RecursiveStackBit                 Abs       2 #00000002 -   783
 RecursiveStackFl                  Abs      87 #00000057 -   781   782   783
 RecursiveStackNib                 Abs      21 #00000015 -   782
 ResRepAlmBit                      Abs       2 #00000002 -   285
 ResRepAlmFl                       Abs      43 #0000002B -   151   284   285
 ResRepAlmNib                      Abs      10 #0000000A -   284
 ResultsBit                        Abs       2 #00000002 -   288
 ResultsFl                         Abs       3 #00000003 -   116   287   288
 ResultsNib                        Abs       0 #00000000 -   287
 RightJustifiedStackBit            Abs       1 #00000001 -   744
 RightJustifiedStackFl             Abs      74 #0000004A -   742   743   744
 RightJustifiedStackNib            Abs      18 #00000012 -   743
 SEMI                              Ext                   -   890   931   937
                                         960   987   993  1036  1060  1084  1086
                                        1088  1090  1114
 STO                               Ext                   -   928
 SetDA3Valid                       Ext                   -   887
 ShowPrecBit                       Abs       0 #00000000 -   291
 ShowPrecFl                        Abs      53 #00000035 -   160   290   291
 ShowPrecNib                       Abs      13 #0000000D -   290
 SmallFontChooseBit                Abs       1 #00000001 -   792
 SmallFontChooseFl                 Abs      90 #0000005A -   790   791   792
 SmallFontChooseNib                Abs      22 #00000016 -   791
 SmallFontEQWEditBit               Abs       1 #00000001 -   768
 SmallFontEQWEditFl                Abs      82 #00000052 -   766   767   768
 SmallFontEQWEditNib               Abs      20 #00000014 -   767
 SmallFontEQWGrobBit               Abs       0 #00000000 -   765
 SmallFontEQWGrobFl                Abs      81 #00000051 -   763   764   765
 SmallFontEQWGrobNib               Abs      20 #00000014 -   764
 SmallFontEQWStackBit              Abs       3 #00000003 -   762
 SmallFontEQWStackFl               Abs      80 #00000050 -   760   761   762
 SmallFontEQWStackNib              Abs      19 #00000013 -   761
 SolutionsBit                      Abs       0 #00000000 -   294
 SolutionsFl                       Abs       1 #00000001 -   114   293   294
 SolutionsNib                      Abs       0 #00000000 -   293
 SystemRPLStackBit                 Abs       0 #00000000 -   777
 SystemRPLStackFl                  Abs      85 #00000055 -   775   776   777
 SystemRPLStackNib                 Abs      21 #00000015 -   776
 THIRTYSEVEN                       Ext                   -   905   948   971
 THREE                             Ext                   -   962
 TRUE                              Ext                   -   921   995   998
 TWO                               Ext                   -   939
 TakeOver                          Ext                   -   918  1017  1041
                                        1065
 TriAlphaBit                       Abs       3 #00000003 -   297
 TriAlphaFl                        Abs      60 #0000003C -   167   296   297
 TriAlphaNib                       Abs      14 #0000000E -   296
 TriUserBit                        Abs       0 #00000000 -   300
 TriUserFl                         Abs      61 #0000003D -   168   299   300
 TriUserNib                        Abs      15 #0000000F -   299
 UnderfActBit                      Abs       3 #00000003 -   303
 UnderfActFl                       Abs      20 #00000014 -   129   302   303
 UnderfActNib                      Abs       4 #00000004 -   302
 UnderfNegBit                      Abs       2 #00000002 -   306
 UnderfNegFl                       Abs      23 #00000017 -   132   305   306
 UnderfNegNib                      Abs       5 #00000005 -   305
 UnderfPosBit                      Abs       3 #00000003 -   309
 UnderfPosFl                       Abs      24 #00000018 -   133   308   309
 UnderfPosNib                      Abs       5 #00000005 -   308
 UserKeysBit                       Abs       1 #00000001 -   312
 UserKeysFl                        Abs      62 #0000003E -   169   311   312
 UserKeysNib                       Abs      15 #0000000F -   311
 VerboseBit                        Abs       1 #00000001 -   249
 VerboseFl                         Abs      58 #0000003A -   165   248   249
 VerboseNib                        Abs      14 #0000000E -   248
 VerticalListBit                   Abs       0 #00000000 -   813
 VerticalListFl                    Abs      97 #00000061 -   811   812   813
 VerticalListNib                   Abs      24 #00000018 -   812
 VerticalVectorBit                 Abs       1 #00000001 -   816
 VerticalVectorFl                  Abs      98 #00000062 -   814   815   816
 VerticalVectorNib                 Abs      24 #00000018 -   815
 WaitForKey                        Ext                   -  1028  1052  1076
 casedrpfls                        Ext                   -   902   945   968
 hasALIAS                          Abs       2 #00000002 -   325
 hasCOLCT                          Abs       2 #00000002 -   331
 hasDER                            Abs       8 #00000008 -   329
 hasEXPND                          Abs       1 #00000001 -   332
 hasFORM                           Abs       8 #00000008 -   335
 hasHELP                           Abs       4 #00000004 -   323
 hasINTG                           Abs       4 #00000004 -   336
 hasINV                            Abs       4 #00000004 -   330
 hasPDATA                          Abs       1 #00000001 -   326
 hasPROMPTM                        Abs       4 #00000004 -   324
 hasVUNS                           Abs       1 #00000001 -   338
 hasWHERE                          Abs       2 #00000002 -   337
 nonALG                            Abs       8 #00000008 -   322
 pdCM                              Abs       6 #00000006 -   347
 pdEQ                              Abs       7 #00000007 -   348
 pdEX                              Abs       0 #00000000 -   341
 pdLP                              Abs       4 #00000004 -   345
 pdOP                              Abs       1 #00000001 -   342
 pdOS0                             Abs       8 #00000008 -   349
 pdOS1                             Abs       9 #00000009 -   350
 pdOS2                             Abs      10 #0000000A -   351
 pdOS3                             Abs      11 #0000000B -   352
 pdOS4                             Abs      12 #0000000C -   353
 pdOS5                             Abs      13 #0000000D -   354
 pdOS6                             Abs      14 #0000000E -   355
 pdOS7                             Abs      15 #0000000F -   356
 pdQE                              Abs       2 #00000002 -   343
 pdQN                              Abs       3 #00000003 -   344
 pdRP                              Abs       5 #00000005 -   346
Saturn Assembler                                       Sun Jun 07 19:41:28 2009
V3.0.9 (04/15/2007)   Statistics                         POL3.a         Page    3

Input Parameters

  Source file name is POL3.a

  Listing file name is POL3.l

  Object file name is POL3.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
