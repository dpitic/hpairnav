Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)                                      ASPDFRM.a      Page    1

    1             * File  ASPDFRM.s       1
    2             * RPL
    3             * File  ASPDFRM.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDFRM.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5             **********************************************************************
    6             * NAME:            ASPDFRM
    7             * LIBRARY #:       326h = 808d
    8             * AUTHOR:          Dan Pitic
    9             * VERSION:         1.34
   10             * DATE:            19 June 2009
   11             * COMPATIBILITY:   HP50, HP48
   12             * DESCRIPTION:     Input form and algorithm for airspeed calculations.
   13             * INPUT:     VC    Calibrated airspeed
   14             *            PA    Pressure altitude
   15             * IN/OUTPUT: M     Mach number
   16             *            T2    TOTAL air temp. (indicated)
   17             *            T1    STATIC air temp. (true)
   18             * OUTPUT:    V1    True air speed
   19             * TODO:            Save output uV1 in global variable TAS
   20             *
   21             * File  ASPDFRM.s       19
   22             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD48\ASPD48.h
   23
   24             =RomId  EQU     #328
   25             * ROMID set to 328
   26
   27
   28
   29
   30
   31
   32
   33
   34
   35             *|| Resuming file ASPDFRM.s at line 19
   36 00000 00000         CON(6)  =~xASPDFRM
            0
   37 00006       =xASPDFRM
   38             * File  ASPDFRM.s       21
   39 00006 00000         CON(5)  =DOCOL
   40             * File  ASPDFRM.s       22
   41 0000B 00000         CON(5)  =CK0
   42             * No arguments
   43             * File  ASPDFRM.s       23
   44 00010 00000         CON(5)  =BEGIN
   45             * File  ASPDFRM.s       24
   46 00015 00000         CON(5)  =DOROMP
   47 0001A 00000         CON(6)  =~ASPDform
            0
   48             * Display Input Form
   49             * File  ASPDFRM.s       25
   50 00020 00000         CON(5)  =WHILE
   51 00025 00000         CON(5)  =DOCOL
   52             * File  ASPDFRM.s       26
   53 0002A 00000         CON(5)  ='
   54 0002F 00000         CON(5)  =DOIDNT
   55 00034 20            CON(2)  2
   56 00036 6513          NIBASC  \V1\
   57 0003A 00000         CON(5)  =STO
   58             * STO output results from
   59             * File  ASPDFRM.s       27
   60 0003F 00000         CON(5)  ='
   61 00044 00000         CON(5)  =DOIDNT
   62 00049 20            CON(2)  2
   63 0004B 4513          NIBASC  \T1\
   64 0004F 00000         CON(5)  =STO
   65             * Input Form in global vars.
   66             * File  ASPDFRM.s       28
   67 00054 00000         CON(5)  ='
   68 00059 00000         CON(5)  =DOIDNT
   69 0005E 20            CON(2)  2
   70 00060 4523          NIBASC  \T2\
   71 00064 00000         CON(5)  =STO
   72             * File  ASPDFRM.s       29
   73 00069 00000         CON(5)  ='
   74 0006E 00000         CON(5)  =DOIDNT
   75 00073 10            CON(2)  1
   76 00075 D4            NIBASC  \M\
   77 00077 00000         CON(5)  =STO
   78             * File  ASPDFRM.s       30
   79 0007C 00000         CON(5)  ='
   80 00081 00000         CON(5)  =DOIDNT
   81 00086 20            CON(2)  2
   82 00088 0514          NIBASC  \PA\
   83 0008C 00000         CON(5)  =STO
   84             * File  ASPDFRM.s       31
   85 00091 00000         CON(5)  ='
   86 00096 00000         CON(5)  =DOIDNT
   87 0009B 20            CON(2)  2
   88 0009D 6534          NIBASC  \VC\
   89 000A1 00000         CON(5)  =STO
   90             * File  ASPDFRM.s       32
   91 000A6 00000         CON(5)  =DOIDNT
   92 000AB 10            CON(2)  1
   93 000AD D4            NIBASC  \M\
   94 000AF 00000         CON(5)  =NOVAL
   95 000B4 00000         CON(5)  =EQUAL
   96 000B9 00000         CON(5)  =IT
   97 000BE 00000         CON(5)  =DOCOL
   98             * IF Mach no. is NOT supplied
   99             * File  ASPDFRM.s       33
  100 000C3 00000         CON(5)  =DOIDNT
  101 000C8 20            CON(2)  2
  102 000CA 6534          NIBASC  \VC\
  103 000CE 00000         CON(5)  =NOVAL
  104 000D3 00000         CON(5)  =EQUALNOT
  105             * Check both VC and PA are supplied
  106             * File  ASPDFRM.s       34
  107 000D8 00000         CON(5)  =DOIDNT
  108 000DD 20            CON(2)  2
  109 000DF 0514          NIBASC  \PA\
  110 000E3 00000         CON(5)  =NOVAL
  111 000E8 00000         CON(5)  =EQUALNOT
  112 000ED 00000         CON(5)  =AND
  113 000F2 00000         CON(5)  =IT
  114 000F7 00000         CON(5)  =DOCOL
  115             * to calculate Mach no.
  116             * File  ASPDFRM.s       35
  117 000FC 00000         CON(5)  =DOIDNT
  118 00101 20            CON(2)  2
  119 00103 6534          NIBASC  \VC\
  120             * File  ASPDFRM.s       36
  121 00107 00000         CON(5)  =DOIDNT
  122 0010C 20            CON(2)  2
  123 0010E 0514          NIBASC  \PA\
  124             * File  ASPDFRM.s       37
  125 00112 00000         CON(5)  =DOROMP
  126 00117 00000         CON(6)  =~CMACH
            0
  127 0011D 00000         CON(5)  =DROP
  128             * Calc. Mach number
  129             * File  ASPDFRM.s       38
  130 00122 00000         CON(5)  =SEMI
  131             * File  ASPDFRM.s       39
  132 00127 00000         CON(5)  =SEMI
  133             * MACH no IS available
  134             * File  ASPDFRM.s       40
  135 0012C 00000         CON(5)  =DOIDNT
  136 00131 20            CON(2)  2
  137 00133 4523          NIBASC  \T2\
  138 00137 00000         CON(5)  =NOVAL
  139 0013C 00000         CON(5)  =EQUALNOT
  140 00141 00000         CON(5)  =case
  141 00146 00000         CON(5)  =DOCOL
  142             * IF TOTAL air temp. supplied
  143             * File  ASPDFRM.s       41
  144 0014B 00000         CON(5)  =DOIDNT
  145 00150 10            CON(2)  1
  146 00152 D4            NIBASC  \M\
  147 00154 00000         CON(5)  =NOVAL
  148 00159 00000         CON(5)  =EQUALNOT
  149 0015E 00000         CON(5)  =ITE
  150 00163 00000         CON(5)  =DOCOL
  151             * Check Mach no. IS available
  152             * File  ASPDFRM.s       42
  153 00168 00000         CON(5)  =DOIDNT
  154 0016D 10            CON(2)  1
  155 0016F D4            NIBASC  \M\
  156             * File  ASPDFRM.s       43
  157 00171 00000         CON(5)  =DOIDNT
  158 00176 20            CON(2)  2
  159 00178 4523          NIBASC  \T2\
  160             * File  ASPDFRM.s       44
  161 0017C 00000         CON(5)  =DOROMP
  162 00181 00000         CON(6)  =~CSAT
            0
  163             * Calc. SAT
  164             * File  ASPDFRM.s       45
  165 00187 00000         CON(5)  ='
  166 0018C 00000         CON(5)  =DOIDNT
  167 00191 20            CON(2)  2
  168 00193 4513          NIBASC  \T1\
  169 00197 00000         CON(5)  =STO
  170             * File  ASPDFRM.s       46
  171 0019C 00000         CON(5)  =DOIDNT
  172 001A1 10            CON(2)  1
  173 001A3 D4            NIBASC  \M\
  174             * File  ASPDFRM.s       47
  175 001A5 00000         CON(5)  =DOIDNT
  176 001AA 20            CON(2)  2
  177 001AC 4513          NIBASC  \T1\
  178             * File  ASPDFRM.s       48
  179 001B0 00000         CON(5)  =DOROMP
  180 001B5 00000         CON(6)  =~TASMS
            0
  181             * Calc. TAS
  182             * File  ASPDFRM.s       49
  183 001BB 00000         CON(5)  ='
  184 001C0 00000         CON(5)  =DOIDNT
  185 001C5 20            CON(2)  2
  186 001C7 6513          NIBASC  \V1\
  187 001CB 00000         CON(5)  =STO
  188             * File  ASPDFRM.s       50
  189 001D0 00000         CON(5)  =SEMI
  190             * File  ASPDFRM.s       51
  191 001D5 00000         CON(5)  =DOCOL
  192             * ELSE
  193             * File  ASPDFRM.s       52
  194 001DA 00000         CON(5)  =NOVAL
  195             * Reset V1
  196             * File  ASPDFRM.s       53
  197 001DF 00000         CON(5)  ='
  198 001E4 00000         CON(5)  =DOIDNT
  199 001E9 20            CON(2)  2
  200 001EB 6513          NIBASC  \V1\
  201 001EF 00000         CON(5)  =STO
  202             * File  ASPDFRM.s       54
  203 001F4 00000         CON(5)  =SEMI
  204             * File  ASPDFRM.s       55
  205 001F9 00000         CON(5)  =SEMI
  206             * File  ASPDFRM.s       56
  207 001FE 00000         CON(5)  =DOIDNT
  208 00203 20            CON(2)  2
  209 00205 4513          NIBASC  \T1\
  210 00209 00000         CON(5)  =NOVAL
  211 0020E 00000         CON(5)  =EQUALNOT
  212 00213 00000         CON(5)  =case
  213 00218 00000         CON(5)  =DOCOL
  214             * IF STATIC air temp. supplied
  215             * File  ASPDFRM.s       57
  216 0021D 00000         CON(5)  =DOIDNT
  217 00222 10            CON(2)  1
  218 00224 D4            NIBASC  \M\
  219 00226 00000         CON(5)  =NOVAL
  220 0022B 00000         CON(5)  =EQUALNOT
  221 00230 00000         CON(5)  =ITE
  222 00235 00000         CON(5)  =DOCOL
  223             * Check Mach no. IS available
  224             * File  ASPDFRM.s       58
  225 0023A 00000         CON(5)  =DOIDNT
  226 0023F 10            CON(2)  1
  227 00241 D4            NIBASC  \M\
  228             * File  ASPDFRM.s       59
  229 00243 00000         CON(5)  =DOIDNT
  230 00248 20            CON(2)  2
  231 0024A 4513          NIBASC  \T1\
  232             * File  ASPDFRM.s       60
  233 0024E 00000         CON(5)  =DOROMP
  234 00253 00000         CON(6)  =~CTAT
            0
  235             * Calc. TAT
  236             * File  ASPDFRM.s       61
  237 00259 00000         CON(5)  ='
  238 0025E 00000         CON(5)  =DOIDNT
  239 00263 20            CON(2)  2
  240 00265 4523          NIBASC  \T2\
  241 00269 00000         CON(5)  =STO
  242             * File  ASPDFRM.s       62
  243 0026E 00000         CON(5)  =DOIDNT
  244 00273 10            CON(2)  1
  245 00275 D4            NIBASC  \M\
  246             * File  ASPDFRM.s       63
  247 00277 00000         CON(5)  =DOIDNT
  248 0027C 20            CON(2)  2
  249 0027E 4513          NIBASC  \T1\
  250             * File  ASPDFRM.s       64
  251 00282 00000         CON(5)  =DOROMP
  252 00287 00000         CON(6)  =~TASMS
            0
  253             * Calc. TAS
  254             * File  ASPDFRM.s       65
  255 0028D 00000         CON(5)  ='
  256 00292 00000         CON(5)  =DOIDNT
  257 00297 20            CON(2)  2
  258 00299 6513          NIBASC  \V1\
  259 0029D 00000         CON(5)  =STO
  260             * File  ASPDFRM.s       66
  261 002A2 00000         CON(5)  =SEMI
  262             * File  ASPDFRM.s       67
  263 002A7 00000         CON(5)  =DOCOL
  264             * ELSE
  265             * File  ASPDFRM.s       68
  266 002AC 00000         CON(5)  =NOVAL
  267             * Reset V1
  268             * File  ASPDFRM.s       69
  269 002B1 00000         CON(5)  ='
  270 002B6 00000         CON(5)  =DOIDNT
  271 002BB 20            CON(2)  2
  272 002BD 6513          NIBASC  \V1\
  273 002C1 00000         CON(5)  =STO
  274             * File  ASPDFRM.s       70
  275 002C6 00000         CON(5)  =SEMI
  276             * File  ASPDFRM.s       71
  277 002CB 00000         CON(5)  =SEMI
  278             * File  ASPDFRM.s       72
  279 002D0 00000         CON(5)  =SEMI
  280 002D5 00000         CON(5)  =REPEAT
  281             * File  ASPDFRM.s       73
  282 002DA 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       ASPDFRM.a      Page    2

 '                                 Ext                   -    53    60    67
                                          73    79    85   165   183   197   237
                                         255   269
 AND                               Ext                   -   112
 BEGIN                             Ext                   -    44
 CK0                               Ext                   -    41
 DOCOL                             Ext                   -    39    51    97
                                         114   141   150   191   213   222   263
 DOIDNT                            Ext                   -    54    61    68
                                          74    80    86    91   100   107   117
                                         121   135   144   153   157   166   171
                                         175   184   198   207   216   225   229
                                         238   243   247   256   270
 DOROMP                            Ext                   -    46   125   161
                                         179   233   251
 DROP                              Ext                   -   127
 EQUAL                             Ext                   -    95
 EQUALNOT                          Ext                   -   104   111   139
                                         148   211   220
 IT                                Ext                   -    96   113
 ITE                               Ext                   -   149   221
 NOVAL                             Ext                   -    94   103   110
                                         138   147   194   210   219   266
 REPEAT                            Ext                   -   280
=RomId                             Abs     808 #00000328 -    24
 SEMI                              Ext                   -   130   132   189
                                         203   205   261   275   277   279   282
 STO                               Ext                   -    57    64    71
                                          77    83    89   169   187   201   241
                                         259   273
 WHILE                             Ext                   -    50
 case                              Ext                   -   140   212
=xASPDFRM                          Rel       6 #00000006 -    37
 ~ASPDform                         Ext                   -    47
 ~CMACH                            Ext                   -   126
 ~CSAT                             Ext                   -   162
 ~CTAT                             Ext                   -   234
 ~TASMS                            Ext                   -   180   252
 ~xASPDFRM                         Ext                   -    36
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
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
