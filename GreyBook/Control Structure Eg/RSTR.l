Saturn Assembler                                       Sun May 24 10:10:02 2009
V3.0.9 (04/15/2007)                                      RSTR.a         Page    1

    1               * File  RSTR.s  1
    2               * RPL
    3               * File  RSTR.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Control Structure Eg\RSTR.s, part of the RSTR.hpp project, created by <> on 24/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Counts the number of objects in a list that are
    7               *                  real numbers.
    8               * METHOD:          Pushes the list on the return stack.
    9               * COMPATIBILITY:   HP48
   10               * USAGE:     ( {} -> % )
   11               *
   12               * File  RSTR.s  10
   13 00000 00000           CON(5)  =DOCOL
   14               * File  RSTR.s  11
   15 00005 00000           CON(5)  =0LASTOWDOB!
   16               * Clear saved command name
   17               * File  RSTR.s  12
   18 0000A 00000           CON(5)  =CK1NOLASTWD
   19               * Require 1 argument
   20               * File  RSTR.s  13
   21 0000F 00000           CON(5)  =CK&DISPATCH1
   22 00014 00000           CON(5)  =list
   23 00019 00000           CON(5)  =DOCOL
   24               * List
   25               * File  RSTR.s  14
   26 0001E 00000           CON(5)  =>R
   27               * Push the list on the return stack
   28               * File  RSTR.s  15
   29 00023 00000           CON(5)  =%0
   30               * Initial counter value %
   31               * File  RSTR.s  16
   32 00028 00000           CON(5)  =BEGIN
   33               * File  RSTR.s  17
   34 0002D 00000           CON(5)  =RSWAP
   35               * SWAP list to the first level
   36               * File  RSTR.s  18
   37 00032 00000           CON(5)  =ticR
   38               * Pops the next object in the list in the return stack
   39               * File  RSTR.s  19
   40               * and pushes it and TRUE on the data stack
   41               * File  RSTR.s  20
   42               * -> % object TRUE
   43               * File  RSTR.s  21
   44               * -> % FALSE
   45               * File  RSTR.s  22
   46 00037 00000           CON(5)  =DUP
   47               * File  RSTR.s  23
   48 0003C 00000           CON(5)  =NOT
   49 00041 00000           CON(5)  =?SKIP
   50 00046 00000           CON(5)  =RSWAP
   51               * IF the object was not SEMI, swap the remainder of the list back
   52               * File  RSTR.s  24
   53 0004B 00000           CON(5)  =WHILE
   54 00050 00000           CON(5)  =DOCOL
   55               * File  RSTR.s  25
   56 00055 00000           CON(5)  =TYPEREAL?
   57 0005A 00000           CON(5)  =IT
   58 0005F 00000           CON(5)  =%1+
   59               * IF object is a real number, increment the counter
   60               * File  RSTR.s  26
   61 00064 00000           CON(5)  =SEMI
   62 00069 00000           CON(5)  =REPEAT
   63               * File  RSTR.s  27
   64 0006E 00000           CON(5)  =SEMI
   65               * File  RSTR.s  28
   66 00073 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun May 24 10:10:02 2009
V3.0.9 (04/15/2007)   Symbol Table                       RSTR.a         Page    2

 %0                                Ext                   -    29
 %1+                               Ext                   -    58
 0LASTOWDOB!                       Ext                   -    15
 >R                                Ext                   -    26
 ?SKIP                             Ext                   -    49
 BEGIN                             Ext                   -    32
 CK&DISPATCH1                      Ext                   -    21
 CK1NOLASTWD                       Ext                   -    18
 DOCOL                             Ext                   -    13    23    54
 DUP                               Ext                   -    46
 IT                                Ext                   -    57
 NOT                               Ext                   -    48
 REPEAT                            Ext                   -    62
 RSWAP                             Ext                   -    34    50
 SEMI                              Ext                   -    61    64    66
 TYPEREAL?                         Ext                   -    56
 WHILE                             Ext                   -    53
 list                              Ext                   -    22
 ticR                              Ext                   -    37
Saturn Assembler                                       Sun May 24 10:10:02 2009
V3.0.9 (04/15/2007)   Statistics                         RSTR.a         Page    3

Input Parameters

  Source file name is RSTR.a

  Listing file name is RSTR.l

  Object file name is RSTR.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
