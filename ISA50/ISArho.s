RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISArho.s, part of the ISATM.hpp project, created by <> on 7/04/2009 )
********************************************************************
* Name:         ISA\97
* Library #:    326h = 806d
* Description:  Calculates the standard density in the ISA for a
*               given altitude. Output in SI units.
* Version:				  1.23
* Date:         10 June 2009
* Machine:      HP50
* Usage:        ( u -> u )
* Input:        STACK     Geopotential altitude (with units)
* Output:       STACK     Standard ISA density (SI units)
*
INCLUDE ISA50.h
xNAME ISA\97
::
		CK1&Dispatch                    ( Check for 1 argument )
		unitob ::                       ( Unit object )
		  UMSI                          ( Convert to SI units )
				{ LAM Z } BIND                ( Z = geopotential altitude )
* Check if Z > 20 km
						LAM Z
						UNIT % 20000. "m" umEND ;
						UM>? %0<> case ::
  						"ERROR: Alt.    > 20 km"            ( Display warning message and error beep )
								  FlashWarning                      ( and wait for key press to exit )
						;
* ELSE Calc. ISA density at altitude
				  LAM Z
				  xISAP UMSI
				  UNIT % 287.0528 "m" %2 um^ "s" %2 um^ "K" um* um/ umEND ;
						LAM Z
						xISAT
						UM*
						UM/                          ( Return units in kg/m^3 )
				ABND                           ( LAM Z )
		;                                ( Return ISA density in SI units )
;
