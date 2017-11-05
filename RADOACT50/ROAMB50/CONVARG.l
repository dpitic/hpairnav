Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)                                      CONVARG.a      Page    1

    1               * File  CONVARG.s       1
    2               * RPL
    3               * File  CONVARG.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\CONVARG.s, part of the INTERCEPT50.hpp project, created by <> on 21/06/2009
    5               **********************************************************************
    6               * NAME:          CONVARG
    7               * AUTHOR:        Dan Pitic
    8               * VERSION:       1.6
    9               * DATE:          22 June 2009
   10               * LIBRARY #:     324h = 804d
   11               * COMPATIBILITY: HP50
   12               * DESCRIPTION:   Used for the HP50 when solving using the menu.  It is
   13               *                used directly before the call to ROAMB using the
   14               *                same input arguments from the stack and the output
   15               *                is the same input arguments for ROAMB
   16               *                Checks the arguments for ROAMB from the stack to
   17               *                ensure they are REAL numbers.
   18               *                Converts ZINTS to REAL numbers on the stack.
   19               *                Errors for all other argument types.
   20               * USAGE:         ( WD WS TRS GSS TAS TC1 T
   21               *                  -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
   22               *
   23               * File  CONVARG.s       21
   24               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\ROAMB50.h
   25
   26               =RomId  EQU     #324
   27               * ROMID set to 324
   28
   29
   30
   31
   32
   33
   34
   35
   36               *|| Resuming file CONVARG.s at line 21
   37 00000         =CONVARG
   38               * File  CONVARG.s       23
   39 00000 00000           CON(5)  =DOCOL
   40               * WD WS TRS GSS TAS TC1 T ->
   41               * File  CONVARG.s       24
   42 00005 00000           CON(5)  =SEVEN
   43 0000A 00000           CON(5)  =ZERO_DO
   44               * Set up loop for 6 arguments
   45               * File  CONVARG.s       25
   46 0000F 00000           CON(5)  =DOCOL
   47               * File  CONVARG.s       26
   48 00014 00000           CON(5)  =DOFLASHP
   49 00019 0000000         CON(7)  =^OBJINT?
   50 00020 00000           CON(5)  =case
   51 00025 00000           CON(5)  =DOCOL
   52               * Check if ZINT
   53               * File  CONVARG.s       27
   54 0002A 00000           CON(5)  =DOFLASHP
   55 0002F 0000000         CON(7)  =^Z>R
   56               * TRUE => convert to REAL
   57               * File  CONVARG.s       28
   58 00036 00000           CON(5)  =SEMI
   59               * File  CONVARG.s       29
   60 0003B 00000           CON(5)  =DUPTYPEREAL?
   61 00040 00000           CON(5)  =?SEMI
   62               * Check if REAL
   63               * File  CONVARG.s       30
   64 00045 00000           CON(5)  =SETTYPEERR
   65               * OTHER type => issue Bad Argument Type error
   66               * File  CONVARG.s       31
   67 0004A 00000           CON(5)  =SEMI
   68               * File  CONVARG.s       32
   69 0004F 00000           CON(5)  =7ROLL
   70               * ROLL stack
   71               * File  CONVARG.s       33
   72 00054 00000           CON(5)  =LOOP
   73               * File  CONVARG.s       34
   74 00059 00000           CON(5)  =SEMI
   75               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)   Symbol Table                       CONVARG.a      Page    2

 7ROLL                             Ext                   -    69
 ?SEMI                             Ext                   -    61
=CONVARG                           Rel       0 #00000000 -    37
 DOCOL                             Ext                   -    39    46    51
 DOFLASHP                          Ext                   -    48    54
 DUPTYPEREAL?                      Ext                   -    60
 LOOP                              Ext                   -    72
=RomId                             Abs     804 #00000324 -    26
 SEMI                              Ext                   -    58    67    74
 SETTYPEERR                        Ext                   -    64
 SEVEN                             Ext                   -    42
 ZERO_DO                           Ext                   -    43
 ^OBJINT?                          Ext                   -    49
 ^Z>R                              Ext                   -    55
 case                              Ext                   -    50
Saturn Assembler                                       Wed Jun 24 18:55:04 2009
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
