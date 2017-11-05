RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTFRM.s, part of the ALT.hpp project, created by <> on 18/04/2009 )
**********************************************************************
* NAME:            ALTFRM
* LIBRARY #:       327h = 807d
* AUTHOR:          Dan Pitic
* VERSION:         1.15
* DATE:            19 June 2009
* COMPATIBILITY:   HP50, HP48
* DESCRIPTION:     Input form and choose box for altitude calculations.
* INPUT:     CA    Calibrated altitude (global) with units
*            SAT   Static air temperature (global) [deg C]
*            PA    Pressure altitude (global) with units
*            GNDST Ground station elevation (global) with units
* OUTPUT:    TA    True altitude (global) [same units as GNDST]
*            DA    Density altitude (global) [same units as PA]
* CALLS:           LIBRARY 326h = 806d
*
INCLUDE ALT50.h
DEFINE ISAP ROMPTR 326 2
xNAME ALTFRM
::
	 CK0                             ( No arguments )
	 BEGIN
	   ALTform                       ( Run Input Form )
	 WHILE
	   ' ID DA STO                   ( If OK is pressed, then )
	   ' ID TA STO                   ( STO output from input form )
	   ' ID GNDST STO                ( in global variables in )
	  	' ID SAT STO                  ( preparation to solve either TA )
	   ' ID PA STO                   ( or DA )
	   ' ID QNH STO
	   ' ID CA STO                   ( ELSE this loop is bypassed )
				::
	     ID CA NOVAL EQUALNOT                   ( Check for CA and PA )
				  ID PA NOVAL EQUALNOT AND case ::       ( IF they both exist )
				    ID PA
				    ID CA
				    UM-
*				    ROMPTR 326 2                         ( ISAP[PA - CA] )
	       ISAP
	  			  ' ID QNH STO                         ( Calculate QNH )
	     ;
	     ID CA NOVAL EQUALNOT                   ( Check for CA and QNH )
	     ID QNH NOVAL EQUALNOT AND case ::      ( IF they both exist )
	       SYMBOL
	         ID QNH
	         ID DPA
*	         ROMPTR 326 2                       ( ISAP )
	         ISAP
	         x=                                 ( 'QNH = ISAP[DPA]' )
	       ;
	       ' ID DPA                              ( Solve for DPA )
	       UNIT % 0 "ft" umEND ;                ( Guess value 0_ft )
	       xROOT DROP                           ( Solve and clear stack )
	       ID CA
	       ID DPA
	       UM+                                  ( 'PA = CA + DPA' )
	       ' ID PA STO                          ( Calculate PA )
	     ;
	     ID PA NOVAL EQUALNOT                   ( Check for PA and QNH )
	     ID QNH NOVAL EQUALNOT AND case ::      ( IF they both exist )
	       SYMBOL
	         ID QNH
	         ID DPA
*	         ROMPTR 326 2                       ( ISAP )
	         ISAP
	         x=                                 ( 'QNH = ISAP[DPA]' )
	       ;
	       ' ID DPA                             ( Solve for DPA )
	       UNIT % 0 "ft" umEND ;                ( Guess value )
  	     xROOT DROP                           ( Solve and clear stack )
  	     ID PA
  	     ID DPA
  	     UM-                                  ( 'CA = PA - DPA' )
  	     ' ID CA STO                          ( Calculate CA )
	     ;
	   ;
	   ID SAT NOVAL EQUALNOT                  ( PA & SAT required minimum )
	   ID PA NOVAL EQUALNOT AND IT ::         ( to perform any alt. calcs. )
	     ID CA NOVAL EQUALNOT IT ::           ( IF CA is available )
	       ID CA
	       ID SAT
	       ID PA
	       ID GNDST
	       TRUALT                             ( Calc. TA )
	       ' ID TA STO
	     ;
	     ID SAT
	     ID PA
	     DENALT                               ( Calc. DA )
	     ' ID DA STO
	   ;
	 REPEAT
;
