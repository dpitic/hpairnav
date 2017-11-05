RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\PgmFlowCntrl\CASE1.s, part of the CASE1.hpp project, created by <> on 17/05/2009 )
**********************************************************************
* DESCRIPTION:     Accepts a real number argument and displays
*                  "Zero", "One", "Two" or "Other" as appropriate.
*
::
	 0LASTOWDOB!                       ( Clear saved command name )
	 CK1NOLASTWD                       ( Expect 1 argument )
	 CK&DISPATCH1 real ::              ( Real number )
	   COERCE                          ( % -> # )
	   DUP#0= case ::                  ( IF # = 0 [ # # #0 #= -> # FLAG -> # ] )
	     DROP                          ( # -> )
	     "Zero"                        ( -> $ )
	   ;
	   DUP#1= case ::                  ( IF # = 1 [ # # #1 #= -> # FLAG -> #] )
	     DROP                          ( # -> )
	     "One"                         ( -> $ )
	   ;
	   #2= case "Two"                  ( IF # = 2 [ # #2 #= -> FLAG -> $ ] )
	   "Other"                         ( IF other than the above [ -> $ ] )
	 ;
;
