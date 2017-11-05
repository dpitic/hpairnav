Saturn Assembler                                       Sun May 24 09:26:49 2009
V3.0.9 (04/15/2007)                                      PLIST.a        Page    1

    1               * File  PLIST.s 1
    2               * RPL
    3               * File  PLIST.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Control Structure Eg\PLIST.s, part of the PLIST.hpp project, created by <> on 24/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Executes the first n of a series of procedures
    7               *                  encapsulated in a list.
    8               * COMPATIBILITY:   HP48, HP50
    9               * USAGE:     ( % -> )
   10               *
   11               * File  PLIST.s 9
   12 00000 00000           CON(5)  =DOCOL
   13               * File  PLIST.s 10
   14 00005 00000           CON(5)  =0LASTOWDOB!
   15               * Clear saved command name
   16               * File  PLIST.s 11
   17 0000A 00000           CON(5)  =CK1NOLASTWD
   18               * Require 1 argument
   19               * File  PLIST.s 12
   20 0000F 00000           CON(5)  =CK&DISPATCH1
   21 00014 00000           CON(5)  =real
   22 00019 00000           CON(5)  =DOCOL
   23               * Real number
   24               * File  PLIST.s 13
   25 0001E 00000           CON(5)  =ClrDA1IsStat
   26               * Suspend clock
   27               * File  PLIST.s 14
   28 00023 00000           CON(5)  =RECLAIMDISP
   29               * Clear stack display
   30               * File  PLIST.s 15
   31 00028 00000           CON(5)  =TURNMENUOFF
   32               * Turn off the menu
   33               * File  PLIST.s 16
   34 0002D 00000           CON(5)  =SetDAsTemp
   35               * Signal to freeze display
   36               * File  PLIST.s 17
   37 00032 00000           CON(5)  =COERCE
   38               * % -> #
   39               * File  PLIST.s 18
   40 00037 00000           CON(5)  =DUP#0=
   41 0003C 00000           CON(5)  =caseDROP
   42               * IF 0 then exit program
   43               * File  PLIST.s 19
   44 00041 00000           CON(5)  =DUP
   45 00046 00000           CON(5)  =FIVE
   46 0004B 00000           CON(5)  =#>
   47 00050 00000           CON(5)  =case
   48               * IF > 5, then
   49               * File  PLIST.s 20
   50 00055 00000           CON(5)  =SETSIZEERR
   51               * generate "Bad Argument Value" error
   52               * File  PLIST.s 21
   53 0005A 00000           CON(5)  =#1+_ONE_DO
   54               * File  PLIST.s 22
   55 0005F 00000           CON(5)  =DOLIST
   56               * List of procedures
   57               * File  PLIST.s 23
   58 00064 00000           CON(5)  =DOCOL
   59 00069 00000           CON(5)  =DOCSTR
   60 0006E B0000           CON(5)  11
   61 00073 F4E454          NIBASC  \ONE\
   62 00079 00000           CON(5)  =DISPROW1
   63 0007E 00000           CON(5)  =SEMI
   64               * File  PLIST.s 24
   65 00083 00000           CON(5)  =DOCOL
   66 00088 00000           CON(5)  =DOCSTR
   67 0008D B0000           CON(5)  11
   68 00092 4575F4          NIBASC  \TWO\
   69 00098 00000           CON(5)  =DISPROW2
   70 0009D 00000           CON(5)  =SEMI
   71               * File  PLIST.s 25
   72 000A2 00000           CON(5)  =DOCOL
   73 000A7 00000           CON(5)  =DOCSTR
   74 000AC F0000           CON(5)  15
   75 000B1 4584255         NIBASC  \THREE\
            454
   76 000BB 00000           CON(5)  =DISPROW3
   77 000C0 00000           CON(5)  =SEMI
   78               * File  PLIST.s 26
   79 000C5 00000           CON(5)  =DOCOL
   80 000CA 00000           CON(5)  =DOCSTR
   81 000CF D0000           CON(5)  13
   82 000D4 64F4552         NIBASC  \FOUR\
            5
   83 000DC 00000           CON(5)  =DISPROW4
   84 000E1 00000           CON(5)  =SEMI
   85               * File  PLIST.s 27
   86 000E6 00000           CON(5)  =DOCOL
   87 000EB 00000           CON(5)  =DOCSTR
   88 000F0 D0000           CON(5)  13
   89 000F5 6494655         NIBASC  \FIVE\
            4
   90 000FD 00000           CON(5)  =DISPROW5
   91 00102 00000           CON(5)  =SEMI
   92               * File  PLIST.s 28
   93 00107 00000           CON(5)  =SEMI
   94               * File  PLIST.s 29
   95 0010C 00000           CON(5)  =INDEX@
   96               * Loop index
   97               * File  PLIST.s 30
   98 00111 00000           CON(5)  =NTHCOMPDROP
   99               * Extract nth procedure
  100               * File  PLIST.s 31
  101 00116 00000           CON(5)  =EVAL
  102               * Execute nth procedure
  103               * File  PLIST.s 32
  104 0011B 00000           CON(5)  =LOOP
  105               * File  PLIST.s 33
  106 00120 00000           CON(5)  =SEMI
  107               * File  PLIST.s 34
  108 00125 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun May 24 09:26:49 2009
V3.0.9 (04/15/2007)   Symbol Table                       PLIST.a        Page    2

 #1+_ONE_DO                        Ext                   -    53
 #>                                Ext                   -    46
 0LASTOWDOB!                       Ext                   -    14
 CK&DISPATCH1                      Ext                   -    20
 CK1NOLASTWD                       Ext                   -    17
 COERCE                            Ext                   -    37
 ClrDA1IsStat                      Ext                   -    25
 DISPROW1                          Ext                   -    62
 DISPROW2                          Ext                   -    69
 DISPROW3                          Ext                   -    76
 DISPROW4                          Ext                   -    83
 DISPROW5                          Ext                   -    90
 DOCOL                             Ext                   -    12    22    58
                                          65    72    79    86
 DOCSTR                            Ext                   -    59    66    73
                                          80    87
 DOLIST                            Ext                   -    55
 DUP                               Ext                   -    44
 DUP#0=                            Ext                   -    40
 EVAL                              Ext                   -   101
 FIVE                              Ext                   -    45
 INDEX@                            Ext                   -    95
 LOOP                              Ext                   -   104
 NTHCOMPDROP                       Ext                   -    98
 RECLAIMDISP                       Ext                   -    28
 SEMI                              Ext                   -    63    70    77
                                          84    91    93   106   108
 SETSIZEERR                        Ext                   -    50
 SetDAsTemp                        Ext                   -    34
 TURNMENUOFF                       Ext                   -    31
 case                              Ext                   -    47
 caseDROP                          Ext                   -    41
 real                              Ext                   -    21
Saturn Assembler                                       Sun May 24 09:26:49 2009
V3.0.9 (04/15/2007)   Statistics                         PLIST.a        Page    3

Input Parameters

  Source file name is PLIST.a

  Listing file name is PLIST.l

  Object file name is PLIST.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
