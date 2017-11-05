Saturn Assembler                                       Sat May 23 16:40:41 2009
V3.0.9 (04/15/2007)                                      QRT1.a         Page    1

    1               * File  QRT1.s  1
    2               * RPL
    3               * File  QRT1.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Temporary Variables\QRT1.s, part of the QRT1.hpp project, created by <> on 23/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Solves the quadratic equation for real roots and
    7               *                  displays "Complex Roots" if the roots are complex.
    8               * COMPATIBILITY:   HP48
    9               * USAGE:     ( %a %b %c -> %root1 %root2 )
   10               *
   11               * File  QRT1.s  9
   12 00000 00000           CON(5)  =DOCOL
   13               * File  QRT1.s  10
   14 00005 00000           CON(5)  =0LASTOWDOB!
   15               * Clear saved command name
   16               * File  QRT1.s  11
   17 0000A 00000           CON(5)  =CK3NOLASTWD
   18               * Expect 3 arguments
   19               * File  QRT1.s  12
   20 0000F 00000           CON(5)  =CK&DISPATCH1
   21 00014 00000           CON(5)  =3REAL
   22 00019 00000           CON(5)  =DOCOL
   23               * 3 real numbers
   24               * File  QRT1.s  13
   25 0001E 00000           CON(5)  =%0
   26 00023 00000           CON(5)  =%0
   27               * %root1 %root2
   28               * File  QRT1.s  14
   29 00028 00000           CON(5)  ='
   30 0002D 00000           CON(5)  =DOCOL
   31 00032 00000           CON(5)  =DOLAM
   32 00037 10              CON(2)  1
   33 00039 16              NIBASC  \a\
   34 0003B 00000           CON(5)  =%2
   35 00040 00000           CON(5)  =%*
   36 00045 00000           CON(5)  =%/
   37 0004A 00000           CON(5)  =SEMI
   38               * Subroutine
   39               * File  QRT1.s  15
   40 0004F 00000           CON(5)  =DOLIST
   41               * File  QRT1.s  16
   42 00054 00000           CON(5)  =DOLAM
   43 00059 10              CON(2)  1
   44 0005B 16              NIBASC  \a\
   45               * File  QRT1.s  17
   46 0005D 00000           CON(5)  =DOLAM
   47 00062 10              CON(2)  1
   48 00064 26              NIBASC  \b\
   49               * File  QRT1.s  18
   50 00066 00000           CON(5)  =DOLAM
   51 0006B 10              CON(2)  1
   52 0006D 36              NIBASC  \c\
   53               * File  QRT1.s  19
   54 0006F 00000           CON(5)  =DOLAM
   55 00074 50              CON(2)  5
   56 00076 27F6F64         NIBASC  \root1\
            713
   57               * File  QRT1.s  20
   58 00080 00000           CON(5)  =DOLAM
   59 00085 50              CON(2)  5
   60 00087 27F6F64         NIBASC  \root2\
            723
   61               * File  QRT1.s  21
   62 00091 00000           CON(5)  =DOLAM
   63 00096 40              CON(2)  4
   64 00098 3557262         NIBASC  \Subr\
            7
   65               * File  QRT1.s  22
   66 000A0 00000           CON(5)  =SEMI
   67               * File  QRT1.s  23
   68 000A5 00000           CON(5)  =BIND
   69               * Create temporary environment
   70               * File  QRT1.s  24
   71 000AA 00000           CON(5)  =DOCOL
   72               * File  QRT1.s  25
   73 000AF 00000           CON(5)  =DOLAM
   74 000B4 10              CON(2)  1
   75 000B6 26              NIBASC  \b\
   76 000B8 00000           CON(5)  =DUP
   77 000BD 00000           CON(5)  =%*
   78 000C2 00000           CON(5)  =DOLAM
   79 000C7 10              CON(2)  1
   80 000C9 16              NIBASC  \a\
   81 000CB 00000           CON(5)  =DOLAM
   82 000D0 10              CON(2)  1
   83 000D2 36              NIBASC  \c\
   84 000D4 00000           CON(5)  =%*
   85 000D9 00000           CON(5)  =%4
   86 000DE 00000           CON(5)  =%*
   87 000E3 00000           CON(5)  =%-
   88               * b^2 - 4*a*c
   89               * File  QRT1.s  26
   90 000E8 00000           CON(5)  =DUP
   91 000ED 00000           CON(5)  =%0<
   92 000F2 00000           CON(5)  =casedrop
   93 000F7 00000           CON(5)  =DOCSTR
   94 000FC F1000           CON(5)  31
   95 00101 34F6D60         NIBASC  \Complex Roots\
            7C65687
            0225F6F64737

   96               * IF < 0, exit
   97               * File  QRT1.s  27
   98 0011B 00000           CON(5)  =%SQRT
   99               * File  QRT1.s  28
  100 00120 00000           CON(5)  =DOLAM
  101 00125 10              CON(2)  1
  102 00127 26              NIBASC  \b\
  103 00129 00000           CON(5)  =%CHS
  104 0012E 00000           CON(5)  =OVER
  105 00133 00000           CON(5)  =%+
  106 00138 00000           CON(5)  =DOLAM
  107 0013D 40              CON(2)  4
  108 0013F 3557262         NIBASC  \Subr\
            7
  109 00147 00000           CON(5)  =EVAL
  110               * 1st root
  111               * File  QRT1.s  29
  112 0014C 00000           CON(5)  ='
  113 00151 00000           CON(5)  =DOLAM
  114 00156 50              CON(2)  5
  115 00158 27F6F64         NIBASC  \root1\
            713
  116 00162 00000           CON(5)  =STO
  117               * File  QRT1.s  30
  118 00167 00000           CON(5)  =DOLAM
  119 0016C 10              CON(2)  1
  120 0016E 26              NIBASC  \b\
  121 00170 00000           CON(5)  =%CHS
  122 00175 00000           CON(5)  =SWAP
  123 0017A 00000           CON(5)  =%-
  124 0017F 00000           CON(5)  =DOLAM
  125 00184 40              CON(2)  4
  126 00186 3557262         NIBASC  \Subr\
            7
  127 0018E 00000           CON(5)  =EVAL
  128               * 2nd root
  129               * File  QRT1.s  31
  130 00193 00000           CON(5)  ='
  131 00198 00000           CON(5)  =DOLAM
  132 0019D 50              CON(2)  5
  133 0019F 27F6F64         NIBASC  \root2\
            723
  134 001A9 00000           CON(5)  =STO
  135               * File  QRT1.s  32
  136 001AE 00000           CON(5)  =DOLAM
  137 001B3 50              CON(2)  5
  138 001B5 27F6F64         NIBASC  \root1\
            713
  139               * File  QRT1.s  33
  140 001BF 00000           CON(5)  =DOLAM
  141 001C4 50              CON(2)  5
  142 001C6 27F6F64         NIBASC  \root2\
            723
  143               * File  QRT1.s  34
  144 001D0 00000           CON(5)  =SEMI
  145               * File  QRT1.s  35
  146 001D5 00000           CON(5)  =ABND
  147               * Abandon temporary environment
  148               * File  QRT1.s  36
  149 001DA 00000           CON(5)  =SEMI
  150               * File  QRT1.s  37
  151 001DF 00000           CON(5)  =SEMI
