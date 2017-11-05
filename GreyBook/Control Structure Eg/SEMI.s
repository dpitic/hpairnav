RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Control Structure Eg\PLIST.s, part of the PLIST.hpp project, created by <> on 24/05/2009 )
**********************************************************************
* DESCRIPTION:     Executes the first n of a series of procedures
*                  based on n FLAGS which are pushed on the stack.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( % -> )
*
::
	 0LASTOWDOB!                      ( Clear saved command name )
	 CK1NOLASTWD                      ( Require 1 argument )
	 CK&DISPATCH1 real ::             ( Real number )
	   ClrDA1IsStat                   ( Suspend clock )
	   RECLAIMDISP                    ( Clear stack display )
	   TURNMENUOFF                    ( Turn off the menu )
	   SetDAsTemp                     ( Signal to freeze display )
	   COERCE                         ( % -> # )
	   DUP#0= caseDROP                ( IF 0 then exit program )
	   DUP FIVE #> case               ( IF > 5, then )
	     SETSIZEERR                     ( generate "Bad Argument Value" error )
	   TRUE                           ( PUSH TRUE on the stack to signal end of process )
	   SWAP                           ( Get procedure number # )
	   ZERO DO FALSE LOOP													( PUSH n FALSE flags on the stack )
	   ?SEMI                          ( Test 1st FLAG )
	     "ONE" DISPROW1                 ( 1st procedure )
	   ?SEMI                          ( Test 2nd FLAG )
	     "TWO" DISPROW2                 ( 2nd procedure )
	   ?SEMI                          ( Test 3rd FLAG )
	     "THREE" DISPROW3               ( 3rd procedure )
	   ?SEMI                          ( Test 4th FLAG )
	     "FOUR" DISPROW4                ( 4th procedure )
	   ?SEMI                          ( Test 5th FLAG )
	     "FIVE" DISPROW5                ( 5th procedure )
	   DROP                           ( DROP TRUE FLAG if all 5 procedures used )
	 ;
;
