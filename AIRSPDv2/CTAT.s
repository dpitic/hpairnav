RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CTAT.s, part of the ASPD.hpp project, created by <> on 19/04/2009 )
********************************************************************
* NAME:            CTAT
* DESCRIPTION:     Calculates the TOTAL air temperature from Mach
*                  number and STATIC air temp.
* USAGE:           ( %m ut1 -> ut2 )
* INPUT:     STACK    m     Mach number
*            STACK    t1    STATIC air temp (K)
* OUTPUT:    STACK    t2    TOTAL air temp (deg C)
*
INCLUDE ASPD.h
NULLNAME CTAT
::
	 UMSI                           ( Convert T1 [SAT] to K )
	 % 1.4                          ( k = 1.4 for STD atmos )
	 { LAM m LAM t1 LAM k } BIND    ( LAMs for calculation of TAT )
	   LAM t1
	   %1
	   
	   LAM k %1 %-
	   %2 %/
	   
	   LAM m %2 %^
	   %*
	   %+
	   UM*
	 ABND                           ( LAMs )
	 UNIT % 1 "\B0C" umEND ;        ( Convert TAT to deg C )
	 UMCONV
;
