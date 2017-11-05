RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\THGS.s, part of the WIND50.hpp project, created by <> on 15/06/2009 )
**********************************************************************
* NAME:          THGS
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          15 June 2009
* COMPATIBILITY: HP50, HP48
* DESCRIPTION:   Calculates the HEADING, GROUND SPEED and CRAB angle
*                from inputs of TAS, TC, WD, WS.
* USAGE:         ( %TAS %TC %WD %WS -> %HDG %GS %CRAB )
*
INCLUDE WIND48.h
xNAME THGS
::
	 CK4&Dispatch                              ( Requires 4 arguments )
	 #01111 ::                                 ( 4 REAL numbers )
	   FIFTEEN ClrSysFlag                      ( Set Polar/Cylindrical mode )
	   SIXTEEN SetSysFlag
	   SEVENTEEN ClrSysFlag                    ( Set DEG mode )
	   EIGHTEEN ClrSysFlag
	   { LAM TAS LAM TC LAM WD LAM WS } BIND   ( LAMs TAS TC WD WS )
	     LAM WS LAM WD x>V2 xNEG                 ( Create WIND vector )
	     %1 LAM TC x>V2                          ( Create UNIT GROUND vector )
	     { LAM WV LAM GV } BIND                  ( LAMs WV GV )
	       LAM WV LAM GV xDOT
	       LAM WV xABS
	       LAM GV xABS
	       x* x/ xACOS                             ( Calc. wind angle )
	       { LAM WA } BIND                         ( LAM WA )
	         LAM WS
										LAM WA %SIN
										%*
										LAM TAS %/ %ASIN                        ( Calc. CRAB angle )
										{ LAM CRAB } BIND                       ( LAM CRAB )
										  %180 LAM WA LAM CRAB %+ %-              ( Calc. WIND HEADING ANGLE )
										  { LAM WHA } BIND                        ( LAM WHA )
										    ::                                      ( Calc. GROUND SPEED )
										      LAM WA %0 %= case ::                  ( Tail wind )
										        LAM TAS LAM WS %+
										      ;
										      LAM WA %180 %= case ::                ( Head wind )
										        LAM TAS LAM WS %-
										      ;
										      LAM TAS LAM WHA %SIN %*               ( Anything other than )
										      LAM WA %SIN %/                        ( tail/head wind )
										    ;
										    { LAM GS } BIND                         ( LAM GS )
										      LAM TC LAM GS LAM WD LAM WS xCAVE       ( -> HDG TAS CRAB )
										      SWAPDROP                                ( -> HDG CRAB )
										      LAM GS                                  ( -> HDG CRAB GS )
										      SWAP                                    ( -> HDG GS CRAB )
										    ABND                                    ( LAM GS )
										  ABND                                    ( LAM WHA )
										ABND                                    ( LAM CRAB )
	       ABND                                    ( LAM WA )
	     ABND                                    ( LAMs WV GV )
	   ABND                                    ( LAMs TAS TC WD WS )
	 ;
;
