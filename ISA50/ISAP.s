RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAP.s, part of the ISATM.hpp project, created by <> on 7/04/2009 )
********************************************************************
* Name:     				ISAP
* Library #:    326h = 806d
* Description:  Calculates the standard pressure in the ISA for a
*               given altitude.  Output in mbar units.
* Versioin:     1.23
* Date:         10 June 2009
* Machine:      HP50
* Usage:        ( u -> u )
* Input:								STACK					Geopotential altitude (with units)
* Output:       STACK     Standard ISA pressure (mbar)
*
INCLUDE ISA50.h
xNAME ISAP
::
		CK1&Dispatch																															( Check for 1 argument )
		unitob ::                                  ( Unit object )
		  UMSI                                     ( Conver geopotential altitude to SI units )
				UNIT                                     ( Temp. lapse rate 0 m <= Z <= 11 km )
						% -.0065 "K" "m" um/ umEND ;
				UNIT % 101325. "Pa" umEND ; UMSI         ( ISA sea level pressure )
				UNIT % 288.15 "K" umEND ;                ( ISA sea level temperature )
				UNIT                                     ( Sea level acceleration of gravity )
						% 9.806645	"m" "s" %2 um^ um/ umEND ;
				UNIT                                     ( Gas constant for the ISA )
						% 287.0528
						"m" %2 um^ "s" %2 um^ "K" um* um/
						umEND ;
				{ LAM Z LAM \DF LAM p0 LAM T0 LAM g0 LAM R } BIND
* Check if Z > 20 km
						LAM Z
						UNIT % 20000. "m" umEND ;
						UM>? %0<> case ::
  						"ERROR: Alt.    > 20 km"            ( Display warning message and error beep )
								  FlashWarning                      ( and wait for key press to exit )
						;	
* Check if Z <= 11 km
						LAM Z
						UNIT % 11000. "m" umEND ;
						UM<=? %0<>	case ::
								LAM p0                              ( Calculate ISA pressure for )
								LAM T0                              ( 0 m <= Z <= 11 km )
								LAM \DF
								LAM Z
								UM*
								UM+
								LAM T0
								UM/
								LAM g0
								LAM R
								LAM \DF
								UM*
								UM/
								%CHS
								%^
								UM*
								UNIT % 1. CHR_m "bar" umP umEND ;
								UMCONV										          		        ( Return ISA pressure in mbar )
						;	
* Check if Z > 11 km`
						LAM Z
						UNIT % 11000. "m" umEND ;
						UM>? %0<> case ::
								LAM p0										                    ( Calculate ISA pressure for )
								LAM T0                              ( 11 km < Z <= 20 km )
								LAM \DF
								UNIT % 11000. "m" umEND ;
								UM*
								UM+
								LAM T0
								UM/										
								LAM g0
								LAM R
								LAM \DF
								UM*
								UM/
								%CHS
								%^										
								LAM g0
								LAM Z
								UNIT % 11000. "m" umEND ;
								UM-
								UM*
								LAM R
								UNIT % 11000. "m" umEND ;
								xISAT
								UM*
								UM/
								%CHS
								%EXP
								%*
								UM*
								UNIT % 1. CHR_m "bar" umP umEND ;
								UMCONV                              ( Return ISA pressure in mbar )
						;
		  ABND													                     ( Abandon temporary environment )					
		;
;
