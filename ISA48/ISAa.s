RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAa.s, part of the ISATM.hpp project, created by <> on 7/04/2009 )
********************************************************************
* Name:    			  ISAa
* Library #:    326h = 806d
* Description:  Calculates the speed of sound in air for the standard
*															atmosphere ISA for a given altitude.
*               Output in SI units.
* Version:      1.23
* Date:         10 June 2009
* Machine:      HP48
*               HP50
* Usage:        ( u -> u )
* Input:      STACK				Geopotential altitude (with units)
* Output:     STACK				Speed of sound in ISA (m/s)
*
INCLUDE ISA48.h
EXTERNAL DoMsgBox
EXTERNAL grobAlertIcon
EXTERNAL MsgBoxMenu
xNAME ISAa
::
		CK1&Dispatch    																( Check for 1 argument )
		unitob ::                       ( Unit object )
		  UMSI																										( Convert to SI units )
* Check if Z > 20 km
		  DUP
				UNIT % 20000. "m" umEND ;
						UM>? %0<> case ::            ( Display warning message and error beep )
						  DROP                       ( Geopotential altitude )
								ERRBEEP
* Message box parameters
								"ERROR: Alt.   > 20 km"    ( message$ )
								TWELVE                     ( #maxwidth )
								TEN                        ( #minwidth )
								grobAlertIcon              ( grob )
								MsgBoxMenu                 ( menuobject )
								DoMsgBox DROP              ( Draw the message box, DROP FLAG )
				;					
		  xISAT
		  UNIT % 287.0528 "m" %2 um^ "s" %2 um^ "K" um* um/ umEND ;
		  UM*
		  % 1.4
		  UM*
		  UMSQRT
		;                                ( Return ISA speed of sound [m/s] )
;                                  ( in air at altitude )
