RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF3MsgHandler.s, part of the INF3.hpp project, created by <> on 16/05/2009 )
**********************************************************************
* DESCRIPTION:     Input Form Message handler placed in a separate
*                  file to allow for debugging.
*
* File Header
INCLUDE INF3.h
EXTERNAL MsgBoxMenu
EXTERNAL DoMsgBox
EXTERNAL DoKeyCancel            ( Process CANCEL key [ -> FALSE ] )
EXTERNAL DoKeyOK                ( Process OK key     [ -> Field_values TRUE ] )
NULLNAME INF3MsgHandler
::
	 SIXTEEN #=case ::             ( Three Menu Keys [ -> { Key4 Key5 Key6 } ] )
*	 SIXTEEN #<> case FALSE
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
	   TRUE                            ( FLAG required by menu builder )
	   TRUE                            ( Message was handled )
	 ;
	 FALSE                             ( Other messages not handled )
;
