Saturn Assembler                                       Sun May 31 12:45:24 2009
V3.0.9 (04/15/2007)                                      INP2.a         Page    1

    1               * File  INP2.s  1
    2               * RPL
    3               * File  INP2.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\INP1.s, part of the INP1.hpp project, created by <> on 9/05/2009
    5               ********************************************************************
    6               * NAME:            INP2
    7               * DESCRIPTION:     Prompt for a real number, ending only if the user
    8               *                  aborts by pressing ON.  Type checking occurs after
    9               *                  InputLine.
   10               * COMPATIBILITY:   HP48
   11               *                  HP50     The number entered must be entered as a
   12               *                           real (ending with ".") else it will be
   13               *                           interpreted as a ZINT and program will
   14               *                           issue a FlashWarning.
   15               * STACK DIAG:      ( -> % %1 or %0 )
   16               *
   17               * File  INP2.s  15
   18 00000 00000           CON(5)  =DOCOL
   19               * File  INP2.s  16
   20 00005 00000           CON(5)  =0LASTOWDOB!
   21               * Clear protection word
   22               * File  INP2.s  17
   23 0000A 00000           CON(5)  =CK0NOLASTWD
   24               * No arguments
   25               * File  INP2.s  18
   26 0000F 00000           CON(5)  =BEGIN
   27               * Beginning of type checking loop
   28               * File  INP2.s  19
   29 00014 00000           CON(5)  =DOCOL
   30               * InputLine parameters
   31               * File  INP2.s  21
   32 00019 00000           CON(5)  =DOCSTR
   33 0001E 32000           CON(5)  35
   34 00023 54E6475         NIBASC  \Enter a number:\
            6270216
            02E657D6265627A3

   35               * $Prompt = prompt sting displayed in area 2a
   36               * File  INP2.s  22
   37 00041 00000           CON(5)  =NULL$
   38               * $Input = Default input string [NULL$]
   39               * File  INP2.s  23
   40 00046 00000           CON(5)  =ZERO
   41               * CursorPos = Initial cursor position [0 = end of row]
   42               * File  INP2.s  24
   43 0004B 00000           CON(5)  =ONE
   44               * #Mode = initial insert/replace mode [1 = insert mode]
   45               * File  INP2.s  25
   46 00050 00000           CON(5)  =ONE
   47               * #Entry = initial entry mode [1 = program/immediate entry]
   48               * File  INP2.s  26
   49 00055 00000           CON(5)  =TWO
   50               * #Alpha = initial alpha lock mode [2 = alpha unlocked ]
   51               * File  INP2.s  27
   52 0005A 00000           CON(5)  =DOLIST
   53               * Input Menu objects
   54               * File  INP2.s  28
   55 0005F 00000           CON(5)  =<SkipKey
   56               * Skip left key
   57               * File  INP2.s  29
   58 00064 00000           CON(5)  =>SkipKey
   59               * Skip right key
   60               * File  INP2.s  30
   61 00069 00000           CON(5)  =<DelKey
   62               * Delete left key
   63               * File  INP2.s  31
   64 0006E 00000           CON(5)  =>DelKey
   65               * Delete right key
   66               * File  INP2.s  32
   67 00073 00000           CON(5)  =TogInsertKey
   68               * Insert/replace mode key
   69               * File  INP2.s  33
   70 00078 00000           CON(5)  =SEMI
   71               * File  INP2.s  34
   72 0007D 00000           CON(5)  =ONE
   73               * #Row = first row of the menu to be displayed [1 = first row]
   74               * File  INP2.s  35
   75 00082 00000           CON(5)  =FALSE
   76               * Abort = flag specifying action of ON key [FALSE = clear cmd line]
   77               * File  INP2.s  36
   78 00087 00000           CON(5)  =ONE
   79               * #Action = post command line processing if terminated by ENTER key
   80               * File  INP2.s  37
   81               * [ONE = parse the input string, return input string]
   82               * File  INP2.s  38
   83               * [      and the resulting object                   ]
   84               * File  INP2.s  39
   85 0008C 00000           CON(5)  =InputLine
   86               * ... -> $Input Ob TRUE/FALSE
   87               * Type checking (check for REAL only)
   88               * File  INP2.s  41
   89 00091 00000           CON(5)  =NOTcase
   90 00096 00000           CON(5)  =DOCOL
   91 0009B 00000           CON(5)  =%0
   92 000A0 00000           CON(5)  =TRUE
   93 000A5 00000           CON(5)  =SEMI
   94               * End loop, return %0 if user aborted with ON
   95               * File  INP2.s  42
   96 000AA 00000           CON(5)  =DUPTYPEREAL?
   97 000AF 00000           CON(5)  =case
   98 000B4 00000           CON(5)  =DOCOL
   99               * IF the object is a real number
  100               * File  INP2.s  43
  101 000B9 00000           CON(5)  =SWAPDROP
  102               * Discard the $Input [ -> Ob ]
  103               * File  INP2.s  44
  104 000BE 00000           CON(5)  =%1
  105               * Return %1 to signal a real number result [ -> Ob %1 ]
  106               * File  INP2.s  45
  107 000C3 00000           CON(5)  =TRUE
  108               * End of loop
  109               * File  INP2.s  46
  110 000C8 00000           CON(5)  =SEMI
  111               * File  INP2.s  47
  112 000CD 00000           CON(5)  =2DROP
  113               * IF NOT real number, DROP $Input and Ob
  114               * File  INP2.s  48
  115 000D2 00000           CON(5)  =DOCSTR
  116 000D7 52000           CON(5)  37
  117 000DC 255616C         NIBASC  \Real Number Only\
            602E457
            D626562702F4E6C697

  118               * Display a warning
  119               * File  INP2.s  49
  120 000FC 00000           CON(5)  =FlashWarning
  121               * File  INP2.s  50
  122 00101 00000           CON(5)  =FALSE
  123               * Loop must continue
  124               * File  INP2.s  51
  125 00106 00000           CON(5)  =SEMI
  126               * File  INP2.s  52
  127 0010B 00000           CON(5)  =UNTIL
  128               * File  INP2.s  53
  129 00110 00000           CON(5)  =ClrDAsOK
  130               * Redraw display
  131               * File  INP2.s  54
  132 00115 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun May 31 12:45:24 2009
