Saturn Assembler                                       Wed May 27 14:44:51 2009
V3.0.9 (04/15/2007)                                      SCRIBE.a       Page    1

    1               * File  SCRIBE.s        1
    2               * RPL
    3               * File  SCRIBE.s        2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Keyboardtest\SCRIBE.s, part of the SCRIBE.hpp project, created by <> on 27/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Draws diagonal patterns from edge to edge.
    7               * COMPATIBILITY:   HP48, HP50 (Does not reach the edges on HP50)
    8               * USAGE:     ( -> )
    9               *
   10               * File  SCRIBE.s        8
   11 00000 00000           CON(5)  =DOCOL
   12               * File  SCRIBE.s        9
   13 00005 00000           CON(5)  =0LASTOWDOB!
   14               * Clear saved command name
   15               * File  SCRIBE.s        10
   16 0000A 00000           CON(5)  =CK0NOLASTWD
   17               * No arguments
   18               * File  SCRIBE.s        11
   19 0000F 00000           CON(5)  =ClrDA1IsStat
   20               * Suspend clock
   21               * File  SCRIBE.s        12
   22 00014 00000           CON(5)  =RECLAIMDISP
   23               * Clear screen
   24               * File  SCRIBE.s        13
   25 00019 00000           CON(5)  =TURNMENUOFF
   26               * Turn off menu
   27               * File  SCRIBE.s        14
   28 0001E 00000           CON(5)  =SIXTYFOUR
   29               * Initial x position
   30               * File  SCRIBE.s        15
   31 00023 00000           CON(5)  =THIRTYTWO
   32               * Initial y position
   33               * File  SCRIBE.s        16
   34 00028 00000           CON(5)  =ONE
   35               * Initial x step
   36               * File  SCRIBE.s        17
   37 0002D 00000           CON(5)  =ONE
   38               * Initial y step
   39               * File  SCRIBE.s        18
   40 00032 00000           CON(5)  =TRUE
   41               * Running flag
   42               * File  SCRIBE.s        19
   43 00037 00000           CON(5)  =DOLIST
   44               * File  SCRIBE.s        20
   45 0003C 00000           CON(5)  =DOLAM
   46 00041 40              CON(2)  4
   47 00043 8507F63         NIBASC  \Xpos\
            7
   48 0004B 00000           CON(5)  =DOLAM
   49 00050 40              CON(2)  4
   50 00052 9507F63         NIBASC  \Ypos\
            7
   51               * File  SCRIBE.s        21
   52 0005A 00000           CON(5)  =DOLAM
   53 0005F 50              CON(2)  5
   54 00061 8537475         NIBASC  \Xstep\
            607
   55 0006B 00000           CON(5)  =DOLAM
   56 00070 50              CON(2)  5
   57 00072 9537475         NIBASC  \Ystep\
            607
   58               * File  SCRIBE.s        22
   59 0007C 00000           CON(5)  =DOLAM
   60 00081 70              CON(2)  7
   61 00083 2557E6E         NIBASC  \Running\
            696E676
   62               * File  SCRIBE.s        23
   63 00091 00000           CON(5)  =SEMI
   64               * File  SCRIBE.s        24
   65 00096 00000           CON(5)  =BIND
   66               * Create temporary environment
   67               * File  SCRIBE.s        25
   68 0009B 00000           CON(5)  =FLUSHKEYS
   69               * Clear key buffer
   70               * File  SCRIBE.s        26
   71 000A0 00000           CON(5)  =ATTNFLGCLR
   72               * Clear attention flag
   73               * File  SCRIBE.s        27
   74 000A5 00000           CON(5)  =BEGIN
   75               * Loop until a key is pressed
   76               * File  SCRIBE.s        28
   77 000AA 00000           CON(5)  =GETTOUCH
   78               * [ -> #keycode TRUE ] or [ -> FALSE ]
   79               * File  SCRIBE.s        29
   80 000AF 00000           CON(5)  =ITE
   81               * File  SCRIBE.s        30
   82 000B4 00000           CON(5)  =DROPFALSE
   83               * IF TRUE, exit [ -> FALSE ]
   84               * File  SCRIBE.s        31
   85 000B9 00000           CON(5)  =TRUE
   86               * IF FALSE, continue [ -> TRUE ]
   87               * File  SCRIBE.s        32
   88 000BE 00000           CON(5)  =ATTN?
   89 000C3 00000           CON(5)  =NOT
   90               * -> FLAG
   91               * File  SCRIBE.s        33
   92 000C8 00000           CON(5)  =AND
   93               * File  SCRIBE.s        34
   94 000CD 00000           CON(5)  =WHILE
   95 000D2 00000           CON(5)  =DOCOL
   96               * File  SCRIBE.s        35
   97 000D7 00000           CON(5)  =DOLAM
   98 000DC 40              CON(2)  4
   99 000DE 8507F63         NIBASC  \Xpos\
            7
  100 000E6 00000           CON(5)  =DOLAM
  101 000EB 50              CON(2)  5
  102 000ED 8537475         NIBASC  \Xstep\
            607
  103 000F7 00000           CON(5)  =#+
  104               * Calc. next X position
  105               * File  SCRIBE.s        36
  106 000FC 00000           CON(5)  =DUP
  107 00101 00000           CON(5)  =MINUSONE
  108 00106 00000           CON(5)  =#=
  109 0010B 00000           CON(5)  =IT
  110 00110 00000           CON(5)  =DOCOL
  111               * IF at left edge
  112               * File  SCRIBE.s        37
  113 00115 00000           CON(5)  =#2+
  114 0011A 00000           CON(5)  =ONE
  115               * Reverse direction
  116               * File  SCRIBE.s        38
  117 0011F 00000           CON(5)  ='
  118 00124 00000           CON(5)  =DOLAM
  119 00129 50              CON(2)  5
  120 0012B 8537475         NIBASC  \Xstep\
            607
  121 00135 00000           CON(5)  =STO
  122               * File  SCRIBE.s        39
  123 0013A 00000           CON(5)  =SEMI
  124               * File  SCRIBE.s        40
  125 0013F 00000           CON(5)  =DUP
  126 00144 00000           CON(5)  =BINT_131d
  127 00149 00000           CON(5)  =#=
  128 0014E 00000           CON(5)  =IT
  129 00153 00000           CON(5)  =DOCOL
  130               * IF at right edge
  131               * File  SCRIBE.s        41
  132 00158 00000           CON(5)  =#2-
  133 0015D 00000           CON(5)  =MINUSONE
  134               * Reverse direction
  135               * File  SCRIBE.s        42
  136 00162 00000           CON(5)  ='
  137 00167 00000           CON(5)  =DOLAM
  138 0016C 50              CON(2)  5
  139 0016E 8537475         NIBASC  \Xstep\
            607
  140 00178 00000           CON(5)  =STO
  141               * File  SCRIBE.s        43
  142 0017D 00000           CON(5)  =SEMI
  143               * File  SCRIBE.s        44
  144 00182 00000           CON(5)  =DUP
  145               * #Xpos
  146               * File  SCRIBE.s        45
  147 00187 00000           CON(5)  ='
  148 0018C 00000           CON(5)  =DOLAM
  149 00191 40              CON(2)  4
  150 00193 8507F63         NIBASC  \Xpos\
            7
  151 0019B 00000           CON(5)  =STO
  152               * STO next X position
  153               * File  SCRIBE.s        46
  154 001A0 00000           CON(5)  =DOLAM
  155 001A5 40              CON(2)  4
  156 001A7 9507F63         NIBASC  \Ypos\
            7
  157 001AF 00000           CON(5)  =DOLAM
  158 001B4 50              CON(2)  5
  159 001B6 9537475         NIBASC  \Ystep\
            607
  160 001C0 00000           CON(5)  =#+
  161               * Calc. next Y position
  162               * File  SCRIBE.s        47
  163 001C5 00000           CON(5)  =DUP
  164 001CA 00000           CON(5)  =MINUSONE
  165 001CF 00000           CON(5)  =#=
  166 001D4 00000           CON(5)  =IT
  167 001D9 00000           CON(5)  =DOCOL
  168               * IF at top edge
  169               * File  SCRIBE.s        48
  170 001DE 00000           CON(5)  =#2+
  171 001E3 00000           CON(5)  =ONE
  172               * Reverse direction
  173               * File  SCRIBE.s        49
  174 001E8 00000           CON(5)  ='
  175 001ED 00000           CON(5)  =DOLAM
  176 001F2 50              CON(2)  5
  177 001F4 9537475         NIBASC  \Ystep\
            607
  178 001FE 00000           CON(5)  =STO
  179               * File  SCRIBE.s        50
  180 00203 00000           CON(5)  =SEMI
  181               * File  SCRIBE.s        51
  182 00208 00000           CON(5)  =DUP
  183 0020D 00000           CON(5)  =SIXTYFOUR
  184 00212 00000           CON(5)  =#=
  185 00217 00000           CON(5)  =IT
  186 0021C 00000           CON(5)  =DOCOL
  187               * IF at bottom edge
  188               * File  SCRIBE.s        52
  189 00221 00000           CON(5)  =#2-
  190 00226 00000           CON(5)  =MINUSONE
  191               * Reverse direction
  192               * File  SCRIBE.s        53
  193 0022B 00000           CON(5)  ='
  194 00230 00000           CON(5)  =DOLAM
  195 00235 50              CON(2)  5
  196 00237 9537475         NIBASC  \Ystep\
            607
  197 00241 00000           CON(5)  =STO
  198               * File  SCRIBE.s        54
  199 00246 00000           CON(5)  =SEMI
  200               * File  SCRIBE.s        55
  201 0024B 00000           CON(5)  =DUP
  202               * #Ypos
  203               * File  SCRIBE.s        56
  204 00250 00000           CON(5)  ='
  205 00255 00000           CON(5)  =DOLAM
  206 0025A 40              CON(2)  4
  207 0025C 9507F63         NIBASC  \Ypos\
            7
  208 00264 00000           CON(5)  =STO
  209               * STO next Y position
  210               * File  SCRIBE.s        57
  211 00269 00000           CON(5)  =PIXON
  212               * #Xpos #Ypos ->
  213               * File  SCRIBE.s        58
  214 0026E 00000           CON(5)  =SEMI
  215 00273 00000           CON(5)  =REPEAT
  216               * File  SCRIBE.s        59
  217 00278 00000           CON(5)  =ABND
  218               * Abondon temporary environment
  219               * File  SCRIBE.s        60
  220 0027D 00000           CON(5)  =ATTNFLGCLR
  221               * Clear attention flag
  222               * File  SCRIBE.s        61
  223 00282 00000           CON(5)  =ClrDAsOK
  224               * Signal display to be redrawn
  225               * File  SCRIBE.s        62
  226 00287 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed May 27 14:44:51 2009
V3.0.9 (04/15/2007)   Symbol Table                       SCRIBE.a       Page    2

 #+                                Ext                   -   103   160
 #2+                               Ext                   -   113   170
 #2-                               Ext                   -   132   189
 #=                                Ext                   -   108   127   165
                                         184
 '                                 Ext                   -   117   136   147
                                         174   193   204
 0LASTOWDOB!                       Ext                   -    13
 ABND                              Ext                   -   217
 AND                               Ext                   -    92
 ATTN?                             Ext                   -    88
 ATTNFLGCLR                        Ext                   -    71   220
 BEGIN                             Ext                   -    74
 BIND                              Ext                   -    65
 BINT_131d                         Ext                   -   126
 CK0NOLASTWD                       Ext                   -    16
 ClrDA1IsStat                      Ext                   -    19
 ClrDAsOK                          Ext                   -   223
 DOCOL                             Ext                   -    11    95   110
                                         129   167   186
 DOLAM                             Ext                   -    45    48    52
                                          55    59    97   100   118   137   148
                                         154   157   175   194   205
 DOLIST                            Ext                   -    43
 DROPFALSE                         Ext                   -    82
 DUP                               Ext                   -   106   125   144
                                         163   182   201
 FLUSHKEYS                         Ext                   -    68
 GETTOUCH                          Ext                   -    77
 IT                                Ext                   -   109   128   166
                                         185
 ITE                               Ext                   -    80
 MINUSONE                          Ext                   -   107   133   164
                                         190
 NOT                               Ext                   -    89
 ONE                               Ext                   -    34    37   114
                                         171
 PIXON                             Ext                   -   211
 RECLAIMDISP                       Ext                   -    22
 REPEAT                            Ext                   -   215
 SEMI                              Ext                   -    63   123   142
                                         180   199   214   226
 SIXTYFOUR                         Ext                   -    28   183
 STO                               Ext                   -   121   140   151
                                         178   197   208
 THIRTYTWO                         Ext                   -    31
 TRUE                              Ext                   -    40    85
 TURNMENUOFF                       Ext                   -    25
 WHILE                             Ext                   -    94
Saturn Assembler                                       Wed May 27 14:44:51 2009
V3.0.9 (04/15/2007)   Statistics                         SCRIBE.a       Page    3

Input Parameters

  Source file name is SCRIBE.a

  Listing file name is SCRIBE.l

  Object file name is SCRIBE.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
