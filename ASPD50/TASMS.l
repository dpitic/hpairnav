Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)                                      TASMS.a        Page    1

    1               * File  TASMS.s 1
    2               * RPL
    3               * File  TASMS.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\TASMS.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               **********************************************************************
    6               * NAME:            TASMS
    7               * AUTHOR:          Dan Pitic
    8               * VERSION:         1.33
    9               * DATE:            13 June 2009
   10               * COMPATIBILITY:   HP50
   11               * DESCRIPTION:     Calculates the TRUE air temperature from Mach
   12               *                  number and STATIC air temperature (obtained from
   13               *                  TOTAL air temperature)
   14               * USAGE:           ( %m ut1 -> uV1 )
   15               * INPUT:     STACK     m     Mach number
   16               *            STACK     t1    STATIC air temp.
   17               * OUTPUT:    STACK     V1    True air speed in knots
   18               *
   19               * File  TASMS.s 17
   20               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD50\ASPD50.h
   21
   22               =RomId  EQU     #328
   23               * ROMID set to 328
   24
   25
   26
   27
   28
   29
   30
   31
   32               *|| Resuming file TASMS.s at line 17
   33 00000         =TASMS
   34               * File  TASMS.s 19
   35 00000 00000           CON(5)  =DOCOL
   36               * File  TASMS.s 20
   37 00005 00000           CON(5)  =UMSI
   38               * Convert T1 to K
   39               * File  TASMS.s 21
   40 0000A 00000           CON(5)  =DOREAL
   41 0000F 000             NIBHEX  000
   42 00012 0000000         NIBHEX  000000000041
            00041
   43 0001E 0               NIBHEX  0
   44               * k = 1.4 for STD atmos
   45               * File  TASMS.s 22
   46 0001F 00000           CON(5)  =DOEXT
   47               * R = Gas constant for ISA
   48               * File  TASMS.s 23
   49 00024 00000           CON(5)  =DOREAL
   50 00029 200             NIBHEX  200
   51 0002C 0000082         NIBHEX  000008250782
            50782
   52 00038 0               NIBHEX  0
   53 00039 00000           CON(5)  =DOCSTR
   54 0003E 70000           CON(5)  7
   55 00043 D6              NIBASC  \m\
   56 00045 00000           CON(5)  =%2
   57 0004A 00000           CON(5)  =um^
   58               * File  TASMS.s 24
   59 0004F 00000           CON(5)  =DOCSTR
   60 00054 70000           CON(5)  7
   61 00059 37              NIBASC  \s\
   62 0005B 00000           CON(5)  =%2
   63 00060 00000           CON(5)  =um^
   64 00065 00000           CON(5)  =DOCSTR
   65 0006A 70000           CON(5)  7
   66 0006F B4              NIBASC  \K\
   67 00071 00000           CON(5)  =um*
   68 00076 00000           CON(5)  =um/
   69 0007B 00000           CON(5)  =umEND
   70               * File  TASMS.s 25
   71 00080 00000           CON(5)  =SEMI
   72               * File  TASMS.s 26
   73 00085 00000           CON(5)  =DOLIST
   74 0008A 00000           CON(5)  =DOLAM
   75 0008F 10              CON(2)  1
   76 00091 D6              NIBASC  \m\
   77 00093 00000           CON(5)  =DOLAM
   78 00098 20              CON(2)  2
   79 0009A 4713            NIBASC  \t1\
   80 0009E 00000           CON(5)  =DOLAM
   81 000A3 10              CON(2)  1
   82 000A5 B6              NIBASC  \k\
   83 000A7 00000           CON(5)  =DOLAM
   84 000AC 10              CON(2)  1
   85 000AE 25              NIBASC  \R\
   86 000B0 00000           CON(5)  =SEMI
   87 000B5 00000           CON(5)  =BIND
   88               * LAMs for calculation of
   89               * File  TASMS.s 27
   90 000BA 00000           CON(5)  =DOLAM
   91 000BF 10              CON(2)  1
   92 000C1 D6              NIBASC  \m\
   93               * True air speed
   94               * File  TASMS.s 28
   95 000C3 00000           CON(5)  =DOLAM
   96 000C8 10              CON(2)  1
   97 000CA B6              NIBASC  \k\
   98               * File  TASMS.s 29
   99 000CC 00000           CON(5)  =DOLAM
  100 000D1 10              CON(2)  1
  101 000D3 25              NIBASC  \R\
  102               * File  TASMS.s 30
  103 000D5 00000           CON(5)  =DOLAM
  104 000DA 20              CON(2)  2
  105 000DC 4713            NIBASC  \t1\
  106               * File  TASMS.s 31
  107 000E0 00000           CON(5)  =UM*
  108               * File  TASMS.s 32
  109 000E5 00000           CON(5)  =UM*
  110               * File  TASMS.s 33
  111 000EA 00000           CON(5)  =UMSQRT
  112               * File  TASMS.s 34
  113 000EF 00000           CON(5)  =UM*
  114               * File  TASMS.s 35
  115 000F4 00000           CON(5)  =ABND
  116               * File  TASMS.s 36
  117 000F9 00000           CON(5)  =DOEXT
  118 000FE 00000           CON(5)  =DOREAL
  119 00103 000             NIBHEX  000
  120 00106 0000000         NIBHEX  000000000001
            00001
  121 00112 0               NIBHEX  0
  122 00113 00000           CON(5)  =DOCSTR
  123 00118 D0000           CON(5)  13
  124 0011D B6E6F64         NIBASC  \knot\
            7
  125 00125 00000           CON(5)  =umEND
  126 0012A 00000           CON(5)  =SEMI
  127               * Convert TAS to knot units
  128               * File  TASMS.s 37
  129 0012F 00000           CON(5)  =UMCONV
  130               * File  TASMS.s 38
  131 00134 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Symbol Table                       TASMS.a        Page    2

 %2                                Ext                   -    56    62
 ABND                              Ext                   -   115
 BIND                              Ext                   -    87
 DOCOL                             Ext                   -    35
 DOCSTR                            Ext                   -    53    59    64
                                         122
 DOEXT                             Ext                   -    46   117
 DOLAM                             Ext                   -    74    77    80
                                          83    90    95    99   103
 DOLIST                            Ext                   -    73
 DOREAL                            Ext                   -    40    49   118
=RomId                             Abs     808 #00000328 -    22
 SEMI                              Ext                   -    71    86   126
                                         131
=TASMS                             Rel       0 #00000000 -    33
 UM*                               Ext                   -   107   109   113
 UMCONV                            Ext                   -   129
 UMSI                              Ext                   -    37
 UMSQRT                            Ext                   -   111
 um*                               Ext                   -    67
 um/                               Ext                   -    68
 umEND                             Ext                   -    69   125
 um^                               Ext                   -    57    63
Saturn Assembler                                       Fri Jun 19 12:21:37 2009
V3.0.9 (04/15/2007)   Statistics                         TASMS.a        Page    3

Input Parameters

  Source file name is TASMS.a

  Listing file name is TASMS.l

  Object file name is TASMS.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
