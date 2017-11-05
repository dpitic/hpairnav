RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\CAVE.s, part of the WIND50.hpp project, created by <> on 15/06/2009 )
**********************************************************************
* NAME:          CAVE
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          15 June 2009
* COMPATIBILITY: HP50, HP48
* DESCRIPTION:   Calculates the AIR vector and CRAB angle from inputs
*                of TC, GS, WD, WS.
* USAGE:         ( %TC %GS %WD %WS -> %HDG %TAS %CRAB )
*
INCLUDE WIND48.h
xNAME CAVE
::
	 CK4&Dispatch                              ( Requires 4 arguments )
	 #01111 ::                                 ( 4 REAL numbers )
	   FIFTEEN ClrSysFlag                      ( Set Polar/Cylindrical mode )
	   SIXTEEN SetSysFlag
	   SEVENTEEN ClrSysFlag                    ( Set DEG mode )
	   EIGHTEEN ClrSysFlag
	   { LAM TC LAM GS LAM WD LAM WS } BIND    ( Create temporary environment )
	     LAM GS LAM TC x>V2                      ( Create GROUND vector )
	     LAM WS LAM WD x>V2 xNEG                 ( Create WIND vector )
	     x-                                      ( Calc. AIR vector [AV = GV - WV] )
	     xV>                                     ( -> TAS HDG )
	     DUP %0 %< IT ::                         ( Normalise heading if negative )
	       %360 %+                                 ( -> TAS HDG )
	     ;
	     SWAP                                    ( -> HDG TAS )
	     OVER LAM TC %-                          ( -> HDG TAS CRAB )
	     DUP % -90 %< IT ::                      ( Ensure CRAB is NOT < -90 deg )
	       %360 %+                                 ( -> HDG TAS CRAB )
	     ;
	     DUP % 90 %> IT ::                       ( Ensure CRAB is NOT > 90 deg )
	       %360 %-                                 ( -> HDG TAS CRAB )
	     ;
	   ABND                                    ( Abandon temporary environment )
	 ;
;
