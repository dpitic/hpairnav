Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)                                      RASBMNU.a      Page    1

    1               * File  RASBMNU.s       1
    2               * RPL
    3               * File  RASBMNU.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\RASBMNU.s, part of the ROASB50.hpp project, created by <> on 23/06/2009
    5               **********************************************************************
    6               * NAME:          RASBMNU
    7               * AUTHOR:        Dan Pitic
    8               * LIBRARY #:     323h = 803d
    9               * VERSION:       1.4
   10               * DATE:          22 June 2009
   11               * COMPATIBILITY: HP50  ( Requires CONVARG )
   12               *                HP48  ( DO NOT USE CONVARG )
   13               * DESCRIPTION:   Generates and displays the CST menu for the library.
   14               *
   15               * File  RASBMNU.s       13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\ROASB50.h
   17
   18               =RomId  EQU     #323
   19               * ROMID set to 323
   20
   21
   22
   23
   24
   25
   26
   27               *|| Resuming file RASBMNU.s at line 13
   28 00000 000000          CON(6)  =~xRASBMNU
   29 00006         =xRASBMNU
   30               * File  RASBMNU.s       15
   31 00006 00000           CON(5)  =DOCOL
   32               * File  RASBMNU.s       16
   33 0000B 00000           CON(5)  =CK0
   34               * No arguments
   35               * File  RASBMNU.s       17
   36 00010 00000           CON(5)  =DOLIST
   37               * File  RASBMNU.s       18
   38 00015 00000           CON(5)  =DOIDNT
   39 0001A 20              CON(2)  2
   40 0001C 7544            NIBASC  \WD\
   41 00020 00000           CON(5)  =DOIDNT
   42 00025 20              CON(2)  2
   43 00027 7535            NIBASC  \WS\
   44 0002B 00000           CON(5)  =DOIDNT
   45 00030 30              CON(2)  3
   46 00032 453413          NIBASC  \TC1\
   47 00038 00000           CON(5)  =DOIDNT
   48 0003D 10              CON(2)  1
   49 0003F 45              NIBASC  \T\
   50 00041 00000           CON(5)  =DOIDNT
   51 00046 30              CON(2)  3
   52 00048 451435          NIBASC  \TAS\
   53 0004E 00000           CON(5)  =DOIDNT
   54 00053 40              CON(2)  4
   55 00055 4484F4D         NIBASC  \DHOM\
            4
   56               * INPUT variables
   57               * File  RASBMNU.s       19
   58 0005D 00000           CON(5)  =DOLIST
   59               * File  RASBMNU.s       20
   60 00062 00000           CON(5)  =DOCSTR
   61 00067 F0000           CON(5)  15
   62 0006C 35F4C46         NIBASC  \SOLVE\
            554
   63 00076 00000           CON(5)  =DOCOL
   64               * Solve menu option
   65               * File  RASBMNU.s       21
   66 0007B 00000           CON(5)  =DOIDNT
   67 00080 20              CON(2)  2
   68 00082 7544            NIBASC  \WD\
   69 00086 00000           CON(5)  =DOIDNT
   70 0008B 20              CON(2)  2
   71 0008D 7535            NIBASC  \WS\
   72 00091 00000           CON(5)  =DOIDNT
   73 00096 30              CON(2)  3
   74 00098 453413          NIBASC  \TC1\
   75 0009E 00000           CON(5)  =DOIDNT
   76 000A3 10              CON(2)  1
   77 000A5 45              NIBASC  \T\
   78 000A7 00000           CON(5)  =DOIDNT
   79 000AC 30              CON(2)  3
   80 000AE 451435          NIBASC  \TAS\
   81 000B4 00000           CON(5)  =DOIDNT
   82 000B9 40              CON(2)  4
   83 000BB 4484F4D         NIBASC  \DHOM\
            4
   84               * Arguments
   85               * HP50 ONLY - Argument checking
   86               * File  RASBMNU.s       23
   87 000C3 00000           CON(5)  =DOROMP
   88 000C8 000000          CON(6)  =~CONVARG
   89               * ***** HP50 ONLY *****
   90               * File  RASBMNU.s       24
   91 000CE 00000           CON(5)  =DOROMP
   92 000D3 000000          CON(6)  =~ROASAMBA
   93               * Call function
   94               * File  RASBMNU.s       25
   95 000D9 00000           CON(5)  ='
   96 000DE 00000           CON(5)  =DOIDNT
   97 000E3 40              CON(2)  4
   98 000E5 4464D48         NIBASC  \DFMH\
            4
   99 000ED 00000           CON(5)  =STO
  100               * STO OUTPUT results
  101               * File  RASBMNU.s       26
  102 000F2 00000           CON(5)  ='
  103 000F7 00000           CON(5)  =DOIDNT
  104 000FC 10              CON(2)  1
  105 000FE 25              NIBASC  \R\
  106 00100 00000           CON(5)  =STO
  107               * in global variables
  108               * File  RASBMNU.s       27
  109 00105 00000           CON(5)  ='
  110 0010A 00000           CON(5)  =DOIDNT
  111 0010F 20              CON(2)  2
  112 00111 4513            NIBASC  \T1\
  113 00115 00000           CON(5)  =STO
  114               * File  RASBMNU.s       28
  115 0011A 00000           CON(5)  ='
  116 0011F 00000           CON(5)  =DOIDNT
  117 00124 20              CON(2)  2
  118 00126 3523            NIBASC  \S2\
  119 0012A 00000           CON(5)  =STO
  120               * File  RASBMNU.s       29
  121 0012F 00000           CON(5)  ='
  122 00134 00000           CON(5)  =DOIDNT
  123 00139 40              CON(2)  4
  124 0013B 8444742         NIBASC  \HDG2\
            3
  125 00143 00000           CON(5)  =STO
  126               * File  RASBMNU.s       30
  127 00148 00000           CON(5)  ='
  128 0014D 00000           CON(5)  =DOIDNT
  129 00152 20              CON(2)  2
  130 00154 3513            NIBASC  \S1\
  131 00158 00000           CON(5)  =STO
  132               * File  RASBMNU.s       31
  133 0015D 00000           CON(5)  ='
  134 00162 00000           CON(5)  =DOIDNT
  135 00167 40              CON(2)  4
  136 00169 8444741         NIBASC  \HDG1\
            3
  137 00171 00000           CON(5)  =STO
  138               * File  RASBMNU.s       32
  139 00176 00000           CON(5)  =SEMI
  140               * File  RASBMNU.s       33
  141 0017B 00000           CON(5)  =SEMI
  142               * File  RASBMNU.s       34
  143 00180 00000           CON(5)  =DOIDNT
  144 00185 20              CON(2)  2
  145 00187 4513            NIBASC  \T1\
  146 0018B 00000           CON(5)  =DOIDNT
  147 00190 10              CON(2)  1
  148 00192 25              NIBASC  \R\
  149 00194 00000           CON(5)  =DOIDNT
  150 00199 40              CON(2)  4
  151 0019B 4464D48         NIBASC  \DFMH\
            4
  152 001A3 00000           CON(5)  =DOIDNT
  153 001A8 40              CON(2)  4
  154 001AA 8444741         NIBASC  \HDG1\
            3
  155 001B2 00000           CON(5)  =DOIDNT
  156 001B7 20              CON(2)  2
  157 001B9 3513            NIBASC  \S1\
  158 001BD 00000           CON(5)  =DOIDNT
  159 001C2 40              CON(2)  4
  160 001C4 8444742         NIBASC  \HDG2\
            3
  161 001CC 00000           CON(5)  =DOIDNT
  162 001D1 20              CON(2)  2
  163 001D3 3523            NIBASC  \S2\
  164               * OUTPUT variables
  165               * File  RASBMNU.s       35
  166 001D7 00000           CON(5)  =DOLIST
  167 001DC 00000           CON(5)  =SEMI
  168               * File  RASBMNU.s       36
  169 001E1 00000           CON(5)  =DOLIST
  170 001E6 00000           CON(5)  =SEMI
  171               * File  RASBMNU.s       37
  172 001EB 00000           CON(5)  =DOLIST
  173               * File  RASBMNU.s       38
  174 001F0 00000           CON(5)  =DOCSTR
  175 001F5 D0000           CON(5)  13
  176 001FA D454E45         NIBASC  \MENU\
            5
  177 00202 00000           CON(5)  =DOCOL
  178               * Display menu, menu option
  179               * File  RASBMNU.s       39
  180 00207 00000           CON(5)  =DOROMP
  181 0020C 000000          CON(6)  =~xRASBMNU
  182               * File  RASBMNU.s       40
  183 00212 00000           CON(5)  =SEMI
  184               * File  RASBMNU.s       41
  185 00217 00000           CON(5)  =SEMI
  186               * File  RASBMNU.s       42
  187 0021C 00000           CON(5)  =DOLIST
  188               * File  RASBMNU.s       43
  189 00221 00000           CON(5)  =DOCSTR
  190 00226 B0000           CON(5)  11
  191 0022B 745594          NIBASC  \GUI\
  192 00231 00000           CON(5)  =DOCOL
  193               * Run GUI menu option
  194               * File  RASBMNU.s       44
  195 00236 00000           CON(5)  =DOROMP
  196 0023B 000000          CON(6)  =~xRASBFRM
  197               * File  RASBMNU.s       45
  198 00241 00000           CON(5)  =SEMI
  199               * File  RASBMNU.s       46
  200 00246 00000           CON(5)  =SEMI
  201               * File  RASBMNU.s       47
  202 0024B 00000           CON(5)  =SEMI
  203               * File  RASBMNU.s       48
  204 00250 00000           CON(5)  =xMENU
  205               * Generate and display CST menu
  206               * File  RASBMNU.s       49
  207 00255 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)   Symbol Table                       RASBMNU.a      Page    2

 '                                 Ext                   -    95   102   109
                                         115   121   127   133
 CK0                               Ext                   -    33
 DOCOL                             Ext                   -    31    63   177
                                         192
 DOCSTR                            Ext                   -    60   174   189
 DOIDNT                            Ext                   -    38    41    44
                                          47    50    53    66    69    72    75
                                          78    81    96   103   110   116   122
                                         128   134   143   146   149   152   155
                                         158   161
 DOLIST                            Ext                   -    36    58   166
                                         169   172   187
 DOROMP                            Ext                   -    87    91   180
                                         195
=RomId                             Abs     803 #00000323 -    18
 SEMI                              Ext                   -   139   141   167
                                         170   183   185   198   200   202   207
 STO                               Ext                   -    99   106   113
                                         119   125   131   137
 xMENU                             Ext                   -   204
=xRASBMNU                          Rel       6 #00000006 -    29
 ~CONVARG                          Ext                   -    88
 ~ROASAMBA                         Ext                   -    92
 ~xRASBFRM                         Ext                   -   196
 ~xRASBMNU                         Ext                   -    28   181
Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)   Statistics                         RASBMNU.a      Page    3

Input Parameters

  Source file name is RASBMNU.a

  Listing file name is RASBMNU.l

  Object file name is RASBMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
