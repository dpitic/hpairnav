Saturn Assembler                                       Sat May 23 14:03:55 2009
V3.0.9 (04/15/2007)                                      CASE1.a        Page    1

    1             * File  CASE1.s 1
    2             * RPL
    3             * File  CASE1.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\PgmFlowCntrl\CASE1.s, part of the CASE1.hpp project, created by <> on 17/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Accepts a real number argument and displays
    7             *                  "Zero", "One", "Two" or "Other" as appropriate.
    8             *
    9             * File  CASE1.s 7
   10 00000 00000         CON(5)  =DOCOL
   11             * File  CASE1.s 8
   12 00005 00000         CON(5)  =0LASTOWDOB!
   13             * Clear saved command name
   14             * File  CASE1.s 9
   15 0000A 00000         CON(5)  =CK1NOLASTWD
   16             * Expect 1 argument
   17             * File  CASE1.s 10
   18 0000F 00000         CON(5)  =CK&DISPATCH1
   19 00014 00000         CON(5)  =real
   20 00019 00000         CON(5)  =DOCOL
   21             * Real number
   22             * File  CASE1.s 11
   23 0001E 00000         CON(5)  =COERCE
   24             * % -> #
   25             * File  CASE1.s 12
   26 00023 00000         CON(5)  =DUP#0=
   27 00028 00000         CON(5)  =case
   28 0002D 00000         CON(5)  =DOCOL
   29             * IF # = 0 [ # # #0 #= -> # FLAG -> # ]
   30             * File  CASE1.s 13
   31 00032 00000         CON(5)  =DROP
   32             * # ->
   33             * File  CASE1.s 14
   34 00037 00000         CON(5)  =DOCSTR
   35 0003C D0000         CON(5)  13
   36 00041 A5562         NIBASC  \Zero\
            7F6
   37             * -> $
   38             * File  CASE1.s 15
   39 00049 00000         CON(5)  =SEMI
   40             * File  CASE1.s 16
   41 0004E 00000         CON(5)  =DUP#1=
   42 00053 00000         CON(5)  =case
   43 00058 00000         CON(5)  =DOCOL
   44             * IF # = 1 [ # # #1 #= -> # FLAG -> #]
   45             * File  CASE1.s 17
   46 0005D 00000         CON(5)  =DROP
   47             * # ->
   48             * File  CASE1.s 18
   49 00062 00000         CON(5)  =DOCSTR
   50 00067 B0000         CON(5)  11
   51 0006C F4E65         NIBASC  \One\
            6
   52             * -> $
   53             * File  CASE1.s 19
   54 00072 00000         CON(5)  =SEMI
   55             * File  CASE1.s 20
   56 00077 00000         CON(5)  =#2=
   57 0007C 00000         CON(5)  =case
   58 00081 00000         CON(5)  =DOCSTR
   59 00086 B0000         CON(5)  11
   60 0008B 4577F         NIBASC  \Two\
            6
   61             * IF # = 2 [ # #2 #= -> FLAG -> $ ]
   62             * File  CASE1.s 21
   63 00091 00000         CON(5)  =DOCSTR
   64 00096 F0000         CON(5)  15
   65 0009B F4478         NIBASC  \Other\
            65627
   66             * IF other than the above [ -> $ ]
   67             * File  CASE1.s 22
   68 000A5 00000         CON(5)  =SEMI
   69             * File  CASE1.s 23
   70 000AA 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat May 23 14:03:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       CASE1.a        Page    2

 #2=                               Ext                   -    56
 0LASTOWDOB!                       Ext                   -    12
 CK&DISPATCH1                      Ext                   -    18
 CK1NOLASTWD                       Ext                   -    15
 COERCE                            Ext                   -    23
 DOCOL                             Ext                   -    10    20    28
                                          43
 DOCSTR                            Ext                   -    34    49    58
                                          63
 DROP                              Ext                   -    31    46
 DUP#0=                            Ext                   -    26
 DUP#1=                            Ext                   -    41
 SEMI                              Ext                   -    39    54    68
                                          70
 case                              Ext                   -    27    42    57
 real                              Ext                   -    19
Saturn Assembler                                       Sat May 23 14:03:55 2009
V3.0.9 (04/15/2007)   Statistics                         CASE1.a        Page    3

Input Parameters

  Source file name is CASE1.a

  Listing file name is CASE1.l

  Object file name is CASE1.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
