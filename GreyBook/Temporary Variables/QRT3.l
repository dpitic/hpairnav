Saturn Assembler                                       Sat May 23 17:10:07 2009
V3.0.9 (04/15/2007)                                      QRT3.a         Page    1

    1               * File  QRT3.s  1
    2               * RPL
    3               * File  QRT3.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Temporary Variables\QRT1.s, part of the QRT1.hpp project, created by <> on 23/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Solves the quadratic equation for real roots and
    7               *                  displays "Complex Roots" if the roots are complex.
    8               *                  This program is a rewrite of QRT2.s using
    9               *                  NULLLAM temporary variables which are given names
   10               *                  using DEFINE.
   11               * COMPATIBILITY:   HP48, HP50
   12               * USAGE:     ( %a %b %c -> %root1 %root2 )
   13               *
   14               * File  QRT3.s  12
   15               * File  QRT3.s  13
   16               * File  QRT3.s  14
   17               * File  QRT3.s  15
   18               * File  QRT3.s  16
   19               * File  QRT3.s  17
   20               * File  QRT3.s  18
   21               * File  QRT3.s  19
   22               * File  QRT3.s  20
   23 00000 00000           CON(5)  =DOCOL
   24               * File  QRT3.s  21
   25 00005 00000           CON(5)  =0LASTOWDOB!
   26               * Clear saved command name
   27               * File  QRT3.s  22
   28 0000A 00000           CON(5)  =CK3NOLASTWD
   29               * Expect 3 arguments
   30               * File  QRT3.s  23
   31 0000F 00000           CON(5)  =CK&DISPATCH1
   32 00014 00000           CON(5)  =3REAL
   33 00019 00000           CON(5)  =DOCOL
   34               * 3 real numbers
   35               * File  QRT3.s  24
   36 0001E 00000           CON(5)  =%0
   37 00023 00000           CON(5)  =%0
   38               * %root1 %root2
   39               * File  QRT3.s  25
   40 00028 00000           CON(5)  ='
   41 0002D 00000           CON(5)  =DOCOL
   42 00032 00000           CON(5)  =6GETLAM
   43 00037 00000           CON(5)  =%2
   44 0003C 00000           CON(5)  =%*
   45 00041 00000           CON(5)  =%/
   46 00046 00000           CON(5)  =SEMI
   47               * Subroutine
   48               * File  QRT3.s  26
   49 0004B 00000           CON(5)  =DOLIST
   50               * File  QRT3.s  27
   51 00050 00000           CON(5)  =NULLLAM
   52               * LAM a       [6]
   53               * File  QRT3.s  28
   54 00055 00000           CON(5)  =NULLLAM
   55               * LAM b       [5]
   56               * File  QRT3.s  29
   57 0005A 00000           CON(5)  =NULLLAM
   58               * LAM c       [4]
   59               * File  QRT3.s  30
   60 0005F 00000           CON(5)  =NULLLAM
   61               * LAM root1   [3]
   62               * File  QRT3.s  31
   63 00064 00000           CON(5)  =NULLLAM
   64               * LAM root2   [2]
   65               * File  QRT3.s  32
   66 00069 00000           CON(5)  =NULLLAM
   67               * LAM Subr    [1]
   68               * File  QRT3.s  33
   69 0006E 00000           CON(5)  =SEMI
   70               * File  QRT3.s  34
   71 00073 00000           CON(5)  =BIND
   72               * Create temporary environment
   73               * File  QRT3.s  35
   74 00078 00000           CON(5)  =5GETLAM
   75 0007D 00000           CON(5)  =DUP
   76 00082 00000           CON(5)  =%*
   77 00087 00000           CON(5)  =6GETLAM
   78 0008C 00000           CON(5)  =4GETLAM
   79 00091 00000           CON(5)  =%*
   80 00096 00000           CON(5)  =%4
   81 0009B 00000           CON(5)  =%*
   82 000A0 00000           CON(5)  =%-
   83               * b^2 - 4*a*c
   84               * File  QRT3.s  36
   85 000A5 00000           CON(5)  =DUP
   86 000AA 00000           CON(5)  =%0<
   87 000AF 00000           CON(5)  =casedrop
   88 000B4 00000           CON(5)  =DOCOL
   89               * IF < 0, exit
   90               * File  QRT3.s  37
   91 000B9 00000           CON(5)  =DOCSTR
   92 000BE F1000           CON(5)  31
   93 000C3 34F6D60         NIBASC  \Complex Roots\
            7C65687
            0225F6F64737

   94               * File  QRT3.s  38
   95 000DD 00000           CON(5)  =ABND
   96               * File  QRT3.s  39
   97 000E2 00000           CON(5)  =SEMI
   98               * File  QRT3.s  40
   99 000E7 00000           CON(5)  =%SQRT
  100               * SQRT[b^2 - 4*a*c]
  101               * File  QRT3.s  41
  102 000EC 00000           CON(5)  =5GETLAM
  103 000F1 00000           CON(5)  =%CHS
  104 000F6 00000           CON(5)  =OVER
  105 000FB 00000           CON(5)  =%+
  106 00100 00000           CON(5)  =1GETLAM
  107 00105 00000           CON(5)  =EVAL
  108               * 1st root
  109               * File  QRT3.s  42
  110 0010A 00000           CON(5)  =3PUTLAM
  111               * File  QRT3.s  43
  112 0010F 00000           CON(5)  =5GETLAM
  113 00114 00000           CON(5)  =%CHS
  114 00119 00000           CON(5)  =SWAP
  115 0011E 00000           CON(5)  =%-
  116 00123 00000           CON(5)  =1GETLAM
  117 00128 00000           CON(5)  =EVAL
  118               * 2nd root
  119               * File  QRT3.s  44
  120 0012D 00000           CON(5)  =2PUTLAM
  121               * File  QRT3.s  45
  122 00132 00000           CON(5)  =3GETLAM
  123               * Display 1st root
  124               * File  QRT3.s  46
  125 00137 00000           CON(5)  =2GETLAM
  126               * Display 2nd root
  127               * File  QRT3.s  47
  128 0013C 00000           CON(5)  =ABND
  129               * Abandon temporary environment
  130               * File  QRT3.s  48
  131 00141 00000           CON(5)  =SEMI
  132               * File  QRT3.s  49
  133 00146 00000           CON(5)  =SEMI
