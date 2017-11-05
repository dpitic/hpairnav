RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\CONTETP.s, part of the CPONT50.hpp project, created by <> on 26/06/2009 )
**********************************************************************
* NAME:          CONTETP
* LIBRARY #:     329h = 809d
* AUTHOR:        Dan Pitic
* VERSION:       1.1
* DATE:          26 June 2009
* COMPATIBILITY: HP50  ( Different rompointer )
*                HP48  ( Different rompointer )
* DESCRIPTION:   Function to calculate the ON TRACK ETP from departure
*                point.  Calculates the flight time from the ETP to
*                either point.  Calculates the fuel burn off from the
*                ETP to either point.
* USGAE:         ( %TAS %TC1 %WD %WS %DIST %FFLO
*                                    -> %CPDIS %CPTIM %FBRN )
*
INCLUDE CPONT48.h
*DEFINE THGS ROMPTR 320 3           ( HP50 )
DEFINE THGS ROMPTR 320 1           ( HP48 )
NULLNAME CONTETP
::                                 ( %TAS %TC1 %WD %WS %DIST %FFLO -> )
	 { LAM TAS LAM TC1 LAM WD LAM WS  ( INPUT arguments )
	   LAM DIST LAM FFLO
	 }
	 BIND                             ( INPUT argument LAMs )
* Calculate wind triangle 1 (ONWARDS from ETP)	
	   LAM TAS LAM TC1 LAM WD LAM WS
	   THGS DROPSWAPDROP                ( -> %GS1 )
* Calc. reciprocal track (BACK from ETP)
    LAM TC1 %180 %+                  ( -> %GS1 %TC2 )
					 DUP %360 %> IT ::              ( Ensure TC2 is NOT > 360 deg. )
					   %360 %-                        ( -> %GS1 %TC2 )
					 ;
* Calc. wind triangle 2 (BACK from ETP)
    LAM TAS SWAP LAM WD LAM WS
				THGS DROPSWAPDROP                  ( -> %GS1 %GS2 )
* Calc. distance to ETP from DEPARTURE point
    LAM DIST                         ( -> %GS1 %GS2 %DIST )
				OVER %*                          ( -> %GS1 %GS2 %NUM )
				3PICK                            ( -> %GS1 %GS2 %NUM %GS1 )
				3PICK %+                         ( -> %GS1 %GS2 %NUM %DEN )
				%/                               ( -> %GS1 %GS2 %CPDIS )
* Calc. time from ETP to either point (hours)
    DUP                              ( -> %GS1  %GS2 %CPDIS %CPDIS )
				3PICK %/                         ( -> %GS1  %GS2 %CPDIS %CPTIM )
* Calc. fuel burn from ETP to either point
    DUP                              ( -> %GS1 %GS2 %CPDIS %CPTIM %CPTIM )
				LAM FFLO %*                      ( -> %GS1 %GS2 %CPDIS %CPTIM %FBRN )
				5ROLLDROP                        ( -> %GS2 %CPDIS %CPTIM %FBRN )
				4ROLLDROP                        ( -> %CPDIS %CPTIM %FBRN )								
	 ABND                             ( INPUT argument LAMs )
;
