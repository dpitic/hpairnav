Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)                                      GUIONTETP.a    Page    1

    1             * File  GUIONTETP.s     1
    2             * RPL
    3             * File  GUIONTETP.s     2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\GUIONTETP.s, part of the CPONT50.hpp project, created by <> on 26/06/2009
    5             **********************************************************************
    6             * NAME:          GUIONTETP
    7             * LIBRARY #:     329h = 809d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.1
   10             * DATE:          26 June 2009
   11             * COMPATIBILITY: HP50
   12             *                HP48
   13             * DESCRIPTION:   Generates and displays the GUI for the library
   14             *                application.
   15             *
   16             * File  GUIONTETP.s     14
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
   27             *|| Resuming file GUIONTETP.s at line 14
   28 00000 00000         CON(6)  =~xGUIONTETP
            0
   29 00006       =xGUIONTETP
   30             * File  GUIONTETP.s     16
   31 00006 00000         CON(5)  =DOCOL
   32             * File  GUIONTETP.s     17
   33 0000B 00000         CON(5)  =CK0
   34             * No arguments
   35             * File  GUIONTETP.s     18
   36 00010 00000         CON(5)  =BEGIN
   37             * File  GUIONTETP.s     19
   38 00015 00000         CON(5)  =DOROMP
   39 0001A 00000         CON(6)  =~InptForm
            0
   40             * Run INPUT form
   41             * File  GUIONTETP.s     20
   42 00020 00000         CON(5)  =WHILE
   43 00025 00000         CON(5)  =DOCOL
   44             * STO output from INPUT form in global variables
   45             * File  GUIONTETP.s     22
   46 0002A 00000         CON(5)  ='
   47 0002F 00000         CON(5)  =DOIDNT
   48 00034 40            CON(2)  4
   49 00036 6464C         NIBASC  \FFLO\
            4F4
   50 0003E 00000         CON(5)  =STO
   51             * File  GUIONTETP.s     23
   52 00043 00000         CON(5)  ='
   53 00048 00000         CON(5)  =DOIDNT
   54 0004D 40            CON(2)  4
   55 0004F 44943         NIBASC  \DIST\
            545
   56 00057 00000         CON(5)  =STO
   57             * File  GUIONTETP.s     24
   58 0005C 00000         CON(5)  ='
   59 00061 00000         CON(5)  =DOIDNT
   60 00066 20            CON(2)  2
   61 00068 7535          NIBASC  \WS\
   62 0006C 00000         CON(5)  =STO
   63             * File  GUIONTETP.s     25
   64 00071 00000         CON(5)  ='
   65 00076 00000         CON(5)  =DOIDNT
   66 0007B 20            CON(2)  2
   67 0007D 7544          NIBASC  \WD\
   68 00081 00000         CON(5)  =STO
   69             * File  GUIONTETP.s     26
   70 00086 00000         CON(5)  ='
   71 0008B 00000         CON(5)  =DOIDNT
   72 00090 20            CON(2)  2
   73 00092 4534          NIBASC  \TC\
   74 00096 00000         CON(5)  =STO
   75             * File  GUIONTETP.s     27
   76 0009B 00000         CON(5)  ='
   77 000A0 00000         CON(5)  =DOIDNT
   78 000A5 30            CON(2)  3
   79 000A7 45143         NIBASC  \TAS\
            5
   80 000AD 00000         CON(5)  =STO
   81             * Calculate problem
   82             * File  GUIONTETP.s     29
   83 000B2 00000         CON(5)  =DOIDNT
   84 000B7 30            CON(2)  3
   85 000B9 45143         NIBASC  \TAS\
            5
   86 000BF 00000         CON(5)  =DOIDNT
   87 000C4 20            CON(2)  2
   88 000C6 4534          NIBASC  \TC\
   89 000CA 00000         CON(5)  =DOIDNT
   90 000CF 20            CON(2)  2
   91 000D1 7544          NIBASC  \WD\
   92 000D5 00000         CON(5)  =DOIDNT
   93 000DA 20            CON(2)  2
   94 000DC 7535          NIBASC  \WS\
   95             * INPUT arguments
   96             * File  GUIONTETP.s     30
   97 000E0 00000         CON(5)  =DOIDNT
   98 000E5 40            CON(2)  4
   99 000E7 44943         NIBASC  \DIST\
            545
  100 000EF 00000         CON(5)  =DOIDNT
  101 000F4 40            CON(2)  4
  102 000F6 6464C         NIBASC  \FFLO\
            4F4
  103             * File  GUIONTETP.s     31
  104 000FE 00000         CON(5)  =DOROMP
  105 00103 00000         CON(6)  =~CONTETP
            0
  106             * -> %CPDIS %CPTIM %FBRN
  107             * File  GUIONTETP.s     32
  108 00109 00000         CON(5)  ='
  109 0010E 00000         CON(5)  =DOIDNT
  110 00113 40            CON(2)  4
  111 00115 64242         NIBASC  \FBRN\
            5E4
  112 0011D 00000         CON(5)  =STO
  113             * STO OUTPUT results in global variables
  114             * File  GUIONTETP.s     33
  115 00122 00000         CON(5)  ='
  116 00127 00000         CON(5)  =DOIDNT
  117 0012C 50            CON(2)  5
  118 0012E 34054         NIBASC  \CPTIM\
            594D4
  119 00138 00000         CON(5)  =STO
  120             * File  GUIONTETP.s     34
  121 0013D 00000         CON(5)  ='
  122 00142 00000         CON(5)  =DOIDNT
  123 00147 50            CON(2)  5
  124 00149 34054         NIBASC  \CPDIS\
            49435
  125 00153 00000         CON(5)  =STO
  126             * Run OUTPUT GUI
  127             * File  GUIONTETP.s     36
  128 00158 00000         CON(5)  =BEGIN
  129             * File  GUIONTETP.s     37
  130 0015D 00000         CON(5)  =DOROMP
  131 00162 00000         CON(6)  =~OutptForm
            0
  132             * Run OUTPUT GUI
  133             * File  GUIONTETP.s     38
  134 00168 00000         CON(5)  =WHILE
  135 0016D 00000         CON(5)  =DOCOL
  136             * File  GUIONTETP.s     39
  137 00172 00000         CON(5)  =3DROP
  138             * IF OK pressed => DROP form results
  139             * File  GUIONTETP.s     40
  140 00177 00000         CON(5)  =SEMI
  141 0017C 00000         CON(5)  =REPEAT
  142             * File  GUIONTETP.s     41
  143 00181 00000         CON(5)  =SEMI
  144 00186 00000         CON(5)  =REPEAT
  145             * File  GUIONTETP.s     42
  146 0018B 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)   Symbol Table                       GUIONTETP.a    Page    2

 '                                 Ext                   -    46    52    58
                                          64    70    76   108   115   121
 3DROP                             Ext                   -   137
 BEGIN                             Ext                   -    36   128
 CK0                               Ext                   -    33
 DOCOL                             Ext                   -    31    43   135
 DOIDNT                            Ext                   -    47    53    59
                                          65    71    77    83    86    89    92
                                          97   100   109   116   122
 DOROMP                            Ext                   -    38   104   130
 REPEAT                            Ext                   -   141   144
=RomId                             Abs     809 #00000329 -    19
 SEMI                              Ext                   -   140   143   146
 STO                               Ext                   -    50    56    62
                                          68    74    80   112   119   125
 WHILE                             Ext                   -    42   134
=xGUIONTETP                        Rel       6 #00000006 -    29
 ~CONTETP                          Ext                   -   105
 ~InptForm                         Ext                   -    39
 ~OutptForm                        Ext                   -   131
 ~xGUIONTETP                       Ext                   -    28
Saturn Assembler                                       Sat Jun 27 10:04:33 2009
V3.0.9 (04/15/2007)   Statistics                         GUIONTETP.a    Page    3

Input Parameters

  Source file name is GUIONTETP.a

  Listing file name is GUIONTETP.l

  Object file name is GUIONTETP.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
