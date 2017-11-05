Saturn Assembler                                       Thu Jun 25 21:47:10 2009
V3.0.9 (04/15/2007)                                      ROAAB.a        Page    1

    1             * File  ROAAB.s 1
    2             * RPL
    3             * File  ROAAB.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAAB50\ROAAB.s, part of the ROAAB50.hpp project, created by <> on 25/06/2009
    5             **********************************************************************
    6             * NAME:          ROAAB
    7             * LIBRARY #:     325h = 805d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.4
   10             * DATE:          25 June 2009
   11             * COMPATIBILITY: HP50
   12             *                HP48
   13             * DESCRIPTION:   Function to calculate the radius of action from an
   14             *                alternate base.  This function takes the arguments
   15             *                and converts them to the arguments for a ROA from
   16             *                moving base problem.  It then calls the function to
   17             *                calculate the ROA from moving base and the output is
   18             *                identical for both problems.
   19             * USAGE:         ( %WD %WS %BRG %DIST %TAS %TC1 %T
   20             *                  -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
   21             *
   22             * File  ROAAB.s 20
   23             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROAAB48\ROAAB48.h
   24
   25             =RomId  EQU     #325
   26             * ROMID set to 325
   27
   28
   29
   30
   31
   32
   33
   34             *|| Resuming file ROAAB.s at line 20
   35             * File  ROAAB.s 22
   36 00000       =ROAAB
   37             * File  ROAAB.s 23
   38 00000 00000         CON(5)  =DOCOL
   39             * %WD %WS %BRG %DIST %TAS %TC1 %T ->
   40             * Manipulate and re-organise arguments to pass to moving base function.
   41             * %BRG = %TRS       [ Track of ship for moving base ]
   42             * %DIST / %T = %GSS [ Ground speed of ship for moving base ]
   43             * File  ROAAB.s 27
   44 00005 00000         CON(5)  =DUP
   45             * -> %WD %WS %TRS %DIST %TAS %TC1 %T %T
   46             * File  ROAAB.s 28
   47 0000A 00000         CON(5)  =5PICK
   48             * -> %WD %WS %TRS %DIST %TAS %TC1 %T %T %DIST
   49             * File  ROAAB.s 29
   50 0000F 00000         CON(5)  =SWAP
   51             * -> %WD %WS %TRS %DIST %TAS %TC1 %T %DIST %T
   52             * File  ROAAB.s 30
   53 00014 00000         CON(5)  =%/
   54             * -> %WD %WS %TRS %DIST %TAS %TC1 %T %GSS
   55             * File  ROAAB.s 31
   56 00019 00000         CON(5)  =5ROLLDROP
   57             * -> %WD %WS %TRS %TAS %TC1 %T %GSS
   58             * File  ROAAB.s 32
   59 0001E 00000         CON(5)  =4UNROLL
   60             * -> %WD %WS %TRS %GSS %TAS %TC1 %T
   61             * Call function to calculate ROA from moving base
   62             * File  ROAAB.s 34
   63 00023 00000         CON(5)  =DOROMP
   64 00028 423           CON(3)  #324
   65 0002B 200           CON(3)  #2
   66             * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
   67             * File  ROAAB.s 35
   68 0002E 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 25 21:47:10 2009
V3.0.9 (04/15/2007)   Symbol Table                       ROAAB.a        Page    2

 %/                                Ext                   -    53
 4UNROLL                           Ext                   -    59
 5PICK                             Ext                   -    47
 5ROLLDROP                         Ext                   -    56
 DOCOL                             Ext                   -    38
 DOROMP                            Ext                   -    63
 DUP                               Ext                   -    44
=ROAAB                             Rel       0 #00000000 -    36
=RomId                             Abs     805 #00000325 -    25
 SEMI                              Ext                   -    68
 SWAP                              Ext                   -    50
Saturn Assembler                                       Thu Jun 25 21:47:10 2009
V3.0.9 (04/15/2007)   Statistics                         ROAAB.a        Page    3

Input Parameters

  Source file name is ROAAB.a

  Listing file name is ROAAB.l

  Object file name is ROAAB.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
