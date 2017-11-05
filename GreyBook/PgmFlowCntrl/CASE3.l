Saturn Assembler                                       Sat May 23 14:13:39 2009
V3.0.9 (04/15/2007)                                      CASE3.a        Page    1

    1             * File  CASE3.s 1
    2             * RPL
    3             * File  CASE3.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\PgmFlowCntrl\CASE2.s, part of the CASE2.hpp project, created by <> on 17/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Rewrite of CASE2.s by using
    7             *                  alternative program flow objects.
    8             *
    9             * File  CASE3.s 7
   10 00000 00000         CON(5)  =DOCOL
   11             * File  CASE3.s 8
   12 00005 00000         CON(5)  =0LASTOWDOB!
   13             * Clear last command name
   14             * File  CASE3.s 9
   15 0000A 00000         CON(5)  =CK1NOLASTWD
   16             * Expect 1 argument
   17             * File  CASE3.s 10
   18 0000F 00000         CON(5)  =CK&DISPATCH1
   19 00014 00000         CON(5)  =real
   20 00019 00000         CON(5)  =DOCOL
   21             * Real number argument
   22             * File  CASE3.s 11
   23 0001E 00000         CON(5)  =COERCE
   24             * % -> #
   25             * File  CASE3.s 12
   26 00023 00000         CON(5)  =ZERO
   27 00028 00000         CON(5)  =#=casedrop
   28 0002D 00000         CON(5)  =DOCSTR
   29 00032 D0000         CON(5)  13
   30 00037 A5562         NIBASC  \Zero\
            7F6
   31             * # #0 -> # #0 # #= -> # FLAG -> $ [TRUE]
   32             * File  CASE3.s 13
   33 0003F 00000         CON(5)  =ONE
   34 00044 00000         CON(5)  =#=casedrop
   35 00049 00000         CON(5)  =DOCSTR
   36 0004E B0000         CON(5)  11
   37 00053 F4E65         NIBASC  \One\
            6
   38             * # #1 -> # #1 # #= -> # FLAG -> $ [TRUE]
   39             * File  CASE3.s 14
   40 00059 00000         CON(5)  =#2=
   41 0005E 00000         CON(5)  =case
   42 00063 00000         CON(5)  =DOCSTR
   43 00068 B0000         CON(5)  11
   44 0006D 4577F         NIBASC  \Two\
            6
   45             * # #2 #= -> FLAG -> $ [TRUE]
   46             * File  CASE3.s 15
   47 00073 00000         CON(5)  =DOCSTR
   48 00078 F0000         CON(5)  15
   49 0007D F4478         NIBASC  \Other\
            65627
   50             * -> $
   51             * File  CASE3.s 16
   52 00087 00000         CON(5)  =SEMI
   53             * File  CASE3.s 17
   54 0008C 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat May 23 14:13:39 2009
V3.0.9 (04/15/2007)   Symbol Table                       CASE3.a        Page    2

 #2=                               Ext                   -    40
 #=casedrop                        Ext                   -    27    34
 0LASTOWDOB!                       Ext                   -    12
 CK&DISPATCH1                      Ext                   -    18
 CK1NOLASTWD                       Ext                   -    15
 COERCE                            Ext                   -    23
 DOCOL                             Ext                   -    10    20
 DOCSTR                            Ext                   -    28    35    42
                                          47
 ONE                               Ext                   -    33
 SEMI                              Ext                   -    52    54
 ZERO                              Ext                   -    26
 case                              Ext                   -    41
 real                              Ext                   -    19
Saturn Assembler                                       Sat May 23 14:13:39 2009
V3.0.9 (04/15/2007)   Statistics                         CASE3.a        Page    3

Input Parameters

  Source file name is CASE3.a

  Listing file name is CASE3.l

  Object file name is CASE3.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
