Saturn Assembler                                       Fri May 15 11:16:14 2009
V3.0.9 (04/15/2007)                                      CHS5.a         Page    1

    1             * File  CHS5.s  1
    2             * RPL
    3             * File  CHS5.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS5.s, part of the CHS5.hpp project, created by <> on 15/05/2009
    5             ********************************************************************
    6             * DESCRIPTION:     Simple editor using a full-screen choose box for
    7             *                  a list of strings using a custom choose box menu.
    8             *                  The program requires a list, validating the list
    9             *                  contains at least one object, and that all objects
   10             *                  in the list are stirngs.
   11             * COMPATIBILITY:   HP48
   12             * USAGE:     ( { $1 ... $N } -> { $1 ... $N } $Highlighted %1 [ IF ENTER key or OK softkey pressed ] )
   13             *            ( { $1 ... $N } -> %0 [ IF ON key or CANCEL softeky pressed ] )
   14             *
   15             * File  CHS5.s  13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS5.h
   17
   18             =RomId  EQU     #200
   19             * ROMID set to 200
   20
   21
   22
   23             *|| Resuming file CHS5.s at line 13
   24             * File  CHS5.s  15
   25 00000 00000         CON(6)  =~xCHS5
            0
   26 00006       =xCHS5
   27             * File  CHS5.s  16
   28 00006 00000         CON(5)  =DOCOL
   29             * File  CHS5.s  17
   30 0000B 00000         CON(5)  =0LASTOWDOB!
   31             * Clear saved command name
   32             * File  CHS5.s  18
   33 00010 00000         CON(5)  =CK1NOLASTWD
   34             * Require 1 argument
   35             * File  CHS5.s  19
   36 00015 00000         CON(5)  =CK&DISPATCH1
   37 0001A 00000         CON(5)  =list
   38 0001F 00000         CON(5)  =DOCOL
   39             * Require list object
   40             * Check list contains at least 1 object
   41             * File  CHS5.s  21
   42 00024 00000         CON(5)  =DUPLENCOMP
   43             * {} -> {} #n [#n = number of objects in list]
   44             * File  CHS5.s  22
   45 00029 00000         CON(5)  =DUP#0=
   46 0002E 00000         CON(5)  =case
   47 00033 00000         CON(5)  =SETSIZEERR
   48             * IF #n=0 items in list -> "Bad Argument Value" error
   49             * Validate objects in list are all $
   50             * File  CHS5.s  24
   51 00038 00000         CON(5)  =#1+
   52 0003D 00000         CON(5)  =ONE
   53 00042 00000         CON(5)  =DO
   54             * File  CHS5.s  25
   55 00047 00000         CON(5)  =DUP
   56             * {}
   57             * File  CHS5.s  26
   58 0004C 00000         CON(5)  =INDEX@
   59             * Loop #counter
   60             * File  CHS5.s  27
   61 00051 00000         CON(5)  =NTHCOMPDROP
   62             * {} #counter -> ob
   63             * File  CHS5.s  28
   64 00056 00000         CON(5)  =TYPECSTR?
   65             * ob -> FLAG [TRUE = $, FALSE = NOT $]
   66             * File  CHS5.s  29
   67 0005B 00000         CON(5)  =?SKIP
   68             * TRUE -> skip SETTYPEERR
   69             * File  CHS5.s  30
   70 00060 00000         CON(5)  =SETTYPEERR
   71             * FALSE -> "Bad Argument Type" error
   72             * File  CHS5.s  31
   73 00065 00000         CON(5)  =LOOP
   74             * Choose box parameters
   75             * File  CHS5.s  33
   76 0006A 00000         CON(5)  ='
   77 0006F 00000         CON(5)  =DOROMP
   78 00074 00000         CON(6)  =~CHS5MsgHndler
            0
   79             * Message handler
   80             * File  CHS5.s  34
   81 0007A 00000         CON(5)  =DOCSTR
   82 0007F D1000         CON(5)  29
   83 00084 54449         NIBASC  \EDIT STRINGS\
            44502
            35452594E47435

   84             * Title Object
   85             * File  CHS5.s  35
   86 0009C 00000         CON(5)  =ONE
   87             * Decompile object
   88             * File  CHS5.s  36
   89 000A1 00000         CON(5)  =4ROLL
   90             * { choices }
   91             * File  CHS5.s  37
   92 000A6 00000         CON(5)  =ONE
   93             * #FocusPos
   94             * File  CHS5.s  38
   95 000AB 00000         CON(5)  =DOROMP
   96 000B0 00000         CON(6)  =~Choose
            0
   97             * Run the choose box [ -> ob FLAG]
   98             * File  CHS5.s  39
   99 000B6 00000         CON(5)  =COERCEFLAG
  100             * FLAG -> %
  101             * File  CHS5.s  40
  102 000BB 00000         CON(5)  =SEMI
  103             * File  CHS5.s  41
  104 000C0 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri May 15 11:16:14 2009
V3.0.9 (04/15/2007)   Symbol Table                       CHS5.a         Page    2

 #1+                               Ext                   -    51
 '                                 Ext                   -    76
 0LASTOWDOB!                       Ext                   -    30
 4ROLL                             Ext                   -    89
 ?SKIP                             Ext                   -    67
 CK&DISPATCH1                      Ext                   -    36
 CK1NOLASTWD                       Ext                   -    33
 COERCEFLAG                        Ext                   -    99
 DO                                Ext                   -    53
 DOCOL                             Ext                   -    28    38
 DOCSTR                            Ext                   -    81
 DOROMP                            Ext                   -    77    95
 DUP                               Ext                   -    55
 DUP#0=                            Ext                   -    45
 DUPLENCOMP                        Ext                   -    42
 INDEX@                            Ext                   -    58
 LOOP                              Ext                   -    73
 NTHCOMPDROP                       Ext                   -    61
 ONE                               Ext                   -    52    86    92
=RomId                             Abs     512 #00000200 -    18
 SEMI                              Ext                   -   102   104
 SETSIZEERR                        Ext                   -    47
 SETTYPEERR                        Ext                   -    70
 TYPECSTR?                         Ext                   -    64
 case                              Ext                   -    46
 list                              Ext                   -    37
=xCHS5                             Rel       6 #00000006 -    26
 ~CHS5MsgHndler                    Ext                   -    78
 ~Choose                           Ext                   -    96
 ~xCHS5                            Ext                   -    25
Saturn Assembler                                       Fri May 15 11:16:14 2009
V3.0.9 (04/15/2007)   Statistics                         CHS5.a         Page    3

Input Parameters

  Source file name is CHS5.a

  Listing file name is CHS5.l

  Object file name is CHS5.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
