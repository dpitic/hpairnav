Saturn Assembler                                       Sat May 16 19:59:33 2009
V3.0.9 (04/15/2007)                                      INF3.a         Page    1

    1             * File  INF3.s  1
    2             * RPL
    3             * File  INF3.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF2.s, part of the INF2.hpp project, created by <> on 15/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Displays an Input Form with 3 fields.  Uses the
    7             *                  Input Form message handler to customise softkey 4.
    8             *                  This source file uses the defines in the GHI.H
    9             *                  include file.
   10             * COMPATIBILITY:   HP48
   11             * USAGE:     ( -> %0         [ If cancelled ] )
   12             *            ( -> ob % % %1  [ If accepted ]  )
   13             *
   14             * File Header
   15             * File  INF3.s  13
   16             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\GUI.H
   17
   18
   19             * ( Ob Type Not Applicable
   20
   21             * ( Format Not Applicable
   22
   23
   24
   25
   26             * ( decimal 67
   27             * ( decimal 86
   28             * ( decimal 82
   29             * ( decimal 85
   30             * ( decimal 101
   31             * ( decimal 97
   32             * ( decimal 100
   33             * ( decimal 113
   34             * ( decimal 112
   35
   36             * ( field height
   37             * ( check field width
   38             * ( decimal 67
   39             * ( decimal 85
   40             * ( decimal 97
   41
   42             *|| Resuming file INF3.s at line 13
   43             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF3.H
   44
   45             =RomId  EQU     #200
   46             * ROMID set to 200
   47
   48
   49
   50             *|| Resuming file INF3.s at line 14
   51 00000 00000         CON(6)  =~xINF3
            0
   52 00006       =xINF3
   53             * File  INF3.s  16
   54 00006 00000         CON(5)  =DOCOL
   55             * File  INF3.s  17
   56 0000B 00000         CON(5)  =AtUserStack
   57             * Clear saved command name, no arguments
   58             * Input Form Parameters
   59             * Label Specifiers ( $ #X_Position #Y_Position )
   60             * File  INF3.s  20
   61 00010 00000         CON(5)  =DOCSTR
   62 00015 B1000         CON(5)  27
   63 0001A 54449         NIBASC  \EDIT FIELD:\
            44502
            649454C444A3

   64 00030 00000         CON(5)  =ONE
   65 00035 00000         CON(5)  =NINETEEN
   66             * Label 1
   67             * File  INF3.s  21
   68 0003A 00000         CON(5)  =DOCSTR
   69 0003F F1000         CON(5)  31
   70 00044 3484F         NIBASC  \CHOOSE FIELD:\
            4F435
            5402649454C444A3

   71 0005E 00000         CON(5)  =ONE
   72 00063 00000         CON(5)  =TWENTYEIGHT
   73             * Label 2
   74             * File  INF3.s  22
   75 00068 00000         CON(5)  =DOCSTR
   76 0006D B1000         CON(5)  27
   77 00072 34845         NIBASC  \CHECK FIELD\
            434B4
            02649454C444

   78 00088 00000         CON(5)  =EIGHT
   79 0008D 00000         CON(5)  =THIRTYSEVEN
   80             * Label 3
   81             * File  INF3.s  23
   82
   83             * Field Specifiers
   84             * File  INF3.s  25
   85             * Field 1 - Edit field
   86             * File  INF3.s  26
   87 00092 00000         CON(5)  ='DROPFALSE
   88             * Field message handler
   89             * File  INF3.s  27
   90 00097 00000         CON(5)  =FORTYNINE
   91 0009C 00000         CON(5)  =SEVENTEEN
   92             * #X_Position #Y_Position
   93             * File  INF3.s  28
   94 000A1 00000         CON(5)  =DOBINT
   95 000A6 94000         CON(5)  73
   96             * #Field_Width
   97             * File  INF3.s  29
   98 000AB 00000         CON(5)  =NINE
   99             * #Field_Height
  100             * File  INF3.s  30
  101 000B0 00000         CON(5)  =ONE
  102             * #Field_Type [1 = Text field]
  103             * File  INF3.s  31
  104 000B5 00000         CON(5)  =MINUSONE
  105             * Object_Types [MINUSONE = Any type]
  106             * File  INF3.s  32
  107 000BA 00000         CON(5)  =FOUR
  108             * Decompile_Object [FOUR = ???????????]
  109             * File  INF3.s  33
  110 000BF 00000         CON(5)  =DOCSTR
  111 000C4 52000         CON(5)  37
  112 000C9 54E44         NIBASC  \ENTER ANY OBJECT\
            55425
            0214E49502F424A4543445

  113             * Help_String
  114             * File  INF3.s  34
  115 000E9 00000         CON(5)  =MINUSONE
  116             * Choose_Field_Data N/A
  117             * File  INF3.s  35
  118 000EE 00000         CON(5)  =MINUSONE
  119             * Choose_Decompile_Fmt N/A
  120             * File  INF3.s  36
  121 000F3 00000         CON(5)  =MINUSONE
  122             * Reset_Value [MINUSONE = Empty field]
  123             * File  INF3.s  37
  124 000F8 00000         CON(5)  =MINUSONE
  125             * Initial_Value [MINUSONE = Empty field]
  126             * File  INF3.s  38
  127
  128             * File  INF3.s  39
  129             * Field 2 - Choose field
  130             * File  INF3.s  40
  131 000FD 00000         CON(5)  ='DROPFALSE
  132             * Field message handler
  133             * File  INF3.s  41
  134 00102 00000         CON(5)  =FORTYNINE
  135 00107 00000         CON(5)  =TWENTYSIX
  136             * #X_Position #Y_Position
  137             * File  INF3.s  42
  138 0010C 00000         CON(5)  =FORTYNINE
  139             * #Field_Width
  140             * File  INF3.s  43
  141 00111 00000         CON(5)  =NINE
  142             * #Field_Height
  143             * File  INF3.s  44
  144 00116 00000         CON(5)  =TWELVE
  145             * #Field_Type [12 = Choose field]
  146             * File  INF3.s  45
  147 0011B 00000         CON(5)  =MINUSONE
  148             * Object_Types [MINUSONE for Choose Field]
  149             * File  INF3.s  46
  150 00120 00000         CON(5)  =FOUR
  151             * Decompile_Object [TWO = stack appearance]
  152             * File  INF3.s  47
  153 00125 00000         CON(5)  =DOCSTR
  154 0012A 32000         CON(5)  35
  155 0012F 3484F         NIBASC  \CHOOSE A NUMBER\
            4F435
            54021402E455D4245425

  156             * Help_String
  157             * File  INF3.s  48
  158 0014D 00000         CON(5)  =DOLIST
  159 00152 00000         CON(5)  =%1
  160 00157 00000         CON(5)  =%2
  161 0015C 00000         CON(5)  =%3
  162 00161 00000         CON(5)  =SEMI
  163             * Choose_Field_Data
  164             * File  INF3.s  49
  165 00166 00000         CON(5)  =FOUR
  166             * Choose_Decompile_Fmt [FOUR = ????????]
  167             * File  INF3.s  50
  168 0016B 00000         CON(5)  =%1
  169             * Reset_Value
  170             * File  INF3.s  51
  171 00170 00000         CON(5)  =%1
  172             * Initial_Value
  173             * File  INF3.s  52
  174
  175             * File  INF3.s  53
  176             * Field 3 - Check field
  177             * File  INF3.s  54
  178 00175 00000         CON(5)  ='DROPFALSE
  179             * Field message handler
  180             * File  INF3.s  55
  181 0017A 00000         CON(5)  =ONE
  182 0017F 00000         CON(5)  =THIRTYFIVE
  183             * #X_Position #Y_Position
  184             * File  INF3.s  56
  185 00184 00000         CON(5)  =SIX
  186             * #Field_Width
  187             * File  INF3.s  57
  188 00189 00000         CON(5)  =NINE
  189             * #Field_Height
  190             * File  INF3.s  58
  191 0018E 00000         CON(5)  =THIRTYTWO
  192             * #Field_Type [32 = Check field]
  193             * File  INF3.s  59
  194 00193 00000         CON(5)  =MINUSONE
  195             * Object_Types N/A
  196             * File  INF3.s  60
  197 00198 00000         CON(5)  =MINUSONE
  198             * Decompile_Object N/A
  199             * File  INF3.s  61
  200 0019D 00000         CON(5)  =DOCSTR
  201 001A2 52000         CON(5)  37
  202 001A7 34845         NIBASC  \CHECK OR UNCHECK\
            434B4
            02F4250255E434845434B4

  203             * Help_String
  204             * File  INF3.s  62
  205 001C7 00000         CON(5)  =MINUSONE
  206             * Choose_Field_Data N/A
  207             * File  INF3.s  63
  208 001CC 00000         CON(5)  =MINUSONE
  209             * Choose_Decompile_Fmt N/A
  210             * File  INF3.s  64
  211 001D1 00000         CON(5)  =FALSE
  212             * Reset_Value
  213             * File  INF3.s  65
  214 001D6 00000         CON(5)  =FALSE
  215             * Initial_Value
  216             * File  INF3.s  66
  217
  218             * File  INF3.s  67
  219 001DB 00000         CON(5)  =THREE
  220             * #LabelCount
  221             * File  INF3.s  68
  222 001E0 00000         CON(5)  =THREE
  223             * #Fieldcount
  224             * File  INF3.s  69
  225 001E5 00000         CON(5)  ='
  226 001EA 00000         CON(5)  =DOROMP
  227 001EF 00000         CON(6)  =~INF3MsgHandler
            0
  228             * Input form message handler
  229             * File  INF3.s  70
  230 001F5 00000         CON(5)  =DOCSTR
  231 001FA D0000         CON(5)  13
  232 001FF 45543         NIBASC  \TEST\
            545
  233             * Title
  234             * File  INF3.s  71
  235 00207 00000         CON(5)  =DoInputForm
  236             * Run the Input Form
  237             * File  INF3.s  72
  238 0020C 00000         CON(5)  =case
  239 00211 00000         CON(5)  =DOCOL
  240 00216 00000         CON(5)  =ITE
  241 0021B 00000         CON(5)  =%1
  242 00220 00000         CON(5)  =%0
  243 00225 00000         CON(5)  =%1
  244 0022A 00000         CON(5)  =SEMI
  245             * IF OK, convert check result and return %1
  246             * File  INF3.s  73
  247 0022F 00000         CON(5)  =%0
  248             * ELSE return %0
  249             * File  INF3.s  74
  250 00234 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat May 16 19:59:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       INF3.a         Page    2

 %0                                Ext                   -   242   247
 %1                                Ext                   -   159   168   171
                                         241   243
 %2                                Ext                   -   160
 %3                                Ext                   -   161
 '                                 Ext                   -   225
 'DROPFALSE                        Ext                   -    87   131   178
 AtUserStack                       Ext                   -    56
 DOBINT                            Ext                   -    94
 DOCOL                             Ext                   -    54   239
 DOCSTR                            Ext                   -    61    68    75
                                         110   153   200   230
 DOLIST                            Ext                   -   158
 DOROMP                            Ext                   -   226
 DoInputForm                       Ext                   -   235
 EIGHT                             Ext                   -    78
 FALSE                             Ext                   -   211   214
 FORTYNINE                         Ext                   -    90   134   138
 FOUR                              Ext                   -   107   150   165
 ITE                               Ext                   -   240
 MINUSONE                          Ext                   -   104   115   118
                                         121   124   147   194   197   205   208
 NINE                              Ext                   -    98   141   188
 NINETEEN                          Ext                   -    65
 ONE                               Ext                   -    64    71   101
                                         181
=RomId                             Abs     512 #00000200 -    45
 SEMI                              Ext                   -   162   244   250
 SEVENTEEN                         Ext                   -    91
 SIX                               Ext                   -   185
 THIRTYFIVE                        Ext                   -   182
 THIRTYSEVEN                       Ext                   -    79
 THIRTYTWO                         Ext                   -   191
 THREE                             Ext                   -   219   222
 TWELVE                            Ext                   -   144
 TWENTYEIGHT                       Ext                   -    72
 TWENTYSIX                         Ext                   -   135
 case                              Ext                   -   238
=xINF3                             Rel       6 #00000006 -    52
 ~INF3MsgHandler                   Ext                   -   227
 ~xINF3                            Ext                   -    51
Saturn Assembler                                       Sat May 16 19:59:33 2009
V3.0.9 (04/15/2007)   Statistics                         INF3.a         Page    3

Input Parameters

  Source file name is INF3.a

  Listing file name is INF3.l

  Object file name is INF3.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
