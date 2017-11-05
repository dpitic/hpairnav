Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)                                      CTAT.a         Page    1

    1             * File  CTAT.s  1
    2             * RPL
    3             * File  CTAT.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CTAT.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5             **********************************************************************
    6             * NAME:            CTAT
    7             * AUTHOR:          Dan Pitic
    8             * VERSION:         1.33
    9             * DATE:            13 June 2009
   10             * COMPATIBILITY:   HP50
   11             * DESCRIPTION:     Calculates the TOTAL air temperature from Mach
   12             *                  number and STATIC air temp.
   13             * USAGE:           ( %m ut1 -> ut2 )
   14             * INPUT:     STACK    m     Mach number
   15             *            STACK    t1    STATIC air temp (K)
   16             * OUTPUT:    STACK    t2    TOTAL air temp (deg C)
   17             *
   18             * File  CTAT.s  16
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
   32             *|| Resuming file CTAT.s at line 16
   33 00000       =CTAT
   34             * File  CTAT.s  18
   35 00000 00000         CON(5)  =DOCOL
   36             * File  CTAT.s  19
   37 00005 00000         CON(5)  =UMSI
   38             * Convert T1 [SAT] to K
   39             * File  CTAT.s  20
   40 0000A 00000         CON(5)  =DOREAL
   41 0000F 000           NIBHEX  000
   42 00012 00000         NIBHEX  000000000041
            00000
            41
   43 0001E 0             NIBHEX  0
   44             * k = 1.4 for STD atmos
   45             * File  CTAT.s  21
   46 0001F 00000         CON(5)  =DOLIST
   47 00024 00000         CON(5)  =DOLAM
   48 00029 10            CON(2)  1
   49 0002B D6            NIBASC  \m\
   50 0002D 00000         CON(5)  =DOLAM
   51 00032 20            CON(2)  2
   52 00034 4713          NIBASC  \t1\
   53 00038 00000         CON(5)  =DOLAM
   54 0003D 10            CON(2)  1
   55 0003F B6            NIBASC  \k\
   56 00041 00000         CON(5)  =SEMI
   57 00046 00000         CON(5)  =BIND
   58             * LAMs for calculation of TAT
   59             * File  CTAT.s  22
   60 0004B 00000         CON(5)  =DOLAM
   61 00050 20            CON(2)  2
   62 00052 4713          NIBASC  \t1\
   63             * File  CTAT.s  23
   64 00056 00000         CON(5)  =%1
   65             * File  CTAT.s  24
   66
   67             * File  CTAT.s  25
   68 0005B 00000         CON(5)  =DOLAM
   69 00060 10            CON(2)  1
   70 00062 B6            NIBASC  \k\
   71 00064 00000         CON(5)  =%1
   72 00069 00000         CON(5)  =%-
   73             * File  CTAT.s  26
   74 0006E 00000         CON(5)  =%2
   75 00073 00000         CON(5)  =%/
   76             * File  CTAT.s  27
   77
   78             * File  CTAT.s  28
   79 00078 00000         CON(5)  =DOLAM
   80 0007D 10            CON(2)  1
   81 0007F D6            NIBASC  \m\
   82 00081 00000         CON(5)  =%2
   83 00086 00000         CON(5)  =%^
   84             * File  CTAT.s  29
   85 0008B 00000         CON(5)  =%*
   86             * File  CTAT.s  30
   87 00090 00000         CON(5)  =%+
   88             * File  CTAT.s  31
   89 00095 00000         CON(5)  =UM*
   90             * File  CTAT.s  32
   91 0009A 00000         CON(5)  =ABND
   92             * LAMs
   93             * File  CTAT.s  33
   94 0009F 00000         CON(5)  =DOEXT
   95 000A4 00000         CON(5)  =DOREAL
   96 000A9 000           NIBHEX  000
   97 000AC 00000         NIBHEX  000000000001
            00000
            01
   98 000B8 0             NIBHEX  0
   99 000B9 00000         CON(5)  =DOCSTR
  100 000BE 90000         CON(5)  9
  101 000C3 0B            CON(2)  #B0
  102 000C5 34            NIBASC  \C\
  103 000C7 00000         CON(5)  =umEND
  104 000CC 00000         CON(5)  =SEMI
  105             * Convert TAT to deg C
  106             * File  CTAT.s  34
  107 000D1 00000         CON(5)  =UMCONV
  108             * File  CTAT.s  35
  109 000D6 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       CTAT.a         Page    2

 %*                                Ext                   -    85
 %+                                Ext                   -    87
 %-                                Ext                   -    72
 %/                                Ext                   -    75
 %1                                Ext                   -    64    71
 %2                                Ext                   -    74    82
 %^                                Ext                   -    83
 ABND                              Ext                   -    91
 BIND                              Ext                   -    57
=CTAT                              Rel       0 #00000000 -    33
 DOCOL                             Ext                   -    35
 DOCSTR                            Ext                   -    99
 DOEXT                             Ext                   -    94
 DOLAM                             Ext                   -    47    50    53
                                          60    68    79
 DOLIST                            Ext                   -    46
 DOREAL                            Ext                   -    40    95
=RomId                             Abs     808 #00000328 -    21
 SEMI                              Ext                   -    56   104   109
 UM*                               Ext                   -    89
 UMCONV                            Ext                   -   107
 UMSI                              Ext                   -    37
 umEND                             Ext                   -   103
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
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
