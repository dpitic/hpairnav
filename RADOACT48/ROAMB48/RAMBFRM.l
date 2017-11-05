Saturn Assembler                                       Wed Jun 24 20:34:11 2009
V3.0.9 (04/15/2007)                                      RAMBFRM.a      Page    1

    1             * File  RAMBFRM.s       1
    2             * RPL
    3             * File  RAMBFRM.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\RAMBFRM.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5             **********************************************************************
    6             * NAME:          RAMBFRM
    7             * LIBRARY #:     324h = 804d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.6
   10             * DATE:          24 June 2009
   11             * COMPATIBILITY: HP50
   12             *                HP48
   13             * DESCRIPTION:   Runs the GUI for the library application.
   14             *
   15             * File  RAMBFRM.s       13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROAMB48\ROAMB48.h
   17
   18             =RomId  EQU     #324
   19             * ROMID set to 324
   20
   21
   22
   23
   24
   25
   26
   27             *|| Resuming file RAMBFRM.s at line 13
   28 00000 00000         CON(6)  =~xRAMBFRM
            0
   29 00006       =xRAMBFRM
   30             * File  RAMBFRM.s       15
   31 00006 00000         CON(5)  =DOCOL
   32             * File  RAMBFRM.s       16
   33 0000B 00000         CON(5)  =CK0
   34             * No arguments
   35             * File  RAMBFRM.s       17
   36 00010 00000         CON(5)  =BEGIN
   37             * File  RAMBFRM.s       18
   38 00015 00000         CON(5)  =DOROMP
   39 0001A 00000         CON(6)  =~InptForm
            0
   40             * Run INPUT form
   41             * File  RAMBFRM.s       19
   42 00020 00000         CON(5)  =WHILE
   43 00025 00000         CON(5)  =DOCOL
   44             * File  RAMBFRM.s       20
   45 0002A 00000         CON(5)  ='
   46 0002F 00000         CON(5)  =DOIDNT
   47 00034 10            CON(2)  1
   48 00036 45            NIBASC  \T\
   49 00038 00000         CON(5)  =STO
   50             * File  RAMBFRM.s       21
   51 0003D 00000         CON(5)  ='
   52 00042 00000         CON(5)  =DOIDNT
   53 00047 30            CON(2)  3
   54 00049 45341         NIBASC  \TC1\
            3
   55 0004F 00000         CON(5)  =STO
   56             * File  RAMBFRM.s       22
   57 00054 00000         CON(5)  ='
   58 00059 00000         CON(5)  =DOIDNT
   59 0005E 30            CON(2)  3
   60 00060 45143         NIBASC  \TAS\
            5
   61 00066 00000         CON(5)  =STO
   62             * File  RAMBFRM.s       23
   63 0006B 00000         CON(5)  ='
   64 00070 00000         CON(5)  =DOIDNT
   65 00075 30            CON(2)  3
   66 00077 74353         NIBASC  \GSS\
            5
   67 0007D 00000         CON(5)  =STO
   68             * File  RAMBFRM.s       24
   69 00082 00000         CON(5)  ='
   70 00087 00000         CON(5)  =DOIDNT
   71 0008C 30            CON(2)  3
   72 0008E 45253         NIBASC  \TRS\
            5
   73 00094 00000         CON(5)  =STO
   74             * File  RAMBFRM.s       25
   75 00099 00000         CON(5)  ='
   76 0009E 00000         CON(5)  =DOIDNT
   77 000A3 20            CON(2)  2
   78 000A5 7535          NIBASC  \WS\
   79 000A9 00000         CON(5)  =STO
   80             * File  RAMBFRM.s       26
   81 000AE 00000         CON(5)  ='
   82 000B3 00000         CON(5)  =DOIDNT
   83 000B8 20            CON(2)  2
   84 000BA 7544          NIBASC  \WD\
   85 000BE 00000         CON(5)  =STO
   86             * File  RAMBFRM.s       27
   87 000C3 00000         CON(5)  =DOIDNT
   88 000C8 20            CON(2)  2
   89 000CA 7544          NIBASC  \WD\
   90 000CE 00000         CON(5)  =DOIDNT
   91 000D3 20            CON(2)  2
   92 000D5 7535          NIBASC  \WS\
   93 000D9 00000         CON(5)  =DOIDNT
   94 000DE 30            CON(2)  3
   95 000E0 45253         NIBASC  \TRS\
            5
   96 000E6 00000         CON(5)  =DOIDNT
   97 000EB 30            CON(2)  3
   98 000ED 74353         NIBASC  \GSS\
            5
   99 000F3 00000         CON(5)  =DOIDNT
  100 000F8 30            CON(2)  3
  101 000FA 45143         NIBASC  \TAS\
            5
  102             * INPUT arguments
  103             * File  RAMBFRM.s       28
  104 00100 00000         CON(5)  =DOIDNT
  105 00105 30            CON(2)  3
  106 00107 45341         NIBASC  \TC1\
            3
  107 0010D 00000         CON(5)  =DOIDNT
  108 00112 10            CON(2)  1
  109 00114 45            NIBASC  \T\
  110             * File  RAMBFRM.s       29
  111 00116 00000         CON(5)  =DOROMP
  112 0011B 00000         CON(6)  =~ROAMB
            0
  113             * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
  114             * File  RAMBFRM.s       30
  115 00121 00000         CON(5)  ='
  116 00126 00000         CON(5)  =DOIDNT
  117 0012B 30            CON(2)  3
  118 0012D D4342         NIBASC  \MC2\
            3
  119 00133 00000         CON(5)  =STO
  120             * STO results in OUTPUT global variables
  121             * File  RAMBFRM.s       31
  122 00138 00000         CON(5)  ='
  123 0013D 00000         CON(5)  =DOIDNT
  124 00142 10            CON(2)  1
  125 00144 25            NIBASC  \R\
  126 00146 00000         CON(5)  =STO
  127             * File  RAMBFRM.s       32
  128 0014B 00000         CON(5)  ='
  129 00150 00000         CON(5)  =DOIDNT
  130 00155 20            CON(2)  2
  131 00157 4523          NIBASC  \T2\
  132 0015B 00000         CON(5)  =STO
  133             * File  RAMBFRM.s       33
  134 00160 00000         CON(5)  ='
  135 00165 00000         CON(5)  =DOIDNT
  136 0016A 20            CON(2)  2
  137 0016C 4513          NIBASC  \T1\
  138 00170 00000         CON(5)  =STO
  139             * File  RAMBFRM.s       34
  140 00175 00000         CON(5)  ='
  141 0017A 00000         CON(5)  =DOIDNT
  142 0017F 30            CON(2)  3
  143 00181 45342         NIBASC  \TC2\
            3
  144 00187 00000         CON(5)  =STO
  145             * File  RAMBFRM.s       35
  146 0018C 00000         CON(5)  ='
  147 00191 00000         CON(5)  =DOIDNT
  148 00196 30            CON(2)  3
  149 00198 74352         NIBASC  \GS2\
            3
  150 0019E 00000         CON(5)  =STO
  151             * File  RAMBFRM.s       36
  152 001A3 00000         CON(5)  ='
  153 001A8 00000         CON(5)  =DOIDNT
  154 001AD 40            CON(2)  4
  155 001AF 84447         NIBASC  \HDG2\
            423
  156 001B7 00000         CON(5)  =STO
  157             * File  RAMBFRM.s       37
  158 001BC 00000         CON(5)  ='
  159 001C1 00000         CON(5)  =DOIDNT
  160 001C6 30            CON(2)  3
  161 001C8 74351         NIBASC  \GS1\
            3
  162 001CE 00000         CON(5)  =STO
  163             * File  RAMBFRM.s       38
  164 001D3 00000         CON(5)  ='
  165 001D8 00000         CON(5)  =DOIDNT
  166 001DD 40            CON(2)  4
  167 001DF 84447         NIBASC  \HDG1\
            413
  168 001E7 00000         CON(5)  =STO
  169             * File  RAMBFRM.s       39
  170 001EC 00000         CON(5)  =BEGIN
  171             * File  RAMBFRM.s       40
  172 001F1 00000         CON(5)  =DOROMP
  173 001F6 00000         CON(6)  =~OutptOutbndForm
            0
  174             * Run OUTPUT OUTBOUND form
  175             * File  RAMBFRM.s       41
  176 001FC 00000         CON(5)  =WHILE
  177 00201 00000         CON(5)  =DOCOL
  178             * File  RAMBFRM.s       42
  179 00206 00000         CON(5)  =4DROP
  180             * IF OK is pressed, DROP form results
  181             * File  RAMBFRM.s       43
  182 0020B 00000         CON(5)  =DOROMP
  183 00210 00000         CON(6)  =~OutptInbndForm
            0
  184             * Run OUTPUT INBOUND form
  185             * File  RAMBFRM.s       44
  186 00216 00000         CON(5)  =IT
  187 0021B 00000         CON(5)  =5DROP
  188             * IF OK is pressed, DROP form results
  189             * File  RAMBFRM.s       45
  190 00220 00000         CON(5)  =SEMI
  191 00225 00000         CON(5)  =REPEAT
  192             * File  RAMBFRM.s       46
  193 0022A 00000         CON(5)  =SEMI
  194 0022F 00000         CON(5)  =REPEAT
  195             * File  RAMBFRM.s       47
  196 00234 00000         CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 24 20:34:11 2009
V3.0.9 (04/15/2007)   Symbol Table                       RAMBFRM.a      Page    2

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
=RomId                             Abs     804 #00000324 -    18
 SEMI                              Ext                   -   190   193   196
 STO                               Ext                   -    49    55    61
                                          67    73    79    85   119   126   132
                                         138   144   150   156   162   168
 WHILE                             Ext                   -    42   176
=xRAMBFRM                          Rel       6 #00000006 -    29
 ~InptForm                         Ext                   -    39
 ~OutptInbndForm                   Ext                   -   183
 ~OutptOutbndForm                  Ext                   -   173
 ~ROAMB                            Ext                   -   112
 ~xRAMBFRM                         Ext                   -    28
Saturn Assembler                                       Wed Jun 24 20:34:11 2009
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
