Saturn Assembler                                       Sat May 23 14:23:48 2009
V3.0.9 (04/15/2007)                                      CASE4.a        Page    1

    1             * File  CASE4.s 1
    2             * RPL
    3             * File  CASE4.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\PgmFlowCntrl\CASE4.s, part of the CASE4.hpp project, created by <> on 23/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Takes a real number from the stack representing a
    7             *                  user flag.  If the number is in the range 1 to 4,
    8             *                  the corresponding user flag is set, otherwise no
    9             *                  action is taken.
   10             *
   11             * File  CASE4.s 9
   12 00000 00000         CON(5)  =DOCOL
   13             * File  CASE4.s 10
   14 00005 00000         CON(5)  =0LASTOWDOB!
   15             * Clear last saved command
   16             * File  CASE4.s 11
   17 0000A 00000         CON(5)  =CK1NOLASTWD
   18             * Expect 1 argument
   19             * File  CASE4.s 12
   20 0000F 00000         CON(5)  =CK&DISPATCH1
   21 00014 00000         CON(5)  =real
   22 00019 00000         CON(5)  =DOCOL
   23             * Real number
   24             * File  CASE4.s 13
   25 0001E 00000         CON(5)  =COERCE
   26             * % -> #
   27             * File  CASE4.s 14
   28 00023 00000         CON(5)  =DUP#0=
   29 00028 00000         CON(5)  =caseDROP
   30             * # # #0 #= -> # FLAG -> [TRUE]
   31             * File  CASE4.s 15
   32 0002D 00000         CON(5)  =DUP
   33 00032 00000         CON(5)  =FOUR
   34 00037 00000         CON(5)  =#>
   35 0003C 00000         CON(5)  =caseDROP
   36             * # # #4 #> -> # FLAG -> [TRUE]
   37             * File  CASE4.s 16
   38 00041 00000         CON(5)  =SetUserFlag
   39             * # ->
   40             * File  CASE4.s 17
   41 00046 00000         CON(5)  =SEMI
   42             * File  CASE4.s 18
   43 0004B 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat May 23 14:23:48 2009
V3.0.9 (04/15/2007)   Symbol Table                       CASE4.a        Page    2

 #>                                Ext                   -    34
 0LASTOWDOB!                       Ext                   -    14
 CK&DISPATCH1                      Ext                   -    20
 CK1NOLASTWD                       Ext                   -    17
 COERCE                            Ext                   -    25
 DOCOL                             Ext                   -    12    22
 DUP                               Ext                   -    32
 DUP#0=                            Ext                   -    28
 FOUR                              Ext                   -    33
 SEMI                              Ext                   -    41    43
 SetUserFlag                       Ext                   -    38
 caseDROP                          Ext                   -    29    35
 real                              Ext                   -    21
Saturn Assembler                                       Sat May 23 14:23:48 2009
V3.0.9 (04/15/2007)   Statistics                         CASE4.a        Page    3

Input Parameters

  Source file name is CASE4.a

  Listing file name is CASE4.l

  Object file name is CASE4.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
