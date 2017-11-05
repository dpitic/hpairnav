Saturn Assembler                                       Fri Jun 19 12:17:07 2009
V3.0.9 (04/15/2007)                                      TRUALT.a       Page    1

    1               * File  TRUALT.s        1
    2               * RPL
    3               * File  TRUALT.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\TRUALT.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               **********************************************************************
    6               * NAME:            TRUALT
    7               * AUTHOR:          Dan Pitic
    8               * VERSION:         1.14
    9               * DATE:            12 June 2009
   10               * DESCRIPTION:     Calculates the true altitude.
   11               * COMPATIBILITY:   HP50
   12               * USAGE:           ( u u u u -> u )
   13               * INPUT:     ca    Calibrated altitude (with units)
   14               *            sat   Static air temperature (true air temp.), deg. C
   15               *            pa    Pressure altitude (with units)
   16               *            gndst Altitude of the ground station (with units)
   17               * OUTPUT:    STACK True altitude (feet)
   18               * CALLS:           LIBRARY 326h = 806d
   19               *
   20               * File  TRUALT.s        18
   21               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALT50\ALT50.h
   22
   23               =RomId  EQU     #327
   24               * ROMID set to 327
   25
   26
   27
   28
   29
   30
   31               *|| Resuming file TRUALT.s at line 18
   32               * File  TRUALT.s        20
   33 00000         =TRUALT
   34               * File  TRUALT.s        21
   35 00000 00000           CON(5)  =DOCOL
   36               * File  TRUALT.s        22
   37 00005 00000           CON(5)  =DOLIST
   38 0000A 00000           CON(5)  =DOLAM
   39 0000F 20              CON(2)  2
   40 00011 3616            NIBASC  \ca\
   41 00015 00000           CON(5)  =DOLAM
   42 0001A 30              CON(2)  3
   43 0001C 371647          NIBASC  \sat\
   44 00022 00000           CON(5)  =DOLAM
   45 00027 20              CON(2)  2
   46 00029 0716            NIBASC  \pa\
   47 0002D 00000           CON(5)  =DOLAM
   48 00032 50              CON(2)  5
   49 00034 76E6463         NIBASC  \gndst\
            747
   50 0003E 00000           CON(5)  =SEMI
   51 00043 00000           CON(5)  =BIND
   52               * LAMs
   53               * File  TRUALT.s        23
   54 00048 00000           CON(5)  =DOLAM
   55 0004D 30              CON(2)  3
   56 0004F 371647          NIBASC  \sat\
   57               * = Tm
   58               * File  TRUALT.s        24
   59 00055 00000           CON(5)  =UMSI
   60               * Convert sat to K
   61               *          LAM pa ROMPTR 326 1                         ( Call ISAT [= TM] )
   62               * File  TRUALT.s        26
   63 0005A 00000           CON(5)  =DOLAM
   64 0005F 20              CON(2)  2
   65 00061 0716            NIBASC  \pa\
   66 00065 00000           CON(5)  =DOROMP
   67 0006A 623             CON(3)  #326
   68 0006D 100             CON(3)  #1
   69               * File  TRUALT.s        27
   70 00070 00000           CON(5)  =UM/
   71               * factor = Tm/TM
   72               * File  TRUALT.s        28
   73 00075 00000           CON(5)  =DOLAM
   74 0007A 20              CON(2)  2
   75 0007C 3616            NIBASC  \ca\
   76 00080 00000           CON(5)  =DOLAM
   77 00085 50              CON(2)  5
   78 00087 76E6463         NIBASC  \gndst\
            747
   79 00091 00000           CON(5)  =UM-
   80 00096 00000           CON(5)  =UM*
   81               * Multiply factor
   82               * File  TRUALT.s        29
   83 0009B 00000           CON(5)  =DOLAM
   84 000A0 50              CON(2)  5
   85 000A2 76E6463         NIBASC  \gndst\
            747
   86 000AC 00000           CON(5)  =UM+
   87               * Add gnd. st. elev.
   88               * File  TRUALT.s        30
   89 000B1 00000           CON(5)  =ABND
   90               * LAMs
   91               * File  TRUALT.s        31
   92 000B6 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:17:07 2009
V3.0.9 (04/15/2007)   Symbol Table                       TRUALT.a       Page    2

 ABND                              Ext                   -    89
 BIND                              Ext                   -    51
 DOCOL                             Ext                   -    35
 DOLAM                             Ext                   -    38    41    44
                                          47    54    63    73    76    83
 DOLIST                            Ext                   -    37
 DOROMP                            Ext                   -    66
=RomId                             Abs     807 #00000327 -    23
 SEMI                              Ext                   -    50    92
=TRUALT                            Rel       0 #00000000 -    33
 UM*                               Ext                   -    80
 UM+                               Ext                   -    86
 UM-                               Ext                   -    79
 UM/                               Ext                   -    70
 UMSI                              Ext                   -    59
Saturn Assembler                                       Fri Jun 19 12:17:07 2009
V3.0.9 (04/15/2007)   Statistics                         TRUALT.a       Page    3

Input Parameters

  Source file name is TRUALT.a

  Listing file name is TRUALT.l

  Object file name is TRUALT.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
