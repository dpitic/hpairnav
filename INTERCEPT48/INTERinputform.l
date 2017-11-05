Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)                                      INTERinputform Page    1

    1             * File  INTERinputform.s        1
    2             * RPL
    3             * File  INTERinputform.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTERform.s, part of the INTERCEPT50.hpp project, created by <> on 20/06/2009
    5             **********************************************************************
    6             * NAME:          INTERinputform
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.7
    9             * DATE:          20 June 2009
   10             * LIBRARY #:     321h = 801d
   11             * COMPATIBILITY: HP50
   12             *                HP48  ( Comment out IfMain )
   13             * DESCRIPTION:   Generates the INPUT form for the interception problem
   14             *
   15             * File  INTERinputform.s        13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT48\INTERCEPT48.h
   17
   18             =RomId  EQU     #321
   19             * ROMID set to 321
   20
   21
   22
   23
   24
   25
   26             *|| Resuming file INTERinputform.s at line 13
   27             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\GUI.h
   28
   29
   30             * ( Ob Type Not Applicable
   31
   32             * ( Format Not Applicable
   33
   34
   35
   36
   37             * ( decimal 67
   38             * ( decimal 86
   39             * ( decimal 82
   40             * ( decimal 85
   41             * ( decimal 101
   42             * ( decimal 97
   43             * ( decimal 100
   44             * ( decimal 113
   45             * ( decimal 112
   46
   47             * ( field height
   48             * ( check field width
   49             * ( decimal 67
   50             * ( decimal 85
   51             * ( decimal 97
   52
   53             *|| Resuming file INTERinputform.s at line 16
   54 00000       =INTERinputform
   55             * File  INTERinputform.s        19
   56 00000 00000         CON(5)  =DOCOL
   57             * Label definitions
   58             * File  INTERinputform.s        21
   59 00005 00000         CON(5)  =DOCSTR
   60 0000A B0000         CON(5)  11
   61 0000F 7544A         NIBASC  \WD:\
            3
   62 00015 00000         CON(5)  =ONE
   63 0001A 00000         CON(5)  =TEN
   64             * File  INTERinputform.s        22
   65 0001F 00000         CON(5)  =DOCSTR
   66 00024 B0000         CON(5)  11
   67 00029 7535A         NIBASC  \WS:\
            3
   68 0002F 00000         CON(5)  =FOURTHREE
   69 00034 00000         CON(5)  =TEN
   70             * File  INTERinputform.s        23
   71 00039 00000         CON(5)  =DOCSTR
   72 0003E D0000         CON(5)  13
   73 00043 45143         NIBASC  \TAS:\
            5A3
   74 0004B 00000         CON(5)  =ONE
   75 00050 00000         CON(5)  =NINETEEN
   76             * File  INTERinputform.s        24
   77 00055 00000         CON(5)  =DOCSTR
   78 0005A F0000         CON(5)  15
   79 0005F 4425D         NIBASC  \DRM2:\
            423A3
   80 00069 00000         CON(5)  =ONE
   81 0006E 00000         CON(5)  =TWENTYEIGHT
   82             * File  INTERinputform.s        25
   83 00073 00000         CON(5)  =DOCSTR
   84 00078 F0000         CON(5)  15
   85 0007D D425D         NIBASC  \MRM2:\
            423A3
   86 00087 00000         CON(5)  =FOURTHREE
   87 0008C 00000         CON(5)  =TWENTYEIGHT
   88             * File  INTERinputform.s        26
   89 00091 00000         CON(5)  =DOCSTR
   90 00096 D0000         CON(5)  13
   91 0009B 45253         NIBASC  \TRS:\
            5A3
   92 000A3 00000         CON(5)  =ONE
   93 000A8 00000         CON(5)  =THIRTYSEVEN
   94             * File  INTERinputform.s        27
   95 000AD 00000         CON(5)  =DOCSTR
   96 000B2 D0000         CON(5)  13
   97 000B7 74353         NIBASC  \GSS:\
            5A3
   98 000BF 00000         CON(5)  =FOURTHREE
   99 000C4 00000         CON(5)  =THIRTYSEVEN
  100             * File  INTERinputform.s        28
  101
  102             * Field definitions
  103             * File  INTERinputform.s        30
  104             * Field WIND DIRECTION definition
  105             * File  INTERinputform.s        31
  106 000C9 00000         CON(5)  ='DROPFALSE
  107             * Message handler
  108             * File  INTERinputform.s        32
  109 000CE 00000         CON(5)  =SIXTEEN
  110 000D3 00000         CON(5)  =EIGHT
  111 000D8 00000         CON(5)  =FORTYTHREE
  112 000DD 00000         CON(5)  =NINE
  113             * Position & size
  114             * File  INTERinputform.s        33
  115 000E2 00000         CON(5)  =ONE
  116             * Field type TEXT
  117             * File  INTERinputform.s        34
  118 000E7 00000         CON(5)  =DOLIST
  119 000EC 00000         CON(5)  =ZERO
  120 000F1 00000         CON(5)  =SEMI
  121             * Allowed types REAL
  122             * File  INTERinputform.s        35
  123 000F6 00000         CON(5)  =TWO
  124             * Decompile
  125             * File  INTERinputform.s        36
  126 000FB 00000         CON(5)  =DOCSTR
  127 00100 F2000         CON(5)  47
  128 00105 7594E         NIBASC  \WIND DIRECTION (FROM\
            44402
            44942554344594F4E402826425F4D4

  129 0012D 92            NIBASC  \)\
  130             * Help string
  131             * File  INTERinputform.s        37
  132 0012F 00000         CON(5)  =MINUSONE
  133             * Choose data N/A
  134             * File  INTERinputform.s        38
  135 00134 00000         CON(5)  =MINUSONE
  136             * Choose decompile N/A
  137             * File  INTERinputform.s        39
  138 00139 00000         CON(5)  =MINUSONE
  139             * Reset value
  140             * File  INTERinputform.s        40
  141 0013E 00000         CON(5)  =DOIDNT
  142 00143 20            CON(2)  2
  143 00145 7544          NIBASC  \WD\
  144             * Initial value
  145             * File  INTERinputform.s        41
  146
  147             * File  INTERinputform.s        42
  148             * Field WIND SPEED definition
  149             * File  INTERinputform.s        43
  150 00149 00000         CON(5)  ='DROPFALSE
  151             * Message handler
  152             * File  INTERinputform.s        44
  153 0014E 00000         CON(5)  =LISTCMP
  154 00153 00000         CON(5)  =EIGHT
  155 00158 00000         CON(5)  =FORTYTHREE
  156 0015D 00000         CON(5)  =NINE
  157             * Position & size
  158             * File  INTERinputform.s        45
  159 00162 00000         CON(5)  =ONE
  160             * Field type TEXT
  161             * File  INTERinputform.s        46
  162 00167 00000         CON(5)  =DOLIST
  163 0016C 00000         CON(5)  =ZERO
  164 00171 00000         CON(5)  =SEMI
  165             * Allowed types REAL
  166             * File  INTERinputform.s        47
  167 00176 00000         CON(5)  =TWO
  168             * Decompile
  169             * File  INTERinputform.s        48
  170 0017B 00000         CON(5)  =DOCSTR
  171 00180 91000         CON(5)  25
  172 00185 7594E         NIBASC  \WIND SPEED\
            44402
            3505545444

  173             * Help string
  174             * File  INTERinputform.s        49
  175 00199 00000         CON(5)  =MINUSONE
  176             * Choose data N/A
  177             * File  INTERinputform.s        50
  178 0019E 00000         CON(5)  =MINUSONE
  179             * Choose decompile N/A
  180             * File  INTERinputform.s        51
  181 001A3 00000         CON(5)  =MINUSONE
  182             * Reset value
  183             * File  INTERinputform.s        52
  184 001A8 00000         CON(5)  =DOIDNT
  185 001AD 20            CON(2)  2
  186 001AF 7535          NIBASC  \WS\
  187             * Initial value
  188             * File  INTERinputform.s        53
  189
  190             * File  INTERinputform.s        54
  191             * Field TAS definition
  192             * File  INTERinputform.s        55
  193 001B3 00000         CON(5)  ='DROPFALSE
  194             * Message handler
  195             * File  INTERinputform.s        56
  196 001B8 00000         CON(5)  =SIXTEEN
  197 001BD 00000         CON(5)  =SEVENTEEN
  198 001C2 00000         CON(5)  =FORTYTHREE
  199 001C7 00000         CON(5)  =NINE
  200             * Position & size
  201             * File  INTERinputform.s        57
  202 001CC 00000         CON(5)  =ONE
  203             * Field type TEXT
  204             * File  INTERinputform.s        58
  205 001D1 00000         CON(5)  =DOLIST
  206 001D6 00000         CON(5)  =ZERO
  207 001DB 00000         CON(5)  =SEMI
  208             * Allowed types REAL
  209             * File  INTERinputform.s        59
  210 001E0 00000         CON(5)  =TWO
  211             * Decompile
  212             * File  INTERinputform.s        60
  213 001E5 00000         CON(5)  =DOCSTR
  214 001EA F3000         CON(5)  63
  215 001EF 45255         NIBASC  \TRUE AIR SPEED OF IN\
            55402
            14942502350554544402F4640294E4

  216 00217 45542         NIBASC  \TERCEPTOR\
            53454
            0545F425

  217             * Help string
  218             * File  INTERinputform.s        61
  219 00229 00000         CON(5)  =MINUSONE
  220             * Choose data N/A
  221             * File  INTERinputform.s        62
  222 0022E 00000         CON(5)  =MINUSONE
  223             * Choose decompile N/A
  224             * File  INTERinputform.s        63
  225 00233 00000         CON(5)  =MINUSONE
  226             * Reset value
  227             * File  INTERinputform.s        64
  228 00238 00000         CON(5)  =DOIDNT
  229 0023D 30            CON(2)  3
  230 0023F 45143         NIBASC  \TAS\
            5
  231             * Initial value
  232             * File  INTERinputform.s        65
  233
  234             * File  INTERinputform.s        66
  235             * Field DRM2 definition
  236             * File  INTERinputform.s        67
  237 00245 00000         CON(5)  ='DROPFALSE
  238             * Message handler
  239             * File  INTERinputform.s        68
  240 0024A 00000         CON(5)  =TWENTYTWO
  241 0024F 00000         CON(5)  =TWENTYSIX
  242 00254 00000         CON(5)  =THIRTYSEVEN
  243 00259 00000         CON(5)  =NINE
  244             * Position & size
  245             * File  INTERinputform.s        69
  246 0025E 00000         CON(5)  =ONE
  247             * Field type TEXT
  248             * File  INTERinputform.s        70
  249 00263 00000         CON(5)  =DOLIST
  250 00268 00000         CON(5)  =ZERO
  251 0026D 00000         CON(5)  =SEMI
  252             * Allowed types REAL
  253             * File  INTERinputform.s        71
  254 00272 00000         CON(5)  =TWO
  255             * Decompile
  256             * File  INTERinputform.s        72
  257 00277 00000         CON(5)  =DOCSTR
  258 0027C 72000         CON(5)  39
  259 00281 24541         NIBASC  \BEARING TO TARGET\
            42594
            E4740245F402451425745445

  260             * Help string
  261             * File  INTERinputform.s        73
  262 002A3 00000         CON(5)  =MINUSONE
  263             * Choose data N/A
  264             * File  INTERinputform.s        74
  265 002A8 00000         CON(5)  =MINUSONE
  266             * Choose decompile N/A
  267             * File  INTERinputform.s        75
  268 002AD 00000         CON(5)  =MINUSONE
  269             * Reset value
  270             * File  INTERinputform.s        76
  271 002B2 00000         CON(5)  =DOIDNT
  272 002B7 40            CON(2)  4
  273 002B9 4425D         NIBASC  \DRM2\
            423
  274             * Initial value
  275             * File  INTERinputform.s        77
  276
  277             * File  INTERinputform.s        78
  278             * Field MRM2 definition
  279             * File  INTERinputform.s        79
  280 002C1 00000         CON(5)  ='DROPFALSE
  281             * Message handler
  282             * File  INTERinputform.s        80
  283 002C6 00000         CON(5)  =BINT_91d
  284 002CB 00000         CON(5)  =TWENTYSIX
  285 002D0 00000         CON(5)  =THIRTYSEVEN
  286 002D5 00000         CON(5)  =NINE
  287             * Position & size
  288             * File  INTERinputform.s        81
  289 002DA 00000         CON(5)  =ONE
  290             * Field type TEXT
  291             * File  INTERinputform.s        82
  292 002DF 00000         CON(5)  =DOLIST
  293 002E4 00000         CON(5)  =ZERO
  294 002E9 00000         CON(5)  =SEMI
  295             * Allowed types REAL
  296             * File  INTERinputform.s        83
  297 002EE 00000         CON(5)  =TWO
  298             * Decompile
  299             * File  INTERinputform.s        84
  300 002F3 00000         CON(5)  =DOCSTR
  301 002F8 92000         CON(5)  41
  302 002FD 44943         NIBASC  \DISTANCE TO TARGET\
            54514
            E434540245F402451425745445

  303             * Help string
  304             * File  INTERinputform.s        85
  305 00321 00000         CON(5)  =MINUSONE
  306             * Choose data N/A
  307             * File  INTERinputform.s        86
  308 00326 00000         CON(5)  =MINUSONE
  309             * Choose decompile N/A
  310             * File  INTERinputform.s        87
  311 0032B 00000         CON(5)  =MINUSONE
  312             * Reset value
  313             * File  INTERinputform.s        88
  314 00330 00000         CON(5)  =DOIDNT
  315 00335 40            CON(2)  4
  316 00337 D425D         NIBASC  \MRM2\
            423
  317             * Initial value
  318             * File  INTERinputform.s        89
  319
  320             * File  INTERinputform.s        90
  321             * Field TRS definition
  322             * File  INTERinputform.s        91
  323 0033F 00000         CON(5)  ='DROPFALSE
  324             * Message handler
  325             * File  INTERinputform.s        92
  326 00344 00000         CON(5)  =SIXTEEN
  327 00349 00000         CON(5)  =THIRTYFIVE
  328 0034E 00000         CON(5)  =FORTYTHREE
  329 00353 00000         CON(5)  =NINE
  330             * Position & size
  331             * File  INTERinputform.s        93
  332 00358 00000         CON(5)  =ONE
  333             * Field type TEXT
  334             * File  INTERinputform.s        94
  335 0035D 00000         CON(5)  =DOLIST
  336 00362 00000         CON(5)  =ZERO
  337 00367 00000         CON(5)  =SEMI
  338             * Allowed types REAL
  339             * File  INTERinputform.s        95
  340 0036C 00000         CON(5)  =TWO
  341             * Decompile
  342             * File  INTERinputform.s        96
  343 00371 00000         CON(5)  =DOCSTR
  344 00376 32000         CON(5)  35
  345 0037B 45251         NIBASC  \TRACK OF TARGET\
            434B4
            02F46402451425745445

  346             * Help string
  347             * File  INTERinputform.s        97
  348 00399 00000         CON(5)  =MINUSONE
  349             * Choose data N/A
  350             * File  INTERinputform.s        98
  351 0039E 00000         CON(5)  =MINUSONE
  352             * Choose decompile N/A
  353             * File  INTERinputform.s        99
  354 003A3 00000         CON(5)  =MINUSONE
  355             * Reset value
  356             * File  INTERinputform.s        100
  357 003A8 00000         CON(5)  =DOIDNT
  358 003AD 30            CON(2)  3
  359 003AF 45253         NIBASC  \TRS\
            5
  360             * Initial value
  361             * File  INTERinputform.s        101
  362
  363             * File  INTERinputform.s        102
  364             * Field GSS definition
  365             * File  INTERinputform.s        103
  366 003B5 00000         CON(5)  ='DROPFALSE
  367             * Message handler
  368             * File  INTERinputform.s        104
  369 003BA 00000         CON(5)  =2LIST
  370 003BF 00000         CON(5)  =THIRTYFIVE
  371 003C4 00000         CON(5)  =FORTYTHREE
  372 003C9 00000         CON(5)  =NINE
  373             * Position & size
  374             * File  INTERinputform.s        105
  375 003CE 00000         CON(5)  =ONE
  376             * Field type TEXT
  377             * File  INTERinputform.s        106
  378 003D3 00000         CON(5)  =DOLIST
  379 003D8 00000         CON(5)  =ZERO
  380 003DD 00000         CON(5)  =SEMI
  381             * Allowed types REAL
  382             * File  INTERinputform.s        107
  383 003E2 00000         CON(5)  =TWO
  384             * Decompile
  385             * File  INTERinputform.s        108
  386 003E7 00000         CON(5)  =DOCSTR
  387 003EC 13000         CON(5)  49
  388 003F1 7425F         NIBASC  \GROUND SPEED OF TARG\
            455E4
            4402350554544402F4640245142574

  389 00419 5445          NIBASC  \ET\
  390             * Help string
  391             * File  INTERinputform.s        109
  392 0041D 00000         CON(5)  =MINUSONE
  393             * Choose data N/A
  394             * File  INTERinputform.s        110
  395 00422 00000         CON(5)  =MINUSONE
  396             * Choose decompile N/A
  397             * File  INTERinputform.s        111
  398 00427 00000         CON(5)  =MINUSONE
  399             * Reset value
  400             * File  INTERinputform.s        112
  401 0042C 00000         CON(5)  =DOIDNT
  402 00431 30            CON(2)  3
  403 00433 74353         NIBASC  \GSS\
            5
  404             * Initial value
  405             * File  INTERinputform.s        113
  406
  407             * File  INTERinputform.s        114
  408 00439 00000         CON(5)  =SEVEN
  409 0043E 00000         CON(5)  =SEVEN
  410             * #labels #fields
  411             * File  INTERinputform.s        115
  412 00443 00000         CON(5)  ='DROPFALSE
  413             * Message handler
  414             * File  INTERinputform.s        116
  415 00448 00000         CON(5)  =DOCSTR
  416 0044D D2000         CON(5)  45
  417 00452 94E44         NIBASC  \INTERCEPTION - INPUT\
            55425
            3454054594F4E402D20294E4055545

  418             * Title
  419             *               FLASHPTR IfMain                     ( HP50 ONLY - Run the input form )
  420             * File  INTERinputform.s        118
  421 0047A 00000         CON(5)  =DoInputForm
  422             * HP50 & HP48
  423             * File  INTERinputform.s        119
  424 0047F 00000         CON(5)  =SEMI
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Symbol Table                       INTERinputform Page    2

 'DROPFALSE                        Ext                   -   106   150   193
                                         237   280   323   366   412
 2LIST                             Ext                   -   369
 BINT_91d                          Ext                   -   283
 DOCOL                             Ext                   -    56
 DOCSTR                            Ext                   -    59    65    71
                                          77    83    89    95   126   170   213
                                         257   300   343   386   415
 DOIDNT                            Ext                   -   141   184   228
                                         271   314   357   401
 DOLIST                            Ext                   -   118   162   205
                                         249   292   335   378
 DoInputForm                       Ext                   -   421
 EIGHT                             Ext                   -   110   154
 FORTYTHREE                        Ext                   -   111   155   198
                                         328   371
 FOURTHREE                         Ext                   -    68    86    98
=INTERinputform                    Rel       0 #00000000 -    54
 LISTCMP                           Ext                   -   153
 MINUSONE                          Ext                   -   132   135   138
                                         175   178   181   219   222   225   262
                                         265   268   305   308   311   348   351
                                         354   392   395   398
 NINE                              Ext                   -   112   156   199
                                         243   286   329   372
 NINETEEN                          Ext                   -    75
 ONE                               Ext                   -    62    74    80
                                          92   115   159   202   246   289   332
                                         375
=RomId                             Abs     801 #00000321 -    18
 SEMI                              Ext                   -   120   164   207
                                         251   294   337   380   424
 SEVEN                             Ext                   -   408   409
 SEVENTEEN                         Ext                   -   197
 SIXTEEN                           Ext                   -   109   196   326
 TEN                               Ext                   -    63    69
 THIRTYFIVE                        Ext                   -   327   370
 THIRTYSEVEN                       Ext                   -    93    99   242
                                         285
 TWENTYEIGHT                       Ext                   -    81    87
 TWENTYSIX                         Ext                   -   241   284
 TWENTYTWO                         Ext                   -   240
 TWO                               Ext                   -   123   167   210
                                         254   297   340   383
 ZERO                              Ext                   -   119   163   206
                                         250   293   336   379
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Statistics                         INTERinputform Page    3

Input Parameters

  Source file name is INTERinputform.a

  Listing file name is INTERinputform.l

  Object file name is INTERinputform.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
