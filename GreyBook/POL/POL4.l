Saturn Assembler                                       Sun Jun 07 19:53:06 2009
V3.0.9 (04/15/2007)                                      POL4.a         Page    1

    1               * File  POL4.s  1
    2               * RPL
    3               * File  POL4.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\POL\POL4.s, part of the POL4.hpp project, created by <> on 12/05/2009
    5               ********************************************************************
    6               * DESCRIPTION:     Displays a value and it's inverse.  The + key is
    7               *                  used to increment the value and the - key is used
    8               *                  to decrement the value.  When the value is zero,
    9               *                  the operation 1/value generates an error which is
   10               *                  handled by the error object.  The softkey ->ERR
   11               *                  generages an error that the error object does not
   12               *                  recognise and passes on to ERRJMP.  The program
   13               *                  ends when ON is pressed.
   14               * COMPATIBILITY:   HP48  ( Must use HP48 kc & kp defs. )
   15               *                  HP50  ( Must include Header.h )
   16               * USAGE:     ( -> )
   17               *
   18               * File  POL4.s  16
   19               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\Header.h
   20
   21
   22               * RPL
   23               * insure RPL-mode exit
   24
   25               * ( Rad
   26
   27               * ( %2PI
   28               * ( %PI/24
   29
   30
   31
   32
   33               * ( 1=1Var, 2=2Var Statistic
   34               * ( 1=Histogram, 2=BoxWhisker
   35
   36
   37
   38
   39
   40               * ASSEMBLE
   41               DefSysF64-33 EQU        #00000000
   42               DefSysF32-01 EQU        #04010FF0
   43               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   44               DefSysF97-128 EQU       #00000000
   45
   46               * RPL
   47
   48
   49               * ( solution mode
   50               * ( constants mode
   51               * ( results mode
   52               * ( careful evaluation mode
   53
   54               * ( binary integer wordsize
   55               * must start on nibble boundary
   56               * ( binary integer base
   57               * must follow "fnBinWordS6"
   58
   59               * ( financial BEGIN/END mode
   60               * ( complex number and vector
   61               * mode
   62               * ( angle mode
   63               * must start on a nibble boundary
   64               * ( complex 2D mode
   65               * ( underflow action
   66               * ( overflow action
   67               * ( infinite result action
   68               * ( underflow-negative indicator
   69               * ( underflow-positive indicator
   70               * ( overflow indicator
   71               * ( infinite result indicator
   72               * ( symbolic-comples decompilation
   73               * ( simultaneous plot mode
   74               * ( axis drawing plot mode
   75
   76               * ( connect points mode
   77               * ( graphics cursor type mode
   78               * ( I/O device
   79               * ( print device
   80               * ( I/O data format
   81               * ( variable overwrite mode
   82               * ( double-space print mode
   83               * ( suppress auto CR mode
   84               * ( suppress I/O status messages
   85
   86
   87               * ( clock display mode
   88               * ( clock display format
   89               * ( date format
   90               * ( reschedule unacknowledged
   91               * repeat alarms mode
   92               * ( delete acknowledged non-repeat
   93               * alarms mode
   94
   95               * ( number of decimal digits
   96               * must start on nibble boundary
   97               * ( number display format
   98               * must start on nibble boundary
   99               * ( radix mark
  100               * ( multi-line display mode
  101               * ( show precedence mode
  102               * ( zero out tiny matrix elements
  103
  104               * ( last arguments mode
  105               * ( error beep mode
  106               * ( alarm beep mode
  107               * ( verbose display mode
  108               * ( variable name only mode
  109               * ( 3-way alpha mode
  110               * ( 3-way user keys mode
  111               * ( user keys mode
  112               * ( special parser mode
  113               * ( index wraparound indicator
  114
  115
  116               * ASSEMBLE
  117               SolutionsFl  EQU 1
  118               ConstantsFl  EQU 2
  119               ResultsFl    EQU 3
  120               CarefulFl    EQU 4
  121
  122               BinWordSFl1  EQU 5      must start on a nibble boundary
  123               BinWordSBCt  EQU 6      number of bits
  124               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  125               BinBaseBCt   EQU 2      number of bits
  126
  127               ComVecDiFl1  EQU 15
  128               ComVecDiBCt  EQU 2      number of bits
  129               AngleFl1     EQU 17     must start on a nibble boundary
  130               AngleBCt     EQU 2      number of bits
  131               Complex2DFl  EQU 19
  132               UnderfActFl  EQU 20
  133               OverfActFl   EQU 21
  134               InfResActFl  EQU 22
  135               UnderfNegFl  EQU 23
  136               UnderfPosFl  EQU 24
  137               OverflowFl   EQU 25
  138               InfResultFl  EQU 26
  139
  140               FunctPlotFl  EQU 30
  141               ConnectPtFl  EQU 31
  142               GCursorFl    EQU 32
  143               IODeviceFl   EQU 33
  144               PrintDevFl   EQU 34
  145               IODataFmtFl  EQU 35
  146               OverwriteFl  EQU 36
  147               DblSpaceFl   EQU 37
  148               NoAutoCRFl   EQU 38
  149               NoIOStsMsgFl EQU 39
  150
  151               ClockOnFl    EQU 40
  152               ClockFmtFl   EQU 41
  153               DateFmtFl    EQU 42
  154               ResRepAlmFl  EQU 43
  155               DelNRAlmFl   EQU 44
  156
  157               NumDigsFl1   EQU 45     must start on a nibble boundary
  158               NumDigsBCt   EQU 4      number of bits
  159               NumDispFl1   EQU 49     must start on a nibble boundary
  160               NumDispBCt   EQU 2      number of bits
  161               RadixFl      EQU 51
  162               MultiDispFl  EQU 52
  163               ShowPrecFl   EQU 53
  164
  165               LastArgsFl   EQU 55
  166               ErrorBeepFl  EQU 56
  167               AlarmBeepFl  EQU 57
  168               VerboseFl    EQU 58
  169               FastEqViewFl EQU 59
  170               TriAlphaFl   EQU 60
  171               TriUserFl    EQU 61
  172               UserKeysFl   EQU 62
  173               NoParseFl    EQU 63
  174               IndexWrapFl  EQU 64
  175
  176
  177
  178               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  179               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  180
  181               AngleNib     EQU ((AngleFl1)-1)/4
  182               AngleBit1    EQU ((AngleFl1)-1)%4
  183               AngleBit2    EQU (AngleBit1)+1
  184
  185               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  186               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  187
  188               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  189               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  190
  191               CarefulNib   EQU ((CarefulFl)-1)/4
  192               CarefulBit   EQU ((CarefulFl)-1)%4
  193
  194               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  195               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  196
  197               ClockOnNib   EQU ((ClockOnFl)-1)/4
  198               ClockOnBit   EQU ((ClockOnFl)-1)%4
  199
  200               Complex2DNib EQU ((Complex2DFl)-1)/4
  201               Complex2DBit EQU ((Complex2DFl)-1)%4
  202
  203               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  204               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  205
  206               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  207               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  208
  209               ConstantsNib EQU ((ConstantsFl)-1)/4
  210               ConstantsBit EQU ((ConstantsFl)-1)%4
  211
  212               DateFmtNib   EQU ((DateFmtFl)-1)/4
  213               DateFmtBit   EQU ((DateFmtFl)-1)%4
  214
  215               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  216               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  217
  218               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  219               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  220
  221               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  222               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  223
  224               FastEViewNib EQU ((FastEqViewFl)-1)/4
  225               FastEViewBit EQU ((FastEqViewFl)-1)%4
  226
  227               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  228               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  229
  230               GCursorNib   EQU ((GCursorFl)-1)/4
  231               GCursorBit   EQU ((GCursorFl)-1)%4
  232
  233               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  234               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  235
  236               InfResActNib EQU ((InfResActFl)-1)/4
  237               InfResActBit EQU ((InfResActFl)-1)%4
  238
  239               InfResultNib EQU ((InfResultFl)-1)/4
  240               InfResultBit EQU ((InfResultFl)-1)%4
  241
  242               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  243               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  244
  245               IODeviceNib  EQU ((IODeviceFl)-1)/4
  246               IODeviceBit  EQU ((IODeviceFl)-1)%4
  247
  248               LastArgsNib  EQU ((LastArgsFl)-1)/4
  249               LastArgsBit  EQU ((LastArgsFl)-1)%4
  250
  251               VerboseNib   EQU ((VerboseFl)-1)/4
  252               VerboseBit   EQU ((VerboseFl)-1)%4
  253
  254               MultiDispNib EQU ((MultiDispFl)-1)/4
  255               MultiDispBit EQU ((MultiDispFl)-1)%4
  256
  257               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  258               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  259
  260               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  261               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  262
  263               NoParseNib   EQU ((NoParseFl)-1)/4
  264               NoParseBit   EQU ((NoParseFl)-1)%4
  265
  266               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  267               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  268
  269               NumDispNib   EQU ((NumDispFl1)-1)/4
  270               NumDispBit1  EQU ((NumDispFl1)-1)%4
  271
  272               OverfActNib  EQU ((OverfActFl)-1)/4
  273               OverfActBit  EQU ((OverfActFl)-1)%4
  274
  275               OverflowNib  EQU ((OverflowFl)-1)/4
  276               OverflowBit  EQU ((OverflowFl)-1)%4
  277
  278               OverwriteNib EQU ((OverwriteFl)-1)/4
  279               OverwriteBit EQU ((OverwriteFl)-1)%4
  280
  281               PrintDevNib  EQU ((PrintDevFl)-1)/4
  282               PrintDevBit  EQU ((PrintDevFl)-1)%4
  283
  284               RadixNib     EQU ((RadixFl)-1)/4
  285               RadixBit     EQU ((RadixFl)-1)%4
  286
  287               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  288               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  289
  290               ResultsNib   EQU ((ResultsFl)-1)/4
  291               ResultsBit   EQU ((ResultsFl)-1)%4
  292
  293               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  294               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  295
  296               SolutionsNib EQU ((SolutionsFl)-1)/4
  297               SolutionsBit EQU ((SolutionsFl)-1)%4
  298
  299               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  300               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  301
  302               TriUserNib   EQU ((TriUserFl)-1)/4
  303               TriUserBit   EQU ((TriUserFl)-1)%4
  304
  305               UnderfActNib EQU ((UnderfActFl)-1)/4
  306               UnderfActBit EQU ((UnderfActFl)-1)%4
  307
  308               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  309               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  310
  311               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  312               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  313
  314               UserKeysNib  EQU ((UserKeysFl)-1)/4
  315               UserKeysBit  EQU ((UserKeysFl)-1)%4
  316
  317               * RPL
  318               * RPL
  319               * insure RPL-mode exit
  320
  321
  322               * ASSEMBLE
  323
  324
  325               nonALG EQU 8                    not-allowed-in-algebraics flag
  326               hasHELP EQU 4                   has-help-data flag
  327               hasPROMPTM EQU 4                same as above
  328               hasALIAS EQU 2                  has-algebraic-alias flag
  329               hasPDATA EQU 1                  has-parse-data flag
  330
  331
  332               hasDER EQU 8                    has-derivative flag
  333               hasINV EQU 4                    has-inverse flag
  334               hasCOLCT EQU 2                  has-COLCT-data flag
  335               hasEXPND EQU 1                  has-EXPND-data flag
  336
  337
  338               hasFORM EQU 8                   has-FORM-menu flag
  339               hasINTG EQU 4                   has-Integral-data flag
  340               hasWHERE EQU 2                  has-WHERE-code flag
  341               hasVUNS EQU 1                   has-veryunsymin-code flag
  342
  343
  344               pdEX EQU #0             general expression
  345               pdOP EQU #1             operator
  346               pdQE EQU #2             quoted expression
  347               pdQN EQU #3             quoted name
  348               pdLP EQU #4             left parenthesis
  349               pdRP EQU #5             right parenthesis
  350               pdCM EQU #6             comma (non-radix)
  351               pdEQ EQU #7             equal-sign separator
  352               pdOS0 EQU #8            optional repeat 0
  353               pdOS1 EQU #9            optional repeat 1
  354               pdOS2 EQU #A            optional repeat 2
  355               pdOS3 EQU #B            optional repeat 3
  356               pdOS4 EQU #C            optional repeat 4
  357               pdOS5 EQU #D            optional repeat 5
  358               pdOS6 EQU #E            optional repeat 6
  359               pdOS7 EQU #F            optional repeat 7
  360
  361               * RPL
  362               * RPL
  363               * insure RPL-mode exit
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
  379
  380
  381               * RPL
  382               * insure RPL-mode exit
  383
  384               * RPL
  385               * insure RPL-mode exit
  386
  387
  388
  389
  390
  391
  392
  393
  394
  395               * ( for internal use only
  396
  397
  398
  399
  400
  401
  402
  403
  404
  405
  406               * ( decimal 67
  407               * ( decimal 86
  408               * ( decimal 82
  409               * ( decimal 85
  410               * ( decimal 101
  411               * ( decimal 97
  412               * ( decimal 100
  413               * ( decimal 113
  414               * ( decimal 112
  415
  416               * ( check width
  417               * ( field character width
  418
  419               * ( decimal 67
  420               * ( decimal 85
  421               * ( decimal 97
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
  437
  438
  439               * RPL
  440               * insure RPL-mode exit
  441
  442               * ( decimal 66
  443               * ( decimal 67
  444               * ( decimal 69
  445               * ( decimal 82
  446               * ( decimal 83
  447               * ( decimal 84
  448               * ( decimal 85
  449               * ( decimal 86
  450               * ( decimal 87
  451
  452
  453               * ( norm-view default visible row count
  454               * ( default first row X location
  455               * ( default first row Y location
  456               * ( default row width
  457               * ( default row height
  458
  459               * ( max-view width
  460               * ( max-view height
  461               * ( max-view default visible row count
  462
  463               * ( prompt area height
  464
  465               * ( more-up/down icon width
  466
  467
  468
  469               * RPL
  470               * insure RPL-mode exit
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
  684
  685
  686               * RPL
  687               * insure RPL-mode exit
  688
  689
  690
  691               * ( set for informations
  692               * ( set for step by step mode on
  693               * ( internal use: true if VXXL success
  694               * ( set for no gcd computations
  695               * ( set for complex mode
  696               * ( internal use:       LN->-INV[-LN]]
  697               * ( set for approx mode
  698               * ( set for TSIMP call inside SERIES
  699               * ( internal use:       modular computation
  700               * ( internal use:       testing remainder=0
  701               * ( set to allow numeric factorization
  702               * ( set for large matrices
  703               * ( set: don't simplify inside non rational operation
  704               * ( set to see i as an irrquad c=-1
  705               * ( set to disable linearity simplif.
  706               * ( set for increasing power x+1 -> 1+x
  707               * ( internal use:       sqrt not as irrquad
  708               * ( set if sin are prefered to cos
  709               * ( set for menu as choosebox
  710               * ( set if xINT is not simplified
  711               * ( set if non rigourous mode
  712               * ( set to allow silent mode switch
  713               * ( set if xLN returns LN[ABS[]]
  714
  715
  716               * ASSEMBLE
  717
  718               MultiLineFl     EQU     65
  719               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  720               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  721               MultiLineStringsFl      EQU     66
  722               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  723               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  724               DigitalClockFl  EQU     67
  725               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  726               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  727               CmdAutoIndentFl EQU     68
  728               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  729               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  730               FullScreenEditFl        EQU     69
  731               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  732               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  733               MultiLine2GROBFl        EQU     70
  734               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  735               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  736               DesasmWithAdrFl EQU     71
  737               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  738               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  739               BigFontStackFl  EQU     72
  740               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  741               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  742               BigFontCmdFl    EQU     73
  743               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  744               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  745               RightJustifiedStackFl   EQU     74
  746               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  747               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  748               KeystrokeBeepFl EQU     75
  749               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  750               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  751               FilerConfirmationFl     EQU     76
  752               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  753               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  754               FilerConfirmFl  EQU     77
  755               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  756               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  757               KernelParamFl   EQU     78
  758               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  759               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  760               PrettyPrintFl   EQU     79
  761               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  762               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  763               SmallFontEQWStackFl     EQU     80
  764               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  765               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  766               SmallFontEQWGrobFl      EQU     81
  767               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  768               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  769               SmallFontEQWEditFl      EQU     82
  770               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  771               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  772               GrobDisplayFl   EQU     83
  773               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  774               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  775               MKSmallFontMenuFl       EQU     84
  776               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  777               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  778               SystemRPLStackFl        EQU     85
  779               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  780               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  781               MASDDecompilerFl        EQU     86
  782               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  783               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  784               RecursiveStackFl        EQU     87
  785               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  786               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  787               RecursiveEditFl EQU     88
  788               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  789               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  790               AddressesCLEFl  EQU     89
  791               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  792               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  793               SmallFontChooseFl       EQU     90
  794               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  795               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  796               ArrayOnlyFl     EQU     91
  797               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  798               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  799               MLMASDModeFl    EQU     92
  800               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  801               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  802               ErableHeaderFl  EQU     93
  803               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  804               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  805               AutoSaveFl      EQU     94
  806               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  807               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  808               AlgebraicModeFl EQU     95
  809               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  810               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  811               MenuOnFl        EQU     96
  812               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  813               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  814               VerticalListFl  EQU     97
  815               VerticalListNib EQU     ((VerticalListFl)-1)/4
  816               VerticalListBit EQU     ((VerticalListFl)-1)%4
  817               VerticalVectorFl        EQU     98
  818               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  819               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  820
  821
  822               ComplexFl       EQU     103
  823               ComplexNib      EQU     ((ComplexFl)-1)/4
  824               ComplexBit      EQU     ((ComplexFl)-1)%4
  825
  826
  827               ExactModeFl     EQU     105
  828               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  829               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  830
  831
  832               * RPL
  833
  834
  835
  836               * ASSEMBLE
  837                       SETLIST CODE, INCLUDE, PSEUDO
  838               * RPL
  839
  840               *|| Resuming file POL4.s at line 16
  841 00000 00000           CON(5)  =DOCOL
  842               * File  POL4.s  23
  843 00005 00000           CON(5)  =0LASTOWDOB!
  844               * Clear protection word
  845               * File  POL4.s  24
  846 0000A 00000           CON(5)  =CK0NOLASTWD
  847               * No arguments
  848               * File  POL4.s  25
  849 0000F 00000           CON(5)  =RECLAIMDISP
  850               * Clear screen
  851               * File  POL4.s  26
  852 00014 00000           CON(5)  =ClrDA1IsStat
  853               * Suspend clock
  854               * Temporary environment definition
  855               * File  POL4.s  28
  856 00019 00000           CON(5)  ='
  857 0001E 00000           CON(5)  =DOCOL
  858               * Display object
  859               * File  POL4.s  29
  860 00023 00000           CON(5)  =DOCSTR
  861 00028 31000           CON(5)  19
  862 0002D 6516C65         NIBASC  \Value: \
            756A302
  863               * $
  864               * File  POL4.s  30
  865 0003B 00000           CON(5)  =DOLAM
  866 00040 50              CON(2)  5
  867 00042 6516C65         NIBASC  \Value\
            756
  868               * %
  869               * File  POL4.s  31
  870 0004C 00000           CON(5)  =EDITDECOMP$
  871               * % -> $
  872               * File  POL4.s  32
  873 00051 00000           CON(5)  =&$
  874               * $ $ -> $
  875               * File  POL4.s  33
  876 00056 00000           CON(5)  =DISPROW3
  877               * Display $
  878               * File  POL4.s  34
  879 0005B 00000           CON(5)  =DOCSTR
  880 00060 51000           CON(5)  21
  881 00065 2556375         NIBASC  \Result: \
            7C647A3
            02
  882               * $
  883               * File  POL4.s  35
  884 00075 00000           CON(5)  =DOLAM
  885 0007A 60              CON(2)  6
  886 0007C 2556375         NIBASC  \Result\
            7C647
  887               * %
  888               * File  POL4.s  36
  889 00088 00000           CON(5)  =EDITDECOMP$
  890               * % -> $
  891               * File  POL4.s  37
  892 0008D 00000           CON(5)  =&$
  893               * $ $ -> $
  894               * File  POL4.s  38
  895 00092 00000           CON(5)  =DISPROW4
  896               * Display $
  897               * File  POL4.s  39
  898 00097 00000           CON(5)  =SEMI
  899               * File  POL4.s  40
  900 0009C 00000           CON(5)  =%1
  901 000A1 00000           CON(5)  =%1
  902               * Initial result, initial value
  903               * File  POL4.s  41
  904 000A6 00000           CON(5)  =FALSE
  905               * Exit flag [FALSE = Continue, TRUE = Exit]
  906               * File  POL4.s  42
  907 000AB 00000           CON(5)  ='
  908 000B0 00000           CON(5)  =DOLAM
  909 000B5 90              CON(2)  9
  910 000B7 44F6449         NIBASC  \DoDisplay\
            63707C6
            1697
  911               * Display object
  912               * File  POL4.s  43
  913 000C9 00000           CON(5)  ='
  914 000CE 00000           CON(5)  =DOLAM
  915 000D3 60              CON(2)  6
  916 000D5 2556375         NIBASC  \Result\
            7C647
  917               * Result
  918               * File  POL4.s  44
  919 000E1 00000           CON(5)  ='
  920 000E6 00000           CON(5)  =DOLAM
  921 000EB 50              CON(2)  5
  922 000ED 6516C65         NIBASC  \Value\
            756
  923               * Value
  924               * File  POL4.s  45
  925 000F7 00000           CON(5)  ='
  926 000FC 00000           CON(5)  =DOLAM
  927 00101 70              CON(2)  7
  928 00103 2557E6E         NIBASC  \Running\
            696E676
  929               * Exit Object
  930               * File  POL4.s  46
  931 00111 00000           CON(5)  =FOUR
  932 00116 00000           CON(5)  =DOBIND
  933               * Create temporary environment
  934               * Main program
  935               * File  POL4.s  48
  936 0011B 00000           CON(5)  =DOLAM
  937 00120 90              CON(2)  9
  938 00122 44F6449         NIBASC  \DoDisplay\
            63707C6
            1697
  939 00134 00000           CON(5)  =EVAL
  940               * Initial display of value and result
  941               * POL parameters
  942               * File  POL4.s  50
  943 00139 00000           CON(5)  ='
  944 0013E 00000           CON(5)  =DOCOL
  945               * Display handler
  946               * File  POL4.s  51
  947 00143 00000           CON(5)  =DA3OK?
  948 00148 00000           CON(5)  =?SEMI
  949               * Redraw menu if required
  950               * File  POL4.s  52
  951 0014D 00000           CON(5)  =DispMenu.1
  952               * File  POL4.s  53
  953 00152 00000           CON(5)  =SetDA3Valid
  954               * File  POL4.s  54
  955 00157 00000           CON(5)  =SEMI
  956               * File  POL4.s  55
  957 0015C 00000           CON(5)  ='
  958 00161 00000           CON(5)  =DOCOL
  959               * Hardkey handler
  960               * File  POL4.s  56
  961 00166 00000           CON(5)  =ONE
  962 0016B 00000           CON(5)  =#=casedrop
  963 00170 00000           CON(5)  =DOCOL
  964               * Primary plane
  965               * File  POL4.s  57
  966 00175 00000           CON(5)  =DUP#<7
  967 0017A 00000           CON(5)  =casedrpfls
  968               * Enable softkeys
  969               * File  POL4.s  58
  970 0017F 00000           CON(5)  =FORTYONE
  971 00184 00000           CON(5)  =?CaseKeyDef
  972 00189 00000           CON(5)  =DOCOL
  973               * Enable - key
  974               * File  POL4.s  59
  975 0018E 00000           CON(5)  =TakeOver
  976               * Custom key definition placeholder
  977               * File  POL4.s  60
  978 00193 00000           CON(5)  =DOLAM
  979 00198 50              CON(2)  5
  980 0019A 6516C65         NIBASC  \Value\
            756
  981               * %Value
  982               * File  POL4.s  61
  983 001A4 00000           CON(5)  =%1-
  984               * %Value %1 %- -> %Value-1
  985               * File  POL4.s  62
  986 001A9 00000           CON(5)  =DUP
  987               * File  POL4.s  63
  988 001AE 00000           CON(5)  ='
  989 001B3 00000           CON(5)  =DOLAM
  990 001B8 50              CON(2)  5
  991 001BA 6516C65         NIBASC  \Value\
            756
  992 001C4 00000           CON(5)  =STO
  993               * File  POL4.s  64
  994 001C9 00000           CON(5)  =%1/
  995               * %Value-1 %1 %/ -> %[Value-1]/1
  996               * File  POL4.s  65
  997 001CE 00000           CON(5)  ='
  998 001D3 00000           CON(5)  =DOLAM
  999 001D8 60              CON(2)  6
 1000 001DA 2556375         NIBASC  \Result\
            7C647
 1001 001E6 00000           CON(5)  =STO
 1002               * File  POL4.s  66
 1003 001EB 00000           CON(5)  =DOLAM
 1004 001F0 90              CON(2)  9
 1005 001F2 44F6449         NIBASC  \DoDisplay\
            63707C6
            1697
 1006 00204 00000           CON(5)  =EVAL
 1007               * Display value and result
 1008               * File  POL4.s  67
 1009 00209 00000           CON(5)  =SEMI
 1010               * File  POL4.s  68
 1011 0020E 00000           CON(5)  =FORTYSIX
 1012 00213 00000           CON(5)  =?CaseKeyDef
 1013 00218 00000           CON(5)  =DOCOL
 1014               * Enable + key
 1015               * File  POL4.s  69
 1016 0021D 00000           CON(5)  =TakeOver
 1017               * File  POL4.s  70
 1018 00222 00000           CON(5)  =DOLAM
 1019 00227 50              CON(2)  5
 1020 00229 6516C65         NIBASC  \Value\
            756
 1021               * %Value
 1022               * File  POL4.s  71
 1023 00233 00000           CON(5)  =%1+
 1024               * %Value %1 %+ -> %Value+1
 1025               * File  POL4.s  72
 1026 00238 00000           CON(5)  =DUP
 1027               * File  POL4.s  73
 1028 0023D 00000           CON(5)  ='
 1029 00242 00000           CON(5)  =DOLAM
 1030 00247 50              CON(2)  5
 1031 00249 6516C65         NIBASC  \Value\
            756
 1032 00253 00000           CON(5)  =STO
 1033               * File  POL4.s  74
 1034 00258 00000           CON(5)  =%1/
 1035               * %Value+1 %1 %/ -> %[Value+1]/1
 1036               * File  POL4.s  75
 1037 0025D 00000           CON(5)  ='
 1038 00262 00000           CON(5)  =DOLAM
 1039 00267 60              CON(2)  6
 1040 00269 2556375         NIBASC  \Result\
            7C647
 1041 00275 00000           CON(5)  =STO
 1042               * File  POL4.s  76
 1043 0027A 00000           CON(5)  =DOLAM
 1044 0027F 90              CON(2)  9
 1045 00281 44F6449         NIBASC  \DoDisplay\
            63707C6
            1697
 1046 00293 00000           CON(5)  =EVAL
 1047               * Display value and result
 1048               * File  POL4.s  77
 1049 00298 00000           CON(5)  =SEMI
 1050               * File  POL4.s  78
 1051 0029D 00000           CON(5)  =FORTYSEVEN
 1052 002A2 00000           CON(5)  =?CaseKeyDef
 1053 002A7 00000           CON(5)  =DOCOL
 1054               * Enable ON key
 1055               * File  POL4.s  79
 1056 002AC 00000           CON(5)  =TakeOver
 1057               * File  POL4.s  80
 1058 002B1 00000           CON(5)  =TRUE
 1059               * Exit flag [TRUE = Exit]
 1060               * File  POL4.s  81
 1061 002B6 00000           CON(5)  ='
 1062 002BB 00000           CON(5)  =DOLAM
 1063 002C0 70              CON(2)  7
 1064 002C2 2557E6E         NIBASC  \Running\
            696E676
 1065 002D0 00000           CON(5)  =STO
 1066               * File  POL4.s  82
 1067 002D5 00000           CON(5)  =SEMI
 1068               * File  POL4.s  83
 1069 002DA 00000           CON(5)  =DROP
 1070 002DF 00000           CON(5)  ='DoBadKeyT
 1071               * Reject other keys and beep
 1072               * File  POL4.s  84
 1073 002E4 00000           CON(5)  =SEMI
 1074               * File  POL4.s  85
 1075 002E9 00000           CON(5)  =2DROP
 1076 002EE 00000           CON(5)  ='DoBadKeyT
 1077               * Reject other planes and beep
 1078               * File  POL4.s  86
 1079 002F3 00000           CON(5)  =SEMI
 1080               * File  POL4.s  87
 1081 002F8 00000           CON(5)  =TRUE
 1082               * NonAppKey Flag [TRUE = allow softkey code execution]
 1083               * File  POL4.s  88
 1084 002FD 00000           CON(5)  =TRUE
 1085               * DoStdKeys Flag [TRUE = ignore user key assignments]
 1086               * File  POL4.s  89
 1087 00302 00000           CON(5)  =DOLIST
 1088               * Softkey menu
 1089               * File  POL4.s  90
 1090 00307 00000           CON(5)  =DOLIST
 1091               * File  POL4.s  91
 1092 0030C 00000           CON(5)  =DOCSTR
 1093 00311 D0000           CON(5)  13
 1094 00316 D8              CON(2)  #8D
 1095 00318 542525          NIBASC  \ERR\
 1096               * Menu Softkey Label $
 1097               * File  POL4.s  92
 1098 0031E 00000           CON(5)  =DOCOL
 1099               * Menu Softkey Action
 1100               * File  POL4.s  93
 1101 00323 00000           CON(5)  =TakeOver
 1102               * Custom key definition placeholder
 1103               * File  POL4.s  94
 1104 00328 00000           CON(5)  =DOCSTR
 1105 0032D 32000           CON(5)  35
 1106 00332 55E6861         NIBASC  \Unhandled Error\
            6E646C6
            564602542727F627

 1107               * $
 1108               * File  POL4.s  95
 1109 00350 00000           CON(5)  =DO$EXIT
 1110               * $ ->
 1111               * File  POL4.s  96
 1112 00355 00000           CON(5)  =SEMI
 1113               * File  POL4.s  97
 1114 0035A 00000           CON(5)  =SEMI
 1115               * File  POL4.s  98
 1116 0035F 00000           CON(5)  =SEMI
 1117               * File  POL4.s  99
 1118 00364 00000           CON(5)  =ONEFALSE
 1119               * #Menu, Suspend Flag [FALSE = no suspend allowed]
 1120               * File  POL4.s  100
 1121 00369 00000           CON(5)  ='
 1122 0036E 00000           CON(5)  =DOLAM
 1123 00373 70              CON(2)  7
 1124 00375 2557E6E         NIBASC  \Running\
            696E676
 1125               * Exit object
 1126               * File  POL4.s  101
 1127 00383 00000           CON(5)  ='
 1128 00388 00000           CON(5)  =DOCOL
 1129               * Error handler
 1130               * File  POL4.s  102
 1131 0038D 00000           CON(5)  =ERROR@
 1132               * #Error number
 1133               * File  POL4.s  103
 1134 00392 00000           CON(5)  =DOBINT
 1135 00397 00100           CON(5)  #100
 1136 0039C 00000           CON(5)  =#/
 1137               * #Error #100 #/ -> #
 1138               * File  POL4.s  104
 1139 003A1 00000           CON(5)  =SWAPDROP
 1140               * File  POL4.s  105
 1141 003A6 00000           CON(5)  =THREE
 1142 003AB 00000           CON(5)  =#<>
 1143 003B0 00000           CON(5)  =case
 1144 003B5 00000           CON(5)  =ERRJMP
 1145               * ERRJMP if NOT floating point error
 1146               * File  POL4.s  106
 1147 003BA 00000           CON(5)  =ERRORCLR
 1148               * Clear error number
 1149               * File  POL4.s  107
 1150 003BF 00000           CON(5)  =DOCSTR
 1151 003C4 31000           CON(5)  19
 1152 003C9 6516C65         NIBASC  \Value: \
            756A302
 1153               * $
 1154               * File  POL4.s  108
 1155 003D7 00000           CON(5)  =DOLAM
 1156 003DC 50              CON(2)  5
 1157 003DE 6516C65         NIBASC  \Value\
            756
 1158               * %Value
 1159               * File  POL4.s  109
 1160 003E8 00000           CON(5)  =EDITDECOMP$
 1161               * %Value -> $Value
 1162               * File  POL4.s  110
 1163 003ED 00000           CON(5)  =&$
 1164               * $ $Value -> $
 1165               * File  POL4.s  111
 1166 003F2 00000           CON(5)  =DISPROW3
 1167               * Display $
 1168               * File  POL4.s  112
 1169 003F7 00000           CON(5)  =DOCSTR
 1170 003FC 72000           CON(5)  39
 1171 00401 2556375         NIBASC  \Result: Undefined\
            7C647A3
            0255E646566696E65646

 1172               * $
 1173               * File  POL4.s  113
 1174 00423 00000           CON(5)  =DISPROW4
 1175               * Display $
 1176               * File  POL4.s  114
 1177 00428 00000           CON(5)  =SEMI
 1178               * File  POL4.s  115
 1179 0042D 00000           CON(5)  =ParOuterLoop
 1180               * Run POL
 1181               * File  POL4.s  116
 1182 00432 00000           CON(5)  =ABND
 1183               * Abandon temporary environment
 1184               * File  POL4.s  117
 1185 00437 00000           CON(5)  =ClrDAsOK
 1186               * Redraw display
 1187               * File  POL4.s  118
 1188 0043C 00000           CON(5)  =SEMI
 1189               * File  POL4.s  119
 1190
Saturn Assembler                                       Sun Jun 07 19:53:06 2009
V3.0.9 (04/15/2007)   Symbol Table                       POL4.a         Page    2

 #/                                Ext                   -  1136
 #<>                               Ext                   -  1142
 #=casedrop                        Ext                   -   962
 %1                                Ext                   -   900   901
 %1+                               Ext                   -  1023
 %1-                               Ext                   -   983
 %1/                               Ext                   -   994  1034
 &$                                Ext                   -   873   892  1163
 '                                 Ext                   -   856   907   913
                                         919   925   943   957   988   997  1028
                                        1037  1061  1121  1127
 'DoBadKeyT                        Ext                   -  1070  1076
 0LASTOWDOB!                       Ext                   -   843
 2DROP                             Ext                   -  1075
 ?CaseKeyDef                       Ext                   -   971  1012  1052
 ?SEMI                             Ext                   -   948
 ABND                              Ext                   -  1182
 AddressesCLEBit                   Abs       0 #00000000 -   792
 AddressesCLEFl                    Abs      89 #00000059 -   790   791   792
 AddressesCLENib                   Abs      22 #00000016 -   791
 AlarmBeepBit                      Abs       0 #00000000 -   179
 AlarmBeepFl                       Abs      57 #00000039 -   167   178   179
 AlarmBeepNib                      Abs      14 #0000000E -   178
 AlgebraicModeBit                  Abs       2 #00000002 -   810
 AlgebraicModeFl                   Abs      95 #0000005F -   808   809   810
 AlgebraicModeNib                  Abs      23 #00000017 -   809
 AngleBCt                          Abs       2 #00000002 -   130
 AngleBit1                         Abs       0 #00000000 -   182   183
 AngleBit2                         Abs       1 #00000001 -   183
 AngleFl1                          Abs      17 #00000011 -   129   181   182
 AngleNib                          Abs       4 #00000004 -   181
 ArrayOnlyBit                      Abs       2 #00000002 -   798
 ArrayOnlyFl                       Abs      91 #0000005B -   796   797   798
 ArrayOnlyNib                      Abs      22 #00000016 -   797
 AutoSaveBit                       Abs       1 #00000001 -   807
 AutoSaveFl                        Abs      94 #0000005E -   805   806   807
 AutoSaveNib                       Abs      23 #00000017 -   806
 BigFontCmdBit                     Abs       0 #00000000 -   744
 BigFontCmdFl                      Abs      73 #00000049 -   742   743   744
 BigFontCmdNib                     Abs      18 #00000012 -   743
 BigFontStackBit                   Abs       3 #00000003 -   741
 BigFontStackFl                    Abs      72 #00000048 -   739   740   741
 BigFontStackNib                   Abs      17 #00000011 -   740
 BinBaseBCt                        Abs       2 #00000002 -   125
 BinBaseBit1                       Abs       2 #00000002 -   186
 BinBaseFl1                        Abs      11 #0000000B -   124   185   186
 BinBaseNib                        Abs       2 #00000002 -   185
 BinWordSBCt                       Abs       6 #00000006 -   123
 BinWordSBit1                      Abs       0 #00000000 -   189
 BinWordSFl1                       Abs       5 #00000005 -   122   188   189
 BinWordSNib                       Abs       1 #00000001 -   188
 CK0NOLASTWD                       Ext                   -   846
 CarefulBit                        Abs       3 #00000003 -   192
 CarefulFl                         Abs       4 #00000004 -   120   191   192
 CarefulNib                        Abs       0 #00000000 -   191
 ClockFmtBit                       Abs       0 #00000000 -   195
 ClockFmtFl                        Abs      41 #00000029 -   152   194   195
 ClockFmtNib                       Abs      10 #0000000A -   194
 ClockOnBit                        Abs       3 #00000003 -   198
 ClockOnFl                         Abs      40 #00000028 -   151   197   198
 ClockOnNib                        Abs       9 #00000009 -   197
 ClrDA1IsStat                      Ext                   -   852
 ClrDAsOK                          Ext                   -  1185
 CmdAutoIndentBit                  Abs       3 #00000003 -   729
 CmdAutoIndentFl                   Abs      68 #00000044 -   727   728   729
 CmdAutoIndentNib                  Abs      16 #00000010 -   728
 ComVecDiBCt                       Abs       2 #00000002 -   128
 ComVecDiBit1                      Abs       2 #00000002 -   204
 ComVecDiFl1                       Abs      15 #0000000F -   127   203   204
 ComVecDiNib                       Abs       3 #00000003 -   203
 Complex2DBit                      Abs       2 #00000002 -   201
 Complex2DFl                       Abs      19 #00000013 -   131   200   201
 Complex2DNib                      Abs       4 #00000004 -   200
 ComplexBit                        Abs       2 #00000002 -   824
 ComplexFl                         Abs     103 #00000067 -   822   823   824
 ComplexNib                        Abs      25 #00000019 -   823
 ConnectPtBit                      Abs       2 #00000002 -   207
 ConnectPtFl                       Abs      31 #0000001F -   141   206   207
 ConnectPtNib                      Abs       7 #00000007 -   206
 ConstantsBit                      Abs       1 #00000001 -   210
 ConstantsFl                       Abs       2 #00000002 -   118   209   210
 ConstantsNib                      Abs       0 #00000000 -   209
 DA3OK?                            Ext                   -   947
 DISPROW3                          Ext                   -   876  1166
 DISPROW4                          Ext                   -   895  1174
 DO$EXIT                           Ext                   -  1109
 DOBIND                            Ext                   -   932
 DOBINT                            Ext                   -  1134
 DOCOL                             Ext                   -   841   857   944
                                         958   963   972  1013  1053  1098  1128
 DOCSTR                            Ext                   -   860   879  1092
                                        1104  1150  1169
 DOLAM                             Ext                   -   865   884   908
                                         914   920   926   936   978   989   998
                                        1003  1018  1029  1038  1043  1062  1122
                                        1155
 DOLIST                            Ext                   -  1087  1090
 DROP                              Ext                   -  1069
 DUP                               Ext                   -   986  1026
 DUP#<7                            Ext                   -   966
 DateFmtBit                        Abs       1 #00000001 -   213
 DateFmtFl                         Abs      42 #0000002A -   153   212   213
 DateFmtNib                        Abs      10 #0000000A -   212
 DblSpaceBit                       Abs       0 #00000000 -   216
 DblSpaceFl                        Abs      37 #00000025 -   147   215   216
 DblSpaceNib                       Abs       9 #00000009 -   215
 DefSysF32-01                      Abs67178480 #04010FF0 -    42
 DefSysF64-33                      Abs       0 #00000000 -    41
 DefSysF65-96                      Abs1107296256 #42000000 -    43
 DefSysF97-128                     Abs       0 #00000000 -    44
 DelNRAlmBit                       Abs       3 #00000003 -   219
 DelNRAlmFl                        Abs      44 #0000002C -   155   218   219
 DelNRAlmNib                       Abs      10 #0000000A -   218
 DesasmWithAdrBit                  Abs       2 #00000002 -   738
 DesasmWithAdrFl                   Abs      71 #00000047 -   736   737   738
 DesasmWithAdrNib                  Abs      17 #00000011 -   737
 DigitalClockBit                   Abs       2 #00000002 -   726
 DigitalClockFl                    Abs      67 #00000043 -   724   725   726
 DigitalClockNib                   Abs      16 #00000010 -   725
 DispMenu.1                        Ext                   -   951
 EDITDECOMP$                       Ext                   -   870   889  1160
 ERRJMP                            Ext                   -  1144
 ERROR@                            Ext                   -  1131
 ERRORCLR                          Ext                   -  1147
 EVAL                              Ext                   -   939  1006  1046
 ErableHeaderBit                   Abs       0 #00000000 -   804
 ErableHeaderFl                    Abs      93 #0000005D -   802   803   804
 ErableHeaderNib                   Abs      23 #00000017 -   803
 ErrorBeepBit                      Abs       3 #00000003 -   222
 ErrorBeepFl                       Abs      56 #00000038 -   166   221   222
 ErrorBeepNib                      Abs      13 #0000000D -   221
 ExactModeBit                      Abs       0 #00000000 -   829
 ExactModeFl                       Abs     105 #00000069 -   827   828   829
 ExactModeNib                      Abs      26 #0000001A -   828
 FALSE                             Ext                   -   904
 FORTYONE                          Ext                   -   970
 FORTYSEVEN                        Ext                   -  1051
 FORTYSIX                          Ext                   -  1011
 FOUR                              Ext                   -   931
 FastEViewBit                      Abs       2 #00000002 -   225
 FastEViewNib                      Abs      14 #0000000E -   224
 FastEqViewFl                      Abs      59 #0000003B -   169   224   225
 FilerConfirmBit                   Abs       0 #00000000 -   756
 FilerConfirmFl                    Abs      77 #0000004D -   754   755   756
 FilerConfirmNib                   Abs      19 #00000013 -   755
 FilerConfirmationBit              Abs       3 #00000003 -   753
 FilerConfirmationFl               Abs      76 #0000004C -   751   752   753
 FilerConfirmationNib              Abs      18 #00000012 -   752
 FullScreenEditBit                 Abs       0 #00000000 -   732
 FullScreenEditFl                  Abs      69 #00000045 -   730   731   732
 FullScreenEditNib                 Abs      17 #00000011 -   731
 FunctPlotBit                      Abs       1 #00000001 -   228
 FunctPlotFl                       Abs      30 #0000001E -   140   227   228
 FunctPlotNib                      Abs       7 #00000007 -   227
 GCursorBit                        Abs       3 #00000003 -   231
 GCursorFl                         Abs      32 #00000020 -   142   230   231
 GCursorNib                        Abs       7 #00000007 -   230
 GrobDisplayBit                    Abs       2 #00000002 -   774
 GrobDisplayFl                     Abs      83 #00000053 -   772   773   774
 GrobDisplayNib                    Abs      20 #00000014 -   773
 IODataFmtBit                      Abs       2 #00000002 -   243
 IODataFmtFl                       Abs      35 #00000023 -   145   242   243
 IODataFmtNib                      Abs       8 #00000008 -   242
 IODeviceBit                       Abs       0 #00000000 -   246
 IODeviceFl                        Abs      33 #00000021 -   143   245   246
 IODeviceNib                       Abs       8 #00000008 -   245
 IndexWrapBit                      Abs       3 #00000003 -   234
 IndexWrapFl                       Abs      64 #00000040 -   174   233   234
 IndexWrapNib                      Abs      15 #0000000F -   233
 InfResActBit                      Abs       1 #00000001 -   237
 InfResActFl                       Abs      22 #00000016 -   134   236   237
 InfResActNib                      Abs       5 #00000005 -   236
 InfResultBit                      Abs       1 #00000001 -   240
 InfResultFl                       Abs      26 #0000001A -   138   239   240
 InfResultNib                      Abs       6 #00000006 -   239
 KernelParamBit                    Abs       1 #00000001 -   759
 KernelParamFl                     Abs      78 #0000004E -   757   758   759
 KernelParamNib                    Abs      19 #00000013 -   758
 KeystrokeBeepBit                  Abs       2 #00000002 -   750
 KeystrokeBeepFl                   Abs      75 #0000004B -   748   749   750
 KeystrokeBeepNib                  Abs      18 #00000012 -   749
 LastArgsBit                       Abs       2 #00000002 -   249
 LastArgsFl                        Abs      55 #00000037 -   165   248   249
 LastArgsNib                       Abs      13 #0000000D -   248
 MASDDecompilerBit                 Abs       1 #00000001 -   783
 MASDDecompilerFl                  Abs      86 #00000056 -   781   782   783
 MASDDecompilerNib                 Abs      21 #00000015 -   782
 MKSmallFontMenuBit                Abs       3 #00000003 -   777
 MKSmallFontMenuFl                 Abs      84 #00000054 -   775   776   777
 MKSmallFontMenuNib                Abs      20 #00000014 -   776
 MLMASDModeBit                     Abs       3 #00000003 -   801
 MLMASDModeFl                      Abs      92 #0000005C -   799   800   801
 MLMASDModeNib                     Abs      22 #00000016 -   800
 MenuOnBit                         Abs       3 #00000003 -   813
 MenuOnFl                          Abs      96 #00000060 -   811   812   813
 MenuOnNib                         Abs      23 #00000017 -   812
 MultiDispBit                      Abs       3 #00000003 -   255
 MultiDispFl                       Abs      52 #00000034 -   162   254   255
 MultiDispNib                      Abs      12 #0000000C -   254
 MultiLine2GROBBit                 Abs       1 #00000001 -   735
 MultiLine2GROBFl                  Abs      70 #00000046 -   733   734   735
 MultiLine2GROBNib                 Abs      17 #00000011 -   734
 MultiLineBit                      Abs       0 #00000000 -   720
 MultiLineFl                       Abs      65 #00000041 -   718   719   720
 MultiLineNib                      Abs      16 #00000010 -   719
 MultiLineStringsBit               Abs       1 #00000001 -   723
 MultiLineStringsFl                Abs      66 #00000042 -   721   722   723
 MultiLineStringsNib               Abs      16 #00000010 -   722
 NoAutoCRBit                       Abs       1 #00000001 -   258
 NoAutoCRFl                        Abs      38 #00000026 -   148   257   258
 NoAutoCRNib                       Abs       9 #00000009 -   257
 NoIOStMsgBit                      Abs       2 #00000002 -   261
 NoIOStMsgNib                      Abs       9 #00000009 -   260
 NoIOStsMsgFl                      Abs      39 #00000027 -   149   260   261
 NoParseBit                        Abs       2 #00000002 -   264
 NoParseFl                         Abs      63 #0000003F -   173   263   264
 NoParseNib                        Abs      15 #0000000F -   263
 NumDigsBCt                        Abs       4 #00000004 -   158
 NumDigsBit1                       Abs       0 #00000000 -   267
 NumDigsFl1                        Abs      45 #0000002D -   157   266   267
 NumDigsNib                        Abs      11 #0000000B -   266
 NumDispBCt                        Abs       2 #00000002 -   160
 NumDispBit1                       Abs       0 #00000000 -   270
 NumDispFl1                        Abs      49 #00000031 -   159   269   270
 NumDispNib                        Abs      12 #0000000C -   269
 ONE                               Ext                   -   961
 ONEFALSE                          Ext                   -  1118
 OverfActBit                       Abs       0 #00000000 -   273
 OverfActFl                        Abs      21 #00000015 -   133   272   273
 OverfActNib                       Abs       5 #00000005 -   272
 OverflowBit                       Abs       0 #00000000 -   276
 OverflowFl                        Abs      25 #00000019 -   137   275   276
 OverflowNib                       Abs       6 #00000006 -   275
 OverwriteBit                      Abs       3 #00000003 -   279
 OverwriteFl                       Abs      36 #00000024 -   146   278   279
 OverwriteNib                      Abs       8 #00000008 -   278
 ParOuterLoop                      Ext                   -  1179
 PrettyPrintBit                    Abs       2 #00000002 -   762
 PrettyPrintFl                     Abs      79 #0000004F -   760   761   762
 PrettyPrintNib                    Abs      19 #00000013 -   761
 PrintDevBit                       Abs       1 #00000001 -   282
 PrintDevFl                        Abs      34 #00000022 -   144   281   282
 PrintDevNib                       Abs       8 #00000008 -   281
 RECLAIMDISP                       Ext                   -   849
 RadixBit                          Abs       2 #00000002 -   285
 RadixFl                           Abs      51 #00000033 -   161   284   285
 RadixNib                          Abs      12 #0000000C -   284
 RecursiveEditBit                  Abs       3 #00000003 -   789
 RecursiveEditFl                   Abs      88 #00000058 -   787   788   789
 RecursiveEditNib                  Abs      21 #00000015 -   788
 RecursiveStackBit                 Abs       2 #00000002 -   786
 RecursiveStackFl                  Abs      87 #00000057 -   784   785   786
 RecursiveStackNib                 Abs      21 #00000015 -   785
 ResRepAlmBit                      Abs       2 #00000002 -   288
 ResRepAlmFl                       Abs      43 #0000002B -   154   287   288
 ResRepAlmNib                      Abs      10 #0000000A -   287
 ResultsBit                        Abs       2 #00000002 -   291
 ResultsFl                         Abs       3 #00000003 -   119   290   291
 ResultsNib                        Abs       0 #00000000 -   290
 RightJustifiedStackBit            Abs       1 #00000001 -   747
 RightJustifiedStackFl             Abs      74 #0000004A -   745   746   747
 RightJustifiedStackNib            Abs      18 #00000012 -   746
 SEMI                              Ext                   -   898   955  1009
                                        1049  1067  1073  1079  1112  1114  1116
                                        1177  1188
 STO                               Ext                   -   992  1001  1032
                                        1041  1065
 SWAPDROP                          Ext                   -  1139
 SetDA3Valid                       Ext                   -   953
 ShowPrecBit                       Abs       0 #00000000 -   294
 ShowPrecFl                        Abs      53 #00000035 -   163   293   294
 ShowPrecNib                       Abs      13 #0000000D -   293
 SmallFontChooseBit                Abs       1 #00000001 -   795
 SmallFontChooseFl                 Abs      90 #0000005A -   793   794   795
 SmallFontChooseNib                Abs      22 #00000016 -   794
 SmallFontEQWEditBit               Abs       1 #00000001 -   771
 SmallFontEQWEditFl                Abs      82 #00000052 -   769   770   771
 SmallFontEQWEditNib               Abs      20 #00000014 -   770
 SmallFontEQWGrobBit               Abs       0 #00000000 -   768
 SmallFontEQWGrobFl                Abs      81 #00000051 -   766   767   768
 SmallFontEQWGrobNib               Abs      20 #00000014 -   767
 SmallFontEQWStackBit              Abs       3 #00000003 -   765
 SmallFontEQWStackFl               Abs      80 #00000050 -   763   764   765
 SmallFontEQWStackNib              Abs      19 #00000013 -   764
 SolutionsBit                      Abs       0 #00000000 -   297
 SolutionsFl                       Abs       1 #00000001 -   117   296   297
 SolutionsNib                      Abs       0 #00000000 -   296
 SystemRPLStackBit                 Abs       0 #00000000 -   780
 SystemRPLStackFl                  Abs      85 #00000055 -   778   779   780
 SystemRPLStackNib                 Abs      21 #00000015 -   779
 THREE                             Ext                   -  1141
 TRUE                              Ext                   -  1058  1081  1084
 TakeOver                          Ext                   -   975  1016  1056
                                        1101
 TriAlphaBit                       Abs       3 #00000003 -   300
 TriAlphaFl                        Abs      60 #0000003C -   170   299   300
 TriAlphaNib                       Abs      14 #0000000E -   299
 TriUserBit                        Abs       0 #00000000 -   303
 TriUserFl                         Abs      61 #0000003D -   171   302   303
 TriUserNib                        Abs      15 #0000000F -   302
 UnderfActBit                      Abs       3 #00000003 -   306
 UnderfActFl                       Abs      20 #00000014 -   132   305   306
 UnderfActNib                      Abs       4 #00000004 -   305
 UnderfNegBit                      Abs       2 #00000002 -   309
 UnderfNegFl                       Abs      23 #00000017 -   135   308   309
 UnderfNegNib                      Abs       5 #00000005 -   308
 UnderfPosBit                      Abs       3 #00000003 -   312
 UnderfPosFl                       Abs      24 #00000018 -   136   311   312
 UnderfPosNib                      Abs       5 #00000005 -   311
 UserKeysBit                       Abs       1 #00000001 -   315
 UserKeysFl                        Abs      62 #0000003E -   172   314   315
 UserKeysNib                       Abs      15 #0000000F -   314
 VerboseBit                        Abs       1 #00000001 -   252
 VerboseFl                         Abs      58 #0000003A -   168   251   252
 VerboseNib                        Abs      14 #0000000E -   251
 VerticalListBit                   Abs       0 #00000000 -   816
 VerticalListFl                    Abs      97 #00000061 -   814   815   816
 VerticalListNib                   Abs      24 #00000018 -   815
 VerticalVectorBit                 Abs       1 #00000001 -   819
 VerticalVectorFl                  Abs      98 #00000062 -   817   818   819
 VerticalVectorNib                 Abs      24 #00000018 -   818
 case                              Ext                   -  1143
 casedrpfls                        Ext                   -   967
 hasALIAS                          Abs       2 #00000002 -   328
 hasCOLCT                          Abs       2 #00000002 -   334
 hasDER                            Abs       8 #00000008 -   332
 hasEXPND                          Abs       1 #00000001 -   335
 hasFORM                           Abs       8 #00000008 -   338
 hasHELP                           Abs       4 #00000004 -   326
 hasINTG                           Abs       4 #00000004 -   339
 hasINV                            Abs       4 #00000004 -   333
 hasPDATA                          Abs       1 #00000001 -   329
 hasPROMPTM                        Abs       4 #00000004 -   327
 hasVUNS                           Abs       1 #00000001 -   341
 hasWHERE                          Abs       2 #00000002 -   340
 nonALG                            Abs       8 #00000008 -   325
 pdCM                              Abs       6 #00000006 -   350
 pdEQ                              Abs       7 #00000007 -   351
 pdEX                              Abs       0 #00000000 -   344
 pdLP                              Abs       4 #00000004 -   348
 pdOP                              Abs       1 #00000001 -   345
 pdOS0                             Abs       8 #00000008 -   352
 pdOS1                             Abs       9 #00000009 -   353
 pdOS2                             Abs      10 #0000000A -   354
 pdOS3                             Abs      11 #0000000B -   355
 pdOS4                             Abs      12 #0000000C -   356
 pdOS5                             Abs      13 #0000000D -   357
 pdOS6                             Abs      14 #0000000E -   358
 pdOS7                             Abs      15 #0000000F -   359
 pdQE                              Abs       2 #00000002 -   346
 pdQN                              Abs       3 #00000003 -   347
 pdRP                              Abs       5 #00000005 -   349
Saturn Assembler                                       Sun Jun 07 19:53:06 2009
V3.0.9 (04/15/2007)   Statistics                         POL4.a         Page    3

Input Parameters

  Source file name is POL4.a

  Listing file name is POL4.l

  Object file name is POL4.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
