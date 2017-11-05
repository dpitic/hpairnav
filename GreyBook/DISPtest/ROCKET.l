Saturn Assembler                                       Mon May 25 18:03:40 2009
V3.0.9 (04/15/2007)                                      ROCKET.a       Page    1

    1             * File  ROCKET.s        1
    2             * RPL
    3             * File  ROCKET.s        2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\DISPtest\ROCKET.s, part of the ROCKET.hpp project, created by <> on 25/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Rocket launching graphics.
    7             * COMPATIBILITY:   HP48, HP50 (Runs too fast on HP50)
    8             *
    9             * File  ROCKET.s        7
   10 00000 00000         CON(5)  =DOCOL
   11             * File  ROCKET.s        8
   12 00005 00000         CON(5)  =0LASTOWDOB!
   13             * Clear saved command name
   14             * File  ROCKET.s        9
   15 0000A 00000         CON(5)  =CK0NOLASTWD
   16             * No arguments
   17             * File  ROCKET.s        10
   18 0000F 00000         CON(5)  =ClrDA1IsStat
   19             * Suspend clock
   20             * File  ROCKET.s        11
   21 00014 00000         CON(5)  =RECLAIMDISP
   22             * Clear screen
   23             * Build the launch pad
   24             * File  ROCKET.s        13
   25 00019 00000         CON(5)  =HARDBUFF2
   26             * Menu grob [ -> grob ]
   27             * File  ROCKET.s        14
   28 0001E 00000         CON(5)  =ZEROZERO
   29             * -> grob #x1 #y1
   30             * File  ROCKET.s        15
   31 00023 00000         CON(5)  =DOBINT
   32 00028 38000         CON(5)  131
   33             * -> grob #x1 #y1 #x2
   34             * File  ROCKET.s        16
   35 0002D 00000         CON(5)  =EIGHT
   36             * -> grob #x1 #y1 #x2 #y2
   37             * File  ROCKET.s        17
   38 00032 00000         CON(5)  =GROB!ZERODRP
   39             * Clear grob pixels [ ... -> ]
   40             * File  ROCKET.s        18
   41 00037 00000         CON(5)  =ABUFF
   42             * Stack grob [ -> grob ]
   43             * File  ROCKET.s        19
   44 0003C 00000         CON(5)  =DOBINT
   45 00041 73000         CON(5)  55
   46 00046 00000         CON(5)  =HEIGHTENGROB
   47             * Add blank rows to grob [ grob #55 -> ]
   48             * File  ROCKET.s        20
   49             * ASSEMBLE                            ( Rocket grob )
   50             * File  ROCKET.s        21
   51 0004B 00000                 CON(5)   =DOGROB
   52             * File  ROCKET.s        22
   53 00050 F4000                 REL(5)   end
   54             * File  ROCKET.s        23
   55 00055 01000                 CON(5)   16
   56             * File  ROCKET.s        24
   57 0005A 90000                 CON(5)   9
   58             * File  ROCKET.s        25
   59 0005F 01000                 NIBHEX   0100010083008300
            10083
            008300
   60             * File  ROCKET.s        26
   61 0006F 83008                 NIBHEX   8300830083008300
            30083
            008300
   62             * File  ROCKET.s        27
   63 0007F 83000                 NIBHEX   8300070007000700
            70007
            000700
   64             * File  ROCKET.s        28
   65 0008F EF00E                 NIBHEX   EF00EF007D103810
            F007D
            103810
   66             * File  ROCKET.s        29
   67 0009F       end
   68             * File  ROCKET.s        30
   69             * RPL                                 ( -> grob[source] )
   70             * -> grob[source]
   71             * File  ROCKET.s        31
   72 0009F 00000         CON(5)  =ABUFF
   73             * Stack grob [ -> grob[source] grob[target] ]
   74             * File  ROCKET.s        32
   75 000A4 00000         CON(5)  =DOBINT
   76 000A9 E3000         CON(5)  62
   77 000AE 00000         CON(5)  =DOBINT
   78 000B3 82000         CON(5)  40
   79 000B8 00000         CON(5)  =GROB!
   80             * Place rocket in display [ grob[source] grob[target] #x #y -> ]
   81             * File  ROCKET.s        33
   82 000BD 00000         CON(5)  =ELEVEN
   83 000C2 00000         CON(5)  =ZERO
   84 000C7 00000         CON(5)  =DO
   85             * Draw countdown to launch
   86             * File  ROCKET.s        34
   87 000CC 00000         CON(5)  =TEN
   88             * File  ROCKET.s        35
   89 000D1 00000         CON(5)  =INDEX@
   90             * File  ROCKET.s        36
   91 000D6 00000         CON(5)  =#-
   92             * File  ROCKET.s        37
   93 000DB 00000         CON(5)  =UNCOERCE
   94             * Real number count down [ # -> % ]
   95             * File  ROCKET.s        38
   96 000E0 00000         CON(5)  =EDITDECOMP$
   97             * % -> $
   98             * File  ROCKET.s        39
   99 000E5 00000         CON(5)  =$>grob
  100             * Grob from string using small font [ $ -> grob ]
  101             * File  ROCKET.s        40
  102 000EA 00000         CON(5)  =HARDBUFF2
  103             * Menu grob [ -> grob ]
  104             * File  ROCKET.s        41
  105 000EF 00000         CON(5)  =INDEX@
  106             * Loop index
  107             * File  ROCKET.s        42
  108 000F4 00000         CON(5)  =DUP#0=ITE
  109             * IF = 0
  110             * File  ROCKET.s        43
  111 000F9 00000         CON(5)  =ELEVEN
  112             * Use 11 for the cont x coordinate base
  113             * File  ROCKET.s        44
  114 000FE 00000         CON(5)  =DOCOL
  115 00103 00000         CON(5)  =FIFTEEN
  116 00108 00000         CON(5)  =VERYSLOW
  117 0010D 00000         CON(5)  =VERYSLOW
  118             * Otherwise use 15 and delay
  119             * File  ROCKET.s        45
  120 00112 00000         CON(5)  =VERYSLOW
  121 00117 00000         CON(5)  =VERYSLOW
  122             * File  ROCKET.s        46
  123 0011C 00000         CON(5)  =SEMI
  124             * File  ROCKET.s        47
  125 00121 00000         CON(5)  =SWAP
  126 00126 00000         CON(5)  =TEN
  127 0012B 00000         CON(5)  =#*
  128 00130 00000         CON(5)  =#+
  129             * x coordinate
  130             * File  ROCKET.s        48
  131 00135 00000         CON(5)  =TWO
  132             * y coordinate
  133             * File  ROCKET.s        49
  134 0013A 00000         CON(5)  =GROB!
  135             * Put number in menu grob
  136             * File  ROCKET.s        50
  137 0013F 00000         CON(5)  =VERYSLOW
  138             * EXTRA DELAYS
  139             * File  ROCKET.s        51
  140 00144 00000         CON(5)  =VERYSLOW
  141             * File  ROCKET.s        52
  142 00149 00000         CON(5)  =VERYSLOW
  143             * File  ROCKET.s        53
  144 0014E 00000         CON(5)  =VERYSLOW
  145             * File  ROCKET.s        54
  146 00153 00000         CON(5)  =LOOP
  147             * File  ROCKET.s        55
  148 00158 00000         CON(5)  =DOBINT
  149 0015D 83000         CON(5)  56
  150 00162 00000         CON(5)  =ONE
  151 00167 00000         CON(5)  =DO
  152             * Launch rocket
  153             * File  ROCKET.s        56
  154 0016C 00000         CON(5)  =WINDOWDOWN
  155             * Scroll window down 1 pixel
  156             * File  ROCKET.s        57
  157 00171 00000         CON(5)  =%RAN
  158 00176 00000         CON(5)  =DOREAL
  159 0017B 999           NIBHEX  999
  160 0017E 00000         NIBHEX  000000000005
            00000
            05
  161 0018A 0             NIBHEX  0
  162 0018B 00000         CON(5)  =%>
  163 00190 00000         CON(5)  =?SKIP
  164             * 50% chance of generating smoke
  165             * File  ROCKET.s        58
  166 00195 00000         CON(5)  =DOCOL
  167 0019A 00000         CON(5)  =DOBINT
  168 0019F 34000         CON(5)  67
  169 001A4 00000         CON(5)  =DOBINT
  170 001A9 73000         CON(5)  55
  171 001AE 00000         CON(5)  =INDEX@
  172 001B3 00000         CON(5)  =#+
  173 001B8 00000         CON(5)  =PIXON
  174 001BD 00000         CON(5)  =SEMI
  175             * Smoke generation
  176             * File  ROCKET.s        59
  177 001C2 00000         CON(5)  =VERYSLOW
  178             * EXTRA DELAY
  179             * File  ROCKET.s        60
  180 001C7 00000         CON(5)  =LOOP
  181             * File  ROCKET.s        61
  182 001CC 00000         CON(5)  =RECLAIMDISP
  183             * Clear screen
  184             * File  ROCKET.s        62
  185 001D1 00000         CON(5)  =SEMI
Saturn Assembler                                       Mon May 25 18:03:40 2009
V3.0.9 (04/15/2007)   Symbol Table                       ROCKET.a       Page    2

 #*                                Ext                   -   127
 #+                                Ext                   -   128   172
 #-                                Ext                   -    91
 $>grob                            Ext                   -    99
 %>                                Ext                   -   162
 %RAN                              Ext                   -   157
 0LASTOWDOB!                       Ext                   -    12
 ?SKIP                             Ext                   -   163
 ABUFF                             Ext                   -    41    72
 CK0NOLASTWD                       Ext                   -    15
 ClrDA1IsStat                      Ext                   -    18
 DO                                Ext                   -    84   151
 DOBINT                            Ext                   -    31    44    75
                                          77   148   167   169
 DOCOL                             Ext                   -    10   114   166
 DOGROB                            Ext                   -    51
 DOREAL                            Ext                   -   158
 DUP#0=ITE                         Ext                   -   108
 EDITDECOMP$                       Ext                   -    96
 EIGHT                             Ext                   -    35
 ELEVEN                            Ext                   -    82   111
 FIFTEEN                           Ext                   -   115
 GROB!                             Ext                   -    79   134
 GROB!ZERODRP                      Ext                   -    38
 HARDBUFF2                         Ext                   -    25   102
 HEIGHTENGROB                      Ext                   -    46
 INDEX@                            Ext                   -    89   105   171
 LOOP                              Ext                   -   146   180
 ONE                               Ext                   -   150
 PIXON                             Ext                   -   173
 RECLAIMDISP                       Ext                   -    21   182
 SEMI                              Ext                   -   123   174   185
 SWAP                              Ext                   -   125
 TEN                               Ext                   -    87   126
 TWO                               Ext                   -   131
 UNCOERCE                          Ext                   -    93
 VERYSLOW                          Ext                   -   116   117   120
                                         121   137   140   142   144   177
 WINDOWDOWN                        Ext                   -   154
 ZERO                              Ext                   -    83
 ZEROZERO                          Ext                   -    28
 end                               Rel     159 #0000009F -    67    53
Saturn Assembler                                       Mon May 25 18:03:40 2009
V3.0.9 (04/15/2007)   Statistics                         ROCKET.a       Page    3

Input Parameters

  Source file name is ROCKET.a

  Listing file name is ROCKET.l

  Object file name is ROCKET.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
