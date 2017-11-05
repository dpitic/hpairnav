Saturn Assembler                                       Thu May 14 19:44:15 2009
V3.0.9 (04/15/2007)                                      CHS4.a         Page    1

    1             * File  CHS4.s  1
    2             * RPL
    3             * File  CHS4.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS4.s, part of the CHS4.hpp project, created by <> on 14/05/2009
    5             ********************************************************************
    6             * DESCRIPTION:     Take a real number from the stack and displays a
    7             *                  choose box with string options which perform
    8             *                  real number mathematical operations.
    9             * COMPATIBILITY:   HP48
   10             * USAGE:     ( % -> %' )
   11             *
   12             * File  CHS4.s  10
   13             * File  CHS4.s  11
   14 00000 00000         CON(5)  =DOCOL
   15             * File  CHS4.s  12
   16 00005 00000         CON(5)  =0LASTOWDOB!
   17             * Clear saved command name
   18             * File  CHS4.s  13
   19 0000A 00000         CON(5)  =CK1NOLASTWD
   20             * 1 argument required
   21             * File  CHS4.s  14
   22 0000F 00000         CON(5)  =CK&DISPATCH1
   23 00014 00000         CON(5)  =real
   24 00019 00000         CON(5)  =DOCOL
   25             * Real number
   26             * Choose box parameters
   27             * File  CHS4.s  16
   28 0001E 00000         CON(5)  ='DROPFALSE
   29             * Message handler
   30             * File  CHS4.s  17
   31 00023 00000         CON(5)  =DOCSTR
   32 00028 D2000         CON(5)  45
   33 0002D 3484F         NIBASC  \CHOOSE AN OPERATION:\
            4F435
            540214E402F4055425144594F4E4A3

   34             * Title $
   35             * File  CHS4.s  18
   36 00055 00000         CON(5)  =SEVENTEEN
   37             * Decompile object 17d = 010001b = Display 1st ob, No decomp.
   38             * File  CHS4.s  19
   39 0005A 00000         CON(5)  =DOLIST
   40             * Data list
   41             * File  CHS4.s  20
   42 0005F 00000         CON(5)  =DOLIST
   43 00064 00000         CON(5)  =DOCSTR
   44 00069 F0000         CON(5)  15
   45 0006E 14444         NIBASC  \ADD 1\
            40213
   46 00078 00000         CON(5)  =%1+
   47 0007D 00000         CON(5)  =SEMI
   48             * File  CHS4.s  21
   49 00082 00000         CON(5)  =DOLIST
   50 00087 00000         CON(5)  =DOCSTR
   51 0008C F0000         CON(5)  15
   52 00091 14444         NIBASC  \ADD 2\
            40223
   53 0009B 00000         CON(5)  =DOCOL
   54 000A0 00000         CON(5)  =%2
   55 000A5 00000         CON(5)  =%+
   56 000AA 00000         CON(5)  =SEMI
   57 000AF 00000         CON(5)  =SEMI
   58             * File  CHS4.s  22
   59 000B4 00000         CON(5)  =DOLIST
   60 000B9 00000         CON(5)  =DOCSTR
   61 000BE F0000         CON(5)  15
   62 000C3 14444         NIBASC  \ADD 3\
            40233
   63 000CD 00000         CON(5)  =DOCOL
   64 000D2 00000         CON(5)  =%3
   65 000D7 00000         CON(5)  =%+
   66 000DC 00000         CON(5)  =SEMI
   67 000E1 00000         CON(5)  =SEMI
   68             * File  CHS4.s  23
   69 000E6 00000         CON(5)  =DOLIST
   70 000EB 00000         CON(5)  =DOCSTR
   71 000F0 B1000         CON(5)  27
   72 000F5 44946         NIBASC  \DIVIDE BY 4\
            59444
            540224950243

   73 0010B 00000         CON(5)  =DOCOL
   74 00110 00000         CON(5)  =%4
   75 00115 00000         CON(5)  =%/
   76 0011A 00000         CON(5)  =SEMI
   77 0011F 00000         CON(5)  =SEMI
   78             * File  CHS4.s  24
   79 00124 00000         CON(5)  =DOLIST
   80 00129 00000         CON(5)  =DOCSTR
   81 0012E 91000         CON(5)  25
   82 00133 35552         NIBASC  \SUBTRACT 5\
            44525
            1434450253

   83 00147 00000         CON(5)  =DOCOL
   84 0014C 00000         CON(5)  =%5
   85 00151 00000         CON(5)  =%-
   86 00156 00000         CON(5)  =SEMI
   87 0015B 00000         CON(5)  =SEMI
   88             * File  CHS4.s  25
   89 00160 00000         CON(5)  =DOLIST
   90 00165 00000         CON(5)  =DOCSTR
   91 0016A F1000         CON(5)  31
   92 0016F D455C         NIBASC  \MULTIPLY BY 6\
            44594
            05C4950224950263

   93 00189 00000         CON(5)  =DOCOL
   94 0018E 00000         CON(5)  =%6
   95 00193 00000         CON(5)  =%*
   96 00198 00000         CON(5)  =SEMI
   97 0019D 00000         CON(5)  =SEMI
   98             * File  CHS4.s  26
   99 001A2 00000         CON(5)  =SEMI
  100             * File  CHS4.s  27
  101 001A7 00000         CON(5)  =ONE
  102             * #FocusPos
  103             * File  CHS4.s  28
  104 001AC 00000         CON(5)  =DOROMP
  105 001B1 00000         CON(6)  =~Choose
            0
  106             * Run choose box -> { ob } FLAG
  107             * File  CHS4.s  29
  108 001B7 00000         CON(5)  =NOT?SEMI
  109             * TRUE -> FALSE -> Exit
  110             * File  CHS4.s  30
  111 001BC 00000         CON(5)  =TWO
  112 001C1 00000         CON(5)  =NTHCOMPDROP
  113             * { ob } #2 -> { ob' }
  114             * File  CHS4.s  31
  115 001C6 00000         CON(5)  =EVAL
  116             * EVAL ob'
  117             * File  CHS4.s  32
  118 001CB 00000         CON(5)  =SEMI
  119             * File  CHS4.s  33
  120 001D0 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu May 14 19:44:15 2009
V3.0.9 (04/15/2007)   Symbol Table                       CHS4.a         Page    2

 %*                                Ext                   -    95
 %+                                Ext                   -    55    65
 %-                                Ext                   -    85
 %/                                Ext                   -    75
 %1+                               Ext                   -    46
 %2                                Ext                   -    54
 %3                                Ext                   -    64
 %4                                Ext                   -    74
 %5                                Ext                   -    84
 %6                                Ext                   -    94
 'DROPFALSE                        Ext                   -    28
 0LASTOWDOB!                       Ext                   -    16
 CK&DISPATCH1                      Ext                   -    22
 CK1NOLASTWD                       Ext                   -    19
 DOCOL                             Ext                   -    14    24    53
                                          63    73    83    93
 DOCSTR                            Ext                   -    31    43    50
                                          60    70    80    90
 DOLIST                            Ext                   -    39    42    49
                                          59    69    79    89
 DOROMP                            Ext                   -   104
 EVAL                              Ext                   -   115
 NOT?SEMI                          Ext                   -   108
 NTHCOMPDROP                       Ext                   -   112
 ONE                               Ext                   -   101
 SEMI                              Ext                   -    47    56    57
                                          66    67    76    77    86    87    96
                                          97    99   118   120
 SEVENTEEN                         Ext                   -    36
 TWO                               Ext                   -   111
 real                              Ext                   -    23
 ~Choose                           Ext                   -   105
Saturn Assembler                                       Thu May 14 19:44:15 2009
V3.0.9 (04/15/2007)   Statistics                         CHS4.a         Page    3

Input Parameters

  Source file name is CHS4.a

  Listing file name is CHS4.l

  Object file name is CHS4.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
