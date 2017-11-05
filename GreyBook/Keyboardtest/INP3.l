Saturn Assembler                                       Sun May 31 12:50:54 2009
V3.0.9 (04/15/2007)                                      INP3.a         Page    1

    1               * File  INP3.s  1
    2               * RPL
    3               * File  INP3.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\INP1.s, part of the INP1.hpp project, created by <> on 9/05/2009
    5               ********************************************************************
    6               * NAME:            INP2
    7               * DESCRIPTION:     Prompt for a real number, ending only if the user
    8               *                  aborts by presing ON.  Type checking occurs after
    9               *                  InputLine.
   10               * COMPATIBILITY:   HP48
   11               *                  HP50     Number entered must end with "." else it
   12               *                           is interpreted as a ZINT and the warning
   13               *                           message is displayed.  This runs too fast
   14               *                           to be visible.
   15               * STACK DIAG:      ( -> % %1 or %0 )
   16               *
   17               * File  INP3.s  15
   18 00000 00000           CON(5)  =DOCOL
   19               * File  INP3.s  16
   20 00005 00000           CON(5)  =0LASTOWDOB!
   21               * Clear protection word
   22               * File  INP3.s  17
   23 0000A 00000           CON(5)  =CK0NOLASTWD
   24               * No arguments
   25               * File  INP3.s  18
   26 0000F 00000           CON(5)  ='
   27 00014 00000           CON(5)  =DOCOL
   28               * Subroutine to show message [LAM ShowHelp]
   29               * File  INP3.s  19
   30 00019 00000           CON(5)  =ABUFF
   31               * Return STACK grob
   32               * File  INP3.s  20
   33 0001E 00000           CON(5)  =TEN
   34               * #x1
   35               * File  INP3.s  21
   36 00023 00000           CON(5)  =THIRTY
   37               * #y1
   38               * File  INP3.s  22
   39 00028 00000           CON(5)  =DOBINT
   40 0002D 97000           CON(5)  121
   41               * #x2
   42               * File  INP3.s  23
   43 00032 00000           CON(5)  =FORTYONE
   44               * #y2
   45               * File  INP3.s  24
   46 00037 00000           CON(5)  =SUBGROB
   47               * ... -> subgrob [Display area of STACK grob]
   48               * File  INP3.s  25
   49 0003C 00000           CON(5)  =ABUFF
   50               * Return STACK grob
   51               * File  INP3.s  26
   52 00041 00000           CON(5)  =TEN
   53               * #x1
   54               * File  INP3.s  27
   55 00046 00000           CON(5)  =THIRTY
   56               * #y1
   57               * File  INP3.s  28
   58 0004B 00000           CON(5)  =DOBINT
   59 00050 97000           CON(5)  121
   60               * #x2
   61               * File  INP3.s  29
   62 00055 00000           CON(5)  =FORTYONE
   63               * #y2
   64               * File  INP3.s  30
   65 0005A 00000           CON(5)  =GROB!ZERODRP
   66               * ... -> Clear pixels in specified region [Clear message area]
   67               * File  INP3.s  31
   68 0005F 00000           CON(5)  =TEN
   69               * #x1
   70               * File  INP3.s  32
   71 00064 00000           CON(5)  =THIRTY
   72               * #y1
   73               * File  INP3.s  33
   74 00069 00000           CON(5)  =DOBINT
   75 0006E 97000           CON(5)  121
   76               * #x2
   77               * File  INP3.s  34
   78 00073 00000           CON(5)  =THIRTY
   79               * #y2
   80               * File  INP3.s  35
   81 00078 00000           CON(5)  =LINEON
   82               * ... -> turn ON line of pixels [Draw top horizontal line]
   83               * File  INP3.s  36
   84 0007D 00000           CON(5)  =DOBINT
   85 00082 97000           CON(5)  121
   86               * #x1
   87               * File  INP3.s  37
   88 00087 00000           CON(5)  =THIRTY
   89               * #y1
   90               * File  INP3.s  38
   91 0008C 00000           CON(5)  =DOBINT
   92 00091 97000           CON(5)  121
   93               * #x2
   94               * File  INP3.s  39
   95 00096 00000           CON(5)  =FORTY
   96               * #y2
   97               * File  INP3.s  40
   98 0009B 00000           CON(5)  =LINEON
   99               * ... -> turn ON line of pixels [Draw right vertical line]
  100               * File  INP3.s  41
  101 000A0 00000           CON(5)  =TEN
  102               * #x1
  103               * File  INP3.s  42
  104 000A5 00000           CON(5)  =FORTY
  105               * #y1
  106               * File  INP3.s  43
  107 000AA 00000           CON(5)  =DOBINT
  108 000AF 97000           CON(5)  121
  109               * #x2
  110               * File  INP3.s  44
  111 000B4 00000           CON(5)  =FORTY
  112               * #y2
  113               * File  INP3.s  45
  114 000B9 00000           CON(5)  =LINEON
  115               * ... -> turn ON line of pixels [Draw bottom horizontal line]
  116               * File  INP3.s  46
  117 000BE 00000           CON(5)  =TEN
  118               * #x1
  119               * File  INP3.s  47
  120 000C3 00000           CON(5)  =THIRTY
  121               * #y1
  122               * File  INP3.s  48
  123 000C8 00000           CON(5)  =TEN
  124               * #x2
  125               * File  INP3.s  49
  126 000CD 00000           CON(5)  =FORTY
  127               * #y2
  128               * File  INP3.s  50
  129 000D2 00000           CON(5)  =LINEON
  130               * ... -> turn ON line of pixels [Draw left vertical line]
  131               * File  INP3.s  51
  132 000D7 00000           CON(5)  =DOCSTR
  133 000DC B2000           CON(5)  43
  134 000E1 54E4455         NIBASC  \ENTER A REAL NUMBER\
            4250214
            02255414C402E455D4245425

  135               * Message $
  136               * File  INP3.s  52
  137 00107 00000           CON(5)  =$>grob
  138               * Create message grob = grob source
  139               * File  INP3.s  53
  140 0010C 00000           CON(5)  =ABUFF
  141               * grob target = STACK grob
  142               * File  INP3.s  54
  143 00111 00000           CON(5)  =TWENTYFIVE
  144               * #x
  145               * File  INP3.s  55
  146 00116 00000           CON(5)  =THIRTYTHREE
  147               * #y
  148               * File  INP3.s  56
  149 0011B 00000           CON(5)  =GROB!
  150               * ... -> store grob into ABUFF [Display message]
  151               * File  INP3.s  57
  152 00120 00000           CON(5)  =VERYSLOW
  153 00125 00000           CON(5)  =VERYSLOW
  154 0012A 00000           CON(5)  =VERYSLOW
  155 0012F 00000           CON(5)  =VERYSLOW
  156               * delay
  157               * File  INP3.s  58
  158 00134 00000           CON(5)  =SEMI
  159               * File  INP3.s  59
  160 00139 00000           CON(5)  ='
  161 0013E 00000           CON(5)  =DOCOL
  162               * Subroutine to restore display [LAM HelpOff]
  163               * File  INP3.s  60
  164 00143 00000           CON(5)  =ABUFF
  165               * grob target [STACK]
  166               * File  INP3.s  61
  167 00148 00000           CON(5)  =TEN
  168               * #x
  169               * File  INP3.s  62
  170 0014D 00000           CON(5)  =THIRTY
  171               * #y
  172               * File  INP3.s  63
  173 00152 00000           CON(5)  =GROB!
  174               * ... -> store grob into ABUFF
  175               * File  INP3.s  64
  176 00157 00000           CON(5)  =SEMI
  177               * File  INP3.s  65
  178 0015C 00000           CON(5)  ='
  179 00161 00000           CON(5)  =DOLAM
  180 00166 80              CON(2)  8
  181 00168 3586F67         NIBASC  \ShowHelp\
            78456C6
            07
  182               * File  INP3.s  66
  183 00178 00000           CON(5)  ='
  184 0017D 00000           CON(5)  =DOLAM
  185 00182 70              CON(2)  7
  186 00184 8456C60         NIBASC  \HelpOff\
            7F46666
  187               * File  INP3.s  67
  188 00192 00000           CON(5)  =TWO
  189 00197 00000           CON(5)  =DOBIND
  190               * Create temporary environment
  191               * File  INP3.s  68
  192
  193               * File  INP3.s  69
  194 0019C 00000           CON(5)  =BEGIN
  195               * Beginning of type checking loop
  196               * File  INP3.s  70
  197 001A1 00000           CON(5)  =DOCOL
  198               * InputLine parameters
  199               * File  INP3.s  72
  200 001A6 00000           CON(5)  =DOCSTR
  201 001AB 32000           CON(5)  35
  202 001B0 54E6475         NIBASC  \Enter a number:\
            6270216
            02E657D6265627A3

  203               * $Prompt = prompt sting displayed in area 2a
  204               * File  INP3.s  73
  205 001CE 00000           CON(5)  =NULL$
  206               * $Input = Default input string [NULL$]
  207               * File  INP3.s  74
  208 001D3 00000           CON(5)  =ZERO
  209               * CursorPos = Initial cursor position [0 = end of row]
  210               * File  INP3.s  75
  211 001D8 00000           CON(5)  =ONE
  212               * #Mode = initial insert/replace mode [1 = insert mode]
  213               * File  INP3.s  76
  214 001DD 00000           CON(5)  =ONE
  215               * #Entry = initial entry mode [1 = program/immediate entry]
  216               * File  INP3.s  77
  217 001E2 00000           CON(5)  =TWO
  218               * #Alpha = initial alpha lock mode [2 = alpha unlocked ]
  219               * File  INP3.s  78
  220 001E7 00000           CON(5)  =DOLIST
  221               * Input Menu objects
  222               * File  INP3.s  79
  223 001EC 00000           CON(5)  =<SkipKey
  224               * Menu label 1 = Skip left key
  225               * File  INP3.s  80
  226 001F1 00000           CON(5)  =>SkipKey
  227               * Menu lable 2 = Skip right key
  228               * File  INP3.s  81
  229 001F6 00000           CON(5)  =<DelKey
  230               * Menu label 3 = Delete left key
  231               * File  INP3.s  82
  232 001FB 00000           CON(5)  =>DelKey
  233               * Menu label 4 = Delete right key
  234               * File  INP3.s  83
  235 00200 00000           CON(5)  =TogInsertKey
  236               * Menu label 5 = Insert/replace mode key
  237               * File  INP3.s  84
  238 00205 00000           CON(5)  =DOLIST
  239               * Menu label 6
  240               * File  INP3.s  85
  241 0020A 00000           CON(5)  =DOCSTR
  242 0020F D0000           CON(5)  13
  243 00214 8454C40         NIBASC  \HELP\
            5
  244               * Menu label $
  245               * File  INP3.s  86
  246 0021C 00000           CON(5)  =DOCOL
  247               * File  INP3.s  87
  248 00221 00000           CON(5)  =TakeOver
  249               * Take over secondary
  250               * File  INP3.s  88
  251 00226 00000           CON(5)  =DOLAM
  252 0022B 80              CON(2)  8
  253 0022D 3586F67         NIBASC  \ShowHelp\
            78456C6
            07
  254 0023D 00000           CON(5)  =EVAL
  255               * Display help message
  256               * File  INP3.s  89
  257 00242 00000           CON(5)  =REPEATER
  258 00247 00000           CON(5)  =SIX
  259 0024C 00000           CON(5)  =NOP
  260               * Do nothing while menu key 6 is depressed
  261               * File  INP3.s  90
  262 00251 00000           CON(5)  =DOLAM
  263 00256 70              CON(2)  7
  264 00258 8456C60         NIBASC  \HelpOff\
            7F46666
  265 00266 00000           CON(5)  =EVAL
  266               * Restore display
  267               * File  INP3.s  91
  268 0026B 00000           CON(5)  =SEMI
  269               * File  INP3.s  92
  270 00270 00000           CON(5)  =SEMI
  271               * File  INP3.s  93
  272 00275 00000           CON(5)  =SEMI
  273               * File  INP3.s  94
  274 0027A 00000           CON(5)  =ONE
  275               * #Row = first row of the menu to be displayed [1 = first row]
  276               * File  INP3.s  95
  277 0027F 00000           CON(5)  =FALSE
  278               * Abort = flag specifying action of ON key [FALSE = clear cmd line]
  279               * File  INP3.s  96
  280 00284 00000           CON(5)  =ONE
  281               * #Action = post command line processing if terminated by ENTER key
  282               * File  INP3.s  97
  283               * [ONE = parse the input string, return input string]
  284               * File  INP3.s  98
  285               * [      and the resulting object                   ]
  286               * File  INP3.s  99
  287 00289 00000           CON(5)  =InputLine
  288               * ... -> $Input Ob TRUE/FALSE
  289               * Output and type checking handling
  290               * File  INP3.s  101
  291 0028E 00000           CON(5)  =NOTcase
  292 00293 00000           CON(5)  =DOCOL
  293 00298 00000           CON(5)  =%0
  294 0029D 00000           CON(5)  =TRUE
  295 002A2 00000           CON(5)  =SEMI
  296               * End loop, return %0 if user aborted with ON
  297               * File  INP3.s  102
  298 002A7 00000           CON(5)  =DUPTYPEREAL?
  299 002AC 00000           CON(5)  =case
  300 002B1 00000           CON(5)  =DOCOL
  301               * IF the object is a real number
  302               * File  INP3.s  103
  303 002B6 00000           CON(5)  =SWAPDROP
  304               * Discard the $Input
  305               * File  INP3.s  104
  306 002BB 00000           CON(5)  =%1
  307               * Return %1 to signal a real number result
  308               * File  INP3.s  105
  309 002C0 00000           CON(5)  =TRUE
  310               * End of loop
  311               * File  INP3.s  106
  312 002C5 00000           CON(5)  =SEMI
  313               * File  INP3.s  107
  314 002CA 00000           CON(5)  =2DROP
  315               * IF NOT real number
  316               * File  INP3.s  108
  317 002CF 00000           CON(5)  =DOLAM
  318 002D4 80              CON(2)  8
  319 002D6 3586F67         NIBASC  \ShowHelp\
            78456C6
            07
  320 002E6 00000           CON(5)  =EVAL
  321               * Display a warning
  322               * File  INP3.s  109
  323 002EB 00000           CON(5)  =DOLAM
  324 002F0 70              CON(2)  7
  325 002F2 8456C60         NIBASC  \HelpOff\
            7F46666
  326 00300 00000           CON(5)  =EVAL
  327               * Restore display
  328               * File  INP3.s  110
  329 00305 00000           CON(5)  =FALSE
  330               * Loop must continue
  331               * File  INP3.s  111
  332 0030A 00000           CON(5)  =SEMI
  333               * File  INP3.s  112
  334 0030F 00000           CON(5)  =UNTIL
  335               * File  INP3.s  113
  336 00314 00000           CON(5)  =ABND
  337               * Abandon temporary environment
  338               * File  INP3.s  114
  339 00319 00000           CON(5)  =ClrDAsOK
  340               * Redraw display
  341               * File  INP3.s  115
  342 0031E 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun May 31 12:50:54 2009
