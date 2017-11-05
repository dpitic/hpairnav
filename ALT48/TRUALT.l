Saturn Assembler                                       Fri Jun 19 12:11:16 2009
V3.0.9 (04/15/2007)                                      TRUALT.a       Page    1

    1             * File  TRUALT.s        1
    2             * RPL
    3             * File  TRUALT.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\TRUALT.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5             **********************************************************************
    6             * NAME:            TRUALT
    7             * AUTHOR:          Dan Pitic
    8             * VERSION:         1.14
    9             * DATE:            12 June 2009
   10             * DESCRIPTION:     Calculates the true altitude.
   11             * COMPATIBILITY:   HP50
   12             *                  HP48
   13             * USAGE:           ( u u u u -> u )
   14             * INPUT:     ca    Calibrated altitude (with units)
   15             *            sat   Static air temperature (true air temp.), deg. C
   16             *            pa    Pressure altitude (with units)
   17             *            gndst Altitude of the ground station (with units)
   18             * OUTPUT:    STACK True altitude (feet)
   19             * CALLS:           LIBRARY 326h = 806d
   20             *
   21             * File  TRUALT.s        19
   22             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALT48\ALT48.h
   23
   24             =RomId  EQU     #327
   25             * ROMID set to 327
   26
   27
   28
   29
   30
   31
   32             *|| Resuming file TRUALT.s at line 19
   33             * File  TRUALT.s        21
   34 00000       =TRUALT
   35             * File  TRUALT.s        22
   36 00000 00000         CON(5)  =DOCOL
   37             * File  TRUALT.s        23
   38 00005 00000         CON(5)  =DOLIST
   39 0000A 00000         CON(5)  =DOLAM
   40 0000F 20            CON(2)  2
   41 00011 3616          NIBASC  \ca\
   42 00015 00000         CON(5)  =DOLAM
   43 0001A 30            CON(2)  3
   44 0001C 37164         NIBASC  \sat\
            7
   45 00022 00000         CON(5)  =DOLAM
   46 00027 20            CON(2)  2
   47 00029 0716          NIBASC  \pa\
   48 0002D 00000         CON(5)  =DOLAM
   49 00032 50            CON(2)  5
   50 00034 76E64         NIBASC  \gndst\
            63747
   51 0003E 00000         CON(5)  =SEMI
   52 00043 00000         CON(5)  =BIND
   53             * LAMs
   54             * File  TRUALT.s        24
   55 00048 00000         CON(5)  =DOLAM
   56 0004D 30            CON(2)  3
   57 0004F 37164         NIBASC  \sat\
            7
   58             * = Tm
   59             * File  TRUALT.s        25
   60 00055 00000         CON(5)  =UMSI
   61             * Convert sat to K
   62             *          LAM pa ROMPTR 326 1                         ( Call ISAT [= TM] )
   63             * File  TRUALT.s        27
   64 0005A 00000         CON(5)  =DOLAM
   65 0005F 20            CON(2)  2
   66 00061 0716          NIBASC  \pa\
   67 00065 00000         CON(5)  =DOROMP
   68 0006A 623           CON(3)  #326
   69 0006D 100           CON(3)  #1
   70             * File  TRUALT.s        28
   71 00070 00000         CON(5)  =UM/
   72             * factor = Tm/TM
   73             * File  TRUALT.s        29
   74 00075 00000         CON(5)  =DOLAM
   75 0007A 20            CON(2)  2
   76 0007C 3616          NIBASC  \ca\
   77 00080 00000         CON(5)  =DOLAM
   78 00085 50            CON(2)  5
   79 00087 76E64         NIBASC  \gndst\
            63747
   80 00091 00000         CON(5)  =UM-
   81 00096 00000         CON(5)  =UM*
   82             * Multiply factor
   83             * File  TRUALT.s        30
   84 0009B 00000         CON(5)  =DOLAM
   85 000A0 50            CON(2)  5
   86 000A2 76E64         NIBASC  \gndst\
            63747
   87 000AC 00000         CON(5)  =UM+
   88             * Add gnd. st. elev.
   89             * File  TRUALT.s        31
   90 000B1 00000         CON(5)  =ABND
   91             * LAMs
   92             * File  TRUALT.s        32
   93 000B6 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:11:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       TRUALT.a       Page    2

 ABND                              Ext                   -    90
 BIND                              Ext                   -    52
 DOCOL                             Ext                   -    36
 DOLAM                             Ext                   -    39    42    45
                                          48    55    64    74    77    84
 DOLIST                            Ext                   -    38
 DOROMP                            Ext                   -    67
=RomId                             Abs     807 #00000327 -    24
 SEMI                              Ext                   -    51    93
=TRUALT                            Rel       0 #00000000 -    34
 UM*                               Ext                   -    81
 UM+                               Ext                   -    87
 UM-                               Ext                   -    80
 UM/                               Ext                   -    71
 UMSI                              Ext                   -    60
Saturn Assembler                                       Fri Jun 19 12:11:16 2009
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
