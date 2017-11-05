RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF3MsgHandler.s, part of the INF3.hpp project, created by <> on 16/05/2009 )
**********************************************************************
* DESCRIPTION:     Input Form Message handler placed in a separate
*                  file to allow for debugging.
*
* File Header
INCLUDE INF4.h
EXTERNAL MsgBoxMenu
EXTERNAL DoMsgBox
EXTERNAL DoKeyCancel            ( Process CANCEL key          [ -> FALSE ] )
EXTERNAL DoKeyOK                ( Process OK key              [ -> Field_values TRUE ] )
EXTERNAL IFMenuRow1             ( Make std. first 3 menu keys [ -> { EDIT CHOOSE CHK } ] )
EXTERNAL IFMenuRow2             ( Make std. 2nd row menu keys [ -> { RESET CALC TYPES {} CANCEL OK } ] )
NULLNAME INF4MsgHandler
::
	 FIFTEEN #=case ::             ( Input form menu [ -> { menu } ] )
*	 SIXTEEN #<> case FALSE
	   ' NoExitAction              ( Don't save menu as last menu )
	   IFMenuRow1                  ( First 3 std. menu keys [ -> { EDIT CHOOSE CHK } ] )
	   {
	     {                             ( Softkey 4 )
	       "ALERT"                       ( Softkey label $ )
	       ::                            ( Softkey action )
	         TakeOver                    ( Custom key definition placeholder )
	         "Alert!"                    ( Text for message box )
	         NINE FIFTEEN                ( Min Max character widths )
	         MINUSONE                    ( No grob )
	         ' MsgBoxMenu                ( Message box menu )
	         DoMsgBox                    ( Display the message box )
	         DROP                        ( DROP returned flag )
	       ;
	     }
	     {                             ( Softkey 5 )
	       "(AN(L"                       ( Softkey label $ )
	       ::                            ( Softkey action = standard action )
	         TakeOver
	         DoKeyCancel
	       ;
	     }
	     {                             ( Softkey 6 )
	       "OK"                          ( Softkey label $ )
	       ::                            ( Softkey action = standard action )
	         TakeOver
	         DoKeyOK
	       ;
	     }
	   }
	   IFMenuRow2                  ( Std. 2nd row menu keys [ -> { RESET CALC TYPES {} CANCEL OK } ] )
	   &COMP
				&COMP                       ( {} {}' -> {}'' )
				TWO ::N                     ( {}'' #2 -> ::; )
	   TRUE                        ( Message was handled )
	 ;
	 FALSE                         ( Other messages not handled )
;
