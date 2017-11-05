RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\ROASAMBA.s, part of the ROASB50.hpp project, created by <> on 23/06/2009 )
**********************************************************************
* NAME:          RASBMNU
* AUTHOR:        Dan Pitic
* LIBRARY #:     323h = 803d
* VERSION:       1.4
* DATE:          22 June 2009
* COMPATIBILITY: HP50
*                HP48
* DESCRIPTION:   Function to calculate the radius of action to same
*                base.
* USAGE:         ( %WD %WS %TC1 %T %TAS %DHOM
*                                -> %HDG1 %S1 %HDG2 %S2 %T1 %R %DFMH )
*
INCLUDE ROASB50.h
DEFINE THGS ROMPTR 320 3           ( HP50 )
*DEFINE THGS ROMPTR 320 1           ( HP48 )
NULLNAME ROASAMBA
::
	 { LAM WD LAM WS LAM TC1 LAM T LAM TAS LAM DHOM }
	 BIND                             ( INPUT argument LAMs )
* Calc. wind triangle 1 (OUTBOUND)	
	   LAM TAS LAM TC1 LAM WD LAM WS
	   THGS DROP                        ( -> %HDG1 %S1 )
* Calc. reciprocal track (INBOUND)
    LAM TC1 %180 %+                  ( -> %HDG1 %S1 %TC2 )
				DUP %360 %> IT ::                ( Ensure TC2 is NOT > 360 deg. )
				  %360 %-                          ( -> %HDG1 %S1 %TC2 )
				;
* Calc. wind triangle 2 (INBOUND)				
				LAM TAS SWAP LAM WD LAM WS
				THGS DROP                        ( -> %HDG1 %S1 %HDG2 %S2 )
* Calc. time home from fix
    LAM DHOM OVER %/                 ( -> %HDG1 %S1 %HDG2 %S2	%THOM )
* Calc. time to turn from fix
    LAM T SWAP %-                    ( -> %HDG1 %S1 %HDG2 %S2 % )
    OVER %*                          ( -> %HDG1 %S1 %HDG2 %S2 %NUM )
    4PICK                            ( -> %HDG1 %S1 %HDG2 %S2 %NUM %S1 )
    3PICK %+ %/                      ( -> %HDG1 %S1 %HDG2 %S2 %T1 )
* Calc. radius of action from fix
	   DUP                              ( -> %HDG1 %S1 %HDG2 %S2 %T1 %T1 )
	   5PICK %*                         ( -> %HDG1 %S1 %HDG2 %S2 %T1 %R )
* Calc. radius of action froom home
    DUP                              ( -> %HDG1 %S1 %HDG2 %S2 %T1 %R %R )
				LAM DHOM %+                      ( -> %HDG1 %S1 %HDG2 %S2 %T1 %R %DFMH )	
	 ABND                             ( INPUT argument LAMs )
;
