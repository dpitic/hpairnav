Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)                                      CMACH.a        Page    1

    1             * File  CMACH.s 1
    2             * RPL
    3             * File  CMACH.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CMACH.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5             **********************************************************************
    6             * NAME:            CMACH
    7             * AUTHOR:          Dan Pitic
    8             * VERSION:         1.33
    9             * DATE:            13 June 2009
   10             * COMPATIBILITY:   HP50
   11             * CALLS:           326h = 806d
   12             * DESCRIPTION:     Calculates Mach number from pressure altitude and
   13             *                  calibrated air speed.  Updates the CST menu for the
   14             *                  next step of the problem.
   15             * USAGE:           ( %vc %pa -> %Mach )
   16             * INPUT:     vc    Calibrated airspeed (knots)
   17             *            pa    Pressure altitude, PA
   18             * OUTPUT:    STACK Mach number
   19             *            M     Mach number (global)
   20             * OTHER VAR: p1    ISA pressure at pressure altitude PA
   21             *            p0    ISA pressure at sea level
   22             *            \970  ISA density at sea level
   23             *
   24             * File  CMACH.s 22
   25             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD48\ASPD48.h
   26
   27             =RomId  EQU     #328
   28             * ROMID set to 328
   29
   30
   31
   32
   33
   34
   35
   36
   37
   38             *|| Resuming file CMACH.s at line 22
   39             * File  CMACH.s 24
   40             * File  CMACH.s 25
   41 00000       =CMACH
   42             * File  CMACH.s 26
   43 00000 00000         CON(5)  =DOCOL
   44             *               ROMPTR 326 2                         ( p1 = ISAP[PA] )
   45             * File  CMACH.s 28
   46 00005 00000         CON(5)  =DOROMP
   47 0000A 623           CON(3)  #326
   48 0000D 200           CON(3)  #2
   49             * File  CMACH.s 29
   50 00010 00000         CON(5)  =DOEXT
   51 00015 00000         CON(5)  =DOREAL
   52 0001A 000           NIBHEX  000
   53 0001D 00000         NIBHEX  000000000000
            00000
            00
   54 00029 0             NIBHEX  0
   55 0002A 00000         CON(5)  =DOCSTR
   56 0002F 70000         CON(5)  7
   57 00034 D6            NIBASC  \m\
   58 00036 00000         CON(5)  =umEND
   59 0003B 00000         CON(5)  =SEMI
   60             *               ROMPTR 326 2                         ( p0 = ISAP[0_ft] )
   61             * File  CMACH.s 31
   62 00040 00000         CON(5)  =DOROMP
   63 00045 623           CON(3)  #326
   64 00048 200           CON(3)  #2
   65             * File  CMACH.s 32
   66 0004B 00000         CON(5)  =DOEXT
   67 00050 00000         CON(5)  =DOREAL
   68 00055 000           NIBHEX  000
   69 00058 00000         NIBHEX  000000000000
            00000
            00
   70 00064 0             NIBHEX  0
   71 00065 00000         CON(5)  =DOCSTR
   72 0006A 70000         CON(5)  7
   73 0006F D6            NIBASC  \m\
   74 00071 00000         CON(5)  =umEND
   75 00076 00000         CON(5)  =SEMI
   76             *               ROMPTR 326 3                         ( \970 = ISA\97[0_ft] )
   77             * File  CMACH.s 34
   78 0007B 00000         CON(5)  =DOROMP
   79 00080 623           CON(3)  #326
   80 00083 300           CON(3)  #3
   81             * File  CMACH.s 35
   82 00086 00000         CON(5)  =DOREAL
   83 0008B 000           NIBHEX  000
   84 0008E 00000         NIBHEX  000000000041
            00000
            41
   85 0009A 0             NIBHEX  0
   86             * k = 1.4 for STD atmos.
   87             * File  CMACH.s 36
   88 0009B 00000         CON(5)  =DOLIST
   89 000A0 00000         CON(5)  =DOLAM
   90 000A5 20            CON(2)  2
   91 000A7 6736          NIBASC  \vc\
   92 000AB 00000         CON(5)  =DOLAM
   93 000B0 20            CON(2)  2
   94 000B2 0713          NIBASC  \p1\
   95 000B6 00000         CON(5)  =DOLAM
   96 000BB 20            CON(2)  2
   97 000BD 0703          NIBASC  \p0\
   98 000C1 00000         CON(5)  =DOLAM
   99 000C6 20            CON(2)  2
  100 000C8 79            CON(2)  #97
  101 000CA 03            NIBASC  \0\
  102 000CC 00000         CON(5)  =DOLAM
  103 000D1 10            CON(2)  1
  104 000D3 B6            NIBASC  \k\
  105 000D5 00000         CON(5)  =SEMI
  106 000DA 00000         CON(5)  =BIND
  107             * File  CMACH.s 37
  108 000DF 00000         CON(5)  =DOSYMB
  109             * File  CMACH.s 38
  110 000E4 00000         CON(5)  =DOLAM
  111 000E9 20            CON(2)  2
  112 000EB 6736          NIBASC  \vc\
  113             * File  CMACH.s 39
  114 000EF 00000         CON(5)  =%2
  115             * File  CMACH.s 40
  116 000F4 00000         CON(5)  =x^
  117             * vc^2
  118             * File  CMACH.s 41
  119
  120             * File  CMACH.s 42
  121 000F9 00000         CON(5)  =%2
  122 000FE 00000         CON(5)  =DOLAM
  123 00103 10            CON(2)  1
  124 00105 B6            NIBASC  \k\
  125 00107 00000         CON(5)  =x*
  126             * File  CMACH.s 43
  127 0010C 00000         CON(5)  =DOLAM
  128 00111 10            CON(2)  1
  129 00113 B6            NIBASC  \k\
  130 00115 00000         CON(5)  =%1
  131 0011A 00000         CON(5)  =x-
  132             * File  CMACH.s 44
  133 0011F 00000         CON(5)  =x/
  134             * 2*k/[k-1]
  135             * File  CMACH.s 45
  136
  137             * File  CMACH.s 46
  138 00124 00000         CON(5)  =DOLAM
  139 00129 20            CON(2)  2
  140 0012B 0703          NIBASC  \p0\
  141 0012F 00000         CON(5)  =DOLAM
  142 00134 20            CON(2)  2
  143 00136 79            CON(2)  #97
  144 00138 03            NIBASC  \0\
  145 0013A 00000         CON(5)  =x/
  146             * p0/\970
  147             * File  CMACH.s 47
  148 0013F 00000         CON(5)  =x*
  149             * [2*k/[k-1] * p0/\970
  150             * File  CMACH.s 48
  151
  152             * File  CMACH.s 49
  153 00144 00000         CON(5)  =%1
  154             * 1
  155             * File  CMACH.s 50
  156 00149 00000         CON(5)  =DOLAM
  157 0014E 20            CON(2)  2
  158 00150 0713          NIBASC  \p1\
  159 00154 00000         CON(5)  =DOLAM
  160 00159 20            CON(2)  2
  161 0015B 0703          NIBASC  \p0\
  162 0015F 00000         CON(5)  =x/
  163             * p1/p0
  164             * File  CMACH.s 51
  165
  166             * File  CMACH.s 52
  167 00164 00000         CON(5)  =%1
  168             * 1
  169             * File  CMACH.s 53
  170 00169 00000         CON(5)  =DOLAM
  171 0016E 10            CON(2)  1
  172 00170 B6            NIBASC  \k\
  173 00172 00000         CON(5)  =%1
  174 00177 00000         CON(5)  =x-
  175             * File  CMACH.s 54
  176 0017C 00000         CON(5)  =%2
  177 00181 00000         CON(5)  =x/
  178             * [k-1]/2
  179             * File  CMACH.s 55
  180 00186 00000         CON(5)  =DOIDNT
  181 0018B 10            CON(2)  1
  182 0018D D4            NIBASC  \M\
  183             * File  CMACH.s 56
  184 0018F 00000         CON(5)  =%2
  185 00194 00000         CON(5)  =x^
  186             * M^2
  187             * File  CMACH.s 57
  188 00199 00000         CON(5)  =x*
  189             * File  CMACH.s 58
  190 0019E 00000         CON(5)  =x+
  191             * 1 + [k-1]/2*M^2
  192             * File  CMACH.s 59
  193
  194             * File  CMACH.s 60
  195 001A3 00000         CON(5)  =DOLAM
  196 001A8 10            CON(2)  1
  197 001AA B6            NIBASC  \k\
  198             * File  CMACH.s 61
  199 001AC 00000         CON(5)  =DOLAM
  200 001B1 10            CON(2)  1
  201 001B3 B6            NIBASC  \k\
  202 001B5 00000         CON(5)  =%1
  203 001BA 00000         CON(5)  =x-
  204             * File  CMACH.s 62
  205 001BF 00000         CON(5)  =x/
  206             * k/[k-1]
  207             * File  CMACH.s 63
  208 001C4 00000         CON(5)  =x^
  209             * [1 + [k-1]/2*M^2]^[k/[k-1]]
  210             * File  CMACH.s 64
  211
  212             * File  CMACH.s 65
  213 001C9 00000         CON(5)  =%1
  214 001CE 00000         CON(5)  =x-
  215             * - 1
  216             * File  CMACH.s 66
  217 001D3 00000         CON(5)  =x*
  218             * * p1/p0
  219             * File  CMACH.s 67
  220 001D8 00000         CON(5)  =x+
  221             * + 1
  222             * File  CMACH.s 68
  223
  224             * File  CMACH.s 69
  225 001DD 00000         CON(5)  =DOLAM
  226 001E2 10            CON(2)  1
  227 001E4 B6            NIBASC  \k\
  228 001E6 00000         CON(5)  =%1
  229 001EB 00000         CON(5)  =x-
  230             * File  CMACH.s 70
  231 001F0 00000         CON(5)  =DOLAM
  232 001F5 10            CON(2)  1
  233 001F7 B6            NIBASC  \k\
  234 001F9 00000         CON(5)  =x/
  235             * [k-1]/k
  236             * File  CMACH.s 71
  237 001FE 00000         CON(5)  =x^
  238             * File  CMACH.s 72
  239
  240             * File  CMACH.s 73
  241 00203 00000         CON(5)  =%1
  242 00208 00000         CON(5)  =x-
  243             * - 1
  244             * File  CMACH.s 74
  245
  246             * File  CMACH.s 75
  247 0020D 00000         CON(5)  =x*
  248             * File  CMACH.s 76
  249 00212 00000         CON(5)  =x=
  250             * File  CMACH.s 77
  251 00217 00000         CON(5)  =SEMI
  252             * File  CMACH.s 78
  253 0021C 00000         CON(5)  ='
  254 00221 00000         CON(5)  =DOIDNT
  255 00226 10            CON(2)  1
  256 00228 D4            NIBASC  \M\
  257             * Solve for Mach no. M [global]
  258             * File  CMACH.s 79
  259 0022A 00000         CON(5)  =DOREAL
  260 0022F 999           NIBHEX  999
  261 00232 00000         NIBHEX  000000000005
            00000
            05
  262 0023E 0             NIBHEX  0
  263             * Guess value
  264             * File  CMACH.s 80
  265 0023F 00000         CON(5)  =xROOT
  266             * Solve for Mach no. M [global]
  267             * File  CMACH.s 81
  268 00244 00000         CON(5)  =ABND
  269             * LAMs vc p1 p0 \970 k
  270             * File  CMACH.s 82
  271 00249 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       CMACH.a        Page    2

 %1                                Ext                   -   130   153   167
                                         173   202   213   228   241
 %2                                Ext                   -   114   121   176
                                         184
 '                                 Ext                   -   253
 ABND                              Ext                   -   268
 BIND                              Ext                   -   106
=CMACH                             Rel       0 #00000000 -    41
 DOCOL                             Ext                   -    43
 DOCSTR                            Ext                   -    55    71
 DOEXT                             Ext                   -    50    66
 DOIDNT                            Ext                   -   180   254
 DOLAM                             Ext                   -    89    92    95
                                          98   102   110   122   127   138   141
                                         156   159   170   195   199   225   231
 DOLIST                            Ext                   -    88
 DOREAL                            Ext                   -    51    67    82
                                         259
 DOROMP                            Ext                   -    46    62    78
 DOSYMB                            Ext                   -   108
=RomId                             Abs     808 #00000328 -    27
 SEMI                              Ext                   -    59    75   105
                                         251   271
 umEND                             Ext                   -    58    74
 x*                                Ext                   -   125   148   188
                                         217   247
 x+                                Ext                   -   190   220
 x-                                Ext                   -   131   174   203
                                         214   229   242
 x/                                Ext                   -   133   145   162
                                         177   205   234
 x=                                Ext                   -   249
 xROOT                             Ext                   -   265
 x^                                Ext                   -   116   185   208
                                         237
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
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
