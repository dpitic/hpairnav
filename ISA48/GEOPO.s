RPL
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\GEOPO.s, part of the ISATM.hpp project, created by <> on 7/04/2009 )
********************************************************************
* Name:	     			GEOPO
* Library #:				326h = 806d
* Description:		Calculates the Geopotential Altitude from input of
*               Geometric Altitude.  (The SysRPL version of GEOPO)
* Version:	  			1.23
* Date:									10 June 2009
* Machine:      HP48
*               HP50
* Usage:       ( u -> u )
* Input:					STACK					Geometric altitude (with units)
* Output:    STACK     Geopotential altitude (in SI units)
*
INCLUDE ISA48.h
xNAME GEOPO
::
		CK1&Dispatch 																				( Check for geom. alt. argument )
		unitob ::                        ( Unit object )
		  UMSI                           ( Convert to SI units )
		  UNIT % 6356766. "m" umEND ;    ( Radius of the Earth )
				{ LAM H LAM re } BIND          ( Create temporary environment )
						LAM re                         ( Calculate the geopotential )
						LAM H                          ( altitude and output on STACK )
						UM*
						LAM re
						LAM H
						UM+
						UM/
						UMSI       													       ( Convert to SI units [m] )
				ABND                           ( Abandon temporary environment )
  ;		
;
