Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)                                      ASPDMNU.a      Page    1

    1               * File  ASPDMNU.s       1
    2               * RPL
    3               * File  ASPDMNU.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDMNU.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               *********************************************************************
    6               * NAME:            ASPDMNU
    7               * LIBRARY #:       326h = 808d
    8               * AUTHOR:          Dan Pitic
    9               * VERSION:         1.32
   10               * DATE:            23 April 2009
   11               * DESCRIPTION:     Generates the CST menu system to solve for true
   12               *                  airspeed or start the GUI
   13               *
   14               * File  ASPDMNU.s       12
   15               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPD.h
   16
   17               =RomId  EQU     #328
   18               * ROMID set to 328
   19
   20
   21
   22
   23
   24
   25
   26
   27               *|| Resuming file ASPDMNU.s at line 12
   28 00000 000000          CON(6)  =~xASPDMNU
   29 00006         =xASPDMNU
   30               * File  ASPDMNU.s       14
   31 00006 00000           CON(5)  =DOCOL
   32               * File  ASPDMNU.s       15
   33 0000B 00000           CON(5)  =DOLIST
   34               * File  ASPDMNU.s       16
   35 00010 00000           CON(5)  =DOLIST
   36 00015 00000           CON(5)  =DOCSTR
   37 0001A B0000           CON(5)  11
   38 0001F 341435          NIBASC  \CAS\
   39 00025 00000           CON(5)  =DOCOL
   40               * Input calibrated airspeed
   41               * File  ASPDMNU.s       17
   42 0002A 00000           CON(5)  =CK1&Dispatch
   43               * Must have 1 argument
   44               * File  ASPDMNU.s       18
   45 0002F 00000           CON(5)  =BINT1
   46 00034 00000           CON(5)  =DOCOL
   47               * Real number
   48               * File  ASPDMNU.s       19
   49 00039 00000           CON(5)  =DOCSTR
   50 0003E D0000           CON(5)  13
   51 00043 B6E6F64         NIBASC  \knot\
            7
   52 0004B 00000           CON(5)  =umEND
   53 00050 00000           CON(5)  =BINT3
   54 00055 00000           CON(5)  =EXTN
   55               * Add default knot units
   56               * File  ASPDMNU.s       20
   57 0005A 00000           CON(5)  =DUP
   58               * File  ASPDMNU.s       21
   59 0005F 00000           CON(5)  ='
   60 00064 00000           CON(5)  =DOIDNT
   61 00069 20              CON(2)  2
   62 0006B 6534            NIBASC  \VC\
   63 0006F 00000           CON(5)  =STO
   64               * STO in GLOBAL var VC
   65               * File  ASPDMNU.s       22
   66 00074 00000           CON(5)  =DOCSTR
   67 00079 B0000           CON(5)  11
   68 0007E 341435          NIBASC  \CAS\
   69 00084 00000           CON(5)  =>TAG
   70               * TAG
   71               * File  ASPDMNU.s       23
   72 00089 00000           CON(5)  =SEMI
   73               * File  ASPDMNU.s       24
   74 0008E 00000           CON(5)  =SEMI
   75 00093 00000           CON(5)  =SEMI
   76               * File  ASPDMNU.s       25
   77 00098 00000           CON(5)  =DOLIST
   78 0009D 00000           CON(5)  =DOCSTR
   79 000A2 D0000           CON(5)  13
   80 000A7 0514C44         NIBASC  \PALT\
            5
   81 000AF 00000           CON(5)  =DOCOL
   82               * Input pressure altitude
   83               * File  ASPDMNU.s       26
   84 000B4 00000           CON(5)  =CK1&Dispatch
   85               * Must have 1 argument
   86               * File  ASPDMNU.s       27
   87 000B9 00000           CON(5)  =BINT1
   88 000BE 00000           CON(5)  =DOCOL
   89               * Real number
   90               * File  ASPDMNU.s       28
   91 000C3 00000           CON(5)  =DOCSTR
   92 000C8 90000           CON(5)  9
   93 000CD 6647            NIBASC  \ft\
   94 000D1 00000           CON(5)  =umEND
   95 000D6 00000           CON(5)  =BINT3
   96 000DB 00000           CON(5)  =EXTN
   97               * Add default feet units
   98               * File  ASPDMNU.s       29
   99 000E0 00000           CON(5)  =DUP
  100               * File  ASPDMNU.s       30
  101 000E5 00000           CON(5)  ='
  102 000EA 00000           CON(5)  =DOIDNT
  103 000EF 20              CON(2)  2
  104 000F1 0514            NIBASC  \PA\
  105 000F5 00000           CON(5)  =STO
  106               * STO in GLOBAL var PA
  107               * File  ASPDMNU.s       31
  108 000FA 00000           CON(5)  =DOCSTR
  109 000FF D0000           CON(5)  13
  110 00104 0514C44         NIBASC  \PALT\
            5
  111 0010C 00000           CON(5)  =>TAG
  112               * TAG
  113               * File  ASPDMNU.s       32
  114 00111 00000           CON(5)  =DOIDNT
  115 00116 20              CON(2)  2
  116 00118 6534            NIBASC  \VC\
  117 0011C 00000           CON(5)  =DOIDNT
  118 00121 20              CON(2)  2
  119 00123 0514            NIBASC  \PA\
  120               * File  ASPDMNU.s       33
  121 00127 00000           CON(5)  =DOROMP
  122 0012C 000000          CON(6)  =~CMACH
  123               * Calc. Mach number and
  124               * File  ASPDMNU.s       34
  125 00132 00000           CON(5)  =DOCSTR
  126 00137 D0000           CON(5)  13
  127 0013C D414348         NIBASC  \MACH\
            4
  128 00144 00000           CON(5)  =>TAG
  129               * TAG
  130               * File  ASPDMNU.s       35
  131 00149 00000           CON(5)  =SEMI
  132               * File  ASPDMNU.s       36
  133 0014E 00000           CON(5)  =SEMI
  134 00153 00000           CON(5)  =SEMI
  135               * File  ASPDMNU.s       37
  136 00158 00000           CON(5)  =DOLIST
  137 0015D 00000           CON(5)  =DOCSTR
  138 00162 D0000           CON(5)  13
  139 00167 D414348         NIBASC  \MACH\
            4
  140 0016F 00000           CON(5)  =DOCOL
  141               * Input Mach number
  142               * File  ASPDMNU.s       38
  143 00174 00000           CON(5)  =CK1&Dispatch
  144               * Must have 1 argument
  145               * File  ASPDMNU.s       39
  146 00179 00000           CON(5)  =BINT1
  147 0017E 00000           CON(5)  =DOCOL
  148               * Real number
  149               * File  ASPDMNU.s       40
  150 00183 00000           CON(5)  =DUP
  151               * File  ASPDMNU.s       41
  152 00188 00000           CON(5)  ='
  153 0018D 00000           CON(5)  =DOIDNT
  154 00192 10              CON(2)  1
  155 00194 D4              NIBASC  \M\
  156 00196 00000           CON(5)  =STO
  157               * STO in GLOBAL var M
  158               * File  ASPDMNU.s       42
  159 0019B 00000           CON(5)  =DOCSTR
  160 001A0 D0000           CON(5)  13
  161 001A5 D414348         NIBASC  \MACH\
            4
  162 001AD 00000           CON(5)  =>TAG
  163               * TAG
  164               * File  ASPDMNU.s       43
  165 001B2 00000           CON(5)  =DOLIST
  166 001B7 00000           CON(5)  =DOLIST
  167 001BC 00000           CON(5)  =SEMI
  168 001C1 00000           CON(5)  =DOLIST
  169 001C6 00000           CON(5)  =SEMI
  170 001CB 00000           CON(5)  =DOIDNT
  171 001D0 10              CON(2)  1
  172 001D2 D4              NIBASC  \M\
  173               * File  ASPDMNU.s       44
  174 001D4 00000           CON(5)  =DOLIST
  175 001D9 00000           CON(5)  =DOCSTR
  176 001DE B0000           CON(5)  11
  177 001E3 451445          NIBASC  \TAT\
  178 001E9 00000           CON(5)  =DOCOL
  179               * File  ASPDMNU.s       45
  180 001EE 00000           CON(5)  =CK1&Dispatch
  181               * File  ASPDMNU.s       46
  182 001F3 00000           CON(5)  =BINT1
  183 001F8 00000           CON(5)  =DOCOL
  184               * File  ASPDMNU.s       47
  185 001FD 00000           CON(5)  =DOCSTR
  186 00202 90000           CON(5)  9
  187 00207 0B              CON(2)  #B0
  188 00209 34              NIBASC  \C\
  189 0020B 00000           CON(5)  =umEND
  190               * File  ASPDMNU.s       48
  191 00210 00000           CON(5)  =BINT3
  192 00215 00000           CON(5)  =EXTN
  193               * File  ASPDMNU.s       49
  194 0021A 00000           CON(5)  =DUP
  195               * File  ASPDMNU.s       50
  196 0021F 00000           CON(5)  ='
  197 00224 00000           CON(5)  =DOIDNT
  198 00229 20              CON(2)  2
  199 0022B 4523            NIBASC  \T2\
  200 0022F 00000           CON(5)  =STO
  201               * File  ASPDMNU.s       51
  202 00234 00000           CON(5)  =DOCSTR
  203 00239 B0000           CON(5)  11
  204 0023E 451445          NIBASC  \TAT\
  205 00244 00000           CON(5)  =>TAG
  206               * File  ASPDMNU.s       52
  207 00249 00000           CON(5)  =DOLIST
  208               * File  ASPDMNU.s       53
  209 0024E 00000           CON(5)  =DOLIST
  210 00253 00000           CON(5)  =DOCSTR
  211 00258 B0000           CON(5)  11
  212 0025D E45475          NIBASC  \NEW\
  213 00263 00000           CON(5)  =DOCOL
  214 00268 00000           CON(5)  =DOROMP
  215 0026D 000000          CON(6)  =~xASPDMNU
  216 00273 00000           CON(5)  =SEMI
  217 00278 00000           CON(5)  =SEMI
  218               * File  ASPDMNU.s       54
  219 0027D 00000           CON(5)  =DOLIST
  220 00282 00000           CON(5)  =SEMI
  221 00287 00000           CON(5)  =DOIDNT
  222 0028C 10              CON(2)  1
  223 0028E D4              NIBASC  \M\
  224 00290 00000           CON(5)  =DOIDNT
  225 00295 20              CON(2)  2
  226 00297 4523            NIBASC  \T2\
  227 0029B 00000           CON(5)  =DOIDNT
  228 002A0 20              CON(2)  2
  229 002A2 4513            NIBASC  \T1\
  230 002A6 00000           CON(5)  =DOIDNT
  231 002AB 20              CON(2)  2
  232 002AD 6513            NIBASC  \V1\
  233               * File  ASPDMNU.s       55
  234 002B1 00000           CON(5)  =SEMI
  235 002B6 00000           CON(5)  =xMENU
  236               * File  ASPDMNU.s       56
  237 002BB 00000           CON(5)  =SEMI
  238               * File  ASPDMNU.s       57
  239 002C0 00000           CON(5)  =SEMI
  240 002C5 00000           CON(5)  =SEMI
  241               * File  ASPDMNU.s       58
  242 002CA 00000           CON(5)  =DOLIST
  243 002CF 00000           CON(5)  =DOCSTR
  244 002D4 B0000           CON(5)  11
  245 002D9 351445          NIBASC  \SAT\
  246 002DF 00000           CON(5)  =DOCOL
  247               * File  ASPDMNU.s       59
  248 002E4 00000           CON(5)  =CK1&Dispatch
  249               * File  ASPDMNU.s       60
  250 002E9 00000           CON(5)  =BINT1
  251 002EE 00000           CON(5)  =DOCOL
  252               * File  ASPDMNU.s       61
  253 002F3 00000           CON(5)  =DOCSTR
  254 002F8 90000           CON(5)  9
  255 002FD 0B              CON(2)  #B0
  256 002FF 34              NIBASC  \C\
  257 00301 00000           CON(5)  =umEND
  258               * File  ASPDMNU.s       62
  259 00306 00000           CON(5)  =BINT3
  260 0030B 00000           CON(5)  =EXTN
  261               * File  ASPDMNU.s       63
  262 00310 00000           CON(5)  =DUP
  263               * File  ASPDMNU.s       64
  264 00315 00000           CON(5)  ='
  265 0031A 00000           CON(5)  =DOIDNT
  266 0031F 20              CON(2)  2
  267 00321 4513            NIBASC  \T1\
  268 00325 00000           CON(5)  =STO
  269               * File  ASPDMNU.s       65
  270 0032A 00000           CON(5)  =DOCSTR
  271 0032F B0000           CON(5)  11
  272 00334 351445          NIBASC  \SAT\
  273 0033A 00000           CON(5)  =>TAG
  274               * File  ASPDMNU.s       66
  275 0033F 00000           CON(5)  =DOLIST
  276               * File  ASPDMNU.s       67
  277 00344 00000           CON(5)  =DOLIST
  278 00349 00000           CON(5)  =DOCSTR
  279 0034E B0000           CON(5)  11
  280 00353 E45475          NIBASC  \NEW\
  281 00359 00000           CON(5)  =DOCOL
  282 0035E 00000           CON(5)  =DOROMP
  283 00363 000000          CON(6)  =~xASPDMNU
  284 00369 00000           CON(5)  =SEMI
  285 0036E 00000           CON(5)  =SEMI
  286               * File  ASPDMNU.s       68
  287 00373 00000           CON(5)  =DOLIST
  288 00378 00000           CON(5)  =SEMI
  289 0037D 00000           CON(5)  =DOIDNT
  290 00382 10              CON(2)  1
  291 00384 D4              NIBASC  \M\
  292 00386 00000           CON(5)  =DOIDNT
  293 0038B 20              CON(2)  2
  294 0038D 4523            NIBASC  \T2\
  295 00391 00000           CON(5)  =DOIDNT
  296 00396 20              CON(2)  2
  297 00398 4513            NIBASC  \T1\
  298 0039C 00000           CON(5)  =DOIDNT
  299 003A1 20              CON(2)  2
  300 003A3 6513            NIBASC  \V1\
  301               * File  ASPDMNU.s       69
  302 003A7 00000           CON(5)  =SEMI
  303 003AC 00000           CON(5)  =xMENU
  304               * File  ASPDMNU.s       70
  305 003B1 00000           CON(5)  =SEMI
  306               * File  ASPDMNU.s       71
  307 003B6 00000           CON(5)  =SEMI
  308 003BB 00000           CON(5)  =SEMI
  309               * File  ASPDMNU.s       72
  310 003C0 00000           CON(5)  =DOLIST
  311 003C5 00000           CON(5)  =DOCSTR
  312 003CA B0000           CON(5)  11
  313 003CF E45475          NIBASC  \NEW\
  314 003D5 00000           CON(5)  =DOCOL
  315 003DA 00000           CON(5)  =DOROMP
  316 003DF 000000          CON(6)  =~xASPDMNU
  317 003E5 00000           CON(5)  =SEMI
  318 003EA 00000           CON(5)  =SEMI
  319               * File  ASPDMNU.s       73
  320 003EF 00000           CON(5)  =SEMI
  321 003F4 00000           CON(5)  =xMENU
  322               * File  ASPDMNU.s       74
  323 003F9 00000           CON(5)  =SEMI
  324               * File  ASPDMNU.s       75
  325 003FE 00000           CON(5)  =SEMI
  326 00403 00000           CON(5)  =SEMI
  327               * File  ASPDMNU.s       76
  328 00408 00000           CON(5)  =DOLIST
  329 0040D 00000           CON(5)  =SEMI
  330               * File  ASPDMNU.s       77
  331 00412 00000           CON(5)  =DOLIST
  332 00417 00000           CON(5)  =DOCSTR
  333 0041C B0000           CON(5)  11
  334 00421 745594          NIBASC  \GUI\
  335 00427 00000           CON(5)  =DOCOL
  336 0042C 00000           CON(5)  =DOROMP
  337 00431 000000          CON(6)  =~xASPDFRM
  338 00437 00000           CON(5)  =SEMI
  339 0043C 00000           CON(5)  =SEMI
  340               * Run GUI
  341               * File  ASPDMNU.s       78
  342 00441 00000           CON(5)  =DOLIST
  343 00446 00000           CON(5)  =DOCSTR
  344 0044B F0000           CON(5)  15
  345 00450 14E4355         NIBASC  \ANSER\
            425
  346 0045A 00000           CON(5)  =DOCOL
  347               * Display solutions CST menu
  348               * File  ASPDMNU.s       79
  349 0045F 00000           CON(5)  =DOLIST
  350 00464 00000           CON(5)  =DOIDNT
  351 00469 20              CON(2)  2
  352 0046B 6534            NIBASC  \VC\
  353 0046F 00000           CON(5)  =DOIDNT
  354 00474 20              CON(2)  2
  355 00476 0514            NIBASC  \PA\
  356 0047A 00000           CON(5)  =DOIDNT
  357 0047F 10              CON(2)  1
  358 00481 D4              NIBASC  \M\
  359 00483 00000           CON(5)  =DOIDNT
  360 00488 20              CON(2)  2
  361 0048A 4523            NIBASC  \T2\
  362 0048E 00000           CON(5)  =DOIDNT
  363 00493 20              CON(2)  2
  364 00495 6513            NIBASC  \V1\
  365               * File  ASPDMNU.s       80
  366 00499 00000           CON(5)  =DOLIST
  367 0049E 00000           CON(5)  =DOCSTR
  368 004A3 B0000           CON(5)  11
  369 004A8 E45475          NIBASC  \NEW\
  370 004AE 00000           CON(5)  =DOCOL
  371 004B3 00000           CON(5)  =DOROMP
  372 004B8 000000          CON(6)  =~xASPDMNU
  373 004BE 00000           CON(5)  =SEMI
  374 004C3 00000           CON(5)  =SEMI
  375               * File  ASPDMNU.s       81
  376 004C8 00000           CON(5)  =SEMI
  377 004CD 00000           CON(5)  =xMENU
  378               * File  ASPDMNU.s       82
  379 004D2 00000           CON(5)  =SEMI
  380 004D7 00000           CON(5)  =SEMI
  381               * File  ASPDMNU.s       83
  382 004DC 00000           CON(5)  =SEMI
  383               * File  ASPDMNU.s       84
  384 004E1 00000           CON(5)  =xMENU
  385               * File  ASPDMNU.s       85
  386 004E6 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Symbol Table                       ASPDMNU.a      Page    2

 '                                 Ext                   -    59   101   152
                                         196   264
 >TAG                              Ext                   -    69   111   128
                                         162   205   273
 BINT1                             Ext                   -    45    87   146
                                         182   250
 BINT3                             Ext                   -    53    95   191
                                         259
 CK1&Dispatch                      Ext                   -    42    84   143
                                         180   248
 DOCOL                             Ext                   -    31    39    46
                                          81    88   140   147   178   183   213
                                         246   251   281   314   335   346   370
 DOCSTR                            Ext                   -    36    49    66
                                          78    91   108   125   137   159   175
                                         185   202   210   243   253   270   278
                                         311   332   343   367
 DOIDNT                            Ext                   -    60   102   114
                                         117   153   170   197   221   224   227
                                         230   265   289   292   295   298   350
                                         353   356   359   362
 DOLIST                            Ext                   -    33    35    77
                                         136   165   166   168   174   207   209
                                         219   242   275   277   287   310   328
                                         331   342   349   366
 DOROMP                            Ext                   -   121   214   282
                                         315   336   371
 DUP                               Ext                   -    57    99   150
                                         194   262
 EXTN                              Ext                   -    54    96   192
                                         260
=RomId                             Abs     808 #00000328 -    17
 SEMI                              Ext                   -    72    74    75
                                         131   133   134   167   169   216   217
                                         220   234   237   239   240   284   285
                                         288   302   305   307   308   317   318
                                         320   323   325   326   329   338   339
                                         373   374   376   379   380   382   386
 STO                               Ext                   -    63   105   156
                                         200   268
 umEND                             Ext                   -    52    94   189
                                         257
=xASPDMNU                          Rel       6 #00000006 -    29
 xMENU                             Ext                   -   235   303   321
                                         377   384
 ~CMACH                            Ext                   -   122
 ~xASPDFRM                         Ext                   -   337
 ~xASPDMNU                         Ext                   -    28   215   283
                                         316   372
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Statistics                         ASPDMNU.a      Page    3

Input Parameters

  Source file name is ASPDMNU.a

  Listing file name is ASPDMNU.l

  Object file name is ASPDMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
