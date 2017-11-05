Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)                                      GEOPO.a        Page    1

    1             * File  GEOPO.s 1
    2             * RPL
    3             * File  GEOPO.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\GEOPO.s, part of the ISATM.hpp project, created by <> on 7/04/2009
    5             ********************************************************************
    6             * Name:                         GEOPO
    7             * Library #:                            326h = 806d
    8             * Description:          Calculates the Geopotential Altitude from input of
    9             *               Geometric Altitude.  (The SysRPL version of GEOPO)
   10             * Version:                              1.23
   11             * Date:                                                                 10 June 2009
   12             * Machine:      HP48
   13             *               HP50
   14             * Usage:       ( u -> u )
   15             * Input:                                        STACK                                   Geometric altitude (with units)
   16             * Output:    STACK     Geopotential altitude (in SI units)
   17             *
   18             * File  GEOPO.s 16
   19             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\ISA48.h
   20
   21             =RomId  EQU     #326
   22             * ROMID set to 326
   23
   24
   25
   26
   27
   28
   29
   30
   31
   32
   33             *|| Resuming file GEOPO.s at line 16
   34 00000 00000         CON(6)  =~xGEOPO
            0
   35 00006       =xGEOPO
   36             * File  GEOPO.s 18
   37 00006 00000         CON(5)  =DOCOL
   38             * File  GEOPO.s 19
   39 0000B 00000         CON(5)  =CK1&Dispatch
   40             * Check for geom. alt. argument
   41             * File  GEOPO.s 20
   42 00010 00000         CON(5)  =unitob
   43 00015 00000         CON(5)  =DOCOL
   44             * Unit object
   45             * File  GEOPO.s 21
   46 0001A 00000         CON(5)  =UMSI
   47             * Convert to SI units
   48             * File  GEOPO.s 22
   49 0001F 00000         CON(5)  =DOEXT
   50 00024 00000         CON(5)  =DOREAL
   51 00029 600           NIBHEX  600
   52 0002C 00000         NIBHEX  000006676536
            66765
            36
   53 00038 0             NIBHEX  0
   54 00039 00000         CON(5)  =DOCSTR
   55 0003E 70000         CON(5)  7
   56 00043 D6            NIBASC  \m\
   57 00045 00000         CON(5)  =umEND
   58 0004A 00000         CON(5)  =SEMI
   59             * Radius of the Earth
   60             * File  GEOPO.s 23
   61 0004F 00000         CON(5)  =DOLIST
   62 00054 00000         CON(5)  =DOLAM
   63 00059 10            CON(2)  1
   64 0005B 84            NIBASC  \H\
   65 0005D 00000         CON(5)  =DOLAM
   66 00062 20            CON(2)  2
   67 00064 2756          NIBASC  \re\
   68 00068 00000         CON(5)  =SEMI
   69 0006D 00000         CON(5)  =BIND
   70             * Create temporary environment
   71             * File  GEOPO.s 24
   72 00072 00000         CON(5)  =DOLAM
   73 00077 20            CON(2)  2
   74 00079 2756          NIBASC  \re\
   75             * Calculate the geopotential
   76             * File  GEOPO.s 25
   77 0007D 00000         CON(5)  =DOLAM
   78 00082 10            CON(2)  1
   79 00084 84            NIBASC  \H\
   80             * altitude and output on STACK
   81             * File  GEOPO.s 26
   82 00086 00000         CON(5)  =UM*
   83             * File  GEOPO.s 27
   84 0008B 00000         CON(5)  =DOLAM
   85 00090 20            CON(2)  2
   86 00092 2756          NIBASC  \re\
   87             * File  GEOPO.s 28
   88 00096 00000         CON(5)  =DOLAM
   89 0009B 10            CON(2)  1
   90 0009D 84            NIBASC  \H\
   91             * File  GEOPO.s 29
   92 0009F 00000         CON(5)  =UM+
   93             * File  GEOPO.s 30
   94 000A4 00000         CON(5)  =UM/
   95             * File  GEOPO.s 31
   96 000A9 00000         CON(5)  =UMSI
   97             * Convert to SI units [m]
   98             * File  GEOPO.s 32
   99 000AE 00000         CON(5)  =ABND
  100             * Abandon temporary environment
  101             * File  GEOPO.s 33
  102 000B3 00000         CON(5)  =SEMI
  103             * File  GEOPO.s 34
  104 000B8 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Symbol Table                       GEOPO.a        Page    2

 ABND                              Ext                   -    99
 BIND                              Ext                   -    69
 CK1&Dispatch                      Ext                   -    39
 DOCOL                             Ext                   -    37    43
 DOCSTR                            Ext                   -    54
 DOEXT                             Ext                   -    49
 DOLAM                             Ext                   -    62    65    72
                                          77    84    88
 DOLIST                            Ext                   -    61
 DOREAL                            Ext                   -    50
=RomId                             Abs     806 #00000326 -    21
 SEMI                              Ext                   -    58    68   102
                                         104
 UM*                               Ext                   -    82
 UM+                               Ext                   -    92
 UM/                               Ext                   -    94
 UMSI                              Ext                   -    46    96
 umEND                             Ext                   -    57
 unitob                            Ext                   -    42
=xGEOPO                            Rel       6 #00000006 -    35
 ~xGEOPO                           Ext                   -    34
Saturn Assembler                                       Fri Jun 19 11:56:55 2009
V3.0.9 (04/15/2007)   Statistics                         GEOPO.a        Page    3

Input Parameters

  Source file name is GEOPO.a

  Listing file name is GEOPO.l

  Object file name is GEOPO.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
