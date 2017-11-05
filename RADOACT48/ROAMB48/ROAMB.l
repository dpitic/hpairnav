Saturn Assembler                                       Wed Jun 24 20:34:11 2009
V3.0.9 (04/15/2007)                                      ROAMB.a        Page    1

    1             * File  ROAMB.s 1
    2             * RPL
    3             * File  ROAMB.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\ROAMB.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009
    5             **********************************************************************
    6             * NAME:          ROAMB
    7             * LIBRARY #:     324h = 804d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.6
   10             * DATE:          24 June 2009
   11             * COMPATIBILITY: HP50  ( Different rompointer def. )
   12             *                HP48  ( Different rompointer def. )
   13             * DESCRIPTION:   Function to calculate the radius of action from a
   14             *                moving base.
   15             * USAGE:         ( %WD %WS %TRS %GSS %TAS %TC1 %T
   16             *                  -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
   17             *
   18             * File  ROAMB.s 16
   19             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROAMB48\ROAMB48.h
   20
   21             =RomId  EQU     #324
   22             * ROMID set to 324
   23
   24
   25
   26
   27
   28
   29
   30             *|| Resuming file ROAMB.s at line 16
   31             * ( HP48
   32             * File  ROAMB.s 20
   33             * ( HP48
   34             * File  ROAMB.s 21
   35 00000       =ROAMB
   36             * File  ROAMB.s 22
   37 00000 00000         CON(5)  =DOCOL
   38             * File  ROAMB.s 23
   39 00005 00000         CON(5)  =DOLIST
   40 0000A 00000         CON(5)  =DOLAM
   41 0000F 20            CON(2)  2
   42 00011 7544          NIBASC  \WD\
   43 00015 00000         CON(5)  =DOLAM
   44 0001A 20            CON(2)  2
   45 0001C 7535          NIBASC  \WS\
   46 00020 00000         CON(5)  =DOLAM
   47 00025 30            CON(2)  3
   48 00027 45253         NIBASC  \TRS\
            5
   49 0002D 00000         CON(5)  =DOLAM
   50 00032 30            CON(2)  3
   51 00034 74353         NIBASC  \GSS\
            5
   52             * File  ROAMB.s 24
   53 0003A 00000         CON(5)  =DOLAM
   54 0003F 30            CON(2)  3
   55 00041 45143         NIBASC  \TAS\
            5
   56 00047 00000         CON(5)  =DOLAM
   57 0004C 30            CON(2)  3
   58 0004E 45341         NIBASC  \TC1\
            3
   59 00054 00000         CON(5)  =DOLAM
   60 00059 10            CON(2)  1
   61 0005B 45            NIBASC  \T\
   62 0005D 00000         CON(5)  =SEMI
   63             * File  ROAMB.s 25
   64 00062 00000         CON(5)  =BIND
   65             * INPUT argument LAMs
   66             * Calc. wind triangle 1
   67             * File  ROAMB.s 27
   68 00067 00000         CON(5)  =DOLAM
   69 0006C 30            CON(2)  3
   70 0006E 45143         NIBASC  \TAS\
            5
   71 00074 00000         CON(5)  =DOLAM
   72 00079 30            CON(2)  3
   73 0007B 45341         NIBASC  \TC1\
            3
   74 00081 00000         CON(5)  =DOLAM
   75 00086 20            CON(2)  2
   76 00088 7544          NIBASC  \WD\
   77 0008C 00000         CON(5)  =DOLAM
   78 00091 20            CON(2)  2
   79 00093 7535          NIBASC  \WS\
   80             * File  ROAMB.s 28
   81 00097 00000         CON(5)  =DOROMP
   82 0009C 023           CON(3)  #320
   83 0009F 100           CON(3)  #1
   84 000A2 00000         CON(5)  =DROP
   85             * -> %HDG1 %GS1
   86             * Calc. relative wind
   87             * File  ROAMB.s 30
   88 000A7 00000         CON(5)  =DOLAM
   89 000AC 20            CON(2)  2
   90 000AE 7535          NIBASC  \WS\
   91 000B2 00000         CON(5)  =DOLAM
   92 000B7 20            CON(2)  2
   93 000B9 7544          NIBASC  \WD\
   94 000BD 00000         CON(5)  =x>V2
   95             * -> %HDG1 %GS1 [-WV]
   96             * File  ROAMB.s 31
   97 000C2 00000         CON(5)  =DOLAM
   98 000C7 30            CON(2)  3
   99 000C9 74353         NIBASC  \GSS\
            5
  100 000CF 00000         CON(5)  =DOLAM
  101 000D4 30            CON(2)  3
  102 000D6 45253         NIBASC  \TRS\
            5
  103 000DC 00000         CON(5)  =x>V2
  104             * -> %HDG1 %GS1 [-WV] [TGV]
  105             * File  ROAMB.s 32
  106 000E1 00000         CON(5)  =x+
  107             * -> %HDG1 %GS1 [-RW]
  108             * File  ROAMB.s 33
  109 000E6 00000         CON(5)  =xV>
  110             * -> %HDG1 %GS1 %RWS %RWD
  111             * File  ROAMB.s 34
  112 000EB 00000         CON(5)  =DUP
  113 000F0 00000         CON(5)  =%0
  114 000F5 00000         CON(5)  =%<
  115 000FA 00000         CON(5)  =IT
  116 000FF 00000         CON(5)  =DOCOL
  117             * Ensure RWD is NOT < 0 deg.
  118             * File  ROAMB.s 35
  119 00104 00000         CON(5)  =%360
  120 00109 00000         CON(5)  =%+
  121             * -> %HDG1 %GS1 %RWS %RWD
  122             * File  ROAMB.s 36
  123 0010E 00000         CON(5)  =SEMI
  124             * File  ROAMB.s 37
  125 00113 00000         CON(5)  =DOLIST
  126 00118 00000         CON(5)  =DOLAM
  127 0011D 30            CON(2)  3
  128 0011F 25753         NIBASC  \RWS\
            5
  129 00125 00000         CON(5)  =DOLAM
  130 0012A 30            CON(2)  3
  131 0012C 25754         NIBASC  \RWD\
            4
  132 00132 00000         CON(5)  =SEMI
  133             * RW LAMs
  134             * File  ROAMB.s 38
  135 00137 00000         CON(5)  =BIND
  136             * -> %HDG1 %GS1
  137             * Calc. wind triangle 2 (relative wind triangle)
  138             * File  ROAMB.s 40
  139 0013C 00000         CON(5)  =OVER
  140 00141 00000         CON(5)  =DOLAM
  141 00146 30            CON(2)  3
  142 00148 45143         NIBASC  \TAS\
            5
  143 0014E 00000         CON(5)  =DOLAM
  144 00153 30            CON(2)  3
  145 00155 25754         NIBASC  \RWD\
            4
  146 0015B 00000         CON(5)  =DOLAM
  147 00160 30            CON(2)  3
  148 00162 25753         NIBASC  \RWS\
            5
  149             * File  ROAMB.s 41
  150 00168 00000         CON(5)  =DOROMP
  151 0016D 023           CON(3)  #320
  152 00170 300           CON(3)  #3
  153 00173 00000         CON(5)  =DROPSWAP
  154             * -> %HDG1 %GS1 %S1 %DRM1
  155             * Calc. direction of closure
  156             * File  ROAMB.s 43
  157 00178 00000         CON(5)  =%180
  158 0017D 00000         CON(5)  =%+
  159             * -> %HDG1 %GS1 %S1 %DRM2
  160             * File  ROAMB.s 44
  161 00182 00000         CON(5)  =DUP
  162 00187 00000         CON(5)  =%360
  163 0018C 00000         CON(5)  =%>
  164 00191 00000         CON(5)  =IT
  165 00196 00000         CON(5)  =DOCOL
  166             * Ensure DRM2 is NOT > 360 deg.
  167             * File  ROAMB.s 45
  168 0019B 00000         CON(5)  =%360
  169 001A0 00000         CON(5)  =%-
  170             * -> %HDG1 %GS1 %S1 %DRM2
  171             * File  ROAMB.s 46
  172 001A5 00000         CON(5)  =SEMI
  173             * Calc. wind triangle 3 (relative wind triangle)
  174             * File  ROAMB.s 48
  175 001AA 00000         CON(5)  =DOLAM
  176 001AF 30            CON(2)  3
  177 001B1 45143         NIBASC  \TAS\
            5
  178 001B7 00000         CON(5)  =SWAP
  179 001BC 00000         CON(5)  =DOLAM
  180 001C1 30            CON(2)  3
  181 001C3 25754         NIBASC  \RWD\
            4
  182 001C9 00000         CON(5)  =DOLAM
  183 001CE 30            CON(2)  3
  184 001D0 25753         NIBASC  \RWS\
            5
  185             * File  ROAMB.s 49
  186 001D6 00000         CON(5)  =DOROMP
  187 001DB 023           CON(3)  #320
  188 001DE 100           CON(3)  #1
  189 001E1 00000         CON(5)  =DROPROT
  190             * -> %HDG1 %GS1 %HGD2 %S2 %S1
  191             * Calc. time to turn
  192             * File  ROAMB.s 51
  193 001E6 00000         CON(5)  =OVER
  194 001EB 00000         CON(5)  =DOLAM
  195 001F0 10            CON(2)  1
  196 001F2 45            NIBASC  \T\
  197 001F4 00000         CON(5)  =%*
  198             * -> %HDG1 %GS1 %HDG2 %S2 %S1 %NUM
  199             * File  ROAMB.s 52
  200 001F9 00000         CON(5)  =UNROT
  201             * -> %HDG1 %GS1 %HDG2 %NUM %S2 %S1
  202             * File  ROAMB.s 53
  203 001FE 00000         CON(5)  =%+
  204 00203 00000         CON(5)  =%/
  205             * -> %HDG1 %GS1 %HDG2 %T1
  206             * Calc. time to intercept
  207             * File  ROAMB.s 55
  208 00208 00000         CON(5)  =DOLAM
  209 0020D 10            CON(2)  1
  210 0020F 45            NIBASC  \T\
  211 00211 00000         CON(5)  =OVER
  212 00216 00000         CON(5)  =%-
  213             * -> %HDG1 %GS1 %HDG2 %T1 %T2
  214             * Calc. wind triangle 4
  215             * File  ROAMB.s 57
  216 0021B 00000         CON(5)  =3PICK
  217 00220 00000         CON(5)  =DOLAM
  218 00225 30            CON(2)  3
  219 00227 45143         NIBASC  \TAS\
            5
  220 0022D 00000         CON(5)  =DOLAM
  221 00232 20            CON(2)  2
  222 00234 7544          NIBASC  \WD\
  223 00238 00000         CON(5)  =DOLAM
  224 0023D 20            CON(2)  2
  225 0023F 7535          NIBASC  \WS\
  226             * File  ROAMB.s 58
  227 00243 00000         CON(5)  =DOROMP
  228 00248 023           CON(3)  #320
  229 0024B 300           CON(3)  #3
  230 0024E 00000         CON(5)  =DROPSWAP
  231             * -> %HDG1 %GS1 %HDG2 %T1 %T2 %GS2 %TC2
  232             * File  ROAMB.s 59
  233 00253 00000         CON(5)  =2SWAP
  234             * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2
  235             * Calc. radius of action
  236             * File  ROAMB.s 61
  237 00258 00000         CON(5)  =OVER
  238             * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %T1
  239             * File  ROAMB.s 62
  240 0025D 00000         CON(5)  =7PICK
  241 00262 00000         CON(5)  =%*
  242             * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R
  243             * Calc. distance after turn
  244             * File  ROAMB.s 64
  245 00267 00000         CON(5)  =OVER
  246             * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %T2
  247             * File  ROAMB.s 65
  248 0026C 00000         CON(5)  =6PICK
  249 00271 00000         CON(5)  =%*
  250             * -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2
  251             * File  ROAMB.s 66
  252 00276 00000         CON(5)  =ABND
  253             * RW LAMs
  254             * File  ROAMB.s 67
  255 0027B 00000         CON(5)  =ABND
  256             * INPUT argument LAMs
  257             * File  ROAMB.s 68
  258 00280 00000         CON(5)  =SEMI
Saturn Assembler                                       Wed Jun 24 20:34:11 2009
V3.0.9 (04/15/2007)   Symbol Table                       ROAMB.a        Page    2

 %*                                Ext                   -   197   241   249
 %+                                Ext                   -   120   158   203
 %-                                Ext                   -   169   212
 %/                                Ext                   -   204
 %0                                Ext                   -   113
 %180                              Ext                   -   157
 %360                              Ext                   -   119   162   168
 %<                                Ext                   -   114
 %>                                Ext                   -   163
 2SWAP                             Ext                   -   233
 3PICK                             Ext                   -   216
 6PICK                             Ext                   -   248
 7PICK                             Ext                   -   240
 ABND                              Ext                   -   252   255
 BIND                              Ext                   -    64   135
 DOCOL                             Ext                   -    37   116   165
 DOLAM                             Ext                   -    40    43    46
                                          49    53    56    59    68    71    74
                                          77    88    91    97   100   126   129
                                         140   143   146   175   179   182   194
                                         208   217   220   223
 DOLIST                            Ext                   -    39   125
 DOROMP                            Ext                   -    81   150   186
                                         227
 DROP                              Ext                   -    84
 DROPROT                           Ext                   -   189
 DROPSWAP                          Ext                   -   153   230
 DUP                               Ext                   -   112   161
 IT                                Ext                   -   115   164
 OVER                              Ext                   -   139   193   211
                                         237   245
=ROAMB                             Rel       0 #00000000 -    35
=RomId                             Abs     804 #00000324 -    21
 SEMI                              Ext                   -    62   123   132
                                         172   258
 SWAP                              Ext                   -   178
 UNROT                             Ext                   -   200
 x+                                Ext                   -   106
 x>V2                              Ext                   -    94   103
 xV>                               Ext                   -   109
Saturn Assembler                                       Wed Jun 24 20:34:11 2009
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
