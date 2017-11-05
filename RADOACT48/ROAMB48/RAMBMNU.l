Saturn Assembler                                       Wed Jun 24 20:34:11 2009
V3.0.9 (04/15/2007)                                      RAMBMNU.a      Page    1

    1             * File  RAMBMNU.s       1
    2             * RPL
    3             * File  RAMBMNU.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\RAMBMNU.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5             **********************************************************************
    6             * NAME:          RAMBMNU
    7             * LIBRARY #:     324h = 804d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.6
   10             * DATE:          24 June 2009
   11             * COMPATIBILITY: HP50  ( Must use CONVARG )
   12             *                HP48  ( DO NOT use CONVARG )
   13             * DESCRIPTION:   Creates and displays the CST menu for the library.
   14             *
   15             * File  RAMBMNU.s       13
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
   27             *|| Resuming file RAMBMNU.s at line 13
   28 00000 00000         CON(6)  =~xRAMBMNU
            0
   29 00006       =xRAMBMNU
   30             * File  RAMBMNU.s       15
   31 00006 00000         CON(5)  =DOCOL
   32             * File  RAMBMNU.s       16
   33 0000B 00000         CON(5)  =CK0
   34             * No arguments
   35             * File  RAMBMNU.s       17
   36 00010 00000         CON(5)  =DOLIST
   37             * File  RAMBMNU.s       18
   38 00015 00000         CON(5)  =DOIDNT
   39 0001A 20            CON(2)  2
   40 0001C 7544          NIBASC  \WD\
   41 00020 00000         CON(5)  =DOIDNT
   42 00025 20            CON(2)  2
   43 00027 7535          NIBASC  \WS\
   44 0002B 00000         CON(5)  =DOIDNT
   45 00030 30            CON(2)  3
   46 00032 45253         NIBASC  \TRS\
            5
   47 00038 00000         CON(5)  =DOIDNT
   48 0003D 30            CON(2)  3
   49 0003F 74353         NIBASC  \GSS\
            5
   50 00045 00000         CON(5)  =DOIDNT
   51 0004A 30            CON(2)  3
   52 0004C 45143         NIBASC  \TAS\
            5
   53             * INPUT global variables
   54             * File  RAMBMNU.s       19
   55 00052 00000         CON(5)  =DOIDNT
   56 00057 30            CON(2)  3
   57 00059 45341         NIBASC  \TC1\
            3
   58 0005F 00000         CON(5)  =DOIDNT
   59 00064 10            CON(2)  1
   60 00066 45            NIBASC  \T\
   61             * File  RAMBMNU.s       20
   62 00068 00000         CON(5)  =DOLIST
   63             * File  RAMBMNU.s       21
   64 0006D 00000         CON(5)  =DOCSTR
   65 00072 F0000         CON(5)  15
   66 00077 35F4C         NIBASC  \SOLVE\
            46554
   67 00081 00000         CON(5)  =DOCOL
   68             * Solve menu option
   69             * File  RAMBMNU.s       22
   70 00086 00000         CON(5)  =DOIDNT
   71 0008B 20            CON(2)  2
   72 0008D 7544          NIBASC  \WD\
   73 00091 00000         CON(5)  =DOIDNT
   74 00096 20            CON(2)  2
   75 00098 7535          NIBASC  \WS\
   76 0009C 00000         CON(5)  =DOIDNT
   77 000A1 30            CON(2)  3
   78 000A3 45253         NIBASC  \TRS\
            5
   79 000A9 00000         CON(5)  =DOIDNT
   80 000AE 30            CON(2)  3
   81 000B0 74353         NIBASC  \GSS\
            5
   82 000B6 00000         CON(5)  =DOIDNT
   83 000BB 30            CON(2)  3
   84 000BD 45143         NIBASC  \TAS\
            5
   85             * INPUT arguments
   86             * File  RAMBMNU.s       23
   87 000C3 00000         CON(5)  =DOIDNT
   88 000C8 30            CON(2)  3
   89 000CA 45341         NIBASC  \TC1\
            3
   90 000D0 00000         CON(5)  =DOIDNT
   91 000D5 10            CON(2)  1
   92 000D7 45            NIBASC  \T\
   93             ** HP50 ONLY - Argument checking
   94             *        CONVARG                             ( **** HP50 0NLY **** )
   95             * File  RAMBMNU.s       26
   96 000D9 00000         CON(5)  =DOROMP
   97 000DE 00000         CON(6)  =~ROAMB
            0
   98             * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
   99             * File  RAMBMNU.s       27
  100 000E4 00000         CON(5)  ='
  101 000E9 00000         CON(5)  =DOIDNT
  102 000EE 30            CON(2)  3
  103 000F0 D4342         NIBASC  \MC2\
            3
  104 000F6 00000         CON(5)  =STO
  105             * STO results in OUTPUT global variables
  106             * File  RAMBMNU.s       28
  107 000FB 00000         CON(5)  ='
  108 00100 00000         CON(5)  =DOIDNT
  109 00105 10            CON(2)  1
  110 00107 25            NIBASC  \R\
  111 00109 00000         CON(5)  =STO
  112             * File  RAMBMNU.s       29
  113 0010E 00000         CON(5)  ='
  114 00113 00000         CON(5)  =DOIDNT
  115 00118 20            CON(2)  2
  116 0011A 4523          NIBASC  \T2\
  117 0011E 00000         CON(5)  =STO
  118             * File  RAMBMNU.s       30
  119 00123 00000         CON(5)  ='
  120 00128 00000         CON(5)  =DOIDNT
  121 0012D 20            CON(2)  2
  122 0012F 4513          NIBASC  \T1\
  123 00133 00000         CON(5)  =STO
  124             * File  RAMBMNU.s       31
  125 00138 00000         CON(5)  ='
  126 0013D 00000         CON(5)  =DOIDNT
  127 00142 30            CON(2)  3
  128 00144 45342         NIBASC  \TC2\
            3
  129 0014A 00000         CON(5)  =STO
  130             * File  RAMBMNU.s       32
  131 0014F 00000         CON(5)  ='
  132 00154 00000         CON(5)  =DOIDNT
  133 00159 30            CON(2)  3
  134 0015B 74352         NIBASC  \GS2\
            3
  135 00161 00000         CON(5)  =STO
  136             * File  RAMBMNU.s       33
  137 00166 00000         CON(5)  ='
  138 0016B 00000         CON(5)  =DOIDNT
  139 00170 40            CON(2)  4
  140 00172 84447         NIBASC  \HDG2\
            423
  141 0017A 00000         CON(5)  =STO
  142             * File  RAMBMNU.s       34
  143 0017F 00000         CON(5)  ='
  144 00184 00000         CON(5)  =DOIDNT
  145 00189 30            CON(2)  3
  146 0018B 74351         NIBASC  \GS1\
            3
  147 00191 00000         CON(5)  =STO
  148             * File  RAMBMNU.s       35
  149 00196 00000         CON(5)  ='
  150 0019B 00000         CON(5)  =DOIDNT
  151 001A0 40            CON(2)  4
  152 001A2 84447         NIBASC  \HDG1\
            413
  153 001AA 00000         CON(5)  =STO
  154             * File  RAMBMNU.s       36
  155 001AF 00000         CON(5)  =SEMI
  156             * File  RAMBMNU.s       37
  157 001B4 00000         CON(5)  =SEMI
  158             * File  RAMBMNU.s       38
  159 001B9 00000         CON(5)  =DOIDNT
  160 001BE 10            CON(2)  1
  161 001C0 25            NIBASC  \R\
  162 001C2 00000         CON(5)  =DOIDNT
  163 001C7 20            CON(2)  2
  164 001C9 4513          NIBASC  \T1\
  165 001CD 00000         CON(5)  =DOIDNT
  166 001D2 40            CON(2)  4
  167 001D4 84447         NIBASC  \HDG1\
            413
  168 001DC 00000         CON(5)  =DOIDNT
  169 001E1 30            CON(2)  3
  170 001E3 74351         NIBASC  \GS1\
            3
  171 001E9 00000         CON(5)  =DOIDNT
  172 001EE 20            CON(2)  2
  173 001F0 4523          NIBASC  \T2\
  174             * OUTPUT global variables
  175             * File  RAMBMNU.s       39
  176 001F4 00000         CON(5)  =DOIDNT
  177 001F9 40            CON(2)  4
  178 001FB 84447         NIBASC  \HDG2\
            423
  179 00203 00000         CON(5)  =DOIDNT
  180 00208 30            CON(2)  3
  181 0020A 45342         NIBASC  \TC2\
            3
  182 00210 00000         CON(5)  =DOIDNT
  183 00215 30            CON(2)  3
  184 00217 74352         NIBASC  \GS2\
            3
  185 0021D 00000         CON(5)  =DOIDNT
  186 00222 30            CON(2)  3
  187 00224 D4342         NIBASC  \MC2\
            3
  188             * File  RAMBMNU.s       40
  189 0022A 00000         CON(5)  =DOLIST
  190             * File  RAMBMNU.s       41
  191 0022F 00000         CON(5)  =DOCSTR
  192 00234 D0000         CON(5)  13
  193 00239 D454E         NIBASC  \MENU\
            455
  194 00241 00000         CON(5)  =DOCOL
  195             * Menu, menu option
  196             * File  RAMBMNU.s       42
  197 00246 00000         CON(5)  =DOROMP
  198 0024B 00000         CON(6)  =~xRAMBMNU
            0
  199             * Create and display CST menu
  200             * File  RAMBMNU.s       43
  201 00251 00000         CON(5)  =SEMI
  202             * File  RAMBMNU.s       44
  203 00256 00000         CON(5)  =SEMI
  204             * File  RAMBMNU.s       45
  205 0025B 00000         CON(5)  =DOLIST
  206             * File  RAMBMNU.s       46
  207 00260 00000         CON(5)  =DOCSTR
  208 00265 B0000         CON(5)  11
  209 0026A 74559         NIBASC  \GUI\
            4
  210 00270 00000         CON(5)  =DOCOL
  211             * GUI menu option
  212             * File  RAMBMNU.s       47
  213 00275 00000         CON(5)  =DOROMP
  214 0027A 00000         CON(6)  =~xRAMBFRM
            0
  215             * File  RAMBMNU.s       48
  216 00280 00000         CON(5)  =SEMI
  217             * File  RAMBMNU.s       49
  218 00285 00000         CON(5)  =SEMI
  219             * File  RAMBMNU.s       50
  220 0028A 00000         CON(5)  =SEMI
  221             * File  RAMBMNU.s       51
  222 0028F 00000         CON(5)  =xMENU
  223             * Create & display CST menu
  224             * File  RAMBMNU.s       52
  225 00294 00000         CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 24 20:34:11 2009
