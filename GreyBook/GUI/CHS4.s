RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS4.s, part of the CHS4.hpp project, created by <> on 14/05/2009 )
********************************************************************
* DESCRIPTION:     Take a real number from the stack and displays a
*                  choose box with string options which perform
*                  real number mathematical operations.
* COMPATIBILITY:   HP48
* USAGE:     ( % -> %' )
*
EXTERNAL Choose
::
	 0LASTOWDOB!                      ( Clear saved command name )
	 CK1NOLASTWD                      ( 1 argument required )
	 CK&DISPATCH1 real ::             ( Real number )
* Choose box parameters	
				'DROPFALSE                     ( Message handler )
				"CHOOSE AN OPERATION:"         ( Title $ )
				SEVENTEEN                      ( Decompile object 17d = 010001b = Display 1st ob, No decomp. )
    {                              ( Data list )
					 { "ADD 1" %1+ }
					 { "ADD 2" :: %2 %+ ; }
					 { "ADD 3" :: %3 %+ ; }
					 { "DIVIDE BY 4" :: %4 %/ ; }
					 { "SUBTRACT 5" :: %5 %- ; }
					 { "MULTIPLY BY 6" :: %6 %* ; }
				}				
				ONE                            ( #FocusPos )
				Choose                         ( Run choose box -> { ob } FLAG )
				NOT?SEMI                       ( TRUE -> FALSE -> Exit )
				TWO NTHCOMPDROP                ( { ob } #2 -> { ob' } )
				EVAL                           ( EVAL ob' )
		;
;
