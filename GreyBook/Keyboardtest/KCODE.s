RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\KCODE.s, part of the KCODE.hpp project, created by <> on 9/05/2009 )
**********************************************************************
* DESCRIPTION:     Displays the keycode returned by GETTOUCH.  The
*                  program runs until the ON key is pressed.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( -> )
*
::
		0LASTOWDOB!                      ( Clear protection word )
		CK0NOLASTWD                      ( No arguments )
		ClrDA1IsStat                     ( Suspend clock )
		RECLAIMDISP                      ( Clear screen )
		TURNMENUOFF                      ( Turn menu off )
		BEGIN
		  ATTN? NOT                      ( Run until ON pressed )
		WHILE
		  GETTOUCH                       ( -> #keycode TRUE if key pressed, or )
		                                 ( -> FALSE if no key pressed )
		    NOT?SEMI                     ( Loop again if no key in buffer )
		  UNCOERCE                       ( #keycode -> %keycode )
		  EDITDECOMP$                    ( %keycode -> $keycode )
		  DISPROW4                       ( Display $keycode )
		REPEAT
		FLUSHKEYS                        ( Flush key buffer )
		ATTNFLGCLR                       ( Clear attention flag )
		ClrDAsOK                         ( Redraw display )
;
