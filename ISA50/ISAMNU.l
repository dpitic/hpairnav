Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)                                      ISAMNU.a       Page    1

    1               * File  ISAMNU.s        1
    2               * RPL
    3               * File  ISAMNU.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA50\ISAMNU.s, part of the ISA50.hpp project, created by <> on 12/06/2009
    5               **********************************************************************
    6               * NAME:            ISAMNU
    7               * Library #:                            326h = 806d
    8               * AUTHOR:          Dan Pitic
    9               * VERSION:         1.25
   10               * DATE:            19 June 2009
   11               * COMPATIBILITY:   HP50, HP48
   12               * DESCRIPTION:     Creates the CST menu for the ISA library.
   13               *
   14               * File  ISAMNU.s        12
   15               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA50\ISA50.h
   16
   17               =RomId  EQU     #326
   18               * ROMID set to 326
   19
   20
   21
   22
   23
   24
   25
   26
   27
   28               *|| Resuming file ISAMNU.s at line 12
   29 00000 000000          CON(6)  =~xISAMNU
   30 00006         =xISAMNU
   31               * File  ISAMNU.s        14
   32 00006 00000           CON(5)  =DOCOL
   33               * File  ISAMNU.s        15
   34 0000B 00000           CON(5)  =CK0
   35               * No arguments
   36               * File  ISAMNU.s        16
   37 00010 00000           CON(5)  =DOLIST
   38               * File  ISAMNU.s        17
   39 00015 00000           CON(5)  =DOLIST
   40 0001A 00000           CON(5)  =DOCSTR
   41 0001F F0000           CON(5)  15
   42 00024 7454F40         NIBASC  \GEOPO\
            5F4
   43 0002E 00000           CON(5)  =DOCOL
   44               * Calc. Geopotential Altitude
   45               * File  ISAMNU.s        18
   46 00033 00000           CON(5)  =DOROMP
   47 00038 000000          CON(6)  =~xGEOPO
   48 0003E 00000           CON(5)  =SEMI
   49 00043 00000           CON(5)  =SEMI
   50               * File  ISAMNU.s        19
   51 00048 00000           CON(5)  =DOLIST
   52 0004D 00000           CON(5)  =DOCSTR
   53 00052 D0000           CON(5)  13
   54 00057 9435144         NIBASC  \ISAT\
            5
   55 0005F 00000           CON(5)  =DOCOL
   56               * Calc. ISA temperature
   57               * File  ISAMNU.s        20
   58 00064 00000           CON(5)  =DOROMP
   59 00069 000000          CON(6)  =~xISAT
   60 0006F 00000           CON(5)  =SEMI
   61 00074 00000           CON(5)  =SEMI
   62               * File  ISAMNU.s        21
   63 00079 00000           CON(5)  =DOLIST
   64 0007E 00000           CON(5)  =DOCSTR
   65 00083 D0000           CON(5)  13
   66 00088 9435140         NIBASC  \ISAP\
            5
   67 00090 00000           CON(5)  =DOCOL
   68               * Calc. ISA pressure
   69               * File  ISAMNU.s        22
   70 00095 00000           CON(5)  =DOROMP
   71 0009A 000000          CON(6)  =~xISAP
   72 000A0 00000           CON(5)  =SEMI
   73 000A5 00000           CON(5)  =SEMI
   74               * File  ISAMNU.s        23
   75 000AA 00000           CON(5)  =DOLIST
   76 000AF 00000           CON(5)  =DOCSTR
   77 000B4 D0000           CON(5)  13
   78 000B9 943514          NIBASC  \ISA\
   79 000BF 79              CON(2)  #97
   80 000C1 00000           CON(5)  =DOCOL
   81               * Calc. ISA density
   82               * File  ISAMNU.s        24
   83 000C6 00000           CON(5)  =DOROMP
   84 000CB 000000          CON(6)  =~xISA\97
   85 000D1 00000           CON(5)  =SEMI
   86 000D6 00000           CON(5)  =SEMI
   87               * File  ISAMNU.s        25
   88 000DB 00000           CON(5)  =DOLIST
   89 000E0 00000           CON(5)  =DOCSTR
   90 000E5 D0000           CON(5)  13
   91 000EA 9435141         NIBASC  \ISAa\
            6
   92 000F2 00000           CON(5)  =DOCOL
   93               * Calc. SPEED OF SOUND in ISA
   94               * File  ISAMNU.s        26
   95 000F7 00000           CON(5)  =DOROMP
   96 000FC 000000          CON(6)  =~xISAa
   97 00102 00000           CON(5)  =SEMI
   98 00107 00000           CON(5)  =SEMI
   99               * File  ISAMNU.s        27
  100 0010C 00000           CON(5)  =DOLIST
  101 00111 00000           CON(5)  =SEMI
  102               * File  ISAMNU.s        28
  103 00116 00000           CON(5)  =DOLIST
  104 0011B 00000           CON(5)  =DOCSTR
  105 00120 D0000           CON(5)  13
  106 00125 D454E45         NIBASC  \MENU\
            5
  107 0012D 00000           CON(5)  =DOCOL
  108               * Run the ISA library menu
  109               * File  ISAMNU.s        29
  110 00132 00000           CON(5)  =DOROMP
  111 00137 000000          CON(6)  =~xISAMNU
  112 0013D 00000           CON(5)  =SEMI
  113 00142 00000           CON(5)  =SEMI
  114               * File  ISAMNU.s        30
  115 00147 00000           CON(5)  =DOLIST
  116 0014C 00000           CON(5)  =SEMI
  117               * File  ISAMNU.s        31
  118 00151 00000           CON(5)  =DOLIST
  119 00156 00000           CON(5)  =SEMI
  120               * File  ISAMNU.s        32
  121 0015B 00000           CON(5)  =DOLIST
  122 00160 00000           CON(5)  =SEMI
  123               * File  ISAMNU.s        33
  124 00165 00000           CON(5)  =DOLIST
  125 0016A 00000           CON(5)  =SEMI
  126               * File  ISAMNU.s        34
  127 0016F 00000           CON(5)  =DOLIST
  128 00174 00000           CON(5)  =DOCSTR
  129 00179 B0000           CON(5)  11
  130 0017E 745594          NIBASC  \GUI\
  131 00184 00000           CON(5)  =DOCOL
  132               * Run the GUI
  133               * File  ISAMNU.s        35
  134 00189 00000           CON(5)  =DOROMP
  135 0018E 000000          CON(6)  =~xISAFRM
  136 00194 00000           CON(5)  =SEMI
  137 00199 00000           CON(5)  =SEMI
  138               * File  ISAMNU.s        36
  139 0019E 00000           CON(5)  =SEMI
  140               * File  ISAMNU.s        37
  141 001A3 00000           CON(5)  =xMENU
  142               * Create & display CST menu
  143               * File  ISAMNU.s        38
  144 001A8 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAMNU.a       Page    2

 CK0                               Ext                   -    34
 DOCOL                             Ext                   -    32    43    55
                                          67    80    92   107   131
 DOCSTR                            Ext                   -    40    52    64
                                          76    89   104   128
 DOLIST                            Ext                   -    37    39    51
                                          63    75    88   100   103   115   118
                                         121   124   127
 DOROMP                            Ext                   -    46    58    70
                                          83    95   110   134
=RomId                             Abs     806 #00000326 -    17
 SEMI                              Ext                   -    48    49    60
                                          61    72    73    85    86    97    98
                                         101   112   113   116   119   122   125
                                         136   137   139   144
=xISAMNU                           Rel       6 #00000006 -    30
 xMENU                             Ext                   -   141
 ~xGEOPO                           Ext                   -    47
 ~xISAFRM                          Ext                   -   135
 ~xISAMNU                          Ext                   -    29   111
 ~xISAP                            Ext                   -    71
 ~xISAT                            Ext                   -    59
 ~xISA\97                          Ext                   -    84
 ~xISAa                            Ext                   -    96
Saturn Assembler                                       Fri Jun 19 11:51:27 2009
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
