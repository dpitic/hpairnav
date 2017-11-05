RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVFMNU.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009 )
**********************************************************************
* NAME:          PNRVFMNU
* LIBRARY #:     322h = 802d
* AUTHOR:        Dan Pitic
* DATE:          22 June 2009
* VERSION:       1.3
* COMPATIBILITY: HP50
*                HP48
* DESCRIPTION:   Generates and displays the CST menu for the library
*                application.
*                This library solves the point of no return (PNR) from
*                a fixed base (along track) with variable fuel flow.
*
INCLUDE PNRVF50.h
xNAME PNRVFMNU
::
	 CK0                                    ( No arguments )
	 {
	   ID WD1 ID WS1 ID TC1 ID FF1          ( Menu INPUT global variables )
	   ID TAS1 ID DHOM ID WD2 ID WS2
	   ID FF2 ID TAS2 ID FLTFL
	   {
	     "SOLVE" ::                         ( Menu solution )
	       ID WD1 ID WS1 ID TC1 ID FF1      ( Input arguments )
	       ID TAS1 ID DHOM ID WD2 ID WS2
	       ID FF2 ID TAS2 ID FLTFL
* HP50 ONLY - Argument validation
	       CONVARG                          ( ***** HP50 ONLY ***** )
	       PNRVF                            ( Calculate problem )
	       ' ID T1 STO                      ( STO OUTPUT in global variables )
	       ' ID DFMH STO
	       ' ID R STO
	       ' ID SGR2 STO
	       ' ID S2 STO
	       ' ID HDG2 STO
	       ' ID SGR1 STO
	       ' ID S1 STO
	       ' ID HDG1 STO
	     ;
	   }
	   ID R ID DFMH ID HDG1 ID S1 ID SGR1   ( Menu OUTPUT global variables )
	   ID T1 ID HDG2 ID S2 ID SGR2
	   { }
	   {
	     "MENU" ::                          ( Create and display CST menu )
	       xPNRVFMNU
	     ;
	   }
	   {
	     "GUI" ::                           ( Run the GUI )
	       xPNRFRM
	     ;
	   }
	 }
	 xMENU
;