V3.0.9 (04/15/2007)   Symbol Table                       RAMBMNU.a      Page    2

 '                                 Ext                   -   100   107   113
                                         119   125   131   137   143   149
 CK0                               Ext                   -    33
 DOCOL                             Ext                   -    31    67   194
                                         210
 DOCSTR                            Ext                   -    64   191   207
 DOIDNT                            Ext                   -    38    41    44
                                          47    50    55    58    70    73    76
                                          79    82    87    90   101   108   114
                                         120   126   132   138   144   150   159
                                         162   165   168   171   176   179   182
                                         185
 DOLIST                            Ext                   -    36    62   189
                                         205
 DOROMP                            Ext                   -    96   197   213
=RomId                             Abs     804 #00000324 -    18
 SEMI                              Ext                   -   155   157   201
                                         203   216   218   220   225
 STO                               Ext                   -   104   111   117
                                         123   129   135   141   147   153
 xMENU                             Ext                   -   222
=xRAMBMNU                          Rel       6 #00000006 -    29
 ~ROAMB                            Ext                   -    97
 ~xRAMBFRM                         Ext                   -   214
 ~xRAMBMNU                         Ext                   -    28   198
Saturn Assembler                                       Wed Jun 24 20:34:11 2009
V3.0.9 (04/15/2007)   Statistics                         RAMBMNU.a      Page    3

Input Parameters

  Source file name is RAMBMNU.a

  Listing file name is RAMBMNU.l

  Object file name is RAMBMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
