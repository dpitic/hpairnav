Saturn Assembler                                       Sat May 16 20:29:29 2009
V3.0.9 (04/15/2007)                                      INF4MsgHandler Page    1

    1             * File  INF4MsgHandler.s        1
    2             * RPL
    3             * File  INF4MsgHandler.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF3MsgHandler.s, part of the INF3.hpp project, created by <> on 16/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Input Form Message handler placed in a separate
    7             *                  file to allow for debugging.
    8             *
    9             * File Header
   10             * File  INF4MsgHandler.s        8
   11             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF4.h
   12
   13             =RomId  EQU     #200
   14             * ROMID set to 200
   15
   16
   17
   18             *|| Resuming file INF4MsgHandler.s at line 8
   19             * File  INF4MsgHandler.s        10
   20             * File  INF4MsgHandler.s        11
   21             * Process CANCEL key          [ -> FALSE ]
   22             * File  INF4MsgHandler.s        12
   23             * Process OK key              [ -> Field_values TRUE ]
   24             * File  INF4MsgHandler.s        13
   25             * Make std. first 3 menu keys [ -> { EDIT CHOOSE CHK } ]
   26             * File  INF4MsgHandler.s        14
   27             * Make std. 2nd row menu keys [ -> { RESET CALC TYPES {} CANCEL OK } ]
   28             * File  INF4MsgHandler.s        15
   29 00000       =INF4MsgHandler
   30             * File  INF4MsgHandler.s        16
   31 00000 00000         CON(5)  =DOCOL
   32             * File  INF4MsgHandler.s        17
   33 00005 00000         CON(5)  =FIFTEEN
   34 0000A 00000         CON(5)  =#=case
   35 0000F 00000         CON(5)  =DOCOL
   36             * Input form menu [ -> { menu } ]
   37             *        SIXTEEN #<> case FALSE
   38             * File  INF4MsgHandler.s        19
   39 00014 00000         CON(5)  ='
   40 00019 00000         CON(5)  =NoExitAction
   41             * Don't save menu as last menu
   42             * File  INF4MsgHandler.s        20
   43 0001E 00000         CON(5)  =DOROMP
   44 00023 00000         CON(6)  =~IFMenuRow1
            0
   45             * First 3 std. menu keys [ -> { EDIT CHOOSE CHK } ]
   46             * File  INF4MsgHandler.s        21
   47 00029 00000         CON(5)  =DOLIST
   48             * File  INF4MsgHandler.s        22
   49 0002E 00000         CON(5)  =DOLIST
   50             * Softkey 4
   51             * File  INF4MsgHandler.s        23
   52 00033 00000         CON(5)  =DOCSTR
   53 00038 F0000         CON(5)  15
   54 0003D 14C45         NIBASC  \ALERT\
            42545
   55             * Softkey label $
   56             * File  INF4MsgHandler.s        24
   57 00047 00000         CON(5)  =DOCOL
   58             * Softkey action
   59             * File  INF4MsgHandler.s        25
   60 0004C 00000         CON(5)  =TakeOver
   61             * Custom key definition placeholder
   62             * File  INF4MsgHandler.s        26
   63 00051 00000         CON(5)  =DOCSTR
   64 00056 11000         CON(5)  17
   65 0005B 14C65         NIBASC  \Alert!\
            62747
            12
   66             * Text for message box
   67             * File  INF4MsgHandler.s        27
   68 00067 00000         CON(5)  =NINE
   69 0006C 00000         CON(5)  =FIFTEEN
   70             * Min Max character widths
   71             * File  INF4MsgHandler.s        28
   72 00071 00000         CON(5)  =MINUSONE
   73             * No grob
   74             * File  INF4MsgHandler.s        29
   75 00076 00000         CON(5)  ='
   76 0007B 00000         CON(5)  =DOROMP
   77 00080 00000         CON(6)  =~MsgBoxMenu
            0
   78             * Message box menu
   79             * File  INF4MsgHandler.s        30
   80 00086 00000         CON(5)  =DOROMP
   81 0008B 00000         CON(6)  =~DoMsgBox
            0
   82             * Display the message box
   83             * File  INF4MsgHandler.s        31
   84 00091 00000         CON(5)  =DROP
   85             * DROP returned flag
   86             * File  INF4MsgHandler.s        32
   87 00096 00000         CON(5)  =SEMI
   88             * File  INF4MsgHandler.s        33
   89 0009B 00000         CON(5)  =SEMI
   90             * File  INF4MsgHandler.s        34
   91 000A0 00000         CON(5)  =DOLIST
   92             * Softkey 5
   93             * File  INF4MsgHandler.s        35
   94 000A5 00000         CON(5)  =DOCSTR
   95 000AA F0000         CON(5)  15
   96 000AF 8214E         NIBASC  \(AN(L\
            482C4
   97             * Softkey label $
   98             * File  INF4MsgHandler.s        36
   99 000B9 00000         CON(5)  =DOCOL
  100             * Softkey action = standard action
  101             * File  INF4MsgHandler.s        37
  102 000BE 00000         CON(5)  =TakeOver
  103             * File  INF4MsgHandler.s        38
  104 000C3 00000         CON(5)  =DOROMP
  105 000C8 00000         CON(6)  =~DoKeyCancel
            0
  106             * File  INF4MsgHandler.s        39
  107 000CE 00000         CON(5)  =SEMI
  108             * File  INF4MsgHandler.s        40
  109 000D3 00000         CON(5)  =SEMI
  110             * File  INF4MsgHandler.s        41
  111 000D8 00000         CON(5)  =DOLIST
  112             * Softkey 6
  113             * File  INF4MsgHandler.s        42
  114 000DD 00000         CON(5)  =DOCSTR
  115 000E2 90000         CON(5)  9
  116 000E7 F4B4          NIBASC  \OK\
  117             * Softkey label $
  118             * File  INF4MsgHandler.s        43
  119 000EB 00000         CON(5)  =DOCOL
  120             * Softkey action = standard action
  121             * File  INF4MsgHandler.s        44
  122 000F0 00000         CON(5)  =TakeOver
  123             * File  INF4MsgHandler.s        45
  124 000F5 00000         CON(5)  =DOROMP
  125 000FA 00000         CON(6)  =~DoKeyOK
            0
  126             * File  INF4MsgHandler.s        46
  127 00100 00000         CON(5)  =SEMI
  128             * File  INF4MsgHandler.s        47
  129 00105 00000         CON(5)  =SEMI
  130             * File  INF4MsgHandler.s        48
  131 0010A 00000         CON(5)  =SEMI
  132             * File  INF4MsgHandler.s        49
  133 0010F 00000         CON(5)  =DOROMP
  134 00114 00000         CON(6)  =~IFMenuRow2
            0
  135             * Std. 2nd row menu keys [ -> { RESET CALC TYPES {} CANCEL OK } ]
  136             * File  INF4MsgHandler.s        50
  137 0011A 00000         CON(5)  =&COMP
  138             * File  INF4MsgHandler.s        51
  139 0011F 00000         CON(5)  =&COMP
  140             * {} {}' -> {}''
  141             * File  INF4MsgHandler.s        52
  142 00124 00000         CON(5)  =TWO
  143 00129 00000         CON(5)  =::N
  144             * {}'' #2 -> ::;
  145             * File  INF4MsgHandler.s        53
  146 0012E 00000         CON(5)  =TRUE
  147             * Message was handled
  148             * File  INF4MsgHandler.s        54
  149 00133 00000         CON(5)  =SEMI
  150             * File  INF4MsgHandler.s        55
  151 00138 00000         CON(5)  =FALSE
  152             * Other messages not handled
  153             * File  INF4MsgHandler.s        56
  154 0013D 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat May 16 20:29:29 2009
V3.0.9 (04/15/2007)   Symbol Table                       INF4MsgHandler Page    2

 #=case                            Ext                   -    34
 &COMP                             Ext                   -   137   139
 '                                 Ext                   -    39    75
 ::N                               Ext                   -   143
 DOCOL                             Ext                   -    31    35    57
                                          99   119
 DOCSTR                            Ext                   -    52    63    94
                                         114
 DOLIST                            Ext                   -    47    49    91
                                         111
 DOROMP                            Ext                   -    43    76    80
                                         104   124   133
 DROP                              Ext                   -    84
 FALSE                             Ext                   -   151
 FIFTEEN                           Ext                   -    33    69
=INF4MsgHandler                    Rel       0 #00000000 -    29
 MINUSONE                          Ext                   -    72
 NINE                              Ext                   -    68
 NoExitAction                      Ext                   -    40
=RomId                             Abs     512 #00000200 -    13
 SEMI                              Ext                   -    87    89   107
                                         109   127   129   131   149   154
 TRUE                              Ext                   -   146
 TWO                               Ext                   -   142
 TakeOver                          Ext                   -    60   102   122
 ~DoKeyCancel                      Ext                   -   105
 ~DoKeyOK                          Ext                   -   125
 ~DoMsgBox                         Ext                   -    81
 ~IFMenuRow1                       Ext                   -    44
 ~IFMenuRow2                       Ext                   -   134
 ~MsgBoxMenu                       Ext                   -    77
Saturn Assembler                                       Sat May 16 20:29:29 2009
V3.0.9 (04/15/2007)   Statistics                         INF4MsgHandler Page    3

Input Parameters

  Source file name is INF4MsgHandler.a

  Listing file name is INF4MsgHandler.l

  Object file name is INF4MsgHandler.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
