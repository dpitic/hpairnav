Saturn Assembler                                       Thu May 14 19:25:24 2009
V3.0.9 (04/15/2007)                                      CHS3.a         Page    1

    1             * File  CHS3.s  1
    2             * RPL
    3             * File  CHS3.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS3.s, part of the CHS3.hpp project, created by <> on 14/05/2009
    5             ********************************************************************
    6             * DESCRIPTION:     Displays a default choose box and uses bint
    7             *                  decompile to decompile the object.  Converts the
    8             *                  FLAG to %.
    9             * COMPATIBILITY:   HP48, HP50
   10             * USAGE:     { -> %0 [ CANCEL key or softkey pressed ] )
   11             *            ( -> { choice } %1 [ ENTER key or OK softkey pressed ] )
   12             *
   13             * File  CHS3.s  11
   14             * File  CHS3.s  12
   15 00000 00000         CON(5)  =DOCOL
   16             * File  CHS3.s  13
   17 00005 00000         CON(5)  =AtUserStack
   18             * Clear protection word, no arguments
   19             * Choose box parameters
   20             * File  CHS3.s  15
   21 0000A 00000         CON(5)  ='DROPFALSE
   22             * Message handler
   23             * File  CHS3.s  16
   24 0000F 00000         CON(5)  =DOCSTR
   25 00014 F0000         CON(5)  15
   26 00019 45944         NIBASC  \TITLE\
            5C454
   27             * Title $
   28             *               THIRTYSIX                     ( Decompile object 36d = 100100b = Display 2nd object, editline appearance )
   29             *        TWENTY                        ( Decompile object 20d = 010100b = Display 1st object, editline appearance )
   30             * File  CHS3.s  19
   31 00023 00000         CON(5)  =SEVENTEEN
   32             * Decompile object 17d = 010001b = Display 1st object, no decompile
   33             * File  CHS3.s  20
   34 00028 00000         CON(5)  =DOLIST
   35             * Data list
   36             * File  CHS3.s  21
   37 0002D 00000         CON(5)  =DOLIST
   38 00032 00000         CON(5)  =DOCSTR
   39 00037 B0000         CON(5)  11
   40 0003C F4E45         NIBASC  \ONE\
            4
   41 00042 00000         CON(5)  =%1
   42 00047 00000         CON(5)  =SEMI
   43             * These individual lists are returned
   44             * File  CHS3.s  22
   45 0004C 00000         CON(5)  =DOLIST
   46 00051 00000         CON(5)  =DOCSTR
   47 00056 B0000         CON(5)  11
   48 0005B 4575F         NIBASC  \TWO\
            4
   49 00061 00000         CON(5)  =%2
   50 00066 00000         CON(5)  =SEMI
   51             * depending on which selection is made
   52             * File  CHS3.s  23
   53 0006B 00000         CON(5)  =DOLIST
   54 00070 00000         CON(5)  =DOCSTR
   55 00075 F0000         CON(5)  15
   56 0007A 45842         NIBASC  \THREE\
            55454
   57 00084 00000         CON(5)  =%3
   58 00089 00000         CON(5)  =SEMI
   59             * File  CHS3.s  24
   60 0008E 00000         CON(5)  =DOLIST
   61 00093 00000         CON(5)  =DOCSTR
   62 00098 D0000         CON(5)  13
   63 0009D 64F45         NIBASC  \FOUR\
            525
   64 000A5 00000         CON(5)  =%4
   65 000AA 00000         CON(5)  =SEMI
   66             * File  CHS3.s  25
   67 000AF 00000         CON(5)  =DOLIST
   68 000B4 00000         CON(5)  =DOCSTR
   69 000B9 D0000         CON(5)  13
   70 000BE 64946         NIBASC  \FIVE\
            554
   71 000C6 00000         CON(5)  =%5
   72 000CB 00000         CON(5)  =SEMI
   73             * File  CHS3.s  26
   74 000D0 00000         CON(5)  =DOLIST
   75 000D5 00000         CON(5)  =DOCSTR
   76 000DA B0000         CON(5)  11
   77 000DF 35948         NIBASC  \SIX\
            5
   78 000E5 00000         CON(5)  =%6
   79 000EA 00000         CON(5)  =SEMI
   80             * File  CHS3.s  27
   81 000EF 00000         CON(5)  =SEMI
   82             * File  CHS3.s  28
   83 000F4 00000         CON(5)  =ONE
   84             * #FocusPos
   85             * File  CHS3.s  29
   86 000F9 00000         CON(5)  =DOROMP
   87 000FE 00000         CON(6)  =~Choose
            0
   88             * Display choose box
   89             * File  CHS3.s  30
   90 00104 00000         CON(5)  =COERCEFLAG
   91             * FLAG -> %
   92             * File  CHS3.s  31
   93 00109 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu May 14 19:25:24 2009
V3.0.9 (04/15/2007)   Symbol Table                       CHS3.a         Page    2

 %1                                Ext                   -    41
 %2                                Ext                   -    49
 %3                                Ext                   -    57
 %4                                Ext                   -    64
 %5                                Ext                   -    71
 %6                                Ext                   -    78
 'DROPFALSE                        Ext                   -    21
 AtUserStack                       Ext                   -    17
 COERCEFLAG                        Ext                   -    90
 DOCOL                             Ext                   -    15
 DOCSTR                            Ext                   -    24    38    46
                                          54    61    68    75
 DOLIST                            Ext                   -    34    37    45
                                          53    60    67    74
 DOROMP                            Ext                   -    86
 ONE                               Ext                   -    83
 SEMI                              Ext                   -    42    50    58
                                          65    72    79    81    93
 SEVENTEEN                         Ext                   -    31
 ~Choose                           Ext                   -    87
Saturn Assembler                                       Thu May 14 19:25:24 2009
V3.0.9 (04/15/2007)   Statistics                         CHS3.a         Page    3

Input Parameters

  Source file name is CHS3.a

  Listing file name is CHS3.l

  Object file name is CHS3.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
