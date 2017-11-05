RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\TRUALT.s, part of the ALT.hpp project, created by <> on 18/04/2009 )
**********************************************************************
* NAME:            TRUALT
* AUTHOR:          Dan Pitic
* VERSION:         1.14
* DATE:            12 June 2009
* DESCRIPTION:     Calculates the true altitude.
* COMPATIBILITY:   HP50
* USAGE:           ( u u u u -> u )
* INPUT:     ca    Calibrated altitude (with units)
*            sat   Static air temperature (true air temp.), deg. C
*            pa    Pressure altitude (with units)
*            gndst Altitude of the ground station (with units)
* OUTPUT:    STACK True altitude (feet)
* CALLS:           LIBRARY 326h = 806d
*
INCLUDE ALT50.h
DEFINE ISAT ROMPTR 326 1
NULLNAME TRUALT
::
	 { LAM ca LAM sat LAM pa LAM gndst } BIND      ( LAMs )
	   LAM sat                                     ( = Tm )
	   UMSI                                        ( Convert sat to K )
*	   LAM pa ROMPTR 326 1                         ( Call ISAT [= TM] )
	   LAM pa ISAT
	   UM/                                         ( factor = Tm/TM )
	   LAM ca LAM gndst UM- UM*                    ( Multiply factor )
	   LAM gndst UM+                               ( Add gnd. st. elev. )
	 ABND                                          ( LAMs )
;
