RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\RASBMNU.s, part of the ROASB50.hpp project, created by <> on 23/06/2009 )
**********************************************************************
* NAME:          RASBMNU
* AUTHOR:        Dan Pitic
* LIBRARY #:     323h = 803d
* VERSION:       1.4
* DATE:          22 June 2009
* COMPATIBILITY: HP50  ( Requires CONVARG )
*                HP48  ( DO NOT USE CONVARG )
* DESCRIPTION:   Generates and displays the CST menu for the library.
*
INCLUDE ROASB48.h
xNAME RASBMNU
::
	 CK0                              ( No arguments )
	 {
	   ID WD ID WS ID TC1 ID T ID TAS ID DHOM           ( INPUT variables )
	   {
	     "SOLVE" ::                                     ( Solve menu option )
	       ID WD ID WS ID TC1 ID T ID TAS ID DHOM         ( Arguments )
* HP50 ONLY - Argument checking
*        CONVARG                                        ( ***** HP50 ONLY ***** )	
	       ROASAMBA                                       ( Call function )
	       ' ID DFMH STO                                  ( STO OUTPUT results )
	       ' ID R STO                                     ( in global variables )
	       ' ID T1 STO
	       ' ID S2 STO
	       ' ID HDG2 STO
	       ' ID S1 STO
	       ' ID HDG1 STO
	     ;
	   }
	   ID T1 ID R ID DFMH ID HDG1 ID S1 ID HDG2 ID S2   ( OUTPUT variables )
	   { }
	   { }
	   {
	     "MENU" ::                                      ( Display menu, menu option )
	       xRASBMNU
	     ;
	   }
	   {
	     "GUI" ::                                       ( Run GUI menu option )
	       xRASBFRM
	     ;
	   }
	 }
	 xMENU                            ( Generate and display CST menu )
;
