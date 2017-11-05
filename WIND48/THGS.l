Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)                                      THGS.a         Page    1

    1             * File  THGS.s  1
    2             * RPL
    3             * File  THGS.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\THGS.s, part of the WIND50.hpp project, created by <> on 15/06/2009
    5             **********************************************************************
    6             * NAME:          THGS
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.7
    9             * DATE:          15 June 2009
   10             * COMPATIBILITY: HP50, HP48
   11             * DESCRIPTION:   Calculates the HEADING, GROUND SPEED and CRAB angle
   12             *                from inputs of TAS, TC, WD, WS.
   13             * USAGE:         ( %TAS %TC %WD %WS -> %HDG %GS %CRAB )
   14             *
   15             * File  THGS.s  13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND48\WIND48.h
   17
   18             =RomId  EQU     #320
   19             * ROMID set to 320
   20
   21
   22
   23
   24
   25
   26
   27
   28             *|| Resuming file THGS.s at line 13
   29 00000 00000         CON(6)  =~xTHGS
            0
   30 00006       =xTHGS
   31             * File  THGS.s  15
   32 00006 00000         CON(5)  =DOCOL
   33             * File  THGS.s  16
   34 0000B 00000         CON(5)  =CK4&Dispatch
   35             * Requires 4 arguments
   36             * File  THGS.s  17
   37 00010 00000         CON(5)  =DOBINT
   38 00015 11110         CON(5)  #1111
   39 0001A 00000         CON(5)  =DOCOL
   40             * 4 REAL numbers
   41             * File  THGS.s  18
   42 0001F 00000         CON(5)  =FIFTEEN
   43 00024 00000         CON(5)  =ClrSysFlag
   44             * Set Polar/Cylindrical mode
   45             * File  THGS.s  19
   46 00029 00000         CON(5)  =SIXTEEN
   47 0002E 00000         CON(5)  =SetSysFlag
   48             * File  THGS.s  20
   49 00033 00000         CON(5)  =SEVENTEEN
   50 00038 00000         CON(5)  =ClrSysFlag
   51             * Set DEG mode
   52             * File  THGS.s  21
   53 0003D 00000         CON(5)  =EIGHTEEN
   54 00042 00000         CON(5)  =ClrSysFlag
   55             * File  THGS.s  22
   56 00047 00000         CON(5)  =DOLIST
   57 0004C 00000         CON(5)  =DOLAM
   58 00051 30            CON(2)  3
   59 00053 45143         NIBASC  \TAS\
            5
   60 00059 00000         CON(5)  =DOLAM
   61 0005E 20            CON(2)  2
   62 00060 4534          NIBASC  \TC\
   63 00064 00000         CON(5)  =DOLAM
   64 00069 20            CON(2)  2
   65 0006B 7544          NIBASC  \WD\
   66 0006F 00000         CON(5)  =DOLAM
   67 00074 20            CON(2)  2
   68 00076 7535          NIBASC  \WS\
   69 0007A 00000         CON(5)  =SEMI
   70 0007F 00000         CON(5)  =BIND
   71             * LAMs TAS TC WD WS
   72             * File  THGS.s  23
   73 00084 00000         CON(5)  =DOLAM
   74 00089 20            CON(2)  2
   75 0008B 7535          NIBASC  \WS\
   76 0008F 00000         CON(5)  =DOLAM
   77 00094 20            CON(2)  2
   78 00096 7544          NIBASC  \WD\
   79 0009A 00000         CON(5)  =x>V2
   80 0009F 00000         CON(5)  =xNEG
   81             * Create WIND vector
   82             * File  THGS.s  24
   83 000A4 00000         CON(5)  =%1
   84 000A9 00000         CON(5)  =DOLAM
   85 000AE 20            CON(2)  2
   86 000B0 4534          NIBASC  \TC\
   87 000B4 00000         CON(5)  =x>V2
   88             * Create UNIT GROUND vector
   89             * File  THGS.s  25
   90 000B9 00000         CON(5)  =DOLIST
   91 000BE 00000         CON(5)  =DOLAM
   92 000C3 20            CON(2)  2
   93 000C5 7565          NIBASC  \WV\
   94 000C9 00000         CON(5)  =DOLAM
   95 000CE 20            CON(2)  2
   96 000D0 7465          NIBASC  \GV\
   97 000D4 00000         CON(5)  =SEMI
   98 000D9 00000         CON(5)  =BIND
   99             * LAMs WV GV
  100             * File  THGS.s  26
  101 000DE 00000         CON(5)  =DOLAM
  102 000E3 20            CON(2)  2
  103 000E5 7565          NIBASC  \WV\
  104 000E9 00000         CON(5)  =DOLAM
  105 000EE 20            CON(2)  2
  106 000F0 7465          NIBASC  \GV\
  107 000F4 00000         CON(5)  =xDOT
  108             * File  THGS.s  27
  109 000F9 00000         CON(5)  =DOLAM
  110 000FE 20            CON(2)  2
  111 00100 7565          NIBASC  \WV\
  112 00104 00000         CON(5)  =xABS
  113             * File  THGS.s  28
  114 00109 00000         CON(5)  =DOLAM
  115 0010E 20            CON(2)  2
  116 00110 7465          NIBASC  \GV\
  117 00114 00000         CON(5)  =xABS
  118             * File  THGS.s  29
  119 00119 00000         CON(5)  =x*
  120 0011E 00000         CON(5)  =x/
  121 00123 00000         CON(5)  =xACOS
  122             * Calc. wind angle
  123             * File  THGS.s  30
  124 00128 00000         CON(5)  =DOLIST
  125 0012D 00000         CON(5)  =DOLAM
  126 00132 20            CON(2)  2
  127 00134 7514          NIBASC  \WA\
  128 00138 00000         CON(5)  =SEMI
  129 0013D 00000         CON(5)  =BIND
  130             * LAM WA
  131             * File  THGS.s  31
  132 00142 00000         CON(5)  =DOLAM
  133 00147 20            CON(2)  2
  134 00149 7535          NIBASC  \WS\
  135             * File  THGS.s  32
  136 0014D 00000         CON(5)  =DOLAM
  137 00152 20            CON(2)  2
  138 00154 7514          NIBASC  \WA\
  139 00158 00000         CON(5)  =%SIN
  140             * File  THGS.s  33
  141 0015D 00000         CON(5)  =%*
  142             * File  THGS.s  34
  143 00162 00000         CON(5)  =DOLAM
  144 00167 30            CON(2)  3
  145 00169 45143         NIBASC  \TAS\
            5
  146 0016F 00000         CON(5)  =%/
  147 00174 00000         CON(5)  =%ASIN
  148             * Calc. CRAB angle
  149             * File  THGS.s  35
  150 00179 00000         CON(5)  =DOLIST
  151 0017E 00000         CON(5)  =DOLAM
  152 00183 40            CON(2)  4
  153 00185 34251         NIBASC  \CRAB\
            424
  154 0018D 00000         CON(5)  =SEMI
  155 00192 00000         CON(5)  =BIND
  156             * LAM CRAB
  157             * File  THGS.s  36
  158 00197 00000         CON(5)  =%180
  159 0019C 00000         CON(5)  =DOLAM
  160 001A1 20            CON(2)  2
  161 001A3 7514          NIBASC  \WA\
  162 001A7 00000         CON(5)  =DOLAM
  163 001AC 40            CON(2)  4
  164 001AE 34251         NIBASC  \CRAB\
            424
  165 001B6 00000         CON(5)  =%+
  166 001BB 00000         CON(5)  =%-
  167             * Calc. WIND HEADING ANGLE
  168             * File  THGS.s  37
  169 001C0 00000         CON(5)  =DOLIST
  170 001C5 00000         CON(5)  =DOLAM
  171 001CA 30            CON(2)  3
  172 001CC 75841         NIBASC  \WHA\
            4
  173 001D2 00000         CON(5)  =SEMI
  174 001D7 00000         CON(5)  =BIND
  175             * LAM WHA
  176             * File  THGS.s  38
  177 001DC 00000         CON(5)  =DOCOL
  178             * Calc. GROUND SPEED
  179             * File  THGS.s  39
  180 001E1 00000         CON(5)  =DOLAM
  181 001E6 20            CON(2)  2
  182 001E8 7514          NIBASC  \WA\
  183 001EC 00000         CON(5)  =%0
  184 001F1 00000         CON(5)  =%=
  185 001F6 00000         CON(5)  =case
  186 001FB 00000         CON(5)  =DOCOL
  187             * Tail wind
  188             * File  THGS.s  40
  189 00200 00000         CON(5)  =DOLAM
  190 00205 30            CON(2)  3
  191 00207 45143         NIBASC  \TAS\
            5
  192 0020D 00000         CON(5)  =DOLAM
  193 00212 20            CON(2)  2
  194 00214 7535          NIBASC  \WS\
  195 00218 00000         CON(5)  =%+
  196             * File  THGS.s  41
  197 0021D 00000         CON(5)  =SEMI
  198             * File  THGS.s  42
  199 00222 00000         CON(5)  =DOLAM
  200 00227 20            CON(2)  2
  201 00229 7514          NIBASC  \WA\
  202 0022D 00000         CON(5)  =%180
  203 00232 00000         CON(5)  =%=
  204 00237 00000         CON(5)  =case
  205 0023C 00000         CON(5)  =DOCOL
  206             * Head wind
  207             * File  THGS.s  43
  208 00241 00000         CON(5)  =DOLAM
  209 00246 30            CON(2)  3
  210 00248 45143         NIBASC  \TAS\
            5
  211 0024E 00000         CON(5)  =DOLAM
  212 00253 20            CON(2)  2
  213 00255 7535          NIBASC  \WS\
  214 00259 00000         CON(5)  =%-
  215             * File  THGS.s  44
  216 0025E 00000         CON(5)  =SEMI
  217             * File  THGS.s  45
  218 00263 00000         CON(5)  =DOLAM
  219 00268 30            CON(2)  3
  220 0026A 45143         NIBASC  \TAS\
            5
  221 00270 00000         CON(5)  =DOLAM
  222 00275 30            CON(2)  3
  223 00277 75841         NIBASC  \WHA\
            4
  224 0027D 00000         CON(5)  =%SIN
  225 00282 00000         CON(5)  =%*
  226             * Anything other than
  227             * File  THGS.s  46
  228 00287 00000         CON(5)  =DOLAM
  229 0028C 20            CON(2)  2
  230 0028E 7514          NIBASC  \WA\
  231 00292 00000         CON(5)  =%SIN
  232 00297 00000         CON(5)  =%/
  233             * tail/head wind
  234             * File  THGS.s  47
  235 0029C 00000         CON(5)  =SEMI
  236             * File  THGS.s  48
  237 002A1 00000         CON(5)  =DOLIST
  238 002A6 00000         CON(5)  =DOLAM
  239 002AB 20            CON(2)  2
  240 002AD 7435          NIBASC  \GS\
  241 002B1 00000         CON(5)  =SEMI
  242 002B6 00000         CON(5)  =BIND
  243             * LAM GS
  244             * File  THGS.s  49
  245 002BB 00000         CON(5)  =DOLAM
  246 002C0 20            CON(2)  2
  247 002C2 4534          NIBASC  \TC\
  248 002C6 00000         CON(5)  =DOLAM
  249 002CB 20            CON(2)  2
  250 002CD 7435          NIBASC  \GS\
  251 002D1 00000         CON(5)  =DOLAM
  252 002D6 20            CON(2)  2
  253 002D8 7544          NIBASC  \WD\
  254 002DC 00000         CON(5)  =DOLAM
  255 002E1 20            CON(2)  2
  256 002E3 7535          NIBASC  \WS\
  257 002E7 00000         CON(5)  =DOROMP
  258 002EC 00000         CON(6)  =~xCAVE
            0
  259             * -> HDG TAS CRAB
  260             * File  THGS.s  50
  261 002F2 00000         CON(5)  =SWAPDROP
  262             * -> HDG CRAB
  263             * File  THGS.s  51
  264 002F7 00000         CON(5)  =DOLAM
  265 002FC 20            CON(2)  2
  266 002FE 7435          NIBASC  \GS\
  267             * -> HDG CRAB GS
  268             * File  THGS.s  52
  269 00302 00000         CON(5)  =SWAP
  270             * -> HDG GS CRAB
  271             * File  THGS.s  53
  272 00307 00000         CON(5)  =ABND
  273             * LAM GS
  274             * File  THGS.s  54
  275 0030C 00000         CON(5)  =ABND
  276             * LAM WHA
  277             * File  THGS.s  55
  278 00311 00000         CON(5)  =ABND
  279             * LAM CRAB
  280             * File  THGS.s  56
  281 00316 00000         CON(5)  =ABND
  282             * LAM WA
  283             * File  THGS.s  57
  284 0031B 00000         CON(5)  =ABND
  285             * LAMs WV GV
  286             * File  THGS.s  58
  287 00320 00000         CON(5)  =ABND
  288             * LAMs TAS TC WD WS
  289             * File  THGS.s  59
  290 00325 00000         CON(5)  =SEMI
  291             * File  THGS.s  60
  292 0032A 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)   Symbol Table                       THGS.a         Page    2

 %*                                Ext                   -   141   225
 %+                                Ext                   -   165   195
 %-                                Ext                   -   166   214
 %/                                Ext                   -   146   232
 %0                                Ext                   -   183
 %1                                Ext                   -    83
 %180                              Ext                   -   158   202
 %=                                Ext                   -   184   203
 %ASIN                             Ext                   -   147
 %SIN                              Ext                   -   139   224   231
 ABND                              Ext                   -   272   275   278
                                         281   284   287
 BIND                              Ext                   -    70    98   129
                                         155   174   242
 CK4&Dispatch                      Ext                   -    34
 ClrSysFlag                        Ext                   -    43    50    54
 DOBINT                            Ext                   -    37
 DOCOL                             Ext                   -    32    39   177
                                         186   205
 DOLAM                             Ext                   -    57    60    63
                                          66    73    76    84    91    94   101
                                         104   109   114   125   132   136   143
                                         151   159   162   170   180   189   192
                                         199   208   211   218   221   228   238
                                         245   248   251   254   264
 DOLIST                            Ext                   -    56    90   124
                                         150   169   237
 DOROMP                            Ext                   -   257
 EIGHTEEN                          Ext                   -    53
 FIFTEEN                           Ext                   -    42
=RomId                             Abs     800 #00000320 -    18
 SEMI                              Ext                   -    69    97   128
                                         154   173   197   216   235   241   290
                                         292
 SEVENTEEN                         Ext                   -    49
 SIXTEEN                           Ext                   -    46
 SWAP                              Ext                   -   269
 SWAPDROP                          Ext                   -   261
 SetSysFlag                        Ext                   -    47
 case                              Ext                   -   185   204
 x*                                Ext                   -   119
 x/                                Ext                   -   120
 x>V2                              Ext                   -    79    87
 xABS                              Ext                   -   112   117
 xACOS                             Ext                   -   121
 xDOT                              Ext                   -   107
 xNEG                              Ext                   -    80
=xTHGS                             Rel       6 #00000006 -    30
 ~xCAVE                            Ext                   -   258
 ~xTHGS                            Ext                   -    29
Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)   Statistics                         THGS.a         Page    3

Input Parameters

  Source file name is THGS.a

  Listing file name is THGS.l

  Object file name is THGS.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
