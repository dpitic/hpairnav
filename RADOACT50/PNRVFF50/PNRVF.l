Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)                                      PNRVF.a        Page    1

    1               * File  PNRVF.s 1
    2               * RPL
    3               * File  PNRVF.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVF.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009
    5               **********************************************************************
    6               * NAME:          PNRVF
    7               * LIBRARY #:     322h = 802d
    8               * AUTHOR:        Dan Pitic
    9               * DATE:          22 June 2009
   10               * VERSION:       1.3
   11               * COMPATIBILITY: HP50 ( Different rompointer definitions )
   12               *                HP48 ( Different rompointer definitions )
   13               * DESCRIPTION:   Function to calculate the point of no return (PNR)
   14               *                from a fixed base (along track), with variable fuel
   15               *                flow
   16               * USAGE:         { %WD1 %WS1 %TC1 %FF1 %TAS1 %DHOM %WD2 %WS2
   17               *                  %FF2 %TAS2 %FLTFL
   18               *                  -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %T1 )
   19               *
   20               * File  PNRVF.s 18
   21               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVF50.h
   22
   23               =RomId  EQU     #322
   24               * ROMID set to 322
   25
   26
   27
   28
   29
   30
   31
   32
   33
   34               *|| Resuming file PNRVF.s at line 18
   35               * ( HP50
   36               *DEFINE THGS ROMPTR 320 1                ( HP48 )
   37               * File  PNRVF.s 21
   38 00000         =PNRVF
   39               * File  PNRVF.s 22
   40 00000 00000           CON(5)  =DOCOL
   41               * File  PNRVF.s 23
   42 00005 00000           CON(5)  =DOLIST
   43 0000A 00000           CON(5)  =DOLAM
   44 0000F 30              CON(2)  3
   45 00011 754413          NIBASC  \WD1\
   46 00017 00000           CON(5)  =DOLAM
   47 0001C 30              CON(2)  3
   48 0001E 753513          NIBASC  \WS1\
   49 00024 00000           CON(5)  =DOLAM
   50 00029 30              CON(2)  3
   51 0002B 453413          NIBASC  \TC1\
   52 00031 00000           CON(5)  =DOLAM
   53 00036 30              CON(2)  3
   54 00038 646413          NIBASC  \FF1\
   55               * File  PNRVF.s 24
   56 0003E 00000           CON(5)  =DOLAM
   57 00043 40              CON(2)  4
   58 00045 4514351         NIBASC  \TAS1\
            3
   59 0004D 00000           CON(5)  =DOLAM
   60 00052 40              CON(2)  4
   61 00054 4484F4D         NIBASC  \DHOM\
            4
   62 0005C 00000           CON(5)  =DOLAM
   63 00061 30              CON(2)  3
   64 00063 754423          NIBASC  \WD2\
   65 00069 00000           CON(5)  =DOLAM
   66 0006E 30              CON(2)  3
   67 00070 753523          NIBASC  \WS2\
   68               * File  PNRVF.s 25
   69 00076 00000           CON(5)  =DOLAM
   70 0007B 30              CON(2)  3
   71 0007D 646423          NIBASC  \FF2\
   72 00083 00000           CON(5)  =DOLAM
   73 00088 40              CON(2)  4
   74 0008A 4514352         NIBASC  \TAS2\
            3
   75 00092 00000           CON(5)  =DOLAM
   76 00097 50              CON(2)  5
   77 00099 64C4456         NIBASC  \FLTFL\
            4C4
   78               * File  PNRVF.s 26
   79 000A3 00000           CON(5)  =SEMI
   80               * File  PNRVF.s 27
   81 000A8 00000           CON(5)  =BIND
   82               * INPUT argument LAMs
   83               * Calc. wind triangle 1 (OUTBOUND)
   84               * File  PNRVF.s 29
   85 000AD 00000           CON(5)  =DOLAM
   86 000B2 40              CON(2)  4
   87 000B4 4514351         NIBASC  \TAS1\
            3
   88 000BC 00000           CON(5)  =DOLAM
   89 000C1 30              CON(2)  3
   90 000C3 453413          NIBASC  \TC1\
   91 000C9 00000           CON(5)  =DOLAM
   92 000CE 30              CON(2)  3
   93 000D0 754413          NIBASC  \WD1\
   94 000D6 00000           CON(5)  =DOLAM
   95 000DB 30              CON(2)  3
   96 000DD 753513          NIBASC  \WS1\
   97               * Arguments
   98               * File  PNRVF.s 30
   99 000E3 00000           CON(5)  =DOROMP
  100 000E8 023             CON(3)  #320
  101 000EB 300             CON(3)  #3
  102               * -> %HDG1 %S1 %CRAB
  103               * File  PNRVF.s 31
  104 000EE 00000           CON(5)  =DROP
  105               * -> %HDG1 %S1
  106               * Calc. SGR1
  107               * File  PNRVF.s 33
  108 000F3 00000           CON(5)  =DUP
  109 000F8 00000           CON(5)  =DOLAM
  110 000FD 30              CON(2)  3
  111 000FF 646413          NIBASC  \FF1\
  112 00105 00000           CON(5)  =SWAP
  113 0010A 00000           CON(5)  =%/
  114               * -> %HDG1 %S1 %SGR1
  115               * Calc. track back (INBOUND)
  116               * File  PNRVF.s 35
  117 0010F 00000           CON(5)  =DOLAM
  118 00114 30              CON(2)  3
  119 00116 453413          NIBASC  \TC1\
  120 0011C 00000           CON(5)  =%180
  121 00121 00000           CON(5)  =%+
  122               * -> %HDG1 %S1 %SGR1 %TC2
  123               * File  PNRVF.s 36
  124 00126 00000           CON(5)  =DUP
  125 0012B 00000           CON(5)  =%360
  126 00130 00000           CON(5)  =%>
  127 00135 00000           CON(5)  =IT
  128 0013A 00000           CON(5)  =DOCOL
  129               * Make sure TC2 is NOT > 360 deg.
  130               * File  PNRVF.s 37
  131 0013F 00000           CON(5)  =%360
  132 00144 00000           CON(5)  =%-
  133               * -> %HDG1 %S1 %SGR1 %TC2
  134               * File  PNRVF.s 38
  135 00149 00000           CON(5)  =SEMI
  136               * Calc. wind triangle 2 (INBOUND)
  137               * File  PNRVF.s 40
  138 0014E 00000           CON(5)  =DOLAM
  139 00153 40              CON(2)  4
  140 00155 4514352         NIBASC  \TAS2\
            3
  141 0015D 00000           CON(5)  =SWAP
  142               * -> %HDG1 %S1 %SGR1 %TAS2 %TC2
  143               * File  PNRVF.s 41
  144 00162 00000           CON(5)  =DOLAM
  145 00167 30              CON(2)  3
  146 00169 754423          NIBASC  \WD2\
  147 0016F 00000           CON(5)  =DOLAM
  148 00174 30              CON(2)  3
  149 00176 753523          NIBASC  \WS2\
  150               * -> %HDG1 %S1 %SGR1 %TAS2 %TC2 %WD2 %WS2
  151               * File  PNRVF.s 42
  152 0017C 00000           CON(5)  =DOROMP
  153 00181 023             CON(3)  #320
  154 00184 300             CON(3)  #3
  155 00187 00000           CON(5)  =DROP
  156               * -> %HDG1 %S1 %SGR1 %HDG2 %S2
  157               * Calc. SGR2
  158               * File  PNRVF.s 44
  159 0018C 00000           CON(5)  =DUP
  160 00191 00000           CON(5)  =DOLAM
  161 00196 30              CON(2)  3
  162 00198 646423          NIBASC  \FF2\
  163 0019E 00000           CON(5)  =SWAP
  164 001A3 00000           CON(5)  =%/
  165               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2
  166               * Calc. PNR distance from FIX
  167               * File  PNRVF.s 46
  168 001A8 00000           CON(5)  =DOLAM
  169 001AD 50              CON(2)  5
  170 001AF 64C4456         NIBASC  \FLTFL\
            4C4
  171               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %FLTFL
  172               * File  PNRVF.s 47
  173 001B9 00000           CON(5)  =DOLAM
  174 001BE 40              CON(2)  4
  175 001C0 4484F4D         NIBASC  \DHOM\
            4
  176               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %FLTFL %DHOM
  177               * File  PNRVF.s 48
  178 001C8 00000           CON(5)  =3PICK
  179               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %FLTFL %DHOM %SGR2
  180               * File  PNRVF.s 49
  181 001CD 00000           CON(5)  =%*
  182 001D2 00000           CON(5)  =%-
  183               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %NUM
  184               * File  PNRVF.s 50
  185 001D7 00000           CON(5)  =5PICK
  186               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %NUM %SGR1
  187               * File  PNRVF.s 51
  188 001DC 00000           CON(5)  =3PICK
  189               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %NUM %SGR1 %SGR2
  190               * File  PNRVF.s 52
  191 001E1 00000           CON(5)  =%+
  192               * -> %HDG1 %S1  %SGR1 %HDG2 %S2 %SGR2 %NUM %DEN
  193               * File  PNRVF.s 53
  194 001E6 00000           CON(5)  =%/
  195               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R
  196               * Calc. PNR distance from HOME base
  197               * File  PNRVF.s 55
  198 001EB 00000           CON(5)  =DUP
  199               * File  PNRVF.s 56
  200 001F0 00000           CON(5)  =DOLAM
  201 001F5 40              CON(2)  4
  202 001F7 4484F4D         NIBASC  \DHOM\
            4
  203 001FF 00000           CON(5)  =%+
  204               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH
  205               * Calc. time to turn
  206               * File  PNRVF.s 58
  207 00204 00000           CON(5)  =OVER
  208               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %R
  209               * File  PNRVF.s 59
  210 00209 00000           CON(5)  =8PICK
  211               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %R %S1
  212               * File  PNRVF.s 60
  213 0020E 00000           CON(5)  =%/
  214               * -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %T1
  215               * File  PNRVF.s 61
  216 00213 00000           CON(5)  =ABND
  217               * INPUT argument LAMs
  218               * File  PNRVF.s 62
  219 00218 00000           CON(5)  =SEMI
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
V3.0.9 (04/15/2007)   Symbol Table                       PNRVF.a        Page    2

 %*                                Ext                   -   181
 %+                                Ext                   -   121   191   203
 %-                                Ext                   -   132   182
 %/                                Ext                   -   113   164   194
                                         213
 %180                              Ext                   -   120
 %360                              Ext                   -   125   131
 %>                                Ext                   -   126
 3PICK                             Ext                   -   178   188
 5PICK                             Ext                   -   185
 8PICK                             Ext                   -   210
 ABND                              Ext                   -   216
 BIND                              Ext                   -    81
 DOCOL                             Ext                   -    40   128
 DOLAM                             Ext                   -    43    46    49
                                          52    56    59    62    65    69    72
                                          75    85    88    91    94   109   117
                                         138   144   147   160   168   173   200
 DOLIST                            Ext                   -    42
 DOROMP                            Ext                   -    99   152
 DROP                              Ext                   -   104   155
 DUP                               Ext                   -   108   124   159
                                         198
 IT                                Ext                   -   127
 OVER                              Ext                   -   207
=PNRVF                             Rel       0 #00000000 -    38
=RomId                             Abs     802 #00000322 -    23
 SEMI                              Ext                   -    79   135   219
 SWAP                              Ext                   -   112   141   163
Saturn Assembler                                       Mon Jun 22 18:34:04 2009
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
