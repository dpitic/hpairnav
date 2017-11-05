Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)                                      PNRFRM.a       Page    1

    1               * File  PNRFRM.s        1
    2               * RPL
    3               * File  PNRFRM.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRFRM.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009
    5               **********************************************************************
    6               * NAME:          PNRFRM
    7               * LIBRARY #:     322h = 802d
    8               * AUTHOR:        Dan Pitic
    9               * DATE:          22 June 2009
   10               * VERSION:       1.3
   11               * COMPATIBILITY: HP50
   12               *                HP48
   13               * DESCRIPTION:   Runs the library application as a GUI.
   14               *
   15               * File  PNRFRM.s        13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVF50.h
   17
   18               =RomId  EQU     #322
   19               * ROMID set to 322
   20
   21
   22
   23
   24
   25
   26
   27
   28
   29               *|| Resuming file PNRFRM.s at line 13
   30 00000 000000          CON(6)  =~xPNRFRM
   31 00006         =xPNRFRM
   32               * File  PNRFRM.s        15
   33 00006 00000           CON(5)  =DOCOL
   34               * File  PNRFRM.s        16
   35 0000B 00000           CON(5)  =CK0
   36               * No arguments
   37               * File  PNRFRM.s        17
   38 00010 00000           CON(5)  =BEGIN
   39               * File  PNRFRM.s        18
   40 00015 00000           CON(5)  =DOROMP
   41 0001A 000000          CON(6)  =~OutbndInptForm
   42               * Run OUTBOUND input form
   43               * File  PNRFRM.s        19
   44 00020 00000           CON(5)  =WHILE
   45 00025 00000           CON(5)  =DOCOL
   46               * STO OUTBOUND INPUT global variables
   47               * File  PNRFRM.s        21
   48 0002A 00000           CON(5)  ='
   49 0002F 00000           CON(5)  =DOIDNT
   50 00034 40              CON(2)  4
   51 00036 4484F4D         NIBASC  \DHOM\
            4
   52 0003E 00000           CON(5)  =STO
   53               * File  PNRFRM.s        22
   54 00043 00000           CON(5)  ='
   55 00048 00000           CON(5)  =DOIDNT
   56 0004D 40              CON(2)  4
   57 0004F 4514351         NIBASC  \TAS1\
            3
   58 00057 00000           CON(5)  =STO
   59               * File  PNRFRM.s        23
   60 0005C 00000           CON(5)  ='
   61 00061 00000           CON(5)  =DOIDNT
   62 00066 30              CON(2)  3
   63 00068 646413          NIBASC  \FF1\
   64 0006E 00000           CON(5)  =STO
   65               * File  PNRFRM.s        24
   66 00073 00000           CON(5)  ='
   67 00078 00000           CON(5)  =DOIDNT
   68 0007D 30              CON(2)  3
   69 0007F 453413          NIBASC  \TC1\
   70 00085 00000           CON(5)  =STO
   71               * File  PNRFRM.s        25
   72 0008A 00000           CON(5)  ='
   73 0008F 00000           CON(5)  =DOIDNT
   74 00094 30              CON(2)  3
   75 00096 753513          NIBASC  \WS1\
   76 0009C 00000           CON(5)  =STO
   77               * File  PNRFRM.s        26
   78 000A1 00000           CON(5)  ='
   79 000A6 00000           CON(5)  =DOIDNT
   80 000AB 30              CON(2)  3
   81 000AD 754413          NIBASC  \WD1\
   82 000B3 00000           CON(5)  =STO
   83               * File  PNRFRM.s        27
   84 000B8 00000           CON(5)  =BEGIN
   85               * File  PNRFRM.s        28
   86 000BD 00000           CON(5)  =DOROMP
   87 000C2 000000          CON(6)  =~InbndInptForm
   88               * Run INBOUND input form
   89               * File  PNRFRM.s        29
   90 000C8 00000           CON(5)  =WHILE
   91 000CD 00000           CON(5)  =DOCOL
   92               * STO INBOUND INPUT global variables
   93               * File  PNRFRM.s        31
   94 000D2 00000           CON(5)  ='
   95 000D7 00000           CON(5)  =DOIDNT
   96 000DC 50              CON(2)  5
   97 000DE 64C4456         NIBASC  \FLTFL\
            4C4
   98 000E8 00000           CON(5)  =STO
   99               * File  PNRFRM.s        32
  100 000ED 00000           CON(5)  ='
  101 000F2 00000           CON(5)  =DOIDNT
  102 000F7 40              CON(2)  4
  103 000F9 4514352         NIBASC  \TAS2\
            3
  104 00101 00000           CON(5)  =STO
  105               * File  PNRFRM.s        33
  106 00106 00000           CON(5)  ='
  107 0010B 00000           CON(5)  =DOIDNT
  108 00110 30              CON(2)  3
  109 00112 646423          NIBASC  \FF2\
  110 00118 00000           CON(5)  =STO
  111               * File  PNRFRM.s        34
  112 0011D 00000           CON(5)  ='
  113 00122 00000           CON(5)  =DOIDNT
  114 00127 30              CON(2)  3
  115 00129 753523          NIBASC  \WS2\
  116 0012F 00000           CON(5)  =STO
  117               * File  PNRFRM.s        35
  118 00134 00000           CON(5)  ='
  119 00139 00000           CON(5)  =DOIDNT
  120 0013E 30              CON(2)  3
  121 00140 754423          NIBASC  \WD2\
  122 00146 00000           CON(5)  =STO
  123               * File  PNRFRM.s        36
  124 0014B 00000           CON(5)  =DOIDNT
  125 00150 30              CON(2)  3
  126 00152 754413          NIBASC  \WD1\
  127 00158 00000           CON(5)  =DOIDNT
  128 0015D 30              CON(2)  3
  129 0015F 753513          NIBASC  \WS1\
  130 00165 00000           CON(5)  =DOIDNT
  131 0016A 30              CON(2)  3
  132 0016C 453413          NIBASC  \TC1\
  133 00172 00000           CON(5)  =DOIDNT
  134 00177 30              CON(2)  3
  135 00179 646413          NIBASC  \FF1\
  136               * INPUT arguments
  137               * File  PNRFRM.s        37
  138 0017F 00000           CON(5)  =DOIDNT
  139 00184 40              CON(2)  4
  140 00186 4514351         NIBASC  \TAS1\
            3
  141 0018E 00000           CON(5)  =DOIDNT
  142 00193 40              CON(2)  4
  143 00195 4484F4D         NIBASC  \DHOM\
            4
  144 0019D 00000           CON(5)  =DOIDNT
  145 001A2 30              CON(2)  3
  146 001A4 754423          NIBASC  \WD2\
  147 001AA 00000           CON(5)  =DOIDNT
  148 001AF 30              CON(2)  3
  149 001B1 753523          NIBASC  \WS2\
  150               * File  PNRFRM.s        38
  151 001B7 00000           CON(5)  =DOIDNT
  152 001BC 30              CON(2)  3
  153 001BE 646423          NIBASC  \FF2\
  154 001C4 00000           CON(5)  =DOIDNT
  155 001C9 40              CON(2)  4
  156 001CB 4514352         NIBASC  \TAS2\
            3
  157 001D3 00000           CON(5)  =DOIDNT
  158 001D8 50              CON(2)  5
  159 001DA 64C4456         NIBASC  \FLTFL\
            4C4
  160               * File  PNRFRM.s        39
  161 001E4 00000           CON(5)  =DOROMP
  162 001E9 000000          CON(6)  =~PNRVF
  163               * Solve problem
  164               * File  PNRFRM.s        40
  165 001EF 00000           CON(5)  ='
  166 001F4 00000           CON(5)  =DOIDNT
  167 001F9 20              CON(2)  2
  168 001FB 4513            NIBASC  \T1\
  169 001FF 00000           CON(5)  =STO
  170               * STO OUTPUT in global variables
  171               * File  PNRFRM.s        41
  172 00204 00000           CON(5)  ='
  173 00209 00000           CON(5)  =DOIDNT
  174 0020E 40              CON(2)  4
  175 00210 4464D48         NIBASC  \DFMH\
            4
  176 00218 00000           CON(5)  =STO
  177               * File  PNRFRM.s        42
  178 0021D 00000           CON(5)  ='
  179 00222 00000           CON(5)  =DOIDNT
  180 00227 10              CON(2)  1
  181 00229 25              NIBASC  \R\
  182 0022B 00000           CON(5)  =STO
  183               * File  PNRFRM.s        43
  184 00230 00000           CON(5)  ='
  185 00235 00000           CON(5)  =DOIDNT
  186 0023A 40              CON(2)  4
  187 0023C 3574252         NIBASC  \SGR2\
            3
  188 00244 00000           CON(5)  =STO
  189               * File  PNRFRM.s        44
  190 00249 00000           CON(5)  ='
  191 0024E 00000           CON(5)  =DOIDNT
  192 00253 20              CON(2)  2
  193 00255 3523            NIBASC  \S2\
  194 00259 00000           CON(5)  =STO
  195               * File  PNRFRM.s        45
  196 0025E 00000           CON(5)  ='
  197 00263 00000           CON(5)  =DOIDNT
  198 00268 40              CON(2)  4
  199 0026A 8444742         NIBASC  \HDG2\
            3
  200 00272 00000           CON(5)  =STO
  201               * File  PNRFRM.s        46
  202 00277 00000           CON(5)  ='
  203 0027C 00000           CON(5)  =DOIDNT
  204 00281 40              CON(2)  4
  205 00283 3574251         NIBASC  \SGR1\
            3
  206 0028B 00000           CON(5)  =STO
  207               * File  PNRFRM.s        47
  208 00290 00000           CON(5)  ='
  209 00295 00000           CON(5)  =DOIDNT
  210 0029A 20              CON(2)  2
  211 0029C 3513            NIBASC  \S1\
  212 002A0 00000           CON(5)  =STO
  213               * File  PNRFRM.s        48
  214 002A5 00000           CON(5)  ='
  215 002AA 00000           CON(5)  =DOIDNT
  216 002AF 40              CON(2)  4
  217 002B1 8444741         NIBASC  \HDG1\
            3
  218 002B9 00000           CON(5)  =STO
  219               * File  PNRFRM.s        49
  220 002BE 00000           CON(5)  =BEGIN
  221               * File  PNRFRM.s        50
  222 002C3 00000           CON(5)  =DOROMP
  223 002C8 000000          CON(6)  =~OutbndOutptForm
  224               * Run OUTBOUND output form
  225               * File  PNRFRM.s        51
  226 002CE 00000           CON(5)  =WHILE
  227 002D3 00000           CON(5)  =DOCOL
  228               * File  PNRFRM.s        52
  229 002D8 00000           CON(5)  =6DROP
  230               * DROP results of form
  231               * File  PNRFRM.s        53
  232 002DD 00000           CON(5)  =BEGIN
  233               * File  PNRFRM.s        54
  234 002E2 00000           CON(5)  =DOROMP
  235 002E7 000000          CON(6)  =~InbndOutptForm
  236               * Run INBOUND output form
  237               * File  PNRFRM.s        55
  238 002ED 00000           CON(5)  =WHILE
  239 002F2 00000           CON(5)  =DOCOL
  240               * File  PNRFRM.s        56
  241 002F7 00000           CON(5)  =3DROP
  242               * DROP results of form
  243               * File  PNRFRM.s        57
  244 002FC 00000           CON(5)  =SEMI
  245 00301 00000           CON(5)  =REPEAT
  246               * File  PNRFRM.s        58
  247 00306 00000           CON(5)  =SEMI
  248 0030B 00000           CON(5)  =REPEAT
  249               * File  PNRFRM.s        59
  250 00310 00000           CON(5)  =SEMI
  251 00315 00000           CON(5)  =REPEAT
  252               * File  PNRFRM.s        60
  253 0031A 00000           CON(5)  =SEMI
  254 0031F 00000           CON(5)  =REPEAT
  255               * File  PNRFRM.s        61
  256 00324 00000           CON(5)  =SEMI
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)   Symbol Table                       PNRFRM.a       Page    2

 '                                 Ext                   -    48    54    60
                                          66    72    78    94   100   106   112
                                         118   165   172   178   184   190   196
                                         202   208   214
 3DROP                             Ext                   -   241
 6DROP                             Ext                   -   229
 BEGIN                             Ext                   -    38    84   220
                                         232
 CK0                               Ext                   -    35
 DOCOL                             Ext                   -    33    45    91
                                         227   239
 DOIDNT                            Ext                   -    49    55    61
                                          67    73    79    95   101   107   113
                                         119   124   127   130   133   138   141
                                         144   147   151   154   157   166   173
                                         179   185   191   197   203   209   215
 DOROMP                            Ext                   -    40    86   161
                                         222   234
 REPEAT                            Ext                   -   245   248   251
                                         254
=RomId                             Abs     802 #00000322 -    18
 SEMI                              Ext                   -   244   247   250
                                         253   256
 STO                               Ext                   -    52    58    64
                                          70    76    82    98   104   110   116
                                         122   169   176   182   188   194   200
                                         206   212   218
 WHILE                             Ext                   -    44    90   226
                                         238
=xPNRFRM                           Rel       6 #00000006 -    31
 ~InbndInptForm                    Ext                   -    87
 ~InbndOutptForm                   Ext                   -   235
 ~OutbndInptForm                   Ext                   -    41
 ~OutbndOutptForm                  Ext                   -   223
 ~PNRVF                            Ext                   -   162
 ~xPNRFRM                          Ext                   -    30
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)   Statistics                         PNRFRM.a       Page    3

Input Parameters

  Source file name is PNRFRM.a

  Listing file name is PNRFRM.l

  Object file name is PNRFRM.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
