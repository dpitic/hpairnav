RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\CONVARG.s, part of the INTERCEPT50.hpp project, created by <> on 21/06/2009 )
**********************************************************************
* NAME:          CONVARG
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          21 June 2009
* LIBRARY #:     321h = 801d
* COMPATIBILITY: HP50
* DESCRIPTION:   Used for the HP50 when solving using the menu.  It is
*                used directly before the call to INTER using the same
*                input arguments from the stack and the output is the
*                same input arguments for INTER.
*                Checks the arguments for INTER from the stack to
*                ensure they are REAL numbers.
*                Converts ZINTS to REAL numbers on the stack.
*                Errors for all other argument types.
* USAGE:         ( WD WS TAS DRM2 MRM2 TRS GSS ->
*                                 WD WS TAS DRM2 MRM2 TRS GSS )
*
INCLUDE INTERCEPT50.h
NULLNAME CONVARG
::                                  ( WD WS TAS DRM2 MRM2 TRS GSS -> )
	 SEVEN ZERO_DO (DO)                ( Set up loop for 7 arguments )
	   FLASHPTR OBJINT? ITE              ( Check if ZINT )
	     FLASHPTR Z>R                      ( TRUE => convert to REAL )
	     SETTYPEERR                        ( FALSE => issue Bad Argument Type error )
	   7ROLL                             ( ROLL stack )
	 LOOP
*	 FLASHPTR OBJINT? NOT?SEMI	
*    FLASHPTR Z>R
*  7ROLL                             ( -> WS TAS DRM2 MRM2 TRS GSS WD )
*	 FLASHPTR OBJINT? NOT?SEMI
*	   FLASHPTR Z>R
*  7ROLL                             ( -> TAS DRM2 MRM2 TRS GSS WD WS )
*	 FLASHPTR OBJINT? NOT?SEMI
*	   FLASHPTR Z>R
*	 7ROLL                             ( -> DRM2 MRM2 TRS GSS WD WS TAS )
*	 FLASHPTR OBJINT? NOT?SEMI
*	   FLASHPTR Z>R
*	 7ROLL                             ( -> MRM2 TRS GSS WD WS TAS DRM2 )
*	 FLASHPTR OBJINT? NOT?SEMI
*	   FLASHPTR Z>R
*	 7ROLL                             ( -> TRS GSS WD WS TAS DRM2 MRM2 )
*	 FLASHPTR OBJINT? NOT?SEMI
*	   FLASHPTR Z>R
*	 7ROLL                             ( -> GSS WD WS TAS DRM2 MRM2 TRS )
*	 FLASHPTR OBJINT? NOT?SEMI
*	   FLASHPTR Z>R
*	 7ROLL                             ( -> WD WS TAS DRM2 MRM2 TRS GSS )
;                                   ( -> WD WS TAS DRM2 MRM2 TRS GSS )
