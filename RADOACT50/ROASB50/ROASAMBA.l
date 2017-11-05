Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)                                      ROASAMBA.a     Page    1

    1               * File  ROASAMBA.s      1
    2               * RPL
    3               * File  ROASAMBA.s      2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\ROASAMBA.s, part of the ROASB50.hpp project, created by <> on 23/06/2009
    5               **********************************************************************
    6               * NAME:          RASBMNU
    7               * AUTHOR:        Dan Pitic
    8               * LIBRARY #:     323h = 803d
    9               * VERSION:       1.4
   10               * DATE:          22 June 2009
   11               * COMPATIBILITY: HP50
   12               *                HP48
   13               * DESCRIPTION:   Function to calculate the radius of action to same
   14               *                base.
   15               * USAGE:         ( %WD %WS %TC1 %T %TAS %DHOM
   16               *                                -> %HDG1 %S1 %HDG2 %S2 %T1 %R %DFMH )
   17               *
   18               * File  ROASAMBA.s      16
   19               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\ROASB50.h
   20
   21               =RomId  EQU     #323
   22               * ROMID set to 323
   23
   24
   25
   26
   27
   28
   29
   30               *|| Resuming file ROASAMBA.s at line 16
   31               * ( HP50
   32               *DEFINE THGS ROMPTR 320 1           ( HP48 )
   33               * File  ROASAMBA.s      19
   34 00000         =ROASAMBA
   35               * File  ROASAMBA.s      20
   36 00000 00000           CON(5)  =DOCOL
   37               * File  ROASAMBA.s      21
   38 00005 00000           CON(5)  =DOLIST
   39 0000A 00000           CON(5)  =DOLAM
   40 0000F 20              CON(2)  2
   41 00011 7544            NIBASC  \WD\
   42 00015 00000           CON(5)  =DOLAM
   43 0001A 20              CON(2)  2
   44 0001C 7535            NIBASC  \WS\
   45 00020 00000           CON(5)  =DOLAM
   46 00025 30              CON(2)  3
   47 00027 453413          NIBASC  \TC1\
   48 0002D 00000           CON(5)  =DOLAM
   49 00032 10              CON(2)  1
   50 00034 45              NIBASC  \T\
   51 00036 00000           CON(5)  =DOLAM
   52 0003B 30              CON(2)  3
   53 0003D 451435          NIBASC  \TAS\
   54 00043 00000           CON(5)  =DOLAM
   55 00048 40              CON(2)  4
   56 0004A 4484F4D         NIBASC  \DHOM\
            4
   57 00052 00000           CON(5)  =SEMI
   58               * File  ROASAMBA.s      22
   59 00057 00000           CON(5)  =BIND
   60               * INPUT argument LAMs
   61               * Calc. wind triangle 1 (OUTBOUND)
   62               * File  ROASAMBA.s      24
   63 0005C 00000           CON(5)  =DOLAM
   64 00061 30              CON(2)  3
   65 00063 451435          NIBASC  \TAS\
   66 00069 00000           CON(5)  =DOLAM
   67 0006E 30              CON(2)  3
   68 00070 453413          NIBASC  \TC1\
   69 00076 00000           CON(5)  =DOLAM
   70 0007B 20              CON(2)  2
   71 0007D 7544            NIBASC  \WD\
   72 00081 00000           CON(5)  =DOLAM
   73 00086 20              CON(2)  2
   74 00088 7535            NIBASC  \WS\
   75               * File  ROASAMBA.s      25
   76 0008C 00000           CON(5)  =DOROMP
   77 00091 023             CON(3)  #320
   78 00094 300             CON(3)  #3
   79 00097 00000           CON(5)  =DROP
   80               * -> %HDG1 %S1
   81               * Calc. reciprocal track (INBOUND)
   82               * File  ROASAMBA.s      27
   83 0009C 00000           CON(5)  =DOLAM
   84 000A1 30              CON(2)  3
   85 000A3 453413          NIBASC  \TC1\
   86 000A9 00000           CON(5)  =%180
   87 000AE 00000           CON(5)  =%+
   88               * -> %HDG1 %S1 %TC2
   89               * File  ROASAMBA.s      28
   90 000B3 00000           CON(5)  =DUP
   91 000B8 00000           CON(5)  =%360
   92 000BD 00000           CON(5)  =%>
   93 000C2 00000           CON(5)  =IT
   94 000C7 00000           CON(5)  =DOCOL
   95               * Ensure TC2 is NOT > 360 deg.
   96               * File  ROASAMBA.s      29
   97 000CC 00000           CON(5)  =%360
   98 000D1 00000           CON(5)  =%-
   99               * -> %HDG1 %S1 %TC2
  100               * File  ROASAMBA.s      30
  101 000D6 00000           CON(5)  =SEMI
  102               * Calc. wind triangle 2 (INBOUND)
  103               * File  ROASAMBA.s      32
  104 000DB 00000           CON(5)  =DOLAM
  105 000E0 30              CON(2)  3
  106 000E2 451435          NIBASC  \TAS\
  107 000E8 00000           CON(5)  =SWAP
  108 000ED 00000           CON(5)  =DOLAM
  109 000F2 20              CON(2)  2
  110 000F4 7544            NIBASC  \WD\
  111 000F8 00000           CON(5)  =DOLAM
  112 000FD 20              CON(2)  2
  113 000FF 7535            NIBASC  \WS\
  114               * File  ROASAMBA.s      33
  115 00103 00000           CON(5)  =DOROMP
  116 00108 023             CON(3)  #320
  117 0010B 300             CON(3)  #3
  118 0010E 00000           CON(5)  =DROP
  119               * -> %HDG1 %S1 %HDG2 %S2
  120               * Calc. time home from fix
  121               * File  ROASAMBA.s      35
  122 00113 00000           CON(5)  =DOLAM
  123 00118 40              CON(2)  4
  124 0011A 4484F4D         NIBASC  \DHOM\
            4
  125 00122 00000           CON(5)  =OVER
  126 00127 00000           CON(5)  =%/
  127               * -> %HDG1 %S1 %HDG2 %S2        %THOM
  128               * Calc. time to turn from fix
  129               * File  ROASAMBA.s      37
  130 0012C 00000           CON(5)  =DOLAM
  131 00131 10              CON(2)  1
  132 00133 45              NIBASC  \T\
  133 00135 00000           CON(5)  =SWAP
  134 0013A 00000           CON(5)  =%-
  135               * -> %HDG1 %S1 %HDG2 %S2 %
  136               * File  ROASAMBA.s      38
  137 0013F 00000           CON(5)  =OVER
  138 00144 00000           CON(5)  =%*
  139               * -> %HDG1 %S1 %HDG2 %S2 %NUM
  140               * File  ROASAMBA.s      39
  141 00149 00000           CON(5)  =4PICK
  142               * -> %HDG1 %S1 %HDG2 %S2 %NUM %S1
  143               * File  ROASAMBA.s      40
  144 0014E 00000           CON(5)  =3PICK
  145 00153 00000           CON(5)  =%+
  146 00158 00000           CON(5)  =%/
  147               * -> %HDG1 %S1 %HDG2 %S2 %T1
  148               * Calc. radius of action from fix
  149               * File  ROASAMBA.s      42
  150 0015D 00000           CON(5)  =DUP
  151               * -> %HDG1 %S1 %HDG2 %S2 %T1 %T1
  152               * File  ROASAMBA.s      43
  153 00162 00000           CON(5)  =5PICK
  154 00167 00000           CON(5)  =%*
  155               * -> %HDG1 %S1 %HDG2 %S2 %T1 %R
  156               * Calc. radius of action froom home
  157               * File  ROASAMBA.s      45
  158 0016C 00000           CON(5)  =DUP
  159               * -> %HDG1 %S1 %HDG2 %S2 %T1 %R %R
  160               * File  ROASAMBA.s      46
  161 00171 00000           CON(5)  =DOLAM
  162 00176 40              CON(2)  4
  163 00178 4484F4D         NIBASC  \DHOM\
            4
  164 00180 00000           CON(5)  =%+
  165               * -> %HDG1 %S1 %HDG2 %S2 %T1 %R %DFMH
  166               * File  ROASAMBA.s      47
  167 00185 00000           CON(5)  =ABND
  168               * INPUT argument LAMs
  169               * File  ROASAMBA.s      48
  170 0018A 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)   Symbol Table                       ROASAMBA.a     Page    2

 %*                                Ext                   -   138   154
 %+                                Ext                   -    87   145   164
 %-                                Ext                   -    98   134
 %/                                Ext                   -   126   146
 %180                              Ext                   -    86
 %360                              Ext                   -    91    97
 %>                                Ext                   -    92
 3PICK                             Ext                   -   144
 4PICK                             Ext                   -   141
 5PICK                             Ext                   -   153
 ABND                              Ext                   -   167
 BIND                              Ext                   -    59
 DOCOL                             Ext                   -    36    94
 DOLAM                             Ext                   -    39    42    45
                                          48    51    54    63    66    69    72
                                          83   104   108   111   122   130   161
 DOLIST                            Ext                   -    38
 DOROMP                            Ext                   -    76   115
 DROP                              Ext                   -    79   118
 DUP                               Ext                   -    90   150   158
 IT                                Ext                   -    93
 OVER                              Ext                   -   125   137
=ROASAMBA                          Rel       0 #00000000 -    34
=RomId                             Abs     803 #00000323 -    21
 SEMI                              Ext                   -    57   101   170
 SWAP                              Ext                   -   107   133
Saturn Assembler                                       Tue Jun 23 18:33:59 2009
V3.0.9 (04/15/2007)   Statistics                         ROASAMBA.a     Page    3

Input Parameters

  Source file name is ROASAMBA.a

  Listing file name is ROASAMBA.l

  Object file name is ROASAMBA.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
