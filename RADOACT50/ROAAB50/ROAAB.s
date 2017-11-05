RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAAB50\ROAAB.s, part of the ROAAB50.hpp project, created by <> on 25/06/2009 )
**********************************************************************
* NAME:          ROAAB
* LIBRARY #:     325h = 805d
* AUTHOR:        Dan Pitic
* VERSION:       1.4
* DATE:          25 June 2009
* COMPATIBILITY: HP50
*                HP48
* DESCRIPTION:   Function to calculate the radius of action from an
*                alternate base.  This function takes the arguments
*                and converts them to the arguments for a ROA from
*                moving base problem.  It then calls the function to
*                calculate the ROA from moving base and the output is
*                identical for both problems.
* USAGE:         ( %WD %WS %BRG %DIST %TAS %TC1 %T
*                  -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
*
INCLUDE ROAAB50.h
DEFINE ROAMB ROMPTR 324 2
NULLNAME ROAAB
::                              ( %WD %WS %BRG %DIST %TAS %TC1 %T -> )
* Manipulate and re-organise arguments to pass to moving base function.
* %BRG = %TRS       [ Track of ship for moving base ]
* %DIST / %T = %GSS [ Ground speed of ship for moving base ]
	 DUP                           ( -> %WD %WS %TRS %DIST %TAS %TC1 %T %T )
  5PICK                         ( -> %WD %WS %TRS %DIST %TAS %TC1 %T %T %DIST )
		SWAP                          ( -> %WD %WS %TRS %DIST %TAS %TC1 %T %DIST %T )
		%/                            ( -> %WD %WS %TRS %DIST %TAS %TC1 %T %GSS )
		5ROLLDROP                     ( -> %WD %WS %TRS %TAS %TC1 %T %GSS )
		4UNROLL                       ( -> %WD %WS %TRS %GSS %TAS %TC1 %T )
* Call function to calculate ROA from moving base		
		ROAMB                         ( -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
;