V3.0.9 (04/15/2007)   Symbol Table                       INP2.a         Page    2

 %0                                Ext                   -    91
 %1                                Ext                   -   104
 0LASTOWDOB!                       Ext                   -    20
 2DROP                             Ext                   -   112
 <DelKey                           Ext                   -    61
 <SkipKey                          Ext                   -    55
 >DelKey                           Ext                   -    64
 >SkipKey                          Ext                   -    58
 BEGIN                             Ext                   -    26
 CK0NOLASTWD                       Ext                   -    23
 ClrDAsOK                          Ext                   -   129
 DOCOL                             Ext                   -    18    29    90
                                          98
 DOCSTR                            Ext                   -    32   115
 DOLIST                            Ext                   -    52
 DUPTYPEREAL?                      Ext                   -    96
 FALSE                             Ext                   -    75   122
 FlashWarning                      Ext                   -   120
 InputLine                         Ext                   -    85
 NOTcase                           Ext                   -    89
 NULL$                             Ext                   -    37
 ONE                               Ext                   -    43    46    72
                                          78
 SEMI                              Ext                   -    70    93   110
                                         125   132
 SWAPDROP                          Ext                   -   101
 TRUE                              Ext                   -    92   107
 TWO                               Ext                   -    49
 TogInsertKey                      Ext                   -    67
 UNTIL                             Ext                   -   127
 ZERO                              Ext                   -    40
 case                              Ext                   -    97
Saturn Assembler                                       Sun May 31 12:45:24 2009
V3.0.9 (04/15/2007)   Statistics                         INP2.a         Page    3

Input Parameters

  Source file name is INP2.a

  Listing file name is INP2.l

  Object file name is INP2.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
