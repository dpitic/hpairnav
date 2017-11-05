Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)                                      CAVE.a         Page    1

    1             * File  CAVE.s  1
    2             * RPL
    3             * File  CAVE.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\CAVE.s, part of the WIND50.hpp project, created by <> on 15/06/2009
    5             **********************************************************************
    6             * NAME:          CAVE
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.7
    9             * DATE:          15 June 2009
   10             * COMPATIBILITY: HP50, HP48
   11             * DESCRIPTION:   Calculates the AIR vector and CRAB angle from inputs
   12             *                of TC, GS, WD, WS.
   13             * USAGE:         ( %TC %GS %WD %WS -> %HDG %TAS %CRAB )
   14             *
   15             * File  CAVE.s  13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND48\WIND48.h
   17
   18             =RomId  EQU     #320
   19             * ROMID set to 320
   20
   21
   22
   23
   24
   25
   26
   27
   28             *|| Resuming file CAVE.s at line 13
   29 00000 00000         CON(6)  =~xCAVE
            0
   30 00006       =xCAVE
   31             * File  CAVE.s  15
   32 00006 00000         CON(5)  =DOCOL
   33             * File  CAVE.s  16
   34 0000B 00000         CON(5)  =CK4&Dispatch
   35             * Requires 4 arguments
   36             * File  CAVE.s  17
   37 00010 00000         CON(5)  =DOBINT
   38 00015 11110         CON(5)  #1111
   39 0001A 00000         CON(5)  =DOCOL
   40             * 4 REAL numbers
   41             * File  CAVE.s  18
   42 0001F 00000         CON(5)  =FIFTEEN
   43 00024 00000         CON(5)  =ClrSysFlag
   44             * Set Polar/Cylindrical mode
   45             * File  CAVE.s  19
   46 00029 00000         CON(5)  =SIXTEEN
   47 0002E 00000         CON(5)  =SetSysFlag
   48             * File  CAVE.s  20
   49 00033 00000         CON(5)  =SEVENTEEN
   50 00038 00000         CON(5)  =ClrSysFlag
   51             * Set DEG mode
   52             * File  CAVE.s  21
   53 0003D 00000         CON(5)  =EIGHTEEN
   54 00042 00000         CON(5)  =ClrSysFlag
   55             * File  CAVE.s  22
   56 00047 00000         CON(5)  =DOLIST
   57 0004C 00000         CON(5)  =DOLAM
   58 00051 20            CON(2)  2
   59 00053 4534          NIBASC  \TC\
   60 00057 00000         CON(5)  =DOLAM
   61 0005C 20            CON(2)  2
   62 0005E 7435          NIBASC  \GS\
   63 00062 00000         CON(5)  =DOLAM
   64 00067 20            CON(2)  2
   65 00069 7544          NIBASC  \WD\
   66 0006D 00000         CON(5)  =DOLAM
   67 00072 20            CON(2)  2
   68 00074 7535          NIBASC  \WS\
   69 00078 00000         CON(5)  =SEMI
   70 0007D 00000         CON(5)  =BIND
   71             * Create temporary environment
   72             * File  CAVE.s  23
   73 00082 00000         CON(5)  =DOLAM
   74 00087 20            CON(2)  2
   75 00089 7435          NIBASC  \GS\
   76 0008D 00000         CON(5)  =DOLAM
   77 00092 20            CON(2)  2
   78 00094 4534          NIBASC  \TC\
   79 00098 00000         CON(5)  =x>V2
   80             * Create GROUND vector
   81             * File  CAVE.s  24
   82 0009D 00000         CON(5)  =DOLAM
   83 000A2 20            CON(2)  2
   84 000A4 7535          NIBASC  \WS\
   85 000A8 00000         CON(5)  =DOLAM
   86 000AD 20            CON(2)  2
   87 000AF 7544          NIBASC  \WD\
   88 000B3 00000         CON(5)  =x>V2
   89 000B8 00000         CON(5)  =xNEG
   90             * Create WIND vector
   91             * File  CAVE.s  25
   92 000BD 00000         CON(5)  =x-
   93             * Calc. AIR vector [AV = GV - WV]
   94             * File  CAVE.s  26
   95 000C2 00000         CON(5)  =xV>
   96             * -> TAS HDG
   97             * File  CAVE.s  27
   98 000C7 00000         CON(5)  =DUP
   99 000CC 00000         CON(5)  =%0
  100 000D1 00000         CON(5)  =%<
  101 000D6 00000         CON(5)  =IT
  102 000DB 00000         CON(5)  =DOCOL
  103             * Normalise heading if negative
  104             * File  CAVE.s  28
  105 000E0 00000         CON(5)  =%360
  106 000E5 00000         CON(5)  =%+
  107             * -> TAS HDG
  108             * File  CAVE.s  29
  109 000EA 00000         CON(5)  =SEMI
  110             * File  CAVE.s  30
  111 000EF 00000         CON(5)  =SWAP
  112             * -> HDG TAS
  113             * File  CAVE.s  31
  114 000F4 00000         CON(5)  =OVER
  115 000F9 00000         CON(5)  =DOLAM
  116 000FE 20            CON(2)  2
  117 00100 4534          NIBASC  \TC\
  118 00104 00000         CON(5)  =%-
  119             * -> HDG TAS CRAB
  120             * File  CAVE.s  32
  121 00109 00000         CON(5)  =DUP
  122 0010E 00000         CON(5)  =DOREAL
  123 00113 100           NIBHEX  100
  124 00116 00000         NIBHEX  000000000009
            00000
            09
  125 00122 9             NIBHEX  9
  126 00123 00000         CON(5)  =%<
  127 00128 00000         CON(5)  =IT
  128 0012D 00000         CON(5)  =DOCOL
  129             * Ensure CRAB is NOT < -90 deg
  130             * File  CAVE.s  33
  131 00132 00000         CON(5)  =%360
  132 00137 00000         CON(5)  =%+
  133             * -> HDG TAS CRAB
  134             * File  CAVE.s  34
  135 0013C 00000         CON(5)  =SEMI
  136             * File  CAVE.s  35
  137 00141 00000         CON(5)  =DUP
  138 00146 00000         CON(5)  =DOREAL
  139 0014B 100           NIBHEX  100
  140 0014E 00000         NIBHEX  000000000009
            00000
            09
  141 0015A 0             NIBHEX  0
  142 0015B 00000         CON(5)  =%>
  143 00160 00000         CON(5)  =IT
  144 00165 00000         CON(5)  =DOCOL
  145             * Ensure CRAB is NOT > 90 deg
  146             * File  CAVE.s  36
  147 0016A 00000         CON(5)  =%360
  148 0016F 00000         CON(5)  =%-
  149             * -> HDG TAS CRAB
  150             * File  CAVE.s  37
  151 00174 00000         CON(5)  =SEMI
  152             * File  CAVE.s  38
  153 00179 00000         CON(5)  =ABND
  154             * Abandon temporary environment
  155             * File  CAVE.s  39
  156 0017E 00000         CON(5)  =SEMI
  157             * File  CAVE.s  40
  158 00183 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)   Symbol Table                       CAVE.a         Page    2

 %+                                Ext                   -   106   132
 %-                                Ext                   -   118   148
 %0                                Ext                   -    99
 %360                              Ext                   -   105   131   147
 %<                                Ext                   -   100   126
 %>                                Ext                   -   142
 ABND                              Ext                   -   153
 BIND                              Ext                   -    70
 CK4&Dispatch                      Ext                   -    34
 ClrSysFlag                        Ext                   -    43    50    54
 DOBINT                            Ext                   -    37
 DOCOL                             Ext                   -    32    39   102
                                         128   144
 DOLAM                             Ext                   -    57    60    63
                                          66    73    76    82    85   115
 DOLIST                            Ext                   -    56
 DOREAL                            Ext                   -   122   138
 DUP                               Ext                   -    98   121   137
 EIGHTEEN                          Ext                   -    53
 FIFTEEN                           Ext                   -    42
 IT                                Ext                   -   101   127   143
 OVER                              Ext                   -   114
=RomId                             Abs     800 #00000320 -    18
 SEMI                              Ext                   -    69   109   135
                                         151   156   158
 SEVENTEEN                         Ext                   -    49
 SIXTEEN                           Ext                   -    46
 SWAP                              Ext                   -   111
 SetSysFlag                        Ext                   -    47
 x-                                Ext                   -    92
 x>V2                              Ext                   -    79    88
=xCAVE                             Rel       6 #00000006 -    30
 xNEG                              Ext                   -    89
 xV>                               Ext                   -    95
 ~xCAVE                            Ext                   -    29
Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)   Statistics                         CAVE.a         Page    3

Input Parameters

  Source file name is CAVE.a

  Listing file name is CAVE.l

  Object file name is CAVE.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
