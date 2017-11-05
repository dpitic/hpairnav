Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)                                      ISAa.a         Page    1

    1               * File  ISAa.s  1
    2               * RPL
    3               * File  ISAa.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOS\ISAa.s, part of the ISATM.hpp project, created by <> on 2/04/2009
    5               ********************************************************************
    6               * Name:                           ISAa
    7               * Library #:    326h = 806d
    8               * Description:  Calculates the speed of sound in air for the standard
    9               *                                                                                                                       atmosphere ISA for a given altitude.
   10               *               Output in SI units.
   11               * Version:      1.21
   12               * Date:         02 April 2009
   13               * Input:      STACK                             Geopotential altitude (with units)
   14               * Output:     STACK                             Speed of sound in ISA (SI units)
   15               * File  ISAa.s  13
   16
   17               * File  ISAa.s  14
   18               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOS\ISATM.h
   19
   20               =RomId  EQU     #326
   21               * ROMID set to 326
   22
   23
   24
   25
   26
   27
   28               *|| Resuming file ISAa.s at line 14
   29 00000 000000          CON(6)  =~xISAa
   30 00006         =xISAa
   31               * File  ISAa.s  16
   32 00006 00000           CON(5)  =DOCOL
   33               * File  ISAa.s  17
   34 0000B 00000           CON(5)  =CK1&Dispatch
   35               * Check for 1 argument
   36               * File  ISAa.s  18
   37 00010 00000           CON(5)  =BINT14
   38 00015 00000           CON(5)  =DOCOL
   39               * Must be unit object
   40               * File  ISAa.s  19
   41 0001A 00000           CON(5)  =UMSI
   42               * Convert to SI units
   43               * File  ISAa.s  20
   44 0001F 00000           CON(5)  =DOROMP
   45 00024 000000          CON(6)  =~xISAT
   46               * File  ISAa.s  21
   47 0002A 00000           CON(5)  =DOEXT
   48 0002F 00000           CON(5)  =DOREAL
   49 00034 200             NIBHEX  200
   50 00037 0000082         NIBHEX  000008250782
            50782
   51 00043 0               NIBHEX  0
   52 00044 00000           CON(5)  =DOCSTR
   53 00049 70000           CON(5)  7
   54 0004E D6              NIBASC  \m\
   55 00050 00000           CON(5)  =%2
   56 00055 00000           CON(5)  =um^
   57 0005A 00000           CON(5)  =DOCSTR
   58 0005F 70000           CON(5)  7
   59 00064 37              NIBASC  \s\
   60 00066 00000           CON(5)  =%2
   61 0006B 00000           CON(5)  =um^
   62 00070 00000           CON(5)  =DOCSTR
   63 00075 70000           CON(5)  7
   64 0007A B4              NIBASC  \K\
   65 0007C 00000           CON(5)  =um*
   66 00081 00000           CON(5)  =um/
   67 00086 00000           CON(5)  =umEND
   68 0008B 00000           CON(5)  =SEMI
   69               * File  ISAa.s  22
   70 00090 00000           CON(5)  =UM*
   71               * File  ISAa.s  23
   72 00095 00000           CON(5)  =DOREAL
   73 0009A 000             NIBHEX  000
   74 0009D 0000000         NIBHEX  000000000041
            00041
   75 000A9 0               NIBHEX  0
   76               * File  ISAa.s  24
   77 000AA 00000           CON(5)  =UM*
   78               * File  ISAa.s  25
   79 000AF 00000           CON(5)  =UMSQRT
   80               * File  ISAa.s  26
   81 000B4 00000           CON(5)  =SEMI
   82               * Return ISA speed of sound
   83               * File  ISAa.s  27
   84 000B9 00000           CON(5)  =SEMI
   85               * in air at altitude
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAa.a         Page    2

 %2                                Ext                   -    55    60
 BINT14                            Ext                   -    37
 CK1&Dispatch                      Ext                   -    34
 DOCOL                             Ext                   -    32    38
 DOCSTR                            Ext                   -    52    57    62
 DOEXT                             Ext                   -    47
 DOREAL                            Ext                   -    48    72
 DOROMP                            Ext                   -    44
=RomId                             Abs     806 #00000326 -    20
 SEMI                              Ext                   -    68    81    84
 UM*                               Ext                   -    70    77
 UMSI                              Ext                   -    41
 UMSQRT                            Ext                   -    79
 um*                               Ext                   -    65
 um/                               Ext                   -    66
 umEND                             Ext                   -    67
 um^                               Ext                   -    56    61
=xISAa                             Rel       6 #00000006 -    30
 ~xISAT                            Ext                   -    45
 ~xISAa                            Ext                   -    29
Saturn Assembler                                       Thu Apr 16 17:08:19 2009
V3.0.9 (04/15/2007)   Statistics                         ISAa.a         Page    3

Input Parameters

  Source file name is ISAa.a

  Listing file name is ISAa.l

  Object file name is ISAa.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
