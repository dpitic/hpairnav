RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\RAMBMNU.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009 )
**********************************************************************
* NAME:          RAABMNU
* LIBRARY #:     325h = 805d
* AUTHOR:        Dan Pitic
* VERSION:       1.4
* DATE:          25 June 2009
* COMPATIBILITY: HP50  ( Must use CONVARG )
*                HP48  ( DO NOT use CONVARG )
* DESCRIPTION:   Creates and displays the CST menu for the library.
*
INCLUDE ROAAB50.h
DEFINE CONVARG ROMPTR 324 3     ( HP50 )
xNAME RAABMNU
::
	 CK0                                       ( No arguments )
	 {
	   ID WD ID WS ID BRG ID DIST ID TAS       ( INPUT global variables )
	   ID TC1 ID T
	   {
	     "SOLVE" ::                            ( Solve menu option )
	       ID WD ID WS ID BRG ID DIST ID TAS     ( INPUT arguments )
	       ID TC1 ID T
* HP50 ONLY - Argument checking
        CONVARG                               ( **** HP50 0NLY **** )
        ROAAB                                 ( -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
								' ID MC2 STO                          ( STO results in OUTPUT global variables )
								' ID R STO
								' ID T2 STO
								' ID T1 STO
								' ID TC2 STO
								' ID GS2 STO
								' ID HDG2 STO
								' ID GS1 STO
								' ID HDG1 STO	
	     ;
	   }
	   ID R ID T1 ID HDG1 ID GS1 ID T2         ( OUTPUT global variables )
	   ID HDG2 ID TC2 ID GS2 ID MC2
	   {
	     "MENU" ::                             ( Menu, menu option )
	       xRAABMNU                            ( Create and display CST menu )
	     ;
	   }
	   {
	     "GUI" ::                              ( GUI menu option )
	       xRAABFRM
	     ;
	   }
	 }
	 xMENU                                     ( Create & display CST menu )
;	
