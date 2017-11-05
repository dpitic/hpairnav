RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS2.s, part of the CHS2.hpp project, created by <> on 14/05/2009 )
********************************************************************
* DESCRIPTION:     Displays a multi-pick, partial-screen choose box.
*                  The Choose FLAG is converted to %.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( -> %0 [ Cancel selected ] )
*            ( -> { choices } %1 )
*
EXTERNAL Choose               ( Declare Choose as a rompointer )
::
	 AtUserStack                 ( Clear protection word, no arguments )
* Choose box parameters
* The message handler has the following stack diagram:
	 ( <passed objects> #message -> <returned objects> TRUE [ IF handled ] )
	 ( <passed objects> #message -> <passed objects > FALSE [ IF NOT handled ] )
	 ' ::                        ( Message handler )
	     SIXTYONE #=casedrop     ( Pick type [ -> TRUE = multi-pick, -> FALSE = single-pick ] )
	       TrueTrue              ( TRUE = Multi-pick, TRUE = message was handled )
	     SIXTYTWO #=casedrop ::  ( Item count [ -> #number_of_items_in_list ] )
	       NINE                  ( 9 items in list )
	       TRUE                  ( Message was handled )
	     ;
	     80 #=casedrop ::        ( Item string [ #item_index -> $item_string ] )
	       UNCOERCE              ( #item_index -> %item_index )
	       EDITDECOMP$           ( %item_index -> $item_index )
	       "Frog "               ( $ )
	       SWAP&$                ( Prepend frog string )
	       TRUE                  ( Message was handled )
	     ;
	     DROPFALSE               ( Other messages not handled )
	   ;
	 "CHOOSE SOME FROGS"         ( Title Object $ )
	 ONE                         ( Decompile object [ ob -> $ ] #1 = decompile with stack appearance )
	 NULL{}                      ( Data list )
	 ONE                         ( #FocusPos )
	 Choose                      ( Run Choose box [ -> ob FLAG ] )
	 COERCEFLAG                  ( FLAG -> % )
;
