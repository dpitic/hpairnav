Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)                                      ASPDFRM.a      Page    1

    1               * File  ASPDFRM.s       1
    2               * RPL
    3               * File  ASPDFRM.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDFRM.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               *********************************************************************
    6               * NAME:            ASPDFRM
    7               * LIBRARY #:       326h = 808d
    8               * AUTHOR:          Dan Pitic
    9               * VERSION:         1.32
   10               * DATE:            23 April 2009
   11               * DESCRIPTION:     Input form and algorithm for airspeed calculations.
   12               * INPUT:     VC    Calibrated airspeed
   13               *            PA    Pressure altitude
   14               * IN/OUTPUT: M     Mach number
   15               *            T2    TOTAL air temp. (indicated)
   16               *            T1    STATIC air temp. (true)
   17               * OUTPUT:    V1    True air speed
   18               *
   19               * File  ASPDFRM.s       17
   20               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPD.h
   21
   22               =RomId  EQU     #328
   23               * ROMID set to 328
   24
   25
   26
   27
   28
   29
   30
   31
   32               *|| Resuming file ASPDFRM.s at line 17
   33 00000 000000          CON(6)  =~xASPDFRM
   34 00006         =xASPDFRM
   35               * File  ASPDFRM.s       19
   36 00006 00000           CON(5)  =DOCOL
   37               * File  ASPDFRM.s       20
   38 0000B 00000           CON(5)  =BEGIN
   39               * File  ASPDFRM.s       21
   40 00010 00000           CON(5)  =DOROMP
   41 00015 000000          CON(6)  =~ASPDform
   42               * Display Input Form
   43               * File  ASPDFRM.s       22
   44 0001B 00000           CON(5)  =WHILE
   45 00020 00000           CON(5)  =DOCOL
   46               * File  ASPDFRM.s       23
   47 00025 00000           CON(5)  ='
   48 0002A 00000           CON(5)  =DOIDNT
   49 0002F 20              CON(2)  2
   50 00031 6513            NIBASC  \V1\
   51 00035 00000           CON(5)  =STO
   52               * STO output results from
   53               * File  ASPDFRM.s       24
   54 0003A 00000           CON(5)  ='
   55 0003F 00000           CON(5)  =DOIDNT
   56 00044 20              CON(2)  2
   57 00046 4513            NIBASC  \T1\
   58 0004A 00000           CON(5)  =STO
   59               * Input Form in global vars.
   60               * File  ASPDFRM.s       25
   61 0004F 00000           CON(5)  ='
   62 00054 00000           CON(5)  =DOIDNT
   63 00059 20              CON(2)  2
   64 0005B 4523            NIBASC  \T2\
   65 0005F 00000           CON(5)  =STO
   66               * File  ASPDFRM.s       26
   67 00064 00000           CON(5)  ='
   68 00069 00000           CON(5)  =DOIDNT
   69 0006E 10              CON(2)  1
   70 00070 D4              NIBASC  \M\
   71 00072 00000           CON(5)  =STO
   72               * File  ASPDFRM.s       27
   73 00077 00000           CON(5)  ='
   74 0007C 00000           CON(5)  =DOIDNT
   75 00081 20              CON(2)  2
   76 00083 0514            NIBASC  \PA\
   77 00087 00000           CON(5)  =STO
   78               * File  ASPDFRM.s       28
   79 0008C 00000           CON(5)  ='
   80 00091 00000           CON(5)  =DOIDNT
   81 00096 20              CON(2)  2
   82 00098 6534            NIBASC  \VC\
   83 0009C 00000           CON(5)  =STO
   84               * File  ASPDFRM.s       29
   85 000A1 00000           CON(5)  =DOIDNT
   86 000A6 10              CON(2)  1
   87 000A8 D4              NIBASC  \M\
   88 000AA 00000           CON(5)  =NOVAL
   89 000AF 00000           CON(5)  =EQUAL
   90 000B4 00000           CON(5)  =IT
   91 000B9 00000           CON(5)  =DOCOL
   92               * IF Mach no. is NOT supplied
   93               * File  ASPDFRM.s       30
   94 000BE 00000           CON(5)  =DOIDNT
   95 000C3 20              CON(2)  2
   96 000C5 6534            NIBASC  \VC\
   97               * File  ASPDFRM.s       31
   98 000C9 00000           CON(5)  =DOIDNT
   99 000CE 20              CON(2)  2
  100 000D0 0514            NIBASC  \PA\
  101               * File  ASPDFRM.s       32
  102 000D4 00000           CON(5)  =DOROMP
  103 000D9 000000          CON(6)  =~CMACH
  104 000DF 00000           CON(5)  =DROP
  105               * Calc. Mach number
  106               * File  ASPDFRM.s       33
  107 000E4 00000           CON(5)  =SEMI
  108               * MACH no IS available
  109               * File  ASPDFRM.s       34
  110 000E9 00000           CON(5)  =DOIDNT
  111 000EE 20              CON(2)  2
  112 000F0 4523            NIBASC  \T2\
  113 000F4 00000           CON(5)  =NOVAL
  114 000F9 00000           CON(5)  =EQUALNOT
  115 000FE 00000           CON(5)  =case
  116 00103 00000           CON(5)  =DOCOL
  117               * IF TOTAL air temp. supplied
  118               * File  ASPDFRM.s       35
  119 00108 00000           CON(5)  =DOIDNT
  120 0010D 10              CON(2)  1
  121 0010F D4              NIBASC  \M\
  122               * File  ASPDFRM.s       36
  123 00111 00000           CON(5)  =DOIDNT
  124 00116 20              CON(2)  2
  125 00118 4523            NIBASC  \T2\
  126               * File  ASPDFRM.s       37
  127 0011C 00000           CON(5)  =DOROMP
  128 00121 000000          CON(6)  =~CSAT
  129               * Calc. SAT
  130               * File  ASPDFRM.s       38
  131 00127 00000           CON(5)  ='
  132 0012C 00000           CON(5)  =DOIDNT
  133 00131 20              CON(2)  2
  134 00133 4513            NIBASC  \T1\
  135 00137 00000           CON(5)  =STO
  136               * File  ASPDFRM.s       39
  137 0013C 00000           CON(5)  =DOIDNT
  138 00141 10              CON(2)  1
  139 00143 D4              NIBASC  \M\
  140               * File  ASPDFRM.s       40
  141 00145 00000           CON(5)  =DOIDNT
  142 0014A 20              CON(2)  2
  143 0014C 4513            NIBASC  \T1\
  144               * File  ASPDFRM.s       41
  145 00150 00000           CON(5)  =DOROMP
  146 00155 000000          CON(6)  =~TASMS
  147               * Calc. TAS
  148               * File  ASPDFRM.s       42
  149 0015B 00000           CON(5)  ='
  150 00160 00000           CON(5)  =DOIDNT
  151 00165 20              CON(2)  2
  152 00167 6513            NIBASC  \V1\
  153 0016B 00000           CON(5)  =STO
  154               * File  ASPDFRM.s       43
  155 00170 00000           CON(5)  =SEMI
  156               * File  ASPDFRM.s       44
  157 00175 00000           CON(5)  =DOIDNT
  158 0017A 20              CON(2)  2
  159 0017C 4513            NIBASC  \T1\
  160 00180 00000           CON(5)  =NOVAL
  161 00185 00000           CON(5)  =EQUALNOT
  162 0018A 00000           CON(5)  =case
  163 0018F 00000           CON(5)  =DOCOL
  164               * IF STATIC air temp. supplied
  165               * File  ASPDFRM.s       45
  166 00194 00000           CON(5)  =DOIDNT
  167 00199 10              CON(2)  1
  168 0019B D4              NIBASC  \M\
  169               * File  ASPDFRM.s       46
  170 0019D 00000           CON(5)  =DOIDNT
  171 001A2 20              CON(2)  2
  172 001A4 4513            NIBASC  \T1\
  173               * File  ASPDFRM.s       47
  174 001A8 00000           CON(5)  =DOROMP
  175 001AD 000000          CON(6)  =~CTAT
  176               * Calc. TAT
  177               * File  ASPDFRM.s       48
  178 001B3 00000           CON(5)  ='
  179 001B8 00000           CON(5)  =DOIDNT
  180 001BD 20              CON(2)  2
  181 001BF 4523            NIBASC  \T2\
  182 001C3 00000           CON(5)  =STO
  183               * File  ASPDFRM.s       49
  184 001C8 00000           CON(5)  =DOIDNT
  185 001CD 10              CON(2)  1
  186 001CF D4              NIBASC  \M\
  187               * File  ASPDFRM.s       50
  188 001D1 00000           CON(5)  =DOIDNT
  189 001D6 20              CON(2)  2
  190 001D8 4513            NIBASC  \T1\
  191               * File  ASPDFRM.s       51
  192 001DC 00000           CON(5)  =DOROMP
  193 001E1 000000          CON(6)  =~TASMS
  194               * Calc. TAS
  195               * File  ASPDFRM.s       52
  196 001E7 00000           CON(5)  ='
  197 001EC 00000           CON(5)  =DOIDNT
  198 001F1 20              CON(2)  2
  199 001F3 6513            NIBASC  \V1\
  200 001F7 00000           CON(5)  =STO
  201               * File  ASPDFRM.s       53
  202 001FC 00000           CON(5)  =SEMI
  203               * File  ASPDFRM.s       54
  204 00201 00000           CON(5)  =SEMI
  205 00206 00000           CON(5)  =REPEAT
  206               * File  ASPDFRM.s       55
  207 0020B 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Symbol Table                       ASPDFRM.a      Page    2

 '                                 Ext                   -    47    54    61
                                          67    73    79   131   149   178   196
 BEGIN                             Ext                   -    38
 DOCOL                             Ext                   -    36    45    91
                                         116   163
 DOIDNT                            Ext                   -    48    55    62
                                          68    74    80    85    94    98   110
                                         119   123   132   137   141   150   157
                                         166   170   179   184   188   197
 DOROMP                            Ext                   -    40   102   127
                                         145   174   192
 DROP                              Ext                   -   104
 EQUAL                             Ext                   -    89
 EQUALNOT                          Ext                   -   114   161
 IT                                Ext                   -    90
 NOVAL                             Ext                   -    88   113   160
 REPEAT                            Ext                   -   205
=RomId                             Abs     808 #00000328 -    22
 SEMI                              Ext                   -   107   155   202
                                         204   207
 STO                               Ext                   -    51    58    65
                                          71    77    83   135   153   182   200
 WHILE                             Ext                   -    44
 case                              Ext                   -   115   162
=xASPDFRM                          Rel       6 #00000006 -    34
 ~ASPDform                         Ext                   -    41
 ~CMACH                            Ext                   -   103
 ~CSAT                             Ext                   -   128
 ~CTAT                             Ext                   -   175
 ~TASMS                            Ext                   -   146   193
 ~xASPDFRM                         Ext                   -    33
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
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
