Saturn Assembler                                       Fri May 15 18:50:33 2009
V3.0.9 (04/15/2007)                                      CHS6.a         Page    1

    1               * File  CHS6.s  1
    2               * RPL
    3               * File  CHS6.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS6.s, part of the CHS6.hpp project, created by <> on 15/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Displays a multi-pick choose box which updates
    7               *                  the title of the choose box based on the number of
    8               *                  selections made.
    9               * COMPATIBILITY:   HP48
   10               * USAGE:     ( -> %0              [ User pressed CANCEL softkey or ON key ] )
   11               *            ( -> { choices } %1  [ User pressed ENTER key or OK softkey ]  )
   12               *
   13               * File header
   14               * File  CHS6.s  12
   15               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS6.h
   16
   17               =RomId  EQU     #200
   18               * ROMID set to 200
   19
   20
   21
   22               *|| Resuming file CHS6.s at line 12
   23               * Library softkey definition
   24               * File  CHS6.s  15
   25 00000 000000          CON(6)  =~xCHS6
   26 00006         =xCHS6
   27               * File  CHS6.s  16
   28 00006 00000           CON(5)  =DOCOL
   29               * File  CHS6.s  17
   30 0000B 00000           CON(5)  =AtUserStack
   31               * Clear saved command name, no arguments
   32               * Choose box parameters
   33               * File  CHS6.s  19
   34 00010 00000           CON(5)  ='
   35 00015 00000           CON(5)  =DOROMP
   36 0001A 000000          CON(6)  =~CHS6MsgHandler
   37               * Message handler
   38               * File  CHS6.s  20
   39 00020 00000           CON(5)  =DOCSTR
   40 00025 70000           CON(5)  7
   41 0002A 02              NIBASC  \ \
   42               * Title Object $ [replaced by message handler #70]
   43               * File  CHS6.s  21
   44 0002C 00000           CON(5)  =ONE
   45               * Decompile object [#1 = No decompilation]
   46               * File  CHS6.s  22
   47 00031 00000           CON(5)  =NULL{}
   48               * { choices }
   49               * File  CHS6.s  23
   50 00036 00000           CON(5)  =ONE
   51               * #FocusPos [#1 = highlight first data in list]
   52               * File  CHS6.s  24
   53 0003B 00000           CON(5)  =DOROMP
   54 00040 000000          CON(6)  =~Choose
   55               * Run choose box [ -> ... FLAG ]
   56               * File  CHS6.s  25
   57 00046 00000           CON(5)  =COERCEFLAG
   58               * FLAG -> %
   59               * File  CHS6.s  26
   60 0004B 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri May 15 18:50:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       CHS6.a         Page    2

 '                                 Ext                   -    34
 AtUserStack                       Ext                   -    30
 COERCEFLAG                        Ext                   -    57
 DOCOL                             Ext                   -    28
 DOCSTR                            Ext                   -    39
 DOROMP                            Ext                   -    35    53
 NULL{}                            Ext                   -    47
 ONE                               Ext                   -    44    50
=RomId                             Abs     512 #00000200 -    17
 SEMI                              Ext                   -    60
=xCHS6                             Rel       6 #00000006 -    26
 ~CHS6MsgHandler                   Ext                   -    36
 ~Choose                           Ext                   -    54
 ~xCHS6                            Ext                   -    25
Saturn Assembler                                       Fri May 15 18:50:33 2009
V3.0.9 (04/15/2007)   Statistics                         CHS6.a         Page    3

Input Parameters

  Source file name is CHS6.a

  Listing file name is CHS6.l

  Object file name is CHS6.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
