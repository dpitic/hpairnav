Saturn Assembler                                       Wed May 27 16:03:13 2009
V3.0.9 (04/15/2007)                                      RPT.a          Page    1

    1               * File  RPT.s   1
    2               * RPL
    3               * File  RPT.s   2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\RPT.s, part of the RPT.hpp project, created by <> on 9/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Increments or decrements the number in the display
    7               *                  when the + or - key is pressed.  Action is also
    8               *                  valid for when the keys are held down.  The program
    9               *                  exits when ON is pressed.
   10               * COMPATIBILITY:   HP48, HP50
   11               * USAGE:      ( -> )
   12               *
   13               * Keycode definitions
   14               *DEFINE -key FORTYFOUR            ( HP48 )
   15               *DEFINE +key FORTYNINE            ( HP48 )
   16               *DEFINE ONkey FORTYFIVE           ( HP48 )
   17               * File  RPT.s   15
   18               * ( HP50
   19               * File  RPT.s   16
   20               * ( HP50
   21               * File  RPT.s   17
   22               * ( HP50
   23               *
   24               * Main program
   25               * File  RPT.s   20
   26 00000 00000           CON(5)  =DOCOL
   27               * File  RPT.s   21
   28 00005 00000           CON(5)  =0LASTOWDOB!
   29               * Clear protection word
   30               * File  RPT.s   22
   31 0000A 00000           CON(5)  =CK0NOLASTWD
   32               * No arguments
   33               * File  RPT.s   23
   34 0000F 00000           CON(5)  =ClrDA1IsStat
   35               * Turn off clock
   36               * File  RPT.s   24
   37 00014 00000           CON(5)  =RECLAIMDISP
   38               * Clear display
   39               * File  RPT.s   25
   40 00019 00000           CON(5)  =TURNMENUOFF
   41               * Turn off menu
   42               * File  RPT.s   26
   43 0001E 00000           CON(5)  ='
   44 00023 00000           CON(5)  =DOCOL
   45               * [LAM 3] Action for + key
   46               * File  RPT.s   27
   47 00028 00000           CON(5)  =1GETLAM
   48               * %counter
   49               * File  RPT.s   28
   50 0002D 00000           CON(5)  =%1+
   51               * %counter %1 %+ -> %counter+1 [Increment counter]
   52               * File  RPT.s   29
   53 00032 00000           CON(5)  =DUP
   54               * %counter+1 %counter+1
   55               * File  RPT.s   30
   56 00037 00000           CON(5)  =EDITDECOMP$
   57               * %counter+1 %counter+1 -> %counter+1 $counter+1
   58               * File  RPT.s   31
   59 0003C 00000           CON(5)  =DISPROW4
   60               * %counter+1 -> display $counter+1
   61               * File  RPT.s   32
   62 00041 00000           CON(5)  =1PUTLAM
   63               * %counter+1 -> update counter
   64               * File  RPT.s   33
   65 00046 00000           CON(5)  =SEMI
   66               * File  RPT.s   34
   67 0004B 00000           CON(5)  ='
   68 00050 00000           CON(5)  =DOCOL
   69               * [LAM 2] Action for - key
   70               * File  RPT.s   35
   71 00055 00000           CON(5)  =1GETLAM
   72               * %counter
   73               * File  RPT.s   36
   74 0005A 00000           CON(5)  =%1-
   75               * %counter %1 %- -> %counter-1
   76               * File  RPT.s   37
   77 0005F 00000           CON(5)  =DUP
   78               * %counter-1 %counter-1
   79               * File  RPT.s   38
   80 00064 00000           CON(5)  =EDITDECOMP$
   81               * -> %counter-1 $counter-1
   82               * File  RPT.s   39
   83 00069 00000           CON(5)  =DISPROW4
   84               * -> %counter-1
   85               * File  RPT.s   40
   86 0006E 00000           CON(5)  =1PUTLAM
   87               * %counter-1 -> update counter
   88               * File  RPT.s   41
   89 00073 00000           CON(5)  =SEMI
   90               * File  RPT.s   42
   91 00078 00000           CON(5)  =%0
   92               * [LAM 1] %counter = Initial counter value
   93               * File  RPT.s   43
   94 0007D 00000           CON(5)  ='
   95 00082 00000           CON(5)  =NULLLAM
   96 00087 00000           CON(5)  =THREE
   97 0008C 00000           CON(5)  =NDUPN
   98               * 3 nullname temporary variables
   99               * File  RPT.s   44
  100 00091 00000           CON(5)  =DOBIND
  101               * Create the temporary environment
  102               * File  RPT.s   45
  103 00096 00000           CON(5)  =3GETLAM
  104 0009B 00000           CON(5)  =EVAL
  105               * Increment and display the counter
  106               * File  RPT.s   46
  107 000A0 00000           CON(5)  =BEGIN
  108               * File  RPT.s   47
  109 000A5 00000           CON(5)  =DOCOL
  110               * File  RPT.s   48
  111 000AA 00000           CON(5)  =WaitForKey
  112               * -> #keycode #plane
  113               * File  RPT.s   49
  114 000AF 00000           CON(5)  =DROP
  115               * -> #keycode
  116               * File  RPT.s   50
  117 000B4 00000           CON(5)  =FORTYONE
  118 000B9 00000           CON(5)  =#=casedrop
  119 000BE 00000           CON(5)  =DOCOL
  120               * Check for - key
  121               * File  RPT.s   51
  122 000C3 00000           CON(5)  =REPEATER
  123               * Repeat as long as key is pressed
  124               * File  RPT.s   52
  125 000C8 00000           CON(5)  =FORTYONE
  126               * - key
  127               * File  RPT.s   53
  128 000CD 00000           CON(5)  =2GETEVAL
  129               * subtract [action for - key]
  130               * File  RPT.s   54
  131 000D2 00000           CON(5)  =FALSE
  132               * Continue loop
  133               * File  RPT.s   55
  134 000D7 00000           CON(5)  =SEMI
  135               * File  RPT.s   56
  136 000DC 00000           CON(5)  =FORTYSEVEN
  137 000E1 00000           CON(5)  =#=casedrop
  138               * If ON key pressed, drop counter
  139               * File  RPT.s   57
  140 000E6 00000           CON(5)  =TRUE
  141               * and end loop
  142               * File  RPT.s   58
  143 000EB 00000           CON(5)  =FORTYSIX
  144 000F0 00000           CON(5)  =#=case
  145 000F5 00000           CON(5)  =DOCOL
  146               * Check for + key
  147               * File  RPT.s   59
  148 000FA 00000           CON(5)  =REPEATER
  149               * Repeat as long as key is pressed
  150               * File  RPT.s   60
  151 000FF 00000           CON(5)  =FORTYSIX
  152               * + key
  153               * File  RPT.s   61
  154 00104 00000           CON(5)  =DOCOL
  155               * File  RPT.s   62
  156 00109 00000           CON(5)  =3GETLAM
  157 0010E 00000           CON(5)  =EVAL
  158               * Add [action for + key]
  159               * File  RPT.s   63
  160 00113 00000           CON(5)  =SEMI
  161               * File  RPT.s   64
  162 00118 00000           CON(5)  =FALSE
  163               * Continue loop
  164               * File  RPT.s   65
  165 0011D 00000           CON(5)  =SEMI
  166               * File  RPT.s   66
  167 00122 00000           CON(5)  =DoBadKey
  168               * Beep for any other key
  169               * File  RPT.s   67
  170 00127 00000           CON(5)  =FALSE
  171               * Continue loop for all other keys
  172               * File  RPT.s   68
  173 0012C 00000           CON(5)  =SEMI
  174               * File  RPT.s   69
  175 00131 00000           CON(5)  =UNTIL
  176               * File  RPT.s   70
  177 00136 00000           CON(5)  =ABND
  178               * Abandon temporary environment
  179               * File  RPT.s   71
  180 0013B 00000           CON(5)  =ClrDAsOK
  181               * Redraw display
  182               * File  RPT.s   72
  183 00140 00000           CON(5)  =SEMI
Saturn Assembler                                       Wed May 27 16:03:13 2009
V3.0.9 (04/15/2007)   Symbol Table                       RPT.a          Page    2

 #=case                            Ext                   -   144
 #=casedrop                        Ext                   -   118   137
 %0                                Ext                   -    91
 %1+                               Ext                   -    50
 %1-                               Ext                   -    74
 '                                 Ext                   -    43    67    94
 0LASTOWDOB!                       Ext                   -    28
 1GETLAM                           Ext                   -    47    71
 1PUTLAM                           Ext                   -    62    86
 2GETEVAL                          Ext                   -   128
 3GETLAM                           Ext                   -   103   156
 ABND                              Ext                   -   177
 BEGIN                             Ext                   -   107
 CK0NOLASTWD                       Ext                   -    31
 ClrDA1IsStat                      Ext                   -    34
 ClrDAsOK                          Ext                   -   180
 DISPROW4                          Ext                   -    59    83
 DOBIND                            Ext                   -   100
 DOCOL                             Ext                   -    26    44    68
                                         109   119   145   154
 DROP                              Ext                   -   114
 DUP                               Ext                   -    53    77
 DoBadKey                          Ext                   -   167
 EDITDECOMP$                       Ext                   -    56    80
 EVAL                              Ext                   -   104   157
 FALSE                             Ext                   -   131   162   170
 FORTYONE                          Ext                   -   117   125
 FORTYSEVEN                        Ext                   -   136
 FORTYSIX                          Ext                   -   143   151
 NDUPN                             Ext                   -    97
 NULLLAM                           Ext                   -    95
 RECLAIMDISP                       Ext                   -    37
 REPEATER                          Ext                   -   122   148
 SEMI                              Ext                   -    65    89   134
                                         160   165   173   183
 THREE                             Ext                   -    96
 TRUE                              Ext                   -   140
 TURNMENUOFF                       Ext                   -    40
 UNTIL                             Ext                   -   175
 WaitForKey                        Ext                   -   111
Saturn Assembler                                       Wed May 27 16:03:13 2009
V3.0.9 (04/15/2007)   Statistics                         RPT.a          Page    3

Input Parameters

  Source file name is RPT.a

  Listing file name is RPT.l

  Object file name is RPT.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
