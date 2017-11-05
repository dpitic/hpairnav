RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Control Structure Eg\RSTR.s, part of the RSTR.hpp project, created by <> on 24/05/2009 )
**********************************************************************
* DESCRIPTION:     Counts the number of objects in a list that are
*                  real numbers.
* METHOD:          Pushes the list on the return stack.  Retreives
*                  each item for examination.  Increments the counter
*                  for each real number in the list.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( {} -> % )
*
::
	 0LASTOWDOB!                      ( Clear saved command name )
	 CK1NOLASTWD                      ( Require 1 argument )
	 CK&DISPATCH1 list ::             ( List )
	   >R                             ( Push the list on the return stack )
	   %0                             ( Initial counter value % )
	   BEGIN
	     RSWAP                        ( SWAP list to the first level )
	     ticR                         ( Pops the next object in the list in the return stack )
	                                  ( and pushes it and TRUE on the data stack )
	                                  ( -> % object TRUE )
	                                  ( -> % FALSE )
	     DUP
	     NOT ?SKIP RSWAP              ( IF the object was not SEMI, swap the remainder of the list back )
				WHILE
	     TYPEREAL? IT %1+	            ( IF object is a real number, increment the counter )
	   REPEAT
	 ;
;
