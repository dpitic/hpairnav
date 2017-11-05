RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CMACH.s, part of the ASPD.hpp project, created by <> on 19/04/2009 )
*********************************************************************
* NAME:            CMACH
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
* TODO:      Split this function into 2 separate functions.
*            1) Function to calculate the mach number.
*            2) Function to update the CST menu for the next step.
*
INCLUDE ASPD.h
NULLNAME CMACH
::
		ROMPTR 326 2                         ( p1 = ISAP[PA] )
		UNIT % 0 "m" umEND ;
		ROMPTR 326 2                         ( p0 = ISAP[0_ft] )
		UNIT % 0 "m" umEND ;
		ROMPTR 326 3                         ( \970 = ISA\97[0_ft] )
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
* Update CST menu for next step of the problem.
* This function will be split into a separate function.
  { ID VC ID PA ID M                   ( VC PA & M avail. as outputs )
  { "TAT" ::                           ( Input TAT )
			         CK1&Dispatch               ( Must have 1 argument )
			         BINT1 ::                   ( Real number )
			           "\B0C" umEND BINT3 EXTN  ( Add default deg C units )
			           DUP
			           ' ID T2 STO              ( STO in GLOBAL var T2 )
			           "TAT" >TAG               ( TAG )
			           ID M ID T2 CSAT          ( Calc. SAT )
			           DUP
			           ' ID T1 STO              ( STO SAT in GLOBAL var T1 )
			           "SAT" >TAG
			           ID M ID T1 TASMS         ( Calc. TAS from Mach no. & )
			           DUP                      ( SAT )
			           ' ID V1 STO              ( STO TAS in GLOBAL var V1 )
			           "TAS" >TAG               ( TAG )
			           { ID VC ID PA ID M ID T2 ID T1 ID V1   ( New CST menu )
			           { "NEW" :: xASPDMNU ; }
			           } xMENU
			         ;
			       ; }
		{ "SAT" ::                           ( Input SAT )
		          CK1&Dispatch               ( Must have 1 argument )
		          BINT1 ::                   ( Real number )
		            "\B0C" umEND BINT3 EXTN  ( Add default deg C units )
		            DUP
		            ' ID T1 STO              ( STO in GLOBAL var T1 )
		            "SAT" >TAG               ( TAG )
		            ID M ID T1 CTAT          ( Calc. SAT )
		            DUP
		            ' ID T2 STO
		            "TAT" >TAG
		            ID M ID T1 TASMS
		            DUP
		            ' ID V1 STO
		            "TAS" >TAG
		            { ID VC ID PA ID M ID T2 ID T1 ID V1   ( New CST menu )
		            { "NEW" :: xASPDMNU ; }
		            } xMENU
		          ;
		        ; }
		{ "NEW" :: xASPDMNU ; }	             ( Start new problem )
		} xMENU	
;
