RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ASPD48\FLD_M_MSGHNDLR.s, part of the ASPD48.hpp project, created by <> on 14/06/2009 )

INCLUDE ASPD48.h
INCLUDE Header.H
EXTERNAL grobAlertIcon
NULLNAME FLD_M_MSGHNDLR
::
	 DROPFALSE
*	 IFM_CHKOBVALUE #=case ::
*	   TRUE
*	 ;
*	 FALSE
*  FIFTYSIX #=case ::                    ( Get internal field value )
**		      DROP
*	       DUPTYPEREAL? case ::
*		        DUP %1 %> IT ::                                  ( IF M > 1 )
**		        BINT0 FLASHPTR IfGetFieldValue NOVAL EQUALNOT  ( and IF VC and PA )
**		        BINT1 FLASHPTR IfGetFieldValue NOVAL EQUALNOT  ( are not NOVAL )
**										AND IT ::
**		          " MACH > 1        TAS    INACCURATE"         ( Display flash warning )
**		          FlashWarning
**		        ;
*				  	  			ERRBEEP                     ( Error beep and display flashwarning message )
* Message box parameters
*						    		" MACH > 1        TAS    INACCURATE"     ( message$ )
*					    			TWELVE                      ( #maxwidth )
*				    				TEN                         ( #minwidth )
*			  	  				grobAlertIcon               ( grob )
*		  		  				MsgBoxMenu                  ( menuobject )
*	  			  				DoMsgBox DROP               ( Draw the message box, DROP FLAG )
*								  ;                                 ( Return internal value )
*								  TRUE
*								;
*		      TRUE                              ( Message was handled )
*		    ;
**	    DROPFALSE                            ( No other messages handled )
*	   FALSE
;
