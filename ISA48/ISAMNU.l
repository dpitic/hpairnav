Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)                                      ISAMNU.a       Page    1

    1             * File  ISAMNU.s        1
    2             * RPL
    3             * File  ISAMNU.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA50\ISAMNU.s, part of the ISA50.hpp project, created by <> on 12/06/2009
    5             **********************************************************************
    6             * NAME:            ISAMNU
    7             * Library #:                            326h = 806d
    8             * AUTHOR:          Dan Pitic
    9             * VERSION:         1.25
   10             * DATE:            19 June 2009
   11             * COMPATIBILITY:   HP50, HP48
   12             * DESCRIPTION:     Creates the CST menu for the ISA library.
   13             *
   14             * File  ISAMNU.s        12
   15             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\ISA48.h
   16
   17             =RomId  EQU     #326
   18             * ROMID set to 326
   19
   20
   21
   22
   23
   24
   25
   26
   27
   28
   29             *|| Resuming file ISAMNU.s at line 12
   30 00000 00000         CON(6)  =~xISAMNU
            0
   31 00006       =xISAMNU
   32             * File  ISAMNU.s        14
   33 00006 00000         CON(5)  =DOCOL
   34             * File  ISAMNU.s        15
   35 0000B 00000         CON(5)  =CK0
   36             * No arguments
   37             * File  ISAMNU.s        16
   38 00010 00000         CON(5)  =DOLIST
   39             * File  ISAMNU.s        17
   40 00015 00000         CON(5)  =DOLIST
   41 0001A 00000         CON(5)  =DOCSTR
   42 0001F F0000         CON(5)  15
   43 00024 7454F         NIBASC  \GEOPO\
            405F4
   44 0002E 00000         CON(5)  =DOCOL
   45             * Calc. Geopotential Altitude
   46             * File  ISAMNU.s        18
   47 00033 00000         CON(5)  =DOROMP
   48 00038 00000         CON(6)  =~xGEOPO
            0
   49 0003E 00000         CON(5)  =SEMI
   50 00043 00000         CON(5)  =SEMI
   51             * File  ISAMNU.s        19
   52 00048 00000         CON(5)  =DOLIST
   53 0004D 00000         CON(5)  =DOCSTR
   54 00052 D0000         CON(5)  13
   55 00057 94351         NIBASC  \ISAT\
            445
   56 0005F 00000         CON(5)  =DOCOL
   57             * Calc. ISA temperature
   58             * File  ISAMNU.s        20
   59 00064 00000         CON(5)  =DOROMP
   60 00069 00000         CON(6)  =~xISAT
            0
   61 0006F 00000         CON(5)  =SEMI
   62 00074 00000         CON(5)  =SEMI
   63             * File  ISAMNU.s        21
   64 00079 00000         CON(5)  =DOLIST
   65 0007E 00000         CON(5)  =DOCSTR
   66 00083 D0000         CON(5)  13
   67 00088 94351         NIBASC  \ISAP\
            405
   68 00090 00000         CON(5)  =DOCOL
   69             * Calc. ISA pressure
   70             * File  ISAMNU.s        22
   71 00095 00000         CON(5)  =DOROMP
   72 0009A 00000         CON(6)  =~xISAP
            0
   73 000A0 00000         CON(5)  =SEMI
   74 000A5 00000         CON(5)  =SEMI
   75             * File  ISAMNU.s        23
   76 000AA 00000         CON(5)  =DOLIST
   77 000AF 00000         CON(5)  =DOCSTR
   78 000B4 D0000         CON(5)  13
   79 000B9 94351         NIBASC  \ISA\
            4
   80 000BF 79            CON(2)  #97
   81 000C1 00000         CON(5)  =DOCOL
   82             * Calc. ISA density
   83             * File  ISAMNU.s        24
   84 000C6 00000         CON(5)  =DOROMP
   85 000CB 00000         CON(6)  =~xISA\97
            0
   86 000D1 00000         CON(5)  =SEMI
   87 000D6 00000         CON(5)  =SEMI
   88             * File  ISAMNU.s        25
   89 000DB 00000         CON(5)  =DOLIST
   90 000E0 00000         CON(5)  =DOCSTR
   91 000E5 D0000         CON(5)  13
   92 000EA 94351         NIBASC  \ISAa\
            416
   93 000F2 00000         CON(5)  =DOCOL
   94             * Calc. SPEED OF SOUND in ISA
   95             * File  ISAMNU.s        26
   96 000F7 00000         CON(5)  =DOROMP
   97 000FC 00000         CON(6)  =~xISAa
            0
   98 00102 00000         CON(5)  =SEMI
   99 00107 00000         CON(5)  =SEMI
  100             * File  ISAMNU.s        27
  101 0010C 00000         CON(5)  =DOLIST
  102 00111 00000         CON(5)  =SEMI
  103             * File  ISAMNU.s        28
  104 00116 00000         CON(5)  =DOLIST
  105 0011B 00000         CON(5)  =DOCSTR
  106 00120 D0000         CON(5)  13
  107 00125 D454E         NIBASC  \MENU\
            455
  108 0012D 00000         CON(5)  =DOCOL
  109             * Run the ISA library menu
  110             * File  ISAMNU.s        29
  111 00132 00000         CON(5)  =DOROMP
  112 00137 00000         CON(6)  =~xISAMNU
            0
  113 0013D 00000         CON(5)  =SEMI
  114 00142 00000         CON(5)  =SEMI
  115             * File  ISAMNU.s        30
  116 00147 00000         CON(5)  =DOLIST
  117 0014C 00000         CON(5)  =SEMI
  118             * File  ISAMNU.s        31
  119 00151 00000         CON(5)  =DOLIST
  120 00156 00000         CON(5)  =SEMI
  121             * File  ISAMNU.s        32
  122 0015B 00000         CON(5)  =DOLIST
  123 00160 00000         CON(5)  =SEMI
  124             * File  ISAMNU.s        33
  125 00165 00000         CON(5)  =DOLIST
  126 0016A 00000         CON(5)  =SEMI
  127             * File  ISAMNU.s        34
  128 0016F 00000         CON(5)  =DOLIST
  129 00174 00000         CON(5)  =DOCSTR
  130 00179 B0000         CON(5)  11
  131 0017E 74559         NIBASC  \GUI\
            4
  132 00184 00000         CON(5)  =DOCOL
  133             * Run the GUI
  134             * File  ISAMNU.s        35
  135 00189 00000         CON(5)  =DOROMP
  136 0018E 00000         CON(6)  =~xISAFRM
            0
  137 00194 00000         CON(5)  =SEMI
  138 00199 00000         CON(5)  =SEMI
  139             * File  ISAMNU.s        36
  140 0019E 00000         CON(5)  =SEMI
  141             * File  ISAMNU.s        37
  142 001A3 00000         CON(5)  =xMENU
  143             * Create & display CST menu
  144             * File  ISAMNU.s        38
  145 001A8 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAMNU.a       Page    2

 CK0                               Ext                   -    35
 DOCOL                             Ext                   -    33    44    56
                                          68    81    93   108   132
 DOCSTR                            Ext                   -    41    53    65
                                          77    90   105   129
 DOLIST                            Ext                   -    38    40    52
                                          64    76    89   101   104   116   119
                                         122   125   128
 DOROMP                            Ext                   -    47    59    71
                                          84    96   111   135
=RomId                             Abs     806 #00000326 -    17
 SEMI                              Ext                   -    49    50    61
                                          62    73    74    86    87    98    99
                                         102   113   114   117   120   123   126
                                         137   138   140   145
=xISAMNU                           Rel       6 #00000006 -    31
 xMENU                             Ext                   -   142
 ~xGEOPO                           Ext                   -    48
 ~xISAFRM                          Ext                   -   136
 ~xISAMNU                          Ext                   -    30   112
 ~xISAP                            Ext                   -    72
 ~xISAT                            Ext                   -    60
 ~xISA\97                          Ext                   -    85
 ~xISAa                            Ext                   -    97
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Statistics                         ISAMNU.a       Page    3

Input Parameters

  Source file name is ISAMNU.a

  Listing file name is ISAMNU.l

  Object file name is ISAMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
