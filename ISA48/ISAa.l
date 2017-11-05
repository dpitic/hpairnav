Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)                                      ISAa.a         Page    1

    1             * File  ISAa.s  1
    2             * RPL
    3             * File  ISAa.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAa.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5             ********************************************************************
    6             * Name:                           ISAa
    7             * Library #:    326h = 806d
    8             * Description:  Calculates the speed of sound in air for the standard
    9             *                                                                                                                       atmosphere ISA for a given altitude.
   10             *               Output in SI units.
   11             * Version:      1.23
   12             * Date:         10 June 2009
   13             * Machine:      HP48
   14             *               HP50
   15             * Usage:        ( u -> u )
   16             * Input:      STACK                             Geopotential altitude (with units)
   17             * Output:     STACK                             Speed of sound in ISA (m/s)
   18             *
   19             * File  ISAa.s  17
   20             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\ISA48.h
   21
   22             =RomId  EQU     #326
   23             * ROMID set to 326
   24
   25
   26
   27
   28
   29
   30
   31
   32
   33
   34             *|| Resuming file ISAa.s at line 17
   35             * File  ISAa.s  19
   36             * File  ISAa.s  20
   37             * File  ISAa.s  21
   38 00000 00000         CON(6)  =~xISAa
            0
   39 00006       =xISAa
   40             * File  ISAa.s  22
   41 00006 00000         CON(5)  =DOCOL
   42             * File  ISAa.s  23
   43 0000B 00000         CON(5)  =CK1&Dispatch
   44             * Check for 1 argument
   45             * File  ISAa.s  24
   46 00010 00000         CON(5)  =unitob
   47 00015 00000         CON(5)  =DOCOL
   48             * Unit object
   49             * File  ISAa.s  25
   50 0001A 00000         CON(5)  =UMSI
   51             * Convert to SI units
   52             * Check if Z > 20 km
   53             * File  ISAa.s  27
   54 0001F 00000         CON(5)  =DUP
   55             * File  ISAa.s  28
   56 00024 00000         CON(5)  =DOEXT
   57 00029 00000         CON(5)  =DOREAL
   58 0002E 400           NIBHEX  400
   59 00031 00000         NIBHEX  000000000002
            00000
            02
   60 0003D 0             NIBHEX  0
   61 0003E 00000         CON(5)  =DOCSTR
   62 00043 70000         CON(5)  7
   63 00048 D6            NIBASC  \m\
   64 0004A 00000         CON(5)  =umEND
   65 0004F 00000         CON(5)  =SEMI
   66             * File  ISAa.s  29
   67 00054 00000         CON(5)  =UM>?
   68 00059 00000         CON(5)  =%0<>
   69 0005E 00000         CON(5)  =case
   70 00063 00000         CON(5)  =DOCOL
   71             * Display warning message and error beep
   72             * File  ISAa.s  30
   73 00068 00000         CON(5)  =DROP
   74             * Geopotential altitude
   75             * File  ISAa.s  31
   76 0006D 00000         CON(5)  =ERRBEEP
   77             * Message box parameters
   78             * File  ISAa.s  33
   79 00072 00000         CON(5)  =DOCSTR
   80 00077 F2000         CON(5)  47
   81 0007C 54252         NIBASC  \ERROR: Alt.   > 20 k\
            5F425
            A30214C647E2020202E302230302B6

   82 000A4 D6            NIBASC  \m\
   83             * message$
   84             * File  ISAa.s  34
   85 000A6 00000         CON(5)  =TWELVE
   86             * #maxwidth
   87             * File  ISAa.s  35
   88 000AB 00000         CON(5)  =TEN
   89             * #minwidth
   90             * File  ISAa.s  36
   91 000B0 00000         CON(5)  =DOROMP
   92 000B5 00000         CON(6)  =~grobAlertIcon
            0
   93             * grob
   94             * File  ISAa.s  37
   95 000BB 00000         CON(5)  =DOROMP
   96 000C0 00000         CON(6)  =~MsgBoxMenu
            0
   97             * menuobject
   98             * File  ISAa.s  38
   99 000C6 00000         CON(5)  =DOROMP
  100 000CB 00000         CON(6)  =~DoMsgBox
            0
  101 000D1 00000         CON(5)  =DROP
  102             * Draw the message box, DROP FLAG
  103             * File  ISAa.s  39
  104 000D6 00000         CON(5)  =SEMI
  105             * File  ISAa.s  40
  106 000DB 00000         CON(5)  =DOROMP
  107 000E0 00000         CON(6)  =~xISAT
            0
  108             * File  ISAa.s  41
  109 000E6 00000         CON(5)  =DOEXT
  110 000EB 00000         CON(5)  =DOREAL
  111 000F0 200           NIBHEX  200
  112 000F3 00000         NIBHEX  000008250782
            82507
            82
  113 000FF 0             NIBHEX  0
  114 00100 00000         CON(5)  =DOCSTR
  115 00105 70000         CON(5)  7
  116 0010A D6            NIBASC  \m\
  117 0010C 00000         CON(5)  =%2
  118 00111 00000         CON(5)  =um^
  119 00116 00000         CON(5)  =DOCSTR
  120 0011B 70000         CON(5)  7
  121 00120 37            NIBASC  \s\
  122 00122 00000         CON(5)  =%2
  123 00127 00000         CON(5)  =um^
  124 0012C 00000         CON(5)  =DOCSTR
  125 00131 70000         CON(5)  7
  126 00136 B4            NIBASC  \K\
  127 00138 00000         CON(5)  =um*
  128 0013D 00000         CON(5)  =um/
  129 00142 00000         CON(5)  =umEND
  130 00147 00000         CON(5)  =SEMI
  131             * File  ISAa.s  42
  132 0014C 00000         CON(5)  =UM*
  133             * File  ISAa.s  43
  134 00151 00000         CON(5)  =DOREAL
  135 00156 000           NIBHEX  000
  136 00159 00000         NIBHEX  000000000041
            00000
            41
  137 00165 0             NIBHEX  0
  138             * File  ISAa.s  44
  139 00166 00000         CON(5)  =UM*
  140             * File  ISAa.s  45
  141 0016B 00000         CON(5)  =UMSQRT
  142             * File  ISAa.s  46
  143 00170 00000         CON(5)  =SEMI
  144             * Return ISA speed of sound [m/s]
  145             * File  ISAa.s  47
  146 00175 00000         CON(5)  =SEMI
  147             * in air at altitude
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       ISAa.a         Page    2

 %0<>                              Ext                   -    68
 %2                                Ext                   -   117   122
 CK1&Dispatch                      Ext                   -    43
 DOCOL                             Ext                   -    41    47    70
 DOCSTR                            Ext                   -    61    79   114
                                         119   124
 DOEXT                             Ext                   -    56   109
 DOREAL                            Ext                   -    57   110   134
 DOROMP                            Ext                   -    91    95    99
                                         106
 DROP                              Ext                   -    73   101
 DUP                               Ext                   -    54
 ERRBEEP                           Ext                   -    76
=RomId                             Abs     806 #00000326 -    22
 SEMI                              Ext                   -    65   104   130
                                         143   146
 TEN                               Ext                   -    88
 TWELVE                            Ext                   -    85
 UM*                               Ext                   -   132   139
 UM>?                              Ext                   -    67
 UMSI                              Ext                   -    50
 UMSQRT                            Ext                   -   141
 case                              Ext                   -    69
 um*                               Ext                   -   127
 um/                               Ext                   -   128
 umEND                             Ext                   -    64   129
 um^                               Ext                   -   118   123
 unitob                            Ext                   -    46
=xISAa                             Rel       6 #00000006 -    39
 ~DoMsgBox                         Ext                   -   100
 ~MsgBoxMenu                       Ext                   -    96
 ~grobAlertIcon                    Ext                   -    92
 ~xISAT                            Ext                   -   107
 ~xISAa                            Ext                   -    38
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Statistics                         ISAa.a         Page    3

Input Parameters

  Source file name is ISAa.a

  Listing file name is ISAa.l

  Object file name is ISAa.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
