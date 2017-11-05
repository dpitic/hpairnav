RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAT.s, part of the ISATM.hpp project, created by <> on 7/04/2009 )
********************************************************************
* Name:										ISAT
* Library #:     326h = 806d
* Description:			Calculates the standard temperature in the ISA for
*																a given altitude.  Output in SI units Kelvin.
* Version:							1.23
* Date:										10 June 2009
* Machine:       HP50
* Usage:         ( u -> u )
* Input:				STACK					Geopotential altitude (with units)
* Output:	  STACK					Standard ISA temperature in SI units (Kelvin)
*
INCLUDE ISA50.h
xNAME ISAT
::
		CK1&Dispatch                     ( Require 1 argument )
		unitob :: 								 					        	( Unit object )
		  UMSI																		        	( Convert geopotential altitude to SI units )
	   UNIT                           ( Temp. lapse rate for 0 m <= Z <= 11 km )
						% -.0065 "K" "m" um/ umEND ;
	   UNIT % 288.15 "K" umEND ;      ( Sea level ISA temperature )
			 { LAM Z LAM \DF LAM T0 } BIND  ( Create temporary environment )
* Check if Z > 20 km
			   LAM Z
						UNIT % 20000. "m" umEND ;
						UM>? %0<> case ::
								"ERROR: Alt.    > 20 km"   ( Display warning message and error beep )
								  FlashWarning             ( and wait for key press to exit )
						;
* Check if Z <= 11 km
						LAM Z
						UNIT % 11000. "m" umEND ;
						UM<=? %0<> case ::
								LAM T0                       ( Calculate ISA temp. for )
								LAM \DF                      ( Z <= 11 km )
								LAM Z
								UM*
								UM+
								UMSI									     					  		  ( Return ISA temp. in Kelvin )
						;
* Check if Z > 11 km
						LAM Z
						UNIT % 11000. "m" umEND ;
						UM>? %0<> case ::
						  LAM T0                       ( Calculate ISA temp. for )
						  LAM \DF                      ( Z > 11 km )
						  UNIT % 11000. "m" umEND ;
						  UM*
						  UM+
						  UMSI               							  	( Return ISA tmep. in Kelvin )
						;														
				ABND																						     ( Abandont temporary environment )
		;
;
