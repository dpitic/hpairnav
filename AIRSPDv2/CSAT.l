Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)                                      CSAT.a         Page    1

    1               * File  CSAT.s  1
    2               * RPL
    3               * File  CSAT.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CSAT.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               ********************************************************************\
    6               * NAME:            CSAT
    7               * DESCRIPTION:     Calculates STATIC air temperature from TOTAL air
    8               *                  temperature and Mach number.
    9               * INPUT:     STACK     m     Mach number
   10               *            STACK     t2    TOTAL air temp. (deg C)
   11               * OUTPUT:    STACK     t1    STATIC air temp. (deg C)
   12               *
   13               * File  CSAT.s  11
   14               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPD.h
   15
   16               =RomId  EQU     #328
   17               * ROMID set to 328
   18
   19
   20
   21
   22
   23
   24
   25
   26               *|| Resuming file CSAT.s at line 11
   27 00000         =CSAT
   28               * File  CSAT.s  13
   29 00000 00000           CON(5)  =DOCOL
   30               * File  CSAT.s  14
   31 00005 00000           CON(5)  =UMSI
   32               * Convert T2 to K
   33               * File  CSAT.s  15
   34 0000A 00000           CON(5)  =DOREAL
   35 0000F 000             NIBHEX  000
   36 00012 0000000         NIBHEX  000000000041
            00041
   37 0001E 0               NIBHEX  0
   38               * k = 1.4 for STD atmos.
   39               * File  CSAT.s  16
   40 0001F 00000           CON(5)  =DOLIST
   41 00024 00000           CON(5)  =DOLAM
   42 00029 10              CON(2)  1
   43 0002B D6              NIBASC  \m\
   44 0002D 00000           CON(5)  =DOLAM
   45 00032 20              CON(2)  2
   46 00034 4723            NIBASC  \t2\
   47 00038 00000           CON(5)  =DOLAM
   48 0003D 10              CON(2)  1
   49 0003F B6              NIBASC  \k\
   50 00041 00000           CON(5)  =SEMI
   51 00046 00000           CON(5)  =BIND
   52               * LAMs for calculation of
   53               * File  CSAT.s  17
   54 0004B 00000           CON(5)  =DOLAM
   55 00050 20              CON(2)  2
   56 00052 4723            NIBASC  \t2\
   57               * STATIC air temp.
   58               * File  CSAT.s  18
   59
   60               * File  CSAT.s  19
   61 00056 00000           CON(5)  =%1
   62               * File  CSAT.s  20
   63
   64               * File  CSAT.s  21
   65 0005B 00000           CON(5)  =DOLAM
   66 00060 10              CON(2)  1
   67 00062 B6              NIBASC  \k\
   68 00064 00000           CON(5)  =%1
   69 00069 00000           CON(5)  =%-
   70               * File  CSAT.s  22
   71 0006E 00000           CON(5)  =%2
   72 00073 00000           CON(5)  =%/
   73               * File  CSAT.s  23
   74
   75               * File  CSAT.s  24
   76 00078 00000           CON(5)  =DOLAM
   77 0007D 10              CON(2)  1
   78 0007F D6              NIBASC  \m\
   79 00081 00000           CON(5)  =%2
   80 00086 00000           CON(5)  =%^
   81               * File  CSAT.s  25
   82 0008B 00000           CON(5)  =%*
   83               * File  CSAT.s  26
   84 00090 00000           CON(5)  =%+
   85               * File  CSAT.s  27
   86
   87               * File  CSAT.s  28
   88 00095 00000           CON(5)  =UM/
   89               * File  CSAT.s  29
   90 0009A 00000           CON(5)  =ABND
   91               * LAMs
   92               * File  CSAT.s  30
   93 0009F 00000           CON(5)  =DOEXT
   94 000A4 00000           CON(5)  =DOREAL
   95 000A9 000             NIBHEX  000
   96 000AC 0000000         NIBHEX  000000000001
            00001
   97 000B8 0               NIBHEX  0
   98 000B9 00000           CON(5)  =DOCSTR
   99 000BE 90000           CON(5)  9
  100 000C3 0B              CON(2)  #B0
  101 000C5 34              NIBASC  \C\
  102 000C7 00000           CON(5)  =umEND
  103 000CC 00000           CON(5)  =SEMI
  104               * Convert T1 to deg C
  105               * File  CSAT.s  31
  106 000D1 00000           CON(5)  =UMCONV
  107               * File  CSAT.s  32
  108 000D6 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Symbol Table                       CSAT.a         Page    2

 %*                                Ext                   -    82
 %+                                Ext                   -    84
 %-                                Ext                   -    69
 %/                                Ext                   -    72
 %1                                Ext                   -    61    68
 %2                                Ext                   -    71    79
 %^                                Ext                   -    80
 ABND                              Ext                   -    90
 BIND                              Ext                   -    51
=CSAT                              Rel       0 #00000000 -    27
 DOCOL                             Ext                   -    29
 DOCSTR                            Ext                   -    98
 DOEXT                             Ext                   -    93
 DOLAM                             Ext                   -    41    44    47
                                          54    65    76
 DOLIST                            Ext                   -    40
 DOREAL                            Ext                   -    34    94
=RomId                             Abs     808 #00000328 -    16
 SEMI                              Ext                   -    50   103   108
 UM/                               Ext                   -    88
 UMCONV                            Ext                   -   106
 UMSI                              Ext                   -    31
 umEND                             Ext                   -   102
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Statistics                         CSAT.a         Page    3

Input Parameters

  Source file name is CSAT.a

  Listing file name is CSAT.l

  Object file name is CSAT.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
