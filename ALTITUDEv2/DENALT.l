Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)                                      DENALT.a       Page    1

    1               * File  DENALT.s        1
    2               * RPL
    3               * File  DENALT.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\DENALT.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               ********************************************************************
    6               * NAME:            DENALT
    7               * DESCRIPTION:     Calculates the density altitude.
    8               * USAGE:           ( u u -> u )
    9               * INPUT:     sat     Static air temperature (true air temp. ) (deg C)
   10               *            pa      Pressure altitude with units.
   11               * OUTPUT:    STACK   Density altitude (same units as pa)
   12               * CALLS:           LIBRARY 326h = 807d
   13               *
   14               * File  DENALT.s        12
   15               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALT.h
   16
   17               =RomId  EQU     #327
   18               * ROMID set to 327
   19
   20
   21
   22
   23
   24
   25               *|| Resuming file DENALT.s at line 12
   26               * File  DENALT.s        14
   27               * File  DENALT.s        15
   28 00000         =DENALT
   29               * File  DENALT.s        16
   30 00000 00000           CON(5)  =DOCOL
   31               * File  DENALT.s        17
   32 00005 00000           CON(5)  =DOLIST
   33 0000A 00000           CON(5)  =DOLAM
   34 0000F 30              CON(2)  3
   35 00011 371647          NIBASC  \sat\
   36 00017 00000           CON(5)  =DOLAM
   37 0001C 20              CON(2)  2
   38 0001E 0716            NIBASC  \pa\
   39 00022 00000           CON(5)  =SEMI
   40 00027 00000           CON(5)  =BIND
   41               * Input agruments
   42               * File  DENALT.s        18
   43 0002C 00000           CON(5)  =DOEXT
   44               * Gas constant for ISA
   45               * File  DENALT.s        19
   46 00031 00000           CON(5)  =DOREAL
   47 00036 200             NIBHEX  200
   48 00039 0000082         NIBHEX  000008250782
            50782
   49 00045 0               NIBHEX  0
   50 00046 00000           CON(5)  =DOCSTR
   51 0004B 70000           CON(5)  7
   52 00050 A4              NIBASC  \J\
   53               * File  DENALT.s        20
   54 00052 00000           CON(5)  =CHR_k
   55 00057 00000           CON(5)  =DOCSTR
   56 0005C 70000           CON(5)  7
   57 00061 76              NIBASC  \g\
   58 00063 00000           CON(5)  =umP
   59               * File  DENALT.s        21
   60 00068 00000           CON(5)  =DOCSTR
   61 0006D 70000           CON(5)  7
   62 00072 B4              NIBASC  \K\
   63 00074 00000           CON(5)  =um*
   64 00079 00000           CON(5)  =um/
   65 0007E 00000           CON(5)  =umEND
   66               * File  DENALT.s        22
   67 00083 00000           CON(5)  =SEMI
   68               * File  DENALT.s        23
   69 00088 00000           CON(5)  =DOLIST
   70 0008D 00000           CON(5)  =DOLAM
   71 00092 10              CON(2)  1
   72 00094 25              NIBASC  \R\
   73 00096 00000           CON(5)  =SEMI
   74 0009B 00000           CON(5)  =BIND
   75               * R = Gas constant
   76               *            LAM pa ROMPTR 326 2               ( Call ISAP )
   77               * File  DENALT.s        25
   78 000A0 00000           CON(5)  =DOLAM
   79 000A5 20              CON(2)  2
   80 000A7 0716            NIBASC  \pa\
   81 000AB 00000           CON(5)  =DOROMP
   82 000B0 623             CON(3)  #326
   83 000B3 200             CON(3)  #2
   84               * File  DENALT.s        26
   85 000B6 00000           CON(5)  =DOLAM
   86 000BB 30              CON(2)  3
   87 000BD 371647          NIBASC  \sat\
   88               * File  DENALT.s        27
   89 000C3 00000           CON(5)  =UMSI
   90               * Convert SAT to K
   91               * File  DENALT.s        28
   92 000C8 00000           CON(5)  =DOLAM
   93 000CD 10              CON(2)  1
   94 000CF 25              NIBASC  \R\
   95 000D1 00000           CON(5)  =UM*
   96 000D6 00000           CON(5)  =UM/
   97               * Calc. actual air density
   98               * File  DENALT.s        29
   99 000DB 00000           CON(5)  =DOLIST
  100 000E0 00000           CON(5)  =DOLAM
  101 000E5 10              CON(2)  1
  102 000E7 79              CON(2)  #97
  103 000E9 00000           CON(5)  =SEMI
  104 000EE 00000           CON(5)  =BIND
  105               * Actual air density
  106               * File  DENALT.s        30
  107 000F3 00000           CON(5)  =DOSYMB
  108               * File  DENALT.s        31
  109 000F8 00000           CON(5)  =DOLAM
  110 000FD 10              CON(2)  1
  111 000FF 79              CON(2)  #97
  112               * File  DENALT.s        32
  113 00101 00000           CON(5)  =DOIDNT
  114 00106 20              CON(2)  2
  115 00108 4414            NIBASC  \DA\
  116               *                ROMPTR 326 3
  117               * File  DENALT.s        34
  118 0010C 00000           CON(5)  =DOROMP
  119 00111 623             CON(3)  #326
  120 00114 300             CON(3)  #3
  121               * File  DENALT.s        35
  122 00117 00000           CON(5)  =x=
  123               * File  DENALT.s        36
  124 0011C 00000           CON(5)  =SEMI
  125               * '\97=ISA\97[DA]'
  126               * File  DENALT.s        37
  127 00121 00000           CON(5)  ='
  128 00126 00000           CON(5)  =DOIDNT
  129 0012B 20              CON(2)  2
  130 0012D 4414            NIBASC  \DA\
  131               * File  DENALT.s        38
  132 00131 00000           CON(5)  =DOLAM
  133 00136 20              CON(2)  2
  134 00138 0716            NIBASC  \pa\
  135               * Guess value PA
  136               * File  DENALT.s        39
  137 0013C 00000           CON(5)  =xROOT
  138               * Calculate and return density alt. DA
  139               * File  DENALT.s        40
  140 00141 00000           CON(5)  =ABND
  141               * LAM \97
  142               * File  DENALT.s        41
  143 00146 00000           CON(5)  =ABND
  144               * LAM R
  145               * File  DENALT.s        42
  146 0014B 00000           CON(5)  =ABND
  147               * LAM sat LAM pa
  148               * File  DENALT.s        43
  149 00150 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       DENALT.a       Page    2

 '                                 Ext                   -   127
 ABND                              Ext                   -   140   143   146
 BIND                              Ext                   -    40    74   104
 CHR_k                             Ext                   -    54
=DENALT                            Rel       0 #00000000 -    28
 DOCOL                             Ext                   -    30
 DOCSTR                            Ext                   -    50    55    60
 DOEXT                             Ext                   -    43
 DOIDNT                            Ext                   -   113   128
 DOLAM                             Ext                   -    33    36    70
                                          78    85    92   100   109   132
 DOLIST                            Ext                   -    32    69    99
 DOREAL                            Ext                   -    46
 DOROMP                            Ext                   -    81   118
 DOSYMB                            Ext                   -   107
=RomId                             Abs     807 #00000327 -    17
 SEMI                              Ext                   -    39    67    73
                                         103   124   149
 UM*                               Ext                   -    95
 UM/                               Ext                   -    96
 UMSI                              Ext                   -    89
 um*                               Ext                   -    63
 um/                               Ext                   -    64
 umEND                             Ext                   -    65
 umP                               Ext                   -    58
 x=                                Ext                   -   122
 xROOT                             Ext                   -   137
Saturn Assembler                                       Wed Jun 10 22:05:33 2009
V3.0.9 (04/15/2007)   Statistics                         DENALT.a       Page    3

Input Parameters

  Source file name is DENALT.a

  Listing file name is DENALT.l

  Object file name is DENALT.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
