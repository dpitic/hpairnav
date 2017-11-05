Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)                                      CTAT.a         Page    1

    1               * File  CTAT.s  1
    2               * RPL
    3               * File  CTAT.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CTAT.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               ********************************************************************
    6               * NAME:            CTAT
    7               * DESCRIPTION:     Calculates the TOTAL air temperature from Mach
    8               *                  number and STATIC air temp.
    9               * INPUT:     STACK    m     Mach number
   10               *            STACK    t1    STATIC air temp (K)
   11               * OUTPUT:    STACK    T2    TOTAL air temp (deg C)
   12               *
   13               * File  CTAT.s  11
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
   26               *|| Resuming file CTAT.s at line 11
   27 00000         =CTAT
   28               * File  CTAT.s  13
   29 00000 00000           CON(5)  =DOCOL
   30               * File  CTAT.s  14
   31 00005 00000           CON(5)  =UMSI
   32               * Convert T1 [SAT] to K
   33               * File  CTAT.s  15
   34 0000A 00000           CON(5)  =DOREAL
   35 0000F 000             NIBHEX  000
   36 00012 0000000         NIBHEX  000000000041
            00041
   37 0001E 0               NIBHEX  0
   38               * k = 1.4 for STD atmos
   39               * File  CTAT.s  16
   40 0001F 00000           CON(5)  =DOLIST
   41 00024 00000           CON(5)  =DOLAM
   42 00029 10              CON(2)  1
   43 0002B D6              NIBASC  \m\
   44 0002D 00000           CON(5)  =DOLAM
   45 00032 20              CON(2)  2
   46 00034 4713            NIBASC  \t1\
   47 00038 00000           CON(5)  =DOLAM
   48 0003D 10              CON(2)  1
   49 0003F B6              NIBASC  \k\
   50 00041 00000           CON(5)  =SEMI
   51 00046 00000           CON(5)  =BIND
   52               * LAMs for calculation of TAT
   53               * File  CTAT.s  17
   54 0004B 00000           CON(5)  =DOLAM
   55 00050 20              CON(2)  2
   56 00052 4713            NIBASC  \t1\
   57               * File  CTAT.s  18
   58 00056 00000           CON(5)  =%1
   59               * File  CTAT.s  19
   60
   61               * File  CTAT.s  20
   62 0005B 00000           CON(5)  =DOLAM
   63 00060 10              CON(2)  1
   64 00062 B6              NIBASC  \k\
   65 00064 00000           CON(5)  =%1
   66 00069 00000           CON(5)  =%-
   67               * File  CTAT.s  21
   68 0006E 00000           CON(5)  =%2
   69 00073 00000           CON(5)  =%/
   70               * File  CTAT.s  22
   71
   72               * File  CTAT.s  23
   73 00078 00000           CON(5)  =DOLAM
   74 0007D 10              CON(2)  1
   75 0007F D6              NIBASC  \m\
   76 00081 00000           CON(5)  =%2
   77 00086 00000           CON(5)  =%^
   78               * File  CTAT.s  24
   79 0008B 00000           CON(5)  =%*
   80               * File  CTAT.s  25
   81 00090 00000           CON(5)  =%+
   82               * File  CTAT.s  26
   83 00095 00000           CON(5)  =UM*
   84               * File  CTAT.s  27
   85 0009A 00000           CON(5)  =ABND
   86               * LAMs
   87               * File  CTAT.s  28
   88 0009F 00000           CON(5)  =DOEXT
   89 000A4 00000           CON(5)  =DOREAL
   90 000A9 000             NIBHEX  000
   91 000AC 0000000         NIBHEX  000000000001
            00001
   92 000B8 0               NIBHEX  0
   93 000B9 00000           CON(5)  =DOCSTR
   94 000BE 90000           CON(5)  9
   95 000C3 0B              CON(2)  #B0
   96 000C5 34              NIBASC  \C\
   97 000C7 00000           CON(5)  =umEND
   98 000CC 00000           CON(5)  =SEMI
   99               * Convert TAT to deg C
  100               * File  CTAT.s  29
  101 000D1 00000           CON(5)  =UMCONV
  102               * File  CTAT.s  30
  103 000D6 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Symbol Table                       CTAT.a         Page    2

 %*                                Ext                   -    79
 %+                                Ext                   -    81
 %-                                Ext                   -    66
 %/                                Ext                   -    69
 %1                                Ext                   -    58    65
 %2                                Ext                   -    68    76
 %^                                Ext                   -    77
 ABND                              Ext                   -    85
 BIND                              Ext                   -    51
=CTAT                              Rel       0 #00000000 -    27
 DOCOL                             Ext                   -    29
 DOCSTR                            Ext                   -    93
 DOEXT                             Ext                   -    88
 DOLAM                             Ext                   -    41    44    47
                                          54    62    73
 DOLIST                            Ext                   -    40
 DOREAL                            Ext                   -    34    89
=RomId                             Abs     808 #00000328 -    16
 SEMI                              Ext                   -    50    98   103
 UM*                               Ext                   -    83
 UMCONV                            Ext                   -   101
 UMSI                              Ext                   -    31
 umEND                             Ext                   -    97
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Statistics                         CTAT.a         Page    3

Input Parameters

  Source file name is CTAT.a

  Listing file name is CTAT.l

  Object file name is CTAT.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
