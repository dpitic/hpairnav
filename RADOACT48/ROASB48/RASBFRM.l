Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)                                      RASBFRM.a      Page    1

    1             * File  RASBFRM.s       1
    2             * RPL
    3             * File  RASBFRM.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\RASBFRM.s, part of the ROASB50.hpp project, created by <> on 23/06/2009
    5             **********************************************************************
    6             * NAME:          RASBFRM
    7             * AUTHOR:        Dan Pitic
    8             * LIBRARY #:     323h = 803d
    9             * VERSION:       1.4
   10             * DATE:          22 June 2009
   11             * COMPATIBILITY: HP50
   12             *                HP48
   13             * DESCRIPTION:   Runs the GUI for the library application to accept
   14             *                INPUT and display OUTPUT results.
   15             *
   16             * File  RASBFRM.s       14
   17             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROASB48\ROASB48.h
   18
   19             =RomId  EQU     #323
   20             * ROMID set to 323
   21
   22
   23
   24
   25
   26
   27             *|| Resuming file RASBFRM.s at line 14
   28 00000 00000         CON(6)  =~xRASBFRM
            0
   29 00006       =xRASBFRM
   30             * File  RASBFRM.s       16
   31 00006 00000         CON(5)  =DOCOL
   32             * File  RASBFRM.s       17
   33 0000B 00000         CON(5)  =CK0
   34             * No arguments
   35             * File  RASBFRM.s       18
   36 00010 00000         CON(5)  =BEGIN
   37             * File  RASBFRM.s       19
   38 00015 00000         CON(5)  =DOROMP
   39 0001A 00000         CON(6)  =~InptForm
            0
   40             * Run INPUT form
   41             * File  RASBFRM.s       20
   42 00020 00000         CON(5)  =WHILE
   43 00025 00000         CON(5)  =DOCOL
   44             * STO results of input form in global variables
   45             * File  RASBFRM.s       22
   46 0002A 00000         CON(5)  ='
   47 0002F 00000         CON(5)  =DOIDNT
   48 00034 40            CON(2)  4
   49 00036 4484F         NIBASC  \DHOM\
            4D4
   50 0003E 00000         CON(5)  =STO
   51             * File  RASBFRM.s       23
   52 00043 00000         CON(5)  ='
   53 00048 00000         CON(5)  =DOIDNT
   54 0004D 30            CON(2)  3
   55 0004F 45143         NIBASC  \TAS\
            5
   56 00055 00000         CON(5)  =STO
   57             * File  RASBFRM.s       24
   58 0005A 00000         CON(5)  ='
   59 0005F 00000         CON(5)  =DOIDNT
   60 00064 10            CON(2)  1
   61 00066 45            NIBASC  \T\
   62 00068 00000         CON(5)  =STO
   63             * File  RASBFRM.s       25
   64 0006D 00000         CON(5)  ='
   65 00072 00000         CON(5)  =DOIDNT
   66 00077 30            CON(2)  3
   67 00079 45341         NIBASC  \TC1\
            3
   68 0007F 00000         CON(5)  =STO
   69             * File  RASBFRM.s       26
   70 00084 00000         CON(5)  ='
   71 00089 00000         CON(5)  =DOIDNT
   72 0008E 20            CON(2)  2
   73 00090 7535          NIBASC  \WS\
   74 00094 00000         CON(5)  =STO
   75             * File  RASBFRM.s       27
   76 00099 00000         CON(5)  ='
   77 0009E 00000         CON(5)  =DOIDNT
   78 000A3 20            CON(2)  2
   79 000A5 7544          NIBASC  \WD\
   80 000A9 00000         CON(5)  =STO
   81             * Solve problem
   82             * File  RASBFRM.s       29
   83 000AE 00000         CON(5)  =DOIDNT
   84 000B3 20            CON(2)  2
   85 000B5 7544          NIBASC  \WD\
   86 000B9 00000         CON(5)  =DOIDNT
   87 000BE 20            CON(2)  2
   88 000C0 7535          NIBASC  \WS\
   89 000C4 00000         CON(5)  =DOIDNT
   90 000C9 30            CON(2)  3
   91 000CB 45341         NIBASC  \TC1\
            3
   92 000D1 00000         CON(5)  =DOIDNT
   93 000D6 10            CON(2)  1
   94 000D8 45            NIBASC  \T\
   95 000DA 00000         CON(5)  =DOIDNT
   96 000DF 30            CON(2)  3
   97 000E1 45143         NIBASC  \TAS\
            5
   98 000E7 00000         CON(5)  =DOIDNT
   99 000EC 40            CON(2)  4
  100 000EE 4484F         NIBASC  \DHOM\
            4D4
  101             * Arguments
  102             * File  RASBFRM.s       30
  103 000F6 00000         CON(5)  =DOROMP
  104 000FB 00000         CON(6)  =~ROASAMBA
            0
  105             * Call function
  106             * File  RASBFRM.s       31
  107 00101 00000         CON(5)  ='
  108 00106 00000         CON(5)  =DOIDNT
  109 0010B 40            CON(2)  4
  110 0010D 4464D         NIBASC  \DFMH\
            484
  111 00115 00000         CON(5)  =STO
  112             * STO OUTPUT results
  113             * File  RASBFRM.s       32
  114 0011A 00000         CON(5)  ='
  115 0011F 00000         CON(5)  =DOIDNT
  116 00124 10            CON(2)  1
  117 00126 25            NIBASC  \R\
  118 00128 00000         CON(5)  =STO
  119             * in global variables
  120             * File  RASBFRM.s       33
  121 0012D 00000         CON(5)  ='
  122 00132 00000         CON(5)  =DOIDNT
  123 00137 20            CON(2)  2
  124 00139 4513          NIBASC  \T1\
  125 0013D 00000         CON(5)  =STO
  126             * File  RASBFRM.s       34
  127 00142 00000         CON(5)  ='
  128 00147 00000         CON(5)  =DOIDNT
  129 0014C 20            CON(2)  2
  130 0014E 3523          NIBASC  \S2\
  131 00152 00000         CON(5)  =STO
  132             * File  RASBFRM.s       35
  133 00157 00000         CON(5)  ='
  134 0015C 00000         CON(5)  =DOIDNT
  135 00161 40            CON(2)  4
  136 00163 84447         NIBASC  \HDG2\
            423
  137 0016B 00000         CON(5)  =STO
  138             * File  RASBFRM.s       36
  139 00170 00000         CON(5)  ='
  140 00175 00000         CON(5)  =DOIDNT
  141 0017A 20            CON(2)  2
  142 0017C 3513          NIBASC  \S1\
  143 00180 00000         CON(5)  =STO
  144             * File  RASBFRM.s       37
  145 00185 00000         CON(5)  ='
  146 0018A 00000         CON(5)  =DOIDNT
  147 0018F 40            CON(2)  4
  148 00191 84447         NIBASC  \HDG1\
            413
  149 00199 00000         CON(5)  =STO
  150             * Display results
  151             * File  RASBFRM.s       39
  152 0019E 00000         CON(5)  =DOROMP
  153 001A3 00000         CON(6)  =~OutptForm
            0
  154             * Run OUTPUT form
  155             * File  RASBFRM.s       40
  156 001A9 00000         CON(5)  =NOT?SEMI
  157             * IF OK pressed
  158             * File  RASBFRM.s       41
  159 001AE 00000         CON(5)  =7DROP
  160             * DROP form results
  161             * File  RASBFRM.s       42
  162 001B3 00000         CON(5)  =SEMI
  163 001B8 00000         CON(5)  =REPEAT
  164             * File  RASBFRM.s       43
  165 001BD 00000         CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)   Symbol Table                       RASBFRM.a      Page    2

 '                                 Ext                   -    46    52    58
                                          64    70    76   107   114   121   127
                                         133   139   145
 7DROP                             Ext                   -   159
 BEGIN                             Ext                   -    36
 CK0                               Ext                   -    33
 DOCOL                             Ext                   -    31    43
 DOIDNT                            Ext                   -    47    53    59
                                          65    71    77    83    86    89    92
                                          95    98   108   115   122   128   134
                                         140   146
 DOROMP                            Ext                   -    38   103   152
 NOT?SEMI                          Ext                   -   156
 REPEAT                            Ext                   -   163
=RomId                             Abs     803 #00000323 -    19
 SEMI                              Ext                   -   162   165
 STO                               Ext                   -    50    56    62
                                          68    74    80   111   118   125   131
                                         137   143   149
 WHILE                             Ext                   -    42
=xRASBFRM                          Rel       6 #00000006 -    29
 ~InptForm                         Ext                   -    39
 ~OutptForm                        Ext                   -   153
 ~ROASAMBA                         Ext                   -   104
 ~xRASBFRM                         Ext                   -    28
Saturn Assembler                                       Tue Jun 23 18:49:36 2009
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
