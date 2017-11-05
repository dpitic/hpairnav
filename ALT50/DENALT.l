Saturn Assembler                                       Fri Jun 19 12:17:08 2009
V3.0.9 (04/15/2007)                                      DENALT.a       Page    1

    1               * File  DENALT.s        1
    2               * RPL
    3               * File  DENALT.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\DENALT.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5               **********************************************************************
    6               * NAME:            DENALT
    7               * AUTHOR:          Dan Pitic
    8               * VERSION:         1.14
    9               * DATE:            12 June 2009
   10               * COMPATIBILITY:   HP50
   11               * DESCRIPTION:     Calculates the density altitude.
   12               * USAGE:           ( u u -> u )
   13               * INPUT:     sat     Static air temperature (true air temp. ) (deg C)
   14               *            pa      Pressure altitude with units.
   15               * OUTPUT:    STACK   Density altitude (same units as pa)
   16               * CALLS:           LIBRARY 326h = 806d
   17               *
   18               * File  DENALT.s        16
   19               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALT50\ALT50.h
   20
   21               =RomId  EQU     #327
   22               * ROMID set to 327
   23
   24
   25
   26
   27
   28
   29               *|| Resuming file DENALT.s at line 16
   30               * File  DENALT.s        18
   31               * File  DENALT.s        19
   32 00000         =DENALT
   33               * File  DENALT.s        20
   34 00000 00000           CON(5)  =DOCOL
   35               * File  DENALT.s        21
   36 00005 00000           CON(5)  =DOLIST
   37 0000A 00000           CON(5)  =DOLAM
   38 0000F 30              CON(2)  3
   39 00011 371647          NIBASC  \sat\
   40 00017 00000           CON(5)  =DOLAM
   41 0001C 20              CON(2)  2
   42 0001E 0716            NIBASC  \pa\
   43 00022 00000           CON(5)  =SEMI
   44 00027 00000           CON(5)  =BIND
   45               * Input agruments
   46               * File  DENALT.s        22
   47 0002C 00000           CON(5)  =DOEXT
   48               * Gas constant for ISA
   49               * File  DENALT.s        23
   50 00031 00000           CON(5)  =DOREAL
   51 00036 200             NIBHEX  200
   52 00039 0000082         NIBHEX  000008250782
            50782
   53 00045 0               NIBHEX  0
   54 00046 00000           CON(5)  =DOCSTR
   55 0004B 70000           CON(5)  7
   56 00050 A4              NIBASC  \J\
   57               * File  DENALT.s        24
   58 00052 00000           CON(5)  =CHR_k
   59 00057 00000           CON(5)  =DOCSTR
   60 0005C 70000           CON(5)  7
   61 00061 76              NIBASC  \g\
   62 00063 00000           CON(5)  =umP
   63               * File  DENALT.s        25
   64 00068 00000           CON(5)  =DOCSTR
   65 0006D 70000           CON(5)  7
   66 00072 B4              NIBASC  \K\
   67 00074 00000           CON(5)  =um*
   68 00079 00000           CON(5)  =um/
   69 0007E 00000           CON(5)  =umEND
   70               * File  DENALT.s        26
   71 00083 00000           CON(5)  =SEMI
   72               * File  DENALT.s        27
   73 00088 00000           CON(5)  =DOLIST
   74 0008D 00000           CON(5)  =DOLAM
   75 00092 10              CON(2)  1
   76 00094 25              NIBASC  \R\
   77 00096 00000           CON(5)  =SEMI
   78 0009B 00000           CON(5)  =BIND
   79               * R = Gas constant
   80               *            LAM pa ROMPTR 326 2               ( Call ISAP )
   81               * File  DENALT.s        29
   82 000A0 00000           CON(5)  =DOLAM
   83 000A5 20              CON(2)  2
   84 000A7 0716            NIBASC  \pa\
   85 000AB 00000           CON(5)  =DOROMP
   86 000B0 623             CON(3)  #326
   87 000B3 200             CON(3)  #2
   88               * File  DENALT.s        30
   89 000B6 00000           CON(5)  =DOLAM
   90 000BB 30              CON(2)  3
   91 000BD 371647          NIBASC  \sat\
   92               * File  DENALT.s        31
   93 000C3 00000           CON(5)  =UMSI
   94               * Convert SAT to K
   95               * File  DENALT.s        32
   96 000C8 00000           CON(5)  =DOLAM
   97 000CD 10              CON(2)  1
   98 000CF 25              NIBASC  \R\
   99 000D1 00000           CON(5)  =UM*
  100 000D6 00000           CON(5)  =UM/
  101               * Calc. actual air density
  102               * File  DENALT.s        33
  103 000DB 00000           CON(5)  =DOLIST
  104 000E0 00000           CON(5)  =DOLAM
  105 000E5 10              CON(2)  1
  106 000E7 79              CON(2)  #97
  107 000E9 00000           CON(5)  =SEMI
  108 000EE 00000           CON(5)  =BIND
  109               * Actual air density
  110               * File  DENALT.s        34
  111 000F3 00000           CON(5)  =DOSYMB
  112               * File  DENALT.s        35
  113 000F8 00000           CON(5)  =DOLAM
  114 000FD 10              CON(2)  1
  115 000FF 79              CON(2)  #97
  116               * File  DENALT.s        36
  117 00101 00000           CON(5)  =DOIDNT
  118 00106 20              CON(2)  2
  119 00108 4414            NIBASC  \DA\
  120               *                ROMPTR 326 3
  121               * File  DENALT.s        38
  122 0010C 00000           CON(5)  =DOROMP
  123 00111 623             CON(3)  #326
  124 00114 300             CON(3)  #3
  125               * File  DENALT.s        39
  126 00117 00000           CON(5)  =x=
  127               * File  DENALT.s        40
  128 0011C 00000           CON(5)  =SEMI
  129               * '\97=ISA\97[DA]'
  130               * File  DENALT.s        41
  131 00121 00000           CON(5)  ='
  132 00126 00000           CON(5)  =DOIDNT
  133 0012B 20              CON(2)  2
  134 0012D 4414            NIBASC  \DA\
  135               * File  DENALT.s        42
  136 00131 00000           CON(5)  =DOLAM
  137 00136 20              CON(2)  2
  138 00138 0716            NIBASC  \pa\
  139               * Guess value PA
  140               * File  DENALT.s        43
  141 0013C 00000           CON(5)  =xROOT
  142               * Calculate and return density alt. DA
  143               * File  DENALT.s        44
  144 00141 00000           CON(5)  =ABND
  145               * LAM \97
  146               * File  DENALT.s        45
  147 00146 00000           CON(5)  =ABND
  148               * LAM R
  149               * File  DENALT.s        46
  150 0014B 00000           CON(5)  =ABND
  151               * LAM sat LAM pa
  152               * File  DENALT.s        47
  153 00150 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:17:08 2009
