Saturn Assembler                                       Mon May 25 11:44:13 2009
V3.0.9 (04/15/2007)                                      GRID.a         Page    1

    1               * File  GRID.s  1
    2               * RPL
    3               * File  GRID.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\DISPtest\GRID.s, part of the GRID.hpp project, created by <> on 8/05/2009
    5               **********************************************************************
    6               * DESCRIPTION:     Produces a grid centred in the stack display with a
    7               *                  specified number of rows and columns.  The size
    8               *                  parameter specifies the size of each square (not
    9               *                  counting the box boundary lines).
   10               * COMPATIBILITY:   HP48, HP50 (Not centred vertically on HP50)
   11               * USAGE:     { %Size %Rows %Cols -> )
   12               * ESAMPLE:   ( 3 9 25 -> )
   13               *
   14               * File  GRID.s  12
   15 00000 00000           CON(5)  =DOCOL
   16               * File  GRID.s  13
   17 00005 00000           CON(5)  =0LASTOWDOB!
   18               * Clear saved command name
   19               * File  GRID.s  14
   20 0000A 00000           CON(5)  =CK3NOLASTWD
   21               * Require 3 arguments
   22               * File  GRID.s  15
   23 0000F 00000           CON(5)  =CK&DISPATCH1
   24               * File  GRID.s  16
   25 00014 00000           CON(5)  =DOBINT
   26 00019 11100           CON(5)  #111
   27               * Require 3 real numbers
   28               * File  GRID.s  17
   29 0001E 00000           CON(5)  =DOCOL
   30               * File  GRID.s  18
   31 00023 00000           CON(5)  =COERCE2
   32               * %size %rows %cols -> %size #rows #cols
   33               * File  GRID.s  19
   34 00028 00000           CON(5)  =ROT
   35               * -> #rows #cols %size
   36               * File  GRID.s  20
   37 0002D 00000           CON(5)  =COERCE
   38               * -> #rows #cols #size
   39               * File  GRID.s  21
   40 00032 00000           CON(5)  =#1+
   41               * -> #rows #cols #size+1
   42               * File  GRID.s  22
   43 00037 00000           CON(5)  =DUP
   44               * -> #rows #cols #size+1 #size+1
   45               * File  GRID.s  23
   46 0003C 00000           CON(5)  =ROT
   47               * -> #rows #size+1 #size+1 #cols
   48               * File  GRID.s  24
   49 00041 00000           CON(5)  =#*
   50               * -> #rows #size+1 #
   51               * File  GRID.s  25
   52 00046 00000           CON(5)  =#1+
   53               * -> #rows #size+1 #width
   54               * File  GRID.s  26
   55 0004B 00000           CON(5)  =DUP
   56 00050 00000           CON(5)  =BINT_131d
   57 00055 00000           CON(5)  =#>
   58 0005A 00000           CON(5)  =case
   59               * Verify grid not wider than display [ -> ... #width FLAG ]
   60               * File  GRID.s  27
   61 0005F 00000           CON(5)  =SETSIZEERR
   62               * File  GRID.s  28
   63 00064 00000           CON(5)  =OVER
   64               * #rows #size+1 #width -> #rows #size+1 #width #size+1
   65               * File  GRID.s  29
   66 00069 00000           CON(5)  =4ROLL
   67               * -> #size+1 #width #size+1 #rows
   68               * File  GRID.s  30
   69 0006E 00000           CON(5)  =#*
   70               * -> #size+1 #width #
   71               * File  GRID.s  31
   72 00073 00000           CON(5)  =#1+
   73               * -> #size+1 #width #hieght
   74               * File  GRID.s  32
   75 00078 00000           CON(5)  =DUP
   76 0007D 00000           CON(5)  =SIXTYFOUR
   77 00082 00000           CON(5)  =#>
   78 00087 00000           CON(5)  =case
   79               * Verify grid not taller than display [ -> ... #width FLAG ]
   80               * File  GRID.s  33
   81 0008C 00000           CON(5)  =SETSIZEERR
   82               * File  GRID.s  34
   83 00091 00000           CON(5)  =ClrDA1IsStat
   84               * Suspend ticking clock
   85               * File  GRID.s  35
   86 00096 00000           CON(5)  =RECLAIMDISP
   87               * Claim the stack display
   88               * File  GRID.s  36
   89 0009B 00000           CON(5)  =TURNMENUOFF
   90               * Turn off the menu display
   91               * File  GRID.s  37
   92 000A0 00000           CON(5)  =SIXTYTHREE
   93               * Calculate the addresses of the grid boundaries
   94               * File  GRID.s  38
   95 000A5 00000           CON(5)  =OVER
   96               * #size+1 #width #height #63 -> #size+1 #width #height #63 #height
   97               * File  GRID.s  39
   98 000AA 00000           CON(5)  =#-#2/
   99               * -> #size+1 #width #height #toprow
  100               * File  GRID.s  40
  101 000AF 00000           CON(5)  =DUP
  102               * -> #size+1 #width #height #toprow #toprow
  103               * File  GRID.s  41
  104 000B4 00000           CON(5)  =ROT
  105               * -> #size+1 #width #toprow #toprow #height
  106               * File  GRID.s  42
  107 000B9 00000           CON(5)  =#+-1
  108               * -> #size+1 #width #toprow #botrow
  109               * File  GRID.s  43
  110 000BE 00000           CON(5)  =BINT_131d
  111               * -> #size+1 #width #toprow #botrow #131
  112               * File  GRID.s  44
  113 000C3 00000           CON(5)  =4PICK
  114               * -> #size+1 #width #toprow #botrow #131 #width
  115               * File  GRID.s  45
  116 000C8 00000           CON(5)  =#-#2/
  117               * -> #size+1 #width #toprow #botrow #Lcol
  118               * File  GRID.s  46
  119 000CD 00000           CON(5)  =DUP
  120               * -> #size+1 #width #toprow #botrow #Lcol #Lcol
  121               * File  GRID.s  47
  122 000D2 00000           CON(5)  =5ROLL
  123               * -> #size+1 #toprow #botrow #Lcol #Lcol #width
  124               * File  GRID.s  48
  125 000D7 00000           CON(5)  =#+-1
  126               * -> #size+1 #toprow #botrow #Lcol #Rcol
  127               * File  GRID.s  49
  128               * Draw the vertical lines
  129               * File  GRID.s  50
  130 000DC 00000           CON(5)  =DUP#1+
  131 000E1 00000           CON(5)  =3PICK
  132 000E6 00000           CON(5)  =DO
  133               * #size+1 #toprow #botrow #Lcol #Rcol ->
  134               * File  GRID.s  51
  135 000EB 00000           CON(5)  =INDEX@
  136 000F0 00000           CON(5)  =5PICK
  137               * ... #col #toprow
  138               * File  GRID.s  52
  139 000F5 00000           CON(5)  =OVER
  140 000FA 00000           CON(5)  =6PICK
  141               * ... #col #toprow #col #botrow
  142               * File  GRID.s  53
  143 000FF 00000           CON(5)  =LINEON
  144               * ...
  145               * File  GRID.s  54
  146 00104 00000           CON(5)  =5PICK
  147               * ... #size+1
  148               * File  GRID.s  55
  149 00109 00000           CON(5)  =+LOOP
  150               * File  GRID.s  56
  151               * Draw the horizontal lines
  152               * File  GRID.s  57
  153 0010E 00000           CON(5)  =3PICK
  154 00113 00000           CON(5)  =#1+
  155 00118 00000           CON(5)  =5PICK
  156 0011D 00000           CON(5)  =DO
  157               * #size+1 #toprow #botrow #Lcol #Rcol ->
  158               * File  GRID.s  58
  159 00122 00000           CON(5)  =OVER
  160 00127 00000           CON(5)  =INDEX@
  161               * ... #Lcol #row
  162               * File  GRID.s  59
  163 0012C 00000           CON(5)  =3PICK
  164 00131 00000           CON(5)  =OVER
  165               * ... #Lcol #row #Rcol #row
  166               * File  GRID.s  60
  167 00136 00000           CON(5)  =LINEON
  168               * ...
  169               * File  GRID.s  61
  170 0013B 00000           CON(5)  =5PICK
  171               * ... #size+1
  172               * File  GRID.s  62
  173 00140 00000           CON(5)  =+LOOP
  174               * File  GRID.s  63
  175 00145 00000           CON(5)  =5DROP
  176               * DROP box parameters [ ... -> ]
  177               * File  GRID.s  64
  178 0014A 00000           CON(5)  =SetDAsTemp
  179               * Freeze the display
  180               * File  GRID.s  65
  181 0014F 00000           CON(5)  =SEMI
  182               * File  GRID.s  66
  183 00154 00000           CON(5)  =SEMI
Saturn Assembler                                       Mon May 25 11:44:13 2009
V3.0.9 (04/15/2007)   Symbol Table                       GRID.a         Page    2

 #*                                Ext                   -    49    69
 #+-1                              Ext                   -   107   125
 #-#2/                             Ext                   -    98   116
 #1+                               Ext                   -    40    52    72
                                         154
 #>                                Ext                   -    57    77
 +LOOP                             Ext                   -   149   173
 0LASTOWDOB!                       Ext                   -    17
 3PICK                             Ext                   -   131   153   163
 4PICK                             Ext                   -   113
 4ROLL                             Ext                   -    66
 5DROP                             Ext                   -   175
 5PICK                             Ext                   -   136   146   155
                                         170
 5ROLL                             Ext                   -   122
 6PICK                             Ext                   -   140
 BINT_131d                         Ext                   -    56   110
 CK&DISPATCH1                      Ext                   -    23
 CK3NOLASTWD                       Ext                   -    20
 COERCE                            Ext                   -    37
 COERCE2                           Ext                   -    31
 ClrDA1IsStat                      Ext                   -    83
 DO                                Ext                   -   132   156
 DOBINT                            Ext                   -    25
 DOCOL                             Ext                   -    15    29
 DUP                               Ext                   -    43    55    75
                                         101   119
 DUP#1+                            Ext                   -   130
 INDEX@                            Ext                   -   135   160
 LINEON                            Ext                   -   143   167
 OVER                              Ext                   -    63    95   139
                                         159   164
 RECLAIMDISP                       Ext                   -    86
 ROT                               Ext                   -    34    46   104
 SEMI                              Ext                   -   181   183
 SETSIZEERR                        Ext                   -    61    81
 SIXTYFOUR                         Ext                   -    76
 SIXTYTHREE                        Ext                   -    92
 SetDAsTemp                        Ext                   -   178
 TURNMENUOFF                       Ext                   -    89
 case                              Ext                   -    58    78
Saturn Assembler                                       Mon May 25 11:44:13 2009
V3.0.9 (04/15/2007)   Statistics                         GRID.a         Page    3

Input Parameters

  Source file name is GRID.a

  Listing file name is GRID.l

  Object file name is GRID.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
