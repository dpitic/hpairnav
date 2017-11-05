Saturn Assembler                                       Sat Jun 20 21:15:34 2009
V3.0.9 (04/15/2007)                                      INITMNU1.a     Page    1

    1               * File  INITMNU1.s      1
    2               * RPL
    3               * File  INITMNU1.s      2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INITMNU1.s, part of the INTERCEPT50.hpp project, created by <> on 20/06/2009
    5               * File  INITMNU1.s      3
    6
    7               * File  INITMNU1.s      4
    8               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTERCEPT50.h
    9
   10               =RomId  EQU     #321
   11               * ROMID set to 321
   12
   13
   14
   15
   16
   17
   18               *|| Resuming file INITMNU1.s at line 4
   19 00000 000000          CON(6)  =~xINITMNU
   20 00006         =xINITMNU
   21               * File  INITMNU1.s      6
   22 00006 00000           CON(5)  =DOCOL
   23               * File  INITMNU1.s      7
   24 0000B 00000           CON(5)  =CK0
   25               * No arguments
   26               * File  INITMNU1.s      8
   27 00010 00000           CON(5)  =MenuMaker
   28               * File  INITMNU1.s      9
   29 00015 00000           CON(5)  =DOCOL
   30               * File  INITMNU1.s      10
   31 0001A 00000           CON(5)  ='
   32 0001F 00000           CON(5)  =DOCOL
   33               *              ZERO
   34               * File  INITMNU1.s      12
   35 00024 00000           CON(5)  =DOCSTR
   36 00029 90000           CON(5)  9
   37 0002E 7544            NIBASC  \WD\
   38               * File  INITMNU1.s      13
   39 00032 00000           CON(5)  =MakeInvLabel
   40               *              Grob>Menu
   41               * File  INITMNU1.s      15
   42 00037 00000           CON(5)  =SEMI
   43               * File  INITMNU1.s      16
   44 0003C 00000           CON(5)  =LabelDef!
   45               * File  INITMNU1.s      17
   46 00041 00000           CON(5)  ='
   47 00046 00000           CON(5)  =DOLIST
   48               * File  INITMNU1.s      18
   49 0004B 00000           CON(5)  =DOLIST
   50 00050 00000           CON(5)  =DOCOL
   51               * File  INITMNU1.s      19
   52 00055 00000           CON(5)  =TakeOver
   53               * File  INITMNU1.s      20
   54 0005A 00000           CON(5)  =DOCSTR
   55 0005F 90000           CON(5)  9
   56 00064 7544            NIBASC  \WD\
   57               *                                                                               MakeInvLabel
   58               * File  INITMNU1.s      22
   59 00068 00000           CON(5)  =SEMI
   60               * File  INITMNU1.s      23
   61 0006D 00000           CON(5)  =DOCOL
   62               * File  INITMNU1.s      24
   63 00072 00000           CON(5)  =TakeOver
   64               * File  INITMNU1.s      25
   65 00077 00000           CON(5)  =CK1&Dispatch
   66               * File  INITMNU1.s      26
   67 0007C 00000           CON(5)  =real
   68 00081 00000           CON(5)  =DOCOL
   69               * File  INITMNU1.s      27
   70 00086 00000           CON(5)  ='
   71 0008B 00000           CON(5)  =DOIDNT
   72 00090 20              CON(2)  2
   73 00092 7544            NIBASC  \WD\
   74 00096 00000           CON(5)  =STO
   75               *                           "WD"
   76               *                           MakeStdLabel
   77               * File  INITMNU1.s      30
   78 0009B 00000           CON(5)  =SEMI
   79               * File  INITMNU1.s      31
   80 000A0 00000           CON(5)  =SEMI
   81               * File  INITMNU1.s      32
   82 000A5 00000           CON(5)  =SEMI
   83               * File  INITMNU1.s      33
   84 000AA 00000           CON(5)  =SEMI
   85               * File  INITMNU1.s      34
   86 000AF 00000           CON(5)  =SEMI
   87               * File  INITMNU1.s      35
   88 000B4 00000           CON(5)  =InitMenu
   89               * File  INITMNU1.s      36
   90 000B9 00000           CON(5)  =SEMI
Saturn Assembler                                       Sat Jun 20 21:15:34 2009
V3.0.9 (04/15/2007)   Symbol Table                       INITMNU1.a     Page    2

 '                                 Ext                   -    31    46    70
 CK0                               Ext                   -    24
 CK1&Dispatch                      Ext                   -    65
 DOCOL                             Ext                   -    22    29    32
                                          50    61    68
 DOCSTR                            Ext                   -    35    54
 DOIDNT                            Ext                   -    71
 DOLIST                            Ext                   -    47    49
 InitMenu                          Ext                   -    88
 LabelDef!                         Ext                   -    44
 MakeInvLabel                      Ext                   -    39
 MenuMaker                         Ext                   -    27
=RomId                             Abs     801 #00000321 -    10
 SEMI                              Ext                   -    42    59    78
                                          80    82    84    86    90
 STO                               Ext                   -    74
 TakeOver                          Ext                   -    52    63
 real                              Ext                   -    67
=xINITMNU                          Rel       6 #00000006 -    20
 ~xINITMNU                         Ext                   -    19
Saturn Assembler                                       Sat Jun 20 21:15:34 2009
V3.0.9 (04/15/2007)   Statistics                         INITMNU1.a     Page    3

Input Parameters

  Source file name is INITMNU1.a

  Listing file name is INITMNU1.l

  Object file name is INITMNU1.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
