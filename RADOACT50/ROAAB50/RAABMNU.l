Saturn Assembler                                       Thu Jun 25 09:52:33 2009
V3.0.9 (04/15/2007)                                      RAABMNU.a      Page    1

    1               * File  RAABMNU.s       1
    2               * RPL
    3               * File  RAABMNU.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\RAMBMNU.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5               **********************************************************************
    6               * NAME:          RAABMNU
    7               * LIBRARY #:     325h = 805d
    8               * AUTHOR:        Dan Pitic
    9               * VERSION:       1.4
   10               * DATE:          25 June 2009
   11               * COMPATIBILITY: HP50  ( Must use CONVARG )
   12               *                HP48  ( DO NOT use CONVARG )
   13               * DESCRIPTION:   Creates and displays the CST menu for the library.
   14               *
   15               * File  RAABMNU.s       13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAAB50\ROAAB50.h
   17
   18               =RomId  EQU     #325
   19               * ROMID set to 325
   20
   21
   22
   23
   24
   25
   26
   27               *|| Resuming file RAABMNU.s at line 13
   28               * ( HP50
   29               * File  RAABMNU.s       15
   30 00000 000000          CON(6)  =~xRAABMNU
   31 00006         =xRAABMNU
   32               * File  RAABMNU.s       16
   33 00006 00000           CON(5)  =DOCOL
   34               * File  RAABMNU.s       17
   35 0000B 00000           CON(5)  =CK0
   36               * No arguments
   37               * File  RAABMNU.s       18
   38 00010 00000           CON(5)  =DOLIST
   39               * File  RAABMNU.s       19
   40 00015 00000           CON(5)  =DOIDNT
   41 0001A 20              CON(2)  2
   42 0001C 7544            NIBASC  \WD\
   43 00020 00000           CON(5)  =DOIDNT
   44 00025 20              CON(2)  2
   45 00027 7535            NIBASC  \WS\
   46 0002B 00000           CON(5)  =DOIDNT
   47 00030 30              CON(2)  3
   48 00032 242574          NIBASC  \BRG\
   49 00038 00000           CON(5)  =DOIDNT
   50 0003D 40              CON(2)  4
   51 0003F 4494354         NIBASC  \DIST\
            5
   52 00047 00000           CON(5)  =DOIDNT
   53 0004C 30              CON(2)  3
   54 0004E 451435          NIBASC  \TAS\
   55               * INPUT global variables
   56               * File  RAABMNU.s       20
   57 00054 00000           CON(5)  =DOIDNT
   58 00059 30              CON(2)  3
   59 0005B 453413          NIBASC  \TC1\
   60 00061 00000           CON(5)  =DOIDNT
   61 00066 10              CON(2)  1
   62 00068 45              NIBASC  \T\
   63               * File  RAABMNU.s       21
   64 0006A 00000           CON(5)  =DOLIST
   65               * File  RAABMNU.s       22
   66 0006F 00000           CON(5)  =DOCSTR
   67 00074 F0000           CON(5)  15
   68 00079 35F4C46         NIBASC  \SOLVE\
            554
   69 00083 00000           CON(5)  =DOCOL
   70               * Solve menu option
   71               * File  RAABMNU.s       23
   72 00088 00000           CON(5)  =DOIDNT
   73 0008D 20              CON(2)  2
   74 0008F 7544            NIBASC  \WD\
   75 00093 00000           CON(5)  =DOIDNT
   76 00098 20              CON(2)  2
   77 0009A 7535            NIBASC  \WS\
   78 0009E 00000           CON(5)  =DOIDNT
   79 000A3 30              CON(2)  3
   80 000A5 242574          NIBASC  \BRG\
   81 000AB 00000           CON(5)  =DOIDNT
   82 000B0 40              CON(2)  4
   83 000B2 4494354         NIBASC  \DIST\
            5
   84 000BA 00000           CON(5)  =DOIDNT
   85 000BF 30              CON(2)  3
   86 000C1 451435          NIBASC  \TAS\
   87               * INPUT arguments
   88               * File  RAABMNU.s       24
   89 000C7 00000           CON(5)  =DOIDNT
   90 000CC 30              CON(2)  3
   91 000CE 453413          NIBASC  \TC1\
   92 000D4 00000           CON(5)  =DOIDNT
   93 000D9 10              CON(2)  1
   94 000DB 45              NIBASC  \T\
   95               * HP50 ONLY - Argument checking
   96               * File  RAABMNU.s       26
   97 000DD 00000           CON(5)  =DOROMP
   98 000E2 423             CON(3)  #324
   99 000E5 300             CON(3)  #3
  100               * **** HP50 0NLY ****
  101               * File  RAABMNU.s       27
  102 000E8 00000           CON(5)  =DOROMP
  103 000ED 000000          CON(6)  =~ROAAB
  104               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
  105               * File  RAABMNU.s       28
  106 000F3 00000           CON(5)  ='
  107 000F8 00000           CON(5)  =DOIDNT
  108 000FD 30              CON(2)  3
  109 000FF D43423          NIBASC  \MC2\
  110 00105 00000           CON(5)  =STO
  111               * STO results in OUTPUT global variables
  112               * File  RAABMNU.s       29
  113 0010A 00000           CON(5)  ='
  114 0010F 00000           CON(5)  =DOIDNT
  115 00114 10              CON(2)  1
  116 00116 25              NIBASC  \R\
  117 00118 00000           CON(5)  =STO
  118               * File  RAABMNU.s       30
  119 0011D 00000           CON(5)  ='
  120 00122 00000           CON(5)  =DOIDNT
  121 00127 20              CON(2)  2
  122 00129 4523            NIBASC  \T2\
  123 0012D 00000           CON(5)  =STO
  124               * File  RAABMNU.s       31
  125 00132 00000           CON(5)  ='
  126 00137 00000           CON(5)  =DOIDNT
  127 0013C 20              CON(2)  2
  128 0013E 4513            NIBASC  \T1\
  129 00142 00000           CON(5)  =STO
  130               * File  RAABMNU.s       32
  131 00147 00000           CON(5)  ='
  132 0014C 00000           CON(5)  =DOIDNT
  133 00151 30              CON(2)  3
  134 00153 453423          NIBASC  \TC2\
  135 00159 00000           CON(5)  =STO
  136               * File  RAABMNU.s       33
  137 0015E 00000           CON(5)  ='
  138 00163 00000           CON(5)  =DOIDNT
  139 00168 30              CON(2)  3
  140 0016A 743523          NIBASC  \GS2\
  141 00170 00000           CON(5)  =STO
  142               * File  RAABMNU.s       34
  143 00175 00000           CON(5)  ='
  144 0017A 00000           CON(5)  =DOIDNT
  145 0017F 40              CON(2)  4
  146 00181 8444742         NIBASC  \HDG2\
            3
  147 00189 00000           CON(5)  =STO
  148               * File  RAABMNU.s       35
  149 0018E 00000           CON(5)  ='
  150 00193 00000           CON(5)  =DOIDNT
  151 00198 30              CON(2)  3
  152 0019A 743513          NIBASC  \GS1\
  153 001A0 00000           CON(5)  =STO
  154               * File  RAABMNU.s       36
  155 001A5 00000           CON(5)  ='
  156 001AA 00000           CON(5)  =DOIDNT
  157 001AF 40              CON(2)  4
  158 001B1 8444741         NIBASC  \HDG1\
            3
  159 001B9 00000           CON(5)  =STO
  160               * File  RAABMNU.s       37
  161 001BE 00000           CON(5)  =SEMI
  162               * File  RAABMNU.s       38
  163 001C3 00000           CON(5)  =SEMI
  164               * File  RAABMNU.s       39
  165 001C8 00000           CON(5)  =DOIDNT
  166 001CD 10              CON(2)  1
  167 001CF 25              NIBASC  \R\
  168 001D1 00000           CON(5)  =DOIDNT
  169 001D6 20              CON(2)  2
  170 001D8 4513            NIBASC  \T1\
  171 001DC 00000           CON(5)  =DOIDNT
  172 001E1 40              CON(2)  4
  173 001E3 8444741         NIBASC  \HDG1\
            3
  174 001EB 00000           CON(5)  =DOIDNT
  175 001F0 30              CON(2)  3
  176 001F2 743513          NIBASC  \GS1\
  177 001F8 00000           CON(5)  =DOIDNT
  178 001FD 20              CON(2)  2
  179 001FF 4523            NIBASC  \T2\
  180               * OUTPUT global variables
  181               * File  RAABMNU.s       40
  182 00203 00000           CON(5)  =DOIDNT
  183 00208 40              CON(2)  4
  184 0020A 8444742         NIBASC  \HDG2\
            3
  185 00212 00000           CON(5)  =DOIDNT
  186 00217 30              CON(2)  3
  187 00219 453423          NIBASC  \TC2\
  188 0021F 00000           CON(5)  =DOIDNT
  189 00224 30              CON(2)  3
  190 00226 743523          NIBASC  \GS2\
  191 0022C 00000           CON(5)  =DOIDNT
  192 00231 30              CON(2)  3
  193 00233 D43423          NIBASC  \MC2\
  194               * File  RAABMNU.s       41
  195 00239 00000           CON(5)  =DOLIST
  196               * File  RAABMNU.s       42
  197 0023E 00000           CON(5)  =DOCSTR
  198 00243 D0000           CON(5)  13
  199 00248 D454E45         NIBASC  \MENU\
            5
  200 00250 00000           CON(5)  =DOCOL
  201               * Menu, menu option
  202               * File  RAABMNU.s       43
  203 00255 00000           CON(5)  =DOROMP
  204 0025A 000000          CON(6)  =~xRAABMNU
  205               * Create and display CST menu
  206               * File  RAABMNU.s       44
  207 00260 00000           CON(5)  =SEMI
  208               * File  RAABMNU.s       45
  209 00265 00000           CON(5)  =SEMI
  210               * File  RAABMNU.s       46
  211 0026A 00000           CON(5)  =DOLIST
  212               * File  RAABMNU.s       47
  213 0026F 00000           CON(5)  =DOCSTR
  214 00274 B0000           CON(5)  11
  215 00279 745594          NIBASC  \GUI\
  216 0027F 00000           CON(5)  =DOCOL
  217               * GUI menu option
  218               * File  RAABMNU.s       48
  219 00284 00000           CON(5)  =DOROMP
  220 00289 000000          CON(6)  =~xRAABFRM
  221               * File  RAABMNU.s       49
  222 0028F 00000           CON(5)  =SEMI
  223               * File  RAABMNU.s       50
  224 00294 00000           CON(5)  =SEMI
  225               * File  RAABMNU.s       51
  226 00299 00000           CON(5)  =SEMI
  227               * File  RAABMNU.s       52
  228 0029E 00000           CON(5)  =xMENU
  229               * Create & display CST menu
  230               * File  RAABMNU.s       53
  231 002A3 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 25 09:52:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       RAABMNU.a      Page    2

 '                                 Ext                   -   106   113   119
                                         125   131   137   143   149   155
 CK0                               Ext                   -    35
 DOCOL                             Ext                   -    33    69   200
                                         216
 DOCSTR                            Ext                   -    66   197   213
 DOIDNT                            Ext                   -    40    43    46
                                          49    52    57    60    72    75    78
                                          81    84    89    92   107   114   120
                                         126   132   138   144   150   156   165
                                         168   171   174   177   182   185   188
                                         191
 DOLIST                            Ext                   -    38    64   195
                                         211
 DOROMP                            Ext                   -    97   102   203
                                         219
=RomId                             Abs     805 #00000325 -    18
 SEMI                              Ext                   -   161   163   207
                                         209   222   224   226   231
 STO                               Ext                   -   110   117   123
                                         129   135   141   147   153   159
 xMENU                             Ext                   -   228
=xRAABMNU                          Rel       6 #00000006 -    31
 ~ROAAB                            Ext                   -   103
 ~xRAABFRM                         Ext                   -   220
 ~xRAABMNU                         Ext                   -    30   204
Saturn Assembler                                       Thu Jun 25 09:52:33 2009
V3.0.9 (04/15/2007)   Statistics                         RAABMNU.a      Page    3

Input Parameters

  Source file name is RAABMNU.a

  Listing file name is RAABMNU.l

  Object file name is RAABMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
