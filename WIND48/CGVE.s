RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\CGVE.s, part of the WIND50.hpp project, created by <> on 15/06/2009 )
**********************************************************************
* NAME:          CGVE
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          15 June 2009
* COMPATIBILITY: HP50, HP48
* DESCRIPTION:   Calculates the GROUND vector and CRAB angle from
*                inputs of HDG, TAS, WD, WS.
* USAGE:         ( %HDG %TAS %WD %WS -> %TC %GS %CRAB )
*
INCLUDE WIND48.h
xNAME CGVE
::
	 CK4&Dispatch                              ( Requires 4 arguments )
	 #01111 ::                                 ( 4 REAL numbers )
	   FIFTEEN ClrSysFlag                      ( Set Polar/Cylindrical mode )
	   SIXTEEN SetSysFlag
	   SEVENTEEN ClrSysFlag                    ( Set DEG mode )
	   EIGHTEEN ClrSysFlag
	   { LAM HDG LAM TAS LAM WD LAM WS } BIND  ( Create temporary environment )
	     LAM WS LAM WD x>V2 xNEG                 ( Create WIND vector )
	     LAM TAS LAM HDG x>V2                    ( Create AIR vector )
	     x+                                      ( Calc. GROUND vector [GV = WV + AV] )
	     xV>                                     ( -> GS TC )
	     DUP %0 %< IT ::                         ( Normalise TC if negative )
	       %360 %+                                 ( -> GS TC )
	     ;
	     SWAP                                    ( -> TC GS )
	     OVER                                    ( -> TC GS TC )
	     LAM HDG                                 ( -> TC GS TC HDG )
	     SWAP                                    ( -> TC GS HDG TC )
	     %-                                      ( -> TC GS CRAB )
	     DUP % -90 %< IT ::                      ( Ensure CRAB is NOT < -90 deg. )
	       %360 %+                                 ( -> TC GS CRAB )
	     ;
	     DUP % 90 %> IT ::                       ( Ensure CRAB is NOT > 90 deg. )
	       %360 %-                                 ( -> TC GS CRAB )
	     ;
	   ABND                                    ( Abandon temporary environment )
	 ;
;
