Saturn Assembler                                       Fri May 15 21:07:07 2009
V3.0.9 (04/15/2007)                                      INF2.a         Page    1

    1             * File  INF2.s  1
    2             * RPL
    3             * File  INF2.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF2.s, part of the INF2.hpp project, created by <> on 15/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Displays an Input Form with 3 fields.  This source
    7             *                  file uses the defines in the GHI.H include file.
    8             * COMPATIBILITY:   HP48, HP50
    9             * USAGE:     ( -> %0         [ If cancelled ] )
   10             *            ( -> ob % % %1  [ If accepted ]  )
   11             *
   12             * File Header
   13             * File  INF2.s  11
   14             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Include\GUI.H
   15
   16
   17             * ( Ob Type Not Applicable
   18
   19             * ( Format Not Applicable
   20
   21
   22
   23
   24             * ( decimal 67
   25             * ( decimal 86
   26             * ( decimal 82
   27             * ( decimal 85
   28             * ( decimal 101
   29             * ( decimal 97
   30             * ( decimal 100
   31             * ( decimal 113
   32             * ( decimal 112
   33
   34             * ( field height
   35             * ( check field width
   36             * ( decimal 67
   37             * ( decimal 85
   38             * ( decimal 97
   39
   40             *|| Resuming file INF2.s at line 11
   41 00000 00000         CON(5)  =DOCOL
   42             * File  INF2.s  13
   43 00005 00000         CON(5)  =AtUserStack
   44             * Clear saved command name, no arguments
   45             * Input Form Parameters
   46             * Label Specifiers ( $ #X_Position #Y_Position )
   47             * File  INF2.s  16
   48 0000A 00000         CON(5)  =DOCSTR
   49 0000F B1000         CON(5)  27
   50 00014 54449         NIBASC  \EDIT FIELD:\
            44502
            649454C444A3

   51 0002A 00000         CON(5)  =ONE
   52 0002F 00000         CON(5)  =NINETEEN
   53             * Label 1
   54             * File  INF2.s  17
   55 00034 00000         CON(5)  =DOCSTR
   56 00039 F1000         CON(5)  31
   57 0003E 3484F         NIBASC  \CHOOSE FIELD:\
            4F435
            5402649454C444A3

   58 00058 00000         CON(5)  =ONE
   59 0005D 00000         CON(5)  =TWENTYEIGHT
   60             * Label 2
   61             * File  INF2.s  18
   62 00062 00000         CON(5)  =DOCSTR
   63 00067 B1000         CON(5)  27
   64 0006C 34845         NIBASC  \CHECK FIELD\
            434B4
            02649454C444

   65 00082 00000         CON(5)  =EIGHT
   66 00087 00000         CON(5)  =THIRTYSEVEN
   67             * Label 3
   68             * File  INF2.s  19
   69
   70             * Field Specifiers
   71             * File  INF2.s  21
   72             * Field 1 - Edit field
   73             * File  INF2.s  22
   74 0008C 00000         CON(5)  ='DROPFALSE
   75             * Field message handler
   76             * File  INF2.s  23
   77 00091 00000         CON(5)  =FORTYNINE
   78 00096 00000         CON(5)  =SEVENTEEN
   79             * #X_Position #Y_Position
   80             * File  INF2.s  24
   81 0009B 00000         CON(5)  =DOBINT
   82 000A0 94000         CON(5)  73
   83             * #Field_Width
   84             * File  INF2.s  25
   85 000A5 00000         CON(5)  =NINE
   86             * #Field_Height
   87             * File  INF2.s  26
   88 000AA 00000         CON(5)  =ONE
   89             * #Field_Type [1 = Text field]
   90             * File  INF2.s  27
   91 000AF 00000         CON(5)  =MINUSONE
   92             * Object_Types [MINUSONE = Any type]
   93             * File  INF2.s  28
   94 000B4 00000         CON(5)  =FOUR
   95             * Decompile_Object [FOUR = ???????????]
   96             * File  INF2.s  29
   97 000B9 00000         CON(5)  =DOCSTR
   98 000BE 52000         CON(5)  37
   99 000C3 54E44         NIBASC  \ENTER ANY OBJECT\
            55425
            0214E49502F424A4543445

  100             * Help_String
  101             * File  INF2.s  30
  102 000E3 00000         CON(5)  =MINUSONE
  103             * Choose_Field_Data N/A
  104             * File  INF2.s  31
  105 000E8 00000         CON(5)  =MINUSONE
  106             * Choose_Decompile_Fmt N/A
  107             * File  INF2.s  32
  108 000ED 00000         CON(5)  =MINUSONE
  109             * Reset_Value [MINUSONE = Empty field]
  110             * File  INF2.s  33
  111 000F2 00000         CON(5)  =MINUSONE
  112             * Initial_Value [MINUSONE = Empty field]
  113             * File  INF2.s  34
  114
  115             * File  INF2.s  35
  116             * Field 2 - Choose field
  117             * File  INF2.s  36
  118 000F7 00000         CON(5)  ='DROPFALSE
  119             * Field message handler
  120             * File  INF2.s  37
  121 000FC 00000         CON(5)  =FORTYNINE
  122 00101 00000         CON(5)  =TWENTYSIX
  123             * #X_Position #Y_Position
  124             * File  INF2.s  38
  125 00106 00000         CON(5)  =FORTYNINE
  126             * #Field_Width
  127             * File  INF2.s  39
  128 0010B 00000         CON(5)  =NINE
  129             * #Field_Height
  130             * File  INF2.s  40
  131 00110 00000         CON(5)  =TWELVE
  132             * #Field_Type [12 = Choose field]
  133             * File  INF2.s  41
  134 00115 00000         CON(5)  =MINUSONE
  135             * Object_Types [MINUSONE for Choose Field]
  136             * File  INF2.s  42
  137 0011A 00000         CON(5)  =FOUR
  138             * Decompile_Object [TWO = stack appearance]
  139             * File  INF2.s  43
  140 0011F 00000         CON(5)  =DOCSTR
  141 00124 32000         CON(5)  35
  142 00129 3484F         NIBASC  \CHOOSE A NUMBER\
            4F435
            54021402E455D4245425

  143             * Help_String
  144             * File  INF2.s  44
  145 00147 00000         CON(5)  =DOLIST
  146 0014C 00000         CON(5)  =%1
  147 00151 00000         CON(5)  =%2
  148 00156 00000         CON(5)  =%3
  149 0015B 00000         CON(5)  =SEMI
  150             * Choose_Field_Data
  151             * File  INF2.s  45
  152 00160 00000         CON(5)  =FOUR
  153             * Choose_Decompile_Fmt [FOUR = ????????]
  154             * File  INF2.s  46
  155 00165 00000         CON(5)  =%1
  156             * Reset_Value
  157             * File  INF2.s  47
  158 0016A 00000         CON(5)  =%1
  159             * Initial_Value
  160             * File  INF2.s  48
  161
  162             * File  INF2.s  49
  163             * Field 3 - Check field
  164             * File  INF2.s  50
  165 0016F 00000         CON(5)  ='DROPFALSE
  166             * Field message handler
  167             * File  INF2.s  51
  168 00174 00000         CON(5)  =ONE
  169 00179 00000         CON(5)  =THIRTYFIVE
  170             * #X_Position #Y_Position
  171             * File  INF2.s  52
  172 0017E 00000         CON(5)  =SIX
  173             * #Field_Width
  174             * File  INF2.s  53
  175 00183 00000         CON(5)  =NINE
  176             * #Field_Height
  177             * File  INF2.s  54
  178 00188 00000         CON(5)  =THIRTYTWO
  179             * #Field_Type [32 = Check field]
  180             * File  INF2.s  55
  181 0018D 00000         CON(5)  =MINUSONE
  182             * Object_Types N/A
  183             * File  INF2.s  56
  184 00192 00000         CON(5)  =MINUSONE
  185             * Decompile_Object N/A
  186             * File  INF2.s  57
  187 00197 00000         CON(5)  =DOCSTR
  188 0019C 52000         CON(5)  37
  189 001A1 34845         NIBASC  \CHECK OR UNCHECK\
            434B4
            02F4250255E434845434B4

  190             * Help_String
  191             * File  INF2.s  58
  192 001C1 00000         CON(5)  =MINUSONE
  193             * Choose_Field_Data N/A
  194             * File  INF2.s  59
  195 001C6 00000         CON(5)  =MINUSONE
  196             * Choose_Decompile_Fmt N/A
  197             * File  INF2.s  60
  198 001CB 00000         CON(5)  =FALSE
  199             * Reset_Value
  200             * File  INF2.s  61
  201 001D0 00000         CON(5)  =FALSE
  202             * Initial_Value
  203             * File  INF2.s  62
  204
  205             * File  INF2.s  63
  206 001D5 00000         CON(5)  =THREE
  207             * #LabelCount
  208             * File  INF2.s  64
  209 001DA 00000         CON(5)  =THREE
  210             * #Fieldcount
  211             * File  INF2.s  65
  212 001DF 00000         CON(5)  ='DROPFALSE
  213             * Input form message handler
  214             * File  INF2.s  66
  215 001E4 00000         CON(5)  =DOCSTR
  216 001E9 D0000         CON(5)  13
  217 001EE 45543         NIBASC  \TEST\
            545
  218             * Title
  219             * File  INF2.s  67
  220 001F6 00000         CON(5)  =DoInputForm
  221             * Run the Input Form
  222             * File  INF2.s  68
  223 001FB 00000         CON(5)  =case
  224 00200 00000         CON(5)  =DOCOL
  225 00205 00000         CON(5)  =ITE
  226 0020A 00000         CON(5)  =%1
  227 0020F 00000         CON(5)  =%0
  228 00214 00000         CON(5)  =%1
  229 00219 00000         CON(5)  =SEMI
  230             * IF OK, convert check result and return %1
  231             * File  INF2.s  69
  232 0021E 00000         CON(5)  =%0
  233             * ELSE return %0
  234             * File  INF2.s  70
  235 00223 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri May 15 21:07:07 2009
V3.0.9 (04/15/2007)   Symbol Table                       INF2.a         Page    2

 %0                                Ext                   -   227   232
 %1                                Ext                   -   146   155   158
                                         226   228
 %2                                Ext                   -   147
 %3                                Ext                   -   148
 'DROPFALSE                        Ext                   -    74   118   165
                                         212
 AtUserStack                       Ext                   -    43
 DOBINT                            Ext                   -    81
 DOCOL                             Ext                   -    41   224
 DOCSTR                            Ext                   -    48    55    62
                                          97   140   187   215
 DOLIST                            Ext                   -   145
 DoInputForm                       Ext                   -   220
 EIGHT                             Ext                   -    65
 FALSE                             Ext                   -   198   201
 FORTYNINE                         Ext                   -    77   121   125
 FOUR                              Ext                   -    94   137   152
 ITE                               Ext                   -   225
 MINUSONE                          Ext                   -    91   102   105
                                         108   111   134   181   184   192   195
 NINE                              Ext                   -    85   128   175
 NINETEEN                          Ext                   -    52
 ONE                               Ext                   -    51    58    88
                                         168
 SEMI                              Ext                   -   149   229   235
 SEVENTEEN                         Ext                   -    78
 SIX                               Ext                   -   172
 THIRTYFIVE                        Ext                   -   169
 THIRTYSEVEN                       Ext                   -    66
 THIRTYTWO                         Ext                   -   178
 THREE                             Ext                   -   206   209
 TWELVE                            Ext                   -   131
 TWENTYEIGHT                       Ext                   -    59
 TWENTYSIX                         Ext                   -   122
 case                              Ext                   -   223
Saturn Assembler                                       Fri May 15 21:07:07 2009
V3.0.9 (04/15/2007)   Statistics                         INF2.a         Page    3

Input Parameters

  Source file name is INF2.a

  Listing file name is INF2.l

  Object file name is INF2.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
