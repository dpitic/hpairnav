Saturn Assembler                                       Sun Jun 21 11:25:58 2009
V3.0.9 (04/15/2007)                                      CONVARG.a      Page    1

    1               * File  CONVARG.s       1
    2               * RPL
    3               * File  CONVARG.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\CONVARG.s, part of the INTERCEPT50.hpp project, created by <> on 21/06/2009
    5               **********************************************************************
    6               * NAME:          CONVARG
    7               * AUTHOR:        Dan Pitic
    8               * VERSION:       1.7
    9               * DATE:          21 June 2009
   10               * LIBRARY #:     321h = 801d
   11               * COMPATIBILITY: HP50
   12               * DESCRIPTION:   Used for the HP50 when solving using the menu.  It is
   13               *                used directly before the call to INTER using the same
   14               *                input arguments from the stack and the output is the
   15               *                same input arguments for INTER.
   16               *                Checks the arguments for INTER from the stack to
   17               *                ensure they are REAL numbers.
   18               *                Converts ZINTS to REAL numbers on the stack.
   19               *                Errors for all other argument types.
   20               * USAGE:         ( WD WS TAS DRM2 MRM2 TRS GSS ->
   21               *                                 WD WS TAS DRM2 MRM2 TRS GSS )
   22               *
   23               * File  CONVARG.s       21
   24               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTERCEPT50.h
   25
   26               =RomId  EQU     #321
   27               * ROMID set to 321
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
   39               * WD WS TAS DRM2 MRM2 TRS GSS ->
   40               * File  CONVARG.s       24
   41 00005 00000           CON(5)  =SEVEN
   42 0000A 00000           CON(5)  =ZERO_DO
   43               * Set up loop for 7 arguments
   44               * File  CONVARG.s       25
   45 0000F 00000           CON(5)  =DOFLASHP
   46 00014 0000000         CON(7)  =^OBJINT?
   47 0001B 00000           CON(5)  =ITE
   48               * Check if ZINT
   49               * File  CONVARG.s       26
   50 00020 00000           CON(5)  =DOFLASHP
   51 00025 0000000         CON(7)  =^Z>R
   52               * TRUE => convert to REAL
   53               * File  CONVARG.s       27
   54 0002C 00000           CON(5)  =SETTYPEERR
   55               * FALSE => issue Bad Argument Type error
   56               * File  CONVARG.s       28
   57 00031 00000           CON(5)  =7ROLL
   58               * ROLL stack
   59               * File  CONVARG.s       29
   60 00036 00000           CON(5)  =LOOP
   61               *        FLASHPTR OBJINT? NOT?SEMI
   62               *    FLASHPTR Z>R
   63               *  7ROLL                             ( -> WS TAS DRM2 MRM2 TRS GSS WD )
   64               *        FLASHPTR OBJINT? NOT?SEMI
   65               *          FLASHPTR Z>R
   66               *  7ROLL                             ( -> TAS DRM2 MRM2 TRS GSS WD WS )
   67               *        FLASHPTR OBJINT? NOT?SEMI
   68               *          FLASHPTR Z>R
   69               *        7ROLL                             ( -> DRM2 MRM2 TRS GSS WD WS TAS )
   70               *        FLASHPTR OBJINT? NOT?SEMI
   71               *          FLASHPTR Z>R
   72               *        7ROLL                             ( -> MRM2 TRS GSS WD WS TAS DRM2 )
   73               *        FLASHPTR OBJINT? NOT?SEMI
   74               *          FLASHPTR Z>R
   75               *        7ROLL                             ( -> TRS GSS WD WS TAS DRM2 MRM2 )
   76               *        FLASHPTR OBJINT? NOT?SEMI
   77               *          FLASHPTR Z>R
   78               *        7ROLL                             ( -> GSS WD WS TAS DRM2 MRM2 TRS )
   79               *        FLASHPTR OBJINT? NOT?SEMI
   80               *          FLASHPTR Z>R
   81               *        7ROLL                             ( -> WD WS TAS DRM2 MRM2 TRS GSS )
   82               * File  CONVARG.s       51
   83 0003B 00000           CON(5)  =SEMI
   84               * -> WD WS TAS DRM2 MRM2 TRS GSS
Saturn Assembler                                       Sun Jun 21 11:25:58 2009
V3.0.9 (04/15/2007)   Symbol Table                       CONVARG.a      Page    2

 7ROLL                             Ext                   -    57
=CONVARG                           Rel       0 #00000000 -    36
 DOCOL                             Ext                   -    38
 DOFLASHP                          Ext                   -    45    50
 ITE                               Ext                   -    47
 LOOP                              Ext                   -    60
=RomId                             Abs     801 #00000321 -    26
 SEMI                              Ext                   -    83
 SETTYPEERR                        Ext                   -    54
 SEVEN                             Ext                   -    41
 ZERO_DO                           Ext                   -    42
 ^OBJINT?                          Ext                   -    46
 ^Z>R                              Ext                   -    51
Saturn Assembler                                       Sun Jun 21 11:25:58 2009
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
