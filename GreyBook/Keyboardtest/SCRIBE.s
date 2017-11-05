RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Keyboardtest\SCRIBE.s, part of the SCRIBE.hpp project, created by <> on 27/05/2009 )
**********************************************************************
* DESCRIPTION:     Draws diagonal patterns from edge to edge.
* COMPATIBILITY:   HP48, HP50 (Does not reach the edges on HP50)
* USAGE:     ( -> )
*
::
	 0LASTOWDOB!                      ( Clear saved command name )
	 CK0NOLASTWD                      ( No arguments )
	 ClrDA1IsStat                     ( Suspend clock )
	 RECLAIMDISP                      ( Clear screen )
	 TURNMENUOFF                      ( Turn off menu )
	 SIXTYFOUR                        ( Initial x position )
	 THIRTYTWO                        ( Initial y position )
	 ONE                              ( Initial x step )
	 ONE                              ( Initial y step )
	 TRUE                             ( Running flag )
	 {
	   LAM Xpos LAM Ypos
	   LAM Xstep LAM Ystep
	   LAM Running
	 }
	 BIND                             ( Create temporary environment )
	   FLUSHKEYS                      ( Clear key buffer )
	   ATTNFLGCLR                     ( Clear attention flag )
	   BEGIN                          ( Loop until a key is pressed )
	     GETTOUCH                       ( [ -> #keycode TRUE ] or [ -> FALSE ] )
	     ITE
	       DROPFALSE                      ( IF TRUE, exit [ -> FALSE ] )
	       TRUE                           ( IF FALSE, continue [ -> TRUE ] )
	     ATTN? NOT                      ( -> FLAG )
	     AND                            ( -> FLAG [TRUE = continue, FALSE = exit] )
	   WHILE
	     LAM Xpos LAM Xstep #+          ( Calc. next X position )
	     DUP MINUSONE #= IT ::          ( IF at left edge )
	       #2+ ONE                        ( Reverse direction )
	       ' LAM Xstep STO
	     ;
	     DUP BINT_131d #= IT ::         ( IF at right edge )
	       #2- MINUSONE                   ( Reverse direction )
	       ' LAM Xstep STO
	     ;
	     DUP                            ( #Xpos )
	     ' LAM Xpos STO                 ( STO next X position )
	     LAM Ypos LAM Ystep #+          ( Calc. next Y position )
	     DUP MINUSONE #= IT ::          ( IF at top edge )
	       #2+ ONE                        ( Reverse direction )
	       ' LAM Ystep STO
	     ;
	     DUP SIXTYFOUR #= IT ::         ( IF at bottom edge )
	       #2- MINUSONE                   ( Reverse direction )
	       ' LAM Ystep STO
	     ;
	     DUP                            ( #Ypos )
	     ' LAM Ypos STO                 ( STO next Y position )
	     PIXON                          ( #Xpos #Ypos -> )
	   REPEAT
	 ABND                             ( Abondon temporary environment )
	 ATTNFLGCLR                       ( Clear attention flag )
	 ClrDAsOK                         ( Signal display to be redrawn )
;
