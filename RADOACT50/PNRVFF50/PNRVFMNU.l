Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)                                      PNRVFMNU.a     Page    1

    1               * File  PNRVFMNU.s      1
    2               * RPL
    3               * File  PNRVFMNU.s      2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVFMNU.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009
    5               **********************************************************************
    6               * NAME:          PNRVFMNU
    7               * LIBRARY #:     322h = 802d
    8               * AUTHOR:        Dan Pitic
    9               * DATE:          22 June 2009
   10               * VERSION:       1.3
   11               * COMPATIBILITY: HP50
   12               *                HP48
   13               * DESCRIPTION:   Generates and displays the CST menu for the library
   14               *                application.
   15               *                This library solves the point of no return (PNR) from
   16               *                a fixed base (along track) with variable fuel flow.
   17               *
   18               * File  PNRVFMNU.s      16
   19               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVF50.h
   20
   21               =RomId  EQU     #322
   22               * ROMID set to 322
   23
   24
   25
   26
   27
   28
   29
   30
   31
   32               *|| Resuming file PNRVFMNU.s at line 16
   33 00000 000000          CON(6)  =~xPNRVFMNU
   34 00006         =xPNRVFMNU
   35               * File  PNRVFMNU.s      18
   36 00006 00000           CON(5)  =DOCOL
   37               * File  PNRVFMNU.s      19
   38 0000B 00000           CON(5)  =CK0
   39               * No arguments
   40               * File  PNRVFMNU.s      20
   41 00010 00000           CON(5)  =DOLIST
   42               * File  PNRVFMNU.s      21
   43 00015 00000           CON(5)  =DOIDNT
   44 0001A 30              CON(2)  3
   45 0001C 754413          NIBASC  \WD1\
   46 00022 00000           CON(5)  =DOIDNT
   47 00027 30              CON(2)  3
   48 00029 753513          NIBASC  \WS1\
   49 0002F 00000           CON(5)  =DOIDNT
   50 00034 30              CON(2)  3
   51 00036 453413          NIBASC  \TC1\
   52 0003C 00000           CON(5)  =DOIDNT
   53 00041 30              CON(2)  3
   54 00043 646413          NIBASC  \FF1\
   55               * Menu INPUT global variables
   56               * File  PNRVFMNU.s      22
   57 00049 00000           CON(5)  =DOIDNT
   58 0004E 40              CON(2)  4
   59 00050 4514351         NIBASC  \TAS1\
            3
   60 00058 00000           CON(5)  =DOIDNT
   61 0005D 40              CON(2)  4
   62 0005F 4484F4D         NIBASC  \DHOM\
            4
   63 00067 00000           CON(5)  =DOIDNT
   64 0006C 30              CON(2)  3
   65 0006E 754423          NIBASC  \WD2\
   66 00074 00000           CON(5)  =DOIDNT
   67 00079 30              CON(2)  3
   68 0007B 753523          NIBASC  \WS2\
   69               * File  PNRVFMNU.s      23
   70 00081 00000           CON(5)  =DOIDNT
   71 00086 30              CON(2)  3
   72 00088 646423          NIBASC  \FF2\
   73 0008E 00000           CON(5)  =DOIDNT
   74 00093 40              CON(2)  4
   75 00095 4514352         NIBASC  \TAS2\
            3
   76 0009D 00000           CON(5)  =DOIDNT
   77 000A2 50              CON(2)  5
   78 000A4 64C4456         NIBASC  \FLTFL\
            4C4
   79               * File  PNRVFMNU.s      24
   80 000AE 00000           CON(5)  =DOLIST
   81               * File  PNRVFMNU.s      25
   82 000B3 00000           CON(5)  =DOCSTR
   83 000B8 F0000           CON(5)  15
   84 000BD 35F4C46         NIBASC  \SOLVE\
            554
   85 000C7 00000           CON(5)  =DOCOL
   86               * Menu solution
   87               * File  PNRVFMNU.s      26
   88 000CC 00000           CON(5)  =DOIDNT
   89 000D1 30              CON(2)  3
   90 000D3 754413          NIBASC  \WD1\
   91 000D9 00000           CON(5)  =DOIDNT
   92 000DE 30              CON(2)  3
   93 000E0 753513          NIBASC  \WS1\
   94 000E6 00000           CON(5)  =DOIDNT
   95 000EB 30              CON(2)  3
   96 000ED 453413          NIBASC  \TC1\
   97 000F3 00000           CON(5)  =DOIDNT
   98 000F8 30              CON(2)  3
   99 000FA 646413          NIBASC  \FF1\
  100               * Input arguments
  101               * File  PNRVFMNU.s      27
  102 00100 00000           CON(5)  =DOIDNT
  103 00105 40              CON(2)  4
  104 00107 4514351         NIBASC  \TAS1\
            3
  105 0010F 00000           CON(5)  =DOIDNT
  106 00114 40              CON(2)  4
  107 00116 4484F4D         NIBASC  \DHOM\
            4
  108 0011E 00000           CON(5)  =DOIDNT
  109 00123 30              CON(2)  3
  110 00125 754423          NIBASC  \WD2\
  111 0012B 00000           CON(5)  =DOIDNT
  112 00130 30              CON(2)  3
  113 00132 753523          NIBASC  \WS2\
  114               * File  PNRVFMNU.s      28
  115 00138 00000           CON(5)  =DOIDNT
  116 0013D 30              CON(2)  3
  117 0013F 646423          NIBASC  \FF2\
  118 00145 00000           CON(5)  =DOIDNT
  119 0014A 40              CON(2)  4
  120 0014C 4514352         NIBASC  \TAS2\
            3
  121 00154 00000           CON(5)  =DOIDNT
  122 00159 50              CON(2)  5
  123 0015B 64C4456         NIBASC  \FLTFL\
            4C4
  124               * HP50 ONLY - Argument validation
  125               * File  PNRVFMNU.s      30
  126 00165 00000           CON(5)  =DOROMP
  127 0016A 000000          CON(6)  =~CONVARG
  128               * ***** HP50 ONLY *****
  129               * File  PNRVFMNU.s      31
  130 00170 00000           CON(5)  =DOROMP
  131 00175 000000          CON(6)  =~PNRVF
  132               * Calculate problem
  133               * File  PNRVFMNU.s      32
  134 0017B 00000           CON(5)  ='
  135 00180 00000           CON(5)  =DOIDNT
  136 00185 20              CON(2)  2
  137 00187 4513            NIBASC  \T1\
  138 0018B 00000           CON(5)  =STO
  139               * STO OUTPUT in global variables
  140               * File  PNRVFMNU.s      33
  141 00190 00000           CON(5)  ='
  142 00195 00000           CON(5)  =DOIDNT
  143 0019A 40              CON(2)  4
  144 0019C 4464D48         NIBASC  \DFMH\
            4
  145 001A4 00000           CON(5)  =STO
  146               * File  PNRVFMNU.s      34
  147 001A9 00000           CON(5)  ='
  148 001AE 00000           CON(5)  =DOIDNT
  149 001B3 10              CON(2)  1
  150 001B5 25              NIBASC  \R\
  151 001B7 00000           CON(5)  =STO
  152               * File  PNRVFMNU.s      35
  153 001BC 00000           CON(5)  ='
  154 001C1 00000           CON(5)  =DOIDNT
  155 001C6 40              CON(2)  4
  156 001C8 3574252         NIBASC  \SGR2\
            3
  157 001D0 00000           CON(5)  =STO
  158               * File  PNRVFMNU.s      36
  159 001D5 00000           CON(5)  ='
  160 001DA 00000           CON(5)  =DOIDNT
  161 001DF 20              CON(2)  2
  162 001E1 3523            NIBASC  \S2\
  163 001E5 00000           CON(5)  =STO
  164               * File  PNRVFMNU.s      37
  165 001EA 00000           CON(5)  ='
  166 001EF 00000           CON(5)  =DOIDNT
  167 001F4 40              CON(2)  4
  168 001F6 8444742         NIBASC  \HDG2\
            3
  169 001FE 00000           CON(5)  =STO
  170               * File  PNRVFMNU.s      38
  171 00203 00000           CON(5)  ='
  172 00208 00000           CON(5)  =DOIDNT
  173 0020D 40              CON(2)  4
  174 0020F 3574251         NIBASC  \SGR1\
            3
  175 00217 00000           CON(5)  =STO
  176               * File  PNRVFMNU.s      39
  177 0021C 00000           CON(5)  ='
  178 00221 00000           CON(5)  =DOIDNT
  179 00226 20              CON(2)  2
  180 00228 3513            NIBASC  \S1\
  181 0022C 00000           CON(5)  =STO
  182               * File  PNRVFMNU.s      40
  183 00231 00000           CON(5)  ='
  184 00236 00000           CON(5)  =DOIDNT
  185 0023B 40              CON(2)  4
  186 0023D 8444741         NIBASC  \HDG1\
            3
  187 00245 00000           CON(5)  =STO
  188               * File  PNRVFMNU.s      41
  189 0024A 00000           CON(5)  =SEMI
  190               * File  PNRVFMNU.s      42
  191 0024F 00000           CON(5)  =SEMI
  192               * File  PNRVFMNU.s      43
  193 00254 00000           CON(5)  =DOIDNT
  194 00259 10              CON(2)  1
  195 0025B 25              NIBASC  \R\
  196 0025D 00000           CON(5)  =DOIDNT
  197 00262 40              CON(2)  4
  198 00264 4464D48         NIBASC  \DFMH\
            4
  199 0026C 00000           CON(5)  =DOIDNT
  200 00271 40              CON(2)  4
  201 00273 8444741         NIBASC  \HDG1\
            3
  202 0027B 00000           CON(5)  =DOIDNT
  203 00280 20              CON(2)  2
  204 00282 3513            NIBASC  \S1\
  205 00286 00000           CON(5)  =DOIDNT
  206 0028B 40              CON(2)  4
  207 0028D 3574251         NIBASC  \SGR1\
            3
  208               * Menu OUTPUT global variables
  209               * File  PNRVFMNU.s      44
  210 00295 00000           CON(5)  =DOIDNT
  211 0029A 20              CON(2)  2
  212 0029C 4513            NIBASC  \T1\
  213 002A0 00000           CON(5)  =DOIDNT
  214 002A5 40              CON(2)  4
  215 002A7 8444742         NIBASC  \HDG2\
            3
  216 002AF 00000           CON(5)  =DOIDNT
  217 002B4 20              CON(2)  2
  218 002B6 3523            NIBASC  \S2\
  219 002BA 00000           CON(5)  =DOIDNT
  220 002BF 40              CON(2)  4
  221 002C1 3574252         NIBASC  \SGR2\
            3
  222               * File  PNRVFMNU.s      45
  223 002C9 00000           CON(5)  =DOLIST
  224 002CE 00000           CON(5)  =SEMI
  225               * File  PNRVFMNU.s      46
  226 002D3 00000           CON(5)  =DOLIST
  227               * File  PNRVFMNU.s      47
  228 002D8 00000           CON(5)  =DOCSTR
  229 002DD D0000           CON(5)  13
  230 002E2 D454E45         NIBASC  \MENU\
            5
  231 002EA 00000           CON(5)  =DOCOL
  232               * Create and display CST menu
  233               * File  PNRVFMNU.s      48
  234 002EF 00000           CON(5)  =DOROMP
  235 002F4 000000          CON(6)  =~xPNRVFMNU
  236               * File  PNRVFMNU.s      49
  237 002FA 00000           CON(5)  =SEMI
  238               * File  PNRVFMNU.s      50
  239 002FF 00000           CON(5)  =SEMI
  240               * File  PNRVFMNU.s      51
  241 00304 00000           CON(5)  =DOLIST
  242               * File  PNRVFMNU.s      52
  243 00309 00000           CON(5)  =DOCSTR
  244 0030E B0000           CON(5)  11
  245 00313 745594          NIBASC  \GUI\
  246 00319 00000           CON(5)  =DOCOL
  247               * Run the GUI
  248               * File  PNRVFMNU.s      53
  249 0031E 00000           CON(5)  =DOROMP
  250 00323 000000          CON(6)  =~xPNRFRM
  251               * File  PNRVFMNU.s      54
  252 00329 00000           CON(5)  =SEMI
  253               * File  PNRVFMNU.s      55
  254 0032E 00000           CON(5)  =SEMI
  255               * File  PNRVFMNU.s      56
  256 00333 00000           CON(5)  =SEMI
  257               * File  PNRVFMNU.s      57
  258 00338 00000           CON(5)  =xMENU
  259               * File  PNRVFMNU.s      58
  260 0033D 00000           CON(5)  =SEMI
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)   Symbol Table                       PNRVFMNU.a     Page    2

 '                                 Ext                   -   134   141   147
                                         153   159   165   171   177   183
 CK0                               Ext                   -    38
 DOCOL                             Ext                   -    36    85   231
                                         246
 DOCSTR                            Ext                   -    82   228   243
 DOIDNT                            Ext                   -    43    46    49
                                          52    57    60    63    66    70    73
                                          76    88    91    94    97   102   105
                                         108   111   115   118   121   135   142
                                         148   154   160   166   172   178   184
                                         193   196   199   202   205   210   213
                                         216   219
 DOLIST                            Ext                   -    41    80   223
                                         226   241
 DOROMP                            Ext                   -   126   130   234
                                         249
=RomId                             Abs     802 #00000322 -    21
 SEMI                              Ext                   -   189   191   224
                                         237   239   252   254   256   260
 STO                               Ext                   -   138   145   151
                                         157   163   169   175   181   187
 xMENU                             Ext                   -   258
=xPNRVFMNU                         Rel       6 #00000006 -    34
 ~CONVARG                          Ext                   -   127
 ~PNRVF                            Ext                   -   131
 ~xPNRFRM                          Ext                   -   250
 ~xPNRVFMNU                        Ext                   -    33   235
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)   Statistics                         PNRVFMNU.a     Page    3

Input Parameters

  Source file name is PNRVFMNU.a

  Listing file name is PNRVFMNU.l

  Object file name is PNRVFMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
