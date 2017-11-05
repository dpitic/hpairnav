RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\RAMBFRM.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009 )
**********************************************************************
* NAME:          RAABFRM
* LIBRARY #:     325h = 805d
* AUTHOR:        Dan Pitic
* VERSION:       1.4
* DATE:          25 June 2009
* COMPATIBILITY: HP50
*                HP48
* DESCRIPTION:   Runs the GUI for the library application.
*
INCLUDE ROAAB48.h
xNAME RAABFRM
::
	 CK0                              ( No arguments )
	 BEGIN
	   InptForm                         ( Run INPUT form )
	 WHILE
	   ' ID T STO
	   ' ID TC1 STO
	   ' ID TAS STO
	   ' ID DIST STO
	   ' ID BRG STO
	   ' ID WS STO
	   ' ID WD STO
	   ID WD ID WS ID BRG ID DIST ID TAS   ( INPUT arguments )
	   ID TC1 ID T
	   ROAAB                               ( -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
				' ID MC2 STO                        ( STO results in OUTPUT global variables )
				' ID R STO
				' ID T2 STO
				' ID T1 STO
				' ID TC2 STO
				' ID GS2 STO
				' ID HDG2 STO
				' ID GS1 STO
				' ID HDG1 STO
				BEGIN
				  OutptOutbndForm                     ( Run OUTPUT OUTBOUND form )
				WHILE
				  4DROP                               ( IF OK is pressed, DROP form results )
				  OutptInbndForm                      ( Run OUTPUT INBOUND form )
				  IT 5DROP                            ( IF OK is pressed, DROP form results )
				REPEAT	
	 REPEAT
;
