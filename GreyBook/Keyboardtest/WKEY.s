RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\WKEY.s, part of the WKEY.hpp project, created by <> on 9/05/2009 )
**********************************************************************
* DESCRIPTION:     Displays the keycode and shift plane detected by
*                  WaitForKey.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( -> )
*
::
	 0LASTOWDOB!                       ( Clear protection word )
	 CK0NOLASTWD                       ( No arguments )
	 ClrDA1IsStat                      ( Turn off the clock )
	 RECLAIMDISP                       ( Clear the screen )
	 TURNMENUOFF                       ( Turn off the menu )
*	 BEGIN
	   WaitForKey                      ( Wait for key press -> #keycode #plane )
	   UNCOERCE2                       ( #keycode #plane -> %keycode %plane )
	   "Keycode: "
*	   3PICK                           ( %keycode )
	   ROT                             ( %keycode )
	   EDITDECOMP$                     ( %keycode -> $keycode )
	   &$                              ( "Keycode: " $keycode -> "Keycode: $keycode" )
	   DISPROW3                        ( Display keycode string )
	   "Plane:   "
	   SWAP                            ( %plane )
	   EDITDECOMP$                     ( %plane -> $plane )
	   &$                              ( "Plane:   " $plane -> "Plane:   $plane" )
	   DISPROW4                        ( Display shift plane string )
*	 UNTIL
	 SetDAsTemp                        ( Freeze the display )
;
