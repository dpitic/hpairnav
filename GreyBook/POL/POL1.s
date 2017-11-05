RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\POL\POL1.s, part of the POL1.hpp project, created by <> on 9/05/2009 )
**********************************************************************
* DESCRIPTION:     Displays a number, initially 1, and enables the
*                  + & - keys to increment and decrement the number.
*                  The OFF key is enabled, and the softkey QUIT is
*                  used to provide the exit signal.  Program is
*                  extended to allow repeated + & - key press.
* COOMPATIBILITY:  HP48 ( Remove Header.h & enable kc & kp defs. )
*                  HP50 ( Must include Header.h )
* USAGE:     ( -> )
*
INCLUDE Header.h      ( HP50 keycode and keyplane definitions )
* HP48 Keycode and keyplane definitions
*DEFINE kpNoShift     ONE           ( Key plane no shift [#1h = 1d] )
*DEFINE kpRightShift  THREE         ( Key plane right shift [#3h = 3d] )
*DEFINE kcRightShift  FORTY         ( Key code right shift [#28h = 40d] )
*DEFINE kcMinus       FORTYFOUR     ( Key code minus [#2Ch = 44d] )
*DEFINE kcOn          FORTYFIVE     ( Key code On )
*DEFINE kcPlus        FORTYNINE     ( Key code plus [#31h = 49d])
::
	 0LASTOWDOB!                      ( Clear saved command name )
	 CK0NOLASTWD                      ( No arguments )
	 ClrDA1IsStat                     ( Suspend clock )
	 RECLAIMDISP                      ( Clear display )
	 FALSE                            ( Exit flag [FALSE = continue] )
	 %1                               ( Initial counter value )
	 ' LAM Running                    ( Runing flag [FALSE = continue, TRUE = exit] )
	 ' LAM Value                      ( Counter value )
	 TWO DOBIND                       ( Create temporary environment )
	   LAM Value                      ( Display starting value )
	   EDITDECOMP$
	   DISPROW4
* POL parameters
    ' ::                             ( Display Object )
*  			   DA3OK? ?SKIP ::              ( Display menu if needed )
*  			     DispMenu.1                 ( Display menu )
*  			     SetDA3Valid                ( Freeze menu display area DA3 )
*  			   ;
*  			   LAM Value                    ( %Counter )
*  			   EDITDECOMP$                  ( %Counter -> $Counter )
*  			   DISPROW4                     ( Display $Counter )
	       DA3OK? ?SEMI                 ( No display action needed other than menu )
	       DispMenu.1
	       SetDA3Valid
  		  ;
  		' ::                             ( Hard key handler [#keycode #plane -> Ob TRUE] )
  		    kpNoShift #=casedrop ::      ( Process primary key plane [no shift] [DROP #keyplane] )
  		      DUP#<7 casedrpfls          ( Enables soft keys [DROP #keycode] )
  		      kcMinus ?CaseKeyDef ::     ( Process - key [#2Ch = 44d] )
  		        TakeOver                 ( Custom key definition placeholder )
  		        REPEATER kcMinus ::      ( Handle repeat key press )
		  										LAM Value                ( %Counter )
    		        %1-                      ( -> %Counter-1 )
    		        DUP
    		        ' LAM Value STO          ( STO %Counter in LAM Value )
    		        EDITDECOMP$              ( %Counter-1 -> $ )
    		        DISPROW4                 ( Display $ )
  		        ;
  		      ;
  		      kcPlus ?CaseKeyDef ::      ( Process + key [#31h = 49d] )
  		        TakeOver                 ( Custon key definition placeholder )
  		        REPEATER kcPlus ::       ( Handle repeat key press )
  		          LAM Value                ( %Counter )
  		          %1+                      ( -> %Counter+1 )
  		          DUP
  		          ' LAM Value STO          ( STO %Counter in LAM Value )
  		          EDITDECOMP$
  		          DISPROW4
  		        ;
  		      ;
  		      kcRightShift #=casedrpfls  ( Enable right shift key )
  		      DROP 'DoBadKeyT            ( Reject all other keys -> DROP #keycode )
  		    ;
  		    kpRightShift #=casedrop ::   ( Process right shift plane )
  		      kcRightShift #=casedrpfls  ( Enable right shift key )
  		      kcOn #=casedrpfls          ( Enable OFF key )
  		      DROP 'DoBadKeyT            ( Reject all other keys )
  		    ;
  		    2DROP                        ( DROP #keycode #keyplane [Reject all other keys] )
  						'DoBadKeyT                   ( -> DoBadKey TRUE )
  		  ;					
  		TRUE                             ( NonAppKey Flag = enable soft keys )
  		TRUE                             ( DoStdKeys Flag = reject user key definitions )
  		{                                ( Softkey Menu )
  				 NullMenuKey                     ( Menu key 1 = BLANK [generates error beep] )
  				 NullMenuKey                     ( Meny key 2 = BLANK [ ... ] )
  				 NullMenuKey                     ( Menu key 3 = BLANK [ ... ] )
  				 NullMenuKey                     ( Menu key 4 = BLANK [ ... ] )
  				 NullMenuKey                     ( Menu key 5 = BLANK [ ... ] )
  				 {                               ( Menu key 6 = QUIT )
  				   "QUIT"                        ( Label text )
  				   ::                            ( Key action )
  				     TakeOver                    ( Custom key definition placeholder )
  									TRUE                        ( TRUE flag to exit )
  				     ' LAM Running STO           ( STO TRUE in LAM Running [Exit Object = TRUE] )
  				   ;
  				 }
  		}
  		ONE                             ( #Menu Row = Display 1st menu row )
  		FALSE                           ( Suspend Flag = Don't allow HALT or PROMPT )
  		' LAM Running                   ( Exit object [FALSE = Continue, TRUE = Exit] )
  		' ERRJMP                        ( Error object )
  		ParOuterLoop                    ( Run the POL )
		ABND                            ( Abandon temporary environment )
		ClrDAsOK                        ( Redraw the display )
;
