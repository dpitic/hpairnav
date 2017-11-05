Saturn Assembler                                       Fri Jun 19 12:11:16 2009
V3.0.9 (04/15/2007)                                      DENALT.a       Page    1

    1             * File  DENALT.s        1
    2             * RPL
    3             * File  DENALT.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\DENALT.s, part of the ALT.hpp project, created by <> on 18/04/2009
    5             **********************************************************************
    6             * NAME:            DENALT
    7             * AUTHOR:          Dan Pitic
    8             * VERSION:         1.14
    9             * DATE:            12 June 2009
   10             * COMPATIBILITY:   HP50
   11             *                  HP48
   12             * DESCRIPTION:     Calculates the density altitude.
   13             * USAGE:           ( u u -> u )
   14             * INPUT:     sat     Static air temperature (true air temp. ) (deg C)
   15             *            pa      Pressure altitude with units.
   16             * OUTPUT:    STACK   Density altitude (same units as pa)
   17             * CALLS:           LIBRARY 326h = 806d
   18             *
   19             * File  DENALT.s        17
   20             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALT48\ALT48.h
   21
   22             =RomId  EQU     #327
   23             * ROMID set to 327
   24
   25
   26
   27
   28
   29
   30             *|| Resuming file DENALT.s at line 17
   31             * File  DENALT.s        19
   32             * File  DENALT.s        20
   33 00000       =DENALT
   34             * File  DENALT.s        21
   35 00000 00000         CON(5)  =DOCOL
   36             * File  DENALT.s        22
   37 00005 00000         CON(5)  =DOLIST
   38 0000A 00000         CON(5)  =DOLAM
   39 0000F 30            CON(2)  3
   40 00011 37164         NIBASC  \sat\
            7
   41 00017 00000         CON(5)  =DOLAM
   42 0001C 20            CON(2)  2
   43 0001E 0716          NIBASC  \pa\
   44 00022 00000         CON(5)  =SEMI
   45 00027 00000         CON(5)  =BIND
   46             * Input agruments
   47             * File  DENALT.s        23
   48 0002C 00000         CON(5)  =DOEXT
   49             * Gas constant for ISA
   50             * File  DENALT.s        24
   51 00031 00000         CON(5)  =DOREAL
   52 00036 200           NIBHEX  200
   53 00039 00000         NIBHEX  000008250782
            82507
            82
   54 00045 0             NIBHEX  0
   55 00046 00000         CON(5)  =DOCSTR
   56 0004B 70000         CON(5)  7
   57 00050 A4            NIBASC  \J\
   58             * File  DENALT.s        25
   59 00052 00000         CON(5)  =CHR_k
   60 00057 00000         CON(5)  =DOCSTR
   61 0005C 70000         CON(5)  7
   62 00061 76            NIBASC  \g\
   63 00063 00000         CON(5)  =umP
   64             * File  DENALT.s        26
   65 00068 00000         CON(5)  =DOCSTR
   66 0006D 70000         CON(5)  7
   67 00072 B4            NIBASC  \K\
   68 00074 00000         CON(5)  =um*
   69 00079 00000         CON(5)  =um/
   70 0007E 00000         CON(5)  =umEND
   71             * File  DENALT.s        27
   72 00083 00000         CON(5)  =SEMI
   73             * File  DENALT.s        28
   74 00088 00000         CON(5)  =DOLIST
   75 0008D 00000         CON(5)  =DOLAM
   76 00092 10            CON(2)  1
   77 00094 25            NIBASC  \R\
   78 00096 00000         CON(5)  =SEMI
   79 0009B 00000         CON(5)  =BIND
   80             * R = Gas constant
   81             *            LAM pa ROMPTR 326 2               ( Call ISAP )
   82             * File  DENALT.s        30
   83 000A0 00000         CON(5)  =DOLAM
   84 000A5 20            CON(2)  2
   85 000A7 0716          NIBASC  \pa\
   86 000AB 00000         CON(5)  =DOROMP
   87 000B0 623           CON(3)  #326
   88 000B3 200           CON(3)  #2
   89             * File  DENALT.s        31
   90 000B6 00000         CON(5)  =DOLAM
   91 000BB 30            CON(2)  3
   92 000BD 37164         NIBASC  \sat\
            7
   93             * File  DENALT.s        32
   94 000C3 00000         CON(5)  =UMSI
   95             * Convert SAT to K
   96             * File  DENALT.s        33
   97 000C8 00000         CON(5)  =DOLAM
   98 000CD 10            CON(2)  1
   99 000CF 25            NIBASC  \R\
  100 000D1 00000         CON(5)  =UM*
  101 000D6 00000         CON(5)  =UM/
  102             * Calc. actual air density
  103             * File  DENALT.s        34
  104 000DB 00000         CON(5)  =DOLIST
  105 000E0 00000         CON(5)  =DOLAM
  106 000E5 10            CON(2)  1
  107 000E7 79            CON(2)  #97
  108 000E9 00000         CON(5)  =SEMI
  109 000EE 00000         CON(5)  =BIND
  110             * Actual air density
  111             * File  DENALT.s        35
  112 000F3 00000         CON(5)  =DOSYMB
  113             * File  DENALT.s        36
  114 000F8 00000         CON(5)  =DOLAM
  115 000FD 10            CON(2)  1
  116 000FF 79            CON(2)  #97
  117             * File  DENALT.s        37
  118 00101 00000         CON(5)  =DOIDNT
  119 00106 20            CON(2)  2
  120 00108 4414          NIBASC  \DA\
  121             *                ROMPTR 326 3
  122             * File  DENALT.s        39
  123 0010C 00000         CON(5)  =DOROMP
  124 00111 623           CON(3)  #326
  125 00114 300           CON(3)  #3
  126             * File  DENALT.s        40
  127 00117 00000         CON(5)  =x=
  128             * File  DENALT.s        41
  129 0011C 00000         CON(5)  =SEMI
  130             * '\97=ISA\97[DA]'
  131             * File  DENALT.s        42
  132 00121 00000         CON(5)  ='
  133 00126 00000         CON(5)  =DOIDNT
  134 0012B 20            CON(2)  2
  135 0012D 4414          NIBASC  \DA\
  136             * File  DENALT.s        43
  137 00131 00000         CON(5)  =DOLAM
  138 00136 20            CON(2)  2
  139 00138 0716          NIBASC  \pa\
  140             * Guess value PA
  141             * File  DENALT.s        44
  142 0013C 00000         CON(5)  =xROOT
  143             * Calculate and return density alt. DA
  144             * File  DENALT.s        45
  145 00141 00000         CON(5)  =ABND
  146             * LAM \97
  147             * File  DENALT.s        46
  148 00146 00000         CON(5)  =ABND
  149             * LAM R
  150             * File  DENALT.s        47
  151 0014B 00000         CON(5)  =ABND
  152             * LAM sat LAM pa
  153             * File  DENALT.s        48
  154 00150 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 12:11:16 2009
