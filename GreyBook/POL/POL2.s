RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\POL\POL2.s, part of the POL2.hpp project, created by <> on 10/05/2009 )
**********************************************************************
* DESCRIPTION:     Generates a softkey menu to allow the toggling of
*                  user flag 1.  The status of the flag is shown in
*                  the menu and on the HP48 also in the status area.
*                  The ON key terminates the program.
* COMPATIBILITY:   HP48  ( Uncomment HP48 keycode & keyplane defs )
*                  HP50  ( Must include Header.h )
* USAGE:     ( -> )
*
INCLUDE Header.h
* HP48 keycode and keyplane definitions
*DEFINE kpNoShift     ONE
*DEFINE kcOn          FORTYFIVE
::
		0LASTOWDOB!                          ( Clear saved command name )
		CK0NOLASTWD                          ( No arguments )
		RECLAIMDISP                          ( Clear display )
		FALSE                                ( Exit flag [FALSE = continue, TRUE = exit] )
		' LAM Running                        ( Exit object )
		ONE DOBIND                           ( Creat temporary environment )
* POL parameters		
  		' ::                                 ( Display object )
  		    DA3OK? ?SKIP ::                  ( Display menu if not already done )
  		      DispMenu.1                     ( Display menu )
  		      SetDA3Valid
  		    ;
  		    ?DispStatus                      ( Redisplay the status area now if necessary )
  		  ;
  		' ::                                 ( Hardkey handler )
  		    kpNoShift #=casedrop ::          ( Process primary key plane [no shift] )
  		      DUP#<7 casedrpfls              ( Enable softkeys )
  		      kcOn ?CaseKeyDef ::            ( Process ON key )
  		        TakeOver                     ( Custom key definition placeholder )
  		        TRUE ' LAM Running STO       ( STO TRUE in LAM Running [Exit object = TRUE] )
  		      ;
  		      DROP 'DoBadKeyT                ( Reject all other keys )
  		    ;
  		    2DROP 'DoBadKeyT                 ( Reject all other planes )
  		  ;
  		TRUE                                 ( NonAppKey Flag [Enable softkeys] )
  		TRUE                                 ( DoStdKeys Flag [Ignore user key assignments] )
  		{                                    ( Softkey Menu )
  		  {
  		    ::                               ( Label secondary )
  		      TakeOver                       ( Custom key definition placeholder )
  		      "1"                            ( -> $Label )
  								ONE TestUserFlag               ( #userflag -> FLAG [Test user flag 1 TRUE = FS, FALSE = FC] )
  		      Box/StdLabel                   ( $Label FLAG -> grob [TRUE = box label, FALSE = std. label] )
  		    ;
  		    ::                               ( Key action for primary plane [no shift] )
  		      TakeOver                       ( Custom key definition placeholder )
  		      ONEONE TestUserFlag            ( # # -> FLAG [TRUE = FS, FALSE = FC] )
  		      ITE ClrUserFlag SetUserFlag    ( #userflag -> [Toggle flag state] )
  		      SetDA1Bad                      ( Signal to redraw status area )
  		      SetDA3Bad                      ( Signal to redraw menu area )
  		    ;
  		  }
  		}
  		ONEFALSE                             ( #Menu Row, Suspend Flag = FALSE )
  		' LAM Running                        ( Exit object )
  		' ERRJMP                             ( Error object )
  		ParOuterLoop                         ( Run the POL )
		ABND                                 ( Abandon temporary environment )
		ClrDAsOK                             ( Redraw the display )
;
