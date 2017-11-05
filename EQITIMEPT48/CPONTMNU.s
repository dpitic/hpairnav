RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\CPONTMNU.s, part of the CPONT50.hpp project, created by <> on 26/06/2009 )
**********************************************************************
* NAME:          CPONTMNU
* LIBRARY #:     329h = 809d
* AUTHOR:        Dan Pitic
* VERSION:       1.1
* DATE:          26 June 2009
* COMPATIBILITY: HP50 ( Must use CONVARG )
*                HP48 ( DO NOT use CONVARG )
* DESCRIPTION:   Generates and displays the CST menu for the library
*                application.
*
INCLUDE CPONT48.h
*DEFINE CONVARG ROMPTR 323 3       ( HP50 [Radius of action SAME base] )
xNAME CPONTMNU
::
	 CK0                             ( No arguments )
	 {
	   ID TAS ID TC ID WD ID WS      ( INPUT global variables )
	   ID DIST ID FFLO
	   {
	     "SOLVE" ::                  ( MENU solve option )
	       ID TAS ID TC ID WD ID WS
	       ID DIST ID FFLO
** HP50 ONLY - Argument checking
*	       CONVARG                   ( **** HP50 ONLY **** )
        CONTETP                   ( -> %CPDIS %CPTIM %FBRN )
								' ID FBRN STO             ( STO OUTPUT results in global variables )
								' ID CPTIM STO
								' ID CPDIS STO	
	     ;
	   }
	   ID CPDIS ID CPTIM ID FBRN     ( OUTPUT global variables )
	   {
	     "MENU" ::                   ( Menu, menu option )
	       xCPONTMNU                   ( Create and display CST menu )
	     ;
	   }
	   {
	     "GUI" ::                    ( GUI menu option )
	       xGUIONTETP                  ( Run GUI )
	     ;
	   }
	 }
	 xMENU                           ( Create & display CST menu )
;
