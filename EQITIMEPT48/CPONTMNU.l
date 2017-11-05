Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)                                      CPONTMNU.a     Page    1

    1             * File  CPONTMNU.s      1
    2             * RPL
    3             * File  CPONTMNU.s      2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\CPONTMNU.s, part of the CPONT50.hpp project, created by <> on 26/06/2009
    5             **********************************************************************
    6             * NAME:          CPONTMNU
    7             * LIBRARY #:     329h = 809d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.1
   10             * DATE:          26 June 2009
   11             * COMPATIBILITY: HP50 ( Must use CONVARG )
   12             *                HP48 ( DO NOT use CONVARG )
   13             * DESCRIPTION:   Generates and displays the CST menu for the library
   14             *                application.
   15             *
   16             * File  CPONTMNU.s      14
   17             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT48\CPONT48.h
   18
   19             =RomId  EQU     #329
   20             * ROMID set to 329
   21
   22
   23
   24
   25
   26
   27             *|| Resuming file CPONTMNU.s at line 14
   28 00000 00000         CON(6)  =~xCPONTMNU
            0
   29 00006       =xCPONTMNU
   30             * File  CPONTMNU.s      17
   31 00006 00000         CON(5)  =DOCOL
   32             * File  CPONTMNU.s      18
   33 0000B 00000         CON(5)  =CK0
   34             * No arguments
   35             * File  CPONTMNU.s      19
   36 00010 00000         CON(5)  =DOLIST
   37             * File  CPONTMNU.s      20
   38 00015 00000         CON(5)  =DOIDNT
   39 0001A 30            CON(2)  3
   40 0001C 45143         NIBASC  \TAS\
            5
   41 00022 00000         CON(5)  =DOIDNT
   42 00027 20            CON(2)  2
   43 00029 4534          NIBASC  \TC\
   44 0002D 00000         CON(5)  =DOIDNT
   45 00032 20            CON(2)  2
   46 00034 7544          NIBASC  \WD\
   47 00038 00000         CON(5)  =DOIDNT
   48 0003D 20            CON(2)  2
   49 0003F 7535          NIBASC  \WS\
   50             * INPUT global variables
   51             * File  CPONTMNU.s      21
   52 00043 00000         CON(5)  =DOIDNT
   53 00048 40            CON(2)  4
   54 0004A 44943         NIBASC  \DIST\
            545
   55 00052 00000         CON(5)  =DOIDNT
   56 00057 40            CON(2)  4
   57 00059 6464C         NIBASC  \FFLO\
            4F4
   58             * File  CPONTMNU.s      22
   59 00061 00000         CON(5)  =DOLIST
   60             * File  CPONTMNU.s      23
   61 00066 00000         CON(5)  =DOCSTR
   62 0006B F0000         CON(5)  15
   63 00070 35F4C         NIBASC  \SOLVE\
            46554
   64 0007A 00000         CON(5)  =DOCOL
   65             * MENU solve option
   66             * File  CPONTMNU.s      24
   67 0007F 00000         CON(5)  =DOIDNT
   68 00084 30            CON(2)  3
   69 00086 45143         NIBASC  \TAS\
            5
   70 0008C 00000         CON(5)  =DOIDNT
   71 00091 20            CON(2)  2
   72 00093 4534          NIBASC  \TC\
   73 00097 00000         CON(5)  =DOIDNT
   74 0009C 20            CON(2)  2
   75 0009E 7544          NIBASC  \WD\
   76 000A2 00000         CON(5)  =DOIDNT
   77 000A7 20            CON(2)  2
   78 000A9 7535          NIBASC  \WS\
   79             * File  CPONTMNU.s      25
   80 000AD 00000         CON(5)  =DOIDNT
   81 000B2 40            CON(2)  4
   82 000B4 44943         NIBASC  \DIST\
            545
   83 000BC 00000         CON(5)  =DOIDNT
   84 000C1 40            CON(2)  4
   85 000C3 6464C         NIBASC  \FFLO\
            4F4
   86             ** HP50 ONLY - Argument checking
   87             *              CONVARG                   ( **** HP50 ONLY **** )
   88             * File  CPONTMNU.s      28
   89 000CB 00000         CON(5)  =DOROMP
   90 000D0 00000         CON(6)  =~CONTETP
            0
   91             * -> %CPDIS %CPTIM %FBRN
   92             * File  CPONTMNU.s      29
   93 000D6 00000         CON(5)  ='
   94 000DB 00000         CON(5)  =DOIDNT
   95 000E0 40            CON(2)  4
   96 000E2 64242         NIBASC  \FBRN\
            5E4
   97 000EA 00000         CON(5)  =STO
   98             * STO OUTPUT results in global variables
   99             * File  CPONTMNU.s      30
  100 000EF 00000         CON(5)  ='
  101 000F4 00000         CON(5)  =DOIDNT
  102 000F9 50            CON(2)  5
  103 000FB 34054         NIBASC  \CPTIM\
            594D4
  104 00105 00000         CON(5)  =STO
  105             * File  CPONTMNU.s      31
  106 0010A 00000         CON(5)  ='
  107 0010F 00000         CON(5)  =DOIDNT
  108 00114 50            CON(2)  5
  109 00116 34054         NIBASC  \CPDIS\
            49435
  110 00120 00000         CON(5)  =STO
  111             * File  CPONTMNU.s      32
  112 00125 00000         CON(5)  =SEMI
  113             * File  CPONTMNU.s      33
  114 0012A 00000         CON(5)  =SEMI
  115             * File  CPONTMNU.s      34
  116 0012F 00000         CON(5)  =DOIDNT
  117 00134 50            CON(2)  5
  118 00136 34054         NIBASC  \CPDIS\
            49435
  119 00140 00000         CON(5)  =DOIDNT
  120 00145 50            CON(2)  5
  121 00147 34054         NIBASC  \CPTIM\
            594D4
  122 00151 00000         CON(5)  =DOIDNT
  123 00156 40            CON(2)  4
  124 00158 64242         NIBASC  \FBRN\
            5E4
  125             * OUTPUT global variables
  126             * File  CPONTMNU.s      35
  127 00160 00000         CON(5)  =DOLIST
  128             * File  CPONTMNU.s      36
  129 00165 00000         CON(5)  =DOCSTR
  130 0016A D0000         CON(5)  13
  131 0016F D454E         NIBASC  \MENU\
            455
  132 00177 00000         CON(5)  =DOCOL
  133             * Menu, menu option
  134             * File  CPONTMNU.s      37
  135 0017C 00000         CON(5)  =DOROMP
  136 00181 00000         CON(6)  =~xCPONTMNU
            0
  137             * Create and display CST menu
  138             * File  CPONTMNU.s      38
  139 00187 00000         CON(5)  =SEMI
  140             * File  CPONTMNU.s      39
  141 0018C 00000         CON(5)  =SEMI
  142             * File  CPONTMNU.s      40
  143 00191 00000         CON(5)  =DOLIST
  144             * File  CPONTMNU.s      41
  145 00196 00000         CON(5)  =DOCSTR
  146 0019B B0000         CON(5)  11
  147 001A0 74559         NIBASC  \GUI\
            4
  148 001A6 00000         CON(5)  =DOCOL
  149             * GUI menu option
  150             * File  CPONTMNU.s      42
  151 001AB 00000         CON(5)  =DOROMP
  152 001B0 00000         CON(6)  =~xGUIONTETP
            0
  153             * Run GUI
  154             * File  CPONTMNU.s      43
  155 001B6 00000         CON(5)  =SEMI
  156             * File  CPONTMNU.s      44
  157 001BB 00000         CON(5)  =SEMI
  158             * File  CPONTMNU.s      45
  159 001C0 00000         CON(5)  =SEMI
  160             * File  CPONTMNU.s      46
  161 001C5 00000         CON(5)  =xMENU
  162             * Create & display CST menu
  163             * File  CPONTMNU.s      47
  164 001CA 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       CPONTMNU.a     Page    2

 '                                 Ext                   -    93   100   106
 CK0                               Ext                   -    33
 DOCOL                             Ext                   -    31    64   132
                                         148
 DOCSTR                            Ext                   -    61   129   145
 DOIDNT                            Ext                   -    38    41    44
                                          47    52    55    67    70    73    76
                                          80    83    94   101   107   116   119
                                         122
 DOLIST                            Ext                   -    36    59   127
                                         143
 DOROMP                            Ext                   -    89   135   151
=RomId                             Abs     809 #00000329 -    19
 SEMI                              Ext                   -   112   114   139
                                         141   155   157   159   164
 STO                               Ext                   -    97   104   110
=xCPONTMNU                         Rel       6 #00000006 -    29
 xMENU                             Ext                   -   161
 ~CONTETP                          Ext                   -    90
 ~xCPONTMNU                        Ext                   -    28   136
 ~xGUIONTETP                       Ext                   -   152
Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)   Statistics                         CPONTMNU.a     Page    3

Input Parameters

  Source file name is CPONTMNU.a

  Listing file name is CPONTMNU.l

  Object file name is CPONTMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
