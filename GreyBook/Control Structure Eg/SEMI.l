Saturn Assembler                                       Sun May 24 09:42:03 2009
V3.0.9 (04/15/2007)                                      SEMI.a         Page    1

    1               * File  SEMI.s  1
    2               * RPL
    3               * File  SEMI.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Control Structure Eg\PLIST.s, part of the PLIST.hpp project, created by <> on 24/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Executes the first n of a series of procedures
    7               *                  based on n FLAGS which are pushed on the stack.
    8               * COMPATIBILITY:   HP48, HP50
    9               * USAGE:     ( % -> )
   10               *
   11               * File  SEMI.s  9
   12 00000 00000           CON(5)  =DOCOL
   13               * File  SEMI.s  10
   14 00005 00000           CON(5)  =0LASTOWDOB!
   15               * Clear saved command name
   16               * File  SEMI.s  11
   17 0000A 00000           CON(5)  =CK1NOLASTWD
   18               * Require 1 argument
   19               * File  SEMI.s  12
   20 0000F 00000           CON(5)  =CK&DISPATCH1
   21 00014 00000           CON(5)  =real
   22 00019 00000           CON(5)  =DOCOL
   23               * Real number
   24               * File  SEMI.s  13
   25 0001E 00000           CON(5)  =ClrDA1IsStat
   26               * Suspend clock
   27               * File  SEMI.s  14
   28 00023 00000           CON(5)  =RECLAIMDISP
   29               * Clear stack display
   30               * File  SEMI.s  15
   31 00028 00000           CON(5)  =TURNMENUOFF
   32               * Turn off the menu
   33               * File  SEMI.s  16
   34 0002D 00000           CON(5)  =SetDAsTemp
   35               * Signal to freeze display
   36               * File  SEMI.s  17
   37 00032 00000           CON(5)  =COERCE
   38               * % -> #
   39               * File  SEMI.s  18
   40 00037 00000           CON(5)  =DUP#0=
   41 0003C 00000           CON(5)  =caseDROP
   42               * IF 0 then exit program
   43               * File  SEMI.s  19
   44 00041 00000           CON(5)  =DUP
   45 00046 00000           CON(5)  =FIVE
   46 0004B 00000           CON(5)  =#>
   47 00050 00000           CON(5)  =case
   48               * IF > 5, then
   49               * File  SEMI.s  20
   50 00055 00000           CON(5)  =SETSIZEERR
   51               * generate "Bad Argument Value" error
   52               * File  SEMI.s  21
   53 0005A 00000           CON(5)  =TRUE
   54               * PUSH TRUE on the stack to signal end of process
   55               * File  SEMI.s  22
   56 0005F 00000           CON(5)  =SWAP
   57               * Get procedure number #
   58               * File  SEMI.s  23
   59 00064 00000           CON(5)  =ZERO
   60 00069 00000           CON(5)  =DO
   61 0006E 00000           CON(5)  =FALSE
   62 00073 00000           CON(5)  =LOOP
   63               * PUSH n FALSE flags on the stack
   64               * File  SEMI.s  24
   65 00078 00000           CON(5)  =?SEMI
   66               * Test 1st FLAG
   67               * File  SEMI.s  25
   68 0007D 00000           CON(5)  =DOCSTR
   69 00082 B0000           CON(5)  11
   70 00087 F4E454          NIBASC  \ONE\
   71 0008D 00000           CON(5)  =DISPROW1
   72               * 1st procedure
   73               * File  SEMI.s  26
   74 00092 00000           CON(5)  =?SEMI
   75               * Test 2nd FLAG
   76               * File  SEMI.s  27
   77 00097 00000           CON(5)  =DOCSTR
   78 0009C B0000           CON(5)  11
   79 000A1 4575F4          NIBASC  \TWO\
   80 000A7 00000           CON(5)  =DISPROW2
   81               * 2nd procedure
   82               * File  SEMI.s  28
   83 000AC 00000           CON(5)  =?SEMI
   84               * Test 3rd FLAG
   85               * File  SEMI.s  29
   86 000B1 00000           CON(5)  =DOCSTR
   87 000B6 F0000           CON(5)  15
   88 000BB 4584255         NIBASC  \THREE\
            454
   89 000C5 00000           CON(5)  =DISPROW3
   90               * 3rd procedure
   91               * File  SEMI.s  30
   92 000CA 00000           CON(5)  =?SEMI
   93               * Test 4th FLAG
   94               * File  SEMI.s  31
   95 000CF 00000           CON(5)  =DOCSTR
   96 000D4 D0000           CON(5)  13
   97 000D9 64F4552         NIBASC  \FOUR\
            5
   98 000E1 00000           CON(5)  =DISPROW4
   99               * 4th procedure
  100               * File  SEMI.s  32
  101 000E6 00000           CON(5)  =?SEMI
  102               * Test 5th FLAG
  103               * File  SEMI.s  33
  104 000EB 00000           CON(5)  =DOCSTR
  105 000F0 D0000           CON(5)  13
  106 000F5 6494655         NIBASC  \FIVE\
            4
  107 000FD 00000           CON(5)  =DISPROW5
  108               * 5th procedure
  109               * File  SEMI.s  34
  110 00102 00000           CON(5)  =DROP
  111               * DROP TRUE FLAG if all 5 procedures used
  112               * File  SEMI.s  35
  113 00107 00000           CON(5)  =SEMI
  114               * File  SEMI.s  36
  115 0010C 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun May 24 09:42:03 2009
V3.0.9 (04/15/2007)   Symbol Table                       SEMI.a         Page    2

 #>                                Ext                   -    46
 0LASTOWDOB!                       Ext                   -    14
 ?SEMI                             Ext                   -    65    74    83
                                          92   101
 CK&DISPATCH1                      Ext                   -    20
 CK1NOLASTWD                       Ext                   -    17
 COERCE                            Ext                   -    37
 ClrDA1IsStat                      Ext                   -    25
 DISPROW1                          Ext                   -    71
 DISPROW2                          Ext                   -    80
 DISPROW3                          Ext                   -    89
 DISPROW4                          Ext                   -    98
 DISPROW5                          Ext                   -   107
 DO                                Ext                   -    60
 DOCOL                             Ext                   -    12    22
 DOCSTR                            Ext                   -    68    77    86
                                          95   104
 DROP                              Ext                   -   110
 DUP                               Ext                   -    44
 DUP#0=                            Ext                   -    40
 FALSE                             Ext                   -    61
 FIVE                              Ext                   -    45
 LOOP                              Ext                   -    62
 RECLAIMDISP                       Ext                   -    28
 SEMI                              Ext                   -   113   115
 SETSIZEERR                        Ext                   -    50
 SWAP                              Ext                   -    56
 SetDAsTemp                        Ext                   -    34
 TRUE                              Ext                   -    53
 TURNMENUOFF                       Ext                   -    31
 ZERO                              Ext                   -    59
 case                              Ext                   -    47
 caseDROP                          Ext                   -    41
 real                              Ext                   -    21
Saturn Assembler                                       Sun May 24 09:42:03 2009
V3.0.9 (04/15/2007)   Statistics                         SEMI.a         Page    3

Input Parameters

  Source file name is SEMI.a

  Listing file name is SEMI.l

  Object file name is SEMI.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
