RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\POL\POL4.s, part of the POL4.hpp project, created by <> on 12/05/2009 )
********************************************************************
* DESCRIPTION:     Displays a value and it's inverse.  The + key is
*                  used to increment the value and the - key is used
*                  to decrement the value.  When the value is zero,
*                  the operation 1/value generates an error which is
*                  handled by the error object.  The softkey ->ERR
*                  generages an error that the error object does not
*                  recognise and passes on to ERRJMP.  The program
*                  ends when ON is pressed.
* COMPATIBILITY:   HP48  ( Must use HP48 kc & kp defs. )
*                  HP50  ( Must include Header.h )
* USAGE:     ( -> )
*
INCLUDE Header.h
* HP48 Keyplane and keycode definitions
*DEFINE kpNoShift     ONE           ( HP48 & HP50 )
*DEFINE kcOn          FORTYFIVE     ( HP48 )
*DEFINE kcMinus       FORTYFOUR     ( HP48 )
*DEFINE kcPlus        FORTYNINE     ( HP48 )
::
	 0LASTOWDOB!                      ( Clear protection word )
	 CK0NOLASTWD                      ( No arguments )
	 RECLAIMDISP                      ( Clear screen )
	 ClrDA1IsStat                     ( Suspend clock )
* Temporary environment definition	
	 ' ::                             ( Display object )
	     "Value: "                    ( $ )
	     LAM Value                    ( % )
	     EDITDECOMP$                  ( % -> $ )
	     &$                           ( $ $ -> $ )
	     DISPROW3                     ( Display $ )
	     "Result: "                   ( $ )
	     LAM Result                   ( % )
	     EDITDECOMP$                  ( % -> $ )
	     &$                           ( $ $ -> $ )
	     DISPROW4                     ( Display $ )
	   ;
	 %1 %1                          ( Initial result, initial value )
	 FALSE                          ( Exit flag [FALSE = Continue, TRUE = Exit] )
	 ' LAM DoDisplay                ( Display object )
	 ' LAM Result                   ( Result )
	 ' LAM Value                    ( Value )
	 ' LAM Running                  ( Exit Object )
	 FOUR DOBIND                    ( Create temporary environment )
* Main program
	   LAM DoDisplay EVAL             ( Initial display of value and result )
* POL parameters	
  	 ' ::                           ( Display handler )
  	     DA3OK? ?SEMI               ( Redraw menu if required )
  	     DispMenu.1
  	     SetDA3Valid
  	   ;
  	 ' ::                           ( Hardkey handler )
  	     kpNoShift #=casedrop ::    ( Primary plane )
  	       DUP#<7 casedrpfls        ( Enable softkeys )
  	       kcMinus ?CaseKeyDef ::   ( Enable - key )
  	         TakeOver               ( Custom key definition placeholder )
  	         LAM Value              ( %Value )
  	         %1-                    ( %Value %1 %- -> %Value-1 )
  	         DUP
  	         ' LAM Value STO
  	         %1/                    ( %Value-1 %1 %/ -> %[Value-1]/1 )
  	         ' LAM Result STO
  	         LAM DoDisplay EVAL     ( Display value and result )
  	       ;
  	       kcPlus ?CaseKeyDef ::    ( Enable + key )
  	         TakeOver
  	         LAM Value              ( %Value )
  	         %1+                    ( %Value %1 %+ -> %Value+1 )
  	         DUP
  	         ' LAM Value STO
  	         %1/                    ( %Value+1 %1 %/ -> %[Value+1]/1 )
  	         ' LAM Result STO
  	         LAM DoDisplay EVAL     ( Display value and result )
  	       ;
  	       kcOn ?CaseKeyDef ::      ( Enable ON key )
  	         TakeOver
  	         TRUE                   ( Exit flag [TRUE = Exit] )
  	         ' LAM Running STO
  	       ;
  	       DROP 'DoBadKeyT          ( Reject other keys and beep )
  	     ;
  	     2DROP 'DoBadKeyT           ( Reject other planes and beep )
  	   ;
  	 TRUE                           ( NonAppKey Flag [TRUE = allow softkey code execution] )
  	 TRUE                           ( DoStdKeys Flag [TRUE = ignore user key assignments] )
  	 {                              ( Softkey menu )
  	   {
  	     "\8DERR"                   ( Menu Softkey Label $ )
  	     ::                         ( Menu Softkey Action )
  	       TakeOver                 ( Custom key definition placeholder )
  	       "Unhandled Error"        ( $ )
  	       DO$EXIT                  ( $ -> )
  	     ;
  	   }
  	 }
  	 ONEFALSE                       ( #Menu, Suspend Flag [FALSE = no suspend allowed] )
  	 ' LAM Running                  ( Exit object )
  	 ' ::                           ( Error handler )
  	     ERROR@                     ( #Error number )
  	     # 100 #/                   ( #Error #100 #/ -> # )
  	     SWAPDROP
  	     THREE #<> case ERRJMP      ( ERRJMP if NOT floating point error )
  	     ERRORCLR                   ( Clear error number )
  	     "Value: "                  ( $ )
  	     LAM Value                  ( %Value )
  	     EDITDECOMP$                ( %Value -> $Value )
  	     &$                         ( $ $Value -> $ )
  	     DISPROW3                   ( Display $ )
  	     "Result: Undefined"        ( $ )
  	     DISPROW4                   ( Display $ )
  	   ;
  	 ParOuterLoop                   ( Run POL )
	 ABND                           ( Abandon temporary environment )
	 ClrDAsOK                       ( Redraw display )
;

