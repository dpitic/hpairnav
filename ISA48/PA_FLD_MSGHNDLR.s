RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA48\PA_FLD_MSGHNDLR.s, part of the ISA48.hpp project, created by <> on 11/06/2009 )
**********************************************************************
* DESCRIPTION:     Pressure altitude (PA) field message handler placed
*                  in a separate file to allow debugging.
*
INCLUDE ISA48.h
INCLUDE Header.h
*EXTERNAL DoMsgBox
EXTERNAL grobAlertIcon
*EXTERNAL MsgBoxMenu
NULLNAME PA_FLD_MSGHNDLR
::
	 IFM_POSTPARSE #=case ::           ( Get internal field value )
	   DUPTYPEREAL? case ::            ( REAL )
	     "ft" umEND THREE EXTN         ( Add default feet units )
	     DUP UNIT % 20000 "m" umEND ;
	     UM>? %0<> IT ::               ( IF PA > 20 km )
	       DROP                        ( DROP field value )
								ERRBEEP                     ( Error beep and display flashwarning message )
* Message box parameters
								"ERROR: Alt.   > 20 km"     ( message$ )
								TWELVE                      ( #maxwidth )
								TEN                         ( #minwidth )
								grobAlertIcon               ( grob )
								MsgBoxMenu                  ( menuobject )
								DoMsgBox DROP               ( Draw the message box, DROP FLAG )
								ID PA                       ( Keep original field value )
	     ;
	     TRUE                          ( Return external field value )
	   ;
	   DUPTYPEEXT? case ::             ( UNIT )
	     DUP UNIT % 20000 "m" umEND ;
	     UM>? %0<> IT ::               ( IF PA > 20 km )
	       DROP                        ( DROP field value )
								ERRBEEP                     ( Error beep and display flashwarning message )
* Message box parameters
								"ERROR: Alt.   > 20 km"     ( message$ )
								TWELVE                      ( #maxwidth )
								TEN                         ( #minwidth )
								grobAlertIcon               ( grob )
								MsgBoxMenu                  ( menuobject )
								DoMsgBox DROP               ( Draw the message box, DROP FLAG )
								ID PA                       ( Keep original field value )
	     ;
	     TRUE                          ( Return external field value )
	   ;	
	   TRUE                            ( Message was handled )
	 ;
	 FALSE                             ( No other messages handled )
;
