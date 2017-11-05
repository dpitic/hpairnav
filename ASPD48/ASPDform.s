RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDform.s, part of the ASPD.hpp project, created by <> on 19/04/2009 )
**********************************************************************
* NAME:          ASPDform
* AUTHOR:        Dan Pitic
* VERSION:       1.33
* DATE:          13 June 2009
* COMPATIBILITY: HP50
*                HP48
* DESCRIPTION:   Generates the input and output form for ASPD50
*
INCLUDE ASPD48.h
INCLUDE Header.H
*INCLUDE GUI.H
*DEFINE FHEIGHT EIGHT  ( Redefine std. field height for HP50 )
DEFINE FHEIGHT NINE     ( Defined in GUI.H [NOT Header.H] )
EXTERNAL grobAlertIcon
NULLNAME ASPDform
::
* Label definitions (X pos    Y pos)
	 "VC:"              COL1     LROW1
	 "PA:"              COL1     LROW2
	 "M:"               COL12    LROW2
	 "T2:"              COL1     LROW3
	 "T1:"              COL12    LROW3
	 "V1:"              COL1     LROW4
	 
* Field definitions
  ( Field VC definition [#BINT0] )
  ' ::                                    ( Field message handler )
			   TWENTYFIVE #=case ::                ( Get internal field value )
			     DUPTYPEREAL? case ::              ( REAL )
			       "knot" umEND THREE EXTN         ( Add default knot units )
*			       NOVAL BINT2
*										  FLASHPTR IfSetFieldValue      ( Reset M )
*		        NOVAL BINT5
*										  FLASHPTR IfSetFieldValue      ( and TAS )
										TRUE                            ( Return external value )
			     ;
*			     DUPTYPEEXT? case ::               ( UNIT )
*			       DUP ID VC EQUALNOT IT ::        ( IF changed from initial value )
*			         NOVAL BINT2
*										    FLASHPTR IfSetFieldValue        ( Reset M )
*		          NOVAL BINT5
*										    FLASHPTR IfSetFieldValue        ( and TAS )
*			       ;
*			       TRUE                            ( Return external value )
*			     ;
			     TRUE                              ( Message handled )
			   ;
			   FALSE                               ( Other messages not handled )
			 ;
*		BINT14  BINT8  BINT110  BINT8        ( Position & size )
	 COL2+C FROW1 FWIDTH18 FHEIGHT        ( Position & size )
		FTYPE_TEXT                           ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }          ( Allowed type: REAL, UNIT )
		FMT_DFLT                             ( Decompile with stack appearance )
		"CALIBRATED AIR SPEED (#\8Dknot)"  ( Help string )
		MINUSONE                             ( ChooseData N/A )
		MINUSONE                             ( ChooseDecompile )
		MINUSONE                             ( Reset value )
		ID VC                                ( Initial value )
		
		( Field PA definition [#BINT1] )
		' ::                                    ( Field message handler )
		    TWENTYFIVE #=case ::                ( Get internal field value )
		      DUPTYPEREAL? case ::              ( REAL )
		        "ft" umEND THREE EXTN           ( Add default feet units )
		        DUP UNIT % 20000 "m" umEND ;    ( IF PA is > 20 km )
										  UM>? %0<> IT ::
										    DROP                        ( DROP value )
										    ERRBEEP                     ( Error beep and display flashwarning message )
* Message box parameters
								      "ERROR: Alt.   > 20 km"     ( message$ )
					      			TWELVE                      ( #maxwidth )
						      		TEN                         ( #minwidth )
						      		grobAlertIcon               ( grob )
						      		MsgBoxMenu                  ( menuobject )
						      		DoMsgBox DROP               ( Draw the message box, DROP FLAG )
					      			ID PA                       ( Keep original field value )
*										    "ERROR: Alt.    > 20 km"    ( Display error message and error beep )
*										      FlashWarning
*										    NOVAL                       ( Set value to NOVAL )
*										    BINT0 FLASHPTR IfSetField   ( Keep focus )
										  ;
*										::                              ( ELSE )
*		          NOVAL BINT2
*										    FLASHPTR IfSetFieldValue      ( Reset M )
*		          NOVAL BINT5
*										    FLASHPTR IfSetFieldValue      ( and TAS )
*										  BINT2 FLASHPTR IfSetField       ( Set focus on T2 field )
*										;
										TRUE                            ( Return external value )
		      ;
		      DUPTYPEEXT? case ::               ( UNIT )
		        DUP ID PA EQUALNOT IT ::        ( IF changed from initial value )
		          DUP UNIT % 20000 "m" umEND ;  ( IF PA is > 20 km )
		            UM>? %0<> IT ::
		              DROP                        ( DROP value )
		  								    ERRBEEP                     ( Error beep and display flashwarning message )
* Message box parameters
								        "ERROR: Alt.   > 20 km"     ( message$ )
					        			TWELVE                      ( #maxwidth )
						        		TEN                         ( #minwidth )
						        		grobAlertIcon               ( grob )
						        		MsgBoxMenu                  ( menuobject )
						        		DoMsgBox DROP               ( Draw the message box, DROP FLAG )
					        			ID PA                       ( Keep original field value )
*		              "ERROR: Alt.    > 20 km"    ( Display error message and error beep )
*										        FlashWarning
*		              NOVAL                       ( Set value to NOVAL )
*		              BINT0 FLASHPTR IfSetField   ( Keep focus )
		            ;
*		          ::                            ( ELSE )
*		            NOVAL BINT2
*										      FLASHPTR IfSetFieldValue      ( Reset M )
*		            NOVAL BINT5
*										      FLASHPTR IfSetFieldValue      ( and TAS )
*										    BINT2 FLASHPTR IfSetField       ( Set focus on T2 field )
*										  ;
		        ;
		        TRUE                            ( Return external value )
		      ;
		      TRUE                              ( Message was handled )
		    ;
		    FALSE                               ( No other messagges handled )
		  ;
*		BINT14  BINT17  BINT45  BINT8     ( Position & size )
	 COL2+C FROW2 FWIDTH8 FHEIGHT      ( Position & size )
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }       ( Allowed type: REAL, UNIT )
		FMT_DFLT                          ( Decompile with stack appearance )
		"PRESSURE ALTITUDE (#\8Dft)"    ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		MINUSONE                          ( Reset value )
		ID PA                             ( Initial value )
		
		( Field M definition [#BINT2] )
		' FLD_M_MSGHNDLR
*		'DROPFALSE
*		' ::                                    ( Field message handler )
**		    IfMsgGetFieldValue OVER#=case ::    ( Get internal field value )
**		      DROP
**								DUPTYPEREAL? case ::                  ( REAL )
**		        DUP ID M EQUALNOT IT ::             ( IF changed from initial value )
**		          NOVAL BINT0
**								      FLASHPTR IfSetFieldValue        ( Reset VC, )
**		          NOVAL BINT1
**								      FLASHPTR IfSetFieldValue        ( PA and )
**		          NOVAL BINT5
**								      FLASHPTR IfSetFieldValue        ( TAS fields with NOVAL )
**										;
**		        TRUE                            ( Return external value )
**		      ;
**								TRUE                              ( Message was handled )
**		    ;
*		    TWENTYFOUR #=case ::                ( Get internal field value )
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
*	    FALSE
*		  ;
*		BINT75  BINT17  BINT49  BINT8     ( Position & size )
	 COL13.5 FROW2 FWIDTH8 FHEIGHT
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL }                   ( Allowed type: REAL )
		FMT_DFLT                          ( Decompile with stack appearance )
		"MACH NUMBER"                     ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		MINUSONE                          ( Reset value )
		ID M                              ( Initial value )
		
		( Field T2 definition [#BINT3] )
		' ::                                    ( Field message handler )
		    TWENTYFIVE #=case ::                ( Get internal field value )
		      DUPTYPEREAL? case ::              ( REAL )
		        "\B0C" umEND THREE EXTN         ( Add default deg C units )
*		        NOVAL BINT4
*										  FLASHPTR IfSetFieldValue      ( Reset T1 field )
*										NOVAL BINT5
*										  FLASHPTR IfSetFieldValue      ( Reset TAS field )
		        TRUE                            ( Return external value )
		      ;
*		      DUPTYPEEXT? case ::               ( UNIT )
*		        DUP ID T2 EQUALNOT IT ::        ( IF changed from initial value )
*		          NOVAL BINT4
*										    FLASHPTR IfSetFieldValue      ( Reset T1 field )
*										  NOVAL BINT5
*										    FLASHPTR IfSetFieldValue      ( Reset TAS field )
*		        ;
*		        TRUE                            ( Return external value )
*		      ;
		      TRUE                              ( Message was handled )
		    ;
		    FALSE                               ( Other messages not handled )
		  ;
*		BINT14  BINT26  BINT45  BINT8         ( Position & size )
	 COL2+C FROW3 FWIDTH8 FHEIGHT          ( Position & size )
		FTYPE_TEXT                            ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }           ( Allowed type: REAL, UNIT )
		FMT_DFLT                              ( Decompile with stack appearance )
		"TOTAL (INDICATED) AIR TEMP. (#\8D\B0C)"  ( Help string )
		MINUSONE                              ( ChooseData N/A )
		MINUSONE                              ( ChooseDecompile )
		MINUSONE                              ( Reset value )
		ID T2                                 ( Initial value )
		
		( Field T1 definition [#BINT4] )
		' ::                                    ( Field message handler )
		    TWENTYFIVE #=case ::                ( Get internal field value )
		      DUPTYPEREAL? case ::              ( REAL )
		        "\B0C" umEND THREE EXTN         ( Add default feet units )
*		        NOVAL BINT3
*										  FLASHPTR IfSetFieldValue      ( Reset T2 field )
*										NOVAL BINT5
*										  FLASHPTR IfSetFieldValue      ( Reset TAS field )
*		    		  BINT5 FLASHPTR IfSetField       ( Set focus to VC )
		    		  TRUE                            ( Return external value )
		      ;
*		      DUPTYPEEXT? case ::               ( UNIT )
*		        DUP ID T1 EQUALNOT IT ::        ( IF changed from initial value )
*		          NOVAL BINT3
*										    FLASHPTR IfSetFieldValue      ( Reset T2 field )
*										  NOVAL BINT5
*										    FLASHPTR IfSetFieldValue      ( Reset TAS field )
*		    		    BINT5 FLASHPTR IfSetField       ( Set focus to VC )
*		        ;
*		        TRUE                            ( Return external value )
*		      ;
		      TRUE                              ( Message was handled )
		    ;
		    FALSE                               ( Other messages not handled )
		  ;
*		BINT79  BINT26  BINT45  BINT8      ( Position & size )
	 COL14 FROW3 FWIDTH8 FHEIGHT        ( Position & size )
		FTYPE_TEXT                         ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }        ( Allowed type: REAL, UNIT )
		FMT_DFLT                           ( Decompile with stack appearance )
		"STATIC (TRUE) AIR TEMP. (#\8D\B0C)"   ( Help string )
		MINUSONE                           ( ChooseData N/A )
		MINUSONE                           ( ChooseDecompile )
		MINUSONE                           ( Reset value )
		ID T1                              ( Initial value )
		
		( Field V1 definition [#BINT5] )
		'DROPFALSE
*		BINT14  BINT35  BINT110  BINT8    ( Position & size )
	 COL2+C FROW4 FWIDTH18 FHEIGHT     ( Position & size )
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }       ( Allowed type: REAL, UNIT )
		FMT_DFLT                          ( Decompile with stack appearance )
		"TRUE AIR SPEED (OUTPUT)"         ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		MINUSONE                          ( Reset value )
		ID V1                             ( Initial value )
		
		SIX SIX                           ( Label and field count )
		
		'DROPFALSE                        ( Inform Box message handler )
		"AIRSPEED"                        ( Title )
		DoInputForm                       ( Create and run the input form )	
;
