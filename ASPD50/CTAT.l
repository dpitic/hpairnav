Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)                                      CTAT.a         Page    1

    1               * File  CTAT.s  1
    2               * RPL
    3               * File  CTAT.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CTAT.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               **********************************************************************
    6               * NAME:            CTAT
    7               * AUTHOR:          Dan Pitic
    8               * VERSION:         1.33
    9               * DATE:            13 June 2009
   10               * COMPATIBILITY:   HP50
   11               * DESCRIPTION:     Calculates the TOTAL air temperature from Mach
   12               *                  number and STATIC air temp.
   13               * USAGE:           ( %m ut1 -> ut2 )
   14               * INPUT:     STACK    m     Mach number
   15               *            STACK    t1    STATIC air temp (K)
   16               * OUTPUT:    STACK    t2    TOTAL air temp (deg C)
   17               *
   18               * File  CTAT.s  16
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
   31               *|| Resuming file CTAT.s at line 16
   32 00000         =CTAT
   33               * File  CTAT.s  18
   34 00000 00000           CON(5)  =DOCOL
   35               * File  CTAT.s  19
   36 00005 00000           CON(5)  =UMSI
   37               * Convert T1 [SAT] to K
   38               * File  CTAT.s  20
   39 0000A 00000           CON(5)  =DOREAL
   40 0000F 000             NIBHEX  000
   41 00012 0000000         NIBHEX  000000000041
            00041
   42 0001E 0               NIBHEX  0
   43               * k = 1.4 for STD atmos
   44               * File  CTAT.s  21
   45 0001F 00000           CON(5)  =DOLIST
   46 00024 00000           CON(5)  =DOLAM
   47 00029 10              CON(2)  1
   48 0002B D6              NIBASC  \m\
   49 0002D 00000           CON(5)  =DOLAM
   50 00032 20              CON(2)  2
   51 00034 4713            NIBASC  \t1\
   52 00038 00000           CON(5)  =DOLAM
   53 0003D 10              CON(2)  1
   54 0003F B6              NIBASC  \k\
   55 00041 00000           CON(5)  =SEMI
   56 00046 00000           CON(5)  =BIND
   57               * LAMs for calculation of TAT
   58               * File  CTAT.s  22
   59 0004B 00000           CON(5)  =DOLAM
   60 00050 20              CON(2)  2
   61 00052 4713            NIBASC  \t1\
   62               * File  CTAT.s  23
   63 00056 00000           CON(5)  =%1
   64               * File  CTAT.s  24
   65
   66               * File  CTAT.s  25
   67 0005B 00000           CON(5)  =DOLAM
   68 00060 10              CON(2)  1
   69 00062 B6              NIBASC  \k\
   70 00064 00000           CON(5)  =%1
   71 00069 00000           CON(5)  =%-
   72               * File  CTAT.s  26
   73 0006E 00000           CON(5)  =%2
   74 00073 00000           CON(5)  =%/
   75               * File  CTAT.s  27
   76
   77               * File  CTAT.s  28
   78 00078 00000           CON(5)  =DOLAM
   79 0007D 10              CON(2)  1
   80 0007F D6              NIBASC  \m\
   81 00081 00000           CON(5)  =%2
   82 00086 00000           CON(5)  =%^
   83               * File  CTAT.s  29
   84 0008B 00000           CON(5)  =%*
   85               * File  CTAT.s  30
   86 00090 00000           CON(5)  =%+
   87               * File  CTAT.s  31
   88 00095 00000           CON(5)  =UM*
   89               * File  CTAT.s  32
   90 0009A 00000           CON(5)  =ABND
   91               * LAMs
   92               * File  CTAT.s  33
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
  104               * Convert TAT to deg C
  105               * File  CTAT.s  34
  106 000D1 00000           CON(5)  =UMCONV
  107               * File  CTAT.s  35
  108 000D6 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Symbol Table                       CTAT.a         Page    2

 %*                                Ext                   -    84
 %+                                Ext                   -    86
 %-                                Ext                   -    71
 %/                                Ext                   -    74
 %1                                Ext                   -    63    70
 %2                                Ext                   -    73    81
 %^                                Ext                   -    82
 ABND                              Ext                   -    90
 BIND                              Ext                   -    56
=CTAT                              Rel       0 #00000000 -    32
 DOCOL                             Ext                   -    34
 DOCSTR                            Ext                   -    98
 DOEXT                             Ext                   -    93
 DOLAM                             Ext                   -    46    49    52
                                          59    67    78
 DOLIST                            Ext                   -    45
 DOREAL                            Ext                   -    39    94
=RomId                             Abs     808 #00000328 -    21
 SEMI                              Ext                   -    55   103   108
 UM*                               Ext                   -    88
 UMCONV                            Ext                   -   106
 UMSI                              Ext                   -    36
 umEND                             Ext                   -   102
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
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
