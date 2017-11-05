Saturn Assembler                                       Sat Jun 27 12:06:59 2009
V3.0.9 (04/15/2007)                                      GUIAVCOMN.a    Page    1

    1             * File  GUIAVCOMN.s     1
    2             * RPL
    3             * File  GUIAVCOMN.s     2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GUIAVN50\AVNCOMN50\GUIAVCOMN.s, part of the AVCOMN50.hpp project, created by <> on 27/06/2009
    5             **********************************************************************
    6             * NAME:          GUIAVCOMN
    7             * LIBRARY #:     32Ah = 810d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.3
   10             * DATE:          27 June 2009
   11             * COMPATIBILITY: HP50 ( Several different rompointer defs. )
   12             *                HP48 ( Several different rompointer defs. )
   13             * DESCRIPTION:   Generates and displays the GUI for the library.
   14             *                All aviation library programs are run in the common
   15             *                directory TEMPDIR.
   16             *
   17             * File  GUIAVCOMN.s     15
   18             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GUIAVN48\AVNCOMN48\AVCOMN48.h
   19
   20             =RomId  EQU     #32A
   21             * ROMID set to 32A
   22
   23
   24
   25
   26             *|| Resuming file GUIAVCOMN.s at line 15
   27             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\header.h
   28
   29
   30             * RPL
   31             * insure RPL-mode exit
   32
   33             * ( Rad
   34
   35             * ( %2PI
   36             * ( %PI/24
   37
   38
   39
   40
   41             * ( 1=1Var, 2=2Var Statistic
   42             * ( 1=Histogram, 2=BoxWhisker
   43
   44
   45
   46
   47
   48             * ASSEMBLE
   49             DefSysF64-33 EQU        #00000000
   50             DefSysF32-01 EQU        #04010FF0
   51             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   52             DefSysF97-128 EQU       #00000000
   53
   54             * RPL
   55
   56
   57             * ( solution mode
   58             * ( constants mode
   59             * ( results mode
   60             * ( careful evaluation mode
   61
   62             * ( binary integer wordsize
   63             * must start on nibble boundary
   64             * ( binary integer base
   65             * must follow "fnBinWordS6"
   66
   67             * ( financial BEGIN/END mode
   68             * ( complex number and vector
   69             * mode
   70             * ( angle mode
   71             * must start on a nibble boundary
   72             * ( complex 2D mode
   73             * ( underflow action
   74             * ( overflow action
   75             * ( infinite result action
   76             * ( underflow-negative indicator
   77             * ( underflow-positive indicator
   78             * ( overflow indicator
   79             * ( infinite result indicator
   80             * ( symbolic-comples decompilation
   81             * ( simultaneous plot mode
   82             * ( axis drawing plot mode
   83
   84             * ( connect points mode
   85             * ( graphics cursor type mode
   86             * ( I/O device
   87             * ( print device
   88             * ( I/O data format
   89             * ( variable overwrite mode
   90             * ( double-space print mode
   91             * ( suppress auto CR mode
   92             * ( suppress I/O status messages
   93
   94
   95             * ( clock display mode
   96             * ( clock display format
   97             * ( date format
   98             * ( reschedule unacknowledged
   99             * repeat alarms mode
  100             * ( delete acknowledged non-repeat
  101             * alarms mode
  102
  103             * ( number of decimal digits
  104             * must start on nibble boundary
  105             * ( number display format
  106             * must start on nibble boundary
  107             * ( radix mark
  108             * ( multi-line display mode
  109             * ( show precedence mode
  110             * ( zero out tiny matrix elements
  111
  112             * ( last arguments mode
  113             * ( error beep mode
  114             * ( alarm beep mode
  115             * ( verbose display mode
  116             * ( variable name only mode
  117             * ( 3-way alpha mode
  118             * ( 3-way user keys mode
  119             * ( user keys mode
  120             * ( special parser mode
  121             * ( index wraparound indicator
  122
  123
  124             * ASSEMBLE
  125             SolutionsFl  EQU 1
  126             ConstantsFl  EQU 2
  127             ResultsFl    EQU 3
  128             CarefulFl    EQU 4
  129
  130             BinWordSFl1  EQU 5      must start on a nibble boundary
  131             BinWordSBCt  EQU 6      number of bits
  132             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  133             BinBaseBCt   EQU 2      number of bits
  134
  135             ComVecDiFl1  EQU 15
  136             ComVecDiBCt  EQU 2      number of bits
  137             AngleFl1     EQU 17     must start on a nibble boundary
  138             AngleBCt     EQU 2      number of bits
  139             Complex2DFl  EQU 19
  140             UnderfActFl  EQU 20
  141             OverfActFl   EQU 21
  142             InfResActFl  EQU 22
  143             UnderfNegFl  EQU 23
  144             UnderfPosFl  EQU 24
  145             OverflowFl   EQU 25
  146             InfResultFl  EQU 26
  147
  148             FunctPlotFl  EQU 30
  149             ConnectPtFl  EQU 31
  150             GCursorFl    EQU 32
  151             IODeviceFl   EQU 33
  152             PrintDevFl   EQU 34
  153             IODataFmtFl  EQU 35
  154             OverwriteFl  EQU 36
  155             DblSpaceFl   EQU 37
  156             NoAutoCRFl   EQU 38
  157             NoIOStsMsgFl EQU 39
  158
  159             ClockOnFl    EQU 40
  160             ClockFmtFl   EQU 41
  161             DateFmtFl    EQU 42
  162             ResRepAlmFl  EQU 43
  163             DelNRAlmFl   EQU 44
  164
  165             NumDigsFl1   EQU 45     must start on a nibble boundary
  166             NumDigsBCt   EQU 4      number of bits
  167             NumDispFl1   EQU 49     must start on a nibble boundary
  168             NumDispBCt   EQU 2      number of bits
  169             RadixFl      EQU 51
  170             MultiDispFl  EQU 52
  171             ShowPrecFl   EQU 53
  172
  173             LastArgsFl   EQU 55
  174             ErrorBeepFl  EQU 56
  175             AlarmBeepFl  EQU 57
  176             VerboseFl    EQU 58
  177             FastEqViewFl EQU 59
  178             TriAlphaFl   EQU 60
  179             TriUserFl    EQU 61
  180             UserKeysFl   EQU 62
  181             NoParseFl    EQU 63
  182             IndexWrapFl  EQU 64
  183
  184
  185
  186             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  187             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  188
  189             AngleNib     EQU ((AngleFl1)-1)/4
  190             AngleBit1    EQU ((AngleFl1)-1)%4
  191             AngleBit2    EQU (AngleBit1)+1
  192
  193             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  194             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  195
  196             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  197             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  198
  199             CarefulNib   EQU ((CarefulFl)-1)/4
  200             CarefulBit   EQU ((CarefulFl)-1)%4
  201
  202             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  203             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  204
  205             ClockOnNib   EQU ((ClockOnFl)-1)/4
  206             ClockOnBit   EQU ((ClockOnFl)-1)%4
  207
  208             Complex2DNib EQU ((Complex2DFl)-1)/4
  209             Complex2DBit EQU ((Complex2DFl)-1)%4
  210
  211             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  212             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  213
  214             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  215             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  216
  217             ConstantsNib EQU ((ConstantsFl)-1)/4
  218             ConstantsBit EQU ((ConstantsFl)-1)%4
  219
  220             DateFmtNib   EQU ((DateFmtFl)-1)/4
  221             DateFmtBit   EQU ((DateFmtFl)-1)%4
  222
  223             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  224             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  225
  226             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  227             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  228
  229             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  230             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  231
  232             FastEViewNib EQU ((FastEqViewFl)-1)/4
  233             FastEViewBit EQU ((FastEqViewFl)-1)%4
  234
  235             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  236             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  237
  238             GCursorNib   EQU ((GCursorFl)-1)/4
  239             GCursorBit   EQU ((GCursorFl)-1)%4
  240
  241             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  242             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  243
  244             InfResActNib EQU ((InfResActFl)-1)/4
  245             InfResActBit EQU ((InfResActFl)-1)%4
  246
  247             InfResultNib EQU ((InfResultFl)-1)/4
  248             InfResultBit EQU ((InfResultFl)-1)%4
  249
  250             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  251             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  252
  253             IODeviceNib  EQU ((IODeviceFl)-1)/4
  254             IODeviceBit  EQU ((IODeviceFl)-1)%4
  255
  256             LastArgsNib  EQU ((LastArgsFl)-1)/4
  257             LastArgsBit  EQU ((LastArgsFl)-1)%4
  258
  259             VerboseNib   EQU ((VerboseFl)-1)/4
  260             VerboseBit   EQU ((VerboseFl)-1)%4
  261
  262             MultiDispNib EQU ((MultiDispFl)-1)/4
  263             MultiDispBit EQU ((MultiDispFl)-1)%4
  264
  265             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  266             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  267
  268             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  269             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  270
  271             NoParseNib   EQU ((NoParseFl)-1)/4
  272             NoParseBit   EQU ((NoParseFl)-1)%4
  273
  274             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  275             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  276
  277             NumDispNib   EQU ((NumDispFl1)-1)/4
  278             NumDispBit1  EQU ((NumDispFl1)-1)%4
  279
  280             OverfActNib  EQU ((OverfActFl)-1)/4
  281             OverfActBit  EQU ((OverfActFl)-1)%4
  282
  283             OverflowNib  EQU ((OverflowFl)-1)/4
  284             OverflowBit  EQU ((OverflowFl)-1)%4
  285
  286             OverwriteNib EQU ((OverwriteFl)-1)/4
  287             OverwriteBit EQU ((OverwriteFl)-1)%4
  288
  289             PrintDevNib  EQU ((PrintDevFl)-1)/4
  290             PrintDevBit  EQU ((PrintDevFl)-1)%4
  291
  292             RadixNib     EQU ((RadixFl)-1)/4
  293             RadixBit     EQU ((RadixFl)-1)%4
  294
  295             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  296             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  297
  298             ResultsNib   EQU ((ResultsFl)-1)/4
  299             ResultsBit   EQU ((ResultsFl)-1)%4
  300
  301             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  302             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  303
  304             SolutionsNib EQU ((SolutionsFl)-1)/4
  305             SolutionsBit EQU ((SolutionsFl)-1)%4
  306
  307             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  308             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  309
  310             TriUserNib   EQU ((TriUserFl)-1)/4
  311             TriUserBit   EQU ((TriUserFl)-1)%4
  312
  313             UnderfActNib EQU ((UnderfActFl)-1)/4
  314             UnderfActBit EQU ((UnderfActFl)-1)%4
  315
  316             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  317             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  318
  319             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  320             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  321
  322             UserKeysNib  EQU ((UserKeysFl)-1)/4
  323             UserKeysBit  EQU ((UserKeysFl)-1)%4
  324
  325             * RPL
  326             * RPL
  327             * insure RPL-mode exit
  328
  329
  330             * ASSEMBLE
  331
  332
  333             nonALG EQU 8                    not-allowed-in-algebraics flag
  334             hasHELP EQU 4                   has-help-data flag
  335             hasPROMPTM EQU 4                same as above
  336             hasALIAS EQU 2                  has-algebraic-alias flag
  337             hasPDATA EQU 1                  has-parse-data flag
  338
  339
  340             hasDER EQU 8                    has-derivative flag
  341             hasINV EQU 4                    has-inverse flag
  342             hasCOLCT EQU 2                  has-COLCT-data flag
  343             hasEXPND EQU 1                  has-EXPND-data flag
  344
  345
  346             hasFORM EQU 8                   has-FORM-menu flag
  347             hasINTG EQU 4                   has-Integral-data flag
  348             hasWHERE EQU 2                  has-WHERE-code flag
  349             hasVUNS EQU 1                   has-veryunsymin-code flag
  350
  351
  352             pdEX EQU #0             general expression
  353             pdOP EQU #1             operator
  354             pdQE EQU #2             quoted expression
  355             pdQN EQU #3             quoted name
  356             pdLP EQU #4             left parenthesis
  357             pdRP EQU #5             right parenthesis
  358             pdCM EQU #6             comma (non-radix)
  359             pdEQ EQU #7             equal-sign separator
  360             pdOS0 EQU #8            optional repeat 0
  361             pdOS1 EQU #9            optional repeat 1
  362             pdOS2 EQU #A            optional repeat 2
  363             pdOS3 EQU #B            optional repeat 3
  364             pdOS4 EQU #C            optional repeat 4
  365             pdOS5 EQU #D            optional repeat 5
  366             pdOS6 EQU #E            optional repeat 6
  367             pdOS7 EQU #F            optional repeat 7
  368
  369             * RPL
  370             * RPL
  371             * insure RPL-mode exit
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
  389             * RPL
  390             * insure RPL-mode exit
  391
  392             * RPL
  393             * insure RPL-mode exit
  394
  395
  396
  397
  398
  399
  400
  401
  402
  403             * ( for internal use only
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
  414             * ( decimal 67
  415             * ( decimal 86
  416             * ( decimal 82
  417             * ( decimal 85
  418             * ( decimal 101
  419             * ( decimal 97
  420             * ( decimal 100
  421             * ( decimal 113
  422             * ( decimal 112
  423
  424             * ( check width
  425             * ( field character width
  426
  427             * ( decimal 67
  428             * ( decimal 85
  429             * ( decimal 97
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
  447             * RPL
  448             * insure RPL-mode exit
  449
  450             * ( decimal 66
  451             * ( decimal 67
  452             * ( decimal 69
  453             * ( decimal 82
  454             * ( decimal 83
  455             * ( decimal 84
  456             * ( decimal 85
  457             * ( decimal 86
  458             * ( decimal 87
  459
  460
  461             * ( norm-view default visible row count
  462             * ( default first row X location
  463             * ( default first row Y location
  464             * ( default row width
  465             * ( default row height
  466
  467             * ( max-view width
  468             * ( max-view height
  469             * ( max-view default visible row count
  470
  471             * ( prompt area height
  472
  473             * ( more-up/down icon width
  474
  475
  476
  477             * RPL
  478             * insure RPL-mode exit
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
  694             * RPL
  695             * insure RPL-mode exit
  696
  697
  698
  699             * ( set for informations
  700             * ( set for step by step mode on
  701             * ( internal use: true if VXXL success
  702             * ( set for no gcd computations
  703             * ( set for complex mode
  704             * ( internal use:       LN->-INV[-LN]]
  705             * ( set for approx mode
  706             * ( set for TSIMP call inside SERIES
  707             * ( internal use:       modular computation
  708             * ( internal use:       testing remainder=0
  709             * ( set to allow numeric factorization
  710             * ( set for large matrices
  711             * ( set: don't simplify inside non rational operation
  712             * ( set to see i as an irrquad c=-1
  713             * ( set to disable linearity simplif.
  714             * ( set for increasing power x+1 -> 1+x
  715             * ( internal use:       sqrt not as irrquad
  716             * ( set if sin are prefered to cos
  717             * ( set for menu as choosebox
  718             * ( set if xINT is not simplified
  719             * ( set if non rigourous mode
  720             * ( set to allow silent mode switch
  721             * ( set if xLN returns LN[ABS[]]
  722
  723
  724             * ASSEMBLE
  725
  726             MultiLineFl     EQU     65
  727             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  728             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  729             MultiLineStringsFl      EQU     66
  730             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  731             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  732             DigitalClockFl  EQU     67
  733             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  734             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  735             CmdAutoIndentFl EQU     68
  736             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  737             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  738             FullScreenEditFl        EQU     69
  739             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  740             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  741             MultiLine2GROBFl        EQU     70
  742             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  743             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  744             DesasmWithAdrFl EQU     71
  745             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  746             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  747             BigFontStackFl  EQU     72
  748             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  749             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  750             BigFontCmdFl    EQU     73
  751             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  752             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  753             RightJustifiedStackFl   EQU     74
  754             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  755             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  756             KeystrokeBeepFl EQU     75
  757             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  758             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  759             FilerConfirmationFl     EQU     76
  760             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  761             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  762             FilerConfirmFl  EQU     77
  763             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  764             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  765             KernelParamFl   EQU     78
  766             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  767             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  768             PrettyPrintFl   EQU     79
  769             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  770             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  771             SmallFontEQWStackFl     EQU     80
  772             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  773             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  774             SmallFontEQWGrobFl      EQU     81
  775             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  776             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  777             SmallFontEQWEditFl      EQU     82
  778             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  779             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  780             GrobDisplayFl   EQU     83
  781             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  782             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  783             MKSmallFontMenuFl       EQU     84
  784             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  785             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  786             SystemRPLStackFl        EQU     85
  787             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  788             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  789             MASDDecompilerFl        EQU     86
  790             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  791             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  792             RecursiveStackFl        EQU     87
  793             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  794             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  795             RecursiveEditFl EQU     88
  796             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  797             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  798             AddressesCLEFl  EQU     89
  799             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  800             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  801             SmallFontChooseFl       EQU     90
  802             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  803             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  804             ArrayOnlyFl     EQU     91
  805             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  806             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  807             MLMASDModeFl    EQU     92
  808             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  809             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  810             ErableHeaderFl  EQU     93
  811             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  812             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  813             AutoSaveFl      EQU     94
  814             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  815             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  816             AlgebraicModeFl EQU     95
  817             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  818             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  819             MenuOnFl        EQU     96
  820             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  821             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  822             VerticalListFl  EQU     97
  823             VerticalListNib EQU     ((VerticalListFl)-1)/4
  824             VerticalListBit EQU     ((VerticalListFl)-1)%4
  825             VerticalVectorFl        EQU     98
  826             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  827             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  828
  829
  830             ComplexFl       EQU     103
  831             ComplexNib      EQU     ((ComplexFl)-1)/4
  832             ComplexBit      EQU     ((ComplexFl)-1)%4
  833
  834
  835             ExactModeFl     EQU     105
  836             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  837             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  838
  839
  840             * RPL
  841
  842
  843
  844             * ASSEMBLE
  845                     SETLIST CODE, INCLUDE, PSEUDO
  846             * RPL
  847
  848             *|| Resuming file GUIAVCOMN.s at line 16
  849             * ( HP50, HP48
  850             * File  GUIAVCOMN.s     18
  851             * ( HP50, HP48
  852             * File  GUIAVCOMN.s     19
  853             * ( HP50, HP48
  854             *DEFINE WNDTR     ROMPTR 320 4       ( HP50 )
  855             * File  GUIAVCOMN.s     21
  856             * ( HP48
  857             * File  GUIAVCOMN.s     22
  858             * ( HP50, HP48
  859             * File  GUIAVCOMN.s     23
  860             * ( HP50, HP48
  861             * File  GUIAVCOMN.s     24
  862 00000 00000         CON(6)  =~xGUIAVCOMN
            0
  863 00006       =xGUIAVCOMN
  864             * File  GUIAVCOMN.s     25
  865 00006 00000         CON(5)  =DOCOL
  866             * File  GUIAVCOMN.s     26
  867 0000B 00000         CON(5)  =CK0
  868             * No arguments
  869             * File  GUIAVCOMN.s     27
  870 00010 00000         CON(5)  =BEGIN
  871             * Choose box parameters
  872             * File  GUIAVCOMN.s     29
  873 00015 00000         CON(5)  ='DROPFALSE
  874             * Message handler
  875             * File  GUIAVCOMN.s     30
  876 0001A 00000         CON(5)  =DOCSTR
  877 0001F F1000         CON(5)  31
  878 00024 14659         NIBASC  \AVIATION MENU\
            41445
            94F4E402D454E455

  879             * Title
  880             * File  GUIAVCOMN.s     31
  881 0003E 00000         CON(5)  =SEVENTEEN
  882             * Decompile
  883             * File  GUIAVCOMN.s     32
  884 00043 00000         CON(5)  =DOLIST
  885             * File  GUIAVCOMN.s     33
  886 00048 00000         CON(5)  =DOLIST
  887             * File  GUIAVCOMN.s     34
  888 0004D 00000         CON(5)  =DOCSTR
  889 00052 B0000         CON(5)  11
  890 00057 94351         NIBASC  \ISA\
            4
  891 0005D 00000         CON(5)  =DOCOL
  892             * ISA option
  893             * File  GUIAVCOMN.s     35
  894 00062 00000         CON(5)  =PATHDIR
  895             * Get current directory path
  896             * File  GUIAVCOMN.s     36
  897 00067 00000         CON(5)  =DOIDNT
  898 0006C 70            CON(2)  7
  899 0006E 4554D         NIBASC  \TEMPDIR\
            40544
            9425
  900             * Change to TEMPDIR directory
  901             * File  GUIAVCOMN.s     37
  902 0007C 00000         CON(5)  ='
  903 00081 00000         CON(5)  =DOIDNT
  904 00086 60            CON(2)  6
  905 00088 25544         NIBASC  \RETDIR\
            54494
            25
  906 00094 00000         CON(5)  =STO
  907             * STO return directory
  908             * File  GUIAVCOMN.s     38
  909 00099 00000         CON(5)  =DOROMP
  910 0009E 623           CON(3)  #326
  911 000A1 500           CON(3)  #5
  912             * Run ISA GUI
  913             * File  GUIAVCOMN.s     39
  914 000A4 00000         CON(5)  =DOIDNT
  915 000A9 60            CON(2)  6
  916 000AB 25544         NIBASC  \RETDIR\
            54494
            25
  917 000B7 00000         CON(5)  =xEVAL
  918             * Change back to original directory
  919             * File  GUIAVCOMN.s     40
  920 000BC 00000         CON(5)  =SEMI
  921             * File  GUIAVCOMN.s     41
  922 000C1 00000         CON(5)  =SEMI
  923             * File  GUIAVCOMN.s     42
  924 000C6 00000         CON(5)  =DOLIST
  925             * File  GUIAVCOMN.s     43
  926 000CB 00000         CON(5)  =DOCSTR
  927 000D0 51000         CON(5)  21
  928 000D5 14C44         NIBASC  \ALTITUDE\
            59445
            554454
  929 000E5 00000         CON(5)  =DOCOL
  930             * ALTITUDE option
  931             * File  GUIAVCOMN.s     44
  932 000EA 00000         CON(5)  =PATHDIR
  933             * Get current directory path
  934             * File  GUIAVCOMN.s     45
  935 000EF 00000         CON(5)  =DOIDNT
  936 000F4 70            CON(2)  7
  937 000F6 4554D         NIBASC  \TEMPDIR\
            40544
            9425
  938             * Change to TEMPDIR directory
  939             * File  GUIAVCOMN.s     46
  940 00104 00000         CON(5)  ='
  941 00109 00000         CON(5)  =DOIDNT
  942 0010E 60            CON(2)  6
  943 00110 25544         NIBASC  \RETDIR\
            54494
            25
  944 0011C 00000         CON(5)  =STO
  945             * STO return directory
  946             * File  GUIAVCOMN.s     47
  947 00121 00000         CON(5)  =DOROMP
  948 00126 723           CON(3)  #327
  949 00129 100           CON(3)  #1
  950             * Run ALTITUDE GUI
  951             * File  GUIAVCOMN.s     48
  952 0012C 00000         CON(5)  =DOIDNT
  953 00131 60            CON(2)  6
  954 00133 25544         NIBASC  \RETDIR\
            54494
            25
  955 0013F 00000         CON(5)  =xEVAL
  956             * Change back to original directory
  957             * File  GUIAVCOMN.s     49
  958 00144 00000         CON(5)  =SEMI
  959             * File  GUIAVCOMN.s     50
  960 00149 00000         CON(5)  =SEMI
  961             * File  GUIAVCOMN.s     51
  962 0014E 00000         CON(5)  =DOLIST
  963             * File  GUIAVCOMN.s     52
  964 00153 00000         CON(5)  =DOCSTR
  965 00158 51000         CON(5)  21
  966 0015D 14942         NIBASC  \AIRSPEED\
            53505
            545444
  967 0016D 00000         CON(5)  =DOCOL
  968             * AIRSPEED option
  969             * File  GUIAVCOMN.s     53
  970 00172 00000         CON(5)  =PATHDIR
  971             * Get current directory path
  972             * File  GUIAVCOMN.s     54
  973 00177 00000         CON(5)  =DOIDNT
  974 0017C 70            CON(2)  7
  975 0017E 4554D         NIBASC  \TEMPDIR\
            40544
            9425
  976             * Change to TEMPDIR directory
  977             * File  GUIAVCOMN.s     55
  978 0018C 00000         CON(5)  ='
  979 00191 00000         CON(5)  =DOIDNT
  980 00196 60            CON(2)  6
  981 00198 25544         NIBASC  \RETDIR\
            54494
            25
  982 001A4 00000         CON(5)  =STO
  983             * STO return directory
  984             * File  GUIAVCOMN.s     56
  985 001A9 00000         CON(5)  =DOROMP
  986 001AE 823           CON(3)  #328
  987 001B1 100           CON(3)  #1
  988             * Run AIR SPEED GUI
  989             * File  GUIAVCOMN.s     57
  990 001B4 00000         CON(5)  =DOIDNT
  991 001B9 60            CON(2)  6
  992 001BB 25544         NIBASC  \RETDIR\
            54494
            25
  993 001C7 00000         CON(5)  =xEVAL
  994             * Change back to original directory
  995             * File  GUIAVCOMN.s     58
  996 001CC 00000         CON(5)  =SEMI
  997             * File  GUIAVCOMN.s     59
  998 001D1 00000         CON(5)  =SEMI
  999             * File  GUIAVCOMN.s     60
 1000 001D6 00000         CON(5)  =DOLIST
 1001             * File  GUIAVCOMN.s     61
 1002 001DB 00000         CON(5)  =DOCSTR
 1003 001E0 F1000         CON(5)  31
 1004 001E5 7594E         NIBASC  \WIND TRIANGLE\
            44402
            45259414E474C454

 1005 001FF 00000         CON(5)  =DOCOL
 1006             * WIND TRIANGLE option
 1007             * File  GUIAVCOMN.s     62
 1008 00204 00000         CON(5)  =PATHDIR
 1009             * Get current directory path
 1010             * File  GUIAVCOMN.s     63
 1011 00209 00000         CON(5)  =DOIDNT
 1012 0020E 70            CON(2)  7
 1013 00210 4554D         NIBASC  \TEMPDIR\
            40544
            9425
 1014             * Change to TEMPDIR directory
 1015             * File  GUIAVCOMN.s     64
 1016 0021E 00000         CON(5)  ='
 1017 00223 00000         CON(5)  =DOIDNT
 1018 00228 60            CON(2)  6
 1019 0022A 25544         NIBASC  \RETDIR\
            54494
            25
 1020 00236 00000         CON(5)  =STO
 1021             * STO return directory
 1022             * File  GUIAVCOMN.s     65
 1023 0023B 00000         CON(5)  =DOROMP
 1024 00240 023           CON(3)  #320
 1025 00243 000           CON(3)  #0
 1026             * Run WIND TRIANGLE GUI
 1027             * File  GUIAVCOMN.s     66
 1028 00246 00000         CON(5)  =DOIDNT
 1029 0024B 60            CON(2)  6
 1030 0024D 25544         NIBASC  \RETDIR\
            54494
            25
 1031 00259 00000         CON(5)  =xEVAL
 1032             * Change back to original directory
 1033             * File  GUIAVCOMN.s     67
 1034 0025E 00000         CON(5)  =SEMI
 1035             * File  GUIAVCOMN.s     68
 1036 00263 00000         CON(5)  =SEMI
 1037             * File  GUIAVCOMN.s     69
 1038 00268 00000         CON(5)  =DOLIST
 1039             * File  GUIAVCOMN.s     70
 1040 0026D 00000         CON(5)  =DOCSTR
 1041 00272 32000         CON(5)  35
 1042 00277 54155         NIBASC  \EQUI-TIME POINT\
            594D2
            4594D4540205F494E445

 1043 00295 00000         CON(5)  =DOCOL
 1044             * ETP option
 1045             * File  GUIAVCOMN.s     71
 1046 0029A 00000         CON(5)  =PATHDIR
 1047             * Get current directory path
 1048             * File  GUIAVCOMN.s     72
 1049 0029F 00000         CON(5)  =DOIDNT
 1050 002A4 70            CON(2)  7
 1051 002A6 4554D         NIBASC  \TEMPDIR\
            40544
            9425
 1052             * Change to TEMPDIR directory
 1053             * File  GUIAVCOMN.s     73
 1054 002B4 00000         CON(5)  ='
 1055 002B9 00000         CON(5)  =DOIDNT
 1056 002BE 60            CON(2)  6
 1057 002C0 25544         NIBASC  \RETDIR\
            54494
            25
 1058 002CC 00000         CON(5)  =STO
 1059             * STO return directory
 1060             * File  GUIAVCOMN.s     74
 1061 002D1 00000         CON(5)  =DOROMP
 1062 002D6 923           CON(3)  #329
 1063 002D9 100           CON(3)  #1
 1064             * Run ETP GUI
 1065             * File  GUIAVCOMN.s     75
 1066 002DC 00000         CON(5)  =DOIDNT
 1067 002E1 60            CON(2)  6
 1068 002E3 25544         NIBASC  \RETDIR\
            54494
            25
 1069 002EF 00000         CON(5)  =xEVAL
 1070             * Change back to original directory
 1071             * File  GUIAVCOMN.s     76
 1072 002F4 00000         CON(5)  =SEMI
 1073             * File  GUIAVCOMN.s     77
 1074 002F9 00000         CON(5)  =SEMI
 1075             * File  GUIAVCOMN.s     78
 1076 002FE 00000         CON(5)  =DOLIST
 1077             * File  GUIAVCOMN.s     79
 1078 00303 00000         CON(5)  =DOCSTR
 1079 00308 52000         CON(5)  37
 1080 0030D 25144         NIBASC  \RADIUS OF ACTION\
            49455
            3502F4640214344594F4E4

 1081 0032D 00000         CON(5)  =DOCOL
 1082             * RADIUS OF ACTION option
 1083             * File  GUIAVCOMN.s     80
 1084 00332 00000         CON(5)  =PATHDIR
 1085             * Get current directory path
 1086             * File  GUIAVCOMN.s     81
 1087 00337 00000         CON(5)  =DOIDNT
 1088 0033C 70            CON(2)  7
 1089 0033E 4554D         NIBASC  \TEMPDIR\
            40544
            9425
 1090             * Change to TEMPDIR directory
 1091             * File  GUIAVCOMN.s     82
 1092 0034C 00000         CON(5)  ='
 1093 00351 00000         CON(5)  =DOIDNT
 1094 00356 60            CON(2)  6
 1095 00358 25544         NIBASC  \RETDIR\
            54494
            25
 1096 00364 00000         CON(5)  =STO
 1097             * STO return directory
 1098             * File  GUIAVCOMN.s     83
 1099 00369 00000         CON(5)  =DOROMP
 1100 0036E 00000         CON(6)  =~ROACOMN
            0
 1101             * Run ROA common GUI
 1102             * File  GUIAVCOMN.s     84
 1103 00374 00000         CON(5)  =DOIDNT
 1104 00379 60            CON(2)  6
 1105 0037B 25544         NIBASC  \RETDIR\
            54494
            25
 1106 00387 00000         CON(5)  =xEVAL
 1107             * Change back to original directory
 1108             * File  GUIAVCOMN.s     85
 1109 0038C 00000         CON(5)  =SEMI
 1110             * File  GUIAVCOMN.s     86
 1111 00391 00000         CON(5)  =SEMI
 1112             * File  GUIAVCOMN.s     87
 1113 00396 00000         CON(5)  =DOLIST
 1114             * File  GUIAVCOMN.s     88
 1115 0039B 00000         CON(5)  =DOCSTR
 1116 003A0 D1000         CON(5)  29
 1117 003A5 94E44         NIBASC  \INTERCEPTION\
            55425
            3454054594F4E4

 1118 003BD 00000         CON(5)  =DOCOL
 1119             * INTERCEPTION option
 1120             * File  GUIAVCOMN.s     89
 1121 003C2 00000         CON(5)  =PATHDIR
 1122             * Get current directory path
 1123             * File  GUIAVCOMN.s     90
 1124 003C7 00000         CON(5)  =DOIDNT
 1125 003CC 70            CON(2)  7
 1126 003CE 4554D         NIBASC  \TEMPDIR\
            40544
            9425
 1127             * Change to TEMPDIR directory
 1128             * File  GUIAVCOMN.s     91
 1129 003DC 00000         CON(5)  ='
 1130 003E1 00000         CON(5)  =DOIDNT
 1131 003E6 60            CON(2)  6
 1132 003E8 25544         NIBASC  \RETDIR\
            54494
            25
 1133 003F4 00000         CON(5)  =STO
 1134             * STO return directory
 1135             * File  GUIAVCOMN.s     92
 1136 003F9 00000         CON(5)  =DOROMP
 1137 003FE 123           CON(3)  #321
 1138 00401 100           CON(3)  #1
 1139             * Run INTERCEPTION GUI
 1140             * File  GUIAVCOMN.s     93
 1141 00404 00000         CON(5)  =DOIDNT
 1142 00409 60            CON(2)  6
 1143 0040B 25544         NIBASC  \RETDIR\
            54494
            25
 1144 00417 00000         CON(5)  =xEVAL
 1145             * Change back to original directory
 1146             * File  GUIAVCOMN.s     94
 1147 0041C 00000         CON(5)  =SEMI
 1148             * File  GUIAVCOMN.s     95
 1149 00421 00000         CON(5)  =SEMI
 1150             * File  GUIAVCOMN.s     96
 1151 00426 00000         CON(5)  =SEMI
 1152             * File  GUIAVCOMN.s     97
 1153 0042B 00000         CON(5)  =ONE
 1154             * #FocusPos
 1155             * File  GUIAVCOMN.s     98
 1156 00430 00000         CON(5)  =DOROMP
 1157 00435 00000         CON(6)  =~Choose
            0
 1158             * Process results of the choose box
 1159             * File  GUIAVCOMN.s     100
 1160 0043B 00000         CON(5)  =WHILE
 1161 00440 00000         CON(5)  =DOCOL
 1162             * File  GUIAVCOMN.s     101
 1163 00445 00000         CON(5)  =TWO
 1164 0044A 00000         CON(5)  =NTHCOMPDROP
 1165 0044F 00000         CON(5)  =EVAL
 1166             * Extract and run the secondary
 1167             * File  GUIAVCOMN.s     102
 1168 00454 00000         CON(5)  =SEMI
 1169 00459 00000         CON(5)  =REPEAT
 1170             * File  GUIAVCOMN.s     103
 1171 0045E 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat Jun 27 12:06:59 2009
V3.0.9 (04/15/2007)   Symbol Table                       GUIAVCOMN.a    Page    2

 '                                 Ext                   -   902   940   978
                                        1016  1054  1092  1129
 'DROPFALSE                        Ext                   -   873
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
 BEGIN                             Ext                   -   870
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
 CK0                               Ext                   -   867
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
 DOCOL                             Ext                   -   865   891   929
                                         967  1005  1043  1081  1118  1161
 DOCSTR                            Ext                   -   876   888   926
                                         964  1002  1040  1078  1115
 DOIDNT                            Ext                   -   897   903   914
                                         935   941   952   973   979   990  1011
                                        1017  1028  1049  1055  1066  1087  1093
                                        1103  1124  1130  1141
 DOLIST                            Ext                   -   884   886   924
                                         962  1000  1038  1076  1113
 DOROMP                            Ext                   -   909   947   985
                                        1023  1061  1099  1136  1156
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
 EVAL                              Ext                   -  1165
 ErableHeaderBit                   Abs       0 #00000000 -   812
 ErableHeaderFl                    Abs      93 #0000005D -   810   811   812
 ErableHeaderNib                   Abs      23 #00000017 -   811
 ErrorBeepBit                      Abs       3 #00000003 -   230
 ErrorBeepFl                       Abs      56 #00000038 -   174   229   230
 ErrorBeepNib                      Abs      13 #0000000D -   229
 ExactModeBit                      Abs       0 #00000000 -   837
 ExactModeFl                       Abs     105 #00000069 -   835   836   837
 ExactModeNib                      Abs      26 #0000001A -   836
 FastEViewBit                      Abs       2 #00000002 -   233
 FastEViewNib                      Abs      14 #0000000E -   232
 FastEqViewFl                      Abs      59 #0000003B -   177   232   233
 FilerConfirmBit                   Abs       0 #00000000 -   764
 FilerConfirmFl                    Abs      77 #0000004D -   762   763   764
 FilerConfirmNib                   Abs      19 #00000013 -   763
 FilerConfirmationBit              Abs       3 #00000003 -   761
 FilerConfirmationFl               Abs      76 #0000004C -   759   760   761
 FilerConfirmationNib              Abs      18 #00000012 -   760
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
 NTHCOMPDROP                       Ext                   -  1164
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
 ONE                               Ext                   -  1153
 OverfActBit                       Abs       0 #00000000 -   281
 OverfActFl                        Abs      21 #00000015 -   141   280   281
 OverfActNib                       Abs       5 #00000005 -   280
 OverflowBit                       Abs       0 #00000000 -   284
 OverflowFl                        Abs      25 #00000019 -   145   283   284
 OverflowNib                       Abs       6 #00000006 -   283
 OverwriteBit                      Abs       3 #00000003 -   287
 OverwriteFl                       Abs      36 #00000024 -   154   286   287
 OverwriteNib                      Abs       8 #00000008 -   286
 PATHDIR                           Ext                   -   894   932   970
                                        1008  1046  1084  1121
 PrettyPrintBit                    Abs       2 #00000002 -   770
 PrettyPrintFl                     Abs      79 #0000004F -   768   769   770
 PrettyPrintNib                    Abs      19 #00000013 -   769
 PrintDevBit                       Abs       1 #00000001 -   290
 PrintDevFl                        Abs      34 #00000022 -   152   289   290
 PrintDevNib                       Abs       8 #00000008 -   289
 REPEAT                            Ext                   -  1169
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
=RomId                             Abs     810 #0000032A -    20
 SEMI                              Ext                   -   920   922   958
                                         960   996   998  1034  1036  1072  1074
                                        1109  1111  1147  1149  1151  1168  1171
 SEVENTEEN                         Ext                   -   881
 STO                               Ext                   -   906   944   982
                                        1020  1058  1096  1133
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
 TWO                               Ext                   -  1163
 TriAlphaBit                       Abs       3 #00000003 -   308
 TriAlphaFl                        Abs      60 #0000003C -   178   307   308
 TriAlphaNib                       Abs      14 #0000000E -   307
 TriUserBit                        Abs       0 #00000000 -   311
 TriUserFl                         Abs      61 #0000003D -   179   310   311
 TriUserNib                        Abs      15 #0000000F -   310
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
 WHILE                             Ext                   -  1160
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
 xEVAL                             Ext                   -   917   955   993
                                        1031  1069  1106  1144
=xGUIAVCOMN                        Rel       6 #00000006 -   863
 ~Choose                           Ext                   -  1157
 ~ROACOMN                          Ext                   -  1100
 ~xGUIAVCOMN                       Ext                   -   862
Saturn Assembler                                       Sat Jun 27 12:06:59 2009
V3.0.9 (04/15/2007)   Statistics                         GUIAVCOMN.a    Page    3

Input Parameters

  Source file name is GUIAVCOMN.a

  Listing file name is GUIAVCOMN.l

  Object file name is GUIAVCOMN.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
