Saturn Assembler                                       Sat Apr 25 20:01:30 2009
V3.0.9 (04/15/2007)                                      Field_PA_MsgHa Page    1

    1               * File  Field_PA_MsgHandler.s   1
    2               * RPL
    3               * File  Field_PA_MsgHandler.s   2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTEST\Field_PA_MsgHandler.s, part of the INFTEST.hpp project, created by <> on 25/04/2009
    5               * File  Field_PA_MsgHandler.s   3
    6
    7               * File  Field_PA_MsgHandler.s   4
    8               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTEST\INFTEST.h
    9
   10               =RomId  EQU     #326
   11               * ROMID set to 326
   12
   13
   14
   15
   16
   17               *|| Resuming file Field_PA_MsgHandler.s at line 4
   18 00000         =Field_PA_MsgHandler
   19               * File  Field_PA_MsgHandler.s   6
   20 00000 00000           CON(5)  =DOCOL
   21               * Message handler
   22               *            IfMsgGetFieldValue OVER#=case ::
   23               *             BINT4 OVER#=case ::
   24               *              DROP
   25               *             IfMsgGetFieldValue #=case ::
   26               * File  Field_PA_MsgHandler.s   11
   27 00005 00000           CON(5)  =BINT4
   28 0000A 00000           CON(5)  =#=case
   29 0000F 00000           CON(5)  =DOCOL
   30               *              DUP                             ( Internal field value )
   31               *                                                               ' ID XINT1 STO
   32               * File  Field_PA_MsgHandler.s   14
   33
   34               * File  Field_PA_MsgHandler.s   15
   35 00014 00000           CON(5)  =DUPTYPEREAL?
   36 00019 00000           CON(5)  =case
   37 0001E 00000           CON(5)  =DOCOL
   38               * Real object
   39               * File  Field_PA_MsgHandler.s   16
   40 00023 00000           CON(5)  =DOCSTR
   41 00028 90000           CON(5)  9
   42 0002D 6647            NIBASC  \ft\
   43 00031 00000           CON(5)  =umEND
   44 00036 00000           CON(5)  =BINT3
   45 0003B 00000           CON(5)  =EXTN
   46               * Add feet units
   47               * File  Field_PA_MsgHandler.s   17
   48 00040 00000           CON(5)  =NOVAL
   49 00045 00000           CON(5)  =BINT1
   50               * Reset other field
   51               * File  Field_PA_MsgHandler.s   18
   52 0004A 00000           CON(5)  =DOFLASHP
   53 0004F 0000000         CON(7)  =^IfSetFieldValue
   54               * with NOVAL
   55               * File  Field_PA_MsgHandler.s   19
   56 00056 00000           CON(5)  =BINT1
   57 0005B 00000           CON(5)  =DOFLASHP
   58 00060 0000000         CON(7)  =^IfSetField
   59               * Keep field focus
   60               * File  Field_PA_MsgHandler.s   20
   61 00067 00000           CON(5)  =TRUE
   62               * Return external value
   63               * File  Field_PA_MsgHandler.s   21
   64 0006C 00000           CON(5)  =SEMI
   65               * File  Field_PA_MsgHandler.s   22
   66 00071 00000           CON(5)  =DUPTYPEEXT?
   67 00076 00000           CON(5)  =case
   68 0007B 00000           CON(5)  =DOCOL
   69               * Unit object
   70               * File  Field_PA_MsgHandler.s   23
   71 00080 00000           CON(5)  =DUP
   72 00085 00000           CON(5)  =DOIDNT
   73 0008A 20              CON(2)  2
   74 0008C 0514            NIBASC  \PA\
   75 00090 00000           CON(5)  =EQUALNOT
   76 00095 00000           CON(5)  =IT
   77 0009A 00000           CON(5)  =DOCOL
   78               * IF changed from init. value
   79               * File  Field_PA_MsgHandler.s   24
   80 0009F 00000           CON(5)  =NOVAL
   81 000A4 00000           CON(5)  =BINT1
   82               * reset other field
   83               * File  Field_PA_MsgHandler.s   25
   84 000A9 00000           CON(5)  =DOFLASHP
   85 000AE 0000000         CON(7)  =^IfSetFieldValue
   86               * with NOVAL
   87               * File  Field_PA_MsgHandler.s   26
   88 000B5 00000           CON(5)  =BINT1
   89 000BA 00000           CON(5)  =DOFLASHP
   90 000BF 0000000         CON(7)  =^IfSetField
   91               * File  Field_PA_MsgHandler.s   27
   92 000C6 00000           CON(5)  =SEMI
   93               * File  Field_PA_MsgHandler.s   28
   94 000CB 00000           CON(5)  =TRUE
   95               * Return external value
   96               * File  Field_PA_MsgHandler.s   29
   97 000D0 00000           CON(5)  =SEMI
   98               * File  Field_PA_MsgHandler.s   30
   99 000D5 00000           CON(5)  =DUPTYPELIST?
  100 000DA 00000           CON(5)  =case
  101 000DF 00000           CON(5)  =DOCOL
  102               * File  Field_PA_MsgHandler.s   31
  103 000E4 00000           CON(5)  =INCOMPDROP
  104               * File  Field_PA_MsgHandler.s   32
  105 000E9 00000           CON(5)  =SWAPDROP
  106               * File  Field_PA_MsgHandler.s   33
  107 000EE 00000           CON(5)  =TRUE
  108               * File  Field_PA_MsgHandler.s   34
  109 000F3 00000           CON(5)  =SEMI
  110               * File  Field_PA_MsgHandler.s   35
  111 000F8 00000           CON(5)  =DUPTYPEIDNT?
  112 000FD 00000           CON(5)  =case
  113 00102 00000           CON(5)  =DOCOL
  114               * File  Field_PA_MsgHandler.s   36
  115 00107 00000           CON(5)  =TRUE
  116               * File  Field_PA_MsgHandler.s   37
  117 0010C 00000           CON(5)  =SEMI
  118               * File  Field_PA_MsgHandler.s   38
  119
  120               *                                                               IfMsgChoose OVER#=case ::
  121               *               BINT17 OVER#=case ::
  122               *                                                                 DROP
  123               *                                                                 DROP
  124               *                                                                 "ENTER NUMBER"
  125               *                                                                 {
  126               *                                                                 { "ONE" % 1 }
  127               *                                                                 { "TWO" % 2 }
  128               *                                                                 }
  129               *                                                                 %1
  130               *                                                                 FLASHPTR sysCHOOSE_
  131               *                                                                 FALSE
  132               *                                                               ;
  133               * File  Field_PA_MsgHandler.s   52
  134
  135               *                       ::
  136               *                CK&DISPATCH0
  137               *                                                                   BINT1 ::                     ( Real number )
  138               *                                                                                                               "ft" umEND BINT3 EXTN      ( Add feet units )
  139               *                                                                                                               NOVAL BINT1                ( Reset other field with )
  140               *                                                                                                               FLASHPTR IfSetFieldValue   ( NOVAL )
  141               *                                                                  ;
  142               *                                                                   BINT14 ::                    ( Unit object )
  143               *                    DUP ID PA EQUALNOT IT ::   ( IF changed from init. value )
  144               *                      NOVAL BINT1              ( reset other field with )
  145               *                                                                                                                               FLASHPTR IfSetFieldValue ( NOVAL )
  146               *                    ;
  147               *                                                                   ;
  148               *                                                                   BINT0 ::                     ( Any object - no change )
  149               *                                                                     NOP                        ( Allows GLOBAL ID & NOVAL )
  150               *                                                                   ;
  151               *                                                               ;
  152               * File  Field_PA_MsgHandler.s   70
  153
  154               *              DUP                              ( Duplicate result )
  155               *                                                               ' LAM FldVal_PA STO              ( STO in LAM FldVAl_PA )
  156               *                                                               ' ID XEXT1 STO
  157               * File  Field_PA_MsgHandler.s   74
  158 00111 00000           CON(5)  =TRUE
  159               * Message was handled
  160               * File  Field_PA_MsgHandler.s   75
  161 00116 00000           CON(5)  =SEMI
  162               *            IfMsgSetFieldValue OVER#=case ::
  163               *                       DROP
  164               *                       DUP
  165               *                       ' ID XEXT2 STO
  166               * File  Field_PA_MsgHandler.s   80
  167
  168               *                       ::
  169               *                                                                 CK1&Dispatch
  170               *                                                                   BINT1 ::                     ( Real number )
  171               *                                                                                                               "ft" umEND BINT3 EXTN ;    ( Add feet units )
  172               *                                                                   BINT6 :: NOP ;               ( Global ID - no change )
  173               *                                                                   BINT14 :: NOP ;              ( Unit object - no change )
  174               *                                                                   BINT0 :: NOP ;               ( Any object - no change )
  175               *                                                               ;
  176               *                       DUP
  177               *                       ' ID XINT2 STO
  178               * File  Field_PA_MsgHandler.s   91
  179
  180               * File  Field_PA_MsgHandler.s   92
  181
  182               *                       DUP NOVAL EQUAL case ::
  183               *                         TRUE
  184               *                       ;
  185               *              DUP LAM FldVal_PA EQUALNOT case :: ( If there is a change in )
  186               *                                                                 NOVAL BINT1                      ( the field value, then )
  187               *                                                                 FLASHPTR IfSetFieldValue         ( Blank the other field )
  188               *                                                                 TRUE
  189               *                                                               ;
  190               *                       TRUE                             ( Message was handled )
  191               *            ;
  192               *            DROPFALSE                          ( Other msgs. not handled )
  193               * File  Field_PA_MsgHandler.s   104
  194 0011B 00000           CON(5)  =FALSE
  195               * File  Field_PA_MsgHandler.s   105
  196 00120 00000           CON(5)  =SEMI