V3.0.9 (04/15/2007)   Symbol Table                       INP3.a         Page    2

 $>grob                            Ext                   -   137
 %0                                Ext                   -   293
 %1                                Ext                   -   306
 '                                 Ext                   -    26   160   178
                                         183
 0LASTOWDOB!                       Ext                   -    20
 2DROP                             Ext                   -   314
 <DelKey                           Ext                   -   229
 <SkipKey                          Ext                   -   223
 >DelKey                           Ext                   -   232
 >SkipKey                          Ext                   -   226
 ABND                              Ext                   -   336
 ABUFF                             Ext                   -    30    49   140
                                         164
 BEGIN                             Ext                   -   194
 CK0NOLASTWD                       Ext                   -    23
 ClrDAsOK                          Ext                   -   339
 DOBIND                            Ext                   -   189
 DOBINT                            Ext                   -    39    58    74
                                          84    91   107
 DOCOL                             Ext                   -    18    27   161
                                         197   246   292   300
 DOCSTR                            Ext                   -   132   200   241
 DOLAM                             Ext                   -   179   184   251
                                         262   317   323
 DOLIST                            Ext                   -   220   238
 DUPTYPEREAL?                      Ext                   -   298
 EVAL                              Ext                   -   254   265   320
                                         326
 FALSE                             Ext                   -   277   329
 FORTY                             Ext                   -    95   104   111
                                         126
 FORTYONE                          Ext                   -    43    62
 GROB!                             Ext                   -   149   173
 GROB!ZERODRP                      Ext                   -    65
 InputLine                         Ext                   -   287
 LINEON                            Ext                   -    81    98   114
                                         129
 NOP                               Ext                   -   259
 NOTcase                           Ext                   -   291
 NULL$                             Ext                   -   205
 ONE                               Ext                   -   211   214   274
                                         280
 REPEATER                          Ext                   -   257
 SEMI                              Ext                   -   158   176   268
                                         270   272   295   312   332   342
 SIX                               Ext                   -   258
 SUBGROB                           Ext                   -    46
 SWAPDROP                          Ext                   -   303
 TEN                               Ext                   -    33    52    68
                                         101   117   123   167
 THIRTY                            Ext                   -    36    55    71
                                          78    88   120   170
 THIRTYTHREE                       Ext                   -   146
 TRUE                              Ext                   -   294   309
 TWENTYFIVE                        Ext                   -   143
 TWO                               Ext                   -   188   217
 TakeOver                          Ext                   -   248
 TogInsertKey                      Ext                   -   235
 UNTIL                             Ext                   -   334
 VERYSLOW                          Ext                   -   152   153   154
                                         155
 ZERO                              Ext                   -   208
 case                              Ext                   -   299
Saturn Assembler                                       Sun May 31 12:50:54 2009
V3.0.9 (04/15/2007)   Statistics                         INP3.a         Page    3

Input Parameters

  Source file name is INP3.a

  Listing file name is INP3.l

  Object file name is INP3.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
