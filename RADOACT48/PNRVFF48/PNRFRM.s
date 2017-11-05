RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRFRM.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009 )
**********************************************************************
* NAME:          PNRFRM
* LIBRARY #:     322h = 802d
* AUTHOR:        Dan Pitic
* DATE:          22 June 2009
* VERSION:       1.3
* COMPATIBILITY: HP50
*                HP48
* DESCRIPTION:   Runs the library application as a GUI.
*
INCLUDE PNRVF48.h
xNAME PNRFRM
::
	 CK0                               ( No arguments )
	 BEGIN
	   OutbndInptForm                  ( Run OUTBOUND input form )
	 WHILE
* STO OUTBOUND INPUT global variables
		  ' ID DHOM STO
		  ' ID TAS1 STO
		  ' ID FF1 STO
		  ' ID TC1 STO
		  ' ID WS1 STO
		  ' ID WD1 STO
		  BEGIN
		    InbndInptForm                   ( Run INBOUND input form )
		  WHILE
* STO INBOUND INPUT global variables		
		    ' ID FLTFL STO
		    ' ID TAS2 STO
		    ' ID FF2 STO
		    ' ID WS2 STO
		    ' ID WD2 STO
		    ID WD1 ID WS1 ID TC1 ID FF1       ( INPUT arguments )
	     ID TAS1 ID DHOM ID WD2 ID WS2
	     ID FF2 ID TAS2 ID FLTFL
	     PNRVF                             ( Solve problem )
	     ' ID T1 STO                       ( STO OUTPUT in global variables )
	     ' ID DFMH STO
	     ' ID R STO
	     ' ID SGR2 STO
	     ' ID S2 STO
	     ' ID HDG2 STO
	     ' ID SGR1 STO
	     ' ID S1 STO
	     ' ID HDG1 STO
		    BEGIN
		      OutbndOutptForm                   ( Run OUTBOUND output form )
		    WHILE
		      6DROP                             ( DROP results of form )
		      BEGIN
		        InbndOutptForm                    ( Run INBOUND output form )
		      WHILE
		        3DROP                             ( DROP results of form )
		      REPEAT
		    REPEAT
		  REPEAT
	 REPEAT
;
