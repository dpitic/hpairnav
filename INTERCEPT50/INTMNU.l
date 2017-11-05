Saturn Assembler                                       Sun Jun 21 11:25:58 2009
V3.0.9 (04/15/2007)                                      INTMNU.a       Page    1

    1               * File  INTMNU.s        1
    2               * RPL
    3               * File  INTMNU.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTMNU.s, part of the INTERCEPT50.hpp project, created by <> on 19/06/2009
    5               **********************************************************************
    6               * NAME:          INTMNU
    7               * AUTHOR:        Dan Pitic
    8               * VERSION:       1.7
    9               * DATE:          19 June 2009
   10               * LIBRARY #:     321h = 801d
   11               * COMPATIBILITY: HP50  ( Needs CONVARG )
   12               *                HP48  ( DO NOT use CONVARG )
   13               * DESCRIPTION:   Generates and displays the CST menu for the
   14               *                interception problem.
   15               *
   16               * File  INTMNU.s        14
   17               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTERCEPT50.h
   18
   19               =RomId  EQU     #321
   20               * ROMID set to 321
   21
   22
   23
   24
   25
   26
   27
   28               *|| Resuming file INTMNU.s at line 14
   29 00000 000000          CON(6)  =~xINTMNU
   30 00006         =xINTMNU
   31               * File  INTMNU.s        16
   32 00006 00000           CON(5)  =DOCOL
   33               * File  INTMNU.s        17
   34 0000B 00000           CON(5)  =CK0
   35               * No arguments
   36               * File  INTMNU.s        18
   37 00010 00000           CON(5)  =DOLIST
   38               * File  INTMNU.s        19
   39 00015 00000           CON(5)  =DOIDNT
   40 0001A 20              CON(2)  2
   41 0001C 7544            NIBASC  \WD\
   42 00020 00000           CON(5)  =DOIDNT
   43 00025 20              CON(2)  2
   44 00027 7535            NIBASC  \WS\
   45 0002B 00000           CON(5)  =DOIDNT
   46 00030 30              CON(2)  3
   47 00032 451435          NIBASC  \TAS\
   48 00038 00000           CON(5)  =DOIDNT
   49 0003D 40              CON(2)  4
   50 0003F 4425D42         NIBASC  \DRM2\
            3
   51 00047 00000           CON(5)  =DOIDNT
   52 0004C 40              CON(2)  4
   53 0004E D425D42         NIBASC  \MRM2\
            3
   54 00056 00000           CON(5)  =DOIDNT
   55 0005B 30              CON(2)  3
   56 0005D 452535          NIBASC  \TRS\
   57 00063 00000           CON(5)  =DOIDNT
   58 00068 30              CON(2)  3
   59 0006A 743535          NIBASC  \GSS\
   60               * INPUT global variables
   61               * File  INTMNU.s        20
   62 00070 00000           CON(5)  =DOLIST
   63 00075 00000           CON(5)  =DOCSTR
   64 0007A F0000           CON(5)  15
   65 0007F 35F4C46         NIBASC  \SOLVE\
            554
   66 00089 00000           CON(5)  =DOCOL
   67               * Solve menu option
   68               * File  INTMNU.s        21
   69 0008E 00000           CON(5)  =DOIDNT
   70 00093 20              CON(2)  2
   71 00095 7544            NIBASC  \WD\
   72 00099 00000           CON(5)  =DOIDNT
   73 0009E 20              CON(2)  2
   74 000A0 7535            NIBASC  \WS\
   75 000A4 00000           CON(5)  =DOIDNT
   76 000A9 30              CON(2)  3
   77 000AB 451435          NIBASC  \TAS\
   78 000B1 00000           CON(5)  =DOIDNT
   79 000B6 40              CON(2)  4
   80 000B8 4425D42         NIBASC  \DRM2\
            3
   81 000C0 00000           CON(5)  =DOIDNT
   82 000C5 40              CON(2)  4
   83 000C7 D425D42         NIBASC  \MRM2\
            3
   84 000CF 00000           CON(5)  =DOIDNT
   85 000D4 30              CON(2)  3
   86 000D6 452535          NIBASC  \TRS\
   87 000DC 00000           CON(5)  =DOIDNT
   88 000E1 30              CON(2)  3
   89 000E3 743535          NIBASC  \GSS\
   90               * Arguments
   91               * HP50 ONLY ( Comment CONVARG out for HP48 )
   92               * File  INTMNU.s        23
   93 000E9 00000           CON(5)  =DOROMP
   94 000EE 000000          CON(6)  =~CONVARG
   95               * ***** HP50 ONLY *****
   96               * HP50 & HP48 ( Rompointers in INTER have to be modified )
   97               * File  INTMNU.s        25
   98 000F4 00000           CON(5)  =DOROMP
   99 000F9 000000          CON(6)  =~INTER
  100               * Solve interception problem
  101               * File  INTMNU.s        26
  102 000FF 00000           CON(5)  ='
  103 00104 00000           CON(5)  =DOIDNT
  104 00109 30              CON(2)  3
  105 0010B 544594          NIBASC  \ETI\
  106 00111 00000           CON(5)  =STO
  107               * STO results in OUTPUT
  108               * File  INTMNU.s        27
  109 00116 00000           CON(5)  ='
  110 0011B 00000           CON(5)  =DOIDNT
  111 00120 20              CON(2)  2
  112 00122 7435            NIBASC  \GS\
  113 00126 00000           CON(5)  =STO
  114               * global variables
  115               * File  INTMNU.s        28
  116 0012B 00000           CON(5)  ='
  117 00130 00000           CON(5)  =DOIDNT
  118 00135 20              CON(2)  2
  119 00137 4534            NIBASC  \TC\
  120 0013B 00000           CON(5)  =STO
  121               * File  INTMNU.s        29
  122 00140 00000           CON(5)  ='
  123 00145 00000           CON(5)  =DOIDNT
  124 0014A 30              CON(2)  3
  125 0014C 844474          NIBASC  \HDG\
  126 00152 00000           CON(5)  =STO
  127               * File  INTMNU.s        30
  128 00157 00000           CON(5)  =SEMI
  129               * File  INTMNU.s        31
  130 0015C 00000           CON(5)  =SEMI
  131               * File  INTMNU.s        32
  132 00161 00000           CON(5)  =DOIDNT
  133 00166 30              CON(2)  3
  134 00168 844474          NIBASC  \HDG\
  135 0016E 00000           CON(5)  =DOIDNT
  136 00173 20              CON(2)  2
  137 00175 4534            NIBASC  \TC\
  138 00179 00000           CON(5)  =DOIDNT
  139 0017E 20              CON(2)  2
  140 00180 7435            NIBASC  \GS\
  141 00184 00000           CON(5)  =DOIDNT
  142 00189 30              CON(2)  3
  143 0018B 544594          NIBASC  \ETI\
  144               * OUTPUT global variables
  145               * File  INTMNU.s        33
  146 00191 00000           CON(5)  =DOLIST
  147 00196 00000           CON(5)  =DOCSTR
  148 0019B D0000           CON(5)  13
  149 001A0 D454E45         NIBASC  \MENU\
            5
  150 001A8 00000           CON(5)  =DOCOL
  151               * Re-display menu
  152               * File  INTMNU.s        34
  153 001AD 00000           CON(5)  =DOROMP
  154 001B2 000000          CON(6)  =~xINTMNU
  155               * File  INTMNU.s        35
  156 001B8 00000           CON(5)  =SEMI
  157               * File  INTMNU.s        36
  158 001BD 00000           CON(5)  =SEMI
  159               * File  INTMNU.s        37
  160 001C2 00000           CON(5)  =DOLIST
  161 001C7 00000           CON(5)  =DOCSTR
  162 001CC B0000           CON(5)  11
  163 001D1 745594          NIBASC  \GUI\
  164 001D7 00000           CON(5)  =DOCOL
  165               * Run the GUI
  166               * File  INTMNU.s        38
  167 001DC 00000           CON(5)  =DOROMP
  168 001E1 000000          CON(6)  =~xINFRM
  169               * File  INTMNU.s        39
  170 001E7 00000           CON(5)  =SEMI
  171               * File  INTMNU.s        40
  172 001EC 00000           CON(5)  =SEMI
  173               * File  INTMNU.s        41
  174 001F1 00000           CON(5)  =SEMI
  175               * File  INTMNU.s        42
  176 001F6 00000           CON(5)  =xMENU
  177               * Create and display CST menu
  178               * File  INTMNU.s        43
  179 001FB 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun Jun 21 11:25:58 2009
V3.0.9 (04/15/2007)   Symbol Table                       INTMNU.a       Page    2

 '                                 Ext                   -   102   109   116
                                         122
 CK0                               Ext                   -    34
 DOCOL                             Ext                   -    32    66   150
                                         164
 DOCSTR                            Ext                   -    63   147   161
 DOIDNT                            Ext                   -    39    42    45
                                          48    51    54    57    69    72    75
                                          78    81    84    87   103   110   117
                                         123   132   135   138   141
 DOLIST                            Ext                   -    37    62   146
                                         160
 DOROMP                            Ext                   -    93    98   153
                                         167
=RomId                             Abs     801 #00000321 -    19
 SEMI                              Ext                   -   128   130   156
                                         158   170   172   174   179
 STO                               Ext                   -   106   113   120
                                         126
=xINTMNU                           Rel       6 #00000006 -    30
 xMENU                             Ext                   -   176
 ~CONVARG                          Ext                   -    94
 ~INTER                            Ext                   -    99
 ~xINFRM                           Ext                   -   168
 ~xINTMNU                          Ext                   -    29   154
Saturn Assembler                                       Sun Jun 21 11:25:58 2009
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
