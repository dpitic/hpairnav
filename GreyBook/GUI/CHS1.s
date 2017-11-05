RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS1.s, part of the CHS1.hpp project, created by <> on 14/05/2009 )
********************************************************************
* DESCRIPTION:     Displays a default choose box showing a list of
*                  6 string object.  Cancellation returns FALSE which
*                  is converted to %0.  Accepted selection returns
*                  TRUE which is converted to %1.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( -> $ %1   [ If a selection is made ] )
*            ( -> %0     [ If cancelled ] )
*
* Rompointer external declarations
EXTERNAL Choose                   ( Declare Choose as a rompointer )
::
	 AtUserStack                     ( Clear savced command name, no arguments )
* Choose box parameters	
	 'DROPFALSE                      ( Message handler )
	 "Title"                         ( Title Object -> $ )
	 ONE                             ( #Decompile Object )
	 {                               ( Choices list )
	   "ONE" "TWO" "THREE"           ( All choices are $ )
	   "FOUR" "FIVE" "SIX"
	 }
	 ONE                             ( #FocusPos )
	 Choose                          ( Display choose box [ -> ob FLAG ] )
	 COERCEFLAG                      ( FLAG -> % )
;
