Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)                                      RAMBFRM.a      Page    1

    1               * File  RAMBFRM.s       1
    2               * RPL
    3               * File  RAMBFRM.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\RAMBFRM.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5               **********************************************************************
    6               * NAME:          RAMBFRM
    7               * LIBRARY #:     324h = 804d
    8               * AUTHOR:        Dan Pitic
    9               * VERSION:       1.6
   10               * DATE:          24 June 2009
   11               * COMPATIBILITY: HP50
   12               *                HP48
   13               * DESCRIPTION:   Runs the GUI for the library application.
   14               *
   15               * File  RAMBFRM.s       13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\ROAMB50.h
   17
   18               =RomId  EQU     #324
   19               * ROMID set to 324
   20
   21
   22
   23
   24
   25
   26
   27
   28               *|| Resuming file RAMBFRM.s at line 13
   29 00000 000000          CON(6)  =~xRAMBFRM
   30 00006         =xRAMBFRM
   31               * File  RAMBFRM.s       15
   32 00006 00000           CON(5)  =DOCOL
   33               * File  RAMBFRM.s       16
   34 0000B 00000           CON(5)  =CK0
   35               * No arguments
   36               * File  RAMBFRM.s       17
   37 00010 00000           CON(5)  =BEGIN
   38               * File  RAMBFRM.s       18
   39 00015 00000           CON(5)  =DOROMP
   40 0001A 000000          CON(6)  =~InptForm
   41               * Run INPUT form
   42               * File  RAMBFRM.s       19
   43 00020 00000           CON(5)  =WHILE
   44 00025 00000           CON(5)  =DOCOL
   45               * File  RAMBFRM.s       20
   46 0002A 00000           CON(5)  ='
   47 0002F 00000           CON(5)  =DOIDNT
   48 00034 10              CON(2)  1
   49 00036 45              NIBASC  \T\
   50 00038 00000           CON(5)  =STO
   51               * File  RAMBFRM.s       21
   52 0003D 00000           CON(5)  ='
   53 00042 00000           CON(5)  =DOIDNT
   54 00047 30              CON(2)  3
   55 00049 453413          NIBASC  \TC1\
   56 0004F 00000           CON(5)  =STO
   57               * File  RAMBFRM.s       22
   58 00054 00000           CON(5)  ='
   59 00059 00000           CON(5)  =DOIDNT
   60 0005E 30              CON(2)  3
   61 00060 451435          NIBASC  \TAS\
   62 00066 00000           CON(5)  =STO
   63               * File  RAMBFRM.s       23
   64 0006B 00000           CON(5)  ='
   65 00070 00000           CON(5)  =DOIDNT
   66 00075 30              CON(2)  3
   67 00077 743535          NIBASC  \GSS\
   68 0007D 00000           CON(5)  =STO
   69               * File  RAMBFRM.s       24
   70 00082 00000           CON(5)  ='
   71 00087 00000           CON(5)  =DOIDNT
   72 0008C 30              CON(2)  3
   73 0008E 452535          NIBASC  \TRS\
   74 00094 00000           CON(5)  =STO
   75               * File  RAMBFRM.s       25
   76 00099 00000           CON(5)  ='
   77 0009E 00000           CON(5)  =DOIDNT
   78 000A3 20              CON(2)  2
   79 000A5 7535            NIBASC  \WS\
   80 000A9 00000           CON(5)  =STO
   81               * File  RAMBFRM.s       26
   82 000AE 00000           CON(5)  ='
   83 000B3 00000           CON(5)  =DOIDNT
   84 000B8 20              CON(2)  2
   85 000BA 7544            NIBASC  \WD\
   86 000BE 00000           CON(5)  =STO
   87               * File  RAMBFRM.s       27
   88 000C3 00000           CON(5)  =DOIDNT
   89 000C8 20              CON(2)  2
   90 000CA 7544            NIBASC  \WD\
   91 000CE 00000           CON(5)  =DOIDNT
   92 000D3 20              CON(2)  2
   93 000D5 7535            NIBASC  \WS\
   94 000D9 00000           CON(5)  =DOIDNT
   95 000DE 30              CON(2)  3
   96 000E0 452535          NIBASC  \TRS\
   97 000E6 00000           CON(5)  =DOIDNT
   98 000EB 30              CON(2)  3
   99 000ED 743535          NIBASC  \GSS\
  100 000F3 00000           CON(5)  =DOIDNT
  101 000F8 30              CON(2)  3
  102 000FA 451435          NIBASC  \TAS\
  103               * INPUT arguments
  104               * File  RAMBFRM.s       28
  105 00100 00000           CON(5)  =DOIDNT
  106 00105 30              CON(2)  3
  107 00107 453413          NIBASC  \TC1\
  108 0010D 00000           CON(5)  =DOIDNT
  109 00112 10              CON(2)  1
  110 00114 45              NIBASC  \T\
  111               * File  RAMBFRM.s       29
  112 00116 00000           CON(5)  =DOROMP
  113 0011B 000000          CON(6)  =~ROAMB
  114               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
  115               * File  RAMBFRM.s       30
  116 00121 00000           CON(5)  ='
  117 00126 00000           CON(5)  =DOIDNT
  118 0012B 30              CON(2)  3
  119 0012D D43423          NIBASC  \MC2\
  120 00133 00000           CON(5)  =STO
  121               * STO results in OUTPUT global variables
  122               * File  RAMBFRM.s       31
  123 00138 00000           CON(5)  ='
  124 0013D 00000           CON(5)  =DOIDNT
  125 00142 10              CON(2)  1
  126 00144 25              NIBASC  \R\
  127 00146 00000           CON(5)  =STO
  128               * File  RAMBFRM.s       32
  129 0014B 00000           CON(5)  ='
  130 00150 00000           CON(5)  =DOIDNT
  131 00155 20              CON(2)  2
  132 00157 4523            NIBASC  \T2\
  133 0015B 00000           CON(5)  =STO
  134               * File  RAMBFRM.s       33
  135 00160 00000           CON(5)  ='
  136 00165 00000           CON(5)  =DOIDNT
  137 0016A 20              CON(2)  2
  138 0016C 4513            NIBASC  \T1\
  139 00170 00000           CON(5)  =STO
  140               * File  RAMBFRM.s       34
  141 00175 00000           CON(5)  ='
  142 0017A 00000           CON(5)  =DOIDNT
  143 0017F 30              CON(2)  3
  144 00181 453423          NIBASC  \TC2\
  145 00187 00000           CON(5)  =STO
  146               * File  RAMBFRM.s       35
  147 0018C 00000           CON(5)  ='
  148 00191 00000           CON(5)  =DOIDNT
  149 00196 30              CON(2)  3
  150 00198 743523          NIBASC  \GS2\
  151 0019E 00000           CON(5)  =STO
  152               * File  RAMBFRM.s       36
  153 001A3 00000           CON(5)  ='
  154 001A8 00000           CON(5)  =DOIDNT
  155 001AD 40              CON(2)  4
  156 001AF 8444742         NIBASC  \HDG2\
            3
  157 001B7 00000           CON(5)  =STO
  158               * File  RAMBFRM.s       37
  159 001BC 00000           CON(5)  ='
  160 001C1 00000           CON(5)  =DOIDNT
  161 001C6 30              CON(2)  3
  162 001C8 743513          NIBASC  \GS1\
  163 001CE 00000           CON(5)  =STO
  164               * File  RAMBFRM.s       38
  165 001D3 00000           CON(5)  ='
  166 001D8 00000           CON(5)  =DOIDNT
  167 001DD 40              CON(2)  4
  168 001DF 8444741         NIBASC  \HDG1\
            3
  169 001E7 00000           CON(5)  =STO
  170               * File  RAMBFRM.s       39
  171 001EC 00000           CON(5)  =BEGIN
  172               * File  RAMBFRM.s       40
  173 001F1 00000           CON(5)  =DOROMP
  174 001F6 000000          CON(6)  =~OutptOutbndForm
  175               * Run OUTPUT OUTBOUND form
  176               * File  RAMBFRM.s       41
  177 001FC 00000           CON(5)  =WHILE
  178 00201 00000           CON(5)  =DOCOL
  179               * File  RAMBFRM.s       42
  180 00206 00000           CON(5)  =4DROP
  181               * IF OK is pressed, DROP form results
  182               * File  RAMBFRM.s       43
  183 0020B 00000           CON(5)  =DOROMP
  184 00210 000000          CON(6)  =~OutptInbndForm
  185               * Run OUTPUT INBOUND form
  186               * File  RAMBFRM.s       44
  187 00216 00000           CON(5)  =IT
  188 0021B 00000           CON(5)  =5DROP
  189               * IF OK is pressed, DROP form results
  190               * File  RAMBFRM.s       45
  191 00220 00000           CON(5)  =SEMI
  192 00225 00000           CON(5)  =REPEAT
  193               * File  RAMBFRM.s       46
  194 0022A 00000           CON(5)  =SEMI
  195 0022F 00000           CON(5)  =REPEAT
  196               * File  RAMBFRM.s       47
  197 00234 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)   Symbol Table                       RAMBFRM.a      Page    2

 '                                 Ext                   -    46    52    58
                                          64    70    76    82   116   123   129
                                         135   141   147   153   159   165
 4DROP                             Ext                   -   180
 5DROP                             Ext                   -   188
 BEGIN                             Ext                   -    37   171
 CK0                               Ext                   -    34
 DOCOL                             Ext                   -    32    44   178
 DOIDNT                            Ext                   -    47    53    59
                                          65    71    77    83    88    91    94
                                          97   100   105   108   117   124   130
                                         136   142   148   154   160   166
 DOROMP                            Ext                   -    39   112   173
                                         183
 IT                                Ext                   -   187
 REPEAT                            Ext                   -   192   195
=RomId                             Abs     804 #00000324 -    18
 SEMI                              Ext                   -   191   194   197
 STO                               Ext                   -    50    56    62
                                          68    74    80    86   120   127   133
                                         139   145   151   157   163   169
 WHILE                             Ext                   -    43   177
=xRAMBFRM                          Rel       6 #00000006 -    30
 ~InptForm                         Ext                   -    40
 ~OutptInbndForm                   Ext                   -   184
 ~OutptOutbndForm                  Ext                   -   174
 ~ROAMB                            Ext                   -   113
 ~xRAMBFRM                         Ext                   -    29
Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)   Statistics                         RAMBFRM.a      Page    3

Input Parameters

  Source file name is RAMBFRM.a

  Listing file name is RAMBFRM.l

  Object file name is RAMBFRM.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
