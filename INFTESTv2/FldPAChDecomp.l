Saturn Assembler                                       Tue May 19 17:53:30 2009
V3.0.9 (04/15/2007)                                      FldPAChDecomp. Page    1

    1               * File  FldPAChDecomp.s 1
    2               * RPL
    3               * File  FldPAChDecomp.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTESTv2\FldPAChDecomp.s, part of the INFTEST.hpp project, created by <> on 19/05/2009
    5               * File  FldPAChDecomp.s 3
    6
    7               * File  FldPAChDecomp.s 4
    8               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTESTv2\INFTEST.h
    9
   10               =RomId  EQU     #326
   11               * ROMID set to 326
   12
   13
   14
   15
   16
   17               *|| Resuming file FldPAChDecomp.s at line 4
   18 00000         =FldPAChDecomp
   19               * File  FldPAChDecomp.s 6
   20 00000 00000           CON(5)  =DOCOL
   21               * File  FldPAChDecomp.s 7
   22 00005 00000           CON(5)  =DUPTYPEREAL?
   23 0000A 00000           CON(5)  =EQUAL
   24 0000F 00000           CON(5)  =case
   25 00014 00000           CON(5)  =DOCOL
   26               * File  FldPAChDecomp.s 8
   27 00019 00000           CON(5)  =EDITDECOMP$
   28               * File  FldPAChDecomp.s 9
   29 0001E 00000           CON(5)  =SEMI
   30               * File  FldPAChDecomp.s 10
   31 00023 00000           CON(5)  =DUPTYPEEXT?
   32 00028 00000           CON(5)  =EQUAL
   33 0002D 00000           CON(5)  =case
   34 00032 00000           CON(5)  =DOCOL
   35               * File  FldPAChDecomp.s 11
   36 00037 00000           CON(5)  =EDITDECOMP$
   37               * File  FldPAChDecomp.s 12
   38 0003C 00000           CON(5)  =SEMI
   39               * File  FldPAChDecomp.s 13
   40 00041 00000           CON(5)  =DUPTYPELIST?
   41 00046 00000           CON(5)  =EQUAL
   42 0004B 00000           CON(5)  =case
   43 00050 00000           CON(5)  =DOCOL
   44               * File  FldPAChDecomp.s 14
   45 00055 00000           CON(5)  =INCOMPDROP
   46               * File  FldPAChDecomp.s 15
   47 0005A 00000           CON(5)  =SWAP
   48               * File  FldPAChDecomp.s 16
   49 0005F 00000           CON(5)  =DROP
   50               * File  FldPAChDecomp.s 17
   51 00064 00000           CON(5)  =EDITDECOMP$
   52               * File  FldPAChDecomp.s 18
   53 00069 00000           CON(5)  =SEMI
   54               * File  FldPAChDecomp.s 19
   55 0006E 00000           CON(5)  =EDITDECOMP$
   56               * File  FldPAChDecomp.s 20
   57 00073 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue May 19 17:53:30 2009
V3.0.9 (04/15/2007)   Symbol Table                       FldPAChDecomp. Page    2

 DOCOL                             Ext                   -    20    25    34
                                          43
 DROP                              Ext                   -    49
 DUPTYPEEXT?                       Ext                   -    31
 DUPTYPELIST?                      Ext                   -    40
 DUPTYPEREAL?                      Ext                   -    22
 EDITDECOMP$                       Ext                   -    27    36    51
                                          55
 EQUAL                             Ext                   -    23    32    41
=FldPAChDecomp                     Rel       0 #00000000 -    18
 INCOMPDROP                        Ext                   -    45
=RomId                             Abs     806 #00000326 -    10
 SEMI                              Ext                   -    29    38    53
                                          57
 SWAP                              Ext                   -    47
 case                              Ext                   -    24    33    42
Saturn Assembler                                       Tue May 19 17:53:30 2009
V3.0.9 (04/15/2007)   Statistics                         FldPAChDecomp. Page    3

Input Parameters

  Source file name is FldPAChDecomp.a

  Listing file name is FldPAChDecomp.l

  Object file name is FldPAChDecomp.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
