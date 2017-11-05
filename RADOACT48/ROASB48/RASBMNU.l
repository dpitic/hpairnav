Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)                                      RASBMNU.a      Page    1

    1             * File  RASBMNU.s       1
    2             * RPL
    3             * File  RASBMNU.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\RASBMNU.s, part of the ROASB50.hpp project, created by <> on 23/06/2009
    5             **********************************************************************
    6             * NAME:          RASBMNU
    7             * AUTHOR:        Dan Pitic
    8             * LIBRARY #:     323h = 803d
    9             * VERSION:       1.4
   10             * DATE:          22 June 2009
   11             * COMPATIBILITY: HP50  ( Requires CONVARG )
   12             *                HP48  ( DO NOT USE CONVARG )
   13             * DESCRIPTION:   Generates and displays the CST menu for the library.
   14             *
   15             * File  RASBMNU.s       13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROASB48\ROASB48.h
   17
   18             =RomId  EQU     #323
   19             * ROMID set to 323
   20
   21
   22
   23
   24
   25
   26             *|| Resuming file RASBMNU.s at line 13
   27 00000 00000         CON(6)  =~xRASBMNU
            0
   28 00006       =xRASBMNU
   29             * File  RASBMNU.s       15
   30 00006 00000         CON(5)  =DOCOL
   31             * File  RASBMNU.s       16
   32 0000B 00000         CON(5)  =CK0
   33             * No arguments
   34             * File  RASBMNU.s       17
   35 00010 00000         CON(5)  =DOLIST
   36             * File  RASBMNU.s       18
   37 00015 00000         CON(5)  =DOIDNT
   38 0001A 20            CON(2)  2
   39 0001C 7544          NIBASC  \WD\
   40 00020 00000         CON(5)  =DOIDNT
   41 00025 20            CON(2)  2
   42 00027 7535          NIBASC  \WS\
   43 0002B 00000         CON(5)  =DOIDNT
   44 00030 30            CON(2)  3
   45 00032 45341         NIBASC  \TC1\
            3
   46 00038 00000         CON(5)  =DOIDNT
   47 0003D 10            CON(2)  1
   48 0003F 45            NIBASC  \T\
   49 00041 00000         CON(5)  =DOIDNT
   50 00046 30            CON(2)  3
   51 00048 45143         NIBASC  \TAS\
            5
   52 0004E 00000         CON(5)  =DOIDNT
   53 00053 40            CON(2)  4
   54 00055 4484F         NIBASC  \DHOM\
            4D4
   55             * INPUT variables
   56             * File  RASBMNU.s       19
   57 0005D 00000         CON(5)  =DOLIST
   58             * File  RASBMNU.s       20
   59 00062 00000         CON(5)  =DOCSTR
   60 00067 F0000         CON(5)  15
   61 0006C 35F4C         NIBASC  \SOLVE\
            46554
   62 00076 00000         CON(5)  =DOCOL
   63             * Solve menu option
   64             * File  RASBMNU.s       21
   65 0007B 00000         CON(5)  =DOIDNT
   66 00080 20            CON(2)  2
   67 00082 7544          NIBASC  \WD\
   68 00086 00000         CON(5)  =DOIDNT
   69 0008B 20            CON(2)  2
   70 0008D 7535          NIBASC  \WS\
   71 00091 00000         CON(5)  =DOIDNT
   72 00096 30            CON(2)  3
   73 00098 45341         NIBASC  \TC1\
            3
   74 0009E 00000         CON(5)  =DOIDNT
   75 000A3 10            CON(2)  1
   76 000A5 45            NIBASC  \T\
   77 000A7 00000         CON(5)  =DOIDNT
   78 000AC 30            CON(2)  3
   79 000AE 45143         NIBASC  \TAS\
            5
   80 000B4 00000         CON(5)  =DOIDNT
   81 000B9 40            CON(2)  4
   82 000BB 4484F         NIBASC  \DHOM\
            4D4
   83             * Arguments
   84             * HP50 ONLY - Argument checking
   85             *        CONVARG                                        ( ***** HP50 ONLY ***** )
   86             * File  RASBMNU.s       24
   87 000C3 00000         CON(5)  =DOROMP
   88 000C8 00000         CON(6)  =~ROASAMBA
            0
   89             * Call function
   90             * File  RASBMNU.s       25
   91 000CE 00000         CON(5)  ='
   92 000D3 00000         CON(5)  =DOIDNT
   93 000D8 40            CON(2)  4
   94 000DA 4464D         NIBASC  \DFMH\
            484
   95 000E2 00000         CON(5)  =STO
   96             * STO OUTPUT results
   97             * File  RASBMNU.s       26
   98 000E7 00000         CON(5)  ='
   99 000EC 00000         CON(5)  =DOIDNT
  100 000F1 10            CON(2)  1
  101 000F3 25            NIBASC  \R\
  102 000F5 00000         CON(5)  =STO
  103             * in global variables
  104             * File  RASBMNU.s       27
  105 000FA 00000         CON(5)  ='
  106 000FF 00000         CON(5)  =DOIDNT
  107 00104 20            CON(2)  2
  108 00106 4513          NIBASC  \T1\
  109 0010A 00000         CON(5)  =STO
  110             * File  RASBMNU.s       28
  111 0010F 00000         CON(5)  ='
  112 00114 00000         CON(5)  =DOIDNT
  113 00119 20            CON(2)  2
  114 0011B 3523          NIBASC  \S2\
  115 0011F 00000         CON(5)  =STO
  116             * File  RASBMNU.s       29
  117 00124 00000         CON(5)  ='
  118 00129 00000         CON(5)  =DOIDNT
  119 0012E 40            CON(2)  4
  120 00130 84447         NIBASC  \HDG2\
            423
  121 00138 00000         CON(5)  =STO
  122             * File  RASBMNU.s       30
  123 0013D 00000         CON(5)  ='
  124 00142 00000         CON(5)  =DOIDNT
  125 00147 20            CON(2)  2
  126 00149 3513          NIBASC  \S1\
  127 0014D 00000         CON(5)  =STO
  128             * File  RASBMNU.s       31
  129 00152 00000         CON(5)  ='
  130 00157 00000         CON(5)  =DOIDNT
  131 0015C 40            CON(2)  4
  132 0015E 84447         NIBASC  \HDG1\
            413
  133 00166 00000         CON(5)  =STO
  134             * File  RASBMNU.s       32
  135 0016B 00000         CON(5)  =SEMI
  136             * File  RASBMNU.s       33
  137 00170 00000         CON(5)  =SEMI
  138             * File  RASBMNU.s       34
  139 00175 00000         CON(5)  =DOIDNT
  140 0017A 20            CON(2)  2
  141 0017C 4513          NIBASC  \T1\
  142 00180 00000         CON(5)  =DOIDNT
  143 00185 10            CON(2)  1
  144 00187 25            NIBASC  \R\
  145 00189 00000         CON(5)  =DOIDNT
  146 0018E 40            CON(2)  4
  147 00190 4464D         NIBASC  \DFMH\
            484
  148 00198 00000         CON(5)  =DOIDNT
  149 0019D 40            CON(2)  4
  150 0019F 84447         NIBASC  \HDG1\
            413
  151 001A7 00000         CON(5)  =DOIDNT
  152 001AC 20            CON(2)  2
  153 001AE 3513          NIBASC  \S1\
  154 001B2 00000         CON(5)  =DOIDNT
  155 001B7 40            CON(2)  4
  156 001B9 84447         NIBASC  \HDG2\
            423
  157 001C1 00000         CON(5)  =DOIDNT
  158 001C6 20            CON(2)  2
  159 001C8 3523          NIBASC  \S2\
  160             * OUTPUT variables
  161             * File  RASBMNU.s       35
  162 001CC 00000         CON(5)  =DOLIST
  163 001D1 00000         CON(5)  =SEMI
  164             * File  RASBMNU.s       36
  165 001D6 00000         CON(5)  =DOLIST
  166 001DB 00000         CON(5)  =SEMI
  167             * File  RASBMNU.s       37
  168 001E0 00000         CON(5)  =DOLIST
  169             * File  RASBMNU.s       38
  170 001E5 00000         CON(5)  =DOCSTR
  171 001EA D0000         CON(5)  13
  172 001EF D454E         NIBASC  \MENU\
            455
  173 001F7 00000         CON(5)  =DOCOL
  174             * Display menu, menu option
  175             * File  RASBMNU.s       39
  176 001FC 00000         CON(5)  =DOROMP
  177 00201 00000         CON(6)  =~xRASBMNU
            0
  178             * File  RASBMNU.s       40
  179 00207 00000         CON(5)  =SEMI
  180             * File  RASBMNU.s       41
  181 0020C 00000         CON(5)  =SEMI
  182             * File  RASBMNU.s       42
  183 00211 00000         CON(5)  =DOLIST
  184             * File  RASBMNU.s       43
  185 00216 00000         CON(5)  =DOCSTR
  186 0021B B0000         CON(5)  11
  187 00220 74559         NIBASC  \GUI\
            4
  188 00226 00000         CON(5)  =DOCOL
  189             * Run GUI menu option
  190             * File  RASBMNU.s       44
  191 0022B 00000         CON(5)  =DOROMP
  192 00230 00000         CON(6)  =~xRASBFRM
            0
  193             * File  RASBMNU.s       45
  194 00236 00000         CON(5)  =SEMI
  195             * File  RASBMNU.s       46
  196 0023B 00000         CON(5)  =SEMI
  197             * File  RASBMNU.s       47
  198 00240 00000         CON(5)  =SEMI
  199             * File  RASBMNU.s       48
  200 00245 00000         CON(5)  =xMENU
  201             * Generate and display CST menu
  202             * File  RASBMNU.s       49
  203 0024A 00000         CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)   Symbol Table                       RASBMNU.a      Page    2

 '                                 Ext                   -    91    98   105
                                         111   117   123   129
 CK0                               Ext                   -    32
 DOCOL                             Ext                   -    30    62   173
                                         188
 DOCSTR                            Ext                   -    59   170   185
 DOIDNT                            Ext                   -    37    40    43
                                          46    49    52    65    68    71    74
                                          77    80    92    99   106   112   118
                                         124   130   139   142   145   148   151
                                         154   157
 DOLIST                            Ext                   -    35    57   162
                                         165   168   183
 DOROMP                            Ext                   -    87   176   191
=RomId                             Abs     803 #00000323 -    18
 SEMI                              Ext                   -   135   137   163
                                         166   179   181   194   196   198   203
 STO                               Ext                   -    95   102   109
                                         115   121   127   133
 xMENU                             Ext                   -   200
=xRASBMNU                          Rel       6 #00000006 -    28
 ~ROASAMBA                         Ext                   -    88
 ~xRASBFRM                         Ext                   -   192
 ~xRASBMNU                         Ext                   -    27   177
Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)   Statistics                         RASBMNU.a      Page    3

Input Parameters

  Source file name is RASBMNU.a

  Listing file name is RASBMNU.l

  Object file name is RASBMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
