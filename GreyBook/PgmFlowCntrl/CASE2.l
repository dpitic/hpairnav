Saturn Assembler                                       Sat May 23 14:09:33 2009
V3.0.9 (04/15/2007)                                      CASE2.a        Page    1

    1             * File  CASE2.s 1
    2             * RPL
    3             * File  CASE2.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\PgmFlowCntrl\CASE2.s, part of the CASE2.hpp project, created by <> on 17/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Rewrite of CASE1.s making it smaller by using
    7             *                  alternative program flow objects.
    8             *
    9             * File  CASE2.s 7
   10 00000 00000         CON(5)  =DOCOL
   11             * File  CASE2.s 8
   12 00005 00000         CON(5)  =0LASTOWDOB!
   13             * Clear last command name
   14             * File  CASE2.s 9
   15 0000A 00000         CON(5)  =CK1NOLASTWD
   16             * Expect 1 argument
   17             * File  CASE2.s 10
   18 0000F 00000         CON(5)  =CK&DISPATCH1
   19 00014 00000         CON(5)  =real
   20 00019 00000         CON(5)  =DOCOL
   21             * Real number argument
   22             * File  CASE2.s 11
   23 0001E 00000         CON(5)  =COERCE
   24             * % -> #
   25             * File  CASE2.s 12
   26 00023 00000         CON(5)  =DUP#0=csedrp
   27 00028 00000         CON(5)  =DOCSTR
   28 0002D D0000         CON(5)  13
   29 00032 A5562         NIBASC  \Zero\
            7F6
   30             * # # #0 #= -> # FLAG -> $ [TRUE]
   31             * File  CASE2.s 13
   32 0003A 00000         CON(5)  =DUP#1=
   33 0003F 00000         CON(5)  =casedrop
   34 00044 00000         CON(5)  =DOCSTR
   35 00049 B0000         CON(5)  11
   36 0004E F4E65         NIBASC  \One\
            6
   37             * # # #1 #= -> # FLAG -> $ [TRUE]
   38             * File  CASE2.s 14
   39 00054 00000         CON(5)  =#2=
   40 00059 00000         CON(5)  =case
   41 0005E 00000         CON(5)  =DOCSTR
   42 00063 B0000         CON(5)  11
   43 00068 4577F         NIBASC  \Two\
            6
   44             * # #2 #= -> FLAG -> $ [TRUE]
   45             * File  CASE2.s 15
   46 0006E 00000         CON(5)  =DOCSTR
   47 00073 F0000         CON(5)  15
   48 00078 F4478         NIBASC  \Other\
            65627
   49             * -> $
   50             * File  CASE2.s 16
   51 00082 00000         CON(5)  =SEMI
   52             * File  CASE2.s 17
   53 00087 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat May 23 14:09:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       CASE2.a        Page    2

 #2=                               Ext                   -    39
 0LASTOWDOB!                       Ext                   -    12
 CK&DISPATCH1                      Ext                   -    18
 CK1NOLASTWD                       Ext                   -    15
 COERCE                            Ext                   -    23
 DOCOL                             Ext                   -    10    20
 DOCSTR                            Ext                   -    27    34    41
                                          46
 DUP#0=csedrp                      Ext                   -    26
 DUP#1=                            Ext                   -    32
 SEMI                              Ext                   -    51    53
 case                              Ext                   -    40
 casedrop                          Ext                   -    33
 real                              Ext                   -    19
Saturn Assembler                                       Sat May 23 14:09:33 2009
V3.0.9 (04/15/2007)   Statistics                         CASE2.a        Page    3

Input Parameters

  Source file name is CASE2.a

  Listing file name is CASE2.l

  Object file name is CASE2.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
