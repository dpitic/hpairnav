RPL
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\GEOPO.s, part of the ISATM.hpp project, created by <> on 7/04/2009 )
********************************************************************
* Name:	     			GEOPO
* Library #:				326h = 806d
* Description:		Calculates the Geopotential Altitude from input of
*               Geometric Altitude.  (The SysRPL version of GEOPO)
* Version:	  			1.22
* Date:									17 April 2009
* Input:					STACK					Geometric altitude (with units)
* Output:    STACK     Geopotential altitude (in SI units)

INCLUDE ISATM.h
xNAME GEOPO
::
		CK1&Dispatch 																				( Check for geom. alt. argument )
*		BINT1 ::																									( Real object )
*		  "ft" umEND 																				( Add default feet units )
*		  BINT3 EXTN
*		  xGEOPO                         ( Call GEOPO again using units )
*		;
		BINT14 ::                        ( Unit object )
		  UMSI                           ( Convert to SI units )
				{ LAM H } BIND                 ( H = geometric altitude [local] )
		  			UNIT % 6356766. "m" umEND ; ( Radius of the Earth )
							{ LAM re } BIND             ( re = radius of Earth [local] )
									LAM re                    ( Calculate the geopotential )
									LAM H                     ( altitude and output on STACK )
									UM*
									LAM re
									LAM H
									UM+
									UM/
									UMSI       													  ( Convert to SI units [m] )
							ABND                        ( LAM H )
				ABND                           ( LAM re )
  ;		
;
