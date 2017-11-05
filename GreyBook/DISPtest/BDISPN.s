RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\DISPtest\MDISPN.s, part of the MDISPN.hpp project, created by <> on 8/05/2009 )
**********************************************************************
* DESCRIPTION:     Illustrates the large font display lines.
* COMPATIBILITY:   HP48, HP50 (No difference on HP50 to MDISPN.s)
*
::
	 CK0NOLASTWD                    ( Clear saved command name )
	 0LASTOWDOB!                    ( No arguments )
	 RECLAIMDISP                    ( Claim stack display )
	 ClrDA1IsStat                   ( Disable ticking clock )
	 FIVE ONE DO                    ( Loop for 4 lines )
	   INDEX@                       ( Loop index counter # [ -> # ] )
	   "Line "                      ( String [ -> # $ ] )
	   OVER                         ( Take loop index counter # [ -> # $ # ] )
	   UNCOERCE                     ( Convert # to % [ -> # $ % ] )
	   DECOMP$                      ( Convert % to $ [ -> # $ $' ])
	   &$                           ( Combine "Line " and $ [ -> # $'' ] )
	   SWAP                         ( SWAP for next command [ -> $'' # ] )
	   BIGDISPN                     ( Display combined $ at row # [ $ #row -> ] )
	 LOOP
	 SetDAsTemp                     ( Freeze the display )
;
