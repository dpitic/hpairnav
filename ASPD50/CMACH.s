RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CMACH.s, part of the ASPD.hpp project, created by <> on 19/04/2009 )
**********************************************************************
* NAME:            CMACH
* AUTHOR:          Dan Pitic
* VERSION:         1.33
* DATE:            13 June 2009
* COMPATIBILITY:   HP50
* CALLS:           326h = 806d
* DESCRIPTION:     Calculates Mach number from pressure altitude and
*                  calibrated air speed.  Updates the CST menu for the
*                  next step of the problem.
* USAGE:           ( %vc %pa -> %Mach )
* INPUT:     vc    Calibrated airspeed (knots)
*            pa    Pressure altitude, PA
* OUTPUT:    STACK Mach number
*            M     Mach number (global)
* OTHER VAR: p1    ISA pressure at pressure altitude PA
*            p0    ISA pressure at sea level
*            \970  ISA density at sea level
*
INCLUDE ASPD50.h
DEFINE ISAP ROMPTR 326 2
DEFINE ISA\97 ROMPTR 326 3
NULLNAME CMACH
::
*		ROMPTR 326 2                         ( p1 = ISAP[PA] )
	 ISAP
		UNIT % 0 "m" umEND ;
*		ROMPTR 326 2                         ( p0 = ISAP[0_ft] )
	 ISAP
		UNIT % 0 "m" umEND ;
*		ROMPTR 326 3                         ( \970 = ISA\97[0_ft] )
	 ISA\97
		% 1.4                                ( k = 1.4 for STD atmos. )
  { LAM vc LAM p1 LAM p0 LAM \970 LAM k } BIND
		  SYMBOL
		    LAM vc
		    %2
		    x^                               ( vc^2 )
		    
		    %2 LAM k x*
		    LAM k %1 x-
						x/                               ( 2*k/[k-1] )
		    
		    LAM p0 LAM \970 x/               ( p0/\970 )
						x*                               ( [2*k/[k-1] * p0/\970 )
		    
		    %1                               ( 1 )
		    LAM p1 LAM p0 x/                 ( p1/p0 )
		    
		    %1                               ( 1 )
		    LAM k %1 x-
		    %2 x/                            ( [k-1]/2 )
		    ID M
		    %2 x^                            ( M^2 )
		    x*
		    x+                               ( 1 + [k-1]/2*M^2 )
		    
		    LAM k
		    LAM k %1 x-
		    x/                               ( k/[k-1] )
		    x^                               ( [1 + [k-1]/2*M^2]^[k/[k-1]] )
		    
		    %1 x-                            ( - 1 )
		    x*                               ( * p1/p0 )
		    x+                               ( + 1 )
		    
		    LAM k %1 x-
		    LAM k x/                         ( [k-1]/k )
		    x^
		    
		    %1 x-                            ( - 1 )
		    
		    x*
		    x=
		  ;
		  ' ID M                             ( Solve for Mach no. M [global] )
		  % 0.5                              ( Guess value )
		  xROOT                              ( Solve for Mach no. M [global] )
  ABND                                 ( LAMs vc p1 p0 \970 k )
;
