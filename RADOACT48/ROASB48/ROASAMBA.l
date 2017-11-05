Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)                                      ROASAMBA.a     Page    1

    1             * File  ROASAMBA.s      1
    2             * RPL
    3             * File  ROASAMBA.s      2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\ROASAMBA.s, part of the ROASB50.hpp project, created by <> on 23/06/2009
    5             **********************************************************************
    6             * NAME:          RASBMNU
    7             * AUTHOR:        Dan Pitic
    8             * LIBRARY #:     323h = 803d
    9             * VERSION:       1.4
   10             * DATE:          22 June 2009
   11             * COMPATIBILITY: HP50 ( THGS rompointer definition different )
   12             *                HP48 ( THGS rompointer definition different )
   13             * DESCRIPTION:   Function to calculate the radius of action to same
   14             *                base.
   15             * USAGE:         ( %WD %WS %TC1 %T %TAS %DHOM
   16             *                                -> %HDG1 %S1 %HDG2 %S2 %T1 %R %DFMH )
   17             *
   18             * File  ROASAMBA.s      16
   19             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT48\ROASB48\ROASB48.h
   20
   21             =RomId  EQU     #323
   22             * ROMID set to 323
   23
   24
   25
   26
   27
   28
   29             *|| Resuming file ROASAMBA.s at line 16
   30             * ( HP48
   31             * File  ROASAMBA.s      19
   32 00000       =ROASAMBA
   33             * File  ROASAMBA.s      20
   34 00000 00000         CON(5)  =DOCOL
   35             * File  ROASAMBA.s      21
   36 00005 00000         CON(5)  =DOLIST
   37 0000A 00000         CON(5)  =DOLAM
   38 0000F 20            CON(2)  2
   39 00011 7544          NIBASC  \WD\
   40 00015 00000         CON(5)  =DOLAM
   41 0001A 20            CON(2)  2
   42 0001C 7535          NIBASC  \WS\
   43 00020 00000         CON(5)  =DOLAM
   44 00025 30            CON(2)  3
   45 00027 45341         NIBASC  \TC1\
            3
   46 0002D 00000         CON(5)  =DOLAM
   47 00032 10            CON(2)  1
   48 00034 45            NIBASC  \T\
   49 00036 00000         CON(5)  =DOLAM
   50 0003B 30            CON(2)  3
   51 0003D 45143         NIBASC  \TAS\
            5
   52 00043 00000         CON(5)  =DOLAM
   53 00048 40            CON(2)  4
   54 0004A 4484F         NIBASC  \DHOM\
            4D4
   55 00052 00000         CON(5)  =SEMI
   56             * File  ROASAMBA.s      22
   57 00057 00000         CON(5)  =BIND
   58             * INPUT argument LAMs
   59             * Calc. wind triangle 1 (OUTBOUND)
   60             * File  ROASAMBA.s      24
   61 0005C 00000         CON(5)  =DOLAM
   62 00061 30            CON(2)  3
   63 00063 45143         NIBASC  \TAS\
            5
   64 00069 00000         CON(5)  =DOLAM
   65 0006E 30            CON(2)  3
   66 00070 45341         NIBASC  \TC1\
            3
   67 00076 00000         CON(5)  =DOLAM
   68 0007B 20            CON(2)  2
   69 0007D 7544          NIBASC  \WD\
   70 00081 00000         CON(5)  =DOLAM
   71 00086 20            CON(2)  2
   72 00088 7535          NIBASC  \WS\
   73             * File  ROASAMBA.s      25
   74 0008C 00000         CON(5)  =DOROMP
   75 00091 023           CON(3)  #320
   76 00094 100           CON(3)  #1
   77 00097 00000         CON(5)  =DROP
   78             * -> %HDG1 %S1
   79             * Calc. reciprocal track (INBOUND)
   80             * File  ROASAMBA.s      27
   81 0009C 00000         CON(5)  =DOLAM
   82 000A1 30            CON(2)  3
   83 000A3 45341         NIBASC  \TC1\
            3
   84 000A9 00000         CON(5)  =%180
   85 000AE 00000         CON(5)  =%+
   86             * -> %HDG1 %S1 %TC2
   87             * File  ROASAMBA.s      28
   88 000B3 00000         CON(5)  =DUP
   89 000B8 00000         CON(5)  =%360
   90 000BD 00000         CON(5)  =%>
   91 000C2 00000         CON(5)  =IT
   92 000C7 00000         CON(5)  =DOCOL
   93             * Ensure TC2 is NOT > 360 deg.
   94             * File  ROASAMBA.s      29
   95 000CC 00000         CON(5)  =%360
   96 000D1 00000         CON(5)  =%-
   97             * -> %HDG1 %S1 %TC2
   98             * File  ROASAMBA.s      30
   99 000D6 00000         CON(5)  =SEMI
  100             * Calc. wind triangle 2 (INBOUND)
  101             * File  ROASAMBA.s      32
  102 000DB 00000         CON(5)  =DOLAM
  103 000E0 30            CON(2)  3
  104 000E2 45143         NIBASC  \TAS\
            5
  105 000E8 00000         CON(5)  =SWAP
  106 000ED 00000         CON(5)  =DOLAM
  107 000F2 20            CON(2)  2
  108 000F4 7544          NIBASC  \WD\
  109 000F8 00000         CON(5)  =DOLAM
  110 000FD 20            CON(2)  2
  111 000FF 7535          NIBASC  \WS\
  112             * File  ROASAMBA.s      33
  113 00103 00000         CON(5)  =DOROMP
  114 00108 023           CON(3)  #320
  115 0010B 100           CON(3)  #1
  116 0010E 00000         CON(5)  =DROP
  117             * -> %HDG1 %S1 %HDG2 %S2
  118             * Calc. time home from fix
  119             * File  ROASAMBA.s      35
  120 00113 00000         CON(5)  =DOLAM
  121 00118 40            CON(2)  4
  122 0011A 4484F         NIBASC  \DHOM\
            4D4
  123 00122 00000         CON(5)  =OVER
  124 00127 00000         CON(5)  =%/
  125             * -> %HDG1 %S1 %HDG2 %S2        %THOM
  126             * Calc. time to turn from fix
  127             * File  ROASAMBA.s      37
  128 0012C 00000         CON(5)  =DOLAM
  129 00131 10            CON(2)  1
  130 00133 45            NIBASC  \T\
  131 00135 00000         CON(5)  =SWAP
  132 0013A 00000         CON(5)  =%-
  133             * -> %HDG1 %S1 %HDG2 %S2 %
  134             * File  ROASAMBA.s      38
  135 0013F 00000         CON(5)  =OVER
  136 00144 00000         CON(5)  =%*
  137             * -> %HDG1 %S1 %HDG2 %S2 %NUM
  138             * File  ROASAMBA.s      39
  139 00149 00000         CON(5)  =4PICK
  140             * -> %HDG1 %S1 %HDG2 %S2 %NUM %S1
  141             * File  ROASAMBA.s      40
  142 0014E 00000         CON(5)  =3PICK
  143 00153 00000         CON(5)  =%+
  144 00158 00000         CON(5)  =%/
  145             * -> %HDG1 %S1 %HDG2 %S2 %T1
  146             * Calc. radius of action from fix
  147             * File  ROASAMBA.s      42
  148 0015D 00000         CON(5)  =DUP
  149             * -> %HDG1 %S1 %HDG2 %S2 %T1 %T1
  150             * File  ROASAMBA.s      43
  151 00162 00000         CON(5)  =5PICK
  152 00167 00000         CON(5)  =%*
  153             * -> %HDG1 %S1 %HDG2 %S2 %T1 %R
  154             * Calc. radius of action froom home
  155             * File  ROASAMBA.s      45
  156 0016C 00000         CON(5)  =DUP
  157             * -> %HDG1 %S1 %HDG2 %S2 %T1 %R %R
  158             * File  ROASAMBA.s      46
  159 00171 00000         CON(5)  =DOLAM
  160 00176 40            CON(2)  4
  161 00178 4484F         NIBASC  \DHOM\
            4D4
  162 00180 00000         CON(5)  =%+
  163             * -> %HDG1 %S1 %HDG2 %S2 %T1 %R %DFMH
  164             * File  ROASAMBA.s      47
  165 00185 00000         CON(5)  =ABND
  166             * INPUT argument LAMs
  167             * File  ROASAMBA.s      48
  168 0018A 00000         CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 23 18:49:36 2009
V3.0.9 (04/15/2007)   Symbol Table                       ROASAMBA.a     Page    2

 %*                                Ext                   -   136   152
 %+                                Ext                   -    85   143   162
 %-                                Ext                   -    96   132
 %/                                Ext                   -   124   144
 %180                              Ext                   -    84
 %360                              Ext                   -    89    95
 %>                                Ext                   -    90
 3PICK                             Ext                   -   142
 4PICK                             Ext                   -   139
 5PICK                             Ext                   -   151
 ABND                              Ext                   -   165
 BIND                              Ext                   -    57
 DOCOL                             Ext                   -    34    92
 DOLAM                             Ext                   -    37    40    43
                                          46    49    52    61    64    67    70
                                          81   102   106   109   120   128   159
 DOLIST                            Ext                   -    36
 DOROMP                            Ext                   -    74   113
 DROP                              Ext                   -    77   116
 DUP                               Ext                   -    88   148   156
 IT                                Ext                   -    91
 OVER                              Ext                   -   123   135
=ROASAMBA                          Rel       0 #00000000 -    32
=RomId                             Abs     803 #00000323 -    21
 SEMI                              Ext                   -    55    99   168
 SWAP                              Ext                   -   105   131
Saturn Assembler                                       Tue Jun 23 18:49:36 2009
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