Saturn Assembler                                       Sat Apr 25 20:01:30 2009
V3.0.9 (04/15/2007)   Symbol Table                       Field_PA_MsgHa Page    2

 #=case                            Ext                   -    28
 BINT1                             Ext                   -    49    56    81
                                          88
 BINT3                             Ext                   -    44
 BINT4                             Ext                   -    27
 DOCOL                             Ext                   -    20    29    37
                                          68    77   101   113
 DOCSTR                            Ext                   -    40
 DOFLASHP                          Ext                   -    52    57    84
                                          89
 DOIDNT                            Ext                   -    72
 DUP                               Ext                   -    71
 DUPTYPEEXT?                       Ext                   -    66
 DUPTYPEIDNT?                      Ext                   -   111
 DUPTYPELIST?                      Ext                   -    99
 DUPTYPEREAL?                      Ext                   -    35
 EQUALNOT                          Ext                   -    75
 EXTN                              Ext                   -    45
 FALSE                             Ext                   -   194
=Field_PA_MsgHandler               Rel       0 #00000000 -    18
 INCOMPDROP                        Ext                   -   103
 IT                                Ext                   -    76
 NOVAL                             Ext                   -    48    80
=RomId                             Abs     806 #00000326 -    10
 SEMI                              Ext                   -    64    92    97
                                         109   117   161   196
 SWAPDROP                          Ext                   -   105
 TRUE                              Ext                   -    61    94   107
                                         115   158
 ^IfSetField                       Ext                   -    58    90
 ^IfSetFieldValue                  Ext                   -    53    85
 case                              Ext                   -    36    67   100
                                         112
 umEND                             Ext                   -    43
Saturn Assembler                                       Sat Apr 25 20:01:30 2009
V3.0.9 (04/15/2007)   Statistics                         Field_PA_MsgHa Page    3

Input Parameters

  Source file name is Field_PA_MsgHandler.a

  Listing file name is Field_PA_MsgHandler.l

  Object file name is Field_PA_MsgHandler.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
