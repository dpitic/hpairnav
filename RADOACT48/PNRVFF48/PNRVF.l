Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)                                      PNRVF.a        Page    1

    1             * File  PNRVF.s 1
    2             * RPL
    3             * File  PNRVF.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVF.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009
    5             **********************************************************************
    6             * NAME:          PNRVF
    7             * LIBRARY #:     322h = 802d
    8             * AUTHOR:        Dan Pitic
    9             * DATE:          22 June 2009
   10             * VERSION:       1.3
   11             * COMPATIBILITY: HP50 ( Different rompointer definitions )
   12             *                HP48 ( Different rompointer definitions )
   13             * DESCRIPTION:   Function to calculate the point of no return (PNR)
   14             *                from a fixed base (along track), with variable fuel
   15             *                flow
   16             * USAGE:         { %WD1 %WS1 %TC1 %FF1 %TAS1 %DHOM %WD2 %WS2
   17             *                  %FF2 %TAS2 %FLTFL
   18             *                  -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %T1 )
   19             *
   20             * File  PNRVF.s 18
   21             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\PNRVFF48\PNRVF48.h
   22
   23             =RomId  EQU     #322
   24             * ROMID set to 322
   25
   26
   27
   28
   29
   30
   31
   32
   33             *|| Resuming file PNRVF.s at line 18
   34             * ( HP48
   35             * File  PNRVF.s 21
   36 00000       =PNRVF
   37             * File  PNRVF.s 22
   38 00000 00000         CON(5)  =DOCOL
   39             * File  PNRVF.s 23
   40 00005 00000         CON(5)  =DOLIST
   41 0000A 00000         CON(5)  =DOLAM
   42 0000F 30            CON(2)  3
   43 00011 75441         NIBASC  \WD1\
            3
   44 00017 00000         CON(5)  =DOLAM
   45 0001C 30            CON(2)  3
   46 0001E 75351         NIBASC  \WS1\
            3
   47 00024 00000         CON(5)  =DOLAM
   48 00029 30            CON(2)  3
   49 0002B 45341         NIBASC  \TC1\
            3
   50 00031 00000         CON(5)  =DOLAM
   51 00036 30            CON(2)  3
   52 00038 64641         NIBASC  \FF1\
            3
   53             * File  PNRVF.s 24
   54 0003E 00000         CON(5)  =DOLAM
   55 00043 40            CON(2)  4
   56 00045 45143         NIBASC  \TAS1\
            513
   57 0004D 00000         CON(5)  =DOLAM
   58 00052 40            CON(2)  4
   59 00054 4484F         NIBASC  \DHOM\
            4D4
   60 0005C 00000         CON(5)  =DOLAM
   61 00061 30            CON(2)  3
   62 00063 75442         NIBASC  \WD2\
            3
   63 00069 00000         CON(5)  =DOLAM
   64 0006E 30            CON(2)  3
   65 00070 75352         NIBASC  \WS2\
            3
   66             * File  PNRVF.s 25
   67 00076 00000         CON(5)  =DOLAM
   68 0007B 30            CON(2)  3
   69 0007D 64642         NIBASC  \FF2\
            3
   70 00083 00000         CON(5)  =DOLAM
   71 00088 40            CON(2)  4
   72 0008A 45143         NIBASC  \TAS2\
            523
   73 00092 00000         CON(5)  =DOLAM
   74 00097 50            CON(2)  5
   75 00099 64C44         NIBASC  \FLTFL\
            564C4
   76             * File  PNRVF.s 26
   77 000A3 00000         CON(5)  =SEMI
   78             * File  PNRVF.s 27
   79 000A8 00000         CON(5)  =BIND
   80             * INPUT argument LAMs
   81             * Calc. wind triangle 1 (OUTBOUND)
   82             * File  PNRVF.s 29
   83 000AD 00000         CON(5)  =DOLAM
   84 000B2 40            CON(2)  4
   85 000B4 45143         NIBASC  \TAS1\
            513
   86 000BC 00000         CON(5)  =DOLAM
   87 000C1 30            CON(2)  3
   88 000C3 45341         NIBASC  \TC1\
            3
   89 000C9 00000         CON(5)  =DOLAM
   90 000CE 30            CON(2)  3
   91 000D0 75441         NIBASC  \WD1\
            3
   92 000D6 00000         CON(5)  =DOLAM
   93 000DB 30            CON(2)  3
   94 000DD 75351         NIBASC  \WS1\
            3
   95             * Arguments
   96             * File  PNRVF.s 30
   97 000E3 00000         CON(5)  =DOROMP
   98 000E8 023           CON(3)  #320
   99 000EB 100           CON(3)  #1
  100             * -> %HDG1 %S1 %CRAB
  101             * File  PNRVF.s 31
  102 000EE 00000         CON(5)  =DROP
  103             * -> %HDG1 %S1
  104             * Calc. SGR1
  105             * File  PNRVF.s 33
  106 000F3 00000         CON(5)  =DUP
  107 000F8 00000         CON(5)  =DOLAM
  108 000FD 30            CON(2)  3
  109 000FF 64641         NIBASC  \FF1\
            3
  110 00105 00000         CON(5)  =SWAP
  111 0010A 00000         CON(5)  =%/
  112             * -> %HDG1 %S1 %SGR1
  113             * Calc. track back (INBOUND)
  114             * File  PNRVF.s 35
  115 0010F 00000         CON(5)  =DOLAM
  116 00114 30            CON(2)  3
  117 00116 45341         NIBASC  \TC1\
            3
  118 0011C 00000         CON(5)  =%180
  119 00121 00000         CON(5)  =%+
  120             * -> %HDG1 %S1 %SGR1 %TC2
  121             * File  PNRVF.s 36
  122 00126 00000         CON(5)  =DUP
  123 0012B 00000         CON(5)  =%360
  124 00130 00000         CON(5)  =%>
  125 00135 00000         CON(5)  =IT
  126 0013A 00000         CON(5)  =DOCOL
  127             * Make sure TC2 is NOT > 360 deg.
  128             * File  PNRVF.s 37
  129 0013F 00000         CON(5)  =%360
  130 00144 00000         CON(5)  =%-
  131             * -> %HDG1 %S1 %SGR1 %TC2
  132             * File  PNRVF.s 38
  133 00149 00000         CON(5)  =SEMI
  134             * Calc. wind triangle 2 (INBOUND)
  135             * File  PNRVF.s 40
  136 0014E 00000         CON(5)  =DOLAM
  137 00153 40            CON(2)  4
  138 00155 45143         NIBASC  \TAS2\
            523
  139 0015D 00000         CON(5)  =SWAP
  140             * -> %HDG1 %S1 %SGR1 %TAS2 %TC2
  141             * File  PNRVF.s 41
  142 00162 00000         CON(5)  =DOLAM
  143 00167 30            CON(2)  3
  144 00169 75442         NIBASC  \WD2\
            3
  145 0016F 00000         CON(5)  =DOLAM
  146 00174 30            CON(2)  3
  147 00176 75352         NIBASC  \WS2\
            3
  148             * -> %HDG1 %S1 %SGR1 %TAS2 %TC2 %WD2 %WS2
  149             * File  PNRVF.s 42
  150 0017C 00000         CON(5)  =DOROMP
  151 00181 023           CON(3)  #320
  152 00184 100           CON(3)  #1
  153 00187 00000         CON(5)  =DROP
  154             * -> %HDG1 %S1 %SGR1 %HDG2 %S2
  155             * Calc. SGR2
  156             * File  PNRVF.s 44
  157 0018C 00000         CON(5)  =DUP
  158 00191 00000         CON(5)  =DOLAM
  159 00196 30            CON(2)  3
  160 00198 64642         NIBASC  \FF2\
            3
  161 0019E 00000         CON(5)  =SWAP
  162 001A3 00000         CON(5)  =%/
  163             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2
  164             * Calc. PNR distance from FIX
  165             * File  PNRVF.s 46
  166 001A8 00000         CON(5)  =DOLAM
  167 001AD 50            CON(2)  5
  168 001AF 64C44         NIBASC  \FLTFL\
            564C4
  169             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %FLTFL
  170             * File  PNRVF.s 47
  171 001B9 00000         CON(5)  =DOLAM
  172 001BE 40            CON(2)  4
  173 001C0 4484F         NIBASC  \DHOM\
            4D4
  174             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %FLTFL %DHOM
  175             * File  PNRVF.s 48
  176 001C8 00000         CON(5)  =3PICK
  177             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %FLTFL %DHOM %SGR2
  178             * File  PNRVF.s 49
  179 001CD 00000         CON(5)  =%*
  180 001D2 00000         CON(5)  =%-
  181             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %NUM
  182             * File  PNRVF.s 50
  183 001D7 00000         CON(5)  =5PICK
  184             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %NUM %SGR1
  185             * File  PNRVF.s 51
  186 001DC 00000         CON(5)  =3PICK
  187             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %NUM %SGR1 %SGR2
  188             * File  PNRVF.s 52
  189 001E1 00000         CON(5)  =%+
  190             * -> %HDG1 %S1  %SGR1 %HDG2 %S2 %SGR2 %NUM %DEN
  191             * File  PNRVF.s 53
  192 001E6 00000         CON(5)  =%/
  193             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R
  194             * Calc. PNR distance from HOME base
  195             * File  PNRVF.s 55
  196 001EB 00000         CON(5)  =DUP
  197             * File  PNRVF.s 56
  198 001F0 00000         CON(5)  =DOLAM
  199 001F5 40            CON(2)  4
  200 001F7 4484F         NIBASC  \DHOM\
            4D4
  201 001FF 00000         CON(5)  =%+
  202             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH
  203             * Calc. time to turn
  204             * File  PNRVF.s 58
  205 00204 00000         CON(5)  =OVER
  206             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %R
  207             * File  PNRVF.s 59
  208 00209 00000         CON(5)  =8PICK
  209             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %R %S1
  210             * File  PNRVF.s 60
  211 0020E 00000         CON(5)  =%/
  212             * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %T1
  213             * File  PNRVF.s 61
  214 00213 00000         CON(5)  =ABND
  215             * INPUT argument LAMs
  216             * File  PNRVF.s 62
  217 00218 00000         CON(5)  =SEMI
Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)   Symbol Table                       PNRVF.a        Page    2

 %*                                Ext                   -   179
 %+                                Ext                   -   119   189   201
 %-                                Ext                   -   130   180
 %/                                Ext                   -   111   162   192
                                         211
 %180                              Ext                   -   118
 %360                              Ext                   -   123   129
 %>                                Ext                   -   124
 3PICK                             Ext                   -   176   186
 5PICK                             Ext                   -   183
 8PICK                             Ext                   -   208
 ABND                              Ext                   -   214
 BIND                              Ext                   -    79
 DOCOL                             Ext                   -    38   126
 DOLAM                             Ext                   -    41    44    47
                                          50    54    57    60    63    67    70
                                          73    83    86    89    92   107   115
                                         136   142   145   158   166   171   198
 DOLIST                            Ext                   -    40
 DOROMP                            Ext                   -    97   150
 DROP                              Ext                   -   102   153
 DUP                               Ext                   -   106   122   157
                                         196
 IT                                Ext                   -   125
 OVER                              Ext                   -   205
=PNRVF                             Rel       0 #00000000 -    36
=RomId                             Abs     802 #00000322 -    23
 SEMI                              Ext                   -    77   133   217
 SWAP                              Ext                   -   110   139   161
Saturn Assembler                                       Mon Jun 22 19:57:31 2009
V3.0.9 (04/15/2007)   Statistics                         PNRVF.a        Page    3

Input Parameters

  Source file name is PNRVF.a

  Listing file name is PNRVF.l

  Object file name is PNRVF.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
