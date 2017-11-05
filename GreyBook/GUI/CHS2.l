Saturn Assembler                                       Thu May 14 18:02:57 2009
V3.0.9 (04/15/2007)                                      CHS2.a         Page    1

    1             * File  CHS2.s  1
    2             * RPL
    3             * File  CHS2.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS2.s, part of the CHS2.hpp project, created by <> on 14/05/2009
    5             ********************************************************************
    6             * DESCRIPTION:     Displays a multi-pick, partial-screen choose box.
    7             *                  The Choose FLAG is converted to %.
    8             * COMPATIBILITY:   HP48, HP50
    9             * USAGE:     ( -> %0 [ Cancel selected ] )
   10             *            ( -> { choices } %1 )
   11             *
   12             * File  CHS2.s  10
   13             * Declare Choose as a rompointer
   14             * File  CHS2.s  11
   15 00000 00000         CON(5)  =DOCOL
   16             * File  CHS2.s  12
   17 00005 00000         CON(5)  =AtUserStack
   18             * Clear protection word, no arguments
   19             * Choose box parameters
   20             * The message handler has the following stack diagram:
   21             * File  CHS2.s  15
   22             * <passed objects> #message -> <returned objects> TRUE [ IF handled ]
   23             * File  CHS2.s  16
   24             * <passed objects> #message -> <passed objects > FALSE [ IF NOT handled ]
   25             * File  CHS2.s  17
   26 0000A 00000         CON(5)  ='
   27 0000F 00000         CON(5)  =DOCOL
   28             * Message handler
   29             * File  CHS2.s  18
   30 00014 00000         CON(5)  =SIXTYONE
   31 00019 00000         CON(5)  =#=casedrop
   32             * Pick type [ -> TRUE = multi-pick, -> FALSE = single-pick ]
   33             * File  CHS2.s  19
   34 0001E 00000         CON(5)  =TrueTrue
   35             * TRUE = Multi-pick, TRUE = message was handled
   36             * File  CHS2.s  20
   37 00023 00000         CON(5)  =SIXTYTWO
   38 00028 00000         CON(5)  =#=casedrop
   39 0002D 00000         CON(5)  =DOCOL
   40             * Item count [ -> #number_of_items_in_list ]
   41             * File  CHS2.s  21
   42 00032 00000         CON(5)  =NINE
   43             * 9 items in list
   44             * File  CHS2.s  22
   45 00037 00000         CON(5)  =TRUE
   46             * Message was handled
   47             * File  CHS2.s  23
   48 0003C 00000         CON(5)  =SEMI
   49             * File  CHS2.s  24
   50 00041 00000         CON(5)  =DOBINT
   51 00046 05000         CON(5)  80
   52 0004B 00000         CON(5)  =#=casedrop
   53 00050 00000         CON(5)  =DOCOL
   54             * Item string [ #item_index -> $item_string ]
   55             * File  CHS2.s  25
   56 00055 00000         CON(5)  =UNCOERCE
   57             * #item_index -> %item_index
   58             * File  CHS2.s  26
   59 0005A 00000         CON(5)  =EDITDECOMP$
   60             * %item_index -> $item_index
   61             * File  CHS2.s  27
   62 0005F 00000         CON(5)  =DOCSTR
   63 00064 F0000         CON(5)  15
   64 00069 6427F         NIBASC  \Frog \
            67602
   65             * $
   66             * File  CHS2.s  28
   67 00073 00000         CON(5)  =SWAP&$
   68             * Prepend frog string
   69             * File  CHS2.s  29
   70 00078 00000         CON(5)  =TRUE
   71             * Message was handled
   72             * File  CHS2.s  30
   73 0007D 00000         CON(5)  =SEMI
   74             * File  CHS2.s  31
   75 00082 00000         CON(5)  =DROPFALSE
   76             * Other messages not handled
   77             * File  CHS2.s  32
   78 00087 00000         CON(5)  =SEMI
   79             * File  CHS2.s  33
   80 0008C 00000         CON(5)  =DOCSTR
   81 00091 72000         CON(5)  39
   82 00096 3484F         NIBASC  \CHOOSE SOME FROGS\
            4F435
            540235F4D454026425F47435

   83             * Title Object $
   84             * File  CHS2.s  34
   85 000B8 00000         CON(5)  =ONE
   86             * Decompile object
   87             * File  CHS2.s  35
   88 000BD 00000         CON(5)  =NULL{}
   89             * Data list
   90             * File  CHS2.s  36
   91 000C2 00000         CON(5)  =ONE
   92             * #FocusPos
   93             * File  CHS2.s  37
   94 000C7 00000         CON(5)  =DOROMP
   95 000CC 00000         CON(6)  =~Choose
            0
   96             * Run Choose box [ -> ob FLAG ]
   97             * File  CHS2.s  38
   98 000D2 00000         CON(5)  =COERCEFLAG
   99             * FLAG -> %
  100             * File  CHS2.s  39
  101 000D7 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu May 14 18:02:57 2009
V3.0.9 (04/15/2007)   Symbol Table                       CHS2.a         Page    2

 #=casedrop                        Ext                   -    31    38    52
 '                                 Ext                   -    26
 AtUserStack                       Ext                   -    17
 COERCEFLAG                        Ext                   -    98
 DOBINT                            Ext                   -    50
 DOCOL                             Ext                   -    15    27    39
                                          53
 DOCSTR                            Ext                   -    62    80
 DOROMP                            Ext                   -    94
 DROPFALSE                         Ext                   -    75
 EDITDECOMP$                       Ext                   -    59
 NINE                              Ext                   -    42
 NULL{}                            Ext                   -    88
 ONE                               Ext                   -    85    91
 SEMI                              Ext                   -    48    73    78
                                         101
 SIXTYONE                          Ext                   -    30
 SIXTYTWO                          Ext                   -    37
 SWAP&$                            Ext                   -    67
 TRUE                              Ext                   -    45    70
 TrueTrue                          Ext                   -    34
 UNCOERCE                          Ext                   -    56
 ~Choose                           Ext                   -    95
Saturn Assembler                                       Thu May 14 18:02:57 2009
V3.0.9 (04/15/2007)   Statistics                         CHS2.a         Page    3

Input Parameters

  Source file name is CHS2.a

  Listing file name is CHS2.l

  Object file name is CHS2.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
