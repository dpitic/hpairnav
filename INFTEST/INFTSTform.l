Saturn Assembler                                       Sat Apr 25 20:01:30 2009
V3.0.9 (04/15/2007)                                      INFTSTform.a   Page    1

    1               * File  INFTSTform.s    1
    2               * RPL
    3               * File  INFTSTform.s    2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTEST\INFTSTform.s, part of the INFTEST.hpp project, created by <> on 14/04/2009
    5               *INCLUDE informbox.h
    6               * File  INFTSTform.s    4
    7               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTEST\INFTEST.h
    8
    9               =RomId  EQU     #326
   10               * ROMID set to 326
   11
   12
   13
   14
   15
   16               *|| Resuming file INFTSTform.s at line 4
   17 00000         =INFTSTform
   18               * File  INFTSTform.s    6
   19 00000 00000           CON(5)  =DOCOL
   20               * Label definitions (X pos      Y pos)
   21               * File  INFTSTform.s    8
   22 00005 00000           CON(5)  =DOCSTR
   23 0000A B0000           CON(5)  11
   24 0000F 0514A3          NIBASC  \PA:\
   25 00015 00000           CON(5)  =BINT1
   26 0001A 00000           CON(5)  =BINT9
   27               * File  INFTSTform.s    9
   28 0001F 00000           CON(5)  =DOCSTR
   29 00024 B0000           CON(5)  11
   30 00029 4513A3          NIBASC  \T1:\
   31 0002F 00000           CON(5)  =BINT1
   32 00034 00000           CON(5)  =BINT18
   33               * File  INFTSTform.s    10
   34
   35               * Field definitions
   36               * File  INFTSTform.s    12
   37               * Field PA definition [#BINT0]
   38               * File  INFTSTform.s    13
   39 00039 00000           CON(5)  ='
   40 0003E 00000           CON(5)  =DOROMP
   41 00043 000000          CON(6)  =~Field_PA_MsgHandler
   42               * File  INFTSTform.s    14
   43 00049 00000           CON(5)  =BINT14
   44 0004E 00000           CON(5)  =BINT8
   45 00053 00000           CON(5)  =BINT110
   46 00058 00000           CON(5)  =BINT8
   47               * Position & size
   48               * File  INFTSTform.s    15
   49 0005D 00000           CON(5)  =BINT1
   50               * Field type: TEXT
   51               *        BINT2                            ( Field type: COMBO )
   52               * File  INFTSTform.s    17
   53 00062 00000           CON(5)  =DOLIST
   54 00067 00000           CON(5)  =BINT0
   55 0006C 00000           CON(5)  =BINT13
   56 00071 00000           CON(5)  =SEMI
   57               * Allowed types: REAL, UNIT
   58               * File  INFTSTform.s    18
   59 00076 00000           CON(5)  =BINT2
   60               * Decompile with stack appearance
   61               * File  INFTSTform.s    19
   62 0007B 00000           CON(5)  =DOCSTR
   63 00080 72000           CON(5)  39
   64 00085 0525543         NIBASC  \PRESSURE ALTITUDE\
            5355525
            540214C4459445554454

   65               * Help string
   66               * File  INFTSTform.s    20
   67 000A7 00000           CON(5)  =MINUSONE
   68               * ChooseData N/A
   69               *        {
   70               *        { "ZERO" UNIT % 0 "ft" umEND ; }
   71               *        { "STD" UNIT % 1013.25 CHR_m "bar" umP umEND ; }
   72               *        }
   73               * File  INFTSTform.s    25
   74 000AC 00000           CON(5)  =MINUSONE
   75               * ChooseDecompile
   76               *        BINT2                            ( ChooseDecompile )
   77               * File  INFTSTform.s    27
   78 000B1 00000           CON(5)  =MINUSONE
   79               * Reset value
   80               * File  INFTSTform.s    28
   81 000B6 00000           CON(5)  =DOIDNT
   82 000BB 20              CON(2)  2
   83 000BD 0514            NIBASC  \PA\
   84               * Initial value
   85               * File  INFTSTform.s    29
   86
   87               * File  INFTSTform.s    30
   88               * Field T1 definition
   89               * File  INFTSTform.s    31
   90 000C1 00000           CON(5)  ='
   91 000C6 00000           CON(5)  =DOCOL
   92               *            IfMsgGetFieldValue #=case ::
   93               * File  INFTSTform.s    33
   94 000CB 00000           CON(5)  =BINT4
   95 000D0 00000           CON(5)  =#=case
   96 000D5 00000           CON(5)  =DOCOL
   97               * File  INFTSTform.s    34
   98 000DA 00000           CON(5)  =DUPTYPEREAL?
   99 000DF 00000           CON(5)  =case
  100 000E4 00000           CON(5)  =DOCOL
  101               * Real object
  102               * File  INFTSTform.s    35
  103 000E9 00000           CON(5)  =DOCSTR
  104 000EE 90000           CON(5)  9
  105 000F3 0B              CON(2)  #B0
  106 000F5 34              NIBASC  \C\
  107 000F7 00000           CON(5)  =umEND
  108 000FC 00000           CON(5)  =BINT3
  109 00101 00000           CON(5)  =EXTN
  110               * Add deg C units
  111               * File  INFTSTform.s    36
  112 00106 00000           CON(5)  =NOVAL
  113 0010B 00000           CON(5)  =BINT0
  114               * Reset other field
  115               * File  INFTSTform.s    37
  116 00110 00000           CON(5)  =DOFLASHP
  117 00115 0000000         CON(7)  =^IfSetFieldValue
  118               * with NOVAL
  119               * File  INFTSTform.s    38
  120 0011C 00000           CON(5)  =BINT0
  121 00121 00000           CON(5)  =DOFLASHP
  122 00126 0000000         CON(7)  =^IfSetField
  123               * Keep field focus
  124               * File  INFTSTform.s    39
  125 0012D 00000           CON(5)  =TRUE
  126               * Return external value
  127               * File  INFTSTform.s    40
  128 00132 00000           CON(5)  =SEMI
  129               * File  INFTSTform.s    41
  130 00137 00000           CON(5)  =DUPTYPEEXT?
  131 0013C 00000           CON(5)  =case
  132 00141 00000           CON(5)  =DOCOL
  133               * Unit object
  134               * File  INFTSTform.s    42
  135 00146 00000           CON(5)  =DUP
  136 0014B 00000           CON(5)  =DOIDNT
  137 00150 20              CON(2)  2
  138 00152 4513            NIBASC  \T1\
  139 00156 00000           CON(5)  =EQUALNOT
  140 0015B 00000           CON(5)  =IT
  141 00160 00000           CON(5)  =DOCOL
  142               * IF changed from init. value
  143               * File  INFTSTform.s    43
  144 00165 00000           CON(5)  =NOVAL
  145 0016A 00000           CON(5)  =BINT0
  146               * reset other field
  147               * File  INFTSTform.s    44
  148 0016F 00000           CON(5)  =DOFLASHP
  149 00174 0000000         CON(7)  =^IfSetFieldValue
  150               * with NOVAL
  151               * File  INFTSTform.s    45
  152 0017B 00000           CON(5)  =BINT0
  153 00180 00000           CON(5)  =DOFLASHP
  154 00185 0000000         CON(7)  =^IfSetField
  155               * File  INFTSTform.s    46
  156 0018C 00000           CON(5)  =SEMI
  157               * File  INFTSTform.s    47
  158 00191 00000           CON(5)  =TRUE
  159               * Return external value
  160               * File  INFTSTform.s    48
  161 00196 00000           CON(5)  =SEMI
  162               * File  INFTSTform.s    49
  163 0019B 00000           CON(5)  =TRUE
  164               * File  INFTSTform.s    50
  165 001A0 00000           CON(5)  =SEMI
  166               * File  INFTSTform.s    51
  167 001A5 00000           CON(5)  =FALSE
  168               * File  INFTSTform.s    52
  169 001AA 00000           CON(5)  =SEMI
  170               *        ' ::                                  ( Message handler )
  171               *            IfMsgGetFieldValue OVER#=case ::
  172               *              DROP
  173               *              ::
  174               *                CK1&Dispatch
  175               *                       BINT1 ::
  176               *                         "\B0C" umEND BINT3 EXTN ;
  177               *                       BINT6 :: NOP ;
  178               *                       BINT14 :: NOP ;
  179               *                       BINT0 :: NOP ;
  180               *              ;
  181               *              DUP
  182               *              ' LAM FldVal_T1 STO
  183               *              TRUE
  184               *            ;
  185               *            IfMsgSetFieldValue OVER#=case ::
  186               *              DROP
  187               *                       DUP NOVAL EQUAL case ::
  188               *                         TRUE
  189               *                       ;
  190               *              DUP LAM FldVal_T1 EQUALNOT IT ::
  191               *                NOVAL BINT0
  192               *                FLASHPTR IfSetFieldValue
  193               *                BINT1 FLASHPTR IfSetField
  194               *              ;
  195               *              TRUE
  196               *            ;
  197               *            DROPFALSE
  198               *          ;
  199               * File  INFTSTform.s    82
  200 001AF 00000           CON(5)  =BINT14
  201 001B4 00000           CON(5)  =BINT17
  202 001B9 00000           CON(5)  =BINT45
  203 001BE 00000           CON(5)  =BINT8
  204               * Position & size
  205               * File  INFTSTform.s    83
  206 001C3 00000           CON(5)  =BINT1
  207               * Field type: TEXT
  208               * File  INFTSTform.s    84
  209 001C8 00000           CON(5)  =DOLIST
  210 001CD 00000           CON(5)  =BINT0
  211 001D2 00000           CON(5)  =BINT13
  212 001D7 00000           CON(5)  =SEMI
  213               * Allowed types: REAL, UNIT
  214               * File  INFTSTform.s    85
  215 001DC 00000           CON(5)  =BINT2
  216               * Decompile with stack appearance
  217               * File  INFTSTform.s    86
  218 001E1 00000           CON(5)  =DOCSTR
  219 001E6 93000           CON(5)  57
  220 001EB 3545144         NIBASC  \STATIC AIR TEPM. (TR\
            5943402
            14942502455405D4E202824525

  221 00213 555402          NIBASC  \UE \
  222 00219 0B              CON(2)  #B0
  223 0021B 3492            NIBASC  \C)\
  224               * Help string
  225               * File  INFTSTform.s    87
  226 0021F 00000           CON(5)  =MINUSONE
  227               * ChooseData N/A
  228               * File  INFTSTform.s    88
  229 00224 00000           CON(5)  =MINUSONE
  230               * ChooseDecompile
  231               * File  INFTSTform.s    89
  232 00229 00000           CON(5)  =MINUSONE
  233               * Reset value
  234               * File  INFTSTform.s    90
  235 0022E 00000           CON(5)  =DOIDNT
  236 00233 20              CON(2)  2
  237 00235 4513            NIBASC  \T1\
  238               * Initial value
  239               * File  INFTSTform.s    91
  240
  241               * File  INFTSTform.s    92
  242 00239 00000           CON(5)  =BINT2
  243 0023E 00000           CON(5)  =BINT2
  244               * Label and field counts
  245               * File  INFTSTform.s    93
  246
  247               * File  INFTSTform.s    94
  248 00243 00000           CON(5)  ='DROPFALSE
  249               * Inform Box message handler
  250               * File  INFTSTform.s    95
  251 00248 00000           CON(5)  =DOCSTR
  252 0024D B0000           CON(5)  11
  253 00252 943514          NIBASC  \ISA\
  254               * Title
  255               * File  INFTSTform.s    96
  256 00258 00000           CON(5)  =DOFLASHP
  257 0025D 0000000         CON(7)  =^IfMain
  258               * Create the input form
  259               * File  INFTSTform.s    97
  260 00264 00000           CON(5)  =SEMI
Saturn Assembler                                       Sat Apr 25 20:01:30 2009
V3.0.9 (04/15/2007)   Symbol Table                       INFTSTform.a   Page    2

 #=case                            Ext                   -    95
 '                                 Ext                   -    39    90
 'DROPFALSE                        Ext                   -   248
 BINT0                             Ext                   -    54   113   120
                                         145   152   210
 BINT1                             Ext                   -    25    31    49
                                         206
 BINT110                           Ext                   -    45
 BINT13                            Ext                   -    55   211
 BINT14                            Ext                   -    43   200
 BINT17                            Ext                   -   201
 BINT18                            Ext                   -    32
 BINT2                             Ext                   -    59   215   242
                                         243
 BINT3                             Ext                   -   108
 BINT4                             Ext                   -    94
 BINT45                            Ext                   -   202
 BINT8                             Ext                   -    44    46   203
 BINT9                             Ext                   -    26
 DOCOL                             Ext                   -    19    91    96
                                         100   132   141
 DOCSTR                            Ext                   -    22    28    62
                                         103   218   251
 DOFLASHP                          Ext                   -   116   121   148
                                         153   256
 DOIDNT                            Ext                   -    81   136   235
 DOLIST                            Ext                   -    53   209
 DOROMP                            Ext                   -    40
 DUP                               Ext                   -   135
 DUPTYPEEXT?                       Ext                   -   130
 DUPTYPEREAL?                      Ext                   -    98
 EQUALNOT                          Ext                   -   139
 EXTN                              Ext                   -   109
 FALSE                             Ext                   -   167
=INFTSTform                        Rel       0 #00000000 -    17
 IT                                Ext                   -   140
 MINUSONE                          Ext                   -    67    74    78
                                         226   229   232
 NOVAL                             Ext                   -   112   144
=RomId                             Abs     806 #00000326 -     9
 SEMI                              Ext                   -    56   128   156
                                         161   165   169   212   260
 TRUE                              Ext                   -   125   158   163
 ^IfMain                           Ext                   -   257
 ^IfSetField                       Ext                   -   122   154
 ^IfSetFieldValue                  Ext                   -   117   149
 case                              Ext                   -    99   131
 umEND                             Ext                   -   107
 ~Field_PA_MsgHandler              Ext                   -    41
Saturn Assembler                                       Sat Apr 25 20:01:30 2009
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
