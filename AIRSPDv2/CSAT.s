RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\CSAT.s, part of the ASPD.hpp project, created by <> on 19/04/2009 )
********************************************************************\
* NAME:            CSAT
* DESCRIPTION:     Calculates STATIC air temperature from TOTAL air
*                  temperature and Mach number.
* USAGE:           ( %m ut2 -> ut1 )
* INPUT:     STACK     m     Mach number
*            STACK     t2    TOTAL air temp. (deg C)
* OUTPUT:    STACK     t1    STATIC air temp. (deg C)
*
INCLUDE ASPD.h
NULLNAME CSAT
::
	 UMSI                             ( Convert T2 to K )
	 % 1.4                            ( k = 1.4 for STD atmos. )
	 { LAM m LAM t2 LAM k } BIND      ( LAMs for calculation of )
	   LAM t2                         ( STATIC air temp. )
	
				%1
	   
			 LAM k %1 %-
				%2 %/
				
				LAM m %2 %^
				%*
				%+
				
				UM/	
	 ABND                             ( LAMs )
	 UNIT % 1 "\B0C" umEND ;          ( Convert T1 to deg C )
	 UMCONV
;
