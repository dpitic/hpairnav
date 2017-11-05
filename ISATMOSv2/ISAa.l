Saturn Assembler                                       Tue Apr 21 18:49:40 2009
V3.0.9 (04/15/2007)                                      ISAa.a         Page    1

    1               * File  ISAa.s  1
    2               * RPL
    3               * File  ISAa.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAa.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5               ********************************************************************
    6               * Name:                           ISAa
    7               * Library #:    326h = 806d
    8               * Description:  Calculates the speed of sound in air for the standard
    9               *                                                                                                                       atmosphere ISA for a given altitude.
   10               *               Output in SI units.
   11               * Version:      1.22
   12               * Date:         17 April 2009
   13               * Input:      STACK                             Geopotential altitude (with units)
   14               * Output:     STACK                             Speed of sound in ISA (m/s)
   15               * File  ISAa.s  13
   16
   17               * File  ISAa.s  14
   18               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv2\ISATM.h
   19
   20               =RomId  EQU     #326
   21               * ROMID set to 326
   22
   23
   24
   25
   26
   27
   28
   29
   30               *|| Resuming file ISAa.s at line 14
   31 00000 000000          CON(6)  =~xISAa
   32 00006         =xISAa
   33               * File  ISAa.s  16
   34 00006 00000           CON(5)  =DOCOL
   35               * File  ISAa.s  17
   36 0000B 00000           CON(5)  =CK1&Dispatch
   37               * Check for 1 argument
   38               * File  ISAa.s  18
   39 00010 00000           CON(5)  =BINT14
   40 00015 00000           CON(5)  =DOCOL
   41               * Unit object
   42               * File  ISAa.s  19
   43 0001A 00000           CON(5)  =UMSI
   44               * Convert to SI units
   45               * File  ISAa.s  20
   46 0001F 00000           CON(5)  =DOROMP
   47 00024 000000          CON(6)  =~xISAT
   48               * File  ISAa.s  21
   49 0002A 00000           CON(5)  =DOEXT
   50 0002F 00000           CON(5)  =DOREAL
   51 00034 200             NIBHEX  200
   52 00037 0000082         NIBHEX  000008250782
            50782
   53 00043 0               NIBHEX  0
   54 00044 00000           CON(5)  =DOCSTR
   55 00049 70000           CON(5)  7
   56 0004E D6              NIBASC  \m\
   57 00050 00000           CON(5)  =%2
   58 00055 00000           CON(5)  =um^
   59 0005A 00000           CON(5)  =DOCSTR
   60 0005F 70000           CON(5)  7
   61 00064 37              NIBASC  \s\
   62 00066 00000           CON(5)  =%2
   63 0006B 00000           CON(5)  =um^
   64 00070 00000           CON(5)  =DOCSTR
   65 00075 70000           CON(5)  7
   66 0007A B4              NIBASC  \K\
   67 0007C 00000           CON(5)  =um*
   68 00081 00000           CON(5)  =um/
   69 00086 00000           CON(5)  =umEND
   70 0008B 00000           CON(5)  =SEMI
   71               * File  ISAa.s  22
   72 00090 00000           CON(5)  =UM*
   73               * File  ISAa.s  23
   74 00095 00000           CON(5)  =DOREAL
   75 0009A 000             NIBHEX  000
   76 0009D 0000000         NIBHEX  000000000041
            00041
   77 000A9 0               NIBHEX  0
   78               * File  ISAa.s  24
   79 000AA 00000           CON(5)  =UM*
   80               * File  ISAa.s  25
   81 000AF 00000           CON(5)  =UMSQRT
   82               * File  ISAa.s  26
   83 000B4 00000           CON(5)  =SEMI
   84               * Return ISA speed of sound [m/s]
   85               * File  ISAa.s  27
   86 000B9 00000           CON(5)  =SEMI
   87               * in air at altitude
Saturn Assembler                                       Tue Apr 21 18:49:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAa.a         Page    2

 %2                                Ext                   -    57    62
 BINT14                            Ext                   -    39
 CK1&Dispatch                      Ext                   -    36
 DOCOL                             Ext                   -    34    40
 DOCSTR                            Ext                   -    54    59    64
 DOEXT                             Ext                   -    49
 DOREAL                            Ext                   -    50    74
 DOROMP                            Ext                   -    46
=RomId                             Abs     806 #00000326 -    20
 SEMI                              Ext                   -    70    83    86
 UM*                               Ext                   -    72    79
 UMSI                              Ext                   -    43
 UMSQRT                            Ext                   -    81
 um*                               Ext                   -    67
 um/                               Ext                   -    68
 umEND                             Ext                   -    69
 um^                               Ext                   -    58    63
=xISAa                             Rel       6 #00000006 -    32
 ~xISAT                            Ext                   -    47
 ~xISAa                            Ext                   -    31
Saturn Assembler                                       Tue Apr 21 18:49:40 2009
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
