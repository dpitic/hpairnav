Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)                                      CONVARG.a      Page    1

    1               * File  CONVARG.s       1
    2               * RPL
    3               * File  CONVARG.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\CONVARG.s, part of the INTERCEPT50.hpp project, created by <> on 21/06/2009
    5               **********************************************************************
    6               * NAME:          CONVARG
    7               * AUTHOR:        Dan Pitic
    8               * VERSION:       1.3
    9               * DATE:          22 June 2009
   10               * LIBRARY #:     322h = 802d
   11               * COMPATIBILITY: HP50
   12               * DESCRIPTION:   Used for the HP50 when solving using the menu.  It is
   13               *                used directly before the call to PNRVF using the same
   14               *                input arguments from the stack and the output is the
   15               *                same input arguments for PNRVF
   16               *                Checks the arguments for PNRVF from the stack to
   17               *                ensure they are REAL numbers.
   18               *                Converts ZINTS to REAL numbers on the stack.
   19               *                Errors for all other argument types.
   20               * USAGE:         ( WD1 WS1 TC1 FF1 TAS1 DHOM WD2 WS2 FF2 TAS2 FLTFL
   21               *                  ->
   22               *                  %WD1 %WS2 %TC1 %FF1 %TAS1 %DHOM %WD2 %WS2 %FF2
   23               *                  %TAS2 %FLTFL )
   24               *
   25               * File  CONVARG.s       23
   26               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVF50.h
   27
   28               =RomId  EQU     #322
   29               * ROMID set to 322
   30
   31
   32
   33
   34
   35
   36
   37
   38
   39               *|| Resuming file CONVARG.s at line 23
   40 00000         =CONVARG
   41               * File  CONVARG.s       25
   42 00000 00000           CON(5)  =DOCOL
   43               * WD WS TAS DRM2 MRM2 TRS GSS ->
   44               * File  CONVARG.s       26
   45 00005 00000           CON(5)  =ELEVEN
   46 0000A 00000           CON(5)  =ZERO_DO
   47               * Set up loop for 11 arguments
   48               * File  CONVARG.s       27
   49 0000F 00000           CON(5)  =DOFLASHP
   50 00014 0000000         CON(7)  =^OBJINT?
   51 0001B 00000           CON(5)  =ITE
   52               * Check if ZINT
   53               * File  CONVARG.s       28
   54 00020 00000           CON(5)  =DOFLASHP
   55 00025 0000000         CON(7)  =^Z>R
   56               * TRUE => convert to REAL
   57               * File  CONVARG.s       29
   58 0002C 00000           CON(5)  =SETTYPEERR
   59               * FALSE => issue Bad Argument Type error
   60               * File  CONVARG.s       30
   61 00031 00000           CON(5)  =ELEVEN
   62 00036 00000           CON(5)  =ROLL
   63               * ROLL stack
   64               * File  CONVARG.s       31
   65 0003B 00000           CON(5)  =LOOP
   66               *        FLASHPTR OBJINT? NOT?SEMI
   67               *    FLASHPTR Z>R
   68               *  7ROLL                             ( -> WS TAS DRM2 MRM2 TRS GSS WD )
   69               *        FLASHPTR OBJINT? NOT?SEMI
   70               *          FLASHPTR Z>R
   71               *  7ROLL                             ( -> TAS DRM2 MRM2 TRS GSS WD WS )
   72               *        FLASHPTR OBJINT? NOT?SEMI
   73               *          FLASHPTR Z>R
   74               *        7ROLL                             ( -> DRM2 MRM2 TRS GSS WD WS TAS )
   75               *        FLASHPTR OBJINT? NOT?SEMI
   76               *          FLASHPTR Z>R
   77               *        7ROLL                             ( -> MRM2 TRS GSS WD WS TAS DRM2 )
   78               *        FLASHPTR OBJINT? NOT?SEMI
   79               *          FLASHPTR Z>R
   80               *        7ROLL                             ( -> TRS GSS WD WS TAS DRM2 MRM2 )
   81               *        FLASHPTR OBJINT? NOT?SEMI
   82               *          FLASHPTR Z>R
   83               *        7ROLL                             ( -> GSS WD WS TAS DRM2 MRM2 TRS )
   84               *        FLASHPTR OBJINT? NOT?SEMI
   85               *          FLASHPTR Z>R
   86               *        7ROLL                             ( -> WD WS TAS DRM2 MRM2 TRS GSS )
   87               * File  CONVARG.s       53
   88 00040 00000           CON(5)  =SEMI
   89               * -> WD WS TAS DRM2 MRM2 TRS GSS
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)   Symbol Table                       CONVARG.a      Page    2

=CONVARG                           Rel       0 #00000000 -    40
 DOCOL                             Ext                   -    42
 DOFLASHP                          Ext                   -    49    54
 ELEVEN                            Ext                   -    45    61
 ITE                               Ext                   -    51
 LOOP                              Ext                   -    65
 ROLL                              Ext                   -    62
=RomId                             Abs     802 #00000322 -    28
 SEMI                              Ext                   -    88
 SETTYPEERR                        Ext                   -    58
 ZERO_DO                           Ext                   -    46
 ^OBJINT?                          Ext                   -    50
 ^Z>R                              Ext                   -    55
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
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
