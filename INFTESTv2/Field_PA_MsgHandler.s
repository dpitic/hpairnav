RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTESTv2\Field_PA_MsgHandler.s, part of the INFTEST.hpp project, created by <> on 25/04/2009 )
INCLUDE informbox.h
INCLUDE INFTEST.h
NULLNAME Field_PA_MsgHandler
::
*	 IfMsgGetFieldValue OVER#=case ::            ( IfMsgGetFieldValue - Get internal value )
	 IfMsgGetFieldValue #=case ::
*	   DROP                         ( DROP message handler call # )
	   DUPTYPEREAL? case ::
	     "ft" umEND BINT3 EXTN
	     TRUE                       ( Return external value )
	   ;
	   TRUE                         ( Message was handled )
	 ;
*	 IfMsgChoose OVER#=case ::           ( IfMsgChoose )
*	   DROP                         ( Message Handler call # )
*	   DUPTYPEBINT? case ::         ( IF it is a bint )
*	     2DROP                        ( DROP both bints on level 1 & 2 )
*	     FALSE                        ( Message not handled )
*	   ;
*	   FALSE                        ( Message not handled )
*	 ;
*	 IfMsgNewCommandLine OVER#=case ::           ( IfMsgNewCommandLine )
*	   DROP                         ( DROP message handler call # )
*	   DUPTYPEBINT? case ::         ( IF it is a bint )
*	     2DROP                        ( DROP both bints on levels 1 & 2 )
*	     FALSE                        ( Message not handled )
*	   ;
*	   FALSE                        ( Message not handled )
*	 ;
*	 DROPFALSE                      ( No other messages handled )
	 FALSE
;
