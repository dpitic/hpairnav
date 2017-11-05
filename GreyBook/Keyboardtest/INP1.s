RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\INP1.s, part of the INP1.hpp project, created by <> on 9/05/2009 )
**********************************************************************
* DESCRIPTION:     Displays a prompt to enter your name.  The menu is
*                  specified using individual components and a string
*                  label.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( -> $ 1 [ Terminated with ENTER ] )
*            ( -> 0   [ Terminated with ON ] )
*
::
		0LASTOWDOB!                ( Clear protection word )
		CK0NOLASTWD                ( No arguments )
* InputLine parameters	 	
		"Enter your name:"         ( $Prompt = prompt sting displayed in area 2a )
		NULL$                      ( $Input = Default input string [NULL$] )
 	ZERO                       ( CursorPos = Initial cursor position [0 = end of row] )
		ONE                        ( #Mode = initial insert/replace mode [1 = insert mode] )
		ONE                        ( #Entry = initial entry mode [1 = program/immediate entry] )
		ONE                        ( #Alpha = initial alpha lock mode [1 = alpha lock ] )
		{                          ( Input Menu objects )
		  <SkipKey                   ( Skip left key )
		  >SkipKey                   ( Skip right key )
		  <DelKey                    ( Delete left key )
		  >DelKey                    ( Delete right key )
		  TogInsertKey               ( Insert/replace mode key )
		  "Dan"                      ( String menu item )
		}
		ONE                        ( #Row = first row of the menu to be displayed [1 = first row] )
		FALSE                      ( Abort = flag specifying action of ON key when characters are )
		                           ( present in the cmd line [FALSE = clear cmd line] )
		ZERO                       ( #Action = post command line processing if terminated by ENTER key )
		                           (           [ZERO = return input string with no processing] )
		InputLine                  ( ... -> ... TRUE/FALSE )
		ITE %1 %0                  ( Convert FLAG to %1 or %0 )
		ClrDAsOK                   ( Redraw display )
;
