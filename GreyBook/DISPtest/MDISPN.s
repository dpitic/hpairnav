RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\DISPtest\MDISPN.s, part of the MDISPN.hpp project, created by <> on 8/05/2009 )
**********************************************************************
* DESCRIPTION:     Illustrates the medium font display lines.
* COMPATIBILITY:   HP48, HP50
*
::
	 CK0NOLASTWD                    ( Clear saved command name )
	 0LASTOWDOB!                    ( No arguments )
	 RECLAIMDISP                    ( Claim stack display )
	 ClrDA1IsStat                   ( Disable ticking clock )
	 EIGHT ONE DO                   ( Loop for 7 lines )
	   INDEX@                       ( Loop index counter [ -> # ] )
	   "Line "                      ( String [ -> # $ ] )
	   OVER                         ( Take loop index counter # [ -> # $ # ] )
	   UNCOERCE                     ( Convert # to % [ -> # $ % ] )
	   DECOMP$                      ( Convert % to $ [ -> # $ $' ] )
	   &$                           ( Combine "Line " and $ [ -> # $'' )
	   SWAP                         ( SWAP for next command [ -> $'' # ] )
	   DISPN                        ( Display combined $ at row # [ $ #row -> ] )
	 LOOP
	 SetDAsTemp                     ( Freeze the display )
;
