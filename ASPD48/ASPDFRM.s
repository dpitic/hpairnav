RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDFRM.s, part of the ASPD.hpp project, created by <> on 19/04/2009 )
**********************************************************************
* NAME:            ASPDFRM
* LIBRARY #:       326h = 808d
* AUTHOR:          Dan Pitic
* VERSION:         1.34
* DATE:            19 June 2009
* COMPATIBILITY:   HP50, HP48
* DESCRIPTION:     Input form and algorithm for airspeed calculations.
* INPUT:     VC    Calibrated airspeed
*            PA    Pressure altitude
* IN/OUTPUT: M     Mach number
*            T2    TOTAL air temp. (indicated)
*            T1    STATIC air temp. (true)
* OUTPUT:    V1    True air speed
* TODO:            Save output uV1 in global variable TAS
*
INCLUDE ASPD48.h
xNAME ASPDFRM
::
	 CK0                                    ( No arguments )
		BEGIN
		  ASPDform                             ( Display Input Form )
		WHILE
		  ' ID V1 STO                          ( STO output results from )
		  ' ID T1 STO                          ( Input Form in global vars. )
		  ' ID T2 STO
		  ' ID M STO
		  ' ID PA STO
		  ' ID VC STO
				ID M NOVAL EQUAL IT ::               ( IF Mach no. is NOT supplied )
				  ID VC NOVAL EQUALNOT                 ( Check both VC and PA are supplied )
				  ID PA NOVAL EQUALNOT AND IT ::       ( to calculate Mach no. )
		      ID VC
		      ID PA
		      CMACH DROP                         ( Calc. Mach number )
		    ;
		  ;                                    ( MACH no IS available )
		  ID T2 NOVAL EQUALNOT case ::           ( IF TOTAL air temp. supplied )
		    ID M NOVAL EQUALNOT ITE ::              ( Check Mach no. IS available )
	       ID M
		      ID T2
	       CSAT                                    ( Calc. SAT )
	       ' ID T1 STO
 	      ID M
		      ID T1
	       TASMS                                   ( Calc. TAS )
	       ' ID V1 STO
	     ;
	     ::                                      ( ELSE )
	       NOVAL                                   ( Reset V1 )
	       ' ID V1 STO
	     ;
	   ;
	   ID T1 NOVAL EQUALNOT case ::           ( IF STATIC air temp. supplied )
	     ID M NOVAL EQUALNOT ITE ::              ( Check Mach no. IS available )
	       ID M
		      ID T1
		      CTAT                                    ( Calc. TAT )
		      ' ID T2 STO
        ID M
	       ID T1
		      TASMS                                   ( Calc. TAS )
		      ' ID V1 STO
		    ;
		    ::                                      ( ELSE )
		      NOVAL                                  ( Reset V1 )
		      ' ID V1 STO
		    ;
	   ;
		REPEAT
;
