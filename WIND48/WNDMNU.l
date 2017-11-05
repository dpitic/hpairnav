Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)                                      WNDMNU.a       Page    1

    1             * File  WNDMNU.s        1
    2             * RPL
    3             * File  WNDMNU.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\WNDMNU.s, part of the WIND50.hpp project, created by <> on 15/06/2009
    5             **********************************************************************
    6             * NAME:          WNDMNU
    7             * LIBRARY #:     320h = 800d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.7
   10             * DATE:          15 June 2009
   11             * COMPATIBILITY: HP50, HP48
   12             * DESCRIPTION:   Generates the CST menu for the wind triangle problem.
   13             *
   14             * File  WNDMNU.s        12
   15             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND48\WIND48.h
   16
   17             =RomId  EQU     #320
   18             * ROMID set to 320
   19
   20
   21
   22
   23
   24
   25
   26
   27             *|| Resuming file WNDMNU.s at line 12
   28 00000 00000         CON(6)  =~xWNDMNU
            0
   29 00006       =xWNDMNU
   30             * File  WNDMNU.s        14
   31 00006 00000         CON(5)  =DOCOL
   32             * File  WNDMNU.s        15
   33 0000B 00000         CON(5)  =CK0
   34             * No arguments
   35             * File  WNDMNU.s        16
   36 00010 00000         CON(5)  =DOLIST
   37             * File  WNDMNU.s        17
   38 00015 00000         CON(5)  =DOIDNT
   39 0001A 30            CON(2)  3
   40 0001C 84447         NIBASC  \HDG\
            4
   41 00022 00000         CON(5)  =DOIDNT
   42 00027 30            CON(2)  3
   43 00029 45143         NIBASC  \TAS\
            5
   44 0002F 00000         CON(5)  =DOIDNT
   45 00034 20            CON(2)  2
   46 00036 4534          NIBASC  \TC\
   47 0003A 00000         CON(5)  =DOIDNT
   48 0003F 20            CON(2)  2
   49 00041 7435          NIBASC  \GS\
   50 00045 00000         CON(5)  =DOIDNT
   51 0004A 20            CON(2)  2
   52 0004C 7544          NIBASC  \WD\
   53 00050 00000         CON(5)  =DOIDNT
   54 00055 20            CON(2)  2
   55 00057 7535          NIBASC  \WS\
   56 0005B 00000         CON(5)  =DOIDNT
   57 00060 40            CON(2)  4
   58 00062 34251         NIBASC  \CRAB\
            424
   59             * INPUT/OUTPUT global variables
   60             * File  WNDMNU.s        18
   61 0006A 00000         CON(5)  =DOLIST
   62 0006F 00000         CON(5)  =DOCSTR
   63 00074 B0000         CON(5)  11
   64 00079 14942         NIBASC  \AIR\
            5
   65 0007F 00000         CON(5)  =DOCOL
   66             * Calculate air vector
   67             * File  WNDMNU.s        19
   68 00084 00000         CON(5)  =DOIDNT
   69 00089 20            CON(2)  2
   70 0008B 4534          NIBASC  \TC\
   71 0008F 00000         CON(5)  =DOIDNT
   72 00094 20            CON(2)  2
   73 00096 7435          NIBASC  \GS\
   74 0009A 00000         CON(5)  =DOIDNT
   75 0009F 20            CON(2)  2
   76 000A1 7544          NIBASC  \WD\
   77 000A5 00000         CON(5)  =DOIDNT
   78 000AA 20            CON(2)  2
   79 000AC 7535          NIBASC  \WS\
   80 000B0 00000         CON(5)  =DOROMP
   81 000B5 00000         CON(6)  =~xCAVE
            0
   82             * File  WNDMNU.s        20
   83 000BB 00000         CON(5)  ='
   84 000C0 00000         CON(5)  =DOIDNT
   85 000C5 40            CON(2)  4
   86 000C7 34251         NIBASC  \CRAB\
            424
   87 000CF 00000         CON(5)  =STO
   88             * File  WNDMNU.s        21
   89 000D4 00000         CON(5)  ='
   90 000D9 00000         CON(5)  =DOIDNT
   91 000DE 30            CON(2)  3
   92 000E0 45143         NIBASC  \TAS\
            5
   93 000E6 00000         CON(5)  =STO
   94             * File  WNDMNU.s        22
   95 000EB 00000         CON(5)  ='
   96 000F0 00000         CON(5)  =DOIDNT
   97 000F5 30            CON(2)  3
   98 000F7 84447         NIBASC  \HDG\
            4
   99 000FD 00000         CON(5)  =STO
  100             * File  WNDMNU.s        23
  101 00102 00000         CON(5)  =SEMI
  102             * File  WNDMNU.s        24
  103 00107 00000         CON(5)  =SEMI
  104             * File  WNDMNU.s        25
  105 0010C 00000         CON(5)  =DOLIST
  106 00111 00000         CON(5)  =DOCSTR
  107 00116 B0000         CON(5)  11
  108 0011B 74E44         NIBASC  \GND\
            4
  109 00121 00000         CON(5)  =DOCOL
  110             * Calculate ground vector
  111             * File  WNDMNU.s        26
  112 00126 00000         CON(5)  =DOIDNT
  113 0012B 30            CON(2)  3
  114 0012D 84447         NIBASC  \HDG\
            4
  115 00133 00000         CON(5)  =DOIDNT
  116 00138 30            CON(2)  3
  117 0013A 45143         NIBASC  \TAS\
            5
  118 00140 00000         CON(5)  =DOIDNT
  119 00145 20            CON(2)  2
  120 00147 7544          NIBASC  \WD\
  121 0014B 00000         CON(5)  =DOIDNT
  122 00150 20            CON(2)  2
  123 00152 7535          NIBASC  \WS\
  124 00156 00000         CON(5)  =DOROMP
  125 0015B 00000         CON(6)  =~xCGVE
            0
  126             * File  WNDMNU.s        27
  127 00161 00000         CON(5)  ='
  128 00166 00000         CON(5)  =DOIDNT
  129 0016B 40            CON(2)  4
  130 0016D 34251         NIBASC  \CRAB\
            424
  131 00175 00000         CON(5)  =STO
  132             * File  WNDMNU.s        28
  133 0017A 00000         CON(5)  ='
  134 0017F 00000         CON(5)  =DOIDNT
  135 00184 20            CON(2)  2
  136 00186 7435          NIBASC  \GS\
  137 0018A 00000         CON(5)  =STO
  138             * File  WNDMNU.s        29
  139 0018F 00000         CON(5)  ='
  140 00194 00000         CON(5)  =DOIDNT
  141 00199 20            CON(2)  2
  142 0019B 4534          NIBASC  \TC\
  143 0019F 00000         CON(5)  =STO
  144             * File  WNDMNU.s        30
  145 001A4 00000         CON(5)  =SEMI
  146             * File  WNDMNU.s        31
  147 001A9 00000         CON(5)  =SEMI
  148             * File  WNDMNU.s        32
  149 001AE 00000         CON(5)  =DOLIST
  150 001B3 00000         CON(5)  =DOCSTR
  151 001B8 D0000         CON(5)  13
  152 001BD 7594E         NIBASC  \WIND\
            444
  153 001C5 00000         CON(5)  =DOCOL
  154             * Calculate wind vector
  155             * File  WNDMNU.s        33
  156 001CA 00000         CON(5)  =DOIDNT
  157 001CF 30            CON(2)  3
  158 001D1 84447         NIBASC  \HDG\
            4
  159 001D7 00000         CON(5)  =DOIDNT
  160 001DC 30            CON(2)  3
  161 001DE 45143         NIBASC  \TAS\
            5
  162 001E4 00000         CON(5)  =DOIDNT
  163 001E9 20            CON(2)  2
  164 001EB 4534          NIBASC  \TC\
  165 001EF 00000         CON(5)  =DOIDNT
  166 001F4 20            CON(2)  2
  167 001F6 7435          NIBASC  \GS\
  168 001FA 00000         CON(5)  =DOROMP
  169 001FF 00000         CON(6)  =~xCWVE
            0
  170             * File  WNDMNU.s        34
  171 00205 00000         CON(5)  ='
  172 0020A 00000         CON(5)  =DOIDNT
  173 0020F 40            CON(2)  4
  174 00211 34251         NIBASC  \CRAB\
            424
  175 00219 00000         CON(5)  =STO
  176             * File  WNDMNU.s        35
  177 0021E 00000         CON(5)  ='
  178 00223 00000         CON(5)  =DOIDNT
  179 00228 20            CON(2)  2
  180 0022A 7535          NIBASC  \WS\
  181 0022E 00000         CON(5)  =STO
  182             * File  WNDMNU.s        36
  183 00233 00000         CON(5)  ='
  184 00238 00000         CON(5)  =DOIDNT
  185 0023D 20            CON(2)  2
  186 0023F 7544          NIBASC  \WD\
  187 00243 00000         CON(5)  =STO
  188             * File  WNDMNU.s        37
  189 00248 00000         CON(5)  =SEMI
  190             * File  WNDMNU.s        38
  191 0024D 00000         CON(5)  =SEMI
  192             * File  WNDMNU.s        39
  193 00252 00000         CON(5)  =DOLIST
  194 00257 00000         CON(5)  =DOCSTR
  195 0025C D0000         CON(5)  13
  196 00261 45847         NIBASC  \THGS\
            435
  197 00269 00000         CON(5)  =DOCOL
  198             * Calculate heading and ground speed
  199             * File  WNDMNU.s        40
  200 0026E 00000         CON(5)  =DOIDNT
  201 00273 30            CON(2)  3
  202 00275 45143         NIBASC  \TAS\
            5
  203 0027B 00000         CON(5)  =DOIDNT
  204 00280 20            CON(2)  2
  205 00282 4534          NIBASC  \TC\
  206 00286 00000         CON(5)  =DOIDNT
  207 0028B 20            CON(2)  2
  208 0028D 7544          NIBASC  \WD\
  209 00291 00000         CON(5)  =DOIDNT
  210 00296 20            CON(2)  2
  211 00298 7535          NIBASC  \WS\
  212 0029C 00000         CON(5)  =DOROMP
  213 002A1 00000         CON(6)  =~xTHGS
            0
  214             * File  WNDMNU.s        41
  215 002A7 00000         CON(5)  ='
  216 002AC 00000         CON(5)  =DOIDNT
  217 002B1 40            CON(2)  4
  218 002B3 34251         NIBASC  \CRAB\
            424
  219 002BB 00000         CON(5)  =STO
  220             * File  WNDMNU.s        42
  221 002C0 00000         CON(5)  ='
  222 002C5 00000         CON(5)  =DOIDNT
  223 002CA 20            CON(2)  2
  224 002CC 7435          NIBASC  \GS\
  225 002D0 00000         CON(5)  =STO
  226             * File  WNDMNU.s        43
  227 002D5 00000         CON(5)  ='
  228 002DA 00000         CON(5)  =DOIDNT
  229 002DF 30            CON(2)  3
  230 002E1 84447         NIBASC  \HDG\
            4
  231 002E7 00000         CON(5)  =STO
  232             * File  WNDMNU.s        44
  233 002EC 00000         CON(5)  =SEMI
  234             * File  WNDMNU.s        45
  235 002F1 00000         CON(5)  =SEMI
  236             * File  WNDMNU.s        46
  237 002F6 00000         CON(5)  =DOLIST
  238 002FB 00000         CON(5)  =DOCSTR
  239 00300 D0000         CON(5)  13
  240 00305 D454E         NIBASC  \MENU\
            455
  241 0030D 00000         CON(5)  =DOCOL
  242             * Regenerate menu
  243             * File  WNDMNU.s        47
  244 00312 00000         CON(5)  =DOROMP
  245 00317 00000         CON(6)  =~xWNDMNU
            0
  246             * File  WNDMNU.s        48
  247 0031D 00000         CON(5)  =SEMI
  248             * File  WNDMNU.s        49
  249 00322 00000         CON(5)  =SEMI
  250             * File  WNDMNU.s        50
  251 00327 00000         CON(5)  =DOLIST
  252 0032C 00000         CON(5)  =DOCSTR
  253 00331 B0000         CON(5)  11
  254 00336 74559         NIBASC  \GUI\
            4
  255 0033C 00000         CON(5)  =DOCOL
  256             * Run the GUI
  257             * File  WNDMNU.s        51
  258 00341 00000         CON(5)  =DOROMP
  259 00346 00000         CON(6)  =~xWNDTR
            0
  260             * File  WNDMNU.s        52
  261 0034C 00000         CON(5)  =SEMI
  262             * File  WNDMNU.s        53
  263 00351 00000         CON(5)  =SEMI
  264             * File  WNDMNU.s        54
  265 00356 00000         CON(5)  =SEMI
  266             * File  WNDMNU.s        55
  267 0035B 00000         CON(5)  =xMENU
  268             * Create the CST menu
  269             * File  WNDMNU.s        56
  270 00360 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)   Symbol Table                       WNDMNU.a       Page    2

 '                                 Ext                   -    83    89    95
                                         127   133   139   171   177   183   215
                                         221   227
 CK0                               Ext                   -    33
 DOCOL                             Ext                   -    31    65   109
                                         153   197   241   255
 DOCSTR                            Ext                   -    62   106   150
                                         194   238   252
 DOIDNT                            Ext                   -    38    41    44
                                          47    50    53    56    68    71    74
                                          77    84    90    96   112   115   118
                                         121   128   134   140   156   159   162
                                         165   172   178   184   200   203   206
                                         209   216   222   228
 DOLIST                            Ext                   -    36    61   105
                                         149   193   237   251
 DOROMP                            Ext                   -    80   124   168
                                         212   244   258
=RomId                             Abs     800 #00000320 -    17
 SEMI                              Ext                   -   101   103   145
                                         147   189   191   233   235   247   249
                                         261   263   265   270
 STO                               Ext                   -    87    93    99
                                         131   137   143   175   181   187   219
                                         225   231
 xMENU                             Ext                   -   267
=xWNDMNU                           Rel       6 #00000006 -    29
 ~xCAVE                            Ext                   -    81
 ~xCGVE                            Ext                   -   125
 ~xCWVE                            Ext                   -   169
 ~xTHGS                            Ext                   -   213
 ~xWNDMNU                          Ext                   -    28   245
 ~xWNDTR                           Ext                   -   259
Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)   Statistics                         WNDMNU.a       Page    3

Input Parameters

  Source file name is WNDMNU.a

  Listing file name is WNDMNU.l

  Object file name is WNDMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
