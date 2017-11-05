Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)                                      TASMS.a        Page    1

    1             * File  TASMS.s 1
    2             * RPL
    3             * File  TASMS.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\TASMS.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5             **********************************************************************
    6             * NAME:            TASMS
    7             * AUTHOR:          Dan Pitic
    8             * VERSION:         1.33
    9             * DATE:            13 June 2009
   10             * COMPATIBILITY:   HP50
   11             * DESCRIPTION:     Calculates the TRUE air temperature from Mach
   12             *                  number and STATIC air temperature (obtained from
   13             *                  TOTAL air temperature)
   14             * USAGE:           ( %m ut1 -> uV1 )
   15             * INPUT:     STACK     m     Mach number
   16             *            STACK     t1    STATIC air temp.
   17             * OUTPUT:    STACK     V1    True air speed in knots
   18             *
   19             * File  TASMS.s 17
   20             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD48\ASPD48.h
   21
   22             =RomId  EQU     #328
   23             * ROMID set to 328
   24
   25
   26
   27
   28
   29
   30
   31
   32
   33             *|| Resuming file TASMS.s at line 17
   34 00000       =TASMS
   35             * File  TASMS.s 19
   36 00000 00000         CON(5)  =DOCOL
   37             * File  TASMS.s 20
   38 00005 00000         CON(5)  =UMSI
   39             * Convert T1 to K
   40             * File  TASMS.s 21
   41 0000A 00000         CON(5)  =DOREAL
   42 0000F 000           NIBHEX  000
   43 00012 00000         NIBHEX  000000000041
            00000
            41
   44 0001E 0             NIBHEX  0
   45             * k = 1.4 for STD atmos
   46             * File  TASMS.s 22
   47 0001F 00000         CON(5)  =DOEXT
   48             * R = Gas constant for ISA
   49             * File  TASMS.s 23
   50 00024 00000         CON(5)  =DOREAL
   51 00029 200           NIBHEX  200
   52 0002C 00000         NIBHEX  000008250782
            82507
            82
   53 00038 0             NIBHEX  0
   54 00039 00000         CON(5)  =DOCSTR
   55 0003E 70000         CON(5)  7
   56 00043 D6            NIBASC  \m\
   57 00045 00000         CON(5)  =%2
   58 0004A 00000         CON(5)  =um^
   59             * File  TASMS.s 24
   60 0004F 00000         CON(5)  =DOCSTR
   61 00054 70000         CON(5)  7
   62 00059 37            NIBASC  \s\
   63 0005B 00000         CON(5)  =%2
   64 00060 00000         CON(5)  =um^
   65 00065 00000         CON(5)  =DOCSTR
   66 0006A 70000         CON(5)  7
   67 0006F B4            NIBASC  \K\
   68 00071 00000         CON(5)  =um*
   69 00076 00000         CON(5)  =um/
   70 0007B 00000         CON(5)  =umEND
   71             * File  TASMS.s 25
   72 00080 00000         CON(5)  =SEMI
   73             * File  TASMS.s 26
   74 00085 00000         CON(5)  =DOLIST
   75 0008A 00000         CON(5)  =DOLAM
   76 0008F 10            CON(2)  1
   77 00091 D6            NIBASC  \m\
   78 00093 00000         CON(5)  =DOLAM
   79 00098 20            CON(2)  2
   80 0009A 4713          NIBASC  \t1\
   81 0009E 00000         CON(5)  =DOLAM
   82 000A3 10            CON(2)  1
   83 000A5 B6            NIBASC  \k\
   84 000A7 00000         CON(5)  =DOLAM
   85 000AC 10            CON(2)  1
   86 000AE 25            NIBASC  \R\
   87 000B0 00000         CON(5)  =SEMI
   88 000B5 00000         CON(5)  =BIND
   89             * LAMs for calculation of
   90             * File  TASMS.s 27
   91 000BA 00000         CON(5)  =DOLAM
   92 000BF 10            CON(2)  1
   93 000C1 D6            NIBASC  \m\
   94             * True air speed
   95             * File  TASMS.s 28
   96 000C3 00000         CON(5)  =DOLAM
   97 000C8 10            CON(2)  1
   98 000CA B6            NIBASC  \k\
   99             * File  TASMS.s 29
  100 000CC 00000         CON(5)  =DOLAM
  101 000D1 10            CON(2)  1
  102 000D3 25            NIBASC  \R\
  103             * File  TASMS.s 30
  104 000D5 00000         CON(5)  =DOLAM
  105 000DA 20            CON(2)  2
  106 000DC 4713          NIBASC  \t1\
  107             * File  TASMS.s 31
  108 000E0 00000         CON(5)  =UM*
  109             * File  TASMS.s 32
  110 000E5 00000         CON(5)  =UM*
  111             * File  TASMS.s 33
  112 000EA 00000         CON(5)  =UMSQRT
  113             * File  TASMS.s 34
  114 000EF 00000         CON(5)  =UM*
  115             * File  TASMS.s 35
  116 000F4 00000         CON(5)  =ABND
  117             * File  TASMS.s 36
  118 000F9 00000         CON(5)  =DOEXT
  119 000FE 00000         CON(5)  =DOREAL
  120 00103 000           NIBHEX  000
  121 00106 00000         NIBHEX  000000000001
            00000
            01
  122 00112 0             NIBHEX  0
  123 00113 00000         CON(5)  =DOCSTR
  124 00118 D0000         CON(5)  13
  125 0011D B6E6F         NIBASC  \knot\
            647
  126 00125 00000         CON(5)  =umEND
  127 0012A 00000         CON(5)  =SEMI
  128             * Convert TAS to knot units
  129             * File  TASMS.s 37
  130 0012F 00000         CON(5)  =UMCONV
  131             * File  TASMS.s 38
  132 00134 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       TASMS.a        Page    2

 %2                                Ext                   -    57    63
 ABND                              Ext                   -   116
 BIND                              Ext                   -    88
 DOCOL                             Ext                   -    36
 DOCSTR                            Ext                   -    54    60    65
                                         123
 DOEXT                             Ext                   -    47   118
 DOLAM                             Ext                   -    75    78    81
                                          84    91    96   100   104
 DOLIST                            Ext                   -    74
 DOREAL                            Ext                   -    41    50   119
=RomId                             Abs     808 #00000328 -    22
 SEMI                              Ext                   -    72    87   127
                                         132
=TASMS                             Rel       0 #00000000 -    34
 UM*                               Ext                   -   108   110   114
 UMCONV                            Ext                   -   130
 UMSI                              Ext                   -    38
 UMSQRT                            Ext                   -   112
 um*                               Ext                   -    68
 um/                               Ext                   -    69
 umEND                             Ext                   -    70   126
 um^                               Ext                   -    58    64
Saturn Assembler                                       Fri Jun 19 12:24:16 2009
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
