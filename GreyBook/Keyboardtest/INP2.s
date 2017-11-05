RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\INP1.s, part of the INP1.hpp project, created by <> on 9/05/2009 )
********************************************************************
* NAME:            INP2
* DESCRIPTION:     Prompt for a real number, ending only if the user
*                  aborts by pressing ON.  Type checking occurs after
*                  InputLine.
* COMPATIBILITY:   HP48
*                  HP50     The number entered must be entered as a
*                           real (ending with ".") else it will be
*                           interpreted as a ZINT and program will
*                           issue a FlashWarning.
* STACK DIAG:      ( -> % %1 or %0 )
*
::
		0LASTOWDOB!                ( Clear protection word )
		CK0NOLASTWD                ( No arguments )
		BEGIN                      ( Beginning of type checking loop )
		::
* InputLine parameters	 	
		  "Enter a number:"          ( $Prompt = prompt sting displayed in area 2a )
		  NULL$                      ( $Input = Default input string [NULL$] )
		  ZERO                       ( CursorPos = Initial cursor position [0 = end of row] )
		  ONE                        ( #Mode = initial insert/replace mode [1 = insert mode] )
		  ONE                        ( #Entry = initial entry mode [1 = program/immediate entry] )
		  TWO                        ( #Alpha = initial alpha lock mode [2 = alpha unlocked ] )
		  {                          ( Input Menu objects )
		    <SkipKey                   ( Skip left key )
		    >SkipKey                   ( Skip right key )
		    <DelKey                    ( Delete left key )
		    >DelKey                    ( Delete right key )
		    TogInsertKey               ( Insert/replace mode key )
		  }
		  ONE                        ( #Row = first row of the menu to be displayed [1 = first row] )
		  FALSE                      ( Abort = flag specifying action of ON key [FALSE = clear cmd line] )
		  ONE                        ( #Action = post command line processing if terminated by ENTER key )
		                             (           [ONE = parse the input string, return input string] )
		                             (           [      and the resulting object                   ] )
		  InputLine                  ( ... -> $Input Ob TRUE/FALSE )
* Type checking (check for REAL only)
		  NOTcase :: %0 TRUE ;       ( End loop, return %0 if user aborted with ON )
		  DUPTYPEREAL? case ::       ( IF the object is a real number )
		    SWAPDROP                   ( Discard the $Input [ -> Ob ] )
		    %1                         ( Return %1 to signal a real number result [ -> Ob %1 ] )
		    TRUE                       ( End of loop )
		  ;
		  2DROP                      ( IF NOT real number, DROP $Input and Ob )
		  "Real Number Only"           ( Display a warning )
		    FlashWarning
		  FALSE                      ( Loop must continue )
		;
		UNTIL
		ClrDAsOK                   ( Redraw display )
;