V3.0.9 (04/15/2007)   Symbol Table                       DENALT.a       Page    2

 '                                 Ext                   -   131
 ABND                              Ext                   -   144   147   150
 BIND                              Ext                   -    44    78   108
 CHR_k                             Ext                   -    58
=DENALT                            Rel       0 #00000000 -    32
 DOCOL                             Ext                   -    34
 DOCSTR                            Ext                   -    54    59    64
 DOEXT                             Ext                   -    47
 DOIDNT                            Ext                   -   117   132
 DOLAM                             Ext                   -    37    40    74
                                          82    89    96   104   113   136
 DOLIST                            Ext                   -    36    73   103
 DOREAL                            Ext                   -    50
 DOROMP                            Ext                   -    85   122
 DOSYMB                            Ext                   -   111
=RomId                             Abs     807 #00000327 -    21
 SEMI                              Ext                   -    43    71    77
                                         107   128   153
 UM*                               Ext                   -    99
 UM/                               Ext                   -   100
 UMSI                              Ext                   -    93
 um*                               Ext                   -    67
 um/                               Ext                   -    68
 umEND                             Ext                   -    69
 umP                               Ext                   -    62
 x=                                Ext                   -   126
 xROOT                             Ext                   -   141
Saturn Assembler                                       Fri Jun 19 12:17:08 2009
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
