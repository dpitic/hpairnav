Saturn Assembler                                       Sat May 23 17:21:43 2009
V3.0.9 (04/15/2007)                                      QRT2.a         Page    1

    1               * File  QRT2.s  1
    2               * RPL
    3               * File  QRT2.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Temporary Variables\QRT1.s, part of the QRT1.hpp project, created by <> on 23/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Solves the quadratic equation for real roots and
    7               *                  displays "Complex Roots" if the roots are complex.
    8               *                  This program is a rewrite of QRT1.s using
    9               *                  NULLLAM temporary variables.
   10               * COMPATIBILITY:   HP48, HP50
   11               * USAGE:     ( %a %b %c -> %root1 %root2 )
   12               *
   13               * File  QRT2.s  11
   14 00000 00000           CON(5)  =DOCOL
   15               * File  QRT2.s  12
   16 00005 00000           CON(5)  =0LASTOWDOB!
   17               * Clear saved command name
   18               * File  QRT2.s  13
   19 0000A 00000           CON(5)  =CK3NOLASTWD
   20               * Expect 3 arguments
   21               * File  QRT2.s  14
   22 0000F 00000           CON(5)  =CK&DISPATCH1
   23 00014 00000           CON(5)  =3REAL
   24 00019 00000           CON(5)  =DOCOL
   25               * 3 real numbers
   26               * File  QRT2.s  15
   27 0001E 00000           CON(5)  =%0
   28 00023 00000           CON(5)  =%0
   29               * %root1 %root2
   30               * File  QRT2.s  16
   31 00028 00000           CON(5)  ='
   32 0002D 00000           CON(5)  =DOCOL
   33 00032 00000           CON(5)  =6GETLAM
   34 00037 00000           CON(5)  =%2
   35 0003C 00000           CON(5)  =%*
   36 00041 00000           CON(5)  =%/
   37 00046 00000           CON(5)  =SEMI
   38               * Subroutine
   39               * File  QRT2.s  17
   40 0004B 00000           CON(5)  ='
   41 00050 00000           CON(5)  =NULLLAM
   42               * LAM a       [6]
   43               * File  QRT2.s  18
   44 00055 00000           CON(5)  ='
   45 0005A 00000           CON(5)  =NULLLAM
   46               * LAM b       [5]
   47               * File  QRT2.s  19
   48 0005F 00000           CON(5)  ='
   49 00064 00000           CON(5)  =NULLLAM
   50               * LAM c       [4]
   51               * File  QRT2.s  20
   52 00069 00000           CON(5)  ='
   53 0006E 00000           CON(5)  =NULLLAM
   54               * LAM root1   [3]
   55               * File  QRT2.s  21
   56 00073 00000           CON(5)  ='
   57 00078 00000           CON(5)  =NULLLAM
   58               * LAM root2   [2]
   59               * File  QRT2.s  22
   60 0007D 00000           CON(5)  ='
   61 00082 00000           CON(5)  =NULLLAM
   62               * LAM Subr    [1]
   63               * File  QRT2.s  23
   64 00087 00000           CON(5)  =SIX
   65 0008C 00000           CON(5)  =DOBIND
   66               * Create temporary environment
   67               * File  QRT2.s  24
   68 00091 00000           CON(5)  =DOCOL
   69               * File  QRT2.s  25
   70 00096 00000           CON(5)  =5GETLAM
   71 0009B 00000           CON(5)  =DUP
   72 000A0 00000           CON(5)  =%*
   73 000A5 00000           CON(5)  =6GETLAM
   74 000AA 00000           CON(5)  =4GETLAM
   75 000AF 00000           CON(5)  =%*
   76 000B4 00000           CON(5)  =%4
   77 000B9 00000           CON(5)  =%*
   78 000BE 00000           CON(5)  =%-
   79               * b^2 - 4*a*c
   80               * File  QRT2.s  26
   81 000C3 00000           CON(5)  =DUP
   82 000C8 00000           CON(5)  =%0<
   83 000CD 00000           CON(5)  =casedrop
   84 000D2 00000           CON(5)  =DOCSTR
   85 000D7 F1000           CON(5)  31
   86 000DC 34F6D60         NIBASC  \Complex Roots\
            7C65687
            0225F6F64737

   87               * IF < 0, exit
   88               * File  QRT2.s  27
   89 000F6 00000           CON(5)  =%SQRT
   90               * SQRT[b^2 - 4*a*c]
   91               * File  QRT2.s  28
   92 000FB 00000           CON(5)  =5GETLAM
   93 00100 00000           CON(5)  =%CHS
   94 00105 00000           CON(5)  =OVER
   95 0010A 00000           CON(5)  =%+
   96 0010F 00000           CON(5)  =1GETLAM
   97 00114 00000           CON(5)  =EVAL
   98               * 1st root
   99               * File  QRT2.s  29
  100 00119 00000           CON(5)  =3PUTLAM
  101               * File  QRT2.s  30
  102 0011E 00000           CON(5)  =5GETLAM
  103 00123 00000           CON(5)  =%CHS
  104 00128 00000           CON(5)  =SWAP
  105 0012D 00000           CON(5)  =%-
  106 00132 00000           CON(5)  =1GETLAM
  107 00137 00000           CON(5)  =EVAL
  108               * 2nd root
  109               * File  QRT2.s  31
  110 0013C 00000           CON(5)  =2PUTLAM
  111               * File  QRT2.s  32
  112 00141 00000           CON(5)  =3GETLAM
  113               * Display 1st root
  114               * File  QRT2.s  33
  115 00146 00000           CON(5)  =2GETLAM
  116               * Display 2nd root
  117               * File  QRT2.s  34
  118 0014B 00000           CON(5)  =SEMI
  119               * File  QRT2.s  35
  120 00150 00000           CON(5)  =ABND
  121               * Abandon temporary environment
  122               * File  QRT2.s  36
  123 00155 00000           CON(5)  =SEMI
  124               * File  QRT2.s  37
  125 0015A 00000           CON(5)  =SEMI
