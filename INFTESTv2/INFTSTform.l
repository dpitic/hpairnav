Saturn Assembler                                       Tue May 19 17:53:30 2009
V3.0.9 (04/15/2007)                                      INFTSTform.a   Page    1

    1               * File  INFTSTform.s    1
    2               * RPL
    3               * File  INFTSTform.s    2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTEST\INFTSTform.s, part of the INFTEST.hpp project, created by <> on 14/04/2009
    5               * File  INFTSTform.s    3
    6               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\informbox.h
    7
    8
    9
   10
   11
   12
   13
   14
   15
   16
   17
   18
   19
   20
   21
   22
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
   33
   34
   35
   36
   37
   38
   39
   40
   41
   42
   43
   44
   45
   46
   47
   48
   49
   50
   51
   52
   53
   54
   55
   56
   57
   58
   59
   60
   61
   62
   63
   64
   65
   66
   67
   68
   69
   70
   71
   72
   73
   74
   75
   76
   77
   78
   79               * Do not modify any of these constants
   80
   81               * Do not modify any of these constants
   82               * ( was zint
   83
   84
   85
   86
   87
   88
   89
   90
   91
   92               *|| Resuming file INFTSTform.s at line 3
   93               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTESTv2\INFTEST.h
   94
   95               =RomId  EQU     #326
   96               * ROMID set to 326
   97
   98
   99
  100
  101
  102               *|| Resuming file INFTSTform.s at line 4
  103 00000         =INFTSTform
  104               * File  INFTSTform.s    6
  105 00000 00000           CON(5)  =DOCOL
  106               * Label definitions (X pos      Y pos)
  107               * File  INFTSTform.s    8
  108 00005 00000           CON(5)  =DOCSTR
  109 0000A B0000           CON(5)  11
  110 0000F 0514A3          NIBASC  \PA:\
  111 00015 00000           CON(5)  =BINT1
  112 0001A 00000           CON(5)  =BINT9
  113               *               "T1:"              BINT1      BINT18
  114               * File  INFTSTform.s    10
  115
  116               * Field definitions
  117               * File  INFTSTform.s    12
  118               * Field PA definition [#BINT0]
  119               *        ' Field_PA_MsgHandler
  120               * File  INFTSTform.s    14
  121 0001F 00000           CON(5)  ='DROPFALSE
  122               * File  INFTSTform.s    15
  123 00024 00000           CON(5)  =BINT14
  124 00029 00000           CON(5)  =BINT8
  125 0002E 00000           CON(5)  =BINT110
  126 00033 00000           CON(5)  =BINT8
  127               * Position & size
  128               *        BINT2                            ( Field type: COMBO )
  129               * File  INFTSTform.s    17
  130 00038 00000           CON(5)  =BINT1
  131               * File  INFTSTform.s    18
  132 0003D 00000           CON(5)  =DOLIST
  133 00042 00000           CON(5)  =BINT0
  134 00047 00000           CON(5)  =BINT13
  135 0004C 00000           CON(5)  =SEMI
  136               * Allowed types: REAL, UNIT
  137               *        BINT2                                                                                                                                                                                                                  ( Decompile with stack appear
  138               * File  INFTSTform.s    20
  139 00051 00000           CON(5)  ='
  140 00056 00000           CON(5)  =DOROMP
  141 0005B 000000          CON(6)  =~FldPAChDecomp
  142               * File  INFTSTform.s    21
  143 00061 00000           CON(5)  =DOCSTR
  144 00066 72000           CON(5)  39
  145 0006B 0525543         NIBASC  \PRESSURE ALTITUDE\
            5355525
            540214C4459445554454

  146               * Help string
  147               * File  INFTSTform.s    22
  148 0008D 00000           CON(5)  =MINUSONE
  149               * ChooseData N/A
  150               *               {
  151               *        UNIT % 0 "ft" umEND ;
  152               *        UNIT % 1013.25 CHR_m "bar" umP umEND ;
  153               *        }
  154               *        MINUSONE                         ( ChooseDecompile )
  155               * File  INFTSTform.s    28
  156 00092 00000           CON(5)  =BINT2
  157               * ChooseDecompile
  158               * File  INFTSTform.s    29
  159 00097 00000           CON(5)  =MINUSONE
  160               * Reset value
  161               * File  INFTSTform.s    30
  162 0009C 00000           CON(5)  =DOIDNT
  163 000A1 20              CON(2)  2
  164 000A3 0514            NIBASC  \PA\
  165               * Initial value
  166               * File  INFTSTform.s    31
  167
  168               * File  INFTSTform.s    32
  169               * Field T1 definition
  170               *        'DROPFALSE
  171               *        BINT14  BINT17  BINT45  BINT8    ( Position & size )
  172               *        BINT1                            ( Field type: TEXT )
  173               *        { BINT0 BINT13 }                 ( Allowed types: REAL, UNIT )
  174               *        BINT2                            ( Decompile with stack appearance )
  175               *        "STATIC AIR TEPM. (TRUE \B0C)"   ( Help string )
  176               *        MINUSONE                                                                                                                                                                                         ( ChooseData N/A )
  177               *        MINUSONE                         ( ChooseDecompile )
  178               *        MINUSONE                         ( Reset value )
  179               *        ID T1                            ( Initial value )
  180               * File  INFTSTform.s    43
  181
  182               *        BINT2  BINT2                                                                                                                                                                   ( Label and field counts )
  183               * File  INFTSTform.s    45
  184 000A7 00000           CON(5)  =BINT1
  185 000AC 00000           CON(5)  =BINT1
  186               * File  INFTSTform.s    46
  187
  188               * File  INFTSTform.s    47
  189 000B1 00000           CON(5)  ='DROPFALSE
  190               * Inform Box message handler
  191               * File  INFTSTform.s    48
  192 000B6 00000           CON(5)  =DOCSTR
  193 000BB B0000           CON(5)  11
  194 000C0 943514          NIBASC  \ISA\
  195               * Title
  196               * File  INFTSTform.s    49
  197 000C6 00000           CON(5)  =DOFLASHP
  198 000CB 0000000         CON(7)  =^IfMain
  199               * Create the input form
  200               *        2DROP                    ( DROP 2 BINTS from COMBO field )
  201               * File  INFTSTform.s    51
  202 000D2 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue May 19 17:53:30 2009
V3.0.9 (04/15/2007)   Symbol Table                       INFTSTform.a   Page    2

 '                                 Ext                   -   139
 'DROPFALSE                        Ext                   -   121   189
 BINT0                             Ext                   -   133
 BINT1                             Ext                   -   111   130   184
                                         185
 BINT110                           Ext                   -   125
 BINT13                            Ext                   -   134
 BINT14                            Ext                   -   123
 BINT2                             Ext                   -   156
 BINT8                             Ext                   -   124   126
 BINT9                             Ext                   -   112
 DOCOL                             Ext                   -   105
 DOCSTR                            Ext                   -   108   143   192
 DOFLASHP                          Ext                   -   197
 DOIDNT                            Ext                   -   162
 DOLIST                            Ext                   -   132
 DOROMP                            Ext                   -   140
=INFTSTform                        Rel       0 #00000000 -   103
 MINUSONE                          Ext                   -   148   159
=RomId                             Abs     806 #00000326 -    95
 SEMI                              Ext                   -   135   202
 ^IfMain                           Ext                   -   198
 ~FldPAChDecomp                    Ext                   -   141
Saturn Assembler                                       Tue May 19 17:53:30 2009
V3.0.9 (04/15/2007)   Statistics                         INFTSTform.a   Page    3

Input Parameters

  Source file name is INFTSTform.a

  Listing file name is INFTSTform.l

  Object file name is INFTSTform.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