V3.0.9 (04/15/2007)   Symbol Table                       DENALT.a       Page    2

 '                                 Ext                   -   132
 ABND                              Ext                   -   145   148   151
 BIND                              Ext                   -    45    79   109
 CHR_k                             Ext                   -    59
=DENALT                            Rel       0 #00000000 -    33
 DOCOL                             Ext                   -    35
 DOCSTR                            Ext                   -    55    60    65
 DOEXT                             Ext                   -    48
 DOIDNT                            Ext                   -   118   133
 DOLAM                             Ext                   -    38    41    75
                                          83    90    97   105   114   137
 DOLIST                            Ext                   -    37    74   104
 DOREAL                            Ext                   -    51
 DOROMP                            Ext                   -    86   123
 DOSYMB                            Ext                   -   112
=RomId                             Abs     807 #00000327 -    22
 SEMI                              Ext                   -    44    72    78
                                         108   129   154
 UM*                               Ext                   -   100
 UM/                               Ext                   -   101
 UMSI                              Ext                   -    94
 um*                               Ext                   -    68
 um/                               Ext                   -    69
 umEND                             Ext                   -    70
 umP                               Ext                   -    63
 x=                                Ext                   -   127
 xROOT                             Ext                   -   142
Saturn Assembler                                       Fri Jun 19 12:11:16 2009
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
