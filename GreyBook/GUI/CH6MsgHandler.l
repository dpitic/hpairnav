Saturn Assembler                                       Fri May 15 18:50:33 2009
V3.0.9 (04/15/2007)                                      CH6MsgHandler. Page    1

    1               * File  CH6MsgHandler.s 1
    2               * RPL
    3               * File  CH6MsgHandler.s 2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CH6MsgHandler.s, part of the CHS6.hpp project, created by <> on 15/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Choose box message handler placed in a separate
    7               *                  file to allow debugging using Debug4x.
    8               *
    9               * File header
   10               * File  CH6MsgHandler.s 8
   11               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS6.h
   12
   13               =RomId  EQU     #200
   14               * ROMID set to 200
   15
   16
   17
   18               *|| Resuming file CH6MsgHandler.s at line 8
   19               * Check label grob
   20               * File  CH6MsgHandler.s 10
   21               * Display an item [#index #highlight_row -> ]
   22               * File  CH6MsgHandler.s 11
   23               * Check/uncheck current item in multi-pick choose box
   24               * File  CH6MsgHandler.s 12
   25               * Check all items in a multi-pick choose box [left-shifted]
   26               * File  CH6MsgHandler.s 13
   27               * Uncheck all items in a multi-pick choose box [righ-shifted]
   28               * File  CH6MsgHandler.s 14
   29               * Cancel the choose box [ -> FALSE ]
   30               * File  CH6MsgHandler.s 15
   31               * Accept the choices [ -> FALSE ]      = No items selected
   32               * File  CH6MsgHandler.s 16
   33               * [ -> item TRUE ]  = Single-pick
   34               * File  CH6MsgHandler.s 17
   35               * [ -> items TRUE ] = Multi-pick
   36               * Message handler definition
   37               * File  CH6MsgHandler.s 19
   38 00000         =CHS6MsgHandler
   39               * File  CH6MsgHandler.s 20
   40 00000 00000           CON(5)  =DOCOL
   41               * File  CH6MsgHandler.s 21
   42 00005 00000           CON(5)  =SIXTYONE
   43 0000A 00000           CON(5)  =#=casedrop
   44               * Pick Type [ -> FLAG ] [TRUE = Multi-pick, FALSE = Single-pick]
   45               * File  CH6MsgHandler.s 22
   46 0000F 00000           CON(5)  =TrueTrue
   47               * TRUE = Multi-pick, TRUE message was handled
   48               * File  CH6MsgHandler.s 23
   49 00014 00000           CON(5)  =SIXTYTWO
   50 00019 00000           CON(5)  =#=casedrop
   51 0001E 00000           CON(5)  =DOCOL
   52               * Item count [ -> #number_of_items_in_list ]
   53               * File  CH6MsgHandler.s 24
   54 00023 00000           CON(5)  =NINE
   55               * #number_of_items_in_list = 9
   56               * File  CH6MsgHandler.s 25
   57 00028 00000           CON(5)  =TRUE
   58               * Message was handled
   59               * File  CH6MsgHandler.s 26
   60 0002D 00000           CON(5)  =SEMI
   61               * File  CH6MsgHandler.s 27
   62 00032 00000           CON(5)  =SEVENTY
   63 00037 00000           CON(5)  =#=casedrop
   64 0003C 00000           CON(5)  =DOCOL
   65               * Title String [ -> $title ]
   66               * File  CH6MsgHandler.s 28
   67 00041 00000           CON(5)  =15GETLAM
   68               * -> { list of picked indicies }
   69               * File  CH6MsgHandler.s 29
   70 00046 00000           CON(5)  =LENCOMP
   71               * {} -> #n [#n = number of objects in list]
   72               * File  CH6MsgHandler.s 30
   73 0004B 00000           CON(5)  =DOCOL
   74               * File  CH6MsgHandler.s 31
   75 00050 00000           CON(5)  =ZERO
   76 00055 00000           CON(5)  =#=casedrop
   77               * No choices
   78               * File  CH6MsgHandler.s 32
   79 0005A 00000           CON(5)  =DOCSTR
   80 0005F 51000           CON(5)  21
   81 00064 E4F4026         NIBASC  \NO FROGS\
            425F474
            35
   82               * -> $
   83               * File  CH6MsgHandler.s 33
   84 00074 00000           CON(5)  =ONE
   85 00079 00000           CON(5)  =#=casedrop
   86               * Once choice picked
   87               * File  CH6MsgHandler.s 34
   88 0007E 00000           CON(5)  =DOCSTR
   89 00083 11000           CON(5)  17
   90 00088 1302642         NIBASC  \1 FROG\
            5F474
   91               * -> $
   92               * File  CH6MsgHandler.s 35
   93 00094 00000           CON(5)  =UNCOERCE
   94               * More than 1 choice picked [ # -> % ]
   95               * File  CH6MsgHandler.s 36
   96 00099 00000           CON(5)  =EDITDECOMP$
   97               * % -> $
   98               * File  CH6MsgHandler.s 37
   99 0009E 00000           CON(5)  =DOCSTR
  100 000A3 11000           CON(5)  17
  101 000A8 026425F         NIBASC  \ FROGS\
            47435
  102 000B4 00000           CON(5)  =&$
  103               * $ $' -> $''
  104               * File  CH6MsgHandler.s 38
  105 000B9 00000           CON(5)  =SEMI
  106               * File  CH6MsgHandler.s 39
  107 000BE 00000           CON(5)  =DOCSTR
  108 000C3 31000           CON(5)  19
  109 000C8 0205943         NIBASC  \ PICKED\
            4B45444
  110 000D6 00000           CON(5)  =&$
  111               * $ $ -> $title
  112               * File  CH6MsgHandler.s 40
  113 000DB 00000           CON(5)  =TRUE
  114               * Message was handled
  115               * File  CH6MsgHandler.s 41
  116 000E0 00000           CON(5)  =SEMI
  117               * File  CH6MsgHandler.s 42
  118 000E5 00000           CON(5)  =DOBINT
  119 000EA 05000           CON(5)  80
  120 000EF 00000           CON(5)  =#=casedrop
  121 000F4 00000           CON(5)  =DOCOL
  122               * Item String [ #item_index -> $item_string ]
  123               * File  CH6MsgHandler.s 43
  124 000F9 00000           CON(5)  =UNCOERCE
  125               * #item_index -> %item_real
  126               * File  CH6MsgHandler.s 44
  127 000FE 00000           CON(5)  =EDITDECOMP$
  128               * %item_real -> $
  129               * File  CH6MsgHandler.s 45
  130 00103 00000           CON(5)  =DOCSTR
  131 00108 F0000           CON(5)  15
  132 0010D 6427F67         NIBASC  \Frog \
            602
  133 00117 00000           CON(5)  =SWAP&$
  134               * $ $' -> $item_string
  135               * File  CH6MsgHandler.s 46
  136 0011C 00000           CON(5)  =TRUE
  137               * Message was handled
  138               * File  CH6MsgHandler.s 47
  139 00121 00000           CON(5)  =SEMI
  140               * File  CH6MsgHandler.s 48
  141 00126 00000           CON(5)  =DOBINT
  142 0012B 35000           CON(5)  83
  143 00130 00000           CON(5)  =#=casedrop
  144 00135 00000           CON(5)  =DOCOL
  145               * Choose box menu [ -> { menu } ]
  146               * File  CH6MsgHandler.s 49
  147 0013A 00000           CON(5)  ='
  148 0013F 00000           CON(5)  =DOCOL
  149               * File  CH6MsgHandler.s 50
  150 00144 00000           CON(5)  =NoExitAction
  151               * Ensure menu won't be saved as the last menu
  152               * File  CH6MsgHandler.s 51
  153 00149 00000           CON(5)  =DOLIST
  154               * File  CH6MsgHandler.s 52
  155 0014E 00000           CON(5)  =NullMenuKey
  156               * Softkey 1
  157               * File  CH6MsgHandler.s 53
  158 00153 00000           CON(5)  =NullMenuKey
  159               * Softkey 2
  160               * File  CH6MsgHandler.s 54
  161 00158 00000           CON(5)  =DOLIST
  162               * Softkey 3
  163               * File  CH6MsgHandler.s 55
  164 0015D 00000           CON(5)  =DOCOL
  165               * Softkey label [ -> $label/grob ]
  166               * File  CH6MsgHandler.s 56
  167 00162 00000           CON(5)  =TakeOver
  168               * Custom key definition placeholder
  169               * File  CH6MsgHandler.s 57
  170 00167 00000           CON(5)  =DOROMP
  171 0016C 000000          CON(6)  =~grobCheckKe
  172               * Check label grob [ -> grob ]
  173               * File  CH6MsgHandler.s 58
  174 00172 00000           CON(5)  =SEMI
  175               * File  CH6MsgHandler.s 59
  176 00177 00000           CON(5)  =DOLIST
  177               * Softkey action
  178               * File  CH6MsgHandler.s 60
  179 0017C 00000           CON(5)  =DOCOL
  180               * Primary key plane action
  181               * File  CH6MsgHandler.s 61
  182 00181 00000           CON(5)  =TakeOver
  183               * Custom key definition placeholder
  184               * File  CH6MsgHandler.s 62
  185 00186 00000           CON(5)  =DOROMP
  186 0018B 000000          CON(6)  =~DoCKeyCheck
  187               * Check/uncheck current item in multi-pick choose box
  188               * File  CH6MsgHandler.s 63
  189 00191 00000           CON(5)  =DOROMP
  190 00196 000000          CON(6)  =~LEDispPromp
  191               * Display choose box title
  192               * File  CH6MsgHandler.s 64
  193 0019C 00000           CON(5)  =SEMI
  194               * File  CH6MsgHandler.s 65
  195 001A1 00000           CON(5)  =DOCOL
  196               * Left-shift plane action
  197               * File  CH6MsgHandler.s 66
  198 001A6 00000           CON(5)  =TakeOver
  199               * Custom key definition placeholder
  200               * File  CH6MsgHandler.s 67
  201 001AB 00000           CON(5)  =DOROMP
  202 001B0 000000          CON(6)  =~DoCKeyChAll
  203               * Check all items in multi-pick choose box
  204               * File  CH6MsgHandler.s 68
  205 001B6 00000           CON(5)  =DOROMP
  206 001BB 000000          CON(6)  =~LEDispPromp
  207               * Display choose box title
  208               * File  CH6MsgHandler.s 69
  209 001C1 00000           CON(5)  =SEMI
  210               * File  CH6MsgHandler.s 70
  211 001C6 00000           CON(5)  =DOCOL
  212               * Right-shift plane action
  213               * File  CH6MsgHandler.s 71
  214 001CB 00000           CON(5)  =TakeOver
  215               * Custom key definition placeholder
  216               * File  CH6MsgHandler.s 72
  217 001D0 00000           CON(5)  =DOROMP
  218 001D5 000000          CON(6)  =~DoCKeyUnChA
  219               * Uncheck all items in multi-pick choose box
  220               * File  CH6MsgHandler.s 73
  221 001DB 00000           CON(5)  =DOROMP
  222 001E0 000000          CON(6)  =~LEDispPromp
  223               * Display choose box title
  224               * File  CH6MsgHandler.s 74
  225 001E6 00000           CON(5)  =SEMI
  226               * File  CH6MsgHandler.s 75
  227 001EB 00000           CON(5)  =SEMI
  228               * File  CH6MsgHandler.s 76
  229 001F0 00000           CON(5)  =SEMI
  230               * File  CH6MsgHandler.s 77
  231 001F5 00000           CON(5)  =NullMenuKey
  232               * Softkey 4
  233               * File  CH6MsgHandler.s 78
  234 001FA 00000           CON(5)  =DOLIST
  235               * Softkey 5
  236               * File  CH6MsgHandler.s 79
  237 001FF 00000           CON(5)  =DOCSTR
  238 00204 F0000           CON(5)  15
  239 00209 8214E48         NIBASC  \(AN(L\
            2C4
  240               * Softkey $label
  241               * File  CH6MsgHandler.s 80
  242 00213 00000           CON(5)  =DOROMP
  243 00218 000000          CON(6)  =~DoCKeyCance
  244               * Softkey action
  245               * File  CH6MsgHandler.s 81
  246 0021E 00000           CON(5)  =SEMI
  247               * File  CH6MsgHandler.s 82
  248 00223 00000           CON(5)  =DOLIST
  249               * Softkey 6
  250               * File  CH6MsgHandler.s 83
  251 00228 00000           CON(5)  =DOCSTR
  252 0022D 90000           CON(5)  9
  253 00232 F4B4            NIBASC  \OK\
  254               * Softkey $label
  255               * File  CH6MsgHandler.s 84
  256 00236 00000           CON(5)  =DOROMP
  257 0023B 000000          CON(6)  =~DoCKeyOK
  258               * Softkey action
  259               * File  CH6MsgHandler.s 85
  260 00241 00000           CON(5)  =SEMI
  261               * File  CH6MsgHandler.s 86
  262 00246 00000           CON(5)  =SEMI
  263               * File  CH6MsgHandler.s 87
  264 0024B 00000           CON(5)  =SEMI
  265               * File  CH6MsgHandler.s 88
  266 00250 00000           CON(5)  =TRUE
  267               * Message was handled
  268               * File  CH6MsgHandler.s 89
  269 00255 00000           CON(5)  =SEMI
  270               * File  CH6MsgHandler.s 90
  271 0025A 00000           CON(5)  =DROPFALSE
  272               * Other messages not handled
  273               * File  CH6MsgHandler.s 91
  274 0025F 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri May 15 18:50:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       CH6MsgHandler. Page    2

 #=casedrop                        Ext                   -    43    50    63
                                          76    85   120   143
 &$                                Ext                   -   102   110
 '                                 Ext                   -   147
 15GETLAM                          Ext                   -    67
=CHS6MsgHandler                    Rel       0 #00000000 -    38
 DOBINT                            Ext                   -   118   141
 DOCOL                             Ext                   -    40    51    64
                                          73   121   144   148   164   179   195
                                         211
 DOCSTR                            Ext                   -    79    88    99
                                         107   130   237   251
 DOLIST                            Ext                   -   153   161   176
                                         234   248
 DOROMP                            Ext                   -   170   185   189
                                         201   205   217   221   242   256
 DROPFALSE                         Ext                   -   271
 EDITDECOMP$                       Ext                   -    96   127
 LENCOMP                           Ext                   -    70
 NINE                              Ext                   -    54
 NoExitAction                      Ext                   -   150
 NullMenuKey                       Ext                   -   155   158   231
 ONE                               Ext                   -    84
=RomId                             Abs     512 #00000200 -    13
 SEMI                              Ext                   -    60   105   116
                                         139   174   193   209   225   227   229
                                         246   260   262   264   269   274
 SEVENTY                           Ext                   -    62
 SIXTYONE                          Ext                   -    42
 SIXTYTWO                          Ext                   -    49
 SWAP&$                            Ext                   -   133
 TRUE                              Ext                   -    57   113   136
                                         266
 TakeOver                          Ext                   -   167   182   198
                                         214
 TrueTrue                          Ext                   -    46
 UNCOERCE                          Ext                   -    93   124
 ZERO                              Ext                   -    75
 ~DoCKeyCance                      Ext                   -   243
 ~DoCKeyChAll                      Ext                   -   202
 ~DoCKeyCheck                      Ext                   -   186
 ~DoCKeyOK                         Ext                   -   257
 ~DoCKeyUnChA                      Ext                   -   218
 ~LEDispPromp                      Ext                   -   190   206   222
 ~grobCheckKe                      Ext                   -   171
Saturn Assembler                                       Fri May 15 18:50:33 2009
V3.0.9 (04/15/2007)   Statistics                         CH6MsgHandler. Page    3

Input Parameters

  Source file name is CH6MsgHandler.a

  Listing file name is CH6MsgHandler.l

  Object file name is CH6MsgHandler.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
