RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\Keyboardtest\INP1.s, part of the INP1.hpp project, created by <> on 9/05/2009 )
********************************************************************
* NAME:            INP2
* DESCRIPTION:     Prompt for a real number, ending only if the user
*                  aborts by presing ON.  Type checking occurs after
*                  InputLine.
* COMPATIBILITY:   HP48
*                  HP50     Number entered must end with "." else it
*                           is interpreted as a ZINT and the warning
*                           message is displayed.  This runs too fast
*                           to be visible.
* STACK DIAG:      ( -> % %1 or %0 )
*
::
		0LASTOWDOB!                ( Clear protection word )
		CK0NOLASTWD                ( No arguments )
		' ::                       ( Subroutine to show message [LAM ShowHelp] )
		    ABUFF                  ( Return STACK grob )
		    TEN                    ( #x1 )
		    THIRTY                 ( #y1 )
		    121                    ( #x2 )
		    FORTYONE               ( #y2 )
		      SUBGROB              ( ... -> subgrob [Display area of STACK grob] )
		    ABUFF                  ( Return STACK grob )
		    TEN                    ( #x1 )
		    THIRTY                 ( #y1 )
		    121                    ( #x2 )
		    FORTYONE               ( #y2 )
		      GROB!ZERODRP         ( ... -> Clear pixels in specified region [Clear message area] )
		    TEN                    ( #x1 )
		    THIRTY                 ( #y1 )
		    121                    ( #x2 )
		    THIRTY                 ( #y2 )
		      LINEON               ( ... -> turn ON line of pixels [Draw top horizontal line] )
		    121                    ( #x1 )
		    THIRTY                 ( #y1 )
		    121                    ( #x2 )
		    FORTY                  ( #y2 )
		      LINEON               ( ... -> turn ON line of pixels [Draw right vertical line] )
		    TEN                    ( #x1 )
		    FORTY                  ( #y1 )
		    121                    ( #x2 )
		    FORTY                  ( #y2 )
		      LINEON               ( ... -> turn ON line of pixels [Draw bottom horizontal line] )
		    TEN                    ( #x1 )
		    THIRTY                 ( #y1 )
		    TEN                    ( #x2 )
		    FORTY                  ( #y2 )
		      LINEON               ( ... -> turn ON line of pixels [Draw left vertical line] )
		    "ENTER A REAL NUMBER"  ( Message $ )
		      $>grob               ( Create message grob = grob source )
		    ABUFF                  ( grob target = STACK grob )
		    TWENTYFIVE             ( #x )
		    THIRTYTHREE            ( #y )
		      GROB!                ( ... -> store grob into ABUFF [Display message] )
		    VERYSLOW VERYSLOW VERYSLOW VERYSLOW ( delay )
		  ;
		' ::                       ( Subroutine to restore display [LAM HelpOff] )
		    ABUFF                  ( grob target [STACK] )
		    TEN                    ( #x )
		    THIRTY                 ( #y )
		      GROB!                ( ... -> store grob into ABUFF )
		  ;
		' LAM ShowHelp
		' LAM HelpOff
		TWO DOBIND                 ( Create temporary environment )
		
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
		    <SkipKey                   ( Menu label 1 = Skip left key )
		    >SkipKey                   ( Menu lable 2 = Skip right key )
		    <DelKey                    ( Menu label 3 = Delete left key )
		    >DelKey                    ( Menu label 4 = Delete right key )
		    TogInsertKey               ( Menu label 5 = Insert/replace mode key )
		    {                          ( Menu label 6 )
		      "HELP"                     ( Menu label $ )
		      ::
		        TakeOver                 ( Take over secondary )
		        LAM ShowHelp EVAL        ( Display help message )
		        REPEATER SIX NOP         ( Do nothing while menu key 6 is depressed )
		        LAM HelpOff EVAL         ( Restore display )
		      ;
		    }
		  }
		  ONE                        ( #Row = first row of the menu to be displayed [1 = first row] )
		  FALSE                      ( Abort = flag specifying action of ON key [FALSE = clear cmd line] )
		  ONE                        ( #Action = post command line processing if terminated by ENTER key )
		                             (           [ONE = parse the input string, return input string] )
		                             (           [      and the resulting object                   ] )
		  InputLine                  ( ... -> $Input Ob TRUE/FALSE )
* Output and type checking handling 		
				NOTcase :: %0 TRUE ;       ( End loop, return %0 if user aborted with ON )
		  DUPTYPEREAL? case ::       ( IF the object is a real number )
		    SWAPDROP                   ( Discard the $Input )
		    %1                         ( Return %1 to signal a real number result )
		    TRUE                       ( End of loop )
		  ;
		  2DROP                      ( IF NOT real number )
		  LAM ShowHelp EVAL            ( Display a warning )
		  LAM HelpOff EVAL             ( Restore display )
		  FALSE                      ( Loop must continue )
		;
		UNTIL
		ABND                       ( Abandon temporary environment )
		ClrDAsOK                   ( Redraw display )
;
