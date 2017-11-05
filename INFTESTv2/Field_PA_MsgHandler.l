Saturn Assembler                                       Tue May 19 17:53:30 2009
V3.0.9 (04/15/2007)                                      Field_PA_MsgHa Page    1

    1               * File  Field_PA_MsgHandler.s   1
    2               * RPL
    3               * File  Field_PA_MsgHandler.s   2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTESTv2\Field_PA_MsgHandler.s, part of the INFTEST.hpp project, created by <> on 25/04/2009
    5               * File  Field_PA_MsgHandler.s   3
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
   92               *|| Resuming file Field_PA_MsgHandler.s at line 3
   93               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTESTv2\INFTEST.h
   94
   95               =RomId  EQU     #326
   96               * ROMID set to 326
   97
   98
   99
  100
  101
  102               *|| Resuming file Field_PA_MsgHandler.s at line 4
  103 00000         =Field_PA_MsgHandler
  104               * File  Field_PA_MsgHandler.s   6
  105 00000 00000           CON(5)  =DOCOL
  106               *        IfMsgGetFieldValue OVER#=case ::            ( IfMsgGetFieldValue - Get internal value )
  107               * File  Field_PA_MsgHandler.s   8
  108 00005 00000           CON(5)  =FOUR
  109 0000A 00000           CON(5)  =#=case
  110 0000F 00000           CON(5)  =DOCOL
  111               *          DROP                         ( DROP message handler call # )
  112               * File  Field_PA_MsgHandler.s   10
  113 00014 00000           CON(5)  =DUPTYPEREAL?
  114 00019 00000           CON(5)  =case
  115 0001E 00000           CON(5)  =DOCOL
  116               * File  Field_PA_MsgHandler.s   11
  117 00023 00000           CON(5)  =DOCSTR
  118 00028 90000           CON(5)  9
  119 0002D 6647            NIBASC  \ft\
  120 00031 00000           CON(5)  =umEND
  121 00036 00000           CON(5)  =BINT3
  122 0003B 00000           CON(5)  =EXTN
  123               * File  Field_PA_MsgHandler.s   12
  124 00040 00000           CON(5)  =TRUE
  125               * Return external value
  126               * File  Field_PA_MsgHandler.s   13
  127 00045 00000           CON(5)  =SEMI
  128               * File  Field_PA_MsgHandler.s   14
  129 0004A 00000           CON(5)  =TRUE
  130               * Message was handled
  131               * File  Field_PA_MsgHandler.s   15
  132 0004F 00000           CON(5)  =SEMI
  133               *        IfMsgChoose OVER#=case ::           ( IfMsgChoose )
  134               *          DROP                         ( Message Handler call # )
  135               *          DUPTYPEBINT? case ::         ( IF it is a bint )
  136               *            2DROP                        ( DROP both bints on level 1 & 2 )
  137               *            FALSE                        ( Message not handled )
  138               *          ;
  139               *          FALSE                        ( Message not handled )
  140               *        ;
  141               *        IfMsgNewCommandLine OVER#=case ::           ( IfMsgNewCommandLine )
  142               *          DROP                         ( DROP message handler call # )
  143               *          DUPTYPEBINT? case ::         ( IF it is a bint )
  144               *            2DROP                        ( DROP both bints on levels 1 & 2 )
  145               *            FALSE                        ( Message not handled )
  146               *          ;
  147               *          FALSE                        ( Message not handled )
  148               *        ;
  149               *        DROPFALSE                      ( No other messages handled )
  150               * File  Field_PA_MsgHandler.s   33
  151 00054 00000           CON(5)  =FALSE
  152               * File  Field_PA_MsgHandler.s   34
  153 00059 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue May 19 17:53:30 2009
V3.0.9 (04/15/2007)   Symbol Table                       Field_PA_MsgHa Page    2

 #=case                            Ext                   -   109
 BINT3                             Ext                   -   121
 DOCOL                             Ext                   -   105   110   115
 DOCSTR                            Ext                   -   117
 DUPTYPEREAL?                      Ext                   -   113
 EXTN                              Ext                   -   122
 FALSE                             Ext                   -   151
 FOUR                              Ext                   -   108
=Field_PA_MsgHandler               Rel       0 #00000000 -   103
=RomId                             Abs     806 #00000326 -    95
 SEMI                              Ext                   -   127   132   153
 TRUE                              Ext                   -   124   129
 case                              Ext                   -   114
 umEND                             Ext                   -   120
Saturn Assembler                                       Tue May 19 17:53:30 2009
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
