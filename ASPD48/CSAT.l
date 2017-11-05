Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)                                      CSAT.a         Page    1

    1             * File  CSAT.s  1
    2             * RPL
    3             * File  CSAT.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CSAT.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5             **********************************************************************
    6             * NAME:            CSAT
    7             * AUTHOR:          Dan Pitic
    8             * VERSION:         1.33
    9             * DATE:            13 June 2009
   10             * COMPATIBILITY:   HP50
   11             * DESCRIPTION:     Calculates STATIC air temperature from TOTAL air
   12             *                  temperature and Mach number.
   13             * USAGE:           ( %m ut2 -> ut1 )
   14             * INPUT:     STACK     m     Mach number
   15             *            STACK     t2    TOTAL air temp. (deg C)
   16             * OUTPUT:    STACK     t1    STATIC air temp. (deg C)
   17             *
   18             * File  CSAT.s  16
   19             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD48\ASPD48.h
   20
   21             =RomId  EQU     #328
   22             * ROMID set to 328
   23
   24
   25
   26
   27
   28
   29
   30
   31
   32             *|| Resuming file CSAT.s at line 16
   33 00000       =CSAT
   34             * File  CSAT.s  18
   35 00000 00000         CON(5)  =DOCOL
   36             * File  CSAT.s  19
   37 00005 00000         CON(5)  =UMSI
   38             * Convert T2 to K
   39             * File  CSAT.s  20
   40 0000A 00000         CON(5)  =DOREAL
   41 0000F 000           NIBHEX  000
   42 00012 00000         NIBHEX  000000000041
            00000
            41
   43 0001E 0             NIBHEX  0
   44             * k = 1.4 for STD atmos.
   45             * File  CSAT.s  21
   46 0001F 00000         CON(5)  =DOLIST
   47 00024 00000         CON(5)  =DOLAM
   48 00029 10            CON(2)  1
   49 0002B D6            NIBASC  \m\
   50 0002D 00000         CON(5)  =DOLAM
   51 00032 20            CON(2)  2
   52 00034 4723          NIBASC  \t2\
   53 00038 00000         CON(5)  =DOLAM
   54 0003D 10            CON(2)  1
   55 0003F B6            NIBASC  \k\
   56 00041 00000         CON(5)  =SEMI
   57 00046 00000         CON(5)  =BIND
   58             * LAMs for calculation of
   59             * File  CSAT.s  22
   60 0004B 00000         CON(5)  =DOLAM
   61 00050 20            CON(2)  2
   62 00052 4723          NIBASC  \t2\
   63             * STATIC air temp.
   64             * File  CSAT.s  23
   65
   66             * File  CSAT.s  24
   67 00056 00000         CON(5)  =%1
   68             * File  CSAT.s  25
   69
   70             * File  CSAT.s  26
   71 0005B 00000         CON(5)  =DOLAM
   72 00060 10            CON(2)  1
   73 00062 B6            NIBASC  \k\
   74 00064 00000         CON(5)  =%1
   75 00069 00000         CON(5)  =%-
   76             * File  CSAT.s  27
   77 0006E 00000         CON(5)  =%2
   78 00073 00000         CON(5)  =%/
   79             * File  CSAT.s  28
   80
   81             * File  CSAT.s  29
   82 00078 00000         CON(5)  =DOLAM
   83 0007D 10            CON(2)  1
   84 0007F D6            NIBASC  \m\
   85 00081 00000         CON(5)  =%2
   86 00086 00000         CON(5)  =%^
   87             * File  CSAT.s  30
   88 0008B 00000         CON(5)  =%*
   89             * File  CSAT.s  31
   90 00090 00000         CON(5)  =%+
   91             * File  CSAT.s  32
   92
   93             * File  CSAT.s  33
   94 00095 00000         CON(5)  =UM/
   95             * File  CSAT.s  34
   96 0009A 00000         CON(5)  =ABND
   97             * LAMs
   98             * File  CSAT.s  35
   99 0009F 00000         CON(5)  =DOEXT
  100 000A4 00000         CON(5)  =DOREAL
  101 000A9 000           NIBHEX  000
  102 000AC 00000         NIBHEX  000000000001
            00000
            01
  103 000B8 0             NIBHEX  0
  104 000B9 00000         CON(5)  =DOCSTR
  105 000BE 90000         CON(5)  9
  106 000C3 0B            CON(2)  #B0
  107 000C5 34            NIBASC  \C\
  108 000C7 00000         CON(5)  =umEND
  109 000CC 00000         CON(5)  =SEMI
  110             * Convert T1 to deg C
  111             * File  CSAT.s  36
  112 000D1 00000         CON(5)  =UMCONV
  113             * File  CSAT.s  37
  114 000D6 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       CSAT.a         Page    2

 %*                                Ext                   -    88
 %+                                Ext                   -    90
 %-                                Ext                   -    75
 %/                                Ext                   -    78
 %1                                Ext                   -    67    74
 %2                                Ext                   -    77    85
 %^                                Ext                   -    86
 ABND                              Ext                   -    96
 BIND                              Ext                   -    57
=CSAT                              Rel       0 #00000000 -    33
 DOCOL                             Ext                   -    35
 DOCSTR                            Ext                   -   104
 DOEXT                             Ext                   -    99
 DOLAM                             Ext                   -    47    50    53
                                          60    71    82
 DOLIST                            Ext                   -    46
 DOREAL                            Ext                   -    40   100
=RomId                             Abs     808 #00000328 -    21
 SEMI                              Ext                   -    56   109   114
 UM/                               Ext                   -    94
 UMCONV                            Ext                   -   112
 UMSI                              Ext                   -    37
 umEND                             Ext                   -   108
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
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
