RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\WNDTR.s, part of the WIND50.hpp project, created by <> on 17/06/2009 )
**********************************************************************
* NAME:          WNDTR
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          17 June 2009
* COMPATIBILITY: HP50, HP48
* DESCRIPTION:   Displays the input/output form for the variables
*                in the wind triangle problem and the choose box to
*                select a solution.
*
INCLUDE WIND48.h
INCLUDE Header.h
*EXTERNAL Choose                    ( Defined in Header.h )
xNAME WNDTR
::
	 CK0                                 ( No arguments )
	 BEGIN
	   WINDTRform
*	   DROP                             ( Flag )	
	 WHILE
* STO results of input form in global variables )	
	   ' ID CRAB STO                      ( CRAB )
	   ' ID WS STO                        ( WIND SPEED )
	   ' ID WD STO                        ( WIND DIRECTION )
	   ' ID GS STO                        ( GROUND SPEED )
	   ' ID TC STO                        ( TRACK )
	   ' ID TAS STO                       ( TRUE AIR SPEED )
	   ' ID HDG STO                       ( HEADING )
* Choose box parameters
  	 'DROPFALSE                         ( Message handler )
  	 "SOLVE MENU"                       ( Title )
  	 SEVENTEEN                          ( Decompile )
  	 {
  	   { "HDG & GS" ::                  ( Solve for HEADING & GROUND SPEED )
  	     ID TAS ID TC ID WD ID WS         ( Arguments )
								xTHGS                            ( ... -> %HDG %GS %CRAB )
  	     ' ID CRAB STO                    ( STO output in global variables )
  	     ' ID GS STO
  	     ' ID HDG STO
  	   ; }
  	   { "TRACK & GS" ::                ( Solve for TRACK & GROUND SPEED )
  	     ID HDG ID TAS ID WD ID WS        ( Arguments )
								xCGVE                            ( ... -> %TC %GS %CRAB )
  	     ' ID CRAB STO                    ( STO output in global variables )
  	     ' ID GS STO
  	     ' ID TC STO
  	   ; }
  	   { "HDG & TAS" ::                 ( Solve for HEADING & TRUE AIR SPEED )
  	     ID TC ID GS ID WD ID WS          ( Arguments )
								xCAVE                            ( ... -> %HDG %TAS %CRAB )
  	     ' ID CRAB STO                    ( STO output in global variables )
  	     ' ID TAS STO
  	     ' ID HDG STO
  	   ; }
  	   { "WIND" ::                       ( Solve for WIND )
  	     ID HDG ID TAS ID TC ID GS         ( Arguments )
								xCWVE                             ( ... -> %WD %WS %CRAB )
  	     ' ID CRAB STO                     ( STO output in global variables )
  	     ' ID WS STO
  	     ' ID WD STO
  	   ; }
  	 }
  	 ONE                                ( #FocusPos )
  	 Choose                             ( Run the choose box )
* Process results of the choose box  	
  	 TRUE EQUAL IT ::                   ( If a choice is made )
  	   TWO NTHCOMPDROP                    ( Extract secondary )
  	   EVAL                               ( Run the secondary )
  	 ;
	 REPEAT
;
