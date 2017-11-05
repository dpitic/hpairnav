RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\CONVARG.s, part of the INTERCEPT50.hpp project, created by <> on 21/06/2009 )
**********************************************************************
* NAME:          CONVARG
* AUTHOR:        Dan Pitic
* VERSION:       1.3
* DATE:          22 June 2009
* LIBRARY #:     322h = 802d
* COMPATIBILITY: HP50
* DESCRIPTION:   Used for the HP50 when solving using the menu.  It is
*                used directly before the call to PNRVF using the same
*                input arguments from the stack and the output is the
*                same input arguments for PNRVF
*                Checks the arguments for PNRVF from the stack to
*                ensure they are REAL numbers.
*                Converts ZINTS to REAL numbers on the stack.
*                Errors for all other argument types.
* USAGE:         ( WD1 WS1 TC1 FF1 TAS1 DHOM WD2 WS2 FF2 TAS2 FLTFL
*                  ->
*                  %WD1 %WS2 %TC1 %FF1 %TAS1 %DHOM %WD2 %WS2 %FF2
*                  %TAS2 %FLTFL )
*
INCLUDE PNRVF50.h
NULLNAME CONVARG
::                                  ( WD WS TAS DRM2 MRM2 TRS GSS -> )
	 ELEVEN ZERO_DO (DO)               ( Set up loop for 11 arguments )
	   FLASHPTR OBJINT? ITE              ( Check if ZINT )
	     FLASHPTR Z>R                      ( TRUE => convert to REAL )
	     SETTYPEERR                        ( FALSE => issue Bad Argument Type error )
	   ELEVEN ROLL                         ( ROLL stack )
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
