Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)                                      TRUALT.a       Page    1

    1               * File  TRUALT.s        1
    2               * RPL
    3               * File  TRUALT.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\TRUALT.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               *********************************************************************
    6               * NAME:            TRUALT
    7               * DESCRIPTION:     Calculates the true altitude.
    8               * USAGE:           ( u u u u -> u )
    9               * INPUT:     ca    Calibrated altitude (with units)
   10               *            sat   Static air temperature (true air temp.), deg. C
   11               *            pa    Pressure altitude (with units)
   12               *            gndst Altitude of the ground station (with units)
   13               * OUTPUT:    STACK True altitude (feet)
   14               * CALLS:           LIBRARY 326h = 807d
   15               *
   16               * File  TRUALT.s        14
   17               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALT.h
   18
   19               =RomId  EQU     #327
   20               * ROMID set to 327
   21
   22
   23
   24
   25
   26
   27               *|| Resuming file TRUALT.s at line 14
   28               * File  TRUALT.s        16
   29 00000         =TRUALT
   30               * File  TRUALT.s        17
   31 00000 00000           CON(5)  =DOCOL
   32               * File  TRUALT.s        18
   33 00005 00000           CON(5)  =DOLIST
   34 0000A 00000           CON(5)  =DOLAM
   35 0000F 20              CON(2)  2
   36 00011 3616            NIBASC  \ca\
   37 00015 00000           CON(5)  =DOLAM
   38 0001A 30              CON(2)  3
   39 0001C 371647          NIBASC  \sat\
   40 00022 00000           CON(5)  =DOLAM
   41 00027 20              CON(2)  2
   42 00029 0716            NIBASC  \pa\
   43 0002D 00000           CON(5)  =DOLAM
   44 00032 50              CON(2)  5
   45 00034 76E6463         NIBASC  \gndst\
            747
   46 0003E 00000           CON(5)  =SEMI
   47 00043 00000           CON(5)  =BIND
   48               * LAMs
   49               * File  TRUALT.s        19
   50 00048 00000           CON(5)  =DOLAM
   51 0004D 30              CON(2)  3
   52 0004F 371647          NIBASC  \sat\
   53               * = Tm
   54               * File  TRUALT.s        20
   55 00055 00000           CON(5)  =UMSI
   56               * Convert sat to K
   57               *          LAM pa ROMPTR 326 1                         ( Call ISAT [= TM] )
   58               * File  TRUALT.s        22
   59 0005A 00000           CON(5)  =DOLAM
   60 0005F 20              CON(2)  2
   61 00061 0716            NIBASC  \pa\
   62 00065 00000           CON(5)  =DOROMP
   63 0006A 623             CON(3)  #326
   64 0006D 100             CON(3)  #1
   65               * File  TRUALT.s        23
   66 00070 00000           CON(5)  =UM/
   67               * factor = Tm/TM
   68               * File  TRUALT.s        24
   69 00075 00000           CON(5)  =DOLAM
   70 0007A 20              CON(2)  2
   71 0007C 3616            NIBASC  \ca\
   72 00080 00000           CON(5)  =DOLAM
   73 00085 50              CON(2)  5
   74 00087 76E6463         NIBASC  \gndst\
            747
   75 00091 00000           CON(5)  =UM-
   76 00096 00000           CON(5)  =UM*
   77               * Multiply factor
   78               * File  TRUALT.s        25
   79 0009B 00000           CON(5)  =DOLAM
   80 000A0 50              CON(2)  5
   81 000A2 76E6463         NIBASC  \gndst\
            747
   82 000AC 00000           CON(5)  =UM+
   83               * Add gnd. st. elev.
   84               * File  TRUALT.s        26
   85 000B1 00000           CON(5)  =ABND
   86               * LAMs
   87               * File  TRUALT.s        27
   88 000B6 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       TRUALT.a       Page    2

 ABND                              Ext                   -    85
 BIND                              Ext                   -    47
 DOCOL                             Ext                   -    31
 DOLAM                             Ext                   -    34    37    40
                                          43    50    59    69    72    79
 DOLIST                            Ext                   -    33
 DOROMP                            Ext                   -    62
=RomId                             Abs     807 #00000327 -    19
 SEMI                              Ext                   -    46    88
=TRUALT                            Rel       0 #00000000 -    29
 UM*                               Ext                   -    76
 UM+                               Ext                   -    82
 UM-                               Ext                   -    75
 UM/                               Ext                   -    66
 UMSI                              Ext                   -    55
Saturn Assembler                                       Wed Jun 10 22:05:33 2009
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
