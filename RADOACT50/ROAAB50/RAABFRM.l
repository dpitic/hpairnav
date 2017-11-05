Saturn Assembler                                       Thu Jun 25 09:52:33 2009
V3.0.9 (04/15/2007)                                      RAABFRM.a      Page    1

    1               * File  RAABFRM.s       1
    2               * RPL
    3               * File  RAABFRM.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\RAMBFRM.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5               **********************************************************************
    6               * NAME:          RAABFRM
    7               * LIBRARY #:     325h = 805d
    8               * AUTHOR:        Dan Pitic
    9               * VERSION:       1.4
   10               * DATE:          25 June 2009
   11               * COMPATIBILITY: HP50
   12               *                HP48
   13               * DESCRIPTION:   Runs the GUI for the library application.
   14               *
   15               * File  RAABFRM.s       13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAAB50\ROAAB50.h
   17
   18               =RomId  EQU     #325
   19               * ROMID set to 325
   20
   21
   22
   23
   24
   25
   26
   27               *|| Resuming file RAABFRM.s at line 13
   28 00000 000000          CON(6)  =~xRAABFRM
   29 00006         =xRAABFRM
   30               * File  RAABFRM.s       15
   31 00006 00000           CON(5)  =DOCOL
   32               * File  RAABFRM.s       16
   33 0000B 00000           CON(5)  =CK0
   34               * No arguments
   35               * File  RAABFRM.s       17
   36 00010 00000           CON(5)  =BEGIN
   37               * File  RAABFRM.s       18
   38 00015 00000           CON(5)  =DOROMP
   39 0001A 000000          CON(6)  =~InptForm
   40               * Run INPUT form
   41               * File  RAABFRM.s       19
   42 00020 00000           CON(5)  =WHILE
   43 00025 00000           CON(5)  =DOCOL
   44               * File  RAABFRM.s       20
   45 0002A 00000           CON(5)  ='
   46 0002F 00000           CON(5)  =DOIDNT
   47 00034 10              CON(2)  1
   48 00036 45              NIBASC  \T\
   49 00038 00000           CON(5)  =STO
   50               * File  RAABFRM.s       21
   51 0003D 00000           CON(5)  ='
   52 00042 00000           CON(5)  =DOIDNT
   53 00047 30              CON(2)  3
   54 00049 453413          NIBASC  \TC1\
   55 0004F 00000           CON(5)  =STO
   56               * File  RAABFRM.s       22
   57 00054 00000           CON(5)  ='
   58 00059 00000           CON(5)  =DOIDNT
   59 0005E 30              CON(2)  3
   60 00060 451435          NIBASC  \TAS\
   61 00066 00000           CON(5)  =STO
   62               * File  RAABFRM.s       23
   63 0006B 00000           CON(5)  ='
   64 00070 00000           CON(5)  =DOIDNT
   65 00075 40              CON(2)  4
   66 00077 4494354         NIBASC  \DIST\
            5
   67 0007F 00000           CON(5)  =STO
   68               * File  RAABFRM.s       24
   69 00084 00000           CON(5)  ='
   70 00089 00000           CON(5)  =DOIDNT
   71 0008E 30              CON(2)  3
   72 00090 242574          NIBASC  \BRG\
   73 00096 00000           CON(5)  =STO
   74               * File  RAABFRM.s       25
   75 0009B 00000           CON(5)  ='
   76 000A0 00000           CON(5)  =DOIDNT
   77 000A5 20              CON(2)  2
   78 000A7 7535            NIBASC  \WS\
   79 000AB 00000           CON(5)  =STO
   80               * File  RAABFRM.s       26
   81 000B0 00000           CON(5)  ='
   82 000B5 00000           CON(5)  =DOIDNT
   83 000BA 20              CON(2)  2
   84 000BC 7544            NIBASC  \WD\
   85 000C0 00000           CON(5)  =STO
   86               * File  RAABFRM.s       27
   87 000C5 00000           CON(5)  =DOIDNT
   88 000CA 20              CON(2)  2
   89 000CC 7544            NIBASC  \WD\
   90 000D0 00000           CON(5)  =DOIDNT
   91 000D5 20              CON(2)  2
   92 000D7 7535            NIBASC  \WS\
   93 000DB 00000           CON(5)  =DOIDNT
   94 000E0 30              CON(2)  3
   95 000E2 242574          NIBASC  \BRG\
   96 000E8 00000           CON(5)  =DOIDNT
   97 000ED 40              CON(2)  4
   98 000EF 4494354         NIBASC  \DIST\
            5
   99 000F7 00000           CON(5)  =DOIDNT
  100 000FC 30              CON(2)  3
  101 000FE 451435          NIBASC  \TAS\
  102               * INPUT arguments
  103               * File  RAABFRM.s       28
  104 00104 00000           CON(5)  =DOIDNT
  105 00109 30              CON(2)  3
  106 0010B 453413          NIBASC  \TC1\
  107 00111 00000           CON(5)  =DOIDNT
  108 00116 10              CON(2)  1
  109 00118 45              NIBASC  \T\
  110               * File  RAABFRM.s       29
  111 0011A 00000           CON(5)  =DOROMP
  112 0011F 000000          CON(6)  =~ROAAB
  113               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
  114               * File  RAABFRM.s       30
  115 00125 00000           CON(5)  ='
  116 0012A 00000           CON(5)  =DOIDNT
  117 0012F 30              CON(2)  3
  118 00131 D43423          NIBASC  \MC2\
  119 00137 00000           CON(5)  =STO
  120               * STO results in OUTPUT global variables
  121               * File  RAABFRM.s       31
  122 0013C 00000           CON(5)  ='
  123 00141 00000           CON(5)  =DOIDNT
  124 00146 10              CON(2)  1
  125 00148 25              NIBASC  \R\
  126 0014A 00000           CON(5)  =STO
  127               * File  RAABFRM.s       32
  128 0014F 00000           CON(5)  ='
  129 00154 00000           CON(5)  =DOIDNT
  130 00159 20              CON(2)  2
  131 0015B 4523            NIBASC  \T2\
  132 0015F 00000           CON(5)  =STO
  133               * File  RAABFRM.s       33
  134 00164 00000           CON(5)  ='
  135 00169 00000           CON(5)  =DOIDNT
  136 0016E 20              CON(2)  2
  137 00170 4513            NIBASC  \T1\
  138 00174 00000           CON(5)  =STO
  139               * File  RAABFRM.s       34
  140 00179 00000           CON(5)  ='
  141 0017E 00000           CON(5)  =DOIDNT
  142 00183 30              CON(2)  3
  143 00185 453423          NIBASC  \TC2\
  144 0018B 00000           CON(5)  =STO
  145               * File  RAABFRM.s       35
  146 00190 00000           CON(5)  ='
  147 00195 00000           CON(5)  =DOIDNT
  148 0019A 30              CON(2)  3
  149 0019C 743523          NIBASC  \GS2\
  150 001A2 00000           CON(5)  =STO
  151               * File  RAABFRM.s       36
  152 001A7 00000           CON(5)  ='
  153 001AC 00000           CON(5)  =DOIDNT
  154 001B1 40              CON(2)  4
  155 001B3 8444742         NIBASC  \HDG2\
            3
  156 001BB 00000           CON(5)  =STO
  157               * File  RAABFRM.s       37
  158 001C0 00000           CON(5)  ='
  159 001C5 00000           CON(5)  =DOIDNT
  160 001CA 30              CON(2)  3
  161 001CC 743513          NIBASC  \GS1\
  162 001D2 00000           CON(5)  =STO
  163               * File  RAABFRM.s       38
  164 001D7 00000           CON(5)  ='
  165 001DC 00000           CON(5)  =DOIDNT
  166 001E1 40              CON(2)  4
  167 001E3 8444741         NIBASC  \HDG1\
            3
  168 001EB 00000           CON(5)  =STO
  169               * File  RAABFRM.s       39
  170 001F0 00000           CON(5)  =BEGIN
  171               * File  RAABFRM.s       40
  172 001F5 00000           CON(5)  =DOROMP
  173 001FA 000000          CON(6)  =~OutptOutbndForm
  174               * Run OUTPUT OUTBOUND form
  175               * File  RAABFRM.s       41
  176 00200 00000           CON(5)  =WHILE
  177 00205 00000           CON(5)  =DOCOL
  178               * File  RAABFRM.s       42
  179 0020A 00000           CON(5)  =4DROP
  180               * IF OK is pressed, DROP form results
  181               * File  RAABFRM.s       43
  182 0020F 00000           CON(5)  =DOROMP
  183 00214 000000          CON(6)  =~OutptInbndForm
  184               * Run OUTPUT INBOUND form
  185               * File  RAABFRM.s       44
  186 0021A 00000           CON(5)  =IT
  187 0021F 00000           CON(5)  =5DROP
  188               * IF OK is pressed, DROP form results
  189               * File  RAABFRM.s       45
  190 00224 00000           CON(5)  =SEMI
  191 00229 00000           CON(5)  =REPEAT
  192               * File  RAABFRM.s       46
  193 0022E 00000           CON(5)  =SEMI
  194 00233 00000           CON(5)  =REPEAT
  195               * File  RAABFRM.s       47
  196 00238 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 25 09:52:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       RAABFRM.a      Page    2

 '                                 Ext                   -    45    51    57
                                          63    69    75    81   115   122   128
                                         134   140   146   152   158   164
 4DROP                             Ext                   -   179
 5DROP                             Ext                   -   187
 BEGIN                             Ext                   -    36   170
 CK0                               Ext                   -    33
 DOCOL                             Ext                   -    31    43   177
 DOIDNT                            Ext                   -    46    52    58
                                          64    70    76    82    87    90    93
                                          96    99   104   107   116   123   129
                                         135   141   147   153   159   165
 DOROMP                            Ext                   -    38   111   172
                                         182
 IT                                Ext                   -   186
 REPEAT                            Ext                   -   191   194
=RomId                             Abs     805 #00000325 -    18
 SEMI                              Ext                   -   190   193   196
 STO                               Ext                   -    49    55    61
                                          67    73    79    85   119   126   132
                                         138   144   150   156   162   168
 WHILE                             Ext                   -    42   176
=xRAABFRM                          Rel       6 #00000006 -    29
 ~InptForm                         Ext                   -    39
 ~OutptInbndForm                   Ext                   -   183
 ~OutptOutbndForm                  Ext                   -   173
 ~ROAAB                            Ext                   -   112
 ~xRAABFRM                         Ext                   -    28
Saturn Assembler                                       Thu Jun 25 09:52:33 2009
V3.0.9 (04/15/2007)   Statistics                         RAABFRM.a      Page    3

Input Parameters

  Source file name is RAABFRM.a

  Listing file name is RAABFRM.l

  Object file name is RAABFRM.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
