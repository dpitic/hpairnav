Saturn Assembler                                       Tue Jun 09 11:46:05 2009
V3.0.9 (04/15/2007)                                      BRW1.a         Page    1

    1               * File  BRW1.s  1
    2               * RPL
    3               * File  BRW1.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\BRW1.s, part of the BRW1.hpp project, created by <> on 14/05/2009
    5               ********************************************************************
    6               * DESCRIPTION:     Displays a list using the browser and returns a
    7               *                  string indicating which key terminated the
    8               *                  browser.  If the browser was terminated by
    9               *                  pressing ENTER, the highlighted data item is
   10               *                  returned.
   11               * COMPATIBILITY:   HP48  ( BRdone is rompointer )
   12               *                  HP50  ( BRdone is a flashpointer )
   13               * USAGE:           ( -> "ON"          [ Terminated by the ON key ] )
   14               *                  ( -> "QUIT"        [ Terminated by the "QUIT" softkey ] )
   15               *                  ( -> $item "ENTER" [ Terminated by the ENTER key ] )
   16               *
   17               * Rompointer external declarations
   18               * File  BRW1.s  16
   19               * Equation library browser
   20               *EXTERNAL BRdone               ( Terminate the browser [HP48 rompointer] )
   21               * File  BRW1.s  18
   22               * Recall the data list -> { data }
   23               * File  BRW1.s  19
   24               * Recall the index of the highlighted data item -> #focus_pos
   25               * File  BRW1.s  20
   26 00000 00000           CON(5)  =DOCOL
   27               * File  BRW1.s  21
   28 00005 00000           CON(5)  =0LASTOWDOB!
   29               * Clear protection word
   30               * File  BRW1.s  22
   31 0000A 00000           CON(5)  =CK0NOLASTWD
   32               * No arguments
   33               * File  BRW1.s  23
   34 0000F 00000           CON(5)  =ClrDA1IsStat
   35               * Suspend the clock
   36               * File  BRW1.s  24
   37 00014 00000           CON(5)  =RECLAIMDISP
   38               * Clear the screen
   39               * POL shell
   40               * File  BRW1.s  26
   41 00019 00000           CON(5)  =POLSaveUI
   42               * Save the current user interface
   43               * File  BRW1.s  27
   44 0001E 00000           CON(5)  =ERRSET
   45               * Increment the protection word
   46               * File  BRW1.s  28
   47 00023 00000           CON(5)  =DOCOL
   48               * POL
   49               * Browser parameters
   50               * File  BRW1.s  30
   51 00028 00000           CON(5)  =DOLIST
   52               * Softkey Menu
   53               * File  BRW1.s  31
   54 0002D 00000           CON(5)  =NullMenuKey
   55               * Softkey 1
   56               * File  BRW1.s  32
   57 00032 00000           CON(5)  =NullMenuKey
   58               * Softkey 2
   59               * File  BRW1.s  33
   60 00037 00000           CON(5)  =NullMenuKey
   61               * Softkey 3
   62               * File  BRW1.s  34
   63 0003C 00000           CON(5)  =NullMenuKey
   64               * Softkey 4
   65               * File  BRW1.s  35
   66 00041 00000           CON(5)  =NullMenuKey
   67               * Softkey 5
   68               * File  BRW1.s  36
   69 00046 00000           CON(5)  =DOLIST
   70               * Softkey 6
   71               * File  BRW1.s  37
   72 0004B 00000           CON(5)  =DOCSTR
   73 00050 D0000           CON(5)  13
   74 00055 1555944         NIBASC  \QUIT\
            5
   75               * Softkey $label
   76               * File  BRW1.s  38
   77 0005D 00000           CON(5)  =DOCOL
   78               * Softkey action [ -> "QUIT" ]
   79               * File  BRW1.s  39
   80 00062 00000           CON(5)  =TakeOver
   81               * User key definition placeholder
   82               * File  BRW1.s  40
   83 00067 00000           CON(5)  =DOCSTR
   84 0006C D0000           CON(5)  13
   85 00071 1555944         NIBASC  \QUIT\
            5
   86               * Return "QUIT" [ -> "QUIT" ]
   87               *                       BRdone              ( Signal to terminate the browser [HP48 rompointer] )
   88               * File  BRW1.s  42
   89 00079 00000           CON(5)  =DOFLASHP
   90 0007E 0000000         CON(7)  =^BRdone
   91               * Signal to terminate the browser [HP50 flashpointer]
   92               * File  BRW1.s  43
   93 00085 00000           CON(5)  =SEMI
   94               * File  BRW1.s  44
   95 0008A 00000           CON(5)  =SEMI
   96               * File  BRW1.s  45
   97 0008F 00000           CON(5)  =SEMI
   98               * File  BRW1.s  46
   99 00094 00000           CON(5)  =DOCSTR
  100 00099 32000           CON(5)  35
  101 0009E 2425F47         NIBASC  \BROWSER EXAMPLE\
            5355425
            02548514D405C454

  102               * $title
  103               * File  BRW1.s  47
  104 000BC 00000           CON(5)  =DOLIST
  105               * Hardkey list
  106               * File  BRW1.s  48
  107 000C1 00000           CON(5)  =DOCOL
  108               * ENTER key [ -> $item "ENTER ]
  109               * File  BRW1.s  49
  110 000C6 00000           CON(5)  =DOROMP
  111 000CB 000000          CON(6)  =~BRRclC1
  112               * -> { data }
  113               * File  BRW1.s  50
  114 000D1 00000           CON(5)  =DOROMP
  115 000D6 000000          CON(6)  =~BRRclCurRow
  116               * -> #focus_pos
  117               * File  BRW1.s  51
  118 000DC 00000           CON(5)  =NTHCOMPDROP
  119               * Returns the highlighted data item [ -> $ ]
  120               * File  BRW1.s  52
  121 000E1 00000           CON(5)  =DOCSTR
  122 000E6 F0000           CON(5)  15
  123 000EB 54E4455         NIBASC  \ENTER\
            425
  124               * Returns the string "ENTER" [ -> "ENTER" ]
  125               *                     BRdone                ( Signal to terminate the browser [HP50 rompointer ] )
  126               * File  BRW1.s  54
  127 000F5 00000           CON(5)  =DOFLASHP
  128 000FA 0000000         CON(7)  =^BRdone
  129               * Signal to terminate the browser [HP50 flashpointer]
  130               * File  BRW1.s  55
  131 00101 00000           CON(5)  =SEMI
  132               * File  BRW1.s  56
  133 00106 00000           CON(5)  =DOCOL
  134               * ON key [ -> "ON" ]
  135               * File  BRW1.s  57
  136 0010B 00000           CON(5)  =DOCSTR
  137 00110 90000           CON(5)  9
  138 00115 F4E4            NIBASC  \ON\
  139               * Return string "ON" [ -> "ON" ]
  140               *                     BRdone                ( Signal to terminate the browser [HP48 rompointer] )
  141               * File  BRW1.s  59
  142 00119 00000           CON(5)  =DOFLASHP
  143 0011E 0000000         CON(7)  =^BRdone
  144               * Signal to terminate the browser [HP50 flashpointer]
  145               * File  BRW1.s  60
  146 00125 00000           CON(5)  =SEMI
  147               * File  BRW1.s  61
  148 0012A 00000           CON(5)  =SEMI
  149               * File  BRW1.s  62
  150 0012F 00000           CON(5)  =ONE
  151               * #first_row
  152               * File  BRW1.s  63
  153 00134 00000           CON(5)  =ONE
  154               * #focus_pos
  155               * File  BRW1.s  64
  156 00139 00000           CON(5)  =DOLIST
  157               * data list
  158               * File  BRW1.s  65
  159 0013E 00000           CON(5)  =DOCSTR
  160 00143 90000           CON(5)  9
  161 00148 1424            NIBASC  \AB\
  162 0014C 00000           CON(5)  =DOCSTR
  163 00151 90000           CON(5)  9
  164 00156 3444            NIBASC  \CD\
  165 0015A 00000           CON(5)  =DOCSTR
  166 0015F 90000           CON(5)  9
  167 00164 5464            NIBASC  \EF\
  168 00168 00000           CON(5)  =DOCSTR
  169 0016D 90000           CON(5)  9
  170 00172 7484            NIBASC  \GH\
  171               * File  BRW1.s  66
  172 00176 00000           CON(5)  =DOCSTR
  173 0017B 90000           CON(5)  9
  174 00180 94A4            NIBASC  \IJ\
  175 00184 00000           CON(5)  =DOCSTR
  176 00189 90000           CON(5)  9
  177 0018E B4C4            NIBASC  \KL\
  178 00192 00000           CON(5)  =DOCSTR
  179 00197 90000           CON(5)  9
  180 0019C D4E4            NIBASC  \MN\
  181 001A0 00000           CON(5)  =DOCSTR
  182 001A5 90000           CON(5)  9
  183 001AA F405            NIBASC  \OP\
  184               * File  BRW1.s  67
  185 001AE 00000           CON(5)  =SEMI
  186               * File  BRW1.s  68
  187 001B3 00000           CON(5)  ='
  188 001B8 00000           CON(5)  =DOCOL
  189               * data secondary [ { data } #index -> $item ]
  190               * File  BRW1.s  69
  191 001BD 00000           CON(5)  =ZERO
  192 001C2 00000           CON(5)  =#=casedrop
  193               * File  BRW1.s  70
  194 001C7 00000           CON(5)  =LENCOMP
  195               * Return length of data list if index is 0 [ -> #number_of_data_items ]
  196               * File  BRW1.s  71
  197 001CC 00000           CON(5)  =NTHCOMPDROP
  198               * Otherwise return the item [ -> $item ]
  199               * File  BRW1.s  72
  200 001D1 00000           CON(5)  =SEMI
  201               * File  BRW1.s  73
  202 001D6 00000           CON(5)  =NULL{}
  203               * Speed list
  204               * File  BRW1.s  74
  205 001DB 00000           CON(5)  =DOROMP
  206 001E0 000000          CON(6)  =~BRbrowse
  207               * Display browser
  208               * File  BRW1.s  75
  209 001E6 00000           CON(5)  =SEMI
  210               * File  BRW1.s  76
  211 001EB 00000           CON(5)  =ERRTRAP
  212 001F0 00000           CON(5)  =POLResUI&Err
  213               * IF an error occurs, restore the old user interface and ERRJJMP
  214               * File  BRW1.s  77
  215 001F5 00000           CON(5)  =POLRestoreUI
  216               * Restore the old user interface
  217               * File  BRW1.s  78
  218 001FA 00000           CON(5)  =ClrDAsOK
  219               * Redraw the display
  220               * File  BRW1.s  79
  221 001FF 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 09 11:46:05 2009
V3.0.9 (04/15/2007)   Symbol Table                       BRW1.a         Page    2

 #=casedrop                        Ext                   -   192
 '                                 Ext                   -   187
 0LASTOWDOB!                       Ext                   -    28
 CK0NOLASTWD                       Ext                   -    31
 ClrDA1IsStat                      Ext                   -    34
 ClrDAsOK                          Ext                   -   218
 DOCOL                             Ext                   -    26    47    77
                                         107   133   188
 DOCSTR                            Ext                   -    72    83    99
                                         121   136   159   162   165   168   172
                                         175   178   181
 DOFLASHP                          Ext                   -    89   127   142
 DOLIST                            Ext                   -    51    69   104
                                         156
 DOROMP                            Ext                   -   110   114   205
 ERRSET                            Ext                   -    44
 ERRTRAP                           Ext                   -   211
 LENCOMP                           Ext                   -   194
 NTHCOMPDROP                       Ext                   -   118   197
 NULL{}                            Ext                   -   202
 NullMenuKey                       Ext                   -    54    57    60
                                          63    66
 ONE                               Ext                   -   150   153
 POLResUI&Err                      Ext                   -   212
 POLRestoreUI                      Ext                   -   215
 POLSaveUI                         Ext                   -    41
 RECLAIMDISP                       Ext                   -    37
 SEMI                              Ext                   -    93    95    97
                                         131   146   148   185   200   209   221
 TakeOver                          Ext                   -    80
 ZERO                              Ext                   -   191
 ^BRdone                           Ext                   -    90   128   143
 ~BRRclC1                          Ext                   -   111
 ~BRRclCurRow                      Ext                   -   115
 ~BRbrowse                         Ext                   -   206
Saturn Assembler                                       Tue Jun 09 11:46:05 2009
V3.0.9 (04/15/2007)   Statistics                         BRW1.a         Page    3

Input Parameters

  Source file name is BRW1.a

  Listing file name is BRW1.l

  Object file name is BRW1.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
