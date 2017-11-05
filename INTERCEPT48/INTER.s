RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTER.s, part of the INTERCEPT50.hpp project, created by <> on 19/06/2009 )
**********************************************************************
* NAME:          INTER
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          19 June 2009
* LIBRARY #:     321h = 801d
* COMPATIBILITY: HP50
*                HP48  ( THGS & CGVE rompointers are different )
* DESCRIPTION:   Function to calculate and solve the interception
*                problem.
* USAGE:         ( %WD %WS %TAS %DRM2 %MRM2 %TRS %GSS ->
*                                                %HDG %TC %GS %ETI )
*
INCLUDE INTERCEPT48.h
*DEFINE THGS ROMPTR 320 3            ( HP50 )
*DEFINE CGVE ROMPTR 320 1            ( HP50 )
DEFINE THGS ROMPTR 320 1            ( HP48 )
DEFINE CGVE ROMPTR 320 3            ( HP48 )
NULLNAME INTER
::
	 FIFTEEN ClrSysFlag                ( Set Polar/Cylindrical mode )
	 SIXTEEN SetSysFlag
	 SEVENTEEN ClrSysFlag              ( Set DEG mode )
	 EIGHTEEN ClrSysFlag
	 { LAM WD                          ( Input argument LAMs )
	   LAM WS
	   LAM TAS
	   LAM DRM2
	   LAM MRM2
	   LAM TRS
	   LAM GSS
	 }
	 BIND                              ( Argument LAMs )
	   LAM WS LAM WD x>V2                ( Create -WIND vector )
	   LAM GSS LAM TRS x>V2              ( Create TARGET GROUND vector )
	   x+                                ( Calc. -RELATIVE WIND vector )
	   xV>                               ( -> %RWS %RWD )
	   DUP %0 %< IT ::                   ( Ensure RWD is NOT < 0 deg. )
	     %360 %+                           ( -> %RWS %RWD )
	   ;
	   { LAM RWS LAM RWD } BIND          ( Relative wind LAMs )
	     LAM TAS LAM DRM2 LAM RWD LAM RWS  ( Calc. intercept hdg. and SRM )
	     THGS                              ( -> %HDG %GS %CRAB )
	     DROP                              ( -> %HDG %GS )
	     LAM MRM2 SWAP %/                  ( -> %HDG %ETI )
	     SWAP                              ( -> %ETI %HDG )
	     DUP LAM TAS LAM WD LAM WS         ( -> %ETI %HDG %HDG ... )
	     CGVE                              ( ... -> %ETI %HDG %TC %GS %CRAB )
	     DROP                              ( -> %ETI %HDG %TC %GS )
	     4ROLL                             ( -> %HDG %TC %GS %ETI )
	   ABND                              ( Relative wind LAMs )
	 ABND                              ( Argument LAMs )
;
