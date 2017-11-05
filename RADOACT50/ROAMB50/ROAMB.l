Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)                                      ROAMB.a        Page    1

    1               * File  ROAMB.s 1
    2               * RPL
    3               * File  ROAMB.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\ROAMB.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5               **********************************************************************
    6               * NAME:          ROAMB
    7               * LIBRARY #:     324h = 804d
    8               * AUTHOR:        Dan Pitic
    9               * VERSION:       1.6
   10               * DATE:          24 June 2009
   11               * COMPATIBILITY: HP50  ( Different rompointer def. )
   12               *                HP48  ( Different rompointer def. )
   13               * DESCRIPTION:   Function to calculate the radius of action from a
   14               *                moving base.
   15               * USAGE:         ( %WD %WS %TRS %GSS %TAS %TC1 %T
   16               *                  -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
   17               *
   18               * File  ROAMB.s 16
   19               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\ROAMB50.h
   20
   21               =RomId  EQU     #324
   22               * ROMID set to 324
   23
   24
   25
   26
   27
   28
   29
   30
   31               *|| Resuming file ROAMB.s at line 16
   32               * ( HP50
   33               * File  ROAMB.s 18
   34               * ( HP50
   35               *DEFINE THGS ROMPTR 320 1           ( HP48 )
   36               *DEFINE CGVE ROMPTR 320 3           ( HP48 )
   37               * File  ROAMB.s 21
   38 00000         =ROAMB
   39               * File  ROAMB.s 22
   40 00000 00000           CON(5)  =DOCOL
   41               * File  ROAMB.s 23
   42 00005 00000           CON(5)  =DOLIST
   43 0000A 00000           CON(5)  =DOLAM
   44 0000F 20              CON(2)  2
   45 00011 7544            NIBASC  \WD\
   46 00015 00000           CON(5)  =DOLAM
   47 0001A 20              CON(2)  2
   48 0001C 7535            NIBASC  \WS\
   49 00020 00000           CON(5)  =DOLAM
   50 00025 30              CON(2)  3
   51 00027 452535          NIBASC  \TRS\
   52 0002D 00000           CON(5)  =DOLAM
   53 00032 30              CON(2)  3
   54 00034 743535          NIBASC  \GSS\
   55               * File  ROAMB.s 24
   56 0003A 00000           CON(5)  =DOLAM
   57 0003F 30              CON(2)  3
   58 00041 451435          NIBASC  \TAS\
   59 00047 00000           CON(5)  =DOLAM
   60 0004C 30              CON(2)  3
   61 0004E 453413          NIBASC  \TC1\
   62 00054 00000           CON(5)  =DOLAM
   63 00059 10              CON(2)  1
   64 0005B 45              NIBASC  \T\
   65 0005D 00000           CON(5)  =SEMI
   66               * File  ROAMB.s 25
   67 00062 00000           CON(5)  =BIND
   68               * INPUT argument LAMs
   69               * Calc. wind triangle 1
   70               * File  ROAMB.s 27
   71 00067 00000           CON(5)  =DOLAM
   72 0006C 30              CON(2)  3
   73 0006E 451435          NIBASC  \TAS\
   74 00074 00000           CON(5)  =DOLAM
   75 00079 30              CON(2)  3
   76 0007B 453413          NIBASC  \TC1\
   77 00081 00000           CON(5)  =DOLAM
   78 00086 20              CON(2)  2
   79 00088 7544            NIBASC  \WD\
   80 0008C 00000           CON(5)  =DOLAM
   81 00091 20              CON(2)  2
   82 00093 7535            NIBASC  \WS\
   83               * File  ROAMB.s 28
   84 00097 00000           CON(5)  =DOROMP
   85 0009C 023             CON(3)  #320
   86 0009F 300             CON(3)  #3
   87 000A2 00000           CON(5)  =DROP
   88               * -> %HDG1 %GS1
   89               * Calc. relative wind
   90               * File  ROAMB.s 30
   91 000A7 00000           CON(5)  =DOLAM
   92 000AC 20              CON(2)  2
   93 000AE 7535            NIBASC  \WS\
   94 000B2 00000           CON(5)  =DOLAM
   95 000B7 20              CON(2)  2
   96 000B9 7544            NIBASC  \WD\
   97 000BD 00000           CON(5)  =x>V2
   98               * -> %HDG1 %GS1 [-WV]
   99               * File  ROAMB.s 31
  100 000C2 00000           CON(5)  =DOLAM
  101 000C7 30              CON(2)  3
  102 000C9 743535          NIBASC  \GSS\
  103 000CF 00000           CON(5)  =DOLAM
  104 000D4 30              CON(2)  3
  105 000D6 452535          NIBASC  \TRS\
  106 000DC 00000           CON(5)  =x>V2
  107               * -> %HDG1 %GS1 [-WV] [TGV]
  108               * File  ROAMB.s 32
  109 000E1 00000           CON(5)  =x+
  110               * -> %HDG1 %GS1 [-RW]
  111               * File  ROAMB.s 33
  112 000E6 00000           CON(5)  =xV>
  113               * -> %HDG1 %GS1 %RWS %RWD
  114               * File  ROAMB.s 34
  115 000EB 00000           CON(5)  =DUP
  116 000F0 00000           CON(5)  =%0
  117 000F5 00000           CON(5)  =%<
  118 000FA 00000           CON(5)  =IT
  119 000FF 00000           CON(5)  =DOCOL
  120               * Ensure RWD is NOT < 0 deg.
  121               * File  ROAMB.s 35
  122 00104 00000           CON(5)  =%360
  123 00109 00000           CON(5)  =%+
  124               * -> %HDG1 %GS1 %RWS %RWD
  125               * File  ROAMB.s 36
  126 0010E 00000           CON(5)  =SEMI
  127               * File  ROAMB.s 37
  128 00113 00000           CON(5)  =DOLIST
  129 00118 00000           CON(5)  =DOLAM
  130 0011D 30              CON(2)  3
  131 0011F 257535          NIBASC  \RWS\
  132 00125 00000           CON(5)  =DOLAM
  133 0012A 30              CON(2)  3
  134 0012C 257544          NIBASC  \RWD\
  135 00132 00000           CON(5)  =SEMI
  136               * RW LAMs
  137               * File  ROAMB.s 38
  138 00137 00000           CON(5)  =BIND
  139               * -> %HDG1 %GS1
  140               * Calc. wind triangle 2 (relative wind triangle)
  141               * File  ROAMB.s 40
  142 0013C 00000           CON(5)  =OVER
  143 00141 00000           CON(5)  =DOLAM
  144 00146 30              CON(2)  3
  145 00148 451435          NIBASC  \TAS\
  146 0014E 00000           CON(5)  =DOLAM
  147 00153 30              CON(2)  3
  148 00155 257544          NIBASC  \RWD\
  149 0015B 00000           CON(5)  =DOLAM
  150 00160 30              CON(2)  3
  151 00162 257535          NIBASC  \RWS\
  152               * File  ROAMB.s 41
  153 00168 00000           CON(5)  =DOROMP
  154 0016D 023             CON(3)  #320
  155 00170 100             CON(3)  #1
  156 00173 00000           CON(5)  =DROPSWAP
  157               * -> %HDG1 %GS1 %S1 %DRM1
  158               * Calc. direction of closure
  159               * File  ROAMB.s 43
  160 00178 00000           CON(5)  =%180
  161 0017D 00000           CON(5)  =%+
  162               * -> %HDG1 %GS1 %S1 %DRM2
  163               * File  ROAMB.s 44
  164 00182 00000           CON(5)  =DUP
  165 00187 00000           CON(5)  =%360
  166 0018C 00000           CON(5)  =%>
  167 00191 00000           CON(5)  =IT
  168 00196 00000           CON(5)  =DOCOL
  169               * Ensure DRM2 is NOT > 360 deg.
  170               * File  ROAMB.s 45
  171 0019B 00000           CON(5)  =%360
  172 001A0 00000           CON(5)  =%-
  173               * -> %HDG1 %GS1 %S1 %DRM2
  174               * File  ROAMB.s 46
  175 001A5 00000           CON(5)  =SEMI
  176               * Calc. wind triangle 3 (relative wind triangle)
  177               * File  ROAMB.s 48
  178 001AA 00000           CON(5)  =DOLAM
  179 001AF 30              CON(2)  3
  180 001B1 451435          NIBASC  \TAS\
  181 001B7 00000           CON(5)  =SWAP
  182 001BC 00000           CON(5)  =DOLAM
  183 001C1 30              CON(2)  3
  184 001C3 257544          NIBASC  \RWD\
  185 001C9 00000           CON(5)  =DOLAM
  186 001CE 30              CON(2)  3
  187 001D0 257535          NIBASC  \RWS\
  188               * File  ROAMB.s 49
  189 001D6 00000           CON(5)  =DOROMP
  190 001DB 023             CON(3)  #320
  191 001DE 300             CON(3)  #3
  192 001E1 00000           CON(5)  =DROPROT
  193               * -> %HDG1 %GS1 %HGD2 %S2 %S1
  194               * Calc. time to turn
  195               * File  ROAMB.s 51
  196 001E6 00000           CON(5)  =OVER
  197 001EB 00000           CON(5)  =DOLAM
  198 001F0 10              CON(2)  1
  199 001F2 45              NIBASC  \T\
  200 001F4 00000           CON(5)  =%*
  201               * -> %HDG1 %GS1 %HDG2 %S2 %S1 %NUM
  202               * File  ROAMB.s 52
  203 001F9 00000           CON(5)  =UNROT
  204               * -> %HDG1 %GS1 %HDG2 %NUM %S2 %S1
  205               * File  ROAMB.s 53
  206 001FE 00000           CON(5)  =%+
  207 00203 00000           CON(5)  =%/
  208               * -> %HDG1 %GS1 %HDG2 %T1
  209               * Calc. time to intercept
  210               * File  ROAMB.s 55
  211 00208 00000           CON(5)  =DOLAM
  212 0020D 10              CON(2)  1
  213 0020F 45              NIBASC  \T\
  214 00211 00000           CON(5)  =OVER
  215 00216 00000           CON(5)  =%-
  216               * -> %HDG1 %GS1 %HDG2 %T1 %T2
  217               * Calc. wind triangle 4
  218               * File  ROAMB.s 57
  219 0021B 00000           CON(5)  =3PICK
  220 00220 00000           CON(5)  =DOLAM
  221 00225 30              CON(2)  3
  222 00227 451435          NIBASC  \TAS\
  223 0022D 00000           CON(5)  =DOLAM
  224 00232 20              CON(2)  2
  225 00234 7544            NIBASC  \WD\
  226 00238 00000           CON(5)  =DOLAM
  227 0023D 20              CON(2)  2
  228 0023F 7535            NIBASC  \WS\
  229               * File  ROAMB.s 58
  230 00243 00000           CON(5)  =DOROMP
  231 00248 023             CON(3)  #320
  232 0024B 100             CON(3)  #1
  233 0024E 00000           CON(5)  =DROPSWAP
  234               * -> %HDG1 %GS1 %HDG2 %T1 %T2 %GS2 %TC2
  235               * File  ROAMB.s 59
  236 00253 00000           CON(5)  =2SWAP
  237               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2
  238               * Calc. radius of action
  239               * File  ROAMB.s 61
  240 00258 00000           CON(5)  =OVER
  241               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %T1
  242               * File  ROAMB.s 62
  243 0025D 00000           CON(5)  =7PICK
  244 00262 00000           CON(5)  =%*
  245               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R
  246               * Calc. distance after turn
  247               * File  ROAMB.s 64
  248 00267 00000           CON(5)  =OVER
  249               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %T2
  250               * File  ROAMB.s 65
  251 0026C 00000           CON(5)  =6PICK
  252 00271 00000           CON(5)  =%*
  253               * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
  254               * File  ROAMB.s 66
  255 00276 00000           CON(5)  =ABND
  256               * RW LAMs
  257               * File  ROAMB.s 67
  258 0027B 00000           CON(5)  =ABND
  259               * INPUT argument LAMs
  260               * File  ROAMB.s 68
  261 00280 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)   Symbol Table                       ROAMB.a        Page    2

 %*                                Ext                   -   200   244   252
 %+                                Ext                   -   123   161   206
 %-                                Ext                   -   172   215
 %/                                Ext                   -   207
 %0                                Ext                   -   116
 %180                              Ext                   -   160
 %360                              Ext                   -   122   165   171
 %<                                Ext                   -   117
 %>                                Ext                   -   166
 2SWAP                             Ext                   -   236
 3PICK                             Ext                   -   219
 6PICK                             Ext                   -   251
 7PICK                             Ext                   -   243
 ABND                              Ext                   -   255   258
 BIND                              Ext                   -    67   138
 DOCOL                             Ext                   -    40   119   168
 DOLAM                             Ext                   -    43    46    49
                                          52    56    59    62    71    74    77
                                          80    91    94   100   103   129   132
                                         143   146   149   178   182   185   197
                                         211   220   223   226
 DOLIST                            Ext                   -    42   128
 DOROMP                            Ext                   -    84   153   189
                                         230
 DROP                              Ext                   -    87
 DROPROT                           Ext                   -   192
 DROPSWAP                          Ext                   -   156   233
 DUP                               Ext                   -   115   164
 IT                                Ext                   -   118   167
 OVER                              Ext                   -   142   196   214
                                         240   248
=ROAMB                             Rel       0 #00000000 -    38
=RomId                             Abs     804 #00000324 -    21
 SEMI                              Ext                   -    65   126   135
                                         175   261
 SWAP                              Ext                   -   181
 UNROT                             Ext                   -   203
 x+                                Ext                   -   109
 x>V2                              Ext                   -    97   106
 xV>                               Ext                   -   112
Saturn Assembler                                       Wed Jun 24 18:55:04 2009
V3.0.9 (04/15/2007)   Statistics                         ROAMB.a        Page    3

Input Parameters

  Source file name is ROAMB.a

  Listing file name is ROAMB.l

  Object file name is ROAMB.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
