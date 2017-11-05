Saturn Assembler                                       Fri Jun 26 16:57:22 2009
V3.0.9 (04/15/2007)                                      CONTETP.a      Page    1

    1               * File  CONTETP.s       1
    2               * RPL
    3               * File  CONTETP.s       2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\CONTETP.s, part of the CPONT50.hpp project, created by <> on 26/06/2009
    5               **********************************************************************
    6               * NAME:          CONTETP
    7               * LIBRARY #:     329h = 809d
    8               * AUTHOR:        Dan Pitic
    9               * VERSION:       1.1
   10               * DATE:          26 June 2009
   11               * COMPATIBILITY: HP50  ( Different rompointer )
   12               *                HP48  ( Different rompointer )
   13               * DESCRIPTION:   Function to calculate the ON TRACK ETP from departure
   14               *                point.  Calculates the flight time from the ETP to
   15               *                either point.  Calculates the fuel burn off from the
   16               *                ETP to either point.
   17               * USGAE:         ( %TAS %TC1 %WD %WS %DIST %FFLO
   18               *                                    -> %CPDIS %CPTIM %FBRN )
   19               *
   20               * File  CONTETP.s       18
   21               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\CPONT50.h
   22
   23               =RomId  EQU     #329
   24               * ROMID set to 329
   25
   26
   27
   28
   29
   30
   31               *|| Resuming file CONTETP.s at line 18
   32               * ( HP50
   33               *DEFINE THGS ROMPTR 320 1           ( HP48 )
   34               * File  CONTETP.s       21
   35 00000         =CONTETP
   36               * File  CONTETP.s       22
   37 00000 00000           CON(5)  =DOCOL
   38               * %TAS %TC1 %WD %WS %DIST %FFLO ->
   39               * File  CONTETP.s       23
   40 00005 00000           CON(5)  =DOLIST
   41 0000A 00000           CON(5)  =DOLAM
   42 0000F 30              CON(2)  3
   43 00011 451435          NIBASC  \TAS\
   44 00017 00000           CON(5)  =DOLAM
   45 0001C 30              CON(2)  3
   46 0001E 453413          NIBASC  \TC1\
   47 00024 00000           CON(5)  =DOLAM
   48 00029 20              CON(2)  2
   49 0002B 7544            NIBASC  \WD\
   50 0002F 00000           CON(5)  =DOLAM
   51 00034 20              CON(2)  2
   52 00036 7535            NIBASC  \WS\
   53               * INPUT arguments
   54               * File  CONTETP.s       24
   55 0003A 00000           CON(5)  =DOLAM
   56 0003F 40              CON(2)  4
   57 00041 4494354         NIBASC  \DIST\
            5
   58 00049 00000           CON(5)  =DOLAM
   59 0004E 40              CON(2)  4
   60 00050 6464C4F         NIBASC  \FFLO\
            4
   61               * File  CONTETP.s       25
   62 00058 00000           CON(5)  =SEMI
   63               * File  CONTETP.s       26
   64 0005D 00000           CON(5)  =BIND
   65               * INPUT argument LAMs
   66               * Calculate wind triangle 1 (ONWARDS from ETP)
   67               * File  CONTETP.s       28
   68 00062 00000           CON(5)  =DOLAM
   69 00067 30              CON(2)  3
   70 00069 451435          NIBASC  \TAS\
   71 0006F 00000           CON(5)  =DOLAM
   72 00074 30              CON(2)  3
   73 00076 453413          NIBASC  \TC1\
   74 0007C 00000           CON(5)  =DOLAM
   75 00081 20              CON(2)  2
   76 00083 7544            NIBASC  \WD\
   77 00087 00000           CON(5)  =DOLAM
   78 0008C 20              CON(2)  2
   79 0008E 7535            NIBASC  \WS\
   80               * File  CONTETP.s       29
   81 00092 00000           CON(5)  =DOROMP
   82 00097 023             CON(3)  #320
   83 0009A 300             CON(3)  #3
   84 0009D 00000           CON(5)  =DROPSWAPDROP
   85               * -> %GS1
   86               * Calc. reciprocal track (BACK from ETP)
   87               * File  CONTETP.s       31
   88 000A2 00000           CON(5)  =DOLAM
   89 000A7 30              CON(2)  3
   90 000A9 453413          NIBASC  \TC1\
   91 000AF 00000           CON(5)  =%180
   92 000B4 00000           CON(5)  =%+
   93               * -> %GS1 %TC2
   94               * File  CONTETP.s       32
   95 000B9 00000           CON(5)  =DUP
   96 000BE 00000           CON(5)  =%360
   97 000C3 00000           CON(5)  =%>
   98 000C8 00000           CON(5)  =IT
   99 000CD 00000           CON(5)  =DOCOL
  100               * Ensure TC2 is NOT > 360 deg.
  101               * File  CONTETP.s       33
  102 000D2 00000           CON(5)  =%360
  103 000D7 00000           CON(5)  =%-
  104               * -> %GS1 %TC2
  105               * File  CONTETP.s       34
  106 000DC 00000           CON(5)  =SEMI
  107               * Calc. wind triangle 2 (BACK from ETP)
  108               * File  CONTETP.s       36
  109 000E1 00000           CON(5)  =DOLAM
  110 000E6 30              CON(2)  3
  111 000E8 451435          NIBASC  \TAS\
  112 000EE 00000           CON(5)  =SWAP
  113 000F3 00000           CON(5)  =DOLAM
  114 000F8 20              CON(2)  2
  115 000FA 7544            NIBASC  \WD\
  116 000FE 00000           CON(5)  =DOLAM
  117 00103 20              CON(2)  2
  118 00105 7535            NIBASC  \WS\
  119               * File  CONTETP.s       37
  120 00109 00000           CON(5)  =DOROMP
  121 0010E 023             CON(3)  #320
  122 00111 300             CON(3)  #3
  123 00114 00000           CON(5)  =DROPSWAPDROP
  124               * -> %GS1 %GS2
  125               * Calc. distance to ETP from DEPARTURE point
  126               * File  CONTETP.s       39
  127 00119 00000           CON(5)  =DOLAM
  128 0011E 40              CON(2)  4
  129 00120 4494354         NIBASC  \DIST\
            5
  130               * -> %GS1 %GS2 %DIST
  131               * File  CONTETP.s       40
  132 00128 00000           CON(5)  =OVER
  133 0012D 00000           CON(5)  =%*
  134               * -> %GS1 %GS2 %NUM
  135               * File  CONTETP.s       41
  136 00132 00000           CON(5)  =3PICK
  137               * -> %GS1 %GS2 %NUM %GS1
  138               * File  CONTETP.s       42
  139 00137 00000           CON(5)  =3PICK
  140 0013C 00000           CON(5)  =%+
  141               * -> %GS1 %GS2 %NUM %DEN
  142               * File  CONTETP.s       43
  143 00141 00000           CON(5)  =%/
  144               * -> %GS1 %GS2 %CPDIS
  145               * Calc. time from ETP to either point (hours)
  146               * File  CONTETP.s       45
  147 00146 00000           CON(5)  =DUP
  148               * -> %GS1  %GS2 %CPDIS %CPDIS
  149               * File  CONTETP.s       46
  150 0014B 00000           CON(5)  =3PICK
  151 00150 00000           CON(5)  =%/
  152               * -> %GS1  %GS2 %CPDIS %CPTIM
  153               * Calc. fuel burn from ETP to either point
  154               * File  CONTETP.s       48
  155 00155 00000           CON(5)  =DUP
  156               * -> %GS1 %GS2 %CPDIS %CPTIM %CPTIM
  157               * File  CONTETP.s       49
  158 0015A 00000           CON(5)  =DOLAM
  159 0015F 40              CON(2)  4
  160 00161 6464C4F         NIBASC  \FFLO\
            4
  161 00169 00000           CON(5)  =%*
  162               * -> %GS1 %GS2 %CPDIS %CPTIM %FBRN
  163               * File  CONTETP.s       50
  164 0016E 00000           CON(5)  =5ROLLDROP
  165               * -> %GS2 %CPDIS %CPTIM %FBRN
  166               * File  CONTETP.s       51
  167 00173 00000           CON(5)  =4ROLLDROP
  168               * -> %CPDIS %CPTIM %FBRN
  169               * File  CONTETP.s       52
  170 00178 00000           CON(5)  =ABND
  171               * INPUT argument LAMs
  172               * File  CONTETP.s       53
  173 0017D 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 26 16:57:22 2009
V3.0.9 (04/15/2007)   Symbol Table                       CONTETP.a      Page    2

 %*                                Ext                   -   133   161
 %+                                Ext                   -    92   140
 %-                                Ext                   -   103
 %/                                Ext                   -   143   151
 %180                              Ext                   -    91
 %360                              Ext                   -    96   102
 %>                                Ext                   -    97
 3PICK                             Ext                   -   136   139   150
 4ROLLDROP                         Ext                   -   167
 5ROLLDROP                         Ext                   -   164
 ABND                              Ext                   -   170
 BIND                              Ext                   -    64
=CONTETP                           Rel       0 #00000000 -    35
 DOCOL                             Ext                   -    37    99
 DOLAM                             Ext                   -    41    44    47
                                          50    55    58    68    71    74    77
                                          88   109   113   116   127   158
 DOLIST                            Ext                   -    40
 DOROMP                            Ext                   -    81   120
 DROPSWAPDROP                      Ext                   -    84   123
 DUP                               Ext                   -    95   147   155
 IT                                Ext                   -    98
 OVER                              Ext                   -   132
=RomId                             Abs     809 #00000329 -    23
 SEMI                              Ext                   -    62   106   173
 SWAP                              Ext                   -   112
Saturn Assembler                                       Fri Jun 26 16:57:22 2009
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
