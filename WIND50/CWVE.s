RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\CWVE.s, part of the WIND50.hpp project, created by <> on 15/06/2009 )
**********************************************************************
* NAME:          CWVE
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          15 June 2009
* COMPATIBILITY: HP50
* DESCRIPTION:   Calculates the WIND vector and CRAB angle from
*                inputs of HDG, TAS, TC, GS.
* USAGE:         ( %HDG %TAS %TC %GS -> %WD %WS %CRAB )
*
INCLUDE WIND50.h
xNAME CWVE
::
	 CK4&Dispatch                              ( Requires 4 arguments )
	 #01111 ::                                 ( 4 REAL numbers )
	   FIFTEEN ClrSysFlag                      ( Set Polar/Cylindrical mode )
	   SIXTEEN SetSysFlag
	   SEVENTEEN ClrSysFlag                    ( Set DEG mode )
	   EIGHTEEN ClrSysFlag
	   { LAM HDG LAM TAS LAM TC LAM GS } BIND  ( Create temporary environment )
	     LAM GS LAM TC x>V2                      ( Create GROUND vector )
	     LAM TAS LAM HDG x>V2                    ( Create AIR vector )
	     x-                                      ( Calc. WIND vector [WV = GV - AV] )
	     xV>                                     ( -> WS WD[TO] )
	     %180 %+                                 ( -> WS WD )
	     SWAP                                    ( -> WD WS )
	     LAM HDG LAM TC %-                       ( -> WD WS CRAB )
	     DUP % -90 %< IT ::                      ( Ensure CRAB is NOT < -90 deg. )
	       %360 %+                                 ( -> WD WS CRAB )
	     ;
	     DUP % 90 %> IT ::                       ( Ensure CRAB is NOT > 90 deg. )
	       %360 %-                                 ( -> WD WS CRAB )
	     ;
	   ABND                                    ( Abandon temporary environment )
	 ;
;
