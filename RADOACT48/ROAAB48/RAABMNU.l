Saturn Assembler                                       Thu Jun 25 21:47:09 2009
V3.0.9 (04/15/2007)                                      RAABMNU.a      Page    1

    1             * File  RAABMNU.s       1
    2             * RPL
    3             * File  RAABMNU.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\RAMBMNU.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5             **********************************************************************
    6             * NAME:          RAABMNU
    7             * LIBRARY #:     325h = 805d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.4
   10             * DATE:          25 June 2009
   11             * COMPATIBILITY: HP50  ( Must use CONVARG )
   12             *                HP48  ( DO NOT use CONVARG )
   13             * DESCRIPTION:   Creates and displays the CST menu for the library.
   14             *
   15             * File  RAABMNU.s       13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROAAB48\ROAAB48.h
   17
   18             =RomId  EQU     #325
   19             * ROMID set to 325
   20
   21
   22
   23
   24
   25
   26
   27             *|| Resuming file RAABMNU.s at line 13
   28 00000 00000         CON(6)  =~xRAABMNU
            0
   29 00006       =xRAABMNU
   30             * File  RAABMNU.s       16
   31 00006 00000         CON(5)  =DOCOL
   32             * File  RAABMNU.s       17
   33 0000B 00000         CON(5)  =CK0
   34             * No arguments
   35             * File  RAABMNU.s       18
   36 00010 00000         CON(5)  =DOLIST
   37             * File  RAABMNU.s       19
   38 00015 00000         CON(5)  =DOIDNT
   39 0001A 20            CON(2)  2
   40 0001C 7544          NIBASC  \WD\
   41 00020 00000         CON(5)  =DOIDNT
   42 00025 20            CON(2)  2
   43 00027 7535          NIBASC  \WS\
   44 0002B 00000         CON(5)  =DOIDNT
   45 00030 30            CON(2)  3
   46 00032 24257         NIBASC  \BRG\
            4
   47 00038 00000         CON(5)  =DOIDNT
   48 0003D 40            CON(2)  4
   49 0003F 44943         NIBASC  \DIST\
            545
   50 00047 00000         CON(5)  =DOIDNT
   51 0004C 30            CON(2)  3
   52 0004E 45143         NIBASC  \TAS\
            5
   53             * INPUT global variables
   54             * File  RAABMNU.s       20
   55 00054 00000         CON(5)  =DOIDNT
   56 00059 30            CON(2)  3
   57 0005B 45341         NIBASC  \TC1\
            3
   58 00061 00000         CON(5)  =DOIDNT
   59 00066 10            CON(2)  1
   60 00068 45            NIBASC  \T\
   61             * File  RAABMNU.s       21
   62 0006A 00000         CON(5)  =DOLIST
   63             * File  RAABMNU.s       22
   64 0006F 00000         CON(5)  =DOCSTR
   65 00074 F0000         CON(5)  15
   66 00079 35F4C         NIBASC  \SOLVE\
            46554
   67 00083 00000         CON(5)  =DOCOL
   68             * Solve menu option
   69             * File  RAABMNU.s       23
   70 00088 00000         CON(5)  =DOIDNT
   71 0008D 20            CON(2)  2
   72 0008F 7544          NIBASC  \WD\
   73 00093 00000         CON(5)  =DOIDNT
   74 00098 20            CON(2)  2
   75 0009A 7535          NIBASC  \WS\
   76 0009E 00000         CON(5)  =DOIDNT
   77 000A3 30            CON(2)  3
   78 000A5 24257         NIBASC  \BRG\
            4
   79 000AB 00000         CON(5)  =DOIDNT
   80 000B0 40            CON(2)  4
   81 000B2 44943         NIBASC  \DIST\
            545
   82 000BA 00000         CON(5)  =DOIDNT
   83 000BF 30            CON(2)  3
   84 000C1 45143         NIBASC  \TAS\
            5
   85             * INPUT arguments
   86             * File  RAABMNU.s       24
   87 000C7 00000         CON(5)  =DOIDNT
   88 000CC 30            CON(2)  3
   89 000CE 45341         NIBASC  \TC1\
            3
   90 000D4 00000         CON(5)  =DOIDNT
   91 000D9 10            CON(2)  1
   92 000DB 45            NIBASC  \T\
   93             * HP50 ONLY - Argument checking
   94             *        CONVARG                               ( **** HP50 0NLY **** )
   95             * File  RAABMNU.s       27
   96 000DD 00000         CON(5)  =DOROMP
   97 000E2 00000         CON(6)  =~ROAAB
            0
   98             * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
   99             * File  RAABMNU.s       28
  100 000E8 00000         CON(5)  ='
  101 000ED 00000         CON(5)  =DOIDNT
  102 000F2 30            CON(2)  3
  103 000F4 D4342         NIBASC  \MC2\
            3
  104 000FA 00000         CON(5)  =STO
  105             * STO results in OUTPUT global variables
  106             * File  RAABMNU.s       29
  107 000FF 00000         CON(5)  ='
  108 00104 00000         CON(5)  =DOIDNT
  109 00109 10            CON(2)  1
  110 0010B 25            NIBASC  \R\
  111 0010D 00000         CON(5)  =STO
  112             * File  RAABMNU.s       30
  113 00112 00000         CON(5)  ='
  114 00117 00000         CON(5)  =DOIDNT
  115 0011C 20            CON(2)  2
  116 0011E 4523          NIBASC  \T2\
  117 00122 00000         CON(5)  =STO
  118             * File  RAABMNU.s       31
  119 00127 00000         CON(5)  ='
  120 0012C 00000         CON(5)  =DOIDNT
  121 00131 20            CON(2)  2
  122 00133 4513          NIBASC  \T1\
  123 00137 00000         CON(5)  =STO
  124             * File  RAABMNU.s       32
  125 0013C 00000         CON(5)  ='
  126 00141 00000         CON(5)  =DOIDNT
  127 00146 30            CON(2)  3
  128 00148 45342         NIBASC  \TC2\
            3
  129 0014E 00000         CON(5)  =STO
  130             * File  RAABMNU.s       33
  131 00153 00000         CON(5)  ='
  132 00158 00000         CON(5)  =DOIDNT
  133 0015D 30            CON(2)  3
  134 0015F 74352         NIBASC  \GS2\
            3
  135 00165 00000         CON(5)  =STO
  136             * File  RAABMNU.s       34
  137 0016A 00000         CON(5)  ='
  138 0016F 00000         CON(5)  =DOIDNT
  139 00174 40            CON(2)  4
  140 00176 84447         NIBASC  \HDG2\
            423
  141 0017E 00000         CON(5)  =STO
  142             * File  RAABMNU.s       35
  143 00183 00000         CON(5)  ='
  144 00188 00000         CON(5)  =DOIDNT
  145 0018D 30            CON(2)  3
  146 0018F 74351         NIBASC  \GS1\
            3
  147 00195 00000         CON(5)  =STO
  148             * File  RAABMNU.s       36
  149 0019A 00000         CON(5)  ='
  150 0019F 00000         CON(5)  =DOIDNT
  151 001A4 40            CON(2)  4
  152 001A6 84447         NIBASC  \HDG1\
            413
  153 001AE 00000         CON(5)  =STO
  154             * File  RAABMNU.s       37
  155 001B3 00000         CON(5)  =SEMI
  156             * File  RAABMNU.s       38
  157 001B8 00000         CON(5)  =SEMI
  158             * File  RAABMNU.s       39
  159 001BD 00000         CON(5)  =DOIDNT
  160 001C2 10            CON(2)  1
  161 001C4 25            NIBASC  \R\
  162 001C6 00000         CON(5)  =DOIDNT
  163 001CB 20            CON(2)  2
  164 001CD 4513          NIBASC  \T1\
  165 001D1 00000         CON(5)  =DOIDNT
  166 001D6 40            CON(2)  4
  167 001D8 84447         NIBASC  \HDG1\
            413
  168 001E0 00000         CON(5)  =DOIDNT
  169 001E5 30            CON(2)  3
  170 001E7 74351         NIBASC  \GS1\
            3
  171 001ED 00000         CON(5)  =DOIDNT
  172 001F2 20            CON(2)  2
  173 001F4 4523          NIBASC  \T2\
  174             * OUTPUT global variables
  175             * File  RAABMNU.s       40
  176 001F8 00000         CON(5)  =DOIDNT
  177 001FD 40            CON(2)  4
  178 001FF 84447         NIBASC  \HDG2\
            423
  179 00207 00000         CON(5)  =DOIDNT
  180 0020C 30            CON(2)  3
  181 0020E 45342         NIBASC  \TC2\
            3
  182 00214 00000         CON(5)  =DOIDNT
  183 00219 30            CON(2)  3
  184 0021B 74352         NIBASC  \GS2\
            3
  185 00221 00000         CON(5)  =DOIDNT
  186 00226 30            CON(2)  3
  187 00228 D4342         NIBASC  \MC2\
            3
  188             * File  RAABMNU.s       41
  189 0022E 00000         CON(5)  =DOLIST
  190             * File  RAABMNU.s       42
  191 00233 00000         CON(5)  =DOCSTR
  192 00238 D0000         CON(5)  13
  193 0023D D454E         NIBASC  \MENU\
            455
  194 00245 00000         CON(5)  =DOCOL
  195             * Menu, menu option
  196             * File  RAABMNU.s       43
  197 0024A 00000         CON(5)  =DOROMP
  198 0024F 00000         CON(6)  =~xRAABMNU
            0
  199             * Create and display CST menu
  200             * File  RAABMNU.s       44
  201 00255 00000         CON(5)  =SEMI
  202             * File  RAABMNU.s       45
  203 0025A 00000         CON(5)  =SEMI
  204             * File  RAABMNU.s       46
  205 0025F 00000         CON(5)  =DOLIST
  206             * File  RAABMNU.s       47
  207 00264 00000         CON(5)  =DOCSTR
  208 00269 B0000         CON(5)  11
  209 0026E 74559         NIBASC  \GUI\
            4
  210 00274 00000         CON(5)  =DOCOL
  211             * GUI menu option
  212             * File  RAABMNU.s       48
  213 00279 00000         CON(5)  =DOROMP
  214 0027E 00000         CON(6)  =~xRAABFRM
            0
  215             * File  RAABMNU.s       49
  216 00284 00000         CON(5)  =SEMI
  217             * File  RAABMNU.s       50
  218 00289 00000         CON(5)  =SEMI
  219             * File  RAABMNU.s       51
  220 0028E 00000         CON(5)  =SEMI
  221             * File  RAABMNU.s       52
  222 00293 00000         CON(5)  =xMENU
  223             * Create & display CST menu
  224             * File  RAABMNU.s       53
  225 00298 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 25 21:47:09 2009
V3.0.9 (04/15/2007)   Symbol Table                       RAABMNU.a      Page    2

 '                                 Ext                   -   100   107   113
                                         119   125   131   137   143   149
 CK0                               Ext                   -    33
 DOCOL                             Ext                   -    31    67   194
                                         210
 DOCSTR                            Ext                   -    64   191   207
 DOIDNT                            Ext                   -    38    41    44
                                          47    50    55    58    70    73    76
                                          79    82    87    90   101   108   114
                                         120   126   132   138   144   150   159
                                         162   165   168   171   176   179   182
                                         185
 DOLIST                            Ext                   -    36    62   189
                                         205
 DOROMP                            Ext                   -    96   197   213
=RomId                             Abs     805 #00000325 -    18
 SEMI                              Ext                   -   155   157   201
                                         203   216   218   220   225
 STO                               Ext                   -   104   111   117
                                         123   129   135   141   147   153
 xMENU                             Ext                   -   222
=xRAABMNU                          Rel       6 #00000006 -    29
 ~ROAAB                            Ext                   -    97
 ~xRAABFRM                         Ext                   -   214
 ~xRAABMNU                         Ext                   -    28   198
Saturn Assembler                                       Thu Jun 25 21:47:09 2009
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
