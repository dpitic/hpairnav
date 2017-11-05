RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\CONVARG.s, part of the INTERCEPT50.hpp project, created by <> on 21/06/2009 )
**********************************************************************
* NAME:          CONVARG
* AUTHOR:        Dan Pitic
* VERSION:       1.4
* DATE:          22 June 2009
* LIBRARY #:     323h = 803d
* COMPATIBILITY: HP50
* DESCRIPTION:   Used for the HP50 when solving using the menu.  It is
*                used directly before the call to ROASAMBA using the
*                same input arguments from the stack and the output
*                is the same input arguments for ROASAMBA.
*                Checks the arguments for ROASAMBA from the stack to
*                ensure they are REAL numbers.
*                Converts ZINTS to REAL numbers on the stack.
*                Errors for all other argument types.
* USAGE:         ( WD WS TC1 T TAS DHOM
*                               -> %WD %WS %TC1 %T %TAS %DHOM )
*
INCLUDE ROASB50.h
NULLNAME CONVARG
::                                  ( WD WS TC1 T TAS DHOM -> )
	 SIX ZERO_DO (DO)                  ( Set up loop for 6 arguments )
	   ::
	     FLASHPTR OBJINT? case ::          ( Check if ZINT )
	       FLASHPTR Z>R                      ( TRUE => convert to REAL )
	     ;
	     DUPTYPEREAL? ?SEMI                ( Check if REAL )
      SETTYPEERR                        ( OTHER type => issue Bad Argument Type error )
		  ;
	   6ROLL                             ( ROLL stack )
	 LOOP
;                                   ( -> %WD %WS %TC1 %T %TAS %DHOM )
