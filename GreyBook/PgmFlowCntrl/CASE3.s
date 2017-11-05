RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\PgmFlowCntrl\CASE2.s, part of the CASE2.hpp project, created by <> on 17/05/2009 )
**********************************************************************
* DESCRIPTION:     Rewrite of CASE2.s by using
*                  alternative program flow objects.
*
::
	 0LASTOWDOB!                     ( Clear last command name )
	 CK1NOLASTWD                     ( Expect 1 argument )
	 CK&DISPATCH1 real ::            ( Real number argument )
	   COERCE                        ( % -> # )
	   ZERO #=casedrop "Zero"        ( # #0 -> # #0 # #= -> # FLAG -> $ [TRUE] )
	   ONE  #=casedrop "One"         ( # #1 -> # #1 # #= -> # FLAG -> $ [TRUE] )
	   #2= case "Two"                ( # #2 #= -> FLAG -> $ [TRUE] )
	   "Other"                       ( -> $ )
	 ;
;
