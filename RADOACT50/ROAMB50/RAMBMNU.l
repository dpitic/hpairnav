Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)                                      RAMBMNU.a      Page    1

    1               * File  RAMBMNU.s       1
    2               * RPL
    3               * File  RAMBMNU.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\RAMBMNU.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5               **********************************************************************
    6               * NAME:          RAMBMNU
    7               * LIBRARY #:     324h = 804d
    8               * AUTHOR:        Dan Pitic
    9               * VERSION:       1.6
   10               * DATE:          24 June 2009
   11               * COMPATIBILITY: HP50  ( Must use CONVARG )
   12               *                HP48  ( DO NOT use CONVARG )
   13               * DESCRIPTION:   Creates and displays the CST menu for the library.
   14               *
   15               * File  RAMBMNU.s       13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\ROAMB50.h
   17
   18               =RomId  EQU     #324
   19               * ROMID set to 324
   20
   21
   22
   23
   24
   25
   26
   27
   28               *|| Resuming file RAMBMNU.s at line 13
   29 00000 000000          CON(6)  =~xRAMBMNU
   30 00006         =xRAMBMNU
   31               * File  RAMBMNU.s       15
   32 00006 00000           CON(5)  =DOCOL
   33               * File  RAMBMNU.s       16
   34 0000B 00000           CON(5)  =CK0
   35               * No arguments
   36               * File  RAMBMNU.s       17
   37 00010 00000           CON(5)  =DOLIST
   38               * File  RAMBMNU.s       18
   39 00015 00000           CON(5)  =DOIDNT
   40 0001A 20              CON(2)  2
   41 0001C 7544            NIBASC  \WD\
   42 00020 00000           CON(5)  =DOIDNT
   43 00025 20              CON(2)  2
   44 00027 7535            NIBASC  \WS\
   45 0002B 00000           CON(5)  =DOIDNT
   46 00030 30              CON(2)  3
   47 00032 452535          NIBASC  \TRS\
   48 00038 00000           CON(5)  =DOIDNT
   49 0003D 30              CON(2)  3
   50 0003F 743535          NIBASC  \GSS\
   51 00045 00000           CON(5)  =DOIDNT
   52 0004A 30              CON(2)  3
   53 0004C 451435          NIBASC  \TAS\
   54               * INPUT global variables
   55               * File  RAMBMNU.s       19
   56 00052 00000           CON(5)  =DOIDNT
   57 00057 30              CON(2)  3
   58 00059 453413          NIBASC  \TC1\
   59 0005F 00000           CON(5)  =DOIDNT
   60 00064 10              CON(2)  1
   61 00066 45              NIBASC  \T\
   62               * File  RAMBMNU.s       20
   63 00068 00000           CON(5)  =DOLIST
   64               * File  RAMBMNU.s       21
   65 0006D 00000           CON(5)  =DOCSTR
   66 00072 F0000           CON(5)  15
   67 00077 35F4C46         NIBASC  \SOLVE\
            554
   68 00081 00000           CON(5)  =DOCOL
   69               * Solve menu option
   70               * File  RAMBMNU.s       22
   71 00086 00000           CON(5)  =DOIDNT
   72 0008B 20              CON(2)  2
   73 0008D 7544            NIBASC  \WD\
   74 00091 00000           CON(5)  =DOIDNT
   75 00096 20              CON(2)  2
   76 00098 7535            NIBASC  \WS\
   77 0009C 00000           CON(5)  =DOIDNT
   78 000A1 30              CON(2)  3
   79 000A3 452535          NIBASC  \TRS\
   80 000A9 00000           CON(5)  =DOIDNT
   81 000AE 30              CON(2)  3
   82 000B0 743535          NIBASC  \GSS\
   83 000B6 00000           CON(5)  =DOIDNT
   84 000BB 30              CON(2)  3
   85 000BD 451435          NIBASC  \TAS\
   86               * INPUT arguments
   87               * File  RAMBMNU.s       23
   88 000C3 00000           CON(5)  =DOIDNT
   89 000C8 30              CON(2)  3
   90 000CA 453413          NIBASC  \TC1\
   91 000D0 00000           CON(5)  =DOIDNT
   92 000D5 10              CON(2)  1
   93 000D7 45              NIBASC  \T\
   94               ** HP50 ONLY - Argument checking
   95               * File  RAMBMNU.s       25
   96 000D9 00000           CON(5)  =DOROMP
   97 000DE 000000          CON(6)  =~CONVARG
   98               * **** HP50 0NLY ****
   99               * File  RAMBMNU.s       26
  100 000E4 00000           CON(5)  =DOROMP
  101 000E9 000000          CON(6)  =~ROAMB
  102               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
  103               * File  RAMBMNU.s       27
  104 000EF 00000           CON(5)  ='
  105 000F4 00000           CON(5)  =DOIDNT
  106 000F9 30              CON(2)  3
  107 000FB D43423          NIBASC  \MC2\
  108 00101 00000           CON(5)  =STO
  109               * STO results in OUTPUT global variables
  110               * File  RAMBMNU.s       28
  111 00106 00000           CON(5)  ='
  112 0010B 00000           CON(5)  =DOIDNT
  113 00110 10              CON(2)  1
  114 00112 25              NIBASC  \R\
  115 00114 00000           CON(5)  =STO
  116               * File  RAMBMNU.s       29
  117 00119 00000           CON(5)  ='
  118 0011E 00000           CON(5)  =DOIDNT
  119 00123 20              CON(2)  2
  120 00125 4523            NIBASC  \T2\
  121 00129 00000           CON(5)  =STO
  122               * File  RAMBMNU.s       30
  123 0012E 00000           CON(5)  ='
  124 00133 00000           CON(5)  =DOIDNT
  125 00138 20              CON(2)  2
  126 0013A 4513            NIBASC  \T1\
  127 0013E 00000           CON(5)  =STO
  128               * File  RAMBMNU.s       31
  129 00143 00000           CON(5)  ='
  130 00148 00000           CON(5)  =DOIDNT
  131 0014D 30              CON(2)  3
  132 0014F 453423          NIBASC  \TC2\
  133 00155 00000           CON(5)  =STO
  134               * File  RAMBMNU.s       32
  135 0015A 00000           CON(5)  ='
  136 0015F 00000           CON(5)  =DOIDNT
  137 00164 30              CON(2)  3
  138 00166 743523          NIBASC  \GS2\
  139 0016C 00000           CON(5)  =STO
  140               * File  RAMBMNU.s       33
  141 00171 00000           CON(5)  ='
  142 00176 00000           CON(5)  =DOIDNT
  143 0017B 40              CON(2)  4
  144 0017D 8444742         NIBASC  \HDG2\
            3
  145 00185 00000           CON(5)  =STO
  146               * File  RAMBMNU.s       34
  147 0018A 00000           CON(5)  ='
  148 0018F 00000           CON(5)  =DOIDNT
  149 00194 30              CON(2)  3
  150 00196 743513          NIBASC  \GS1\
  151 0019C 00000           CON(5)  =STO
  152               * File  RAMBMNU.s       35
  153 001A1 00000           CON(5)  ='
  154 001A6 00000           CON(5)  =DOIDNT
  155 001AB 40              CON(2)  4
  156 001AD 8444741         NIBASC  \HDG1\
            3
  157 001B5 00000           CON(5)  =STO
  158               * File  RAMBMNU.s       36
  159 001BA 00000           CON(5)  =SEMI
  160               * File  RAMBMNU.s       37
  161 001BF 00000           CON(5)  =SEMI
  162               * File  RAMBMNU.s       38
  163 001C4 00000           CON(5)  =DOIDNT
  164 001C9 10              CON(2)  1
  165 001CB 25              NIBASC  \R\
  166 001CD 00000           CON(5)  =DOIDNT
  167 001D2 20              CON(2)  2
  168 001D4 4513            NIBASC  \T1\
  169 001D8 00000           CON(5)  =DOIDNT
  170 001DD 40              CON(2)  4
  171 001DF 8444741         NIBASC  \HDG1\
            3
  172 001E7 00000           CON(5)  =DOIDNT
  173 001EC 30              CON(2)  3
  174 001EE 743513          NIBASC  \GS1\
  175 001F4 00000           CON(5)  =DOIDNT
  176 001F9 20              CON(2)  2
  177 001FB 4523            NIBASC  \T2\
  178               * OUTPUT global variables
  179               * File  RAMBMNU.s       39
  180 001FF 00000           CON(5)  =DOIDNT
  181 00204 40              CON(2)  4
  182 00206 8444742         NIBASC  \HDG2\
            3
  183 0020E 00000           CON(5)  =DOIDNT
  184 00213 30              CON(2)  3
  185 00215 453423          NIBASC  \TC2\
  186 0021B 00000           CON(5)  =DOIDNT
  187 00220 30              CON(2)  3
  188 00222 743523          NIBASC  \GS2\
  189 00228 00000           CON(5)  =DOIDNT
  190 0022D 30              CON(2)  3
  191 0022F D43423          NIBASC  \MC2\
  192               * File  RAMBMNU.s       40
  193 00235 00000           CON(5)  =DOLIST
  194               * File  RAMBMNU.s       41
  195 0023A 00000           CON(5)  =DOCSTR
  196 0023F D0000           CON(5)  13
  197 00244 D454E45         NIBASC  \MENU\
            5
  198 0024C 00000           CON(5)  =DOCOL
  199               * Menu, menu option
  200               * File  RAMBMNU.s       42
  201 00251 00000           CON(5)  =DOROMP
  202 00256 000000          CON(6)  =~xRAMBMNU
  203               * Create and display CST menu
  204               * File  RAMBMNU.s       43
  205 0025C 00000           CON(5)  =SEMI
  206               * File  RAMBMNU.s       44
  207 00261 00000           CON(5)  =SEMI
  208               * File  RAMBMNU.s       45
  209 00266 00000           CON(5)  =DOLIST
  210               * File  RAMBMNU.s       46
  211 0026B 00000           CON(5)  =DOCSTR
  212 00270 B0000           CON(5)  11
  213 00275 745594          NIBASC  \GUI\
  214 0027B 00000           CON(5)  =DOCOL
  215               * GUI menu option
  216               * File  RAMBMNU.s       47
  217 00280 00000           CON(5)  =DOROMP
  218 00285 000000          CON(6)  =~xRAMBFRM
  219               * File  RAMBMNU.s       48
  220 0028B 00000           CON(5)  =SEMI
  221               * File  RAMBMNU.s       49
  222 00290 00000           CON(5)  =SEMI
  223               * File  RAMBMNU.s       50
  224 00295 00000           CON(5)  =SEMI
  225               * File  RAMBMNU.s       51
  226 0029A 00000           CON(5)  =xMENU
  227               * Create & display CST menu
  228               * File  RAMBMNU.s       52
  229 0029F 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)   Symbol Table                       RAMBMNU.a      Page    2

 '                                 Ext                   -   104   111   117
                                         123   129   135   141   147   153
 CK0                               Ext                   -    34
 DOCOL                             Ext                   -    32    68   198
                                         214
 DOCSTR                            Ext                   -    65   195   211
 DOIDNT                            Ext                   -    39    42    45
                                          48    51    56    59    71    74    77
                                          80    83    88    91   105   112   118
                                         124   130   136   142   148   154   163
                                         166   169   172   175   180   183   186
                                         189
 DOLIST                            Ext                   -    37    63   193
                                         209
 DOROMP                            Ext                   -    96   100   201
                                         217
=RomId                             Abs     804 #00000324 -    18
 SEMI                              Ext                   -   159   161   205
                                         207   220   222   224   229
 STO                               Ext                   -   108   115   121
                                         127   133   139   145   151   157
 xMENU                             Ext                   -   226
=xRAMBMNU                          Rel       6 #00000006 -    30
 ~CONVARG                          Ext                   -    97
 ~ROAMB                            Ext                   -   101
 ~xRAMBFRM                         Ext                   -   218
 ~xRAMBMNU                         Ext                   -    29   202
Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)   Statistics                         RAMBMNU.a      Page    3

Input Parameters

  Source file name is RAMBMNU.a

  Listing file name is RAMBMNU.l

  Object file name is RAMBMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
