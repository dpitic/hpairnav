Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)                                      CWVE.a         Page    1

    1             * File  CWVE.s  1
    2             * RPL
    3             * File  CWVE.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\CWVE.s, part of the WIND50.hpp project, created by <> on 15/06/2009
    5             **********************************************************************
    6             * NAME:          CWVE
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.7
    9             * DATE:          15 June 2009
   10             * COMPATIBILITY: HP50, HP48
   11             * DESCRIPTION:   Calculates the WIND vector and CRAB angle from
   12             *                inputs of HDG, TAS, TC, GS.
   13             * USAGE:         ( %HDG %TAS %TC %GS -> %WD %WS %CRAB )
   14             *
   15             * File  CWVE.s  13
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
   28             *|| Resuming file CWVE.s at line 13
   29 00000 00000         CON(6)  =~xCWVE
            0
   30 00006       =xCWVE
   31             * File  CWVE.s  15
   32 00006 00000         CON(5)  =DOCOL
   33             * File  CWVE.s  16
   34 0000B 00000         CON(5)  =CK4&Dispatch
   35             * Requires 4 arguments
   36             * File  CWVE.s  17
   37 00010 00000         CON(5)  =DOBINT
   38 00015 11110         CON(5)  #1111
   39 0001A 00000         CON(5)  =DOCOL
   40             * 4 REAL numbers
   41             * File  CWVE.s  18
   42 0001F 00000         CON(5)  =FIFTEEN
   43 00024 00000         CON(5)  =ClrSysFlag
   44             * Set Polar/Cylindrical mode
   45             * File  CWVE.s  19
   46 00029 00000         CON(5)  =SIXTEEN
   47 0002E 00000         CON(5)  =SetSysFlag
   48             * File  CWVE.s  20
   49 00033 00000         CON(5)  =SEVENTEEN
   50 00038 00000         CON(5)  =ClrSysFlag
   51             * Set DEG mode
   52             * File  CWVE.s  21
   53 0003D 00000         CON(5)  =EIGHTEEN
   54 00042 00000         CON(5)  =ClrSysFlag
   55             * File  CWVE.s  22
   56 00047 00000         CON(5)  =DOLIST
   57 0004C 00000         CON(5)  =DOLAM
   58 00051 30            CON(2)  3
   59 00053 84447         NIBASC  \HDG\
            4
   60 00059 00000         CON(5)  =DOLAM
   61 0005E 30            CON(2)  3
   62 00060 45143         NIBASC  \TAS\
            5
   63 00066 00000         CON(5)  =DOLAM
   64 0006B 20            CON(2)  2
   65 0006D 4534          NIBASC  \TC\
   66 00071 00000         CON(5)  =DOLAM
   67 00076 20            CON(2)  2
   68 00078 7435          NIBASC  \GS\
   69 0007C 00000         CON(5)  =SEMI
   70 00081 00000         CON(5)  =BIND
   71             * Create temporary environment
   72             * File  CWVE.s  23
   73 00086 00000         CON(5)  =DOLAM
   74 0008B 20            CON(2)  2
   75 0008D 7435          NIBASC  \GS\
   76 00091 00000         CON(5)  =DOLAM
   77 00096 20            CON(2)  2
   78 00098 4534          NIBASC  \TC\
   79 0009C 00000         CON(5)  =x>V2
   80             * Create GROUND vector
   81             * File  CWVE.s  24
   82 000A1 00000         CON(5)  =DOLAM
   83 000A6 30            CON(2)  3
   84 000A8 45143         NIBASC  \TAS\
            5
   85 000AE 00000         CON(5)  =DOLAM
   86 000B3 30            CON(2)  3
   87 000B5 84447         NIBASC  \HDG\
            4
   88 000BB 00000         CON(5)  =x>V2
   89             * Create AIR vector
   90             * File  CWVE.s  25
   91 000C0 00000         CON(5)  =x-
   92             * Calc. WIND vector [WV = GV - AV]
   93             * File  CWVE.s  26
   94 000C5 00000         CON(5)  =xV>
   95             * -> WS WD[TO]
   96             * File  CWVE.s  27
   97 000CA 00000         CON(5)  =%180
   98 000CF 00000         CON(5)  =%+
   99             * -> WS WD
  100             * File  CWVE.s  28
  101 000D4 00000         CON(5)  =SWAP
  102             * -> WD WS
  103             * File  CWVE.s  29
  104 000D9 00000         CON(5)  =DOLAM
  105 000DE 30            CON(2)  3
  106 000E0 84447         NIBASC  \HDG\
            4
  107 000E6 00000         CON(5)  =DOLAM
  108 000EB 20            CON(2)  2
  109 000ED 4534          NIBASC  \TC\
  110 000F1 00000         CON(5)  =%-
  111             * -> WD WS CRAB
  112             * File  CWVE.s  30
  113 000F6 00000         CON(5)  =DUP
  114 000FB 00000         CON(5)  =DOREAL
  115 00100 100           NIBHEX  100
  116 00103 00000         NIBHEX  000000000009
            00000
            09
  117 0010F 9             NIBHEX  9
  118 00110 00000         CON(5)  =%<
  119 00115 00000         CON(5)  =IT
  120 0011A 00000         CON(5)  =DOCOL
  121             * Ensure CRAB is NOT < -90 deg.
  122             * File  CWVE.s  31
  123 0011F 00000         CON(5)  =%360
  124 00124 00000         CON(5)  =%+
  125             * -> WD WS CRAB
  126             * File  CWVE.s  32
  127 00129 00000         CON(5)  =SEMI
  128             * File  CWVE.s  33
  129 0012E 00000         CON(5)  =DUP
  130 00133 00000         CON(5)  =DOREAL
  131 00138 100           NIBHEX  100
  132 0013B 00000         NIBHEX  000000000009
            00000
            09
  133 00147 0             NIBHEX  0
  134 00148 00000         CON(5)  =%>
  135 0014D 00000         CON(5)  =IT
  136 00152 00000         CON(5)  =DOCOL
  137             * Ensure CRAB is NOT > 90 deg.
  138             * File  CWVE.s  34
  139 00157 00000         CON(5)  =%360
  140 0015C 00000         CON(5)  =%-
  141             * -> WD WS CRAB
  142             * File  CWVE.s  35
  143 00161 00000         CON(5)  =SEMI
  144             * File  CWVE.s  36
  145 00166 00000         CON(5)  =ABND
  146             * Abandon temporary environment
  147             * File  CWVE.s  37
  148 0016B 00000         CON(5)  =SEMI
  149             * File  CWVE.s  38
  150 00170 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)   Symbol Table                       CWVE.a         Page    2

 %+                                Ext                   -    98   124
 %-                                Ext                   -   110   140
 %180                              Ext                   -    97
 %360                              Ext                   -   123   139
 %<                                Ext                   -   118
 %>                                Ext                   -   134
 ABND                              Ext                   -   145
 BIND                              Ext                   -    70
 CK4&Dispatch                      Ext                   -    34
 ClrSysFlag                        Ext                   -    43    50    54
 DOBINT                            Ext                   -    37
 DOCOL                             Ext                   -    32    39   120
                                         136
 DOLAM                             Ext                   -    57    60    63
                                          66    73    76    82    85   104   107
 DOLIST                            Ext                   -    56
 DOREAL                            Ext                   -   114   130
 DUP                               Ext                   -   113   129
 EIGHTEEN                          Ext                   -    53
 FIFTEEN                           Ext                   -    42
 IT                                Ext                   -   119   135
=RomId                             Abs     800 #00000320 -    18
 SEMI                              Ext                   -    69   127   143
                                         148   150
 SEVENTEEN                         Ext                   -    49
 SIXTEEN                           Ext                   -    46
 SWAP                              Ext                   -   101
 SetSysFlag                        Ext                   -    47
 x-                                Ext                   -    91
 x>V2                              Ext                   -    79    88
=xCWVE                             Rel       6 #00000006 -    30
 xV>                               Ext                   -    94
 ~xCWVE                            Ext                   -    29
Saturn Assembler                                       Thu Jun 18 17:14:44 2009
V3.0.9 (04/15/2007)   Statistics                         CWVE.a         Page    3

Input Parameters

  Source file name is CWVE.a

  Listing file name is CWVE.l

  Object file name is CWVE.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
