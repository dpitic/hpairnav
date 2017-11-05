Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)                                      CSAT.a         Page    1

    1               * File  CSAT.s  1
    2               * RPL
    3               * File  CSAT.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CSAT.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               **********************************************************************
    6               * NAME:            CSAT
    7               * AUTHOR:          Dan Pitic
    8               * VERSION:         1.33
    9               * DATE:            13 June 2009
   10               * COMPATIBILITY:   HP50
   11               * DESCRIPTION:     Calculates STATIC air temperature from TOTAL air
   12               *                  temperature and Mach number.
   13               * USAGE:           ( %m ut2 -> ut1 )
   14               * INPUT:     STACK     m     Mach number
   15               *            STACK     t2    TOTAL air temp. (deg C)
   16               * OUTPUT:    STACK     t1    STATIC air temp. (deg C)
   17               *
   18               * File  CSAT.s  16
   19               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD50\ASPD50.h
   20
   21               =RomId  EQU     #328
   22               * ROMID set to 328
   23
   24
   25
   26
   27
   28
   29
   30
   31               *|| Resuming file CSAT.s at line 16
   32 00000         =CSAT
   33               * File  CSAT.s  18
   34 00000 00000           CON(5)  =DOCOL
   35               * File  CSAT.s  19
   36 00005 00000           CON(5)  =UMSI
   37               * Convert T2 to K
   38               * File  CSAT.s  20
   39 0000A 00000           CON(5)  =DOREAL
   40 0000F 000             NIBHEX  000
   41 00012 0000000         NIBHEX  000000000041
            00041
   42 0001E 0               NIBHEX  0
   43               * k = 1.4 for STD atmos.
   44               * File  CSAT.s  21
   45 0001F 00000           CON(5)  =DOLIST
   46 00024 00000           CON(5)  =DOLAM
   47 00029 10              CON(2)  1
   48 0002B D6              NIBASC  \m\
   49 0002D 00000           CON(5)  =DOLAM
   50 00032 20              CON(2)  2
   51 00034 4723            NIBASC  \t2\
   52 00038 00000           CON(5)  =DOLAM
   53 0003D 10              CON(2)  1
   54 0003F B6              NIBASC  \k\
   55 00041 00000           CON(5)  =SEMI
   56 00046 00000           CON(5)  =BIND
   57               * LAMs for calculation of
   58               * File  CSAT.s  22
   59 0004B 00000           CON(5)  =DOLAM
   60 00050 20              CON(2)  2
   61 00052 4723            NIBASC  \t2\
   62               * STATIC air temp.
   63               * File  CSAT.s  23
   64
   65               * File  CSAT.s  24
   66 00056 00000           CON(5)  =%1
   67               * File  CSAT.s  25
   68
   69               * File  CSAT.s  26
   70 0005B 00000           CON(5)  =DOLAM
   71 00060 10              CON(2)  1
   72 00062 B6              NIBASC  \k\
   73 00064 00000           CON(5)  =%1
   74 00069 00000           CON(5)  =%-
   75               * File  CSAT.s  27
   76 0006E 00000           CON(5)  =%2
   77 00073 00000           CON(5)  =%/
   78               * File  CSAT.s  28
   79
   80               * File  CSAT.s  29
   81 00078 00000           CON(5)  =DOLAM
   82 0007D 10              CON(2)  1
   83 0007F D6              NIBASC  \m\
   84 00081 00000           CON(5)  =%2
   85 00086 00000           CON(5)  =%^
   86               * File  CSAT.s  30
   87 0008B 00000           CON(5)  =%*
   88               * File  CSAT.s  31
   89 00090 00000           CON(5)  =%+
   90               * File  CSAT.s  32
   91
   92               * File  CSAT.s  33
   93 00095 00000           CON(5)  =UM/
   94               * File  CSAT.s  34
   95 0009A 00000           CON(5)  =ABND
   96               * LAMs
   97               * File  CSAT.s  35
   98 0009F 00000           CON(5)  =DOEXT
   99 000A4 00000           CON(5)  =DOREAL
  100 000A9 000             NIBHEX  000
  101 000AC 0000000         NIBHEX  000000000001
            00001
  102 000B8 0               NIBHEX  0
  103 000B9 00000           CON(5)  =DOCSTR
  104 000BE 90000           CON(5)  9
  105 000C3 0B              CON(2)  #B0
  106 000C5 34              NIBASC  \C\
  107 000C7 00000           CON(5)  =umEND
  108 000CC 00000           CON(5)  =SEMI
  109               * Convert T1 to deg C
  110               * File  CSAT.s  36
  111 000D1 00000           CON(5)  =UMCONV
  112               * File  CSAT.s  37
  113 000D6 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Symbol Table                       CSAT.a         Page    2

 %*                                Ext                   -    87
 %+                                Ext                   -    89
 %-                                Ext                   -    74
 %/                                Ext                   -    77
 %1                                Ext                   -    66    73
 %2                                Ext                   -    76    84
 %^                                Ext                   -    85
 ABND                              Ext                   -    95
 BIND                              Ext                   -    56
=CSAT                              Rel       0 #00000000 -    32
 DOCOL                             Ext                   -    34
 DOCSTR                            Ext                   -   103
 DOEXT                             Ext                   -    98
 DOLAM                             Ext                   -    46    49    52
                                          59    70    81
 DOLIST                            Ext                   -    45
 DOREAL                            Ext                   -    39    99
=RomId                             Abs     808 #00000328 -    21
 SEMI                              Ext                   -    55   108   113
 UM/                               Ext                   -    93
 UMCONV                            Ext                   -   111
 UMSI                              Ext                   -    36
 umEND                             Ext                   -   107
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
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
