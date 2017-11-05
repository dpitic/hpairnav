Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)                                      ASPDFRM.a      Page    1

    1               * File  ASPDFRM.s       1
    2               * RPL
    3               * File  ASPDFRM.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDFRM.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               **********************************************************************
    6               * NAME:            ASPDFRM
    7               * LIBRARY #:       326h = 808d
    8               * AUTHOR:          Dan Pitic
    9               * VERSION:         1.34
   10               * DATE:            19 June 2009
   11               * COMPATIBILITY:   HP50, HP48
   12               * DESCRIPTION:     Input form and algorithm for airspeed calculations.
   13               * INPUT:     VC    Calibrated airspeed
   14               *            PA    Pressure altitude
   15               * IN/OUTPUT: M     Mach number
   16               *            T2    TOTAL air temp. (indicated)
   17               *            T1    STATIC air temp. (true)
   18               * OUTPUT:    V1    True air speed
   19               * TODO:            Save output uV1 in global variable TAS
   20               *
   21               * File  ASPDFRM.s       19
   22               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD50\ASPD50.h
   23
   24               =RomId  EQU     #328
   25               * ROMID set to 328
   26
   27
   28
   29
   30
   31
   32
   33
   34               *|| Resuming file ASPDFRM.s at line 19
   35 00000 000000          CON(6)  =~xASPDFRM
   36 00006         =xASPDFRM
   37               * File  ASPDFRM.s       21
   38 00006 00000           CON(5)  =DOCOL
   39               * File  ASPDFRM.s       22
   40 0000B 00000           CON(5)  =CK0
   41               * No arguments
   42               * File  ASPDFRM.s       23
   43 00010 00000           CON(5)  =BEGIN
   44               * File  ASPDFRM.s       24
   45 00015 00000           CON(5)  =DOROMP
   46 0001A 000000          CON(6)  =~ASPDform
   47               * Display Input Form
   48               * File  ASPDFRM.s       25
   49 00020 00000           CON(5)  =WHILE
   50 00025 00000           CON(5)  =DOCOL
   51               * File  ASPDFRM.s       26
   52 0002A 00000           CON(5)  ='
   53 0002F 00000           CON(5)  =DOIDNT
   54 00034 20              CON(2)  2
   55 00036 6513            NIBASC  \V1\
   56 0003A 00000           CON(5)  =STO
   57               * STO output results from
   58               * File  ASPDFRM.s       27
   59 0003F 00000           CON(5)  ='
   60 00044 00000           CON(5)  =DOIDNT
   61 00049 20              CON(2)  2
   62 0004B 4513            NIBASC  \T1\
   63 0004F 00000           CON(5)  =STO
   64               * Input Form in global vars.
   65               * File  ASPDFRM.s       28
   66 00054 00000           CON(5)  ='
   67 00059 00000           CON(5)  =DOIDNT
   68 0005E 20              CON(2)  2
   69 00060 4523            NIBASC  \T2\
   70 00064 00000           CON(5)  =STO
   71               * File  ASPDFRM.s       29
   72 00069 00000           CON(5)  ='
   73 0006E 00000           CON(5)  =DOIDNT
   74 00073 10              CON(2)  1
   75 00075 D4              NIBASC  \M\
   76 00077 00000           CON(5)  =STO
   77               * File  ASPDFRM.s       30
   78 0007C 00000           CON(5)  ='
   79 00081 00000           CON(5)  =DOIDNT
   80 00086 20              CON(2)  2
   81 00088 0514            NIBASC  \PA\
   82 0008C 00000           CON(5)  =STO
   83               * File  ASPDFRM.s       31
   84 00091 00000           CON(5)  ='
   85 00096 00000           CON(5)  =DOIDNT
   86 0009B 20              CON(2)  2
   87 0009D 6534            NIBASC  \VC\
   88 000A1 00000           CON(5)  =STO
   89               * File  ASPDFRM.s       32
   90 000A6 00000           CON(5)  =DOIDNT
   91 000AB 10              CON(2)  1
   92 000AD D4              NIBASC  \M\
   93 000AF 00000           CON(5)  =NOVAL
   94 000B4 00000           CON(5)  =EQUAL
   95 000B9 00000           CON(5)  =IT
   96 000BE 00000           CON(5)  =DOCOL
   97               * IF Mach no. is NOT supplied
   98               * File  ASPDFRM.s       33
   99 000C3 00000           CON(5)  =DOIDNT
  100 000C8 20              CON(2)  2
  101 000CA 6534            NIBASC  \VC\
  102 000CE 00000           CON(5)  =NOVAL
  103 000D3 00000           CON(5)  =EQUALNOT
  104               * Check both VC and PA are supplied
  105               * File  ASPDFRM.s       34
  106 000D8 00000           CON(5)  =DOIDNT
  107 000DD 20              CON(2)  2
  108 000DF 0514            NIBASC  \PA\
  109 000E3 00000           CON(5)  =NOVAL
  110 000E8 00000           CON(5)  =EQUALNOT
  111 000ED 00000           CON(5)  =AND
  112 000F2 00000           CON(5)  =IT
  113 000F7 00000           CON(5)  =DOCOL
  114               * to calculate Mach no.
  115               * File  ASPDFRM.s       35
  116 000FC 00000           CON(5)  =DOIDNT
  117 00101 20              CON(2)  2
  118 00103 6534            NIBASC  \VC\
  119               * File  ASPDFRM.s       36
  120 00107 00000           CON(5)  =DOIDNT
  121 0010C 20              CON(2)  2
  122 0010E 0514            NIBASC  \PA\
  123               * File  ASPDFRM.s       37
  124 00112 00000           CON(5)  =DOROMP
  125 00117 000000          CON(6)  =~CMACH
  126 0011D 00000           CON(5)  =DROP
  127               * Calc. Mach number
  128               * File  ASPDFRM.s       38
  129 00122 00000           CON(5)  =SEMI
  130               * File  ASPDFRM.s       39
  131 00127 00000           CON(5)  =SEMI
  132               * MACH no IS available
  133               * File  ASPDFRM.s       40
  134 0012C 00000           CON(5)  =DOIDNT
  135 00131 20              CON(2)  2
  136 00133 4523            NIBASC  \T2\
  137 00137 00000           CON(5)  =NOVAL
  138 0013C 00000           CON(5)  =EQUALNOT
  139 00141 00000           CON(5)  =case
  140 00146 00000           CON(5)  =DOCOL
  141               * IF TOTAL air temp. supplied
  142               * File  ASPDFRM.s       41
  143 0014B 00000           CON(5)  =DOIDNT
  144 00150 10              CON(2)  1
  145 00152 D4              NIBASC  \M\
  146 00154 00000           CON(5)  =NOVAL
  147 00159 00000           CON(5)  =EQUALNOT
  148 0015E 00000           CON(5)  =ITE
  149 00163 00000           CON(5)  =DOCOL
  150               * Check Mach no. IS available
  151               * File  ASPDFRM.s       42
  152 00168 00000           CON(5)  =DOIDNT
  153 0016D 10              CON(2)  1
  154 0016F D4              NIBASC  \M\
  155               * File  ASPDFRM.s       43
  156 00171 00000           CON(5)  =DOIDNT
  157 00176 20              CON(2)  2
  158 00178 4523            NIBASC  \T2\
  159               * File  ASPDFRM.s       44
  160 0017C 00000           CON(5)  =DOROMP
  161 00181 000000          CON(6)  =~CSAT
  162               * Calc. SAT
  163               * File  ASPDFRM.s       45
  164 00187 00000           CON(5)  ='
  165 0018C 00000           CON(5)  =DOIDNT
  166 00191 20              CON(2)  2
  167 00193 4513            NIBASC  \T1\
  168 00197 00000           CON(5)  =STO
  169               * File  ASPDFRM.s       46
  170 0019C 00000           CON(5)  =DOIDNT
  171 001A1 10              CON(2)  1
  172 001A3 D4              NIBASC  \M\
  173               * File  ASPDFRM.s       47
  174 001A5 00000           CON(5)  =DOIDNT
  175 001AA 20              CON(2)  2
  176 001AC 4513            NIBASC  \T1\
  177               * File  ASPDFRM.s       48
  178 001B0 00000           CON(5)  =DOROMP
  179 001B5 000000          CON(6)  =~TASMS
  180               * Calc. TAS
  181               * File  ASPDFRM.s       49
  182 001BB 00000           CON(5)  ='
  183 001C0 00000           CON(5)  =DOIDNT
  184 001C5 20              CON(2)  2
  185 001C7 6513            NIBASC  \V1\
  186 001CB 00000           CON(5)  =STO
  187               * File  ASPDFRM.s       50
  188 001D0 00000           CON(5)  =SEMI
  189               * File  ASPDFRM.s       51
  190 001D5 00000           CON(5)  =DOCOL
  191               * ELSE
  192               * File  ASPDFRM.s       52
  193 001DA 00000           CON(5)  =NOVAL
  194               * Reset V1
  195               * File  ASPDFRM.s       53
  196 001DF 00000           CON(5)  ='
  197 001E4 00000           CON(5)  =DOIDNT
  198 001E9 20              CON(2)  2
  199 001EB 6513            NIBASC  \V1\
  200 001EF 00000           CON(5)  =STO
  201               * File  ASPDFRM.s       54
  202 001F4 00000           CON(5)  =SEMI
  203               * File  ASPDFRM.s       55
  204 001F9 00000           CON(5)  =SEMI
  205               * File  ASPDFRM.s       56
  206 001FE 00000           CON(5)  =DOIDNT
  207 00203 20              CON(2)  2
  208 00205 4513            NIBASC  \T1\
  209 00209 00000           CON(5)  =NOVAL
  210 0020E 00000           CON(5)  =EQUALNOT
  211 00213 00000           CON(5)  =case
  212 00218 00000           CON(5)  =DOCOL
  213               * IF STATIC air temp. supplied
  214               * File  ASPDFRM.s       57
  215 0021D 00000           CON(5)  =DOIDNT
  216 00222 10              CON(2)  1
  217 00224 D4              NIBASC  \M\
  218 00226 00000           CON(5)  =NOVAL
  219 0022B 00000           CON(5)  =EQUALNOT
  220 00230 00000           CON(5)  =ITE
  221 00235 00000           CON(5)  =DOCOL
  222               * Check Mach no. IS available
  223               * File  ASPDFRM.s       58
  224 0023A 00000           CON(5)  =DOIDNT
  225 0023F 10              CON(2)  1
  226 00241 D4              NIBASC  \M\
  227               * File  ASPDFRM.s       59
  228 00243 00000           CON(5)  =DOIDNT
  229 00248 20              CON(2)  2
  230 0024A 4513            NIBASC  \T1\
  231               * File  ASPDFRM.s       60
  232 0024E 00000           CON(5)  =DOROMP
  233 00253 000000          CON(6)  =~CTAT
  234               * Calc. TAT
  235               * File  ASPDFRM.s       61
  236 00259 00000           CON(5)  ='
  237 0025E 00000           CON(5)  =DOIDNT
  238 00263 20              CON(2)  2
  239 00265 4523            NIBASC  \T2\
  240 00269 00000           CON(5)  =STO
  241               * File  ASPDFRM.s       62
  242 0026E 00000           CON(5)  =DOIDNT
  243 00273 10              CON(2)  1
  244 00275 D4              NIBASC  \M\
  245               * File  ASPDFRM.s       63
  246 00277 00000           CON(5)  =DOIDNT
  247 0027C 20              CON(2)  2
  248 0027E 4513            NIBASC  \T1\
  249               * File  ASPDFRM.s       64
  250 00282 00000           CON(5)  =DOROMP
  251 00287 000000          CON(6)  =~TASMS
  252               * Calc. TAS
  253               * File  ASPDFRM.s       65
  254 0028D 00000           CON(5)  ='
  255 00292 00000           CON(5)  =DOIDNT
  256 00297 20              CON(2)  2
  257 00299 6513            NIBASC  \V1\
  258 0029D 00000           CON(5)  =STO
  259               * File  ASPDFRM.s       66
  260 002A2 00000           CON(5)  =SEMI
  261               * File  ASPDFRM.s       67
  262 002A7 00000           CON(5)  =DOCOL
  263               * ELSE
  264               * File  ASPDFRM.s       68
  265 002AC 00000           CON(5)  =NOVAL
  266               * Reset V1
  267               * File  ASPDFRM.s       69
  268 002B1 00000           CON(5)  ='
  269 002B6 00000           CON(5)  =DOIDNT
  270 002BB 20              CON(2)  2
  271 002BD 6513            NIBASC  \V1\
  272 002C1 00000           CON(5)  =STO
  273               * File  ASPDFRM.s       70
  274 002C6 00000           CON(5)  =SEMI
  275               * File  ASPDFRM.s       71
  276 002CB 00000           CON(5)  =SEMI
  277               * File  ASPDFRM.s       72
  278 002D0 00000           CON(5)  =SEMI
  279 002D5 00000           CON(5)  =REPEAT
  280               * File  ASPDFRM.s       73
  281 002DA 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Symbol Table                       ASPDFRM.a      Page    2

 '                                 Ext                   -    52    59    66
                                          72    78    84   164   182   196   236
                                         254   268
 AND                               Ext                   -   111
 BEGIN                             Ext                   -    43
 CK0                               Ext                   -    40
 DOCOL                             Ext                   -    38    50    96
                                         113   140   149   190   212   221   262
 DOIDNT                            Ext                   -    53    60    67
                                          73    79    85    90    99   106   116
                                         120   134   143   152   156   165   170
                                         174   183   197   206   215   224   228
                                         237   242   246   255   269
 DOROMP                            Ext                   -    45   124   160
                                         178   232   250
 DROP                              Ext                   -   126
 EQUAL                             Ext                   -    94
 EQUALNOT                          Ext                   -   103   110   138
                                         147   210   219
 IT                                Ext                   -    95   112
 ITE                               Ext                   -   148   220
 NOVAL                             Ext                   -    93   102   109
                                         137   146   193   209   218   265
 REPEAT                            Ext                   -   279
=RomId                             Abs     808 #00000328 -    24
 SEMI                              Ext                   -   129   131   188
                                         202   204   260   274   276   278   281
 STO                               Ext                   -    56    63    70
                                          76    82    88   168   186   200   240
                                         258   272
 WHILE                             Ext                   -    49
 case                              Ext                   -   139   211
=xASPDFRM                          Rel       6 #00000006 -    36
 ~ASPDform                         Ext                   -    46
 ~CMACH                            Ext                   -   125
 ~CSAT                             Ext                   -   161
 ~CTAT                             Ext                   -   233
 ~TASMS                            Ext                   -   179   251
 ~xASPDFRM                         Ext                   -    35
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Statistics                         ASPDFRM.a      Page    3

Input Parameters

  Source file name is ASPDFRM.a

  Listing file name is ASPDFRM.l

  Object file name is ASPDFRM.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
