Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)                                      INTMNU.a       Page    1

    1             * File  INTMNU.s        1
    2             * RPL
    3             * File  INTMNU.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTMNU.s, part of the INTERCEPT50.hpp project, created by <> on 19/06/2009
    5             **********************************************************************
    6             * NAME:          INTMNU
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.7
    9             * DATE:          19 June 2009
   10             * LIBRARY #:     321h = 801d
   11             * COMPATIBILITY: HP50  ( MUST use CONVARG )
   12             *                HP48  ( DO NOT use CONVARG )
   13             * DESCRIPTION:   Generates and displays the CST menu for the
   14             *                interception problem.
   15             *
   16             * File  INTMNU.s        14
   17             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT48\INTERCEPT48.h
   18
   19             =RomId  EQU     #321
   20             * ROMID set to 321
   21
   22
   23
   24
   25
   26
   27             *|| Resuming file INTMNU.s at line 14
   28 00000 00000         CON(6)  =~xINTMNU
            0
   29 00006       =xINTMNU
   30             * File  INTMNU.s        16
   31 00006 00000         CON(5)  =DOCOL
   32             * File  INTMNU.s        17
   33 0000B 00000         CON(5)  =CK0
   34             * No arguments
   35             * File  INTMNU.s        18
   36 00010 00000         CON(5)  =DOLIST
   37             * File  INTMNU.s        19
   38 00015 00000         CON(5)  =DOIDNT
   39 0001A 20            CON(2)  2
   40 0001C 7544          NIBASC  \WD\
   41 00020 00000         CON(5)  =DOIDNT
   42 00025 20            CON(2)  2
   43 00027 7535          NIBASC  \WS\
   44 0002B 00000         CON(5)  =DOIDNT
   45 00030 30            CON(2)  3
   46 00032 45143         NIBASC  \TAS\
            5
   47 00038 00000         CON(5)  =DOIDNT
   48 0003D 40            CON(2)  4
   49 0003F 4425D         NIBASC  \DRM2\
            423
   50 00047 00000         CON(5)  =DOIDNT
   51 0004C 40            CON(2)  4
   52 0004E D425D         NIBASC  \MRM2\
            423
   53 00056 00000         CON(5)  =DOIDNT
   54 0005B 30            CON(2)  3
   55 0005D 45253         NIBASC  \TRS\
            5
   56 00063 00000         CON(5)  =DOIDNT
   57 00068 30            CON(2)  3
   58 0006A 74353         NIBASC  \GSS\
            5
   59             * INPUT global variables
   60             * File  INTMNU.s        20
   61 00070 00000         CON(5)  =DOLIST
   62 00075 00000         CON(5)  =DOCSTR
   63 0007A F0000         CON(5)  15
   64 0007F 35F4C         NIBASC  \SOLVE\
            46554
   65 00089 00000         CON(5)  =DOCOL
   66             * Solve menu option
   67             * File  INTMNU.s        21
   68 0008E 00000         CON(5)  =DOIDNT
   69 00093 20            CON(2)  2
   70 00095 7544          NIBASC  \WD\
   71 00099 00000         CON(5)  =DOIDNT
   72 0009E 20            CON(2)  2
   73 000A0 7535          NIBASC  \WS\
   74 000A4 00000         CON(5)  =DOIDNT
   75 000A9 30            CON(2)  3
   76 000AB 45143         NIBASC  \TAS\
            5
   77 000B1 00000         CON(5)  =DOIDNT
   78 000B6 40            CON(2)  4
   79 000B8 4425D         NIBASC  \DRM2\
            423
   80 000C0 00000         CON(5)  =DOIDNT
   81 000C5 40            CON(2)  4
   82 000C7 D425D         NIBASC  \MRM2\
            423
   83 000CF 00000         CON(5)  =DOIDNT
   84 000D4 30            CON(2)  3
   85 000D6 45253         NIBASC  \TRS\
            5
   86 000DC 00000         CON(5)  =DOIDNT
   87 000E1 30            CON(2)  3
   88 000E3 74353         NIBASC  \GSS\
            5
   89             * Arguments
   90             * HP50 ONLY ( Comment CONVARG out for HP48 )
   91             *            CONVARG                                              ( ***** HP50 ONLY ***** )
   92             * HP50 & HP48 ( Rompointers in INTER have to be modified )
   93             * File  INTMNU.s        25
   94 000E9 00000         CON(5)  =DOROMP
   95 000EE 00000         CON(6)  =~INTER
            0
   96             * Solve interception problem
   97             * File  INTMNU.s        26
   98 000F4 00000         CON(5)  ='
   99 000F9 00000         CON(5)  =DOIDNT
  100 000FE 30            CON(2)  3
  101 00100 54459         NIBASC  \ETI\
            4
  102 00106 00000         CON(5)  =STO
  103             * STO results in OUTPUT
  104             * File  INTMNU.s        27
  105 0010B 00000         CON(5)  ='
  106 00110 00000         CON(5)  =DOIDNT
  107 00115 20            CON(2)  2
  108 00117 7435          NIBASC  \GS\
  109 0011B 00000         CON(5)  =STO
  110             * global variables
  111             * File  INTMNU.s        28
  112 00120 00000         CON(5)  ='
  113 00125 00000         CON(5)  =DOIDNT
  114 0012A 20            CON(2)  2
  115 0012C 4534          NIBASC  \TC\
  116 00130 00000         CON(5)  =STO
  117             * File  INTMNU.s        29
  118 00135 00000         CON(5)  ='
  119 0013A 00000         CON(5)  =DOIDNT
  120 0013F 30            CON(2)  3
  121 00141 84447         NIBASC  \HDG\
            4
  122 00147 00000         CON(5)  =STO
  123             * File  INTMNU.s        30
  124 0014C 00000         CON(5)  =SEMI
  125             * File  INTMNU.s        31
  126 00151 00000         CON(5)  =SEMI
  127             * File  INTMNU.s        32
  128 00156 00000         CON(5)  =DOIDNT
  129 0015B 30            CON(2)  3
  130 0015D 84447         NIBASC  \HDG\
            4
  131 00163 00000         CON(5)  =DOIDNT
  132 00168 20            CON(2)  2
  133 0016A 4534          NIBASC  \TC\
  134 0016E 00000         CON(5)  =DOIDNT
  135 00173 20            CON(2)  2
  136 00175 7435          NIBASC  \GS\
  137 00179 00000         CON(5)  =DOIDNT
  138 0017E 30            CON(2)  3
  139 00180 54459         NIBASC  \ETI\
            4
  140             * OUTPUT global variables
  141             * File  INTMNU.s        33
  142 00186 00000         CON(5)  =DOLIST
  143 0018B 00000         CON(5)  =DOCSTR
  144 00190 D0000         CON(5)  13
  145 00195 D454E         NIBASC  \MENU\
            455
  146 0019D 00000         CON(5)  =DOCOL
  147             * Re-display menu
  148             * File  INTMNU.s        34
  149 001A2 00000         CON(5)  =DOROMP
  150 001A7 00000         CON(6)  =~xINTMNU
            0
  151             * File  INTMNU.s        35
  152 001AD 00000         CON(5)  =SEMI
  153             * File  INTMNU.s        36
  154 001B2 00000         CON(5)  =SEMI
  155             * File  INTMNU.s        37
  156 001B7 00000         CON(5)  =DOLIST
  157 001BC 00000         CON(5)  =DOCSTR
  158 001C1 B0000         CON(5)  11
  159 001C6 74559         NIBASC  \GUI\
            4
  160 001CC 00000         CON(5)  =DOCOL
  161             * Run the GUI
  162             * File  INTMNU.s        38
  163 001D1 00000         CON(5)  =DOROMP
  164 001D6 00000         CON(6)  =~xINFRM
            0
  165             * File  INTMNU.s        39
  166 001DC 00000         CON(5)  =SEMI
  167             * File  INTMNU.s        40
  168 001E1 00000         CON(5)  =SEMI
  169             * File  INTMNU.s        41
  170 001E6 00000         CON(5)  =SEMI
  171             * File  INTMNU.s        42
  172 001EB 00000         CON(5)  =xMENU
  173             * Create and display CST menu
  174             * File  INTMNU.s        43
  175 001F0 00000         CON(5)  =SEMI
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Symbol Table                       INTMNU.a       Page    2

 '                                 Ext                   -    98   105   112
                                         118
 CK0                               Ext                   -    33
 DOCOL                             Ext                   -    31    65   146
                                         160
 DOCSTR                            Ext                   -    62   143   157
 DOIDNT                            Ext                   -    38    41    44
                                          47    50    53    56    68    71    74
                                          77    80    83    86    99   106   113
                                         119   128   131   134   137
 DOLIST                            Ext                   -    36    61   142
                                         156
 DOROMP                            Ext                   -    94   149   163
=RomId                             Abs     801 #00000321 -    19
 SEMI                              Ext                   -   124   126   152
                                         154   166   168   170   175
 STO                               Ext                   -   102   109   116
                                         122
=xINTMNU                           Rel       6 #00000006 -    29
 xMENU                             Ext                   -   172
 ~INTER                            Ext                   -    95
 ~xINFRM                           Ext                   -   164
 ~xINTMNU                          Ext                   -    28   150
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Statistics                         INTMNU.a       Page    3

Input Parameters

  Source file name is INTMNU.a

  Listing file name is INTMNU.l

  Object file name is INTMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
