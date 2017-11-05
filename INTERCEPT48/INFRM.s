RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INFRM.s, part of the INTERCEPT50.hpp project, created by <> on 19/06/2009 )
**********************************************************************
* NAME:          INFRM
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          19 June 2009
* LIBRARY #:     321h = 801d
* COMPATIBILITY: HP50, HP48
* DESCRIPTION:   Generates and displays the input/output form for the
*                interception problem.
*
INCLUDE INTERCEPT48.h
*INCLUDE Header.h
xNAME INFRM
::
	 CK0                               ( No arguments )
	 BEGIN
	   INTERinputform                    ( Run the INPUT form )
	 WHILE
* STO INPUT results of input form in global variables	
	   ' ID GSS STO
	   ' ID TRS STO
	   ' ID MRM2 STO
	   ' ID DRM2 STO
	   ' ID TAS STO
	   ' ID WS STO
	   ' ID WD STO
* Solve the interception problem	
	   ID WD ID WS ID TAS ID DRM2        ( INPUT arguments )
				ID MRM2 ID TRS ID GSS
	   INTER                             ( -> %HDG %TC %GS %ETI )
* STO OUTPUT results in global variables	
	   ' ID ETI STO
	   ' ID GS STO
	   ' ID TC STO
	   ' ID HDG STO
	   INTERoutputform                   ( Run the OUTPUT form )
	   IT ::                             ( IF OK is pressed )
	     4DROP                             ( DROP form output )
	   ;
	 REPEAT
;
