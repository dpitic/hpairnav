RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\TASMS.s, part of the ASPD.hpp project, created by <> on 19/04/2009 )
**********************************************************************
* NAME:            TASMS
* AUTHOR:          Dan Pitic
* VERSION:         1.33
* DATE:            13 June 2009
* COMPATIBILITY:   HP50
* DESCRIPTION:     Calculates the TRUE air temperature from Mach
*                  number and STATIC air temperature (obtained from
*                  TOTAL air temperature)
* USAGE:           ( %m ut1 -> uV1 )
* INPUT:     STACK     m     Mach number
*            STACK     t1    STATIC air temp.
* OUTPUT:    STACK     V1    True air speed in knots
*
INCLUDE ASPD48.h
NULLNAME TASMS
::
	 UMSI                              ( Convert T1 to K )
	 % 1.4                             ( k = 1.4 for STD atmos )
	 UNIT                              ( R = Gas constant for ISA )
		  % 287.0528 "m" %2 um^
				"s" %2 um^ "K" um* um/ umEND
		;
	 { LAM m LAM t1 LAM k LAM R } BIND ( LAMs for calculation of )
	   LAM m                           ( True air speed )
	   LAM k
	   LAM R
	   LAM t1
	   UM*
	   UM*
	   UMSQRT
	   UM*
	 ABND
	 UNIT % 1 "knot" umEND ;           ( Convert TAS to knot units )
	 UMCONV
;
