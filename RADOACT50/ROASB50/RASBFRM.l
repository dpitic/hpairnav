Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)                                      RASBFRM.a      Page    1

    1               * File  RASBFRM.s       1
    2               * RPL
    3               * File  RASBFRM.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\RASBFRM.s, part of the ROASB50.hpp project, created by <> on 23/06/2009
    5               **********************************************************************
    6               * NAME:          RASBFRM
    7               * AUTHOR:        Dan Pitic
    8               * LIBRARY #:     323h = 803d
    9               * VERSION:       1.4
   10               * DATE:          22 June 2009
   11               * COMPATIBILITY: HP50
   12               *                HP48
   13               * DESCRIPTION:   Runs the GUI for the library application to accept
   14               *                INPUT and display OUTPUT results.
   15               *
   16               * File  RASBFRM.s       14
   17               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\ROASB50.h
   18
   19               =RomId  EQU     #323
   20               * ROMID set to 323
   21
   22
   23
   24
   25
   26
   27
   28               *|| Resuming file RASBFRM.s at line 14
   29 00000 000000          CON(6)  =~xRASBFRM
   30 00006         =xRASBFRM
   31               * File  RASBFRM.s       16
   32 00006 00000           CON(5)  =DOCOL
   33               * File  RASBFRM.s       17
   34 0000B 00000           CON(5)  =CK0
   35               * No arguments
   36               * File  RASBFRM.s       18
   37 00010 00000           CON(5)  =BEGIN
   38               * File  RASBFRM.s       19
   39 00015 00000           CON(5)  =DOROMP
   40 0001A 000000          CON(6)  =~InptForm
   41               * Run INPUT form
   42               * File  RASBFRM.s       20
   43 00020 00000           CON(5)  =WHILE
   44 00025 00000           CON(5)  =DOCOL
   45               * STO results of input form in global variables
   46               * File  RASBFRM.s       22
   47 0002A 00000           CON(5)  ='
   48 0002F 00000           CON(5)  =DOIDNT
   49 00034 40              CON(2)  4
   50 00036 4484F4D         NIBASC  \DHOM\
            4
   51 0003E 00000           CON(5)  =STO
   52               * File  RASBFRM.s       23
   53 00043 00000           CON(5)  ='
   54 00048 00000           CON(5)  =DOIDNT
   55 0004D 30              CON(2)  3
   56 0004F 451435          NIBASC  \TAS\
   57 00055 00000           CON(5)  =STO
   58               * File  RASBFRM.s       24
   59 0005A 00000           CON(5)  ='
   60 0005F 00000           CON(5)  =DOIDNT
   61 00064 10              CON(2)  1
   62 00066 45              NIBASC  \T\
   63 00068 00000           CON(5)  =STO
   64               * File  RASBFRM.s       25
   65 0006D 00000           CON(5)  ='
   66 00072 00000           CON(5)  =DOIDNT
   67 00077 30              CON(2)  3
   68 00079 453413          NIBASC  \TC1\
   69 0007F 00000           CON(5)  =STO
   70               * File  RASBFRM.s       26
   71 00084 00000           CON(5)  ='
   72 00089 00000           CON(5)  =DOIDNT
   73 0008E 20              CON(2)  2
   74 00090 7535            NIBASC  \WS\
   75 00094 00000           CON(5)  =STO
   76               * File  RASBFRM.s       27
   77 00099 00000           CON(5)  ='
   78 0009E 00000           CON(5)  =DOIDNT
   79 000A3 20              CON(2)  2
   80 000A5 7544            NIBASC  \WD\
   81 000A9 00000           CON(5)  =STO
   82               * Solve problem
   83               * File  RASBFRM.s       29
   84 000AE 00000           CON(5)  =DOIDNT
   85 000B3 20              CON(2)  2
   86 000B5 7544            NIBASC  \WD\
   87 000B9 00000           CON(5)  =DOIDNT
   88 000BE 20              CON(2)  2
   89 000C0 7535            NIBASC  \WS\
   90 000C4 00000           CON(5)  =DOIDNT
   91 000C9 30              CON(2)  3
   92 000CB 453413          NIBASC  \TC1\
   93 000D1 00000           CON(5)  =DOIDNT
   94 000D6 10              CON(2)  1
   95 000D8 45              NIBASC  \T\
   96 000DA 00000           CON(5)  =DOIDNT
   97 000DF 30              CON(2)  3
   98 000E1 451435          NIBASC  \TAS\
   99 000E7 00000           CON(5)  =DOIDNT
  100 000EC 40              CON(2)  4
  101 000EE 4484F4D         NIBASC  \DHOM\
            4
  102               * Arguments
  103               * File  RASBFRM.s       30
  104 000F6 00000           CON(5)  =DOROMP
  105 000FB 000000          CON(6)  =~ROASAMBA
  106               * Call function
  107               * File  RASBFRM.s       31
  108 00101 00000           CON(5)  ='
  109 00106 00000           CON(5)  =DOIDNT
  110 0010B 40              CON(2)  4
  111 0010D 4464D48         NIBASC  \DFMH\
            4
  112 00115 00000           CON(5)  =STO
  113               * STO OUTPUT results
  114               * File  RASBFRM.s       32
  115 0011A 00000           CON(5)  ='
  116 0011F 00000           CON(5)  =DOIDNT
  117 00124 10              CON(2)  1
  118 00126 25              NIBASC  \R\
  119 00128 00000           CON(5)  =STO
  120               * in global variables
  121               * File  RASBFRM.s       33
  122 0012D 00000           CON(5)  ='
  123 00132 00000           CON(5)  =DOIDNT
  124 00137 20              CON(2)  2
  125 00139 4513            NIBASC  \T1\
  126 0013D 00000           CON(5)  =STO
  127               * File  RASBFRM.s       34
  128 00142 00000           CON(5)  ='
  129 00147 00000           CON(5)  =DOIDNT
  130 0014C 20              CON(2)  2
  131 0014E 3523            NIBASC  \S2\
  132 00152 00000           CON(5)  =STO
  133               * File  RASBFRM.s       35
  134 00157 00000           CON(5)  ='
  135 0015C 00000           CON(5)  =DOIDNT
  136 00161 40              CON(2)  4
  137 00163 8444742         NIBASC  \HDG2\
            3
  138 0016B 00000           CON(5)  =STO
  139               * File  RASBFRM.s       36
  140 00170 00000           CON(5)  ='
  141 00175 00000           CON(5)  =DOIDNT
  142 0017A 20              CON(2)  2
  143 0017C 3513            NIBASC  \S1\
  144 00180 00000           CON(5)  =STO
  145               * File  RASBFRM.s       37
  146 00185 00000           CON(5)  ='
  147 0018A 00000           CON(5)  =DOIDNT
  148 0018F 40              CON(2)  4
  149 00191 8444741         NIBASC  \HDG1\
            3
  150 00199 00000           CON(5)  =STO
  151               * Display results
  152               * File  RASBFRM.s       39
  153 0019E 00000           CON(5)  =DOROMP
  154 001A3 000000          CON(6)  =~OutptForm
  155               * Run OUTPUT form
  156               * File  RASBFRM.s       40
  157 001A9 00000           CON(5)  =NOT?SEMI
  158               * IF OK pressed
  159               * File  RASBFRM.s       41
  160 001AE 00000           CON(5)  =7DROP
  161               * DROP form results
  162               * File  RASBFRM.s       42
  163 001B3 00000           CON(5)  =SEMI
  164 001B8 00000           CON(5)  =REPEAT
  165               * File  RASBFRM.s       43
  166 001BD 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)   Symbol Table                       RASBFRM.a      Page    2

 '                                 Ext                   -    47    53    59
                                          65    71    77   108   115   122   128
                                         134   140   146
 7DROP                             Ext                   -   160
 BEGIN                             Ext                   -    37
 CK0                               Ext                   -    34
 DOCOL                             Ext                   -    32    44
 DOIDNT                            Ext                   -    48    54    60
                                          66    72    78    84    87    90    93
                                          96    99   109   116   123   129   135
                                         141   147
 DOROMP                            Ext                   -    39   104   153
 NOT?SEMI                          Ext                   -   157
 REPEAT                            Ext                   -   164
=RomId                             Abs     803 #00000323 -    19
 SEMI                              Ext                   -   163   166
 STO                               Ext                   -    51    57    63
                                          69    75    81   112   119   126   132
                                         138   144   150
 WHILE                             Ext                   -    43
=xRASBFRM                          Rel       6 #00000006 -    30
 ~InptForm                         Ext                   -    40
 ~OutptForm                        Ext                   -   154
 ~ROASAMBA                         Ext                   -   105
 ~xRASBFRM                         Ext                   -    29
Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)   Statistics                         RASBFRM.a      Page    3

Input Parameters

  Source file name is RASBFRM.a

  Listing file name is RASBFRM.l

  Object file name is RASBFRM.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
