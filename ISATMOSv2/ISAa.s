RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAa.s, part of the ISATM.hpp project, created by <> on 7/04/2009 )
********************************************************************
* Name:    			  ISAa
* Library #:    326h = 806d
* Description:  Calculates the speed of sound in air for the standard
*															atmosphere ISA for a given altitude.
*               Output in SI units.
* Version:      1.22
* Date:         17 April 2009
* Usage:        ( u -> u )
* Input:      STACK				Geopotential altitude (with units)
* Output:     STACK				Speed of sound in ISA (m/s)

INCLUDE ISATM.h
xNAME ISAa
::
		CK1&Dispatch    																( Check for 1 argument )
		BINT14 ::                       ( Unit object )
		  UMSI																										( Convert to SI units )
		  xISAT
		  UNIT % 287.0528 "m" %2 um^ "s" %2 um^ "K" um* um/ umEND ;
		  UM*
		  % 1.4
		  UM*
		  UMSQRT
		;                                ( Return ISA speed of sound [m/s] )
;                                  ( in air at altitude )
