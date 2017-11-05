Saturn Assembler                                       Fri May 15 21:06:27 2009
V3.0.9 (04/15/2007)                                      INF1.a         Page    1

    1             * File  INF1.s  1
    2             * RPL
    3             * File  INF1.s  2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF1.s, part of the INF1.hpp project, created by <> on 15/05/2009
    5             **********************************************************************
    6             * DESCRIPTION:     Displays an Input Form with 3 fields
    7             * COMPATIBILITY:   HP48, HP50 (NOTE: Fields don't line up on HP50)
    8             * USAGE:     ( -> %0         [ If cancelled ] )
    9             *            ( -> ob % % %1  [ If accepted ] )
   10             *
   11             * File  INF1.s  9
   12 00000 00000         CON(5)  =DOCOL
   13             * File  INF1.s  10
   14 00005 00000         CON(5)  =AtUserStack
   15             * Clear saved command name, no arguments
   16             * Input Form Parameters
   17             * Label Specifiers ( $ #X_Position #Y_Position )
   18             * File  INF1.s  13
   19 0000A 00000         CON(5)  =DOCSTR
   20 0000F B1000         CON(5)  27
   21 00014 54449         NIBASC  \EDIT FIELD:\
            44502
            649454C444A3

   22 0002A 00000         CON(5)  =ONE
   23 0002F 00000         CON(5)  =NINETEEN
   24             * Label 1
   25             * File  INF1.s  14
   26 00034 00000         CON(5)  =DOCSTR
   27 00039 F1000         CON(5)  31
   28 0003E 3484F         NIBASC  \CHOOSE FIELD:\
            4F435
            5402649454C444A3

   29 00058 00000         CON(5)  =ONE
   30 0005D 00000         CON(5)  =TWENTYEIGHT
   31             * Label 2
   32             * File  INF1.s  15
   33 00062 00000         CON(5)  =DOCSTR
   34 00067 B1000         CON(5)  27
   35 0006C 34845         NIBASC  \CHECK FIELD\
            434B4
            02649454C444

   36 00082 00000         CON(5)  =EIGHT
   37 00087 00000         CON(5)  =THIRTYSEVEN
   38             * Label 3
   39             * File  INF1.s  16
   40
   41             * Field Specifiers
   42             * File  INF1.s  18
   43             * Field 1 - Edit field
   44             * File  INF1.s  19
   45 0008C 00000         CON(5)  ='DROPFALSE
   46             * Field message handler
   47             * File  INF1.s  20
   48 00091 00000         CON(5)  =FORTY
   49 00096 00000         CON(5)  =SEVENTEEN
   50             * #X_Position #Y_Position
   51             * File  INF1.s  21
   52 0009B 00000         CON(5)  =DOBINT
   53 000A0 F4000         CON(5)  79
   54             * #Field_Width
   55             * File  INF1.s  22
   56 000A5 00000         CON(5)  =NINE
   57             * #Field_Height
   58             * File  INF1.s  23
   59 000AA 00000         CON(5)  =ONE
   60             * #Field_Type [1 = Text field]
   61             * File  INF1.s  24
   62 000AF 00000         CON(5)  =MINUSONE
   63             * Object_Types [MINUSONE = Any type]
   64             * File  INF1.s  25
   65 000B4 00000         CON(5)  =TWO
   66             * Decompile_Object [TWO = stack appearance]
   67             * File  INF1.s  26
   68 000B9 00000         CON(5)  =DOCSTR
   69 000BE 52000         CON(5)  37
   70 000C3 54E44         NIBASC  \ENTER ANY OBJECT\
            55425
            0214E49502F424A4543445

   71             * Help_String
   72             * File  INF1.s  27
   73 000E3 00000         CON(5)  =MINUSONE
   74             * Choose_Field_Data N/A
   75             * File  INF1.s  28
   76 000E8 00000         CON(5)  =MINUSONE
   77             * Choose_Decompile_Fmt N/A
   78             * File  INF1.s  29
   79 000ED 00000         CON(5)  =MINUSONE
   80             * Reset_Value [MINUSONE = Empty field]
   81             * File  INF1.s  30
   82 000F2 00000         CON(5)  =MINUSONE
   83             * Initial_Value [MINUSONE = Empty field]
   84             * File  INF1.s  31
   85
   86             * File  INF1.s  32
   87             * Field 2 - Choose field
   88             * File  INF1.s  33
   89 000F7 00000         CON(5)  ='DROPFALSE
   90             * Field message handler
   91             * File  INF1.s  34
   92 000FC 00000         CON(5)  =FORTYNINE
   93 00101 00000         CON(5)  =TWENTYSIX
   94             * #X_Position #Y_Position
   95             * File  INF1.s  35
   96 00106 00000         CON(5)  =FORTYNINE
   97             * #Field_Width
   98             * File  INF1.s  36
   99 0010B 00000         CON(5)  =NINE
  100             * #Field_Height
  101             * File  INF1.s  37
  102 00110 00000         CON(5)  =TWELVE
  103             * #Field_Type [12 = Choose field]
  104             * File  INF1.s  38
  105 00115 00000         CON(5)  =FOUR
  106             * Object_Types [FOUR = ?????????]
  107             * File  INF1.s  39
  108 0011A 00000         CON(5)  =TWO
  109             * Decompile_Object [TWO = stack appearance]
  110             * File  INF1.s  40
  111 0011F 00000         CON(5)  =DOCSTR
  112 00124 32000         CON(5)  35
  113 00129 3484F         NIBASC  \CHOOSE A NUMBER\
            4F435
            54021402E455D4245425

  114             * Help_String
  115             * File  INF1.s  41
  116 00147 00000         CON(5)  =DOLIST
  117 0014C 00000         CON(5)  =%1
  118 00151 00000         CON(5)  =%2
  119 00156 00000         CON(5)  =%3
  120 0015B 00000         CON(5)  =SEMI
  121             * Choose_Field_Data
  122             * File  INF1.s  42
  123 00160 00000         CON(5)  =TWO
  124             * Choose_Decompile_Fmt [TWO = stack appearance]
  125             * File  INF1.s  43
  126 00165 00000         CON(5)  =%1
  127             * Reset_Value
  128             * File  INF1.s  44
  129 0016A 00000         CON(5)  =%1
  130             * Initial_Value
  131             * File  INF1.s  45
  132
  133             * File  INF1.s  46
  134             * Field 3 - Check field
  135             * File  INF1.s  47
  136 0016F 00000         CON(5)  ='DROPFALSE
  137             * Field message handler
  138             * File  INF1.s  48
  139 00174 00000         CON(5)  =ONE
  140 00179 00000         CON(5)  =THIRTYFIVE
  141             * #X_Position #Y_Position
  142             * File  INF1.s  49
  143 0017E 00000         CON(5)  =SIX
  144             * #Field_Width
  145             * File  INF1.s  50
  146 00183 00000         CON(5)  =NINE
  147             * #Field_Height
  148             * File  INF1.s  51
  149 00188 00000         CON(5)  =THIRTYTWO
  150             * #Field_Type [32 = Check field]
  151             * File  INF1.s  52
  152 0018D 00000         CON(5)  =MINUSONE
  153             * Object_Types N/A
  154             * File  INF1.s  53
  155 00192 00000         CON(5)  =MINUSONE
  156             * Decompile_Object N/A
  157             * File  INF1.s  54
  158 00197 00000         CON(5)  =DOCSTR
  159 0019C 52000         CON(5)  37
  160 001A1 34845         NIBASC  \CHECK OR UNCHECK\
            434B4
            02F4250255E434845434B4

  161             * Help_String
  162             * File  INF1.s  55
  163 001C1 00000         CON(5)  =MINUSONE
  164             * Choose_Field_Data N/A
  165             * File  INF1.s  56
  166 001C6 00000         CON(5)  =MINUSONE
  167             * Choose_Decompile_Fmt N/A
  168             * File  INF1.s  57
  169 001CB 00000         CON(5)  =FALSE
  170             * Reset_Value
  171             * File  INF1.s  58
  172 001D0 00000         CON(5)  =FALSE
  173             * Initial_Value
  174             * File  INF1.s  59
  175
  176             * File  INF1.s  60
  177 001D5 00000         CON(5)  =THREE
  178             * #LabelCount
  179             * File  INF1.s  61
  180 001DA 00000         CON(5)  =THREE
  181             * #Fieldcount
  182             * File  INF1.s  62
  183 001DF 00000         CON(5)  ='DROPFALSE
  184             * Input form message handler
  185             * File  INF1.s  63
  186 001E4 00000         CON(5)  =DOCSTR
  187 001E9 D0000         CON(5)  13
  188 001EE 45543         NIBASC  \TEST\
            545
  189             * Title
  190             * File  INF1.s  64
  191 001F6 00000         CON(5)  =DoInputForm
  192             * Run the Input Form
  193             * File  INF1.s  65
  194 001FB 00000         CON(5)  =case
  195 00200 00000         CON(5)  =DOCOL
  196 00205 00000         CON(5)  =ITE
  197 0020A 00000         CON(5)  =%1
  198 0020F 00000         CON(5)  =%0
  199 00214 00000         CON(5)  =%1
  200 00219 00000         CON(5)  =SEMI
  201             * IF OK, convert check result and return %1
  202             * File  INF1.s  66
  203 0021E 00000         CON(5)  =%0
  204             * ELSE return %0
  205             * File  INF1.s  67
  206 00223 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri May 15 21:06:27 2009
V3.0.9 (04/15/2007)   Symbol Table                       INF1.a         Page    2

 %0                                Ext                   -   198   203
 %1                                Ext                   -   117   126   129
                                         197   199
 %2                                Ext                   -   118
 %3                                Ext                   -   119
 'DROPFALSE                        Ext                   -    45    89   136
                                         183
 AtUserStack                       Ext                   -    14
 DOBINT                            Ext                   -    52
 DOCOL                             Ext                   -    12   195
 DOCSTR                            Ext                   -    19    26    33
                                          68   111   158   186
 DOLIST                            Ext                   -   116
 DoInputForm                       Ext                   -   191
 EIGHT                             Ext                   -    36
 FALSE                             Ext                   -   169   172
 FORTY                             Ext                   -    48
 FORTYNINE                         Ext                   -    92    96
 FOUR                              Ext                   -   105
 ITE                               Ext                   -   196
 MINUSONE                          Ext                   -    62    73    76
                                          79    82   152   155   163   166
 NINE                              Ext                   -    56    99   146
 NINETEEN                          Ext                   -    23
 ONE                               Ext                   -    22    29    59
                                         139
 SEMI                              Ext                   -   120   200   206
 SEVENTEEN                         Ext                   -    49
 SIX                               Ext                   -   143
 THIRTYFIVE                        Ext                   -   140
 THIRTYSEVEN                       Ext                   -    37
 THIRTYTWO                         Ext                   -   149
 THREE                             Ext                   -   177   180
 TWELVE                            Ext                   -   102
 TWENTYEIGHT                       Ext                   -    30
 TWENTYSIX                         Ext                   -    93
 TWO                               Ext                   -    65   108   123
 case                              Ext                   -   194
Saturn Assembler                                       Fri May 15 21:06:27 2009
V3.0.9 (04/15/2007)   Statistics                         INF1.a         Page    3

Input Parameters

  Source file name is INF1.a

  Listing file name is INF1.l

  Object file name is INF1.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
