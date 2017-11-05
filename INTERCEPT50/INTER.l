Saturn Assembler                                       Sun Jun 21 11:25:58 2009
V3.0.9 (04/15/2007)                                      INTER.a        Page    1

    1               * File  INTER.s 1
    2               * RPL
    3               * File  INTER.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTER.s, part of the INTERCEPT50.hpp project, created by <> on 19/06/2009
    5               **********************************************************************
    6               * NAME:          INTER
    7               * AUTHOR:        Dan Pitic
    8               * VERSION:       1.7
    9               * DATE:          19 June 2009
   10               * LIBRARY #:     321h = 801d
   11               * COMPATIBILITY: HP50
   12               *                HP48  ( THGS & CGVE rompointers are different )
   13               * DESCRIPTION:   Function to calculate and solve the interception
   14               *                problem.
   15               * USAGE:         ( %WD %WS %TAS %DRM2 %MRM2 %TRS %GSS ->
   16               *                                                %HDG %TC %GS %ETI )
   17               *
   18               * File  INTER.s 16
   19               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTERCEPT50.h
   20
   21               =RomId  EQU     #321
   22               * ROMID set to 321
   23
   24
   25
   26
   27
   28
   29
   30               *|| Resuming file INTER.s at line 16
   31               * ( HP50
   32               * File  INTER.s 18
   33               * ( HP50
   34               *DEFINE THGS ROMPTR 320 1            ( HP48 )
   35               *DEFINE CGVE ROMPTR 320 3            ( HP48 )
   36               * File  INTER.s 21
   37 00000         =INTER
   38               * File  INTER.s 22
   39 00000 00000           CON(5)  =DOCOL
   40               * File  INTER.s 23
   41 00005 00000           CON(5)  =FIFTEEN
   42 0000A 00000           CON(5)  =ClrSysFlag
   43               * Set Polar/Cylindrical mode
   44               * File  INTER.s 24
   45 0000F 00000           CON(5)  =SIXTEEN
   46 00014 00000           CON(5)  =SetSysFlag
   47               * File  INTER.s 25
   48 00019 00000           CON(5)  =SEVENTEEN
   49 0001E 00000           CON(5)  =ClrSysFlag
   50               * Set DEG mode
   51               * File  INTER.s 26
   52 00023 00000           CON(5)  =EIGHTEEN
   53 00028 00000           CON(5)  =ClrSysFlag
   54               * File  INTER.s 27
   55 0002D 00000           CON(5)  =DOLIST
   56 00032 00000           CON(5)  =DOLAM
   57 00037 20              CON(2)  2
   58 00039 7544            NIBASC  \WD\
   59               * Input argument LAMs
   60               * File  INTER.s 28
   61 0003D 00000           CON(5)  =DOLAM
   62 00042 20              CON(2)  2
   63 00044 7535            NIBASC  \WS\
   64               * File  INTER.s 29
   65 00048 00000           CON(5)  =DOLAM
   66 0004D 30              CON(2)  3
   67 0004F 451435          NIBASC  \TAS\
   68               * File  INTER.s 30
   69 00055 00000           CON(5)  =DOLAM
   70 0005A 40              CON(2)  4
   71 0005C 4425D42         NIBASC  \DRM2\
            3
   72               * File  INTER.s 31
   73 00064 00000           CON(5)  =DOLAM
   74 00069 40              CON(2)  4
   75 0006B D425D42         NIBASC  \MRM2\
            3
   76               * File  INTER.s 32
   77 00073 00000           CON(5)  =DOLAM
   78 00078 30              CON(2)  3
   79 0007A 452535          NIBASC  \TRS\
   80               * File  INTER.s 33
   81 00080 00000           CON(5)  =DOLAM
   82 00085 30              CON(2)  3
   83 00087 743535          NIBASC  \GSS\
   84               * File  INTER.s 34
   85 0008D 00000           CON(5)  =SEMI
   86               * File  INTER.s 35
   87 00092 00000           CON(5)  =BIND
   88               * Argument LAMs
   89               * File  INTER.s 36
   90 00097 00000           CON(5)  =DOLAM
   91 0009C 20              CON(2)  2
   92 0009E 7535            NIBASC  \WS\
   93 000A2 00000           CON(5)  =DOLAM
   94 000A7 20              CON(2)  2
   95 000A9 7544            NIBASC  \WD\
   96 000AD 00000           CON(5)  =x>V2
   97               * Create -WIND vector
   98               * File  INTER.s 37
   99 000B2 00000           CON(5)  =DOLAM
  100 000B7 30              CON(2)  3
  101 000B9 743535          NIBASC  \GSS\
  102 000BF 00000           CON(5)  =DOLAM
  103 000C4 30              CON(2)  3
  104 000C6 452535          NIBASC  \TRS\
  105 000CC 00000           CON(5)  =x>V2
  106               * Create TARGET GROUND vector
  107               * File  INTER.s 38
  108 000D1 00000           CON(5)  =x+
  109               * Calc. -RELATIVE WIND vector
  110               * File  INTER.s 39
  111 000D6 00000           CON(5)  =xV>
  112               * -> %RWS %RWD
  113               * File  INTER.s 40
  114 000DB 00000           CON(5)  =DUP
  115 000E0 00000           CON(5)  =%0
  116 000E5 00000           CON(5)  =%<
  117 000EA 00000           CON(5)  =IT
  118 000EF 00000           CON(5)  =DOCOL
  119               * Ensure RWD is NOT < 0 deg.
  120               * File  INTER.s 41
  121 000F4 00000           CON(5)  =%360
  122 000F9 00000           CON(5)  =%+
  123               * -> %RWS %RWD
  124               * File  INTER.s 42
  125 000FE 00000           CON(5)  =SEMI
  126               * File  INTER.s 43
  127 00103 00000           CON(5)  =DOLIST
  128 00108 00000           CON(5)  =DOLAM
  129 0010D 30              CON(2)  3
  130 0010F 257535          NIBASC  \RWS\
  131 00115 00000           CON(5)  =DOLAM
  132 0011A 30              CON(2)  3
  133 0011C 257544          NIBASC  \RWD\
  134 00122 00000           CON(5)  =SEMI
  135 00127 00000           CON(5)  =BIND
  136               * Relative wind LAMs
  137               * File  INTER.s 44
  138 0012C 00000           CON(5)  =DOLAM
  139 00131 30              CON(2)  3
  140 00133 451435          NIBASC  \TAS\
  141 00139 00000           CON(5)  =DOLAM
  142 0013E 40              CON(2)  4
  143 00140 4425D42         NIBASC  \DRM2\
            3
  144 00148 00000           CON(5)  =DOLAM
  145 0014D 30              CON(2)  3
  146 0014F 257544          NIBASC  \RWD\
  147 00155 00000           CON(5)  =DOLAM
  148 0015A 30              CON(2)  3
  149 0015C 257535          NIBASC  \RWS\
  150               * Calc. intercept hdg. and SRM
  151               * File  INTER.s 45
  152 00162 00000           CON(5)  =DOROMP
  153 00167 023             CON(3)  #320
  154 0016A 300             CON(3)  #3
  155               * -> %HDG %GS %CRAB
  156               * File  INTER.s 46
  157 0016D 00000           CON(5)  =DROP
  158               * -> %HDG %GS
  159               * File  INTER.s 47
  160 00172 00000           CON(5)  =DOLAM
  161 00177 40              CON(2)  4
  162 00179 D425D42         NIBASC  \MRM2\
            3
  163 00181 00000           CON(5)  =SWAP
  164 00186 00000           CON(5)  =%/
  165               * -> %HDG %ETI
  166               * File  INTER.s 48
  167 0018B 00000           CON(5)  =SWAP
  168               * -> %ETI %HDG
  169               * File  INTER.s 49
  170 00190 00000           CON(5)  =DUP
  171 00195 00000           CON(5)  =DOLAM
  172 0019A 30              CON(2)  3
  173 0019C 451435          NIBASC  \TAS\
  174 001A2 00000           CON(5)  =DOLAM
  175 001A7 20              CON(2)  2
  176 001A9 7544            NIBASC  \WD\
  177 001AD 00000           CON(5)  =DOLAM
  178 001B2 20              CON(2)  2
  179 001B4 7535            NIBASC  \WS\
  180               * -> %ETI %HDG %HDG ...
  181               * File  INTER.s 50
  182 001B8 00000           CON(5)  =DOROMP
  183 001BD 023             CON(3)  #320
  184 001C0 100             CON(3)  #1
  185               * ... -> %ETI %HDG %TC %GS %CRAB
  186               * File  INTER.s 51
  187 001C3 00000           CON(5)  =DROP
  188               * -> %ETI %HDG %TC %GS
  189               * File  INTER.s 52
  190 001C8 00000           CON(5)  =4ROLL
  191               * -> %HDG %TC %GS %ETI
  192               * File  INTER.s 53
  193 001CD 00000           CON(5)  =ABND
  194               * Relative wind LAMs
  195               * File  INTER.s 54
  196 001D2 00000           CON(5)  =ABND
  197               * Argument LAMs
  198               * File  INTER.s 55
  199 001D7 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun Jun 21 11:25:58 2009
V3.0.9 (04/15/2007)   Symbol Table                       INTER.a        Page    2

 %+                                Ext                   -   122
 %/                                Ext                   -   164
 %0                                Ext                   -   115
 %360                              Ext                   -   121
 %<                                Ext                   -   116
 4ROLL                             Ext                   -   190
 ABND                              Ext                   -   193   196
 BIND                              Ext                   -    87   135
 ClrSysFlag                        Ext                   -    42    49    53
 DOCOL                             Ext                   -    39   118
 DOLAM                             Ext                   -    56    61    65
                                          69    73    77    81    90    93    99
                                         102   128   131   138   141   144   147
                                         160   171   174   177
 DOLIST                            Ext                   -    55   127
 DOROMP                            Ext                   -   152   182
 DROP                              Ext                   -   157   187
 DUP                               Ext                   -   114   170
 EIGHTEEN                          Ext                   -    52
 FIFTEEN                           Ext                   -    41
=INTER                             Rel       0 #00000000 -    37
 IT                                Ext                   -   117
=RomId                             Abs     801 #00000321 -    21
 SEMI                              Ext                   -    85   125   134
                                         199
 SEVENTEEN                         Ext                   -    48
 SIXTEEN                           Ext                   -    45
 SWAP                              Ext                   -   163   167
 SetSysFlag                        Ext                   -    46
 x+                                Ext                   -   108
 x>V2                              Ext                   -    96   105
 xV>                               Ext                   -   111
Saturn Assembler                                       Sun Jun 21 11:25:58 2009
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
