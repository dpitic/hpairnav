Saturn Assembler                                       Sun May 31 12:15:22 2009
V3.0.9 (04/15/2007)                                      INP1.a         Page    1

    1               * File  INP1.s  1
    2               * RPL
    3               * File  INP1.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\INP1.s, part of the INP1.hpp project, created by <> on 9/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Displays a prompt to enter your name.  The menu is
    7               *                  specified using individual components and a string
    8               *                  label.
    9               * COMPATIBILITY:   HP48, HP50
   10               * USAGE:     ( -> $ 1 [ Terminated with ENTER ] )
   11               *            ( -> 0   [ Terminated with ON ] )
   12               *
   13               * File  INP1.s  11
   14 00000 00000           CON(5)  =DOCOL
   15               * File  INP1.s  12
   16 00005 00000           CON(5)  =0LASTOWDOB!
   17               * Clear protection word
   18               * File  INP1.s  13
   19 0000A 00000           CON(5)  =CK0NOLASTWD
   20               * No arguments
   21               * InputLine parameters
   22               * File  INP1.s  15
   23 0000F 00000           CON(5)  =DOCSTR
   24 00014 52000           CON(5)  37
   25 00019 54E6475         NIBASC  \Enter your name:\
            6270297
            F6572702E616D656A3

   26               * $Prompt = prompt sting displayed in area 2a
   27               * File  INP1.s  16
   28 00039 00000           CON(5)  =NULL$
   29               * $Input = Default input string [NULL$]
   30               * File  INP1.s  17
   31 0003E 00000           CON(5)  =ZERO
   32               * CursorPos = Initial cursor position [0 = end of row]
   33               * File  INP1.s  18
   34 00043 00000           CON(5)  =ONE
   35               * #Mode = initial insert/replace mode [1 = insert mode]
   36               * File  INP1.s  19
   37 00048 00000           CON(5)  =ONE
   38               * #Entry = initial entry mode [1 = program/immediate entry]
   39               * File  INP1.s  20
   40 0004D 00000           CON(5)  =ONE
   41               * #Alpha = initial alpha lock mode [1 = alpha lock ]
   42               * File  INP1.s  21
   43 00052 00000           CON(5)  =DOLIST
   44               * Input Menu objects
   45               * File  INP1.s  22
   46 00057 00000           CON(5)  =<SkipKey
   47               * Skip left key
   48               * File  INP1.s  23
   49 0005C 00000           CON(5)  =>SkipKey
   50               * Skip right key
   51               * File  INP1.s  24
   52 00061 00000           CON(5)  =<DelKey
   53               * Delete left key
   54               * File  INP1.s  25
   55 00066 00000           CON(5)  =>DelKey
   56               * Delete right key
   57               * File  INP1.s  26
   58 0006B 00000           CON(5)  =TogInsertKey
   59               * Insert/replace mode key
   60               * File  INP1.s  27
   61 00070 00000           CON(5)  =DOCSTR
   62 00075 B0000           CON(5)  11
   63 0007A 4416E6          NIBASC  \Dan\
   64               * String menu item
   65               * File  INP1.s  28
   66 00080 00000           CON(5)  =SEMI
   67               * File  INP1.s  29
   68 00085 00000           CON(5)  =ONE
   69               * #Row = first row of the menu to be displayed [1 = first row]
   70               * File  INP1.s  30
   71 0008A 00000           CON(5)  =FALSE
   72               * Abort = flag specifying action of ON key when characters are
   73               * File  INP1.s  31
   74               * present in the cmd line [FALSE = clear cmd line]
   75               * File  INP1.s  32
   76 0008F 00000           CON(5)  =ZERO
   77               * #Action = post command line processing if terminated by ENTER key
   78               * File  INP1.s  33
   79               * [ZERO = return input string with no processing]
   80               * File  INP1.s  34
   81 00094 00000           CON(5)  =InputLine
   82               * ... -> ... TRUE/FALSE
   83               * File  INP1.s  35
   84 00099 00000           CON(5)  =ITE
   85 0009E 00000           CON(5)  =%1
   86 000A3 00000           CON(5)  =%0
   87               * Convert FLAG to %1 or %0
   88               * File  INP1.s  36
   89 000A8 00000           CON(5)  =ClrDAsOK
   90               * Redraw display
   91               * File  INP1.s  37
   92 000AD 00000           CON(5)  =SEMI
Saturn Assembler                                       Sun May 31 12:15:22 2009
V3.0.9 (04/15/2007)   Symbol Table                       INP1.a         Page    2

 %0                                Ext                   -    86
 %1                                Ext                   -    85
 0LASTOWDOB!                       Ext                   -    16
 <DelKey                           Ext                   -    52
 <SkipKey                          Ext                   -    46
 >DelKey                           Ext                   -    55
 >SkipKey                          Ext                   -    49
 CK0NOLASTWD                       Ext                   -    19
 ClrDAsOK                          Ext                   -    89
 DOCOL                             Ext                   -    14
 DOCSTR                            Ext                   -    23    61
 DOLIST                            Ext                   -    43
 FALSE                             Ext                   -    71
 ITE                               Ext                   -    84
 InputLine                         Ext                   -    81
 NULL$                             Ext                   -    28
 ONE                               Ext                   -    34    37    40
                                          68
 SEMI                              Ext                   -    66    92
 TogInsertKey                      Ext                   -    58
 ZERO                              Ext                   -    31    76
Saturn Assembler                                       Sun May 31 12:15:22 2009
V3.0.9 (04/15/2007)   Statistics                         INP1.a         Page    3

Input Parameters

  Source file name is INP1.a

  Listing file name is INP1.l

  Object file name is INP1.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
