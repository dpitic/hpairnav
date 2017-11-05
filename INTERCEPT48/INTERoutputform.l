Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)                                      INTERoutputfor Page    1

    1             * File  INTERoutputform.s       1
    2             * RPL
    3             * File  INTERoutputform.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTERoutputform.s, part of the INTERCEPT50.hpp project, created by <> on 20/06/2009
    5             **********************************************************************
    6             * NAME:          INTERoutputform
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.7
    9             * DATE:          20 June 2009
   10             * LIBRARY #:     321h = 801d
   11             * COMPATIBILITY: HP50
   12             *                HP48 ( Comment out IfMain )
   13             * DESCRIPTION:   Generates the OUTPUT form for the interception
   14             *                problem
   15             *
   16             * File  INTERoutputform.s       14
   17             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT48\INTERCEPT48.h
   18
   19             =RomId  EQU     #321
   20             * ROMID set to 321
   21
   22
   23
   24
   25
   26
   27             *|| Resuming file INTERoutputform.s at line 14
   28             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\GUI.h
   29
   30
   31             * ( Ob Type Not Applicable
   32
   33             * ( Format Not Applicable
   34
   35
   36
   37
   38             * ( decimal 67
   39             * ( decimal 86
   40             * ( decimal 82
   41             * ( decimal 85
   42             * ( decimal 101
   43             * ( decimal 97
   44             * ( decimal 100
   45             * ( decimal 113
   46             * ( decimal 112
   47
   48             * ( field height
   49             * ( check field width
   50             * ( decimal 67
   51             * ( decimal 85
   52             * ( decimal 97
   53
   54             *|| Resuming file INTERoutputform.s at line 17
   55 00000       =INTERoutputform
   56             * File  INTERoutputform.s       20
   57 00000 00000         CON(5)  =DOCOL
   58             * Label definitions
   59             * File  INTERoutputform.s       22
   60 00005 00000         CON(5)  =DOCSTR
   61 0000A D0000         CON(5)  13
   62 0000F 84447         NIBASC  \HDG:\
            4A3
   63 00017 00000         CON(5)  =ONE
   64 0001C 00000         CON(5)  =TEN
   65             * File  INTERoutputform.s       23
   66 00021 00000         CON(5)  =DOCSTR
   67 00026 B0000         CON(5)  11
   68 0002B 4534A         NIBASC  \TC:\
            3
   69 00031 00000         CON(5)  =ONE
   70 00036 00000         CON(5)  =NINETEEN
   71             * File  INTERoutputform.s       24
   72 0003B 00000         CON(5)  =DOCSTR
   73 00040 B0000         CON(5)  11
   74 00045 7435A         NIBASC  \GS:\
            3
   75 0004B 00000         CON(5)  =ONE
   76 00050 00000         CON(5)  =TWENTYEIGHT
   77             * File  INTERoutputform.s       25
   78 00055 00000         CON(5)  =DOCSTR
   79 0005A D0000         CON(5)  13
   80 0005F 54459         NIBASC  \ETI:\
            4A3
   81 00067 00000         CON(5)  =ONE
   82 0006C 00000         CON(5)  =THIRTYSEVEN
   83             * File  INTERoutputform.s       26
   84
   85             * Field definitions
   86             * File  INTERoutputform.s       28
   87             * Field HDG definition
   88             * File  INTERoutputform.s       29
   89 00071 00000         CON(5)  ='DROPFALSE
   90             * Message handler
   91             * File  INTERoutputform.s       30
   92 00076 00000         CON(5)  =NINETEEN
   93 0007B 00000         CON(5)  =EIGHT
   94 00080 00000         CON(5)  =DOBINT
   95 00085 D6000         CON(5)  109
   96 0008A 00000         CON(5)  =NINE
   97             * Position & size
   98             * File  INTERoutputform.s       31
   99 0008F 00000         CON(5)  =ONE
  100             * Field type TEXT
  101             * File  INTERoutputform.s       32
  102 00094 00000         CON(5)  =DOLIST
  103 00099 00000         CON(5)  =ZERO
  104 0009E 00000         CON(5)  =SEMI
  105             * Allowed types REAL
  106             * File  INTERoutputform.s       33
  107 000A3 00000         CON(5)  =TWO
  108             * Decompile
  109             * File  INTERoutputform.s       34
  110 000A8 00000         CON(5)  =DOCSTR
  111 000AD D2000         CON(5)  45
  112 000B2 84541         NIBASC  \HEADING TO INTERCEPT\
            44494
            E4740245F40294E445542534540545

  113             * Help string
  114             * File  INTERoutputform.s       35
  115 000DA 00000         CON(5)  =MINUSONE
  116             * Choose data N/A
  117             * File  INTERoutputform.s       36
  118 000DF 00000         CON(5)  =MINUSONE
  119             * Choose decompile N/A
  120             * File  INTERoutputform.s       37
  121 000E4 00000         CON(5)  =DOIDNT
  122 000E9 30            CON(2)  3
  123 000EB 84447         NIBASC  \HDG\
            4
  124             * Reset value
  125             * File  INTERoutputform.s       38
  126 000F1 00000         CON(5)  =DOIDNT
  127 000F6 30            CON(2)  3
  128 000F8 84447         NIBASC  \HDG\
            4
  129             * Initial value
  130             * File  INTERoutputform.s       39
  131
  132             * File  INTERoutputform.s       40
  133             * Field TC definition
  134             * File  INTERoutputform.s       41
  135 000FE 00000         CON(5)  ='DROPFALSE
  136             * Message handler
  137             * File  INTERoutputform.s       42
  138 00103 00000         CON(5)  =NINETEEN
  139 00108 00000         CON(5)  =SEVENTEEN
  140 0010D 00000         CON(5)  =DOBINT
  141 00112 D6000         CON(5)  109
  142 00117 00000         CON(5)  =NINE
  143             * Position & size
  144             * File  INTERoutputform.s       43
  145 0011C 00000         CON(5)  =ONE
  146             * Field type TEXT
  147             * File  INTERoutputform.s       44
  148 00121 00000         CON(5)  =DOLIST
  149 00126 00000         CON(5)  =ZERO
  150 0012B 00000         CON(5)  =SEMI
  151             * Allowed types REAL
  152             * File  INTERoutputform.s       45
  153 00130 00000         CON(5)  =TWO
  154             * Decompile
  155             * File  INTERoutputform.s       46
  156 00135 00000         CON(5)  =DOCSTR
  157 0013A 92000         CON(5)  41
  158 0013F 45251         NIBASC  \TRACK TO INTERCEPT\
            434B4
            0245F40294E445542534540545

  159             * Help string
  160             * File  INTERoutputform.s       47
  161 00163 00000         CON(5)  =MINUSONE
  162             * Choose data N/A
  163             * File  INTERoutputform.s       48
  164 00168 00000         CON(5)  =MINUSONE
  165             * Choose decompile N/A
  166             * File  INTERoutputform.s       49
  167 0016D 00000         CON(5)  =DOIDNT
  168 00172 20            CON(2)  2
  169 00174 4534          NIBASC  \TC\
  170             * Reset value
  171             * File  INTERoutputform.s       50
  172 00178 00000         CON(5)  =DOIDNT
  173 0017D 20            CON(2)  2
  174 0017F 4534          NIBASC  \TC\
  175             * Initial value
  176             * File  INTERoutputform.s       51
  177
  178             * File  INTERoutputform.s       52
  179             * Field GS definition
  180             * File  INTERoutputform.s       53
  181 00183 00000         CON(5)  ='DROPFALSE
  182             * Message handler
  183             * File  INTERoutputform.s       54
  184 00188 00000         CON(5)  =NINETEEN
  185 0018D 00000         CON(5)  =TWENTYSIX
  186 00192 00000         CON(5)  =DOBINT
  187 00197 D6000         CON(5)  109
  188 0019C 00000         CON(5)  =NINE
  189             * Position & size
  190             * File  INTERoutputform.s       55
  191 001A1 00000         CON(5)  =ONE
  192             * Field type TEXT
  193             * File  INTERoutputform.s       56
  194 001A6 00000         CON(5)  =DOLIST
  195 001AB 00000         CON(5)  =ZERO
  196 001B0 00000         CON(5)  =SEMI
  197             * Allowed types REAL
  198             * File  INTERoutputform.s       57
  199 001B5 00000         CON(5)  =TWO
  200             * Decompile
  201             * File  INTERoutputform.s       58
  202 001BA 00000         CON(5)  =DOCSTR
  203 001BF 73000         CON(5)  55
  204 001C4 7425F         NIBASC  \GROUND SPEED TO INTE\
            455E4
            440235055454440245F40294E44554

  205 001EC 25345         NIBASC  \RCEPT\
            40545
  206             * Help string
  207             * File  INTERoutputform.s       59
  208 001F6 00000         CON(5)  =MINUSONE
  209             * Choose data N/A
  210             * File  INTERoutputform.s       60
  211 001FB 00000         CON(5)  =MINUSONE
  212             * Choose decompile N/A
  213             * File  INTERoutputform.s       61
  214 00200 00000         CON(5)  =DOIDNT
  215 00205 20            CON(2)  2
  216 00207 7435          NIBASC  \GS\
  217             * Reset value
  218             * File  INTERoutputform.s       62
  219 0020B 00000         CON(5)  =DOIDNT
  220 00210 20            CON(2)  2
  221 00212 7435          NIBASC  \GS\
  222             * Initial value
  223             * File  INTERoutputform.s       63
  224
  225             * File  INTERoutputform.s       64
  226             * Field ETI definition
  227             * File  INTERoutputform.s       65
  228 00216 00000         CON(5)  ='DROPFALSE
  229             * Message handler
  230             * File  INTERoutputform.s       66
  231 0021B 00000         CON(5)  =NINETEEN
  232 00220 00000         CON(5)  =THIRTYFIVE
  233 00225 00000         CON(5)  =DOBINT
  234 0022A D6000         CON(5)  109
  235 0022F 00000         CON(5)  =NINE
  236             * Position & size
  237             * File  INTERoutputform.s       67
  238 00234 00000         CON(5)  =ONE
  239             * Field type TEXT
  240             * File  INTERoutputform.s       68
  241 00239 00000         CON(5)  =DOLIST
  242 0023E 00000         CON(5)  =ZERO
  243 00243 00000         CON(5)  =SEMI
  244             * Allowed types REAL
  245             * File  INTERoutputform.s       69
  246 00248 00000         CON(5)  =TWO
  247             * Decompile
  248             * File  INTERoutputform.s       70
  249 0024D 00000         CON(5)  =DOCSTR
  250 00252 33000         CON(5)  51
  251 00257 4594D         NIBASC  \TIME TO INTERCEPT (H\
            45402
            45F40294E445542534540545028284

  252 0027F 25359         NIBASC  \RS)\
            2
  253             * Help string
  254             * File  INTERoutputform.s       71
  255 00285 00000         CON(5)  =MINUSONE
  256             * Choose data N/A
  257             * File  INTERoutputform.s       72
  258 0028A 00000         CON(5)  =MINUSONE
  259             * Choose decompile N/A
  260             * File  INTERoutputform.s       73
  261 0028F 00000         CON(5)  =DOIDNT
  262 00294 30            CON(2)  3
  263 00296 54459         NIBASC  \ETI\
            4
  264             * Reset value
  265             * File  INTERoutputform.s       74
  266 0029C 00000         CON(5)  =DOIDNT
  267 002A1 30            CON(2)  3
  268 002A3 54459         NIBASC  \ETI\
            4
  269             * Initial value
  270             * File  INTERoutputform.s       75
  271
  272             * File  INTERoutputform.s       76
  273 002A9 00000         CON(5)  =FOUR
  274 002AE 00000         CON(5)  =FOUR
  275             * #labels #fields
  276             * File  INTERoutputform.s       77
  277 002B3 00000         CON(5)  ='DROPFALSE
  278             * Message handler
  279             * File  INTERoutputform.s       78
  280 002B8 00000         CON(5)  =DOCSTR
  281 002BD F2000         CON(5)  47
  282 002C2 94E44         NIBASC  \INTERCEPTION - OUTPU\
            55425
            3454054594F4E402D202F455450555

  283 002EA 45            NIBASC  \T\
  284             * Title
  285             *               FLASHPTR IfMain                     ( HP50 ONLY - Run the input form )
  286             * File  INTERoutputform.s       80
  287 002EC 00000         CON(5)  =DoInputForm
  288             * HP50 & HP48
  289             * File  INTERoutputform.s       81
  290 002F1 00000         CON(5)  =SEMI
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Symbol Table                       INTERoutputfor Page    2

 'DROPFALSE                        Ext                   -    89   135   181
                                         228   277
 DOBINT                            Ext                   -    94   140   186
                                         233
 DOCOL                             Ext                   -    57
 DOCSTR                            Ext                   -    60    66    72
                                          78   110   156   202   249   280
 DOIDNT                            Ext                   -   121   126   167
                                         172   214   219   261   266
 DOLIST                            Ext                   -   102   148   194
                                         241
 DoInputForm                       Ext                   -   287
 EIGHT                             Ext                   -    93
 FOUR                              Ext                   -   273   274
=INTERoutputform                   Rel       0 #00000000 -    55
 MINUSONE                          Ext                   -   115   118   161
                                         164   208   211   255   258
 NINE                              Ext                   -    96   142   188
                                         235
 NINETEEN                          Ext                   -    70    92   138
                                         184   231
 ONE                               Ext                   -    63    69    75
                                          81    99   145   191   238
=RomId                             Abs     801 #00000321 -    19
 SEMI                              Ext                   -   104   150   196
                                         243   290
 SEVENTEEN                         Ext                   -   139
 TEN                               Ext                   -    64
 THIRTYFIVE                        Ext                   -   232
 THIRTYSEVEN                       Ext                   -    82
 TWENTYEIGHT                       Ext                   -    76
 TWENTYSIX                         Ext                   -   185
 TWO                               Ext                   -   107   153   199
                                         246
 ZERO                              Ext                   -   103   149   195
                                         242
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Statistics                         INTERoutputfor Page    3

Input Parameters

  Source file name is INTERoutputform.a

  Listing file name is INTERoutputform.l

  Object file name is INTERoutputform.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
