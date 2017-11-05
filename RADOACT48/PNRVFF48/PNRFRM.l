Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)                                      PNRFRM.a       Page    1

    1             * File  PNRFRM.s        1
    2             * RPL
    3             * File  PNRFRM.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRFRM.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009
    5             **********************************************************************
    6             * NAME:          PNRFRM
    7             * LIBRARY #:     322h = 802d
    8             * AUTHOR:        Dan Pitic
    9             * DATE:          22 June 2009
   10             * VERSION:       1.3
   11             * COMPATIBILITY: HP50
   12             *                HP48
   13             * DESCRIPTION:   Runs the library application as a GUI.
   14             *
   15             * File  PNRFRM.s        13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\PNRVFF48\PNRVF48.h
   17
   18             =RomId  EQU     #322
   19             * ROMID set to 322
   20
   21
   22
   23
   24
   25
   26
   27
   28             *|| Resuming file PNRFRM.s at line 13
   29 00000 00000         CON(6)  =~xPNRFRM
            0
   30 00006       =xPNRFRM
   31             * File  PNRFRM.s        15
   32 00006 00000         CON(5)  =DOCOL
   33             * File  PNRFRM.s        16
   34 0000B 00000         CON(5)  =CK0
   35             * No arguments
   36             * File  PNRFRM.s        17
   37 00010 00000         CON(5)  =BEGIN
   38             * File  PNRFRM.s        18
   39 00015 00000         CON(5)  =DOROMP
   40 0001A 00000         CON(6)  =~OutbndInptForm
            0
   41             * Run OUTBOUND input form
   42             * File  PNRFRM.s        19
   43 00020 00000         CON(5)  =WHILE
   44 00025 00000         CON(5)  =DOCOL
   45             * STO OUTBOUND INPUT global variables
   46             * File  PNRFRM.s        21
   47 0002A 00000         CON(5)  ='
   48 0002F 00000         CON(5)  =DOIDNT
   49 00034 40            CON(2)  4
   50 00036 4484F         NIBASC  \DHOM\
            4D4
   51 0003E 00000         CON(5)  =STO
   52             * File  PNRFRM.s        22
   53 00043 00000         CON(5)  ='
   54 00048 00000         CON(5)  =DOIDNT
   55 0004D 40            CON(2)  4
   56 0004F 45143         NIBASC  \TAS1\
            513
   57 00057 00000         CON(5)  =STO
   58             * File  PNRFRM.s        23
   59 0005C 00000         CON(5)  ='
   60 00061 00000         CON(5)  =DOIDNT
   61 00066 30            CON(2)  3
   62 00068 64641         NIBASC  \FF1\
            3
   63 0006E 00000         CON(5)  =STO
   64             * File  PNRFRM.s        24
   65 00073 00000         CON(5)  ='
   66 00078 00000         CON(5)  =DOIDNT
   67 0007D 30            CON(2)  3
   68 0007F 45341         NIBASC  \TC1\
            3
   69 00085 00000         CON(5)  =STO
   70             * File  PNRFRM.s        25
   71 0008A 00000         CON(5)  ='
   72 0008F 00000         CON(5)  =DOIDNT
   73 00094 30            CON(2)  3
   74 00096 75351         NIBASC  \WS1\
            3
   75 0009C 00000         CON(5)  =STO
   76             * File  PNRFRM.s        26
   77 000A1 00000         CON(5)  ='
   78 000A6 00000         CON(5)  =DOIDNT
   79 000AB 30            CON(2)  3
   80 000AD 75441         NIBASC  \WD1\
            3
   81 000B3 00000         CON(5)  =STO
   82             * File  PNRFRM.s        27
   83 000B8 00000         CON(5)  =BEGIN
   84             * File  PNRFRM.s        28
   85 000BD 00000         CON(5)  =DOROMP
   86 000C2 00000         CON(6)  =~InbndInptForm
            0
   87             * Run INBOUND input form
   88             * File  PNRFRM.s        29
   89 000C8 00000         CON(5)  =WHILE
   90 000CD 00000         CON(5)  =DOCOL
   91             * STO INBOUND INPUT global variables
   92             * File  PNRFRM.s        31
   93 000D2 00000         CON(5)  ='
   94 000D7 00000         CON(5)  =DOIDNT
   95 000DC 50            CON(2)  5
   96 000DE 64C44         NIBASC  \FLTFL\
            564C4
   97 000E8 00000         CON(5)  =STO
   98             * File  PNRFRM.s        32
   99 000ED 00000         CON(5)  ='
  100 000F2 00000         CON(5)  =DOIDNT
  101 000F7 40            CON(2)  4
  102 000F9 45143         NIBASC  \TAS2\
            523
  103 00101 00000         CON(5)  =STO
  104             * File  PNRFRM.s        33
  105 00106 00000         CON(5)  ='
  106 0010B 00000         CON(5)  =DOIDNT
  107 00110 30            CON(2)  3
  108 00112 64642         NIBASC  \FF2\
            3
  109 00118 00000         CON(5)  =STO
  110             * File  PNRFRM.s        34
  111 0011D 00000         CON(5)  ='
  112 00122 00000         CON(5)  =DOIDNT
  113 00127 30            CON(2)  3
  114 00129 75352         NIBASC  \WS2\
            3
  115 0012F 00000         CON(5)  =STO
  116             * File  PNRFRM.s        35
  117 00134 00000         CON(5)  ='
  118 00139 00000         CON(5)  =DOIDNT
  119 0013E 30            CON(2)  3
  120 00140 75442         NIBASC  \WD2\
            3
  121 00146 00000         CON(5)  =STO
  122             * File  PNRFRM.s        36
  123 0014B 00000         CON(5)  =DOIDNT
  124 00150 30            CON(2)  3
  125 00152 75441         NIBASC  \WD1\
            3
  126 00158 00000         CON(5)  =DOIDNT
  127 0015D 30            CON(2)  3
  128 0015F 75351         NIBASC  \WS1\
            3
  129 00165 00000         CON(5)  =DOIDNT
  130 0016A 30            CON(2)  3
  131 0016C 45341         NIBASC  \TC1\
            3
  132 00172 00000         CON(5)  =DOIDNT
  133 00177 30            CON(2)  3
  134 00179 64641         NIBASC  \FF1\
            3
  135             * INPUT arguments
  136             * File  PNRFRM.s        37
  137 0017F 00000         CON(5)  =DOIDNT
  138 00184 40            CON(2)  4
  139 00186 45143         NIBASC  \TAS1\
            513
  140 0018E 00000         CON(5)  =DOIDNT
  141 00193 40            CON(2)  4
  142 00195 4484F         NIBASC  \DHOM\
            4D4
  143 0019D 00000         CON(5)  =DOIDNT
  144 001A2 30            CON(2)  3
  145 001A4 75442         NIBASC  \WD2\
            3
  146 001AA 00000         CON(5)  =DOIDNT
  147 001AF 30            CON(2)  3
  148 001B1 75352         NIBASC  \WS2\
            3
  149             * File  PNRFRM.s        38
  150 001B7 00000         CON(5)  =DOIDNT
  151 001BC 30            CON(2)  3
  152 001BE 64642         NIBASC  \FF2\
            3
  153 001C4 00000         CON(5)  =DOIDNT
  154 001C9 40            CON(2)  4
  155 001CB 45143         NIBASC  \TAS2\
            523
  156 001D3 00000         CON(5)  =DOIDNT
  157 001D8 50            CON(2)  5
  158 001DA 64C44         NIBASC  \FLTFL\
            564C4
  159             * File  PNRFRM.s        39
  160 001E4 00000         CON(5)  =DOROMP
  161 001E9 00000         CON(6)  =~PNRVF
            0
  162             * Solve problem
  163             * File  PNRFRM.s        40
  164 001EF 00000         CON(5)  ='
  165 001F4 00000         CON(5)  =DOIDNT
  166 001F9 20            CON(2)  2
  167 001FB 4513          NIBASC  \T1\
  168 001FF 00000         CON(5)  =STO
  169             * STO OUTPUT in global variables
  170             * File  PNRFRM.s        41
  171 00204 00000         CON(5)  ='
  172 00209 00000         CON(5)  =DOIDNT
  173 0020E 40            CON(2)  4
  174 00210 4464D         NIBASC  \DFMH\
            484
  175 00218 00000         CON(5)  =STO
  176             * File  PNRFRM.s        42
  177 0021D 00000         CON(5)  ='
  178 00222 00000         CON(5)  =DOIDNT
  179 00227 10            CON(2)  1
  180 00229 25            NIBASC  \R\
  181 0022B 00000         CON(5)  =STO
  182             * File  PNRFRM.s        43
  183 00230 00000         CON(5)  ='
  184 00235 00000         CON(5)  =DOIDNT
  185 0023A 40            CON(2)  4
  186 0023C 35742         NIBASC  \SGR2\
            523
  187 00244 00000         CON(5)  =STO
  188             * File  PNRFRM.s        44
  189 00249 00000         CON(5)  ='
  190 0024E 00000         CON(5)  =DOIDNT
  191 00253 20            CON(2)  2
  192 00255 3523          NIBASC  \S2\
  193 00259 00000         CON(5)  =STO
  194             * File  PNRFRM.s        45
  195 0025E 00000         CON(5)  ='
  196 00263 00000         CON(5)  =DOIDNT
  197 00268 40            CON(2)  4
  198 0026A 84447         NIBASC  \HDG2\
            423
  199 00272 00000         CON(5)  =STO
  200             * File  PNRFRM.s        46
  201 00277 00000         CON(5)  ='
  202 0027C 00000         CON(5)  =DOIDNT
  203 00281 40            CON(2)  4
  204 00283 35742         NIBASC  \SGR1\
            513
  205 0028B 00000         CON(5)  =STO
  206             * File  PNRFRM.s        47
  207 00290 00000         CON(5)  ='
  208 00295 00000         CON(5)  =DOIDNT
  209 0029A 20            CON(2)  2
  210 0029C 3513          NIBASC  \S1\
  211 002A0 00000         CON(5)  =STO
  212             * File  PNRFRM.s        48
  213 002A5 00000         CON(5)  ='
  214 002AA 00000         CON(5)  =DOIDNT
  215 002AF 40            CON(2)  4
  216 002B1 84447         NIBASC  \HDG1\
            413
  217 002B9 00000         CON(5)  =STO
  218             * File  PNRFRM.s        49
  219 002BE 00000         CON(5)  =BEGIN
  220             * File  PNRFRM.s        50
  221 002C3 00000         CON(5)  =DOROMP
  222 002C8 00000         CON(6)  =~OutbndOutptForm
            0
  223             * Run OUTBOUND output form
  224             * File  PNRFRM.s        51
  225 002CE 00000         CON(5)  =WHILE
  226 002D3 00000         CON(5)  =DOCOL
  227             * File  PNRFRM.s        52
  228 002D8 00000         CON(5)  =6DROP
  229             * DROP results of form
  230             * File  PNRFRM.s        53
  231 002DD 00000         CON(5)  =BEGIN
  232             * File  PNRFRM.s        54
  233 002E2 00000         CON(5)  =DOROMP
  234 002E7 00000         CON(6)  =~InbndOutptForm
            0
  235             * Run INBOUND output form
  236             * File  PNRFRM.s        55
  237 002ED 00000         CON(5)  =WHILE
  238 002F2 00000         CON(5)  =DOCOL
  239             * File  PNRFRM.s        56
  240 002F7 00000         CON(5)  =3DROP
  241             * DROP results of form
  242             * File  PNRFRM.s        57
  243 002FC 00000         CON(5)  =SEMI
  244 00301 00000         CON(5)  =REPEAT
  245             * File  PNRFRM.s        58
  246 00306 00000         CON(5)  =SEMI
  247 0030B 00000         CON(5)  =REPEAT
  248             * File  PNRFRM.s        59
  249 00310 00000         CON(5)  =SEMI
  250 00315 00000         CON(5)  =REPEAT
  251             * File  PNRFRM.s        60
  252 0031A 00000         CON(5)  =SEMI
  253 0031F 00000         CON(5)  =REPEAT
  254             * File  PNRFRM.s        61
  255 00324 00000         CON(5)  =SEMI
Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)   Symbol Table                       PNRFRM.a       Page    2

 '                                 Ext                   -    47    53    59
                                          65    71    77    93    99   105   111
                                         117   164   171   177   183   189   195
                                         201   207   213
 3DROP                             Ext                   -   240
 6DROP                             Ext                   -   228
 BEGIN                             Ext                   -    37    83   219
                                         231
 CK0                               Ext                   -    34
 DOCOL                             Ext                   -    32    44    90
                                         226   238
 DOIDNT                            Ext                   -    48    54    60
                                          66    72    78    94   100   106   112
                                         118   123   126   129   132   137   140
                                         143   146   150   153   156   165   172
                                         178   184   190   196   202   208   214
 DOROMP                            Ext                   -    39    85   160
                                         221   233
 REPEAT                            Ext                   -   244   247   250
                                         253
=RomId                             Abs     802 #00000322 -    18
 SEMI                              Ext                   -   243   246   249
                                         252   255
 STO                               Ext                   -    51    57    63
                                          69    75    81    97   103   109   115
                                         121   168   175   181   187   193   199
                                         205   211   217
 WHILE                             Ext                   -    43    89   225
                                         237
=xPNRFRM                           Rel       6 #00000006 -    30
 ~InbndInptForm                    Ext                   -    86
 ~InbndOutptForm                   Ext                   -   234
 ~OutbndInptForm                   Ext                   -    40
 ~OutbndOutptForm                  Ext                   -   222
 ~PNRVF                            Ext                   -   161
 ~xPNRFRM                          Ext                   -    29
Saturn Assembler                                       Mon Jun 22 19:57:31 2009
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
