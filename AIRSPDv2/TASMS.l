Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)                                      TASMS.a        Page    1

    1               * File  TASMS.s 1
    2               * RPL
    3               * File  TASMS.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\TASMS.s, part of the ASPD.hpp project, created by <> on 19/04/2009
    5               ********************************************************************
    6               * NAME:            TASMS
    7               * DESCRIPTION:     Calculates the TRUE air temperature from Mach
    8               *                  number and STATIC air temperature (obtained from
    9               *                  TOTAL air temperature)
   10               * INPUT:     STACK     m     Mach number
   11               *            STACK     t1    STATIC air temp.
   12               * OUTPUT:    STACK     V1    True air speed in knots
   13               *
   14               * File  TASMS.s 12
   15               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPD.h
   16
   17               =RomId  EQU     #328
   18               * ROMID set to 328
   19
   20
   21
   22
   23
   24
   25
   26
   27               *|| Resuming file TASMS.s at line 12
   28 00000         =TASMS
   29               * File  TASMS.s 14
   30 00000 00000           CON(5)  =DOCOL
   31               * File  TASMS.s 15
   32 00005 00000           CON(5)  =UMSI
   33               * Convert T1 to K
   34               * File  TASMS.s 16
   35 0000A 00000           CON(5)  =DOREAL
   36 0000F 000             NIBHEX  000
   37 00012 0000000         NIBHEX  000000000041
            00041
   38 0001E 0               NIBHEX  0
   39               * k = 1.4 for STD atmos
   40               * File  TASMS.s 17
   41 0001F 00000           CON(5)  =DOEXT
   42               * R = Gas constant for ISA
   43               * File  TASMS.s 18
   44 00024 00000           CON(5)  =DOREAL
   45 00029 200             NIBHEX  200
   46 0002C 0000082         NIBHEX  000008250782
            50782
   47 00038 0               NIBHEX  0
   48 00039 00000           CON(5)  =DOCSTR
   49 0003E 70000           CON(5)  7
   50 00043 D6              NIBASC  \m\
   51 00045 00000           CON(5)  =%2
   52 0004A 00000           CON(5)  =um^
   53               * File  TASMS.s 19
   54 0004F 00000           CON(5)  =DOCSTR
   55 00054 70000           CON(5)  7
   56 00059 37              NIBASC  \s\
   57 0005B 00000           CON(5)  =%2
   58 00060 00000           CON(5)  =um^
   59 00065 00000           CON(5)  =DOCSTR
   60 0006A 70000           CON(5)  7
   61 0006F B4              NIBASC  \K\
   62 00071 00000           CON(5)  =um*
   63 00076 00000           CON(5)  =um/
   64 0007B 00000           CON(5)  =umEND
   65               * File  TASMS.s 20
   66 00080 00000           CON(5)  =SEMI
   67               * File  TASMS.s 21
   68 00085 00000           CON(5)  =DOLIST
   69 0008A 00000           CON(5)  =DOLAM
   70 0008F 10              CON(2)  1
   71 00091 D6              NIBASC  \m\
   72 00093 00000           CON(5)  =DOLAM
   73 00098 20              CON(2)  2
   74 0009A 4713            NIBASC  \t1\
   75 0009E 00000           CON(5)  =DOLAM
   76 000A3 10              CON(2)  1
   77 000A5 B6              NIBASC  \k\
   78 000A7 00000           CON(5)  =DOLAM
   79 000AC 10              CON(2)  1
   80 000AE 25              NIBASC  \R\
   81 000B0 00000           CON(5)  =SEMI
   82 000B5 00000           CON(5)  =BIND
   83               * LAMs for calculation of
   84               * File  TASMS.s 22
   85 000BA 00000           CON(5)  =DOLAM
   86 000BF 10              CON(2)  1
   87 000C1 D6              NIBASC  \m\
   88               * True air speed
   89               * File  TASMS.s 23
   90 000C3 00000           CON(5)  =DOLAM
   91 000C8 10              CON(2)  1
   92 000CA B6              NIBASC  \k\
   93               * File  TASMS.s 24
   94 000CC 00000           CON(5)  =DOLAM
   95 000D1 10              CON(2)  1
   96 000D3 25              NIBASC  \R\
   97               * File  TASMS.s 25
   98 000D5 00000           CON(5)  =DOLAM
   99 000DA 20              CON(2)  2
  100 000DC 4713            NIBASC  \t1\
  101               * File  TASMS.s 26
  102 000E0 00000           CON(5)  =UM*
  103               * File  TASMS.s 27
  104 000E5 00000           CON(5)  =UM*
  105               * File  TASMS.s 28
  106 000EA 00000           CON(5)  =UMSQRT
  107               * File  TASMS.s 29
  108 000EF 00000           CON(5)  =UM*
  109               * File  TASMS.s 30
  110 000F4 00000           CON(5)  =ABND
  111               * File  TASMS.s 31
  112 000F9 00000           CON(5)  =DOEXT
  113 000FE 00000           CON(5)  =DOREAL
  114 00103 000             NIBHEX  000
  115 00106 0000000         NIBHEX  000000000001
            00001
  116 00112 0               NIBHEX  0
  117 00113 00000           CON(5)  =DOCSTR
  118 00118 D0000           CON(5)  13
  119 0011D B6E6F64         NIBASC  \knot\
            7
  120 00125 00000           CON(5)  =umEND
  121 0012A 00000           CON(5)  =SEMI
  122               * Convert TAS to knot units
  123               * File  TASMS.s 32
  124 0012F 00000           CON(5)  =UMCONV
  125               * File  TASMS.s 33
  126 00134 00000           CON(5)  =SEMI
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
V3.0.9 (04/15/2007)   Symbol Table                       TASMS.a        Page    2

 %2                                Ext                   -    51    57
 ABND                              Ext                   -   110
 BIND                              Ext                   -    82
 DOCOL                             Ext                   -    30
 DOCSTR                            Ext                   -    48    54    59
                                         117
 DOEXT                             Ext                   -    41   112
 DOLAM                             Ext                   -    69    72    75
                                          78    85    90    94    98
 DOLIST                            Ext                   -    68
 DOREAL                            Ext                   -    35    44   113
=RomId                             Abs     808 #00000328 -    17
 SEMI                              Ext                   -    66    81   121
                                         126
=TASMS                             Rel       0 #00000000 -    28
 UM*                               Ext                   -   102   104   108
 UMCONV                            Ext                   -   124
 UMSI                              Ext                   -    32
 UMSQRT                            Ext                   -   106
 um*                               Ext                   -    62
 um/                               Ext                   -    63
 umEND                             Ext                   -    64   120
 um^                               Ext                   -    52    58
Saturn Assembler                                       Thu Apr 23 18:04:26 2009
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
