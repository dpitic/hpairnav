Saturn Assembler                                       Fri Jun 26 16:57:22 2009
V3.0.9 (04/15/2007)                                      CPONTMNU.a     Page    1

    1               * File  CPONTMNU.s      1
    2               * RPL
    3               * File  CPONTMNU.s      2
    4               * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\CPONTMNU.s, part of the CPONT50.hpp project, created by <> on 26/06/2009
    5               **********************************************************************
    6               * NAME:          CPONTMNU
    7               * LIBRARY #:     329h = 809d
    8               * AUTHOR:        Dan Pitic
    9               * VERSION:       1.1
   10               * DATE:          26 June 2009
   11               * COMPATIBILITY: HP50 ( Must use CONVARG )
   12               *                HP48 ( DO NOT use CONVARG )
   13               * DESCRIPTION:   Generates and displays the CST menu for the library
   14               *                application.
   15               *
   16               * File  CPONTMNU.s      14
   17               *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\CPONT50.h
   18
   19               =RomId  EQU     #329
   20               * ROMID set to 329
   21
   22
   23
   24
   25
   26
   27               *|| Resuming file CPONTMNU.s at line 14
   28               * ( HP50 [Radius of action SAME base]
   29               * File  CPONTMNU.s      16
   30 00000 000000          CON(6)  =~xCPONTMNU
   31 00006         =xCPONTMNU
   32               * File  CPONTMNU.s      17
   33 00006 00000           CON(5)  =DOCOL
   34               * File  CPONTMNU.s      18
   35 0000B 00000           CON(5)  =CK0
   36               * No arguments
   37               * File  CPONTMNU.s      19
   38 00010 00000           CON(5)  =DOLIST
   39               * File  CPONTMNU.s      20
   40 00015 00000           CON(5)  =DOIDNT
   41 0001A 30              CON(2)  3
   42 0001C 451435          NIBASC  \TAS\
   43 00022 00000           CON(5)  =DOIDNT
   44 00027 20              CON(2)  2
   45 00029 4534            NIBASC  \TC\
   46 0002D 00000           CON(5)  =DOIDNT
   47 00032 20              CON(2)  2
   48 00034 7544            NIBASC  \WD\
   49 00038 00000           CON(5)  =DOIDNT
   50 0003D 20              CON(2)  2
   51 0003F 7535            NIBASC  \WS\
   52               * INPUT global variables
   53               * File  CPONTMNU.s      21
   54 00043 00000           CON(5)  =DOIDNT
   55 00048 40              CON(2)  4
   56 0004A 4494354         NIBASC  \DIST\
            5
   57 00052 00000           CON(5)  =DOIDNT
   58 00057 40              CON(2)  4
   59 00059 6464C4F         NIBASC  \FFLO\
            4
   60               * File  CPONTMNU.s      22
   61 00061 00000           CON(5)  =DOLIST
   62               * File  CPONTMNU.s      23
   63 00066 00000           CON(5)  =DOCSTR
   64 0006B F0000           CON(5)  15
   65 00070 35F4C46         NIBASC  \SOLVE\
            554
   66 0007A 00000           CON(5)  =DOCOL
   67               * MENU solve option
   68               * File  CPONTMNU.s      24
   69 0007F 00000           CON(5)  =DOIDNT
   70 00084 30              CON(2)  3
   71 00086 451435          NIBASC  \TAS\
   72 0008C 00000           CON(5)  =DOIDNT
   73 00091 20              CON(2)  2
   74 00093 4534            NIBASC  \TC\
   75 00097 00000           CON(5)  =DOIDNT
   76 0009C 20              CON(2)  2
   77 0009E 7544            NIBASC  \WD\
   78 000A2 00000           CON(5)  =DOIDNT
   79 000A7 20              CON(2)  2
   80 000A9 7535            NIBASC  \WS\
   81               * File  CPONTMNU.s      25
   82 000AD 00000           CON(5)  =DOIDNT
   83 000B2 40              CON(2)  4
   84 000B4 4494354         NIBASC  \DIST\
            5
   85 000BC 00000           CON(5)  =DOIDNT
   86 000C1 40              CON(2)  4
   87 000C3 6464C4F         NIBASC  \FFLO\
            4
   88               ** HP50 ONLY - Argument checking
   89               * File  CPONTMNU.s      27
   90 000CB 00000           CON(5)  =DOROMP
   91 000D0 323             CON(3)  #323
   92 000D3 300             CON(3)  #3
   93               * **** HP50 ONLY ****
   94               * File  CPONTMNU.s      28
   95 000D6 00000           CON(5)  =DOROMP
   96 000DB 000000          CON(6)  =~CONTETP
   97               * -> %CPDIS %CPTIM %FBRN
   98               * File  CPONTMNU.s      29
   99 000E1 00000           CON(5)  ='
  100 000E6 00000           CON(5)  =DOIDNT
  101 000EB 40              CON(2)  4
  102 000ED 642425E         NIBASC  \FBRN\
            4
  103 000F5 00000           CON(5)  =STO
  104               * STO OUTPUT results in global variables
  105               * File  CPONTMNU.s      30
  106 000FA 00000           CON(5)  ='
  107 000FF 00000           CON(5)  =DOIDNT
  108 00104 50              CON(2)  5
  109 00106 3405459         NIBASC  \CPTIM\
            4D4
  110 00110 00000           CON(5)  =STO
  111               * File  CPONTMNU.s      31
  112 00115 00000           CON(5)  ='
  113 0011A 00000           CON(5)  =DOIDNT
  114 0011F 50              CON(2)  5
  115 00121 3405449         NIBASC  \CPDIS\
            435
  116 0012B 00000           CON(5)  =STO
  117               * File  CPONTMNU.s      32
  118 00130 00000           CON(5)  =SEMI
  119               * File  CPONTMNU.s      33
  120 00135 00000           CON(5)  =SEMI
  121               * File  CPONTMNU.s      34
  122 0013A 00000           CON(5)  =DOIDNT
  123 0013F 50              CON(2)  5
  124 00141 3405449         NIBASC  \CPDIS\
            435
  125 0014B 00000           CON(5)  =DOIDNT
  126 00150 50              CON(2)  5
  127 00152 3405459         NIBASC  \CPTIM\
            4D4
  128 0015C 00000           CON(5)  =DOIDNT
  129 00161 40              CON(2)  4
  130 00163 642425E         NIBASC  \FBRN\
            4
  131               * OUTPUT global variables
  132               * File  CPONTMNU.s      35
  133 0016B 00000           CON(5)  =DOLIST
  134               * File  CPONTMNU.s      36
  135 00170 00000           CON(5)  =DOCSTR
  136 00175 D0000           CON(5)  13
  137 0017A D454E45         NIBASC  \MENU\
            5
  138 00182 00000           CON(5)  =DOCOL
  139               * Menu, menu option
  140               * File  CPONTMNU.s      37
  141 00187 00000           CON(5)  =DOROMP
  142 0018C 000000          CON(6)  =~xCPONTMNU
  143               * Create and display CST menu
  144               * File  CPONTMNU.s      38
  145 00192 00000           CON(5)  =SEMI
  146               * File  CPONTMNU.s      39
  147 00197 00000           CON(5)  =SEMI
  148               * File  CPONTMNU.s      40
  149 0019C 00000           CON(5)  =DOLIST
  150               * File  CPONTMNU.s      41
  151 001A1 00000           CON(5)  =DOCSTR
  152 001A6 B0000           CON(5)  11
  153 001AB 745594          NIBASC  \GUI\
  154 001B1 00000           CON(5)  =DOCOL
  155               * GUI menu option
  156               * File  CPONTMNU.s      42
  157 001B6 00000           CON(5)  =DOROMP
  158 001BB 000000          CON(6)  =~xGUIONTETP
  159               * Run GUI
  160               * File  CPONTMNU.s      43
  161 001C1 00000           CON(5)  =SEMI
  162               * File  CPONTMNU.s      44
  163 001C6 00000           CON(5)  =SEMI
  164               * File  CPONTMNU.s      45
  165 001CB 00000           CON(5)  =SEMI
  166               * File  CPONTMNU.s      46
  167 001D0 00000           CON(5)  =xMENU
  168               * Create & display CST menu
  169               * File  CPONTMNU.s      47
  170 001D5 00000           CON(5)  =SEMI
Saturn Assembler                                       Fri Jun 26 16:57:22 2009
V3.0.9 (04/15/2007)   Symbol Table                       CPONTMNU.a     Page    2

 '                                 Ext                   -    99   106   112
 CK0                               Ext                   -    35
 DOCOL                             Ext                   -    33    66   138
                                         154
 DOCSTR                            Ext                   -    63   135   151
 DOIDNT                            Ext                   -    40    43    46
                                          49    54    57    69    72    75    78
                                          82    85   100   107   113   122   125
                                         128
 DOLIST                            Ext                   -    38    61   133
                                         149
 DOROMP                            Ext                   -    90    95   141
                                         157
=RomId                             Abs     809 #00000329 -    19
 SEMI                              Ext                   -   118   120   145
                                         147   161   163   165   170
 STO                               Ext                   -   103   110   116
=xCPONTMNU                         Rel       6 #00000006 -    31
 xMENU                             Ext                   -   167
 ~CONTETP                          Ext                   -    96
 ~xCPONTMNU                        Ext                   -    30   142
 ~xGUIONTETP                       Ext                   -   158
Saturn Assembler                                       Fri Jun 26 16:57:22 2009
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
