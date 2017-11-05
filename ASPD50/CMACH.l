Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)                                      CMACH.a        Page    1

    1               * File  CMACH.s 1
    2               * RPL
    3               * File  CMACH.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CMACH.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               **********************************************************************
    6               * NAME:            CMACH
    7               * AUTHOR:          Dan Pitic
    8               * VERSION:         1.33
    9               * DATE:            13 June 2009
   10               * COMPATIBILITY:   HP50
   11               * CALLS:           326h = 806d
   12               * DESCRIPTION:     Calculates Mach number from pressure altitude and
   13               *                  calibrated air speed.  Updates the CST menu for the
   14               *                  next step of the problem.
   15               * USAGE:           ( %vc %pa -> %Mach )
   16               * INPUT:     vc    Calibrated airspeed (knots)
   17               *            pa    Pressure altitude, PA
   18               * OUTPUT:    STACK Mach number
   19               *            M     Mach number (global)
   20               * OTHER VAR: p1    ISA pressure at pressure altitude PA
   21               *            p0    ISA pressure at sea level
   22               *            \970  ISA density at sea level
   23               *
   24               * File  CMACH.s 22
   25               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD50\ASPD50.h
   26
   27               =RomId  EQU     #328
   28               * ROMID set to 328
   29
   30
   31
   32
   33
   34
   35
   36
   37               *|| Resuming file CMACH.s at line 22
   38               * File  CMACH.s 24
   39               * File  CMACH.s 25
   40 00000         =CMACH
   41               * File  CMACH.s 26
   42 00000 00000           CON(5)  =DOCOL
   43               *               ROMPTR 326 2                         ( p1 = ISAP[PA] )
   44               * File  CMACH.s 28
   45 00005 00000           CON(5)  =DOROMP
   46 0000A 623             CON(3)  #326
   47 0000D 200             CON(3)  #2
   48               * File  CMACH.s 29
   49 00010 00000           CON(5)  =DOEXT
   50 00015 00000           CON(5)  =DOREAL
   51 0001A 000             NIBHEX  000
   52 0001D 0000000         NIBHEX  000000000000
            00000
   53 00029 0               NIBHEX  0
   54 0002A 00000           CON(5)  =DOCSTR
   55 0002F 70000           CON(5)  7
   56 00034 D6              NIBASC  \m\
   57 00036 00000           CON(5)  =umEND
   58 0003B 00000           CON(5)  =SEMI
   59               *               ROMPTR 326 2                         ( p0 = ISAP[0_ft] )
   60               * File  CMACH.s 31
   61 00040 00000           CON(5)  =DOROMP
   62 00045 623             CON(3)  #326
   63 00048 200             CON(3)  #2
   64               * File  CMACH.s 32
   65 0004B 00000           CON(5)  =DOEXT
   66 00050 00000           CON(5)  =DOREAL
   67 00055 000             NIBHEX  000
   68 00058 0000000         NIBHEX  000000000000
            00000
   69 00064 0               NIBHEX  0
   70 00065 00000           CON(5)  =DOCSTR
   71 0006A 70000           CON(5)  7
   72 0006F D6              NIBASC  \m\
   73 00071 00000           CON(5)  =umEND
   74 00076 00000           CON(5)  =SEMI
   75               *               ROMPTR 326 3                         ( \970 = ISA\97[0_ft] )
   76               * File  CMACH.s 34
   77 0007B 00000           CON(5)  =DOROMP
   78 00080 623             CON(3)  #326
   79 00083 300             CON(3)  #3
   80               * File  CMACH.s 35
   81 00086 00000           CON(5)  =DOREAL
   82 0008B 000             NIBHEX  000
   83 0008E 0000000         NIBHEX  000000000041
            00041
   84 0009A 0               NIBHEX  0
   85               * k = 1.4 for STD atmos.
   86               * File  CMACH.s 36
   87 0009B 00000           CON(5)  =DOLIST
   88 000A0 00000           CON(5)  =DOLAM
   89 000A5 20              CON(2)  2
   90 000A7 6736            NIBASC  \vc\
   91 000AB 00000           CON(5)  =DOLAM
   92 000B0 20              CON(2)  2
   93 000B2 0713            NIBASC  \p1\
   94 000B6 00000           CON(5)  =DOLAM
   95 000BB 20              CON(2)  2
   96 000BD 0703            NIBASC  \p0\
   97 000C1 00000           CON(5)  =DOLAM
   98 000C6 20              CON(2)  2
   99 000C8 79              CON(2)  #97
  100 000CA 03              NIBASC  \0\
  101 000CC 00000           CON(5)  =DOLAM
  102 000D1 10              CON(2)  1
  103 000D3 B6              NIBASC  \k\
  104 000D5 00000           CON(5)  =SEMI
  105 000DA 00000           CON(5)  =BIND
  106               * File  CMACH.s 37
  107 000DF 00000           CON(5)  =DOSYMB
  108               * File  CMACH.s 38
  109 000E4 00000           CON(5)  =DOLAM
  110 000E9 20              CON(2)  2
  111 000EB 6736            NIBASC  \vc\
  112               * File  CMACH.s 39
  113 000EF 00000           CON(5)  =%2
  114               * File  CMACH.s 40
  115 000F4 00000           CON(5)  =x^
  116               * vc^2
  117               * File  CMACH.s 41
  118
  119               * File  CMACH.s 42
  120 000F9 00000           CON(5)  =%2
  121 000FE 00000           CON(5)  =DOLAM
  122 00103 10              CON(2)  1
  123 00105 B6              NIBASC  \k\
  124 00107 00000           CON(5)  =x*
  125               * File  CMACH.s 43
  126 0010C 00000           CON(5)  =DOLAM
  127 00111 10              CON(2)  1
  128 00113 B6              NIBASC  \k\
  129 00115 00000           CON(5)  =%1
  130 0011A 00000           CON(5)  =x-
  131               * File  CMACH.s 44
  132 0011F 00000           CON(5)  =x/
  133               * 2*k/[k-1]
  134               * File  CMACH.s 45
  135
  136               * File  CMACH.s 46
  137 00124 00000           CON(5)  =DOLAM
  138 00129 20              CON(2)  2
  139 0012B 0703            NIBASC  \p0\
  140 0012F 00000           CON(5)  =DOLAM
  141 00134 20              CON(2)  2
  142 00136 79              CON(2)  #97
  143 00138 03              NIBASC  \0\
  144 0013A 00000           CON(5)  =x/
  145               * p0/\970
  146               * File  CMACH.s 47
  147 0013F 00000           CON(5)  =x*
  148               * [2*k/[k-1] * p0/\970
  149               * File  CMACH.s 48
  150
  151               * File  CMACH.s 49
  152 00144 00000           CON(5)  =%1
  153               * 1
  154               * File  CMACH.s 50
  155 00149 00000           CON(5)  =DOLAM
  156 0014E 20              CON(2)  2
  157 00150 0713            NIBASC  \p1\
  158 00154 00000           CON(5)  =DOLAM
  159 00159 20              CON(2)  2
  160 0015B 0703            NIBASC  \p0\
  161 0015F 00000           CON(5)  =x/
  162               * p1/p0
  163               * File  CMACH.s 51
  164
  165               * File  CMACH.s 52
  166 00164 00000           CON(5)  =%1
  167               * 1
  168               * File  CMACH.s 53
  169 00169 00000           CON(5)  =DOLAM
  170 0016E 10              CON(2)  1
  171 00170 B6              NIBASC  \k\
  172 00172 00000           CON(5)  =%1
  173 00177 00000           CON(5)  =x-
  174               * File  CMACH.s 54
  175 0017C 00000           CON(5)  =%2
  176 00181 00000           CON(5)  =x/
  177               * [k-1]/2
  178               * File  CMACH.s 55
  179 00186 00000           CON(5)  =DOIDNT
  180 0018B 10              CON(2)  1
  181 0018D D4              NIBASC  \M\
  182               * File  CMACH.s 56
  183 0018F 00000           CON(5)  =%2
  184 00194 00000           CON(5)  =x^
  185               * M^2
  186               * File  CMACH.s 57
  187 00199 00000           CON(5)  =x*
  188               * File  CMACH.s 58
  189 0019E 00000           CON(5)  =x+
  190               * 1 + [k-1]/2*M^2
  191               * File  CMACH.s 59
  192
  193               * File  CMACH.s 60
  194 001A3 00000           CON(5)  =DOLAM
  195 001A8 10              CON(2)  1
  196 001AA B6              NIBASC  \k\
  197               * File  CMACH.s 61
  198 001AC 00000           CON(5)  =DOLAM
  199 001B1 10              CON(2)  1
  200 001B3 B6              NIBASC  \k\
  201 001B5 00000           CON(5)  =%1
  202 001BA 00000           CON(5)  =x-
  203               * File  CMACH.s 62
  204 001BF 00000           CON(5)  =x/
  205               * k/[k-1]
  206               * File  CMACH.s 63
  207 001C4 00000           CON(5)  =x^
  208               * [1 + [k-1]/2*M^2]^[k/[k-1]]
  209               * File  CMACH.s 64
  210
  211               * File  CMACH.s 65
  212 001C9 00000           CON(5)  =%1
  213 001CE 00000           CON(5)  =x-
  214               * - 1
  215               * File  CMACH.s 66
  216 001D3 00000           CON(5)  =x*
  217               * * p1/p0
  218               * File  CMACH.s 67
  219 001D8 00000           CON(5)  =x+
  220               * + 1
  221               * File  CMACH.s 68
  222
  223               * File  CMACH.s 69
  224 001DD 00000           CON(5)  =DOLAM
  225 001E2 10              CON(2)  1
  226 001E4 B6              NIBASC  \k\
  227 001E6 00000           CON(5)  =%1
  228 001EB 00000           CON(5)  =x-
  229               * File  CMACH.s 70
  230 001F0 00000           CON(5)  =DOLAM
  231 001F5 10              CON(2)  1
  232 001F7 B6              NIBASC  \k\
  233 001F9 00000           CON(5)  =x/
  234               * [k-1]/k
  235               * File  CMACH.s 71
  236 001FE 00000           CON(5)  =x^
  237               * File  CMACH.s 72
  238
  239               * File  CMACH.s 73
  240 00203 00000           CON(5)  =%1
  241 00208 00000           CON(5)  =x-
  242               * - 1
  243               * File  CMACH.s 74
  244
  245               * File  CMACH.s 75
  246 0020D 00000           CON(5)  =x*
  247               * File  CMACH.s 76
  248 00212 00000           CON(5)  =x=
  249               * File  CMACH.s 77
  250 00217 00000           CON(5)  =SEMI
  251               * File  CMACH.s 78
  252 0021C 00000           CON(5)  ='
  253 00221 00000           CON(5)  =DOIDNT
  254 00226 10              CON(2)  1
  255 00228 D4              NIBASC  \M\
  256               * Solve for Mach no. M [global]
  257               * File  CMACH.s 79
  258 0022A 00000           CON(5)  =DOREAL
  259 0022F 999             NIBHEX  999
  260 00232 0000000         NIBHEX  000000000005
            00005
  261 0023E 0               NIBHEX  0
  262               * Guess value
  263               * File  CMACH.s 80
  264 0023F 00000           CON(5)  =xROOT
  265               * Solve for Mach no. M [global]
  266               * File  CMACH.s 81
  267 00244 00000           CON(5)  =ABND
  268               * LAMs vc p1 p0 \970 k
  269               * File  CMACH.s 82
  270 00249 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Symbol Table                       CMACH.a        Page    2

 %1                                Ext                   -   129   152   166
                                         172   201   212   227   240
 %2                                Ext                   -   113   120   175
                                         183
 '                                 Ext                   -   252
 ABND                              Ext                   -   267
 BIND                              Ext                   -   105
=CMACH                             Rel       0 #00000000 -    40
 DOCOL                             Ext                   -    42
 DOCSTR                            Ext                   -    54    70
 DOEXT                             Ext                   -    49    65
 DOIDNT                            Ext                   -   179   253
 DOLAM                             Ext                   -    88    91    94
                                          97   101   109   121   126   137   140
                                         155   158   169   194   198   224   230
 DOLIST                            Ext                   -    87
 DOREAL                            Ext                   -    50    66    81
                                         258
 DOROMP                            Ext                   -    45    61    77
 DOSYMB                            Ext                   -   107
=RomId                             Abs     808 #00000328 -    27
 SEMI                              Ext                   -    58    74   104
                                         250   270
 umEND                             Ext                   -    57    73
 x*                                Ext                   -   124   147   187
                                         216   246
 x+                                Ext                   -   189   219
 x-                                Ext                   -   130   173   202
                                         213   228   241
 x/                                Ext                   -   132   144   161
                                         176   204   233
 x=                                Ext                   -   248
 xROOT                             Ext                   -   264
 x^                                Ext                   -   115   184   207
                                         236
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Statistics                         CMACH.a        Page    3

Input Parameters

  Source file name is CMACH.a

  Listing file name is CMACH.l

  Object file name is CMACH.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
