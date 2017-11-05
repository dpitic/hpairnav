Saturn Assembler                                       Tue Jun 23 03:35:26 2009
V3.0.9 (04/15/2007)                                      CGVE.a         Page    1

    1               * File  CGVE.s  1
    2               * RPL
    3               * File  CGVE.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\CGVE.s, part of the WIND50.hpp project, created by <> on 15/06/2009
    5               **********************************************************************
    6               * NAME:          CGVE
    7               * AUTHOR:        Dan Pitic
    8               * VERSION:       1.7
    9               * DATE:          15 June 2009
   10               * COMPATIBILITY: HP50
   11               * DESCRIPTION:   Calculates the GROUND vector and CRAB angle from
   12               *                inputs of HDG, TAS, WD, WS.
   13               * USAGE:         ( %HDG %TAS %WD %WS -> %TC %GS %CRAB )
   14               *
   15               * File  CGVE.s  13
   16               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\WIND50.h
   17
   18               =RomId  EQU     #320
   19               * ROMID set to 320
   20
   21
   22
   23
   24
   25
   26
   27
   28               *|| Resuming file CGVE.s at line 13
   29 00000 000000          CON(6)  =~xCGVE
   30 00006         =xCGVE
   31               * File  CGVE.s  15
   32 00006 00000           CON(5)  =DOCOL
   33               * File  CGVE.s  16
   34 0000B 00000           CON(5)  =CK4&Dispatch
   35               * Requires 4 arguments
   36               * File  CGVE.s  17
   37 00010 00000           CON(5)  =DOBINT
   38 00015 11110           CON(5)  #1111
   39 0001A 00000           CON(5)  =DOCOL
   40               * 4 REAL numbers
   41               * File  CGVE.s  18
   42 0001F 00000           CON(5)  =FIFTEEN
   43 00024 00000           CON(5)  =ClrSysFlag
   44               * Set Polar/Cylindrical mode
   45               * File  CGVE.s  19
   46 00029 00000           CON(5)  =SIXTEEN
   47 0002E 00000           CON(5)  =SetSysFlag
   48               * File  CGVE.s  20
   49 00033 00000           CON(5)  =SEVENTEEN
   50 00038 00000           CON(5)  =ClrSysFlag
   51               * Set DEG mode
   52               * File  CGVE.s  21
   53 0003D 00000           CON(5)  =EIGHTEEN
   54 00042 00000           CON(5)  =ClrSysFlag
   55               * File  CGVE.s  22
   56 00047 00000           CON(5)  =DOLIST
   57 0004C 00000           CON(5)  =DOLAM
   58 00051 30              CON(2)  3
   59 00053 844474          NIBASC  \HDG\
   60 00059 00000           CON(5)  =DOLAM
   61 0005E 30              CON(2)  3
   62 00060 451435          NIBASC  \TAS\
   63 00066 00000           CON(5)  =DOLAM
   64 0006B 20              CON(2)  2
   65 0006D 7544            NIBASC  \WD\
   66 00071 00000           CON(5)  =DOLAM
   67 00076 20              CON(2)  2
   68 00078 7535            NIBASC  \WS\
   69 0007C 00000           CON(5)  =SEMI
   70 00081 00000           CON(5)  =BIND
   71               * Create temporary environment
   72               * File  CGVE.s  23
   73 00086 00000           CON(5)  =DOLAM
   74 0008B 20              CON(2)  2
   75 0008D 7535            NIBASC  \WS\
   76 00091 00000           CON(5)  =DOLAM
   77 00096 20              CON(2)  2
   78 00098 7544            NIBASC  \WD\
   79 0009C 00000           CON(5)  =x>V2
   80 000A1 00000           CON(5)  =xNEG
   81               * Create WIND vector
   82               * File  CGVE.s  24
   83 000A6 00000           CON(5)  =DOLAM
   84 000AB 30              CON(2)  3
   85 000AD 451435          NIBASC  \TAS\
   86 000B3 00000           CON(5)  =DOLAM
   87 000B8 30              CON(2)  3
   88 000BA 844474          NIBASC  \HDG\
   89 000C0 00000           CON(5)  =x>V2
   90               * Create AIR vector
   91               * File  CGVE.s  25
   92 000C5 00000           CON(5)  =x+
   93               * Calc. GROUND vector [GV = WV + AV]
   94               * File  CGVE.s  26
   95 000CA 00000           CON(5)  =xV>
   96               * -> GS TC
   97               * File  CGVE.s  27
   98 000CF 00000           CON(5)  =DUP
   99 000D4 00000           CON(5)  =%0
  100 000D9 00000           CON(5)  =%<
  101 000DE 00000           CON(5)  =IT
  102 000E3 00000           CON(5)  =DOCOL
  103               * Normalise TC if negative
  104               * File  CGVE.s  28
  105 000E8 00000           CON(5)  =%360
  106 000ED 00000           CON(5)  =%+
  107               * -> GS TC
  108               * File  CGVE.s  29
  109 000F2 00000           CON(5)  =SEMI
  110               * File  CGVE.s  30
  111 000F7 00000           CON(5)  =SWAP
  112               * -> TC GS
  113               * File  CGVE.s  31
  114 000FC 00000           CON(5)  =OVER
  115               * -> TC GS TC
  116               * File  CGVE.s  32
  117 00101 00000           CON(5)  =DOLAM
  118 00106 30              CON(2)  3
  119 00108 844474          NIBASC  \HDG\
  120               * -> TC GS TC HDG
  121               * File  CGVE.s  33
  122 0010E 00000           CON(5)  =SWAP
  123               * -> TC GS HDG TC
  124               * File  CGVE.s  34
  125 00113 00000           CON(5)  =%-
  126               * -> TC GS CRAB
  127               * File  CGVE.s  35
  128 00118 00000           CON(5)  =DUP
  129 0011D 00000           CON(5)  =DOREAL
  130 00122 100             NIBHEX  100
  131 00125 0000000         NIBHEX  000000000009
            00009
  132 00131 9               NIBHEX  9
  133 00132 00000           CON(5)  =%<
  134 00137 00000           CON(5)  =IT
  135 0013C 00000           CON(5)  =DOCOL
  136               * Ensure CRAB is NOT < -90 deg.
  137               * File  CGVE.s  36
  138 00141 00000           CON(5)  =%360
  139 00146 00000           CON(5)  =%+
  140               * -> TC GS CRAB
  141               * File  CGVE.s  37
  142 0014B 00000           CON(5)  =SEMI
  143               * File  CGVE.s  38
  144 00150 00000           CON(5)  =DUP
  145 00155 00000           CON(5)  =DOREAL
  146 0015A 100             NIBHEX  100
  147 0015D 0000000         NIBHEX  000000000009
            00009
  148 00169 0               NIBHEX  0
  149 0016A 00000           CON(5)  =%>
  150 0016F 00000           CON(5)  =IT
  151 00174 00000           CON(5)  =DOCOL
  152               * Ensure CRAB is NOT > 90 deg.
  153               * File  CGVE.s  39
  154 00179 00000           CON(5)  =%360
  155 0017E 00000           CON(5)  =%-
  156               * -> TC GS CRAB
  157               * File  CGVE.s  40
  158 00183 00000           CON(5)  =SEMI
  159               * File  CGVE.s  41
  160 00188 00000           CON(5)  =ABND
  161               * Abandon temporary environment
  162               * File  CGVE.s  42
  163 0018D 00000           CON(5)  =SEMI
  164               * File  CGVE.s  43
  165 00192 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 23 03:35:26 2009
