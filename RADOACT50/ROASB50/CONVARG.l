Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)                                      CONVARG.a      Page    1

    1               * File  CONVARG.s       1
    2               * RPL
    3               * File  CONVARG.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\CONVARG.s, part of the INTERCEPT50.hpp project, created by <> on 21/06/2009
    5               **********************************************************************
    6               * NAME:          CONVARG
    7               * AUTHOR:        Dan Pitic
    8               * VERSION:       1.4
    9               * DATE:          22 June 2009
   10               * LIBRARY #:     323h = 803d
   11               * COMPATIBILITY: HP50
   12               * DESCRIPTION:   Used for the HP50 when solving using the menu.  It is
   13               *                used directly before the call to ROASAMBA using the
   14               *                same input arguments from the stack and the output
   15               *                is the same input arguments for ROASAMBA.
   16               *                Checks the arguments for ROASAMBA from the stack to
   17               *                ensure they are REAL numbers.
   18               *                Converts ZINTS to REAL numbers on the stack.
   19               *                Errors for all other argument types.
   20               * USAGE:         ( WD WS TC1 T TAS DHOM
   21               *                               -> %WD %WS %TC1 %T %TAS %DHOM )
   22               *
   23               * File  CONVARG.s       21
   24               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\ROASB50.h
   25
   26               =RomId  EQU     #323
   27               * ROMID set to 323
   28
   29
   30
   31
   32
   33
   34
   35               *|| Resuming file CONVARG.s at line 21
   36 00000         =CONVARG
   37               * File  CONVARG.s       23
   38 00000 00000           CON(5)  =DOCOL
   39               * WD WS TC1 T TAS DHOM ->
   40               * File  CONVARG.s       24
   41 00005 00000           CON(5)  =SIX
   42 0000A 00000           CON(5)  =ZERO_DO
   43               * Set up loop for 6 arguments
   44               * File  CONVARG.s       25
   45 0000F 00000           CON(5)  =DOCOL
   46               * File  CONVARG.s       26
   47 00014 00000           CON(5)  =DOFLASHP
   48 00019 0000000         CON(7)  =^OBJINT?
   49 00020 00000           CON(5)  =case
   50 00025 00000           CON(5)  =DOCOL
   51               * Check if ZINT
   52               * File  CONVARG.s       27
   53 0002A 00000           CON(5)  =DOFLASHP
   54 0002F 0000000         CON(7)  =^Z>R
   55               * TRUE => convert to REAL
   56               * File  CONVARG.s       28
   57 00036 00000           CON(5)  =SEMI
   58               * File  CONVARG.s       29
   59 0003B 00000           CON(5)  =DUPTYPEREAL?
   60 00040 00000           CON(5)  =?SEMI
   61               * Check if REAL
   62               * File  CONVARG.s       30
   63 00045 00000           CON(5)  =SETTYPEERR
   64               * OTHER type => issue Bad Argument Type error
   65               * File  CONVARG.s       31
   66 0004A 00000           CON(5)  =SEMI
   67               * File  CONVARG.s       32
   68 0004F 00000           CON(5)  =6ROLL
   69               * ROLL stack
   70               * File  CONVARG.s       33
   71 00054 00000           CON(5)  =LOOP
   72               * File  CONVARG.s       34
   73 00059 00000           CON(5)  =SEMI
   74               * -> %WD %WS %TC1 %T %TAS %DHOM
Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)   Symbol Table                       CONVARG.a      Page    2

 6ROLL                             Ext                   -    68
 ?SEMI                             Ext                   -    60
=CONVARG                           Rel       0 #00000000 -    36
 DOCOL                             Ext                   -    38    45    50
 DOFLASHP                          Ext                   -    47    53
 DUPTYPEREAL?                      Ext                   -    59
 LOOP                              Ext                   -    71
=RomId                             Abs     803 #00000323 -    26
 SEMI                              Ext                   -    57    66    73
 SETTYPEERR                        Ext                   -    63
 SIX                               Ext                   -    41
 ZERO_DO                           Ext                   -    42
 ^OBJINT?                          Ext                   -    48
 ^Z>R                              Ext                   -    54
 case                              Ext                   -    49
Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)   Statistics                         CONVARG.a      Page    3

Input Parameters

  Source file name is CONVARG.a

  Listing file name is CONVARG.l

  Object file name is CONVARG.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