Saturn Assembler                                       Sat May 23 17:21:43 2009
V3.0.9 (04/15/2007)   Symbol Table                       QRT2.a         Page    2

 %*                                Ext                   -    35    72    75
                                          77
 %+                                Ext                   -    95
 %-                                Ext                   -    78   105
 %/                                Ext                   -    36
 %0                                Ext                   -    27    28
 %0<                               Ext                   -    82
 %2                                Ext                   -    34
 %4                                Ext                   -    76
 %CHS                              Ext                   -    93   103
 %SQRT                             Ext                   -    89
 '                                 Ext                   -    31    40    44
                                          48    52    56    60
 0LASTOWDOB!                       Ext                   -    16
 1GETLAM                           Ext                   -    96   106
 2GETLAM                           Ext                   -   115
 2PUTLAM                           Ext                   -   110
 3GETLAM                           Ext                   -   112
 3PUTLAM                           Ext                   -   100
 3REAL                             Ext                   -    23
 4GETLAM                           Ext                   -    74
 5GETLAM                           Ext                   -    70    92   102
 6GETLAM                           Ext                   -    33    73
 ABND                              Ext                   -   120
 CK&DISPATCH1                      Ext                   -    22
 CK3NOLASTWD                       Ext                   -    19
 DOBIND                            Ext                   -    65
 DOCOL                             Ext                   -    14    24    32
                                          68
 DOCSTR                            Ext                   -    84
 DUP                               Ext                   -    71    81
 EVAL                              Ext                   -    97   107
 NULLLAM                           Ext                   -    41    45    49
                                          53    57    61
 OVER                              Ext                   -    94
 SEMI                              Ext                   -    37   118   123
                                         125
 SIX                               Ext                   -    64
 SWAP                              Ext                   -   104
 casedrop                          Ext                   -    83
Saturn Assembler                                       Sat May 23 17:21:43 2009
V3.0.9 (04/15/2007)   Statistics                         QRT2.a         Page    3

Input Parameters

  Source file name is QRT2.a

  Listing file name is QRT2.l

  Object file name is QRT2.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
