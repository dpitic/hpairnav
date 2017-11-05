RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\CONVARG.s, part of the INTERCEPT50.hpp project, created by <> on 21/06/2009 )
**********************************************************************
* NAME:          CONVARG
* AUTHOR:        Dan Pitic
* VERSION:       1.6
* DATE:          22 June 2009
* LIBRARY #:     324h = 804d
* COMPATIBILITY: HP50
* DESCRIPTION:   Used for the HP50 when solving using the menu.  It is
*                used directly before the call to ROAMB using the
*                same input arguments from the stack and the output
*                is the same input arguments for ROAMB
*                Checks the arguments for ROAMB from the stack to
*                ensure they are REAL numbers.
*                Converts ZINTS to REAL numbers on the stack.
*                Errors for all other argument types.
* USAGE:         ( WD WS TRS GSS TAS TC1 T
*                  -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
*
INCLUDE ROAMB50.h
NULLNAME CONVARG
::                                  ( WD WS TRS GSS TAS TC1 T -> )
	 SEVEN ZERO_DO (DO)                ( Set up loop for 6 arguments )
	   ::
	     FLASHPTR OBJINT? case ::          ( Check if ZINT )
	       FLASHPTR Z>R                      ( TRUE => convert to REAL )
	     ;
	     DUPTYPEREAL? ?SEMI                ( Check if REAL )
      SETTYPEERR                        ( OTHER type => issue Bad Argument Type error )
		  ;
	   7ROLL                             ( ROLL stack )
	 LOOP
;                                   ( -> %HDG1 %GS1 %HDG2 %GS2 %TC2 %T1 %T2 %R %MC2 )
