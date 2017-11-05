RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\ADDIT.s, part of the ADDIT.hpp project, created by <> on 9/05/2009 )
**********************************************************************
* DESCRIPTION:     Begins counting until any key has been pressed.
*                  The key buffer is flushed upon termination.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( -> %result )
::
	 0LASTOWDOB!                   ( Clear protection word )
	 CK0NOLASTWD                   ( No arguments )
	 ClrDA1IsStat                  ( Turn off the clock )
	 RECLAIMDISP                   ( Clear the stack )
	 TURNMENUOFF                   ( Turn off the menu )
	 %0                            ( Initial counter value )
	 ATTNFLGCLR                    ( Clear the attention flag )
	 BEGIN
	   KEYINBUFFER? NOT            ( Run until any key has been pressed [except ON key] )
	 WHILE
	   DUP                         ( Decompile and )
	   EDITDECOMP$                 ( display )
	   DISPROW4                    ( counter )
	   %1+                         ( Increment counter )
	 REPEAT
	 FLUSHKEYS                     ( Flush key buffer )
	 ATTNFLGCLR                    ( Clear attention flag )
	 ClrDAsOK                      ( Redraw the display )
;
