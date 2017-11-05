RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTMNU.s, part of the INTERCEPT50.hpp project, created by <> on 19/06/2009 )
**********************************************************************
* NAME:          INTMNU
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          19 June 2009
* LIBRARY #:     321h = 801d
* COMPATIBILITY: HP50  ( MUST use CONVARG )
*                HP48  ( DO NOT use CONVARG )
* DESCRIPTION:   Generates and displays the CST menu for the
*                interception problem.
*
INCLUDE INTERCEPT50.h
xNAME INTMNU
::
	 CK0                               ( No arguments )
	 {
				ID WD ID WS ID TAS ID DRM2 ID MRM2 ID TRS ID GSS       ( INPUT global variables )
	   { "SOLVE" ::                                           ( Solve menu option )
	     ID WD ID WS ID TAS ID DRM2 ID MRM2 ID TRS ID GSS     ( Arguments )
* HP50 ONLY ( Comment CONVARG out for HP48 )	
	     CONVARG                                              ( ***** HP50 ONLY ***** )
* HP50 & HP48 ( Rompointers in INTER have to be modified )	
	     INTER                                                ( Solve interception problem )
	     ' ID ETI STO                                         ( STO results in OUTPUT )
	     ' ID GS STO                                          ( global variables )
	     ' ID TC STO
	     ' ID HDG STO
	     ;
	   }
	   ID HDG ID TC ID GS ID ETI                              ( OUTPUT global variables )
	   { "MENU" ::                                            ( Re-display menu )
	       xINTMNU
	     ;
	   }
	   { "GUI" ::                                             ( Run the GUI )
	       xINFRM
	     ;
	   }
	 }
	 xMENU                             ( Create and display CST menu )
;
