RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\POL\POL3.s, part of the POL3.hpp project, created by <> on 10/05/2009 )
********************************************************************
* DESCRIPTION:     Define a 1 key menu labelled "KEY" allowing
*                  no-shift, left-shift and right-shift actions which
*                  display the plane of the key (Primary, Left-Shift,
*                  Right-Shift).  The program waits for any key press
*                  to continue.  Press ON key to exit.
*                  #Keycode definitions for HP48 and HP50 listed.
* COMPATIBILITY:   HP48  ( Must use HP48 kc & kp defs. )
*                  HP50  ( Must include Header.H )
*
INCLUDE Header.H   ( For HP50 only )
* #Keycode and #Keyplane definitions for HP48 and HP50
( Comment/uncomment as appropriate )
*DEFINE kpNoShift    ONE             ( HP48 & HP50 )
*DEFINE kpLeftShift  TWO             ( ... )
*DEFINE kpRightShift THREE           ( ... )
*DEFINE kcLeftShift  THIRTYFIVE      ( HP48 )
**DEFINE kcLeftShift  THIRTYSEVEN     ( HP50 )
*DEFINE kcRightShift FORTY           ( HP48 )
**DEFINE kcRightShift FORTYTWO        ( HP50 )
*DEFINE kcOn         FORTYFIVE       ( HP48 )
**DEFINE kcOn         FORTYSEVEN      ( HP50 )
* Main program
::
	 0LASTOWDOB!                       ( Clear protection word )
	 CK0NOLASTWD                       ( No arguments )
	 RECLAIMDISP                       ( Clear display )
	 ClrDA1IsStat                      ( Suspend clock )
	 FALSE                             ( Exit flag [FALSE = continue, TRUE = exit] )
	 ' LAM Running                     ( Exit object )
	 ONE DOBIND                        ( Create temporary environment )
* ParOuterLoop parameters
  	 ' ::                              ( Display object )
  	     DA3OK? ?SEMI                  ( Exit if menu display is valid )
  	     DispMenu.1 SetDA3Valid        ( Otherwise display the menu )
  	   ;
  	 ' ::                              ( Hardkey handler )
  	     kpNoShift #=casedrop ::       ( Process no shift keyplane [primary plane] )
  	       DUP#<7 casedrpfls           ( Enable primary softkeys )
  	       kcLeftShift #=casedrpfls    ( Enable left shift key )
  	       kcRightShift #=casedrpfls   ( Enable right shift key )
  	       kcOn ?CaseKeyDef ::         ( Enable On key )
  	         TakeOver                  ( Custom key definition placeholder )
  	         TRUE                      ( Exit Flag [TRUE = exit] )
  	         ' LAM Running STO         ( STO in Exit Object )
  	       ;
  	       DROP 'DoBadKeyT             ( Reject all other keys )
  	     ;
  	     kpLeftShift #=casedrop ::     ( Process left shift keyplane )
  	       DUP#<7 casedrpfls           ( Enable primary softkeys )
  	       kcLeftShift #=casedrpfls    ( Enable left shift key )
  	       kcRightShift #=casedrpfls   ( Enable right shift key )
  	       DROP 'DoBadKeyT             ( Reject all other keys )
  	     ;
  	     kpRightShift #=casedrop ::    ( Process right shift keyplane )
  	       DUP#<7 casedrpfls           ( Enable primary softkeys )
  	       kcLeftShift #=casedrpfls    ( Enable left shift key )
  	       kcRightShift #=casedrpfls   ( Enable right shift key )
  	       kcOn #=casedrpfls           ( Enable On key )
  	       DROP 'DoBadKeyT             ( Reject all other keys )
  	     ;
  	     2DROP 'DoBadKeyT              ( Reject all other keyplanes )
  	   ;
  	 TRUE                              ( NonAppKey Flag TRUE = allow softkey control )
  	 TRUE                              ( DoStdKeys Flag TRUE = ignore user key assignments )
  	 {                                 ( Softkey Menu )
  	   {
  	     "KEY"                         ( $Label )
  	     {                             ( Softkey action object )
  	       ::                          ( Primary plane )
  	         TakeOver                  ( Custom key definition placeholder )
  	         "Primary"                 ( $ )
  	         DISPROW3                  ( Display $ )
  	         WaitForKey 2DROP          ( Wait for ANY key press and DROP #Keycode #Keyplane )
*  	         VERYSLOW                  ( Delay )
  	         DOCLLCD                   ( Clear screen )
  	       ;
  	       ::                          ( Left-shift keyplane )
  	         TakeOver                  ( Custom key definition placeholder )
  	         "Left-Shift"              ( $ )
  	         DISPROW4                  ( Display $ )
  	         WaitForKey 2DROP          ( Wait for ANY key press and DROP #Keycode #Keyplane )
*	           VERYSLOW                  ( Delay )
  	         DOCLLCD                   ( Clear screen )
  	       ;
  	       ::                          ( Right-shift keyplane )
  	         TakeOver                  ( Custome key definition placeholder )
  	         "Right-Shift"             ( $ )
  	         DISPROW5                  ( Display $ )
  	         WaitForKey 2DROP          ( Wait for ANY key press and DROP #Keycode #Keyplane )
*  	         VERYSLOW                  ( Delay )
	           DOCLLCD                   ( Clear screen )
	         ;
	       }
  	   }
  	 }
  	 ONEFALSE                          ( #Menu row, Suspend Flag )
  	 ' LAM Running                     ( Exit Object )
  	 ' ERRJMP                          ( Error Object )
  	 ParOuterLoop                      ( Run the POL )
	 ABND                              ( Abandon temporary environment )
	 ClrDAsOK                          ( Redraw display )
;
