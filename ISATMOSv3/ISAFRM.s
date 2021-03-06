RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv3\ISAFRM.s, part of the ISATM.hpp project, created by <> on 7/04/2009 )
*********************************************************************
* NAME:            ISAFRM
* LIBRARY #:       326h = 806d
* DESCRIPTION:     Displays the input/output form for the ISA library
*                  Accepts input of any single property (with units)
*																		and calculates the remaining properties.  The logic
*                  first looks to see if PA (pressure altitude) is
*                  supplied and then calculates the remaining ISA
*                  properties at that pressure altitude.  If PA is
*                  NOT supplied, then it next looks for:
*                    T1, P1 \971, A1 (all global variables)
*                  in that order to solve for PA and then the
*                  remaining ISA properties at that PA. All variables
*                  are GLOBAL and the default return units are shown
*                  in the var. descriptions.  Any consistent unit may
*                  be used for the input arguments.
* Version:									1.21
* Date:            07 April 2009
* INPUT/     PA     Geometric Altitude (Pressure altitude (feet))
*   OUTPUT:  T1					Standard ISA temperature at PA (deg C)
*												P1     Standard ISA pressure at PA (mbar)
*            \971   Standard ISA density at PA (kg/m^3)
*            A1     Standard speed of sound in ISA at PA (knots)

