Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)                                      PNRVFMNU.a     Page    1

    1             * File  PNRVFMNU.s      1
    2             * RPL
    3             * File  PNRVFMNU.s      2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVFMNU.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009
    5             **********************************************************************
    6             * NAME:          PNRVFMNU
    7             * LIBRARY #:     322h = 802d
    8             * AUTHOR:        Dan Pitic
    9             * DATE:          22 June 2009
   10             * VERSION:       1.3
   11             * COMPATIBILITY: HP50 ( Requires CONVARG )
   12             *                HP48 ( DO NOT USE CONVARG )
   13             * DESCRIPTION:   Generates and displays the CST menu for the library
   14             *                application.
   15             *                This library solves the point of no return (PNR) from
   16             *                a fixed base (along track) with variable fuel flow.
   17             *
   18             * File  PNRVFMNU.s      16
   19             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\PNRVFF48\PNRVF48.h
   20
   21             =RomId  EQU     #322
   22             * ROMID set to 322
   23
   24
   25
   26
   27
   28
   29
   30
   31             *|| Resuming file PNRVFMNU.s at line 16
   32 00000 00000         CON(6)  =~xPNRVFMNU
            0
   33 00006       =xPNRVFMNU
   34             * File  PNRVFMNU.s      18
   35 00006 00000         CON(5)  =DOCOL
   36             * File  PNRVFMNU.s      19
   37 0000B 00000         CON(5)  =CK0
   38             * No arguments
   39             * File  PNRVFMNU.s      20
   40 00010 00000         CON(5)  =DOLIST
   41             * File  PNRVFMNU.s      21
   42 00015 00000         CON(5)  =DOIDNT
   43 0001A 30            CON(2)  3
   44 0001C 75441         NIBASC  \WD1\
            3
   45 00022 00000         CON(5)  =DOIDNT
   46 00027 30            CON(2)  3
   47 00029 75351         NIBASC  \WS1\
            3
   48 0002F 00000         CON(5)  =DOIDNT
   49 00034 30            CON(2)  3
   50 00036 45341         NIBASC  \TC1\
            3
   51 0003C 00000         CON(5)  =DOIDNT
   52 00041 30            CON(2)  3
   53 00043 64641         NIBASC  \FF1\
            3
   54             * Menu INPUT global variables
   55             * File  PNRVFMNU.s      22
   56 00049 00000         CON(5)  =DOIDNT
   57 0004E 40            CON(2)  4
   58 00050 45143         NIBASC  \TAS1\
            513
   59 00058 00000         CON(5)  =DOIDNT
   60 0005D 40            CON(2)  4
   61 0005F 4484F         NIBASC  \DHOM\
            4D4
   62 00067 00000         CON(5)  =DOIDNT
   63 0006C 30            CON(2)  3
   64 0006E 75442         NIBASC  \WD2\
            3
   65 00074 00000         CON(5)  =DOIDNT
   66 00079 30            CON(2)  3
   67 0007B 75352         NIBASC  \WS2\
            3
   68             * File  PNRVFMNU.s      23
   69 00081 00000         CON(5)  =DOIDNT
   70 00086 30            CON(2)  3
   71 00088 64642         NIBASC  \FF2\
            3
   72 0008E 00000         CON(5)  =DOIDNT
   73 00093 40            CON(2)  4
   74 00095 45143         NIBASC  \TAS2\
            523
   75 0009D 00000         CON(5)  =DOIDNT
   76 000A2 50            CON(2)  5
   77 000A4 64C44         NIBASC  \FLTFL\
            564C4
   78             * File  PNRVFMNU.s      24
   79 000AE 00000         CON(5)  =DOLIST
   80             * File  PNRVFMNU.s      25
   81 000B3 00000         CON(5)  =DOCSTR
   82 000B8 F0000         CON(5)  15
   83 000BD 35F4C         NIBASC  \SOLVE\
            46554
   84 000C7 00000         CON(5)  =DOCOL
   85             * Menu solution
   86             * File  PNRVFMNU.s      26
   87 000CC 00000         CON(5)  =DOIDNT
   88 000D1 30            CON(2)  3
   89 000D3 75441         NIBASC  \WD1\
            3
   90 000D9 00000         CON(5)  =DOIDNT
   91 000DE 30            CON(2)  3
   92 000E0 75351         NIBASC  \WS1\
            3
   93 000E6 00000         CON(5)  =DOIDNT
   94 000EB 30            CON(2)  3
   95 000ED 45341         NIBASC  \TC1\
            3
   96 000F3 00000         CON(5)  =DOIDNT
   97 000F8 30            CON(2)  3
   98 000FA 64641         NIBASC  \FF1\
            3
   99             * Input arguments
  100             * File  PNRVFMNU.s      27
  101 00100 00000         CON(5)  =DOIDNT
  102 00105 40            CON(2)  4
  103 00107 45143         NIBASC  \TAS1\
            513
  104 0010F 00000         CON(5)  =DOIDNT
  105 00114 40            CON(2)  4
  106 00116 4484F         NIBASC  \DHOM\
            4D4
  107 0011E 00000         CON(5)  =DOIDNT
  108 00123 30            CON(2)  3
  109 00125 75442         NIBASC  \WD2\
            3
  110 0012B 00000         CON(5)  =DOIDNT
  111 00130 30            CON(2)  3
  112 00132 75352         NIBASC  \WS2\
            3
  113             * File  PNRVFMNU.s      28
  114 00138 00000         CON(5)  =DOIDNT
  115 0013D 30            CON(2)  3
  116 0013F 64642         NIBASC  \FF2\
            3
  117 00145 00000         CON(5)  =DOIDNT
  118 0014A 40            CON(2)  4
  119 0014C 45143         NIBASC  \TAS2\
            523
  120 00154 00000         CON(5)  =DOIDNT
  121 00159 50            CON(2)  5
  122 0015B 64C44         NIBASC  \FLTFL\
            564C4
  123             * HP50 ONLY - Argument validation
  124             *              CONVARG                          ( ***** HP50 ONLY ***** )
  125             * File  PNRVFMNU.s      31
  126 00165 00000         CON(5)  =DOROMP
  127 0016A 00000         CON(6)  =~PNRVF
            0
  128             * Calculate problem
  129             * File  PNRVFMNU.s      32
  130 00170 00000         CON(5)  ='
  131 00175 00000         CON(5)  =DOIDNT
  132 0017A 20            CON(2)  2
  133 0017C 4513          NIBASC  \T1\
  134 00180 00000         CON(5)  =STO
  135             * STO OUTPUT in global variables
  136             * File  PNRVFMNU.s      33
  137 00185 00000         CON(5)  ='
  138 0018A 00000         CON(5)  =DOIDNT
  139 0018F 40            CON(2)  4
  140 00191 4464D         NIBASC  \DFMH\
            484
  141 00199 00000         CON(5)  =STO
  142             * File  PNRVFMNU.s      34
  143 0019E 00000         CON(5)  ='
  144 001A3 00000         CON(5)  =DOIDNT
  145 001A8 10            CON(2)  1
  146 001AA 25            NIBASC  \R\
  147 001AC 00000         CON(5)  =STO
  148             * File  PNRVFMNU.s      35
  149 001B1 00000         CON(5)  ='
  150 001B6 00000         CON(5)  =DOIDNT
  151 001BB 40            CON(2)  4
  152 001BD 35742         NIBASC  \SGR2\
            523
  153 001C5 00000         CON(5)  =STO
  154             * File  PNRVFMNU.s      36
  155 001CA 00000         CON(5)  ='
  156 001CF 00000         CON(5)  =DOIDNT
  157 001D4 20            CON(2)  2
  158 001D6 3523          NIBASC  \S2\
  159 001DA 00000         CON(5)  =STO
  160             * File  PNRVFMNU.s      37
  161 001DF 00000         CON(5)  ='
  162 001E4 00000         CON(5)  =DOIDNT
  163 001E9 40            CON(2)  4
  164 001EB 84447         NIBASC  \HDG2\
            423
  165 001F3 00000         CON(5)  =STO
  166             * File  PNRVFMNU.s      38
  167 001F8 00000         CON(5)  ='
  168 001FD 00000         CON(5)  =DOIDNT
  169 00202 40            CON(2)  4
  170 00204 35742         NIBASC  \SGR1\
            513
  171 0020C 00000         CON(5)  =STO
  172             * File  PNRVFMNU.s      39
  173 00211 00000         CON(5)  ='
  174 00216 00000         CON(5)  =DOIDNT
  175 0021B 20            CON(2)  2
  176 0021D 3513          NIBASC  \S1\
  177 00221 00000         CON(5)  =STO
  178             * File  PNRVFMNU.s      40
  179 00226 00000         CON(5)  ='
  180 0022B 00000         CON(5)  =DOIDNT
  181 00230 40            CON(2)  4
  182 00232 84447         NIBASC  \HDG1\
            413
  183 0023A 00000         CON(5)  =STO
  184             * File  PNRVFMNU.s      41
  185 0023F 00000         CON(5)  =SEMI
  186             * File  PNRVFMNU.s      42
  187 00244 00000         CON(5)  =SEMI
  188             * File  PNRVFMNU.s      43
  189 00249 00000         CON(5)  =DOIDNT
  190 0024E 10            CON(2)  1
  191 00250 25            NIBASC  \R\
  192 00252 00000         CON(5)  =DOIDNT
  193 00257 40            CON(2)  4
  194 00259 4464D         NIBASC  \DFMH\
            484
  195 00261 00000         CON(5)  =DOIDNT
  196 00266 40            CON(2)  4
  197 00268 84447         NIBASC  \HDG1\
            413
  198 00270 00000         CON(5)  =DOIDNT
  199 00275 20            CON(2)  2
  200 00277 3513          NIBASC  \S1\
  201 0027B 00000         CON(5)  =DOIDNT
  202 00280 40            CON(2)  4
  203 00282 35742         NIBASC  \SGR1\
            513
  204             * Menu OUTPUT global variables
  205             * File  PNRVFMNU.s      44
  206 0028A 00000         CON(5)  =DOIDNT
  207 0028F 20            CON(2)  2
  208 00291 4513          NIBASC  \T1\
  209 00295 00000         CON(5)  =DOIDNT
  210 0029A 40            CON(2)  4
  211 0029C 84447         NIBASC  \HDG2\
            423
  212 002A4 00000         CON(5)  =DOIDNT
  213 002A9 20            CON(2)  2
  214 002AB 3523          NIBASC  \S2\
  215 002AF 00000         CON(5)  =DOIDNT
  216 002B4 40            CON(2)  4
  217 002B6 35742         NIBASC  \SGR2\
            523
  218             * File  PNRVFMNU.s      45
  219 002BE 00000         CON(5)  =DOLIST
  220 002C3 00000         CON(5)  =SEMI
  221             * File  PNRVFMNU.s      46
  222 002C8 00000         CON(5)  =DOLIST
  223             * File  PNRVFMNU.s      47
  224 002CD 00000         CON(5)  =DOCSTR
  225 002D2 D0000         CON(5)  13
  226 002D7 D454E         NIBASC  \MENU\
            455
  227 002DF 00000         CON(5)  =DOCOL
  228             * Create and display CST menu
  229             * File  PNRVFMNU.s      48
  230 002E4 00000         CON(5)  =DOROMP
  231 002E9 00000         CON(6)  =~xPNRVFMNU
            0
  232             * File  PNRVFMNU.s      49
  233 002EF 00000         CON(5)  =SEMI
  234             * File  PNRVFMNU.s      50
  235 002F4 00000         CON(5)  =SEMI
  236             * File  PNRVFMNU.s      51
  237 002F9 00000         CON(5)  =DOLIST
  238             * File  PNRVFMNU.s      52
  239 002FE 00000         CON(5)  =DOCSTR
  240 00303 B0000         CON(5)  11
  241 00308 74559         NIBASC  \GUI\
            4
  242 0030E 00000         CON(5)  =DOCOL
  243             * Run the GUI
  244             * File  PNRVFMNU.s      53
  245 00313 00000         CON(5)  =DOROMP
  246 00318 00000         CON(6)  =~xPNRFRM
            0
  247             * File  PNRVFMNU.s      54
  248 0031E 00000         CON(5)  =SEMI
  249             * File  PNRVFMNU.s      55
  250 00323 00000         CON(5)  =SEMI
  251             * File  PNRVFMNU.s      56
  252 00328 00000         CON(5)  =SEMI
  253             * File  PNRVFMNU.s      57
  254 0032D 00000         CON(5)  =xMENU
  255             * File  PNRVFMNU.s      58
  256 00332 00000         CON(5)  =SEMI
Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)   Symbol Table                       PNRVFMNU.a     Page    2

 '                                 Ext                   -   130   137   143
                                         149   155   161   167   173   179
 CK0                               Ext                   -    37
 DOCOL                             Ext                   -    35    84   227
                                         242
 DOCSTR                            Ext                   -    81   224   239
 DOIDNT                            Ext                   -    42    45    48
                                          51    56    59    62    65    69    72
                                          75    87    90    93    96   101   104
                                         107   110   114   117   120   131   138
                                         144   150   156   162   168   174   180
                                         189   192   195   198   201   206   209
                                         212   215
 DOLIST                            Ext                   -    40    79   219
                                         222   237
 DOROMP                            Ext                   -   126   230   245
=RomId                             Abs     802 #00000322 -    21
 SEMI                              Ext                   -   185   187   220
                                         233   235   248   250   252   256
 STO                               Ext                   -   134   141   147
                                         153   159   165   171   177   183
 xMENU                             Ext                   -   254
=xPNRVFMNU                         Rel       6 #00000006 -    33
 ~PNRVF                            Ext                   -   127
 ~xPNRFRM                          Ext                   -   246
 ~xPNRVFMNU                        Ext                   -    32   231
Saturn Assembler                                       Mon Jun 22 19:57:31 2009
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
