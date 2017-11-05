RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\DISPtest\SCRMEN.s, part of the SCRMEN.hpp project, created by <> on 8/05/2009 )
********************************************************************
* DESCRIPTION:     Scrolls the menu off the bottom of the screen.
*                  Waits for user to press any key.
*                  Scrolls the menu back up from the bottom of the
*                  screen to it's original position.
* COMPATIBILITY:   HP48, HP50 (Runs too fast on the HP50)
*
NULLNAME SCRMEN
::
	 0LASTOWDOB!                   ( Clear saved command name )
	 CK0NOLASTWD                   ( No arguments )
	 HARDBUFF                      ( Pointer to the stack grob [ -> grob ] )
	 DUPGROBDIM                    ( Get grob height and length [ grob -> grob #height #width ] )
	 DROP                          ( DROP width [ -> grob #height ] )
	 CHECKHEIGHT                   ( Ensure stack grob is at leaset 64 rows high [ grob #height -> ] )
	 SIXTYFOUR FIFTYSIX DO         ( Menu scroll down loop )
	   INDEX@                      ( Loop counter [ -> # ] )
	   LINECHANGE                  ( Display HARDBUFF2 at row INDEX@ [ #row -> grob ] )
	   SLOW                        ( Delay )
	   SLOW                        ( Delay )
	 LOOP
	 WaitForKey                    ( Wait for a key [ -> #keycode #plane ] )
	 2DROP                         ( DROP #keycode and #plane )
	 NINE ONE DO                   ( Menu scroll up loop )
	   SIXTYTHREE INDEX@ #-        ( -> # )
	   LINECHANGE                  ( Display HARDBUFF2 at row SIXTYTHREE-#INDEX [ # -> grob ] )
	   SLOW                        ( Delay )
	   SLOW                        ( Delay )
	 LOOP
;