INCLUDE ISATM.h
xNAME ISAFRM
::
		BEGIN                              ( BEGIN loop )
				ISAform    																						( Display ISA input/output form )
		WHILE  																												( TRUE = OK is pressed )
				' ID A1 STO    																		( STO speed of sound )
				' ID \971 STO                    ( STO density )
				' ID P1 STO                      ( STO static pressure )               	
				' ID T1 STO                      ( STO static air temperature )                       	
				' ID PA STO                      ( STO pressure altitude )
				ID PA U>nbr NOVAL %<>            ( Check if PA is supplied? )
				ITE ::                           ( TRUE => calc. all properties )
						ID PA DUP xISAT  							    			( Calc. ISA temperature )
						UNIT % 1 "\B0C" umEND ;        ( Convert temperature to )
						UMCONV                         ( deg C )
						SWAP DUP xISAP																	( Calc. pressure at PA )
						SWAP DUP xISA\97               ( Calc. density at PA )                        	
						SWAP xISAa                     ( Calc. spd. of sound at PA )
						UNIT % 1 "knot" umEND ;        ( Convert speed of sound to )
						UMCONV                         ( knots )
						' ID A1 STO																				( STO solutions in global vars. )
						' ID \971 STO                  ( A1, \971, P1, T1 )
						' ID P1 STO
						' ID T1 STO
				  ;                              ( END THEN )
				::																															( FALSE = PA is NOT supplied )
						ID T1 U>nbr NOVAL %<> case ::  ( Temp. IS supplied, T1 )
						  ID T1 UMSI ' ID T1 STO         ( Convert to K and STO )
						  SYMBOL                         ( Create symbolic to solve )
						    ID T1
						    ID PA
						    xISAT
						    x=
				    ;                              ( 'T1 = ISAT[PA]' )
				    ' ID PA                        ( Solve for PA )
				    UNIT % 0 "ft" umEND ;          ( Guess value 0_ft )
				    xROOT                          ( Find ROOT, PA in feet )
				    ID T1                          ( Convert T1 )
				    UNIT % 1 "\B0C" umEND ;        ( back to )
				    UMCONV                         ( deg C )
				    SWAP DUP xISAP                 ( Calc. pressure at PA )
				    SWAP DUP xISA\97               ( Calc. density at PA )
				    SWAP xISAa                     ( Calc. speed of sound at PA )
				    UNIT % 1 "knot" umEND ;        ( Convert speed of sound to )
						  UMCONV                         ( knots )
				    ' ID A1 STO                    ( STO solutions in global vars. )
				    ' ID \971 STO                  ( A1, \971, P1, T1 )
				    ' ID P1 STO
				    ' ID T1 STO
				  ;																																( END CASE )
				  ID P1 U>nbr NOVAL %<> case :: ( Pressure IS supplied, P1 )
				    ID P1 UMSI ' ID P1 STO        ( Convert P1 to SI units & STO )
				    SYMBOL 																							( Create symbolic to solve )
				  		  ID P1
				  		  ID PA
				  		  xISAP
				  		  x=
				    ;                             ( 'P1 = ISAP[PA]' )
				    ' ID PA                       ( Solve for PA )
				    UNIT % 0 "ft" umEND ;         ( Guess value 0_ft )
				    xROOT                         ( Find ROOT, PA in feet )
				    DUP xISAT              							( Calc. temperature at PA )
				    UNIT % 1 "\B0C" umEND ;
				    UMCONV    																				( Convert T1 to deg C )
				    SWAP
				    ID P1                         ( Convert P1 )
				    UNIT % 1. CHR_m "bar" umP umEND ;
				    UMCONV                        ( to mbar )
				    SWAP DUP xISA\97              ( Calc. density at PA )
				    SWAP xISAa                    ( Calc. speed of sound at PA )
				    UNIT % 1 "knot" umEND ;       ( Convert speed of sound to )
						  UMCONV                        ( knots )
				    ' ID A1 STO                   ( STO solutions in global vars. )
				    ' ID \971 STO                 ( A1, \971, P1, T1 )
				    ' ID P1 STO
				    ' ID T1 STO
				  ;                               ( END CASE )
				  ID \971 U>nbr NOVAL %<> case ::  ( Density IS supplied, \971 )
				    SYMBOL																											( Create symbolic to solve )
				    		ID \971
				    		ID PA
				    		xISA\97
				    		x=
				    ;																															( '\971 = ISA\97[PA]' )
				    ' ID PA																									( Solve for PA )
				    UNIT % 0 "ft" umEND ;											( Guess value 0_ft )
				    xROOT																											( Find ROOT, PA in feet )
				    DUP xISAT																							( Calc. temperature at PA )
				    UNIT % 1 "\B0C" umEND ;
				    UMCONV																										( Convert T1 to deg C )
				    SWAP DUP xISAP																		( Calc. pressure at PA )
				    SWAP xISAa							    											( Calc. spd. of sound at PA )
				    UNIT % 1 "knot" umEND ;         ( Convert speed of sound to )
						  UMCONV                          ( knots )
				    ' ID A1 STO																					( STO solns. in golbal vars. )
				    ' ID P1 STO                     ( A1, P1, T1 )
				    ' ID T1 STO
				  ;                                 ( END CASE )
				  ID A1 U>nbr NOVAL %<> case ::  ( Speed of sound IS supplied, A1 )
				    ID A1 UMSI ' ID A1 STO       ( Convert to m/s and STO )
				    SYMBOL																									( Create symbolic to solve )
				    		ID A1
				    		ID PA
				    		xISAa
				    		x=
				    ;																														( 'A1 = ISAa[PA]' )
				    ' ID PA                        ( Solve for PA )
				    UNIT % 0 "ft" umEND ;          ( Guess value 0_ft )
				    xROOT																										( Find ROOT, PA in feet )
				    DUP xISAT																						( Calc. temperature at PA )
				    UNIT % 1 "\B0C" umEND ;
				    UMCONV                         ( Convert T1 to deg C )
				    SWAP DUP xISAP																	( Calc. pressure at PA )
				    SWAP xISA\97                   ( Calc. density at PA )
				    ID A1                          (	Convert speed of sound )
				    UNIT % 1 "knot" umEND ;        ( back to )
				    UMCONV                         ( knots )
				    ' ID A1 STO                    ( STO solutions in global vars. )
				    ' ID \971 STO                  ( A1, \971, P1, T1 )
				    ' ID P1 STO
				    ' ID T1 STO
				  ;  																														( END CASE )			
				;																																( END ELSE )
  REPEAT				                         ( REPEAT loop )
;		
