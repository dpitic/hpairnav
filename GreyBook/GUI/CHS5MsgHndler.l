Saturn Assembler                                       Fri May 15 11:16:14 2009
V3.0.9 (04/15/2007)                                      CHS5MsgHndler. Page    1

    1             * File  CHS5MsgHndler.s 1
    2             * RPL
    3             * File  CHS5MsgHndler.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS5MsgHndler.s, part of the CHS5.hpp project, created by <> on 15/05/2009
    5             *********************************************************************
    6             * DESCRIPTION:     Message handler for choose box.  Placed in a
    7             *                  separate file to allow debugging using Debug4x.
    8             *
    9             * File  CHS5MsgHndler.s 7
   10             * Cancel the choose box -> FALSE
   11             * File  CHS5MsgHndler.s 8
   12             * Accept the choices -> FALSE      [ No items chosen ]
   13             *                         (                    -> Item TRUE  [ Single-pick ]     )
   14             *                         (                    -> Items TRUE [ Multi-pick ]      )
   15             *
   16             * File  CHS5MsgHndler.s 12
   17 00000       =CHS5MsgHndler
   18             * File  CHS5MsgHndler.s 13
   19 00000 00000         CON(5)  =DOCOL
   20             * Message handler
   21             * File  CHS5MsgHndler.s 14
   22 00005 00000         CON(5)  =SIXTY
   23 0000A 00000         CON(5)  =#=casedrop
   24 0000F 00000         CON(5)  =DOCOL
   25             * Choose box size -> FLAG [TRUE = full-screen, FALSE = partial-screen]
   26             * File  CHS5MsgHndler.s 15
   27 00014 00000         CON(5)  =TRUE
   28             * TRUE = full-screen
   29             * File  CHS5MsgHndler.s 16
   30 00019 00000         CON(5)  =TRUE
   31             * Message was handled
   32             * File  CHS5MsgHndler.s 17
   33 0001E 00000         CON(5)  =SEMI
   34             * File  CHS5MsgHndler.s 18
   35 00023 00000         CON(5)  =DOBINT
   36 00028 35000         CON(5)  83
   37 0002D 00000         CON(5)  =#=casedrop
   38 00032 00000         CON(5)  =DOCOL
   39             * Choose box menu -> { menu }
   40             * File  CHS5MsgHndler.s 19
   41 00037 00000         CON(5)  ='
   42 0003C 00000         CON(5)  =DOCOL
   43             * Place secondary on stack
   44             * File  CHS5MsgHndler.s 20
   45 00041 00000         CON(5)  =NoExitAction
   46             * Ensure the menu won't be saved as the last menu
   47             * File  CHS5MsgHndler.s 21
   48 00046 00000         CON(5)  =DOLIST
   49             * File  CHS5MsgHndler.s 22
   50 0004B 00000         CON(5)  =DOLIST
   51             * File  CHS5MsgHndler.s 23
   52 00050 00000         CON(5)  =DOCSTR
   53 00055 D0000         CON(5)  13
   54 0005A 54449         NIBASC  \EDIT\
            445
   55 00062 00000         CON(5)  =DOCOL
   56             * Softkey 1 label $
   57             * File  CHS5MsgHndler.s 24
   58 00067 00000         CON(5)  =TakeOver
   59             * Softkey 1 action definition placeholder
   60             * Inputline parameters
   61             * File  CHS5MsgHndler.s 26
   62 0006C 00000         CON(5)  =DOCSTR
   63 00071 B1000         CON(5)  27
   64 00076 54469         NIBASC  \Edit String\
            64702
            35472796E676

   65             * $Prompt
   66             * File  CHS5MsgHndler.s 27
   67 0008C 00000         CON(5)  =19GETLAM
   68             * -> { choice_list }
   69             * File  CHS5MsgHndler.s 28
   70 00091 00000         CON(5)  =18GETLAM
   71             * -> #index_of_highlighted_item
   72             * File  CHS5MsgHndler.s 29
   73 00096 00000         CON(5)  =NTHCOMPDROP
   74             * $Input [Default input $] [ ... -> $   ]
   75             * File  CHS5MsgHndler.s 30
   76 0009B 00000         CON(5)  =ZERO
   77             * #CursorPos [Initial cursor position]
   78             * File  CHS5MsgHndler.s 31
   79 000A0 00000         CON(5)  =ONE
   80             * #Mode [Initial insert/replace mode: #1 = insert mode]
   81             * File  CHS5MsgHndler.s 32
   82 000A5 00000         CON(5)  =ONE
   83             * #Entry [Initial entry mode: #1 = program/immediate entry]
   84             * File  CHS5MsgHndler.s 33
   85 000AA 00000         CON(5)  =ONE
   86             * #Alpha [Initial alpha-lock mode: #1 = alpha locked]
   87             * File  CHS5MsgHndler.s 34
   88 000AF 00000         CON(5)  =DOLIST
   89             * Menu
   90             * File  CHS5MsgHndler.s 35
   91 000B4 00000         CON(5)  =<SkipKey
   92             * Softkey 1
   93             * File  CHS5MsgHndler.s 36
   94 000B9 00000         CON(5)  =>SkipKey
   95             * Softkey 2
   96             * File  CHS5MsgHndler.s 37
   97 000BE 00000         CON(5)  =<DelKey
   98             * Softkey 3
   99             * File  CHS5MsgHndler.s 38
  100 000C3 00000         CON(5)  =>DelKey
  101             * Softkey 4
  102             * File  CHS5MsgHndler.s 39
  103 000C8 00000         CON(5)  =TogInsertKey
  104             * Softkey 5 [Insert/replace mode key]
  105             * File  CHS5MsgHndler.s 40
  106 000CD 00000         CON(5)  =SEMI
  107             * File  CHS5MsgHndler.s 41
  108 000D2 00000         CON(5)  =ONE
  109             * #Row [first row of menu to be displayed]
  110             * File  CHS5MsgHndler.s 42
  111 000D7 00000         CON(5)  =FALSE
  112             * Abort [Action of ON key] [FALSE = ON key clears command line]
  113             * File  CHS5MsgHndler.s 43
  114 000DC 00000         CON(5)  =ZERO
  115             * #Action [Post cmd line processing] [#0 = no processing]
  116             * File  CHS5MsgHndler.s 44
  117 000E1 00000         CON(5)  =InputLine
  118             * Run the input line [ ... -> ob FLAG ]
  119             * File  CHS5MsgHndler.s 45
  120 000E6 00000         CON(5)  =IT
  121 000EB 00000         CON(5)  =DOCOL
  122             * TRUE [Edit was accepted] [ -> ob ]
  123             * File  CHS5MsgHndler.s 46
  124 000F0 00000         CON(5)  =18GETLAM
  125             * -> #index_of_highlighted_item
  126             * File  CHS5MsgHndler.s 47
  127 000F5 00000         CON(5)  =19GETLAM
  128             * -> { choice_list }
  129             * File  CHS5MsgHndler.s 48
  130 000FA 00000         CON(5)  =PUTLIST
  131             * ob # {} -> {}'
  132             * File  CHS5MsgHndler.s 49
  133 000FF 00000         CON(5)  =19PUTLAM
  134             * {}' -> [Store the new list back]
  135             * File  CHS5MsgHndler.s 50
  136 00104 00000         CON(5)  =SEMI
  137             * File  CHS5MsgHndler.s 51
  138 00109 00000         CON(5)  =ClrDAsOK
  139             * Signal the display has been altered
  140             * File  CHS5MsgHndler.s 52
  141 0010E 00000         CON(5)  =SEMI
  142             * File  CHS5MsgHndler.s 53
  143 00113 00000         CON(5)  =SEMI
  144             * File  CHS5MsgHndler.s 54
  145 00118 00000         CON(5)  =NullMenuKey
  146             * Softkey 2
  147             * File  CHS5MsgHndler.s 55
  148 0011D 00000         CON(5)  =NullMenuKey
  149             * Softkey 3
  150             * File  CHS5MsgHndler.s 56
  151 00122 00000         CON(5)  =NullMenuKey
  152             * Softkey 4
  153             * File  CHS5MsgHndler.s 57
  154 00127 00000         CON(5)  =DOLIST
  155             * Softkey 5
  156             * File  CHS5MsgHndler.s 58
  157 0012C 00000         CON(5)  =DOCSTR
  158 00131 F0000         CON(5)  15
  159 00136 8214E         NIBASC  \(AN(L\
            482C4
  160             * Softkey label $
  161             * File  CHS5MsgHndler.s 59
  162 00140 00000         CON(5)  =DOROMP
  163 00145 00000         CON(6)  =~DoCKeyCance
            0
  164             * Softkey action
  165             * File  CHS5MsgHndler.s 60
  166 0014B 00000         CON(5)  =SEMI
  167             * File  CHS5MsgHndler.s 61
  168 00150 00000         CON(5)  =DOLIST
  169             * Softkey 6
  170             * File  CHS5MsgHndler.s 62
  171 00155 00000         CON(5)  =DOCSTR
  172 0015A 90000         CON(5)  9
  173 0015F F4B4          NIBASC  \OK\
  174             * Softkey label $
  175             * File  CHS5MsgHndler.s 63
  176 00163 00000         CON(5)  =DOROMP
  177 00168 00000         CON(6)  =~DoCKeyOK
            0
  178             * Softkey action
  179             * File  CHS5MsgHndler.s 64
  180 0016E 00000         CON(5)  =SEMI
  181             * File  CHS5MsgHndler.s 65
  182 00173 00000         CON(5)  =SEMI
  183             * File  CHS5MsgHndler.s 66
  184 00178 00000         CON(5)  =SEMI
  185             * File  CHS5MsgHndler.s 67
  186 0017D 00000         CON(5)  =TRUE
  187             * Message was handled
  188             * File  CHS5MsgHndler.s 68
  189 00182 00000         CON(5)  =SEMI
  190             * File  CHS5MsgHndler.s 69
  191 00187 00000         CON(5)  =BINT_96d
  192 0018C 00000         CON(5)  =#=casedrop
  193 00191 00000         CON(5)  =DOCOL
  194             * OK key event [ -> FLAG [FALSE = OK not allowed, TRUE = ok allowed]
  195             * File  CHS5MsgHndler.s 70
  196 00196 00000         CON(5)  =19GETLAM
  197             * Recall data list [ -> { choice_list } ]
  198             * File  CHS5MsgHndler.s 71
  199 0019B 00000         CON(5)  =TRUE
  200             * OK key allowed
  201             * File  CHS5MsgHndler.s 72
  202 001A0 00000         CON(5)  =TRUE
  203             * Message was handled
  204             * File  CHS5MsgHndler.s 73
  205 001A5 00000         CON(5)  =SEMI
  206             * File  CHS5MsgHndler.s 74
  207 001AA 00000         CON(5)  =DROPFALSE
  208             * Other messages not handled
  209             * File  CHS5MsgHndler.s 75
  210 001AF 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri May 15 11:16:14 2009
V3.0.9 (04/15/2007)   Symbol Table                       CHS5MsgHndler. Page    2

 #=casedrop                        Ext                   -    23    37   192
 '                                 Ext                   -    41
 18GETLAM                          Ext                   -    70   124
 19GETLAM                          Ext                   -    67   127   196
 19PUTLAM                          Ext                   -   133
 <DelKey                           Ext                   -    97
 <SkipKey                          Ext                   -    91
 >DelKey                           Ext                   -   100
 >SkipKey                          Ext                   -    94
 BINT_96d                          Ext                   -   191
=CHS5MsgHndler                     Rel       0 #00000000 -    17
 ClrDAsOK                          Ext                   -   138
 DOBINT                            Ext                   -    35
 DOCOL                             Ext                   -    19    24    38
                                          42    55   121   193
 DOCSTR                            Ext                   -    52    62   157
                                         171
 DOLIST                            Ext                   -    48    50    88
                                         154   168
 DOROMP                            Ext                   -   162   176
 DROPFALSE                         Ext                   -   207
 FALSE                             Ext                   -   111
 IT                                Ext                   -   120
 InputLine                         Ext                   -   117
 NTHCOMPDROP                       Ext                   -    73
 NoExitAction                      Ext                   -    45
 NullMenuKey                       Ext                   -   145   148   151
 ONE                               Ext                   -    79    82    85
                                         108
 PUTLIST                           Ext                   -   130
 SEMI                              Ext                   -    33   106   136
                                         141   143   166   180   182   184   189
                                         205   210
 SIXTY                             Ext                   -    22
 TRUE                              Ext                   -    27    30   186
                                         199   202
 TakeOver                          Ext                   -    58
 TogInsertKey                      Ext                   -   103
 ZERO                              Ext                   -    76   114
 ~DoCKeyCance                      Ext                   -   163
 ~DoCKeyOK                         Ext                   -   177
Saturn Assembler                                       Fri May 15 11:16:14 2009
V3.0.9 (04/15/2007)   Statistics                         CHS5MsgHndler. Page    3

Input Parameters

  Source file name is CHS5MsgHndler.a

  Listing file name is CHS5MsgHndler.l

  Object file name is CHS5MsgHndler.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
