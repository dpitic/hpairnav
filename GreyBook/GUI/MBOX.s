RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\MBOX.s, part of the MBOX.hpp project, created by <> on 14/05/2009 )
********************************************************************
* DESCRIPTION:     Displays a message box with a custom grob and
*                  message string.
* COMPATIBILITY:   HP48, HP50
*
* Rompointer external declarations
EXTERNAL DoMsgBox                  ( Declare DoMsgBox is called by a rompointer )
EXTERNAL MsgBoxMenu
EXTERNAL grobAlertIcon
::
	 0LASTOWDOB!                      ( Clear protection word )
	 CK0NOLASTWD                      ( No arguments )
* Message box parameters
	 "Calculation Complete!"          ( Message $ )
	 TWELVE                           ( #maxwidth )
	 TEN                              ( #minwidth )
*	 grobAlertIcon                    ( Grob )
ASSEMBLE                           ( Grob [smiling face] )
	 CON(5)		=DOGROB
	 REL(5)	 end
	 CON(5)  11
	 CON(5)  11
	 NIBHEX  8F00401020201040
	 NIBHEX  9840104010409840
	 NIBHEX  272040108F00
end	
RPL
	 ' MsgBoxMenu                     ( menuobject )
	 DoMsgBox                         ( Run the message box -> FLAG )
	 DROP                             ( DROP FLAG )
	 ClrDAsOK                         ( Redraw display )
;