Saturn Assembler                                       Sat May 23 16:40:41 2009
V3.0.9 (04/15/2007)   Symbol Table                       QRT1.a         Page    2

 %*                                Ext                   -    35    77    84
                                          86
 %+                                Ext                   -   105
 %-                                Ext                   -    87   123
 %/                                Ext                   -    36
 %0                                Ext                   -    25    26
 %0<                               Ext                   -    91
 %2                                Ext                   -    34
 %4                                Ext                   -    85
 %CHS                              Ext                   -   103   121
 %SQRT                             Ext                   -    98
 '                                 Ext                   -    29   112   130
 0LASTOWDOB!                       Ext                   -    14
 3REAL                             Ext                   -    21
 ABND                              Ext                   -   146
 BIND                              Ext                   -    68
 CK&DISPATCH1                      Ext                   -    20
 CK3NOLASTWD                       Ext                   -    17
 DOCOL                             Ext                   -    12    22    30
                                          71
 DOCSTR                            Ext                   -    93
 DOLAM                             Ext                   -    31    42    46
                                          50    54    58    62    73    78    81
                                         100   106   113   118   124   131   136
                                         140
 DOLIST                            Ext                   -    40
 DUP                               Ext                   -    76    90
 EVAL                              Ext                   -   109   127
 OVER                              Ext                   -   104
 SEMI                              Ext                   -    37    66   144
                                         149   151
 STO                               Ext                   -   116   134
 SWAP                              Ext                   -   122
 casedrop                          Ext                   -    92
Saturn Assembler                                       Sat May 23 16:40:41 2009
V3.0.9 (04/15/2007)   Statistics                         QRT1.a         Page    3

Input Parameters

  Source file name is QRT1.a

  Listing file name is QRT1.l

  Object file name is QRT1.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