Saturn Assembler                                       Sat May 23 17:10:07 2009
V3.0.9 (04/15/2007)   Symbol Table                       QRT3.a         Page    2

 %*                                Ext                   -    44    76    79
                                          81
 %+                                Ext                   -   105
 %-                                Ext                   -    82   115
 %/                                Ext                   -    45
 %0                                Ext                   -    36    37
 %0<                               Ext                   -    86
 %2                                Ext                   -    43
 %4                                Ext                   -    80
 %CHS                              Ext                   -   103   113
 %SQRT                             Ext                   -    99
 '                                 Ext                   -    40
 0LASTOWDOB!                       Ext                   -    25
 1GETLAM                           Ext                   -   106   116
 2GETLAM                           Ext                   -   125
 2PUTLAM                           Ext                   -   120
 3GETLAM                           Ext                   -   122
 3PUTLAM                           Ext                   -   110
 3REAL                             Ext                   -    32
 4GETLAM                           Ext                   -    78
 5GETLAM                           Ext                   -    74   102   112
 6GETLAM                           Ext                   -    42    77
 ABND                              Ext                   -    95   128
 BIND                              Ext                   -    71
 CK&DISPATCH1                      Ext                   -    31
 CK3NOLASTWD                       Ext                   -    28
 DOCOL                             Ext                   -    23    33    41
                                          88
 DOCSTR                            Ext                   -    91
 DOLIST                            Ext                   -    49
 DUP                               Ext                   -    75    85
 EVAL                              Ext                   -   107   117
 NULLLAM                           Ext                   -    51    54    57
                                          60    63    66
 OVER                              Ext                   -   104
 SEMI                              Ext                   -    46    69    97
                                         131   133
 SWAP                              Ext                   -   114
 casedrop                          Ext                   -    87
Saturn Assembler                                       Sat May 23 17:10:07 2009
V3.0.9 (04/15/2007)   Statistics                         QRT3.a         Page    3

Input Parameters

  Source file name is QRT3.a

  Listing file name is QRT3.l

  Object file name is QRT3.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
