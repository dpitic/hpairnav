RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\PgmFlowCntrl\TIMEDONE.s, part of the TIMEDONE.hpp project, created by <> on 17/05/2009 )
**********************************************************************
* DESCRIPTION:     Program displays "Program complete" and either the
*                  time of day if the clock is displayed OR "." if the
*                  clock is not being displayed.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( -> $ )
*
::
	 0LASTOWDOB!                  ( Clear saved command name )
	 CK0NOLASTWD                  ( No arguments )
	 "Program complete"           ( $ )
	 FORTY SysITE ::              ( Test system falg 40 = clock display )
	   " at "                     ( IF TRUE object )
	   TOD                        ( Return current time [ -> %time ] )
	   TOD>t$                     ( %time -> $time )
	   &$                         ( $ $time -> $' )
	 ;
	 "."                          ( ELSE FALSE object )
	 &$                           ( Append time or period $ )
;
