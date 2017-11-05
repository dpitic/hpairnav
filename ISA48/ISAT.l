Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)                                      ISAT.a         Page    1

    1             * File  ISAT.s  1
    2             * RPL
    3             * File  ISAT.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAT.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5             ********************************************************************
    6             * Name:                                                                         ISAT
    7             * Library #:     326h = 806d
    8             * Description:                  Calculates the standard temperature in the ISA for
    9             *                                                                                                                               a given altitude.  Output in SI units Kelvin.
   10             * Version:                                                      1.23
   11             * Date:                                                                         10 June 2009
   12             * Machine:       HP48
   13             *                HP50
   14             * Usage:         ( u -> u )
   15             * Input:                                STACK                                   Geopotential altitude (with units)
   16             * Output:         STACK                                 Standard ISA temperature in SI units (Kelvin)
   17             *
   18             * File  ISAT.s  16
   19             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\ISA48.h
   20
   21             =RomId  EQU     #326
   22             * ROMID set to 326
   23
   24
   25
   26
   27
   28
   29
   30
   31
   32
   33             *|| Resuming file ISAT.s at line 16
   34             * File  ISAT.s  18
   35             * File  ISAT.s  19
   36             * File  ISAT.s  20
   37 00000 00000         CON(6)  =~xISAT
            0
   38 00006       =xISAT
   39             * File  ISAT.s  21
   40 00006 00000         CON(5)  =DOCOL
   41             * File  ISAT.s  22
   42 0000B 00000         CON(5)  =CK1&Dispatch
   43             * Require 1 argument
   44             * File  ISAT.s  23
   45 00010 00000         CON(5)  =unitob
   46 00015 00000         CON(5)  =DOCOL
   47             * Unit object
   48             * File  ISAT.s  24
   49 0001A 00000         CON(5)  =UMSI
   50             * Convert geopotential altitude to SI units
   51             * File  ISAT.s  25
   52 0001F 00000         CON(5)  =DOEXT
   53             * Temp. lapse rate for 0 m <= Z <= 11 km
   54             * File  ISAT.s  26
   55 00024 00000         CON(5)  =DOREAL
   56 00029 799           NIBHEX  799
   57 0002C 00000         NIBHEX  000000000056
            00000
            56
   58 00038 9             NIBHEX  9
   59 00039 00000         CON(5)  =DOCSTR
   60 0003E 70000         CON(5)  7
   61 00043 B4            NIBASC  \K\
   62 00045 00000         CON(5)  =DOCSTR
   63 0004A 70000         CON(5)  7
   64 0004F D6            NIBASC  \m\
   65 00051 00000         CON(5)  =um/
   66 00056 00000         CON(5)  =umEND
   67 0005B 00000         CON(5)  =SEMI
   68             * File  ISAT.s  27
   69 00060 00000         CON(5)  =DOEXT
   70 00065 00000         CON(5)  =DOREAL
   71 0006A 200           NIBHEX  200
   72 0006D 00000         NIBHEX  000000051882
            00518
            82
   73 00079 0             NIBHEX  0
   74 0007A 00000         CON(5)  =DOCSTR
   75 0007F 70000         CON(5)  7
   76 00084 B4            NIBASC  \K\
   77 00086 00000         CON(5)  =umEND
   78 0008B 00000         CON(5)  =SEMI
   79             * Sea level ISA temperature
   80             * File  ISAT.s  28
   81 00090 00000         CON(5)  =DOLIST
   82 00095 00000         CON(5)  =DOLAM
   83 0009A 10            CON(2)  1
   84 0009C A5            NIBASC  \Z\
   85 0009E 00000         CON(5)  =DOLAM
   86 000A3 10            CON(2)  1
   87 000A5 FD            CON(2)  #DF
   88 000A7 00000         CON(5)  =DOLAM
   89 000AC 20            CON(2)  2
   90 000AE 4503          NIBASC  \T0\
   91 000B2 00000         CON(5)  =SEMI
   92 000B7 00000         CON(5)  =BIND
   93             * Create temporary environment
   94             * Check if Z > 20 km
   95             * File  ISAT.s  30
   96 000BC 00000         CON(5)  =DOLAM
   97 000C1 10            CON(2)  1
   98 000C3 A5            NIBASC  \Z\
   99             * File  ISAT.s  31
  100 000C5 00000         CON(5)  =DOEXT
  101 000CA 00000         CON(5)  =DOREAL
  102 000CF 400           NIBHEX  400
  103 000D2 00000         NIBHEX  000000000002
            00000
            02
  104 000DE 0             NIBHEX  0
  105 000DF 00000         CON(5)  =DOCSTR
  106 000E4 70000         CON(5)  7
  107 000E9 D6            NIBASC  \m\
  108 000EB 00000         CON(5)  =umEND
  109 000F0 00000         CON(5)  =SEMI
  110             * File  ISAT.s  32
  111 000F5 00000         CON(5)  =UM>?
  112 000FA 00000         CON(5)  =%0<>
  113 000FF 00000         CON(5)  =case
  114 00104 00000         CON(5)  =DOCOL
  115             * Display warning message and error beep
  116             * File  ISAT.s  33
  117 00109 00000         CON(5)  =ERRBEEP
  118             * Message box parameters
  119             * File  ISAT.s  35
  120 0010E 00000         CON(5)  =DOCSTR
  121 00113 F2000         CON(5)  47
  122 00118 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

  123 00140 D6            NIBASC  \m\
  124             * message$
  125             * File  ISAT.s  36
  126 00142 00000         CON(5)  =TWELVE
  127             * #maxwidth
  128             * File  ISAT.s  37
  129 00147 00000         CON(5)  =TEN
  130             * #minwidth
  131             * File  ISAT.s  38
  132 0014C 00000         CON(5)  =DOROMP
  133 00151 00000         CON(6)  =~grobAlertIcon
            0
  134             * grob
  135             * File  ISAT.s  39
  136 00157 00000         CON(5)  =DOROMP
  137 0015C 00000         CON(6)  =~MsgBoxMenu
            0
  138             * menuobject
  139             * File  ISAT.s  40
  140 00162 00000         CON(5)  =DOROMP
  141 00167 00000         CON(6)  =~DoMsgBox
            0
  142 0016D 00000         CON(5)  =DROP
  143             * Draw the message box, DROP FLAG
  144             * File  ISAT.s  41
  145 00172 00000         CON(5)  =SEMI
  146             * Check if Z <= 11 km
  147             * File  ISAT.s  43
  148 00177 00000         CON(5)  =DOLAM
  149 0017C 10            CON(2)  1
  150 0017E A5            NIBASC  \Z\
  151             * File  ISAT.s  44
  152 00180 00000         CON(5)  =DOEXT
  153 00185 00000         CON(5)  =DOREAL
  154 0018A 400           NIBHEX  400
  155 0018D 00000         NIBHEX  000000000011
            00000
            11
  156 00199 0             NIBHEX  0
  157 0019A 00000         CON(5)  =DOCSTR
  158 0019F 70000         CON(5)  7
  159 001A4 D6            NIBASC  \m\
  160 001A6 00000         CON(5)  =umEND
  161 001AB 00000         CON(5)  =SEMI
  162             * File  ISAT.s  45
  163 001B0 00000         CON(5)  =UM<=?
  164 001B5 00000         CON(5)  =%0<>
  165 001BA 00000         CON(5)  =case
  166 001BF 00000         CON(5)  =DOCOL
  167             * File  ISAT.s  46
  168 001C4 00000         CON(5)  =DOLAM
  169 001C9 20            CON(2)  2
  170 001CB 4503          NIBASC  \T0\
  171             * Calculate ISA temp. for
  172             * File  ISAT.s  47
  173 001CF 00000         CON(5)  =DOLAM
  174 001D4 10            CON(2)  1
  175 001D6 FD            CON(2)  #DF
  176             * Z <= 11 km
  177             * File  ISAT.s  48
  178 001D8 00000         CON(5)  =DOLAM
  179 001DD 10            CON(2)  1
  180 001DF A5            NIBASC  \Z\
  181             * File  ISAT.s  49
  182 001E1 00000         CON(5)  =UM*
  183             * File  ISAT.s  50
  184 001E6 00000         CON(5)  =UM+
  185             * File  ISAT.s  51
  186 001EB 00000         CON(5)  =UMSI
  187             * Return ISA temp. in Kelvin
  188             * File  ISAT.s  52
  189 001F0 00000         CON(5)  =SEMI
  190             * Check if Z > 11 km
  191             * File  ISAT.s  54
  192 001F5 00000         CON(5)  =DOLAM
  193 001FA 10            CON(2)  1
  194 001FC A5            NIBASC  \Z\
  195             * File  ISAT.s  55
  196 001FE 00000         CON(5)  =DOEXT
  197 00203 00000         CON(5)  =DOREAL
  198 00208 400           NIBHEX  400
  199 0020B 00000         NIBHEX  000000000011
            00000
            11
  200 00217 0             NIBHEX  0
  201 00218 00000         CON(5)  =DOCSTR
  202 0021D 70000         CON(5)  7
  203 00222 D6            NIBASC  \m\
  204 00224 00000         CON(5)  =umEND
  205 00229 00000         CON(5)  =SEMI
  206             * File  ISAT.s  56
  207 0022E 00000         CON(5)  =UM>?
  208 00233 00000         CON(5)  =%0<>
  209 00238 00000         CON(5)  =case
  210 0023D 00000         CON(5)  =DOCOL
  211             * File  ISAT.s  57
  212 00242 00000         CON(5)  =DOLAM
  213 00247 20            CON(2)  2
  214 00249 4503          NIBASC  \T0\
  215             * Calculate ISA temp. for
  216             * File  ISAT.s  58
  217 0024D 00000         CON(5)  =DOLAM
  218 00252 10            CON(2)  1
  219 00254 FD            CON(2)  #DF
  220             * Z > 11 km
  221             * File  ISAT.s  59
  222 00256 00000         CON(5)  =DOEXT
  223 0025B 00000         CON(5)  =DOREAL
  224 00260 400           NIBHEX  400
  225 00263 00000         NIBHEX  000000000011
            00000
            11
  226 0026F 0             NIBHEX  0
  227 00270 00000         CON(5)  =DOCSTR
  228 00275 70000         CON(5)  7
  229 0027A D6            NIBASC  \m\
  230 0027C 00000         CON(5)  =umEND
  231 00281 00000         CON(5)  =SEMI
  232             * File  ISAT.s  60
  233 00286 00000         CON(5)  =UM*
  234             * File  ISAT.s  61
  235 0028B 00000         CON(5)  =UM+
  236             * File  ISAT.s  62
  237 00290 00000         CON(5)  =UMSI
  238             * Return ISA tmep. in Kelvin
  239             * File  ISAT.s  63
  240 00295 00000         CON(5)  =SEMI
  241             * File  ISAT.s  64
  242 0029A 00000         CON(5)  =ABND
  243             * Abandont temporary environment
  244             * File  ISAT.s  65
  245 0029F 00000         CON(5)  =SEMI
  246             * File  ISAT.s  66
  247 002A4 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAT.a         Page    2

 %0<>                              Ext                   -   112   164   208
 ABND                              Ext                   -   242
 BIND                              Ext                   -    92
 CK1&Dispatch                      Ext                   -    42
 DOCOL                             Ext                   -    40    46   114
                                         166   210
 DOCSTR                            Ext                   -    59    62    74
                                         105   120   157   201   227
 DOEXT                             Ext                   -    52    69   100
                                         152   196   222
 DOLAM                             Ext                   -    82    85    88
                                          96   148   168   173   178   192   212
                                         217
 DOLIST                            Ext                   -    81
 DOREAL                            Ext                   -    55    70   101
                                         153   197   223
 DOROMP                            Ext                   -   132   136   140
 DROP                              Ext                   -   142
 ERRBEEP                           Ext                   -   117
=RomId                             Abs     806 #00000326 -    21
 SEMI                              Ext                   -    67    78    91
                                         109   145   161   189   205   231   240
                                         245   247
 TEN                               Ext                   -   129
 TWELVE                            Ext                   -   126
 UM*                               Ext                   -   182   233
 UM+                               Ext                   -   184   235
 UM<=?                             Ext                   -   163
 UM>?                              Ext                   -   111   207
 UMSI                              Ext                   -    49   186   237
 case                              Ext                   -   113   165   209
 um/                               Ext                   -    65
 umEND                             Ext                   -    66    77   108
                                         160   204   230
 unitob                            Ext                   -    45
=xISAT                             Rel       6 #00000006 -    38
 ~DoMsgBox                         Ext                   -   141
 ~MsgBoxMenu                       Ext                   -   137
 ~grobAlertIcon                    Ext                   -   133
 ~xISAT                            Ext                   -    37
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Statistics                         ISAT.a         Page    3

Input Parameters

  Source file name is ISAT.a

  Listing file name is ISAT.l

  Object file name is ISAT.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
