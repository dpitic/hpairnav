RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Control Structure Eg\PLIST.s, part of the PLIST.hpp project, created by <> on 24/05/2009 )
**********************************************************************
* DESCRIPTION:     Executes the first n of a series of procedures
*                  encapsulated in a list.
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
	   #1+_ONE_DO (DO)
	     {                            ( List of procedures )
	       :: "ONE" DISPROW1 ;
	       :: "TWO" DISPROW2 ;
	       :: "THREE" DISPROW3 ;
	       :: "FOUR" DISPROW4 ;
	       :: "FIVE" DISPROW5 ;
	     }
	     INDEX@                       ( Loop index )
	     NTHCOMPDROP                  ( Extract nth procedure )
	     EVAL                         ( Execute nth procedure )
	   LOOP
	 ;
;
