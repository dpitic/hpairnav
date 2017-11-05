RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS3.s, part of the CHS3.hpp project, created by <> on 14/05/2009 )
********************************************************************
* DESCRIPTION:     Displays a default choose box and uses bint
*                  decompile to decompile the object.  Converts the
*                  FLAG to %.
* COMPATIBILITY:   HP48, HP50
* USAGE:     { -> %0 [ CANCEL key or softkey pressed ] )
*            ( -> { choice } %1 [ ENTER key or OK softkey pressed ] )
*
EXTERNAL Choose
::
	 AtUserStack                   ( Clear protection word, no arguments )
* Choose box parameters
  'DROPFALSE                    ( Message handler )
		"TITLE"                       ( Title $ )
*		THIRTYSIX                     ( Decompile object 36d = 100100b = Display 2nd object, editline appearance )
*	 TWENTY                        ( Decompile object 20d = 010100b = Display 1st object, editline appearance )
  SEVENTEEN                     ( Decompile object 17d = 010001b = Display 1st object, no decompile )	
		{                             ( Data list )
		  { "ONE" %1 }                ( These individual lists are returned )
		  { "TWO" %2 }                ( depending on which selection is made )
		  { "THREE" %3 }
		  { "FOUR" %4 }
		  { "FIVE" %5 }
		  { "SIX" %6 }
		}	
		ONE                           ( #FocusPos )
		Choose                        ( Display choose box )
		COERCEFLAG                    ( FLAG -> % )
;
