Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)                                      CONTETP.a      Page    1

    1             * File  CONTETP.s       1
    2             * RPL
    3             * File  CONTETP.s       2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\CONTETP.s, part of the CPONT50.hpp project, created by <> on 26/06/2009
    5             **********************************************************************
    6             * NAME:          CONTETP
    7             * LIBRARY #:     329h = 809d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.1
   10             * DATE:          26 June 2009
   11             * COMPATIBILITY: HP50  ( Different rompointer )
   12             *                HP48  ( Different rompointer )
   13             * DESCRIPTION:   Function to calculate the ON TRACK ETP from departure
   14             *                point.  Calculates the flight time from the ETP to
   15             *                either point.  Calculates the fuel burn off from the
   16             *                ETP to either point.
   17             * USGAE:         ( %TAS %TC1 %WD %WS %DIST %FFLO
   18             *                                    -> %CPDIS %CPTIM %FBRN )
   19             *
   20             * File  CONTETP.s       18
   21             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT48\CPONT48.h
   22
   23             =RomId  EQU     #329
   24             * ROMID set to 329
   25
   26
   27
   28
   29
   30
   31             *|| Resuming file CONTETP.s at line 18
   32             * ( HP48
   33             * File  CONTETP.s       21
   34 00000       =CONTETP
   35             * File  CONTETP.s       22
   36 00000 00000         CON(5)  =DOCOL
   37             * %TAS %TC1 %WD %WS %DIST %FFLO ->
   38             * File  CONTETP.s       23
   39 00005 00000         CON(5)  =DOLIST
   40 0000A 00000         CON(5)  =DOLAM
   41 0000F 30            CON(2)  3
   42 00011 45143         NIBASC  \TAS\
            5
   43 00017 00000         CON(5)  =DOLAM
   44 0001C 30            CON(2)  3
   45 0001E 45341         NIBASC  \TC1\
            3
   46 00024 00000         CON(5)  =DOLAM
   47 00029 20            CON(2)  2
   48 0002B 7544          NIBASC  \WD\
   49 0002F 00000         CON(5)  =DOLAM
   50 00034 20            CON(2)  2
   51 00036 7535          NIBASC  \WS\
   52             * INPUT arguments
   53             * File  CONTETP.s       24
   54 0003A 00000         CON(5)  =DOLAM
   55 0003F 40            CON(2)  4
   56 00041 44943         NIBASC  \DIST\
            545
   57 00049 00000         CON(5)  =DOLAM
   58 0004E 40            CON(2)  4
   59 00050 6464C         NIBASC  \FFLO\
            4F4
   60             * File  CONTETP.s       25
   61 00058 00000         CON(5)  =SEMI
   62             * File  CONTETP.s       26
   63 0005D 00000         CON(5)  =BIND
   64             * INPUT argument LAMs
   65             * Calculate wind triangle 1 (ONWARDS from ETP)
   66             * File  CONTETP.s       28
   67 00062 00000         CON(5)  =DOLAM
   68 00067 30            CON(2)  3
   69 00069 45143         NIBASC  \TAS\
            5
   70 0006F 00000         CON(5)  =DOLAM
   71 00074 30            CON(2)  3
   72 00076 45341         NIBASC  \TC1\
            3
   73 0007C 00000         CON(5)  =DOLAM
   74 00081 20            CON(2)  2
   75 00083 7544          NIBASC  \WD\
   76 00087 00000         CON(5)  =DOLAM
   77 0008C 20            CON(2)  2
   78 0008E 7535          NIBASC  \WS\
   79             * File  CONTETP.s       29
   80 00092 00000         CON(5)  =DOROMP
   81 00097 023           CON(3)  #320
   82 0009A 100           CON(3)  #1
   83 0009D 00000         CON(5)  =DROPSWAPDROP
   84             * -> %GS1
   85             * Calc. reciprocal track (BACK from ETP)
   86             * File  CONTETP.s       31
   87 000A2 00000         CON(5)  =DOLAM
   88 000A7 30            CON(2)  3
   89 000A9 45341         NIBASC  \TC1\
            3
   90 000AF 00000         CON(5)  =%180
   91 000B4 00000         CON(5)  =%+
   92             * -> %GS1 %TC2
   93             * File  CONTETP.s       32
   94 000B9 00000         CON(5)  =DUP
   95 000BE 00000         CON(5)  =%360
   96 000C3 00000         CON(5)  =%>
   97 000C8 00000         CON(5)  =IT
   98 000CD 00000         CON(5)  =DOCOL
   99             * Ensure TC2 is NOT > 360 deg.
  100             * File  CONTETP.s       33
  101 000D2 00000         CON(5)  =%360
  102 000D7 00000         CON(5)  =%-
  103             * -> %GS1 %TC2
  104             * File  CONTETP.s       34
  105 000DC 00000         CON(5)  =SEMI
  106             * Calc. wind triangle 2 (BACK from ETP)
  107             * File  CONTETP.s       36
  108 000E1 00000         CON(5)  =DOLAM
  109 000E6 30            CON(2)  3
  110 000E8 45143         NIBASC  \TAS\
            5
  111 000EE 00000         CON(5)  =SWAP
  112 000F3 00000         CON(5)  =DOLAM
  113 000F8 20            CON(2)  2
  114 000FA 7544          NIBASC  \WD\
  115 000FE 00000         CON(5)  =DOLAM
  116 00103 20            CON(2)  2
  117 00105 7535          NIBASC  \WS\
  118             * File  CONTETP.s       37
  119 00109 00000         CON(5)  =DOROMP
  120 0010E 023           CON(3)  #320
  121 00111 100           CON(3)  #1
  122 00114 00000         CON(5)  =DROPSWAPDROP
  123             * -> %GS1 %GS2
  124             * Calc. distance to ETP from DEPARTURE point
  125             * File  CONTETP.s       39
  126 00119 00000         CON(5)  =DOLAM
  127 0011E 40            CON(2)  4
  128 00120 44943         NIBASC  \DIST\
            545
  129             * -> %GS1 %GS2 %DIST
  130             * File  CONTETP.s       40
  131 00128 00000         CON(5)  =OVER
  132 0012D 00000         CON(5)  =%*
  133             * -> %GS1 %GS2 %NUM
  134             * File  CONTETP.s       41
  135 00132 00000         CON(5)  =3PICK
  136             * -> %GS1 %GS2 %NUM %GS1
  137             * File  CONTETP.s       42
  138 00137 00000         CON(5)  =3PICK
  139 0013C 00000         CON(5)  =%+
  140             * -> %GS1 %GS2 %NUM %DEN
  141             * File  CONTETP.s       43
  142 00141 00000         CON(5)  =%/
  143             * -> %GS1 %GS2 %CPDIS
  144             * Calc. time from ETP to either point (hours)
  145             * File  CONTETP.s       45
  146 00146 00000         CON(5)  =DUP
  147             * -> %GS1  %GS2 %CPDIS %CPDIS
  148             * File  CONTETP.s       46
  149 0014B 00000         CON(5)  =3PICK
  150 00150 00000         CON(5)  =%/
  151             * -> %GS1  %GS2 %CPDIS %CPTIM
  152             * Calc. fuel burn from ETP to either point
  153             * File  CONTETP.s       48
  154 00155 00000         CON(5)  =DUP
  155             * -> %GS1 %GS2 %CPDIS %CPTIM %CPTIM
  156             * File  CONTETP.s       49
  157 0015A 00000         CON(5)  =DOLAM
  158 0015F 40            CON(2)  4
  159 00161 6464C         NIBASC  \FFLO\
            4F4
  160 00169 00000         CON(5)  =%*
  161             * -> %GS1 %GS2 %CPDIS %CPTIM %FBRN
  162             * File  CONTETP.s       50
  163 0016E 00000         CON(5)  =5ROLLDROP
  164             * -> %GS2 %CPDIS %CPTIM %FBRN
  165             * File  CONTETP.s       51
  166 00173 00000         CON(5)  =4ROLLDROP
  167             * -> %CPDIS %CPTIM %FBRN
  168             * File  CONTETP.s       52
  169 00178 00000         CON(5)  =ABND
  170             * INPUT argument LAMs
  171             * File  CONTETP.s       53
  172 0017D 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       CONTETP.a      Page    2

 %*                                Ext                   -   132   160
 %+                                Ext                   -    91   139
 %-                                Ext                   -   102
 %/                                Ext                   -   142   150
 %180                              Ext                   -    90
 %360                              Ext                   -    95   101
 %>                                Ext                   -    96
 3PICK                             Ext                   -   135   138   149
 4ROLLDROP                         Ext                   -   166
 5ROLLDROP                         Ext                   -   163
 ABND                              Ext                   -   169
 BIND                              Ext                   -    63
=CONTETP                           Rel       0 #00000000 -    34
 DOCOL                             Ext                   -    36    98
 DOLAM                             Ext                   -    40    43    46
                                          49    54    57    67    70    73    76
                                          87   108   112   115   126   157
 DOLIST                            Ext                   -    39
 DOROMP                            Ext                   -    80   119
 DROPSWAPDROP                      Ext                   -    83   122
 DUP                               Ext                   -    94   146   154
 IT                                Ext                   -    97
 OVER                              Ext                   -   131
=RomId                             Abs     809 #00000329 -    23
 SEMI                              Ext                   -    61   105   172
 SWAP                              Ext                   -   111
Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)   Statistics                         CONTETP.a      Page    3

Input Parameters

  Source file name is CONTETP.a

  Listing file name is CONTETP.l

  Object file name is CONTETP.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
