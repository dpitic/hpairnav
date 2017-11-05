RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\DENALT.s, part of the ALT.hpp project, created by <> on 18/04/2009 )
********************************************************************
* NAME:            DENALT
* DESCRIPTION:     Calculates the density altitude.
* USAGE:           ( u u -> u )
* INPUT:     sat     Static air temperature (true air temp. ) (deg C)
*            pa      Pressure altitude with units.
* OUTPUT:    STACK   Density altitude (same units as pa)
* CALLS:           LIBRARY 326h = 807d
*
INCLUDE ALT.h
DEFINE ISAP     ROMPTR 326 2
DEFINE ISA\97   ROMPTR 326 3
NULLNAME DENALT
::
	 { LAM sat LAM pa } BIND               ( Input agruments )
	   UNIT                                ( Gas constant for ISA )
				  % 287.0528 "J"
						CHR_k "g" umP
						"K" um* um/ umEND
				;
	   { LAM R } BIND                      ( R = Gas constant )
*	     LAM pa ROMPTR 326 2               ( Call ISAP )
	     LAM pa ISAP
	     LAM sat
	     UMSI                              ( Convert SAT to K )
	     LAM R UM* UM/                     ( Calc. actual air density )
	     { LAM \97 } BIND                  ( Actual air density )
	       SYMBOL
	         LAM \97
	         ID DA
*	         ROMPTR 326 3
	         ISA\97
	         x=
	       ;                               ( '\97=ISA\97[DA]' )
	       ' ID DA
	       LAM pa                          ( Guess value PA )
	       xROOT                           ( Calculate and return density alt. DA )
	     ABND                              ( LAM \97 )
	   ABND                                ( LAM R )
	 ABND                                  ( LAM sat LAM pa )
;
