Saturn Assembler                                       Tue Jun 09 12:22:25 2009
V3.0.9 (04/15/2007)                                      CHS1.a         Page    1

    1               * File  CHS1.s  1
    2               * RPL
    3               * File  CHS1.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS1.s, part of the CHS1.hpp project, created by <> on 14/05/2009
    5               ********************************************************************
    6               * DESCRIPTION:     Displays a default choose box showing a list of
    7               *                  6 string object.  Cancellation returns FALSE which
    8               *                  is converted to %0.  Accepted selection returns
    9               *                  TRUE which is converted to %1.
   10               * COMPATIBILITY:   HP48, HP50
   11               * USAGE:     ( -> $ %1   [ If a selection is made ] )
   12               *            ( -> %0     [ If cancelled ] )
   13               *
   14               * Rompointer external declarations
   15               * File  CHS1.s  13
   16               * Declare Choose as a rompointer
   17               * File  CHS1.s  14
   18 00000 00000           CON(5)  =DOCOL
   19               * File  CHS1.s  15
   20 00005 00000           CON(5)  =AtUserStack
   21               * Clear savced command name, no arguments
   22               * Choose box parameters
   23               * File  CHS1.s  17
   24 0000A 00000           CON(5)  ='DROPFALSE
   25               * Message handler
   26               * File  CHS1.s  18
   27 0000F 00000           CON(5)  =DOCSTR
   28 00014 F0000           CON(5)  15
   29 00019 459647C         NIBASC  \Title\
            656
   30               * Title Object -> $
   31               * File  CHS1.s  19
   32 00023 00000           CON(5)  =ONE
   33               * #Decompile Object
   34               * File  CHS1.s  20
   35 00028 00000           CON(5)  =DOLIST
   36               * Choices list
   37               * File  CHS1.s  21
   38 0002D 00000           CON(5)  =DOCSTR
   39 00032 B0000           CON(5)  11
   40 00037 F4E454          NIBASC  \ONE\
   41 0003D 00000           CON(5)  =DOCSTR
   42 00042 B0000           CON(5)  11
   43 00047 4575F4          NIBASC  \TWO\
   44 0004D 00000           CON(5)  =DOCSTR
   45 00052 F0000           CON(5)  15
   46 00057 4584255         NIBASC  \THREE\
            454
   47               * All choices are $
   48               * File  CHS1.s  22
   49 00061 00000           CON(5)  =DOCSTR
   50 00066 D0000           CON(5)  13
   51 0006B 64F4552         NIBASC  \FOUR\
            5
   52 00073 00000           CON(5)  =DOCSTR
   53 00078 D0000           CON(5)  13
   54 0007D 6494655         NIBASC  \FIVE\
            4
   55 00085 00000           CON(5)  =DOCSTR
   56 0008A B0000           CON(5)  11
   57 0008F 359485          NIBASC  \SIX\
   58               * File  CHS1.s  23
   59 00095 00000           CON(5)  =SEMI
   60               * File  CHS1.s  24
   61 0009A 00000           CON(5)  =ONE
   62               * #FocusPos
   63               * File  CHS1.s  25
   64 0009F 00000           CON(5)  =DOROMP
   65 000A4 000000          CON(6)  =~Choose
   66               * Display choose box [ -> ob FLAG ]
   67               * File  CHS1.s  26
   68 000AA 00000           CON(5)  =COERCEFLAG
   69               * FLAG -> %
   70               * File  CHS1.s  27
   71 000AF 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 09 12:22:25 2009
V3.0.9 (04/15/2007)   Symbol Table                       CHS1.a         Page    2

 'DROPFALSE                        Ext                   -    24
 AtUserStack                       Ext                   -    20
 COERCEFLAG                        Ext                   -    68
 DOCOL                             Ext                   -    18
 DOCSTR                            Ext                   -    27    38    41
                                          44    49    52    55
 DOLIST                            Ext                   -    35
 DOROMP                            Ext                   -    64
 ONE                               Ext                   -    32    61
 SEMI                              Ext                   -    59    71
 ~Choose                           Ext                   -    65
Saturn Assembler                                       Tue Jun 09 12:22:25 2009
V3.0.9 (04/15/2007)   Statistics                         CHS1.a         Page    3

Input Parameters

  Source file name is CHS1.a

  Listing file name is CHS1.l

  Object file name is CHS1.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
