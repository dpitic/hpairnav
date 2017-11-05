Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)                                      INFRM.a        Page    1

    1             * File  INFRM.s 1
    2             * RPL
    3             * File  INFRM.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INFRM.s, part of the INTERCEPT50.hpp project, created by <> on 19/06/2009
    5             **********************************************************************
    6             * NAME:          INFRM
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.7
    9             * DATE:          19 June 2009
   10             * LIBRARY #:     321h = 801d
   11             * COMPATIBILITY: HP50, HP48
   12             * DESCRIPTION:   Generates and displays the input/output form for the
   13             *                interception problem.
   14             *
   15             * File  INFRM.s 13
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
   26             *|| Resuming file INFRM.s at line 13
   27 00000 00000         CON(6)  =~xINFRM
            0
   28 00006       =xINFRM
   29             * File  INFRM.s 16
   30 00006 00000         CON(5)  =DOCOL
   31             * File  INFRM.s 17
   32 0000B 00000         CON(5)  =CK0
   33             * No arguments
   34             * File  INFRM.s 18
   35 00010 00000         CON(5)  =BEGIN
   36             * File  INFRM.s 19
   37 00015 00000         CON(5)  =DOROMP
   38 0001A 00000         CON(6)  =~INTERinputform
            0
   39             * Run the INPUT form
   40             * File  INFRM.s 20
   41 00020 00000         CON(5)  =WHILE
   42 00025 00000         CON(5)  =DOCOL
   43             * STO INPUT results of input form in global variables
   44             * File  INFRM.s 22
   45 0002A 00000         CON(5)  ='
   46 0002F 00000         CON(5)  =DOIDNT
   47 00034 30            CON(2)  3
   48 00036 74353         NIBASC  \GSS\
            5
   49 0003C 00000         CON(5)  =STO
   50             * File  INFRM.s 23
   51 00041 00000         CON(5)  ='
   52 00046 00000         CON(5)  =DOIDNT
   53 0004B 30            CON(2)  3
   54 0004D 45253         NIBASC  \TRS\
            5
   55 00053 00000         CON(5)  =STO
   56             * File  INFRM.s 24
   57 00058 00000         CON(5)  ='
   58 0005D 00000         CON(5)  =DOIDNT
   59 00062 40            CON(2)  4
   60 00064 D425D         NIBASC  \MRM2\
            423
   61 0006C 00000         CON(5)  =STO
   62             * File  INFRM.s 25
   63 00071 00000         CON(5)  ='
   64 00076 00000         CON(5)  =DOIDNT
   65 0007B 40            CON(2)  4
   66 0007D 4425D         NIBASC  \DRM2\
            423
   67 00085 00000         CON(5)  =STO
   68             * File  INFRM.s 26
   69 0008A 00000         CON(5)  ='
   70 0008F 00000         CON(5)  =DOIDNT
   71 00094 30            CON(2)  3
   72 00096 45143         NIBASC  \TAS\
            5
   73 0009C 00000         CON(5)  =STO
   74             * File  INFRM.s 27
   75 000A1 00000         CON(5)  ='
   76 000A6 00000         CON(5)  =DOIDNT
   77 000AB 20            CON(2)  2
   78 000AD 7535          NIBASC  \WS\
   79 000B1 00000         CON(5)  =STO
   80             * File  INFRM.s 28
   81 000B6 00000         CON(5)  ='
   82 000BB 00000         CON(5)  =DOIDNT
   83 000C0 20            CON(2)  2
   84 000C2 7544          NIBASC  \WD\
   85 000C6 00000         CON(5)  =STO
   86             * Solve the interception problem
   87             * File  INFRM.s 30
   88 000CB 00000         CON(5)  =DOIDNT
   89 000D0 20            CON(2)  2
   90 000D2 7544          NIBASC  \WD\
   91 000D6 00000         CON(5)  =DOIDNT
   92 000DB 20            CON(2)  2
   93 000DD 7535          NIBASC  \WS\
   94 000E1 00000         CON(5)  =DOIDNT
   95 000E6 30            CON(2)  3
   96 000E8 45143         NIBASC  \TAS\
            5
   97 000EE 00000         CON(5)  =DOIDNT
   98 000F3 40            CON(2)  4
   99 000F5 4425D         NIBASC  \DRM2\
            423
  100             * INPUT arguments
  101             * File  INFRM.s 31
  102 000FD 00000         CON(5)  =DOIDNT
  103 00102 40            CON(2)  4
  104 00104 D425D         NIBASC  \MRM2\
            423
  105 0010C 00000         CON(5)  =DOIDNT
  106 00111 30            CON(2)  3
  107 00113 45253         NIBASC  \TRS\
            5
  108 00119 00000         CON(5)  =DOIDNT
  109 0011E 30            CON(2)  3
  110 00120 74353         NIBASC  \GSS\
            5
  111             * File  INFRM.s 32
  112 00126 00000         CON(5)  =DOROMP
  113 0012B 00000         CON(6)  =~INTER
            0
  114             * -> %HDG %TC %GS %ETI
  115             * STO OUTPUT results in global variables
  116             * File  INFRM.s 34
  117 00131 00000         CON(5)  ='
  118 00136 00000         CON(5)  =DOIDNT
  119 0013B 30            CON(2)  3
  120 0013D 54459         NIBASC  \ETI\
            4
  121 00143 00000         CON(5)  =STO
  122             * File  INFRM.s 35
  123 00148 00000         CON(5)  ='
  124 0014D 00000         CON(5)  =DOIDNT
  125 00152 20            CON(2)  2
  126 00154 7435          NIBASC  \GS\
  127 00158 00000         CON(5)  =STO
  128             * File  INFRM.s 36
  129 0015D 00000         CON(5)  ='
  130 00162 00000         CON(5)  =DOIDNT
  131 00167 20            CON(2)  2
  132 00169 4534          NIBASC  \TC\
  133 0016D 00000         CON(5)  =STO
  134             * File  INFRM.s 37
  135 00172 00000         CON(5)  ='
  136 00177 00000         CON(5)  =DOIDNT
  137 0017C 30            CON(2)  3
  138 0017E 84447         NIBASC  \HDG\
            4
  139 00184 00000         CON(5)  =STO
  140             * File  INFRM.s 38
  141 00189 00000         CON(5)  =DOROMP
  142 0018E 00000         CON(6)  =~INTERoutputform
            0
  143             * Run the OUTPUT form
  144             * File  INFRM.s 39
  145 00194 00000         CON(5)  =IT
  146 00199 00000         CON(5)  =DOCOL
  147             * IF OK is pressed
  148             * File  INFRM.s 40
  149 0019E 00000         CON(5)  =4DROP
  150             * DROP form output
  151             * File  INFRM.s 41
  152 001A3 00000         CON(5)  =SEMI
  153             * File  INFRM.s 42
  154 001A8 00000         CON(5)  =SEMI
  155 001AD 00000         CON(5)  =REPEAT
  156             * File  INFRM.s 43
  157 001B2 00000         CON(5)  =SEMI
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Symbol Table                       INFRM.a        Page    2

 '                                 Ext                   -    45    51    57
                                          63    69    75    81   117   123   129
                                         135
 4DROP                             Ext                   -   149
 BEGIN                             Ext                   -    35
 CK0                               Ext                   -    32
 DOCOL                             Ext                   -    30    42   146
 DOIDNT                            Ext                   -    46    52    58
                                          64    70    76    82    88    91    94
                                          97   102   105   108   118   124   130
                                         136
 DOROMP                            Ext                   -    37   112   141
 IT                                Ext                   -   145
 REPEAT                            Ext                   -   155
=RomId                             Abs     801 #00000321 -    18
 SEMI                              Ext                   -   152   154   157
 STO                               Ext                   -    49    55    61
                                          67    73    79    85   121   127   133
                                         139
 WHILE                             Ext                   -    41
=xINFRM                            Rel       6 #00000006 -    28
 ~INTER                            Ext                   -   113
 ~INTERinputform                   Ext                   -    38
 ~INTERoutputform                  Ext                   -   142
 ~xINFRM                           Ext                   -    27
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Statistics                         INFRM.a        Page    3

Input Parameters

  Source file name is INFRM.a

  Listing file name is INFRM.l

  Object file name is INFRM.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
