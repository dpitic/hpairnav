Saturn Assembler                                       Sat Jun 27 12:06:59 2009
V3.0.9 (04/15/2007)                                      AVMNU.a        Page    1

    1             * File  AVMNU.s 1
    2             * RPL
    3             * File  AVMNU.s 2
    4             * C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GUIAVN50\AVNCOMN50\AVMNU.s, part of the AVCOMN50.hpp project, created by <> on 27/06/2009
    5             **********************************************************************
    6             * NAME:          AVMNU
    7             * LIBRARY #:     32Ah = 810d
    8             * AUTHOR:        Dan Pitic
    9             * VERSION:       1.3
   10             * DATE:          27 June 2009
   11             * COMPATIBILITY: HP50, HP48
   12             * DESCRIPTION:   Generates and displays the CST menu for the library.
   13             *                This function should be run in the aviation root
   14             *                directory.
   15             *
   16             * File  AVMNU.s 14
   17             *|| Reading from C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GUIAVN48\AVNCOMN48\AVCOMN48.h
   18
   19             =RomId  EQU     #32A
   20             * ROMID set to 32A
   21
   22
   23
   24
   25             *|| Resuming file AVMNU.s at line 14
   26 00000 00000         CON(6)  =~xAVMNU
            0
   27 00006       =xAVMNU
   28             * File  AVMNU.s 16
   29 00006 00000         CON(5)  =DOCOL
   30             * File  AVMNU.s 17
   31 0000B 00000         CON(5)  =CK0
   32             * No arguments
   33             * File  AVMNU.s 18
   34 00010 00000         CON(5)  =DOLIST
   35             * File  AVMNU.s 19
   36 00015 00000         CON(5)  =DOLIST
   37             * File  AVMNU.s 20
   38 0001A 00000         CON(5)  =DOCSTR
   39 0001F B0000         CON(5)  11
   40 00024 74559         NIBASC  \GUI\
            4
   41 0002A 00000         CON(5)  =DOCOL
   42             * GUI menu option
   43             * File  AVMNU.s 21
   44 0002F 00000         CON(5)  =DOROMP
   45 00034 00000         CON(6)  =~xGUIAVCOMN
            0
   46             * Run aviation lib. common GUI
   47             * File  AVMNU.s 22
   48 0003A 00000         CON(5)  =SEMI
   49             * File  AVMNU.s 23
   50 0003F 00000         CON(5)  =SEMI
   51             * File  AVMNU.s 24
   52 00044 00000         CON(5)  =DOIDNT
   53 00049 70            CON(2)  7
   54 0004B 94351         NIBASC  \ISATMOS\
            445D4
            F435
   55             * ISA directory
   56             * File  AVMNU.s 25
   57 00059 00000         CON(5)  =DOIDNT
   58 0005E 80            CON(2)  8
   59 00060 14C44         NIBASC  \ALTITUDE\
            59445
            554454
   60             * Altitude directory
   61             * File  AVMNU.s 26
   62 00070 00000         CON(5)  =DOIDNT
   63 00075 60            CON(2)  6
   64 00077 14942         NIBASC  \AIRSPD\
            53505
            44
   65             * Airspeed directory
   66             * File  AVMNU.s 27
   67 00083 00000         CON(5)  =DOIDNT
   68 00088 40            CON(2)  4
   69 0008A 7594E         NIBASC  \WIND\
            444
   70             * Wind triangle directory
   71             * File  AVMNU.s 28
   72 00092 00000         CON(5)  =DOIDNT
   73 00097 90            CON(2)  9
   74 00099 54159         NIBASC  \EQITIMEPT\
            44594
            D4540545

   75             * ETP directory
   76             * File  AVMNU.s 29
   77 000AB 00000         CON(5)  =DOIDNT
   78 000B0 70            CON(2)  7
   79 000B2 25144         NIBASC  \RADOACT\
            4F414
            3445
   80             * Radius of action directory
   81             * File  AVMNU.s 30
   82 000C0 00000         CON(5)  =DOIDNT
   83 000C5 90            CON(2)  9
   84 000C7 94E44         NIBASC  \INTERCEPT\
            55425
            34540545

   85             * Interception directory
   86             * File  AVMNU.s 31
   87 000D9 00000         CON(5)  =DOLIST
   88 000DE 00000         CON(5)  =SEMI
   89             * File  AVMNU.s 32
   90 000E3 00000         CON(5)  =DOLIST
   91 000E8 00000         CON(5)  =SEMI
   92             * File  AVMNU.s 33
   93 000ED 00000         CON(5)  =DOLIST
   94 000F2 00000         CON(5)  =SEMI
   95             * File  AVMNU.s 34
   96 000F7 00000         CON(5)  =DOLIST
   97             * File  AVMNU.s 35
   98 000FC 00000         CON(5)  =DOCSTR
   99 00101 D0000         CON(5)  13
  100 00106 D454E         NIBASC  \MENU\
            455
  101 0010E 00000         CON(5)  =DOCOL
  102             * MENU menu option
  103             * File  AVMNU.s 36
  104 00113 00000         CON(5)  =DOROMP
  105 00118 00000         CON(6)  =~xAVMNU
            0
  106             * Regenerate and display CST menu
  107             * File  AVMNU.s 37
  108 0011E 00000         CON(5)  =SEMI
  109             * File  AVMNU.s 38
  110 00123 00000         CON(5)  =SEMI
  111             * File  AVMNU.s 39
  112 00128 00000         CON(5)  =SEMI
  113             * File  AVMNU.s 40
  114 0012D 00000         CON(5)  =xMENU
  115             * Generate and display CST menu
  116             * File  AVMNU.s 41
  117 00132 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat Jun 27 12:06:59 2009
V3.0.9 (04/15/2007)   Symbol Table                       AVMNU.a        Page    2

 CK0                               Ext                   -    31
 DOCOL                             Ext                   -    29    41   101
 DOCSTR                            Ext                   -    38    98
 DOIDNT                            Ext                   -    52    57    62
                                          67    72    77    82
 DOLIST                            Ext                   -    34    36    87
                                          90    93    96
 DOROMP                            Ext                   -    44   104
=RomId                             Abs     810 #0000032A -    19
 SEMI                              Ext                   -    48    50    88
                                          91    94   108   110   112   117
=xAVMNU                            Rel       6 #00000006 -    27
 xMENU                             Ext                   -   114
 ~xAVMNU                           Ext                   -    26   105
 ~xGUIAVCOMN                       Ext                   -    45
Saturn Assembler                                       Sat Jun 27 12:06:59 2009
V3.0.9 (04/15/2007)   Statistics                         AVMNU.a        Page    3

Input Parameters

  Source file name is AVMNU.a

  Listing file name is AVMNU.l

  Object file name is AVMNU.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