V3.0.9 (04/15/2007)   Symbol Table                       CGVE.a         Page    2

 %+                                Ext                   -   106   139
 %-                                Ext                   -   125   155
 %0                                Ext                   -    99
 %360                              Ext                   -   105   138   154
 %<                                Ext                   -   100   133
 %>                                Ext                   -   149
 ABND                              Ext                   -   160
 BIND                              Ext                   -    70
 CK4&Dispatch                      Ext                   -    34
 ClrSysFlag                        Ext                   -    43    50    54
 DOBINT                            Ext                   -    37
 DOCOL                             Ext                   -    32    39   102
                                         135   151
 DOLAM                             Ext                   -    57    60    63
                                          66    73    76    83    86   117
 DOLIST                            Ext                   -    56
 DOREAL                            Ext                   -   129   145
 DUP                               Ext                   -    98   128   144
 EIGHTEEN                          Ext                   -    53
 FIFTEEN                           Ext                   -    42
 IT                                Ext                   -   101   134   150
 OVER                              Ext                   -   114
=RomId                             Abs     800 #00000320 -    18
 SEMI                              Ext                   -    69   109   142
                                         158   163   165
 SEVENTEEN                         Ext                   -    49
 SIXTEEN                           Ext                   -    46
 SWAP                              Ext                   -   111   122
 SetSysFlag                        Ext                   -    47
 x+                                Ext                   -    92
 x>V2                              Ext                   -    79    89
=xCGVE                             Rel       6 #00000006 -    30
 xNEG                              Ext                   -    80
 xV>                               Ext                   -    95
 ~xCGVE                            Ext                   -    29
Saturn Assembler                                       Tue Jun 23 03:35:26 2009
V3.0.9 (04/15/2007)   Statistics                         CGVE.a         Page    3

Input Parameters

  Source file name is CGVE.a

  Listing file name is CGVE.l

  Object file name is CGVE.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
