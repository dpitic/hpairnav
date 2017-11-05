Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)                                      INTER.a        Page    1

    1             * File  INTER.s 1
    2             * RPL
    3             * File  INTER.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTER.s, part of the INTERCEPT50.hpp project, created by <> on 19/06/2009
    5             **********************************************************************
    6             * NAME:          INTER
    7             * AUTHOR:        Dan Pitic
    8             * VERSION:       1.7
    9             * DATE:          19 June 2009
   10             * LIBRARY #:     321h = 801d
   11             * COMPATIBILITY: HP50
   12             *                HP48  ( THGS & CGVE rompointers are different )
   13             * DESCRIPTION:   Function to calculate and solve the interception
   14             *                problem.
   15             * USAGE:         ( %WD %WS %TAS %DRM2 %MRM2 %TRS %GSS ->
   16             *                                                %HDG %TC %GS %ETI )
   17             *
   18             * File  INTER.s 16
   19             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT48\INTERCEPT48.h
   20
   21             =RomId  EQU     #321
   22             * ROMID set to 321
   23
   24
   25
   26
   27
   28
   29             *|| Resuming file INTER.s at line 16
   30             * ( HP48
   31             * File  INTER.s 20
   32             * ( HP48
   33             * File  INTER.s 21
   34 00000       =INTER
   35             * File  INTER.s 22
   36 00000 00000         CON(5)  =DOCOL
   37             * File  INTER.s 23
   38 00005 00000         CON(5)  =FIFTEEN
   39 0000A 00000         CON(5)  =ClrSysFlag
   40             * Set Polar/Cylindrical mode
   41             * File  INTER.s 24
   42 0000F 00000         CON(5)  =SIXTEEN
   43 00014 00000         CON(5)  =SetSysFlag
   44             * File  INTER.s 25
   45 00019 00000         CON(5)  =SEVENTEEN
   46 0001E 00000         CON(5)  =ClrSysFlag
   47             * Set DEG mode
   48             * File  INTER.s 26
   49 00023 00000         CON(5)  =EIGHTEEN
   50 00028 00000         CON(5)  =ClrSysFlag
   51             * File  INTER.s 27
   52 0002D 00000         CON(5)  =DOLIST
   53 00032 00000         CON(5)  =DOLAM
   54 00037 20            CON(2)  2
   55 00039 7544          NIBASC  \WD\
   56             * Input argument LAMs
   57             * File  INTER.s 28
   58 0003D 00000         CON(5)  =DOLAM
   59 00042 20            CON(2)  2
   60 00044 7535          NIBASC  \WS\
   61             * File  INTER.s 29
   62 00048 00000         CON(5)  =DOLAM
   63 0004D 30            CON(2)  3
   64 0004F 45143         NIBASC  \TAS\
            5
   65             * File  INTER.s 30
   66 00055 00000         CON(5)  =DOLAM
   67 0005A 40            CON(2)  4
   68 0005C 4425D         NIBASC  \DRM2\
            423
   69             * File  INTER.s 31
   70 00064 00000         CON(5)  =DOLAM
   71 00069 40            CON(2)  4
   72 0006B D425D         NIBASC  \MRM2\
            423
   73             * File  INTER.s 32
   74 00073 00000         CON(5)  =DOLAM
   75 00078 30            CON(2)  3
   76 0007A 45253         NIBASC  \TRS\
            5
   77             * File  INTER.s 33
   78 00080 00000         CON(5)  =DOLAM
   79 00085 30            CON(2)  3
   80 00087 74353         NIBASC  \GSS\
            5
   81             * File  INTER.s 34
   82 0008D 00000         CON(5)  =SEMI
   83             * File  INTER.s 35
   84 00092 00000         CON(5)  =BIND
   85             * Argument LAMs
   86             * File  INTER.s 36
   87 00097 00000         CON(5)  =DOLAM
   88 0009C 20            CON(2)  2
   89 0009E 7535          NIBASC  \WS\
   90 000A2 00000         CON(5)  =DOLAM
   91 000A7 20            CON(2)  2
   92 000A9 7544          NIBASC  \WD\
   93 000AD 00000         CON(5)  =x>V2
   94             * Create -WIND vector
   95             * File  INTER.s 37
   96 000B2 00000         CON(5)  =DOLAM
   97 000B7 30            CON(2)  3
   98 000B9 74353         NIBASC  \GSS\
            5
   99 000BF 00000         CON(5)  =DOLAM
  100 000C4 30            CON(2)  3
  101 000C6 45253         NIBASC  \TRS\
            5
  102 000CC 00000         CON(5)  =x>V2
  103             * Create TARGET GROUND vector
  104             * File  INTER.s 38
  105 000D1 00000         CON(5)  =x+
  106             * Calc. -RELATIVE WIND vector
  107             * File  INTER.s 39
  108 000D6 00000         CON(5)  =xV>
  109             * -> %RWS %RWD
  110             * File  INTER.s 40
  111 000DB 00000         CON(5)  =DUP
  112 000E0 00000         CON(5)  =%0
  113 000E5 00000         CON(5)  =%<
  114 000EA 00000         CON(5)  =IT
  115 000EF 00000         CON(5)  =DOCOL
  116             * Ensure RWD is NOT < 0 deg.
  117             * File  INTER.s 41
  118 000F4 00000         CON(5)  =%360
  119 000F9 00000         CON(5)  =%+
  120             * -> %RWS %RWD
  121             * File  INTER.s 42
  122 000FE 00000         CON(5)  =SEMI
  123             * File  INTER.s 43
  124 00103 00000         CON(5)  =DOLIST
  125 00108 00000         CON(5)  =DOLAM
  126 0010D 30            CON(2)  3
  127 0010F 25753         NIBASC  \RWS\
            5
  128 00115 00000         CON(5)  =DOLAM
  129 0011A 30            CON(2)  3
  130 0011C 25754         NIBASC  \RWD\
            4
  131 00122 00000         CON(5)  =SEMI
  132 00127 00000         CON(5)  =BIND
  133             * Relative wind LAMs
  134             * File  INTER.s 44
  135 0012C 00000         CON(5)  =DOLAM
  136 00131 30            CON(2)  3
  137 00133 45143         NIBASC  \TAS\
            5
  138 00139 00000         CON(5)  =DOLAM
  139 0013E 40            CON(2)  4
  140 00140 4425D         NIBASC  \DRM2\
            423
  141 00148 00000         CON(5)  =DOLAM
  142 0014D 30            CON(2)  3
  143 0014F 25754         NIBASC  \RWD\
            4
  144 00155 00000         CON(5)  =DOLAM
  145 0015A 30            CON(2)  3
  146 0015C 25753         NIBASC  \RWS\
            5
  147             * Calc. intercept hdg. and SRM
  148             * File  INTER.s 45
  149 00162 00000         CON(5)  =DOROMP
  150 00167 023           CON(3)  #320
  151 0016A 100           CON(3)  #1
  152             * -> %HDG %GS %CRAB
  153             * File  INTER.s 46
  154 0016D 00000         CON(5)  =DROP
  155             * -> %HDG %GS
  156             * File  INTER.s 47
  157 00172 00000         CON(5)  =DOLAM
  158 00177 40            CON(2)  4
  159 00179 D425D         NIBASC  \MRM2\
            423
  160 00181 00000         CON(5)  =SWAP
  161 00186 00000         CON(5)  =%/
  162             * -> %HDG %ETI
  163             * File  INTER.s 48
  164 0018B 00000         CON(5)  =SWAP
  165             * -> %ETI %HDG
  166             * File  INTER.s 49
  167 00190 00000         CON(5)  =DUP
  168 00195 00000         CON(5)  =DOLAM
  169 0019A 30            CON(2)  3
  170 0019C 45143         NIBASC  \TAS\
            5
  171 001A2 00000         CON(5)  =DOLAM
  172 001A7 20            CON(2)  2
  173 001A9 7544          NIBASC  \WD\
  174 001AD 00000         CON(5)  =DOLAM
  175 001B2 20            CON(2)  2
  176 001B4 7535          NIBASC  \WS\
  177             * -> %ETI %HDG %HDG ...
  178             * File  INTER.s 50
  179 001B8 00000         CON(5)  =DOROMP
  180 001BD 023           CON(3)  #320
  181 001C0 300           CON(3)  #3
  182             * ... -> %ETI %HDG %TC %GS %CRAB
  183             * File  INTER.s 51
  184 001C3 00000         CON(5)  =DROP
  185             * -> %ETI %HDG %TC %GS
  186             * File  INTER.s 52
  187 001C8 00000         CON(5)  =4ROLL
  188             * -> %HDG %TC %GS %ETI
  189             * File  INTER.s 53
  190 001CD 00000         CON(5)  =ABND
  191             * Relative wind LAMs
  192             * File  INTER.s 54
  193 001D2 00000         CON(5)  =ABND
  194             * Argument LAMs
  195             * File  INTER.s 55
  196 001D7 00000         CON(5)  =SEMI
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Symbol Table                       INTER.a        Page    2

 %+                                Ext                   -   119
 %/                                Ext                   -   161
 %0                                Ext                   -   112
 %360                              Ext                   -   118
 %<                                Ext                   -   113
 4ROLL                             Ext                   -   187
 ABND                              Ext                   -   190   193
 BIND                              Ext                   -    84   132
 ClrSysFlag                        Ext                   -    39    46    50
 DOCOL                             Ext                   -    36   115
 DOLAM                             Ext                   -    53    58    62
                                          66    70    74    78    87    90    96
                                          99   125   128   135   138   141   144
                                         157   168   171   174
 DOLIST                            Ext                   -    52   124
 DOROMP                            Ext                   -   149   179
 DROP                              Ext                   -   154   184
 DUP                               Ext                   -   111   167
 EIGHTEEN                          Ext                   -    49
 FIFTEEN                           Ext                   -    38
=INTER                             Rel       0 #00000000 -    34
 IT                                Ext                   -   114
=RomId                             Abs     801 #00000321 -    21
 SEMI                              Ext                   -    82   122   131
                                         196
 SEVENTEEN                         Ext                   -    45
 SIXTEEN                           Ext                   -    42
 SWAP                              Ext                   -   160   164
 SetSysFlag                        Ext                   -    43
 x+                                Ext                   -   105
 x>V2                              Ext                   -    93   102
 xV>                               Ext                   -   108
Saturn Assembler                                       Sun Jun 21 13:32:24 2009
V3.0.9 (04/15/2007)   Statistics                         INTER.a        Page    3

Input Parameters

  Source file name is INTER.a

  Listing file name is INTER.l

  Object file name is INTER.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
