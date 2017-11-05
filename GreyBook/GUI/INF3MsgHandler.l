Saturn Assembler                                       Sat May 16 19:59:33 2009
V3.0.9 (04/15/2007)                                      INF3MsgHandler Page    1

    1             * File  INF3MsgHandler.s        1
    2             * RPL
    3             * File  INF3MsgHandler.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF3MsgHandler.s, part of the INF3.hpp project, created by <> on 16/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Input Form Message handler placed in a separate
    7             *                  file to allow for debugging.
    8             *
    9             * File Header
   10             * File  INF3MsgHandler.s        8
   11             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF3.h
   12
   13             =RomId  EQU     #200
   14             * ROMID set to 200
   15
   16
   17
   18             *|| Resuming file INF3MsgHandler.s at line 8
   19             * File  INF3MsgHandler.s        10
   20             * File  INF3MsgHandler.s        11
   21             * Process CANCEL key [ -> FALSE ]
   22             * File  INF3MsgHandler.s        12
   23             * Process OK key     [ -> Field_values TRUE ]
   24             * File  INF3MsgHandler.s        13
   25 00000       =INF3MsgHandler
   26             * File  INF3MsgHandler.s        14
   27 00000 00000         CON(5)  =DOCOL
   28             * File  INF3MsgHandler.s        15
   29 00005 00000         CON(5)  =SIXTEEN
   30 0000A 00000         CON(5)  =#=case
   31 0000F 00000         CON(5)  =DOCOL
   32             * Three Menu Keys [ -> { Key4 Key5 Key6 } ]
   33             *        SIXTEEN #<> case FALSE
   34             * File  INF3MsgHandler.s        17
   35 00014 00000         CON(5)  =DOLIST
   36             * File  INF3MsgHandler.s        18
   37 00019 00000         CON(5)  =DOLIST
   38             * Softkey 4
   39             * File  INF3MsgHandler.s        19
   40 0001E 00000         CON(5)  =DOCSTR
   41 00023 F0000         CON(5)  15
   42 00028 14C45         NIBASC  \ALERT\
            42545
   43             * Softkey label $
   44             * File  INF3MsgHandler.s        20
   45 00032 00000         CON(5)  =DOCOL
   46             * Softkey action
   47             * File  INF3MsgHandler.s        21
   48 00037 00000         CON(5)  =TakeOver
   49             * Custom key definition placeholder
   50             * File  INF3MsgHandler.s        22
   51 0003C 00000         CON(5)  =DOCSTR
   52 00041 11000         CON(5)  17
   53 00046 14C65         NIBASC  \Alert!\
            62747
            12
   54             * Text for message box
   55             * File  INF3MsgHandler.s        23
   56 00052 00000         CON(5)  =NINE
   57 00057 00000         CON(5)  =FIFTEEN
   58             * Min Max character widths
   59             * File  INF3MsgHandler.s        24
   60 0005C 00000         CON(5)  =MINUSONE
   61             * No grob
   62             * File  INF3MsgHandler.s        25
   63 00061 00000         CON(5)  ='
   64 00066 00000         CON(5)  =DOROMP
   65 0006B 00000         CON(6)  =~MsgBoxMenu
            0
   66             * Message box menu
   67             * File  INF3MsgHandler.s        26
   68 00071 00000         CON(5)  =DOROMP
   69 00076 00000         CON(6)  =~DoMsgBox
            0
   70             * Display the message box
   71             * File  INF3MsgHandler.s        27
   72 0007C 00000         CON(5)  =DROP
   73             * DROP returned flag
   74             * File  INF3MsgHandler.s        28
   75 00081 00000         CON(5)  =SEMI
   76             * File  INF3MsgHandler.s        29
   77 00086 00000         CON(5)  =SEMI
   78             * File  INF3MsgHandler.s        30
   79 0008B 00000         CON(5)  =DOLIST
   80             * Softkey 5
   81             * File  INF3MsgHandler.s        31
   82 00090 00000         CON(5)  =DOCSTR
   83 00095 F0000         CON(5)  15
   84 0009A 8214E         NIBASC  \(AN(L\
            482C4
   85             * Softkey label $
   86             * File  INF3MsgHandler.s        32
   87 000A4 00000         CON(5)  =DOCOL
   88             * Softkey action = standard action
   89             * File  INF3MsgHandler.s        33
   90 000A9 00000         CON(5)  =TakeOver
   91             * File  INF3MsgHandler.s        34
   92 000AE 00000         CON(5)  =DOROMP
   93 000B3 00000         CON(6)  =~DoKeyCancel
            0
   94             * File  INF3MsgHandler.s        35
   95 000B9 00000         CON(5)  =SEMI
   96             * File  INF3MsgHandler.s        36
   97 000BE 00000         CON(5)  =SEMI
   98             * File  INF3MsgHandler.s        37
   99 000C3 00000         CON(5)  =DOLIST
  100             * Softkey 6
  101             * File  INF3MsgHandler.s        38
  102 000C8 00000         CON(5)  =DOCSTR
  103 000CD 90000         CON(5)  9
  104 000D2 F4B4          NIBASC  \OK\
  105             * Softkey label $
  106             * File  INF3MsgHandler.s        39
  107 000D6 00000         CON(5)  =DOCOL
  108             * Softkey action = standard action
  109             * File  INF3MsgHandler.s        40
  110 000DB 00000         CON(5)  =TakeOver
  111             * File  INF3MsgHandler.s        41
  112 000E0 00000         CON(5)  =DOROMP
  113 000E5 00000         CON(6)  =~DoKeyOK
            0
  114             * File  INF3MsgHandler.s        42
  115 000EB 00000         CON(5)  =SEMI
  116             * File  INF3MsgHandler.s        43
  117 000F0 00000         CON(5)  =SEMI
  118             * File  INF3MsgHandler.s        44
  119 000F5 00000         CON(5)  =SEMI
  120             * File  INF3MsgHandler.s        45
  121 000FA 00000         CON(5)  =TRUE
  122             * FLAG required by menu builder
  123             * File  INF3MsgHandler.s        46
  124 000FF 00000         CON(5)  =TRUE
  125             * Message was handled
  126             * File  INF3MsgHandler.s        47
  127 00104 00000         CON(5)  =SEMI
  128             * File  INF3MsgHandler.s        48
  129 00109 00000         CON(5)  =FALSE
  130             * Other messages not handled
  131             * File  INF3MsgHandler.s        49
  132 0010E 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat May 16 19:59:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       INF3MsgHandler Page    2

 #=case                            Ext                   -    30
 '                                 Ext                   -    63
 DOCOL                             Ext                   -    27    31    45
                                          87   107
 DOCSTR                            Ext                   -    40    51    82
                                         102
 DOLIST                            Ext                   -    35    37    79
                                          99
 DOROMP                            Ext                   -    64    68    92
                                         112
 DROP                              Ext                   -    72
 FALSE                             Ext                   -   129
 FIFTEEN                           Ext                   -    57
=INF3MsgHandler                    Rel       0 #00000000 -    25
 MINUSONE                          Ext                   -    60
 NINE                              Ext                   -    56
=RomId                             Abs     512 #00000200 -    13
 SEMI                              Ext                   -    75    77    95
                                          97   115   117   119   127   132
 SIXTEEN                           Ext                   -    29
 TRUE                              Ext                   -   121   124
 TakeOver                          Ext                   -    48    90   110
 ~DoKeyCancel                      Ext                   -    93
 ~DoKeyOK                          Ext                   -   113
 ~DoMsgBox                         Ext                   -    69
 ~MsgBoxMenu                       Ext                   -    65
Saturn Assembler                                       Sat May 16 19:59:33 2009
V3.0.9 (04/15/2007)   Statistics                         INF3MsgHandler Page    3

Input Parameters

  Source file name is INF3MsgHandler.a

  Listing file name is INF3MsgHandler.l

  Object file name is INF3MsgHandler.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
