RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\PNRVF.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009 )
**********************************************************************
* NAME:          PNRVF
* LIBRARY #:     322h = 802d
* AUTHOR:        Dan Pitic
* DATE:          22 June 2009
* VERSION:       1.3
* COMPATIBILITY: HP50 ( Different rompointer definitions )
*                HP48 ( Different rompointer definitions )
* DESCRIPTION:   Function to calculate the point of no return (PNR)
*                from a fixed base (along track), with variable fuel
*                flow
* USAGE:         { %WD1 %WS1 %TC1 %FF1 %TAS1 %DHOM %WD2 %WS2
*                  %FF2 %TAS2 %FLTFL
*                  -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %T1 )
*
INCLUDE PNRVF48.h
*DEFINE THGS ROMPTR 320 3                ( HP50 )
DEFINE THGS ROMPTR 320 1                ( HP48 )
NULLNAME PNRVF
::
	 { LAM WD1 LAM WS1 LAM TC1 LAM FF1
	   LAM TAS1 LAM DHOM LAM WD2 LAM WS2
	   LAM FF2 LAM TAS2 LAM FLTFL
		}
		BIND                                  ( INPUT argument LAMs )
* Calc. wind triangle 1 (OUTBOUND)
    LAM TAS1 LAM TC1 LAM WD1 LAM WS1      ( Arguments )
				THGS                                  ( -> %HDG1 %S1 %CRAB )
				DROP                                  ( -> %HDG1 %S1 )
* Calc. SGR1
    DUP LAM FF1 SWAP %/                   ( -> %HDG1 %S1 %SGR1 )						
* Calc. track back (INBOUND)				
				LAM TC1 %180 %+                       ( -> %HDG1 %S1 %SGR1 %TC2 )
				DUP %360 %> IT ::                     ( Make sure TC2 is NOT > 360 deg. )
				  %360 %-                             ( -> %HDG1 %S1 %SGR1 %TC2 )
				;
* Calc. wind triangle 2 (INBOUND)
    LAM TAS2 SWAP                         ( -> %HDG1 %S1 %SGR1 %TAS2 %TC2 )
    LAM WD2 LAM WS2                       ( -> %HDG1 %S1 %SGR1 %TAS2 %TC2 %WD2 %WS2 )
    THGS DROP                             ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 )
* Calc. SGR2
	   DUP LAM FF2 SWAP %/                   ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 )
* Calc. PNR distance from FIX
    LAM FLTFL                             ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %FLTFL )
				LAM DHOM                              ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %FLTFL %DHOM )
				3PICK                                 ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %FLTFL %DHOM %SGR2 )
				%* %-                                 ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %NUM )
				5PICK                                 ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %NUM %SGR1 )
				3PICK                                 ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %NUM %SGR1 %SGR2 )
				%+                                    ( -> %HDG1 %S1	%SGR1 %HDG2 %S2 %SGR2 %NUM %DEN )
				%/                                    ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R )
* Calc. PNR distance from HOME base
    DUP
				LAM DHOM %+                           ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH )
* Calc. time to turn
    OVER                                  ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %R )
				8PICK                                 ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %R %S1 )
				%/                                    ( -> %HDG1 %S1 %SGR1 %HDG2 %S2 %SGR2 %R %DFMH %T1 )								
		ABND                                  ( INPUT argument LAMs )
;
