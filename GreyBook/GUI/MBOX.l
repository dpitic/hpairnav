Saturn Assembler                                       Tue Jun 09 11:08:03 2009
V3.0.9 (04/15/2007)                                      MBOX.a         Page    1

    1               * File  MBOX.s  1
    2               * RPL
    3               * File  MBOX.s  2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\MBOX.s, part of the MBOX.hpp project, created by <> on 14/05/2009
    5               ********************************************************************
    6               * DESCRIPTION:     Displays a message box with a custom grob and
    7               *                  message string.
    8               * COMPATIBILITY:   HP48, HP50
    9               *
   10               * Rompointer external declarations
   11               * File  MBOX.s  9
   12               * Declare DoMsgBox is called by a rompointer
   13               * File  MBOX.s  10
   14               * File  MBOX.s  11
   15               * File  MBOX.s  12
   16 00000 00000           CON(5)  =DOCOL
   17               * File  MBOX.s  13
   18 00005 00000           CON(5)  =0LASTOWDOB!
   19               * Clear protection word
   20               * File  MBOX.s  14
   21 0000A 00000           CON(5)  =CK0NOLASTWD
   22               * No arguments
   23               * Message box parameters
   24               * File  MBOX.s  16
   25 0000F 00000           CON(5)  =DOCSTR
   26 00014 F2000           CON(5)  47
   27 00019 3416C63         NIBASC  \Calculation Complete\
            657C616
            4796F6E60234F6D607C6564756

   28 00041 12              NIBASC  \!\
   29               * Message $
   30               * File  MBOX.s  17
   31 00043 00000           CON(5)  =TWELVE
   32               * #maxwidth
   33               * File  MBOX.s  18
   34 00048 00000           CON(5)  =TEN
   35               * #minwidth
   36               *        grobAlertIcon                    ( Grob )
   37               * File  MBOX.s  20
   38               * ASSEMBLE                           ( Grob [smiling face] )
   39               * File  MBOX.s  21
   40 0004D 00000            CON(5)         =DOGROB
   41               * File  MBOX.s  22
   42 00052 B3000            REL(5)  end
   43               * File  MBOX.s  23
   44 00057 B0000            CON(5)  11
   45               * File  MBOX.s  24
   46 0005C B0000            CON(5)  11
   47               * File  MBOX.s  25
   48 00061 8F00401          NIBHEX  8F00401020201040
            0202010
            40
   49               * File  MBOX.s  26
   50 00071 9840104          NIBHEX  9840104010409840
            0104098
            40
   51               * File  MBOX.s  27
   52 00081 2720401          NIBHEX  272040108F00
            08F00
   53               * File  MBOX.s  28
   54 0008D         end
   55               * File  MBOX.s  29
   56               * RPL
   57               * File  MBOX.s  30
   58 0008D 00000           CON(5)  ='
   59 00092 00000           CON(5)  =DOROMP
   60 00097 000000          CON(6)  =~MsgBoxMenu
   61               * menuobject
   62               * File  MBOX.s  31
   63 0009D 00000           CON(5)  =DOROMP
   64 000A2 000000          CON(6)  =~DoMsgBox
   65               * Run the message box -> FLAG
   66               * File  MBOX.s  32
   67 000A8 00000           CON(5)  =DROP
   68               * DROP FLAG
   69               * File  MBOX.s  33
   70 000AD 00000           CON(5)  =ClrDAsOK
   71               * Redraw display
   72               * File  MBOX.s  34
   73 000B2 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue Jun 09 11:08:03 2009
V3.0.9 (04/15/2007)   Symbol Table                       MBOX.a         Page    2

 '                                 Ext                   -    58
 0LASTOWDOB!                       Ext                   -    18
 CK0NOLASTWD                       Ext                   -    21
 ClrDAsOK                          Ext                   -    70
 DOCOL                             Ext                   -    16
 DOCSTR                            Ext                   -    25
 DOGROB                            Ext                   -    40
 DOROMP                            Ext                   -    59    63
 DROP                              Ext                   -    67
 SEMI                              Ext                   -    73
 TEN                               Ext                   -    34
 TWELVE                            Ext                   -    31
 end                               Rel     141 #0000008D -    54    42
 ~DoMsgBox                         Ext                   -    64
 ~MsgBoxMenu                       Ext                   -    60
Saturn Assembler                                       Tue Jun 09 11:08:03 2009
V3.0.9 (04/15/2007)   Statistics                         MBOX.a         Page    3

Input Parameters

  Source file name is MBOX.a

  Listing file name is MBOX.l

  Object file name is MBOX.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
