RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\PgmFlowCntrl\CASE4.s, part of the CASE4.hpp project, created by <> on 23/05/2009 )
**********************************************************************
* DESCRIPTION:     Takes a real number from the stack representing a
*                  user flag.  If the number is in the range 1 to 4,
*                  the corresponding user flag is set, otherwise no
*                  action is taken.
*
::
	 0LASTOWDOB!                        ( Clear saved command name )
	 CK1NOLASTWD                        ( Expect 1 argument )
	 CK&DISPATCH1 real ::               ( Real number )
	   COERCE                           ( % -> # )
	   DUP#0= caseDROP                  ( # # #0 #= -> # FLAG -> [TRUE] )
	   DUP FOUR #> caseDROP             ( # # #4 #> -> # FLAG -> [TRUE] )
	   SetUserFlag                      ( # -> )
	 ;
;
