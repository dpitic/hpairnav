RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\RPT.s, part of the RPT.hpp project, created by <> on 9/05/2009 )
**********************************************************************
* DESCRIPTION:     Increments or decrements the number in the display
*                  when the + or - key is pressed.  Action is also
*                  valid for when the keys are held down.  The program
*                  exits when ON is pressed.
* COMPATIBILITY:   HP48, HP50
* USAGE:      ( -> )
*
* Keycode definitions
*DEFINE -key FORTYFOUR            ( HP48 )
*DEFINE +key FORTYNINE            ( HP48 )
*DEFINE ONkey FORTYFIVE           ( HP48 )
DEFINE -key FORTYONE             ( HP50 )
DEFINE +key FORTYSIX             ( HP50 )
DEFINE ONkey FORTYSEVEN          ( HP50 )
*
* Main program
::
	 0LASTOWDOB!                    ( Clear protection word )
	 CK0NOLASTWD                    ( No arguments )
	 ClrDA1IsStat                   ( Turn off clock )
	 RECLAIMDISP                    ( Clear display )
	 TURNMENUOFF                    ( Turn off menu )
	 ' ::                           ( [LAM 3] Action for + key )
	     1GETLAM                    ( %counter )
	     %1+                        ( %counter %1 %+ -> %counter+1 [Increment counter] )
	     DUP                        ( %counter+1 %counter+1 )
	     EDITDECOMP$                ( %counter+1 %counter+1 -> %counter+1 $counter+1 )
	     DISPROW4                   ( %counter+1 -> display $counter+1 )
	     1PUTLAM                    ( %counter+1 -> update counter )
	   ;
	 ' ::                           ( [LAM 2] Action for - key )
	     1GETLAM                    ( %counter )
	     %1-                        ( %counter %1 %- -> %counter-1 )
	     DUP                        ( %counter-1 %counter-1 )
	     EDITDECOMP$                ( -> %counter-1 $counter-1 )
	     DISPROW4                   ( -> %counter-1 )
	     1PUTLAM                    ( %counter-1 -> update counter )
	   ;
	 %0                            ( [LAM 1] %counter = Initial counter value )
	 ' NULLLAM THREE NDUPN         ( 3 nullname temporary variables )
	 DOBIND                        ( Create the temporary environment )
	   3GETLAM EVAL                  ( Increment and display the counter )
  	 BEGIN
  	   ::
  	     WaitForKey                ( -> #keycode #plane )
  	     DROP                      ( -> #keycode )
  	     -key #=casedrop  ::       ( Check for - key )
  	       REPEATER                  ( Repeat as long as key is pressed )
  	         -key                      ( - key )
  	         2GETEVAL                  ( subtract [action for - key] )
  	       FALSE                     ( Continue loop )
  	     ;
  	     ONkey #=casedrop          ( If ON key pressed, drop counter )
  	       TRUE                      ( and end loop )
  	     +key #=case ::            ( Check for + key )
  	       REPEATER                  ( Repeat as long as key is pressed )
  	         +key                    ( + key )
  	         ::
  	           3GETLAM EVAL          ( Add [action for + key] )
  	         ;
  	       FALSE                     ( Continue loop )
  	     ;
  	     DoBadKey                  ( Beep for any other key )
  						FALSE                     ( Continue loop for all other keys )
  	   ;
  	 UNTIL
	 ABND                          ( Abandon temporary environment )
	 ClrDAsOK                      ( Redraw display )
;
