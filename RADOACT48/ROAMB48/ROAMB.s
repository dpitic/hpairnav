RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\ROAMB.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009 )
**********************************************************************
* NAME:          ROAMB
* LIBRARY #:     324h = 804d
* AUTHOR:        Dan Pitic
* VERSION:       1.6
* DATE:          24 June 2009
* COMPATIBILITY: HP50  ( Different rompointer def. )
*                HP48  ( Different rompointer def. )
* DESCRIPTION:   Function to calculate the radius of action from a
*                moving base.
* USAGE:         ( %WD %WS %TRS %GSS %TAS %TC1 %T
*                  -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
*
INCLUDE ROAMB48.h
*DEFINE THGS ROMPTR 320 3           ( HP50 )
*DEFINE CGVE ROMPTR 320 1           ( HP50 )
DEFINE THGS ROMPTR 320 1           ( HP48 )
DEFINE CGVE ROMPTR 320 3           ( HP48 )
NULLNAME ROAMB
::
	 { LAM WD LAM WS LAM TRS LAM GSS
		  LAM TAS LAM TC1 LAM T }
	 BIND                                 ( INPUT argument LAMs )
* Calc. wind triangle 1
    LAM TAS LAM TC1 LAM WD LAM WS
				THGS DROP                            ( -> %HDG1 %GS1 )
* Calc. relative wind
    LAM WS LAM WD x>V2                   ( -> %HDG1 %GS1 [-WV] )
				LAM GSS LAM TRS x>V2                 ( -> %HDG1 %GS1 [-WV] [TGV] )
				x+					                              ( -> %HDG1 %GS1 [-RW] )
				xV>                                  ( -> %HDG1 %GS1 %RWS %RWD )
				DUP %0 %< IT ::                      ( Ensure RWD is NOT < 0 deg. )
				  %360 %+                              ( -> %HDG1 %GS1 %RWS %RWD )
				;
				{ LAM RWS LAM RWD }                  ( RW LAMs )
				BIND                                   ( -> %HDG1 %GS1 )
* Calc. wind triangle 2 (relative wind triangle)
      OVER LAM TAS LAM RWD LAM RWS
						CGVE DROPSWAP                        ( -> %HDG1 %GS1 %S1 %DRM1 )
* Calc. direction of closure
	     %180 %+                              ( -> %HDG1 %GS1 %S1 %DRM2 )
	     DUP %360 %> IT ::                    ( Ensure DRM2 is NOT > 360 deg. )
	       %360 %-                              ( -> %HDG1 %GS1 %S1 %DRM2 )
	     ;
* Calc. wind triangle 3 (relative wind triangle)
      LAM TAS SWAP LAM RWD LAM RWS
						THGS DROPROT                           ( -> %HDG1 %GS1 %HGD2 %S2 %S1 )
* Calc. time to turn
      OVER LAM T %*                          ( -> %HDG1 %GS1 %HDG2 %S2 %S1 %NUM )
						UNROT                                  ( -> %HDG1 %GS1 %HDG2 %NUM %S2 %S1 )
						%+ %/                                  ( -> %HDG1 %GS1 %HDG2 %T1 )
* Calc. time to intercept
      LAM T OVER %-                          ( -> %HDG1 %GS1 %HDG2 %T1 %T2 )												
* Calc. wind triangle 4
      3PICK LAM TAS LAM WD LAM WS
						CGVE DROPSWAP                          ( -> %HDG1 %GS1 %HDG2 %T1 %T2 %GS2 %TC2 )
						2SWAP                                  ( -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 )
* Calc. radius of action
      OVER													                      ( -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %T1 )
      7PICK %*                               ( -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R )
* Calc. distance after turn
	     OVER                                   ( -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %T2 )
	     6PICK %*                               ( -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
				ABND                                 ( RW LAMs )
	 ABND                                 ( INPUT argument LAMs )
;
