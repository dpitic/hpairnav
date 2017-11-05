Saturn Assembler                                       Tue May 12 11:53:01 2009
V3.0.9 (04/15/2007)                                      InvStkDisplay. Page    1

    1             * File  InvStkDisplay.s 1
    2             * RPL
    3             * File  InvStkDisplay.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\DISPtest\InvStkDisplay.s, part of the DISPtest.hpp project, created by <> on 8/05/2009
    5             ********************************************************************
    6             * DESCRIPTION:     Inverts the stack display.
    7             *
    8             * File  InvStkDisplay.s 6
    9 00000       =InvStkDisplay
   10             * File  InvStkDisplay.s 7
   11 00000 00000         CON(5)  =DOCOL
   12             * File  InvStkDisplay.s 8
   13 00005 00000         CON(5)  =HARDBUFF
   14             * Pointer to stack display grob
   15             * File  InvStkDisplay.s 9
   16 0000A 00000         CON(5)  =INVGROB
   17             * Invert stack display grob
   18             * File  InvStkDisplay.s 10
   19 0000F 00000         CON(5)  =DROP
   20             * Drop grob
   21             * File  InvStkDisplay.s 11
   22 00014 00000         CON(5)  =SetDAsTemp
   23             * Redraw screen
   24             * File  InvStkDisplay.s 12
   25 00019 00000         CON(5)  =SEMI
Saturn Assembler                                       Tue May 12 11:53:01 2009
V3.0.9 (04/15/2007)   Symbol Table                       InvStkDisplay. Page    2

 DOCOL                             Ext                   -    11
 DROP                              Ext                   -    19
 HARDBUFF                          Ext                   -    13
 INVGROB                           Ext                   -    16
=InvStkDisplay                     Rel       0 #00000000 -     9
 SEMI                              Ext                   -    25
 SetDAsTemp                        Ext                   -    22
Saturn Assembler                                       Tue May 12 11:53:01 2009
V3.0.9 (04/15/2007)   Statistics                         InvStkDisplay. Page    3

Input Parameters

  Source file name is InvStkDisplay.a

  Listing file name is InvStkDisplay.l

  Object file name is InvStkDisplay.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
