RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISATMOSv2\ISAform.s, part of the ISATM.hpp project, created by <> on 14/04/2009 )
********************************************************************
* NAME:            ISAform
* DESCRIPTION:     Generates the INPUT and OUTPUT form for ISA50.
* VERSION:         1.23
* DATE:            10 June 2009
* COMPATIBILITY:   HP50
*
INCLUDE informbox.h
INCLUDE Header.h
INCLUDE ISA50.h
NULLNAME ISAform
::
* Label definitions (X pos     Y pos)
		"PA:"														COL1      LROW1
		"T1:"   											COL1      LROW2
		"P1:"   											COL1			   LROW3
		"\971:" 											COL1			   LROW4
		"a1:"   											COL1      LROW5		
		
* Field definitions
		( Field PA definition [#BINT0] )
		' ::                                          ( Field message handler )
		    IfMsgGetFieldValue #=case ::              ( Get internal field value )
		      DUPTYPEREAL? case ::                    ( REAL )
		        "ft" umEND BINT3 EXTN                 ( Add default feet units )		
									 DUP UNIT % 20000 "m" umEND ;          ( Check if PA is > 20 km )
										UM>? %0<> ITE ::                      ( IF PA is > 20 km )
										  DROP                                ( DROP field value )
										  "ERROR: Alt.    > 20 km"            ( Display warning message and error beep )
								      FlashWarning                      ( and wait for key press to exit )
										  BINT4 FLASHPTR IfSetField           ( Keep field focus )
												ID PA                               ( Keep original PA field value )
										;
										::                                      ( ELSE )
									  	NOVAL BINT1 FLASHPTR IfSetFieldValue  ( Reset all other fields )
		          NOVAL BINT2 FLASHPTR IfSetFieldValue  ( with NOVAL )
		          NOVAL BINT3 FLASHPTR IfSetFieldValue
		          NOVAL BINT4 FLASHPTR IfSetFieldValue
		          BINT4 FLASHPTR IfSetField             ( Keep field focus )		
		        ;
		        TRUE                                  ( Return external value )
		      ;
		      DUPTYPEEXT? case ::                       ( UNIT )
		        DUP UNIT % 20000 "m" umEND ;     ( Check if PA is > 20 km )
		        UM>? %0<> ITE ::                 ( IF PA is > 20 km )
		        		DROP                           ( DROP field value )
		        		"ERROR: Alt.    > 20 km"       ( Display warning message and error beep )
								      FlashWarning                 ( and wait for key press to exit )
		        		BINT4 FLASHPTR IfSetField      ( Keep field focus )
		        		ID PA                          ( Keep original PA field value )
		        ;
		        ::                               ( ELSE )
							  			DUP ID PA EQUALNOT IT ::                ( IF changed from initial value )
	             NOVAL BINT1 FLASHPTR IfSetFieldValue  ( Reset all other fields )
		            NOVAL BINT2 FLASHPTR IfSetFieldValue  ( with NOVAL )
		            NOVAL BINT3 FLASHPTR IfSetFieldValue
		            NOVAL BINT4 FLASHPTR IfSetFieldValue
		            BINT4 FLASHPTR IfSetField	            ( Keep field focus )
		          ;
		        ;
		        TRUE                             ( Return external value )
		      ;
		      TRUE                            ( Message was handled )
		    ;
		    FALSE                             ( Other messages not handled )
		  ;																				
		COL3 FROW1 FWIDTH19 EIGHT       ( Position & size )
		FTYPE_TEXT																				  ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }					( Allowed type: REAL, UNIT object )
		FMT_DFLT																						  ( Decompile with stack appearance )
		"PRESSURE ALTITUDE (##\8D ft)"  ( Help text )
		MINUSONE																						  ( ChooseData N/A )
		MINUSONE																		 			  ( ChooseDecompile - ignored )
		MINUSONE     																	  ( Reset value )
		ID PA																									  ( Initial value )
		
  ( Field T1 definition [#BINT1] )
  ' ::                                   ( Field Message Handler )
			   IfMsgGetFieldValue #=case ::       ( Get internal field value )
			     DUPTYPEREAL? case ::                     ( Real object )
			       "\B0C" umEND BINT3 EXTN                ( Add default deg C units )
 									NOVAL BINT0 FLASHPTR IfSetFieldValue   ( Reset all other )
										NOVAL BINT2 FLASHPTR IfSetFieldValue   ( fields with )
										NOVAL BINT3 FLASHPTR IfSetFieldValue   ( NOVAL )
										NOVAL BINT4 FLASHPTR IfSetFieldValue
										BINT0 FLASHPTR IfSetField              ( Keep field focus )
										TRUE                                   ( Return external value )
			     ;
			     DUPTYPEEXT? case ::                      ( Unit object )
			       DUP ID T1 EQUALNOT IT ::               ( IF changed from internal value )
												NOVAL BINT0 FLASHPTR IfSetFieldValue   ( Reset all other )
												NOVAL BINT2 FLASHPTR IfSetFieldValue   ( fields with )
												NOVAL BINT3 FLASHPTR IfSetFieldValue   ( NOVAL )
												NOVAL BINT4 FLASHPTR IfSetFieldValue
												BINT0 FLASHPTR IfSetField              ( Keep field focus )
			       ;
			       TRUE                                   ( Return external value )		
			     ;
			     TRUE                     ( Message was handled )
			   ;
			   FALSE                      ( Other messages not handled )
			 ;
	 COL3 FROW2 FWIDTH19 EIGHT       ( Position & size )
	 FTYPE_TEXT																					 ( Field type: TEXT )
	 { OBTYPE_REAL OBTYPE_UNIT	}			  ( Allowed type: REAL, UNIT object )
	 FMT_DFLT																						  ( Decompile with stack appearance )
	 "STATIC AIR TEMP. (TRUE ##\8D \B0C)"  ( Help string )
	 MINUSONE																						  ( ChooseData N/A )
	 MINUSONE                        ( ChooseDecompile )
	 MINUSONE                        ( Reset value )
	 ID T1                           ( Initial value )
	 
	 ( Field P1 definition [#BINT2] )
	 ' ::                                          ( Field message handler )
		    IfMsgGetFieldValue #=case ::              ( Get internal field value )
		      DUPTYPEREAL? case ::                    ( REAL )
		        DUP % 50 %< ITE ::                    ( IF it is < 50 )
		          "inHg" umEND BINT3 EXTN             ( add inHg units )
		        ;
		        ::                                    ( ELSE if it is > 50 )
            CHR_m "bar" umP umEND               ( add mbar units )
            BINT5 EXTN		
		        ;
	         NOVAL BINT0 FLASHPTR IfSetFieldValue   ( Reset other fields )
	         NOVAL BINT1 FLASHPTR IfSetFieldValue   ( with NOVAL )
	         NOVAL BINT3 FLASHPTR IfSetFieldValue
	         NOVAL BINT4 FLASHPTR IfSetFieldValue
	         BINT1 FLASHPTR IfSetField              ( Keep field focus )
	         TRUE	                                  ( Return external value )
		      ;
		      DUPTYPEEXT? case ::                       ( UNIT )
		        DUP ID P1 EQUALNOT IT ::                ( IF changed from initial value )
	           NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
		          NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
		          NOVAL BINT3 FLASHPTR IfSetFieldValue
		          NOVAL BINT4 FLASHPTR IfSetFieldValue
		          BINT1 FLASHPTR IfSetField	            ( Keep field focus )
		        ;
		        TRUE                                    ( Return external value )
		      ;
		      TRUE                            ( Message was handled )
		    ;
		    FALSE                             ( Other messages not handled )
		  ;																				
	 COL3 FROW3 FWIDTH19 EIGHT       ( Position & size )
	 FTYPE_TEXT																						( Field type: TEXT )
	 { OBTYPE_REAL OBTYPE_UNIT	}					( Allowed type: REAL, UNIT object )
	 FMT_DFLT																								( Decompile with stack appearance )
	 "STATIC PRESSURE (##\8D mbar/inHg)"  ( Help string )
	 MINUSONE                        ( ChooseData N/A )
	 MINUSONE                        ( ChooseDecompile )
	 MINUSONE                        ( Reset value )
	 ID P1                           ( Initial value )
	 
	 ( Field rho1 definition )
		' ::                                          ( Field message handler )
		    IfMsgGetFieldValue #=case ::              ( Get internal field value )
		      DUPTYPEREAL? case ::                    ( REAL )
 									CHR_k "g" umP "m" %3                  ( Add kg/m^3 units )
	 	       um^ um/ umEND
	 	       BINT9 EXTN		
		        NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
		        NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
		        NOVAL BINT2 FLASHPTR IfSetFieldValue
		        NOVAL BINT4 FLASHPTR IfSetFieldValue
		        BINT2 FLASHPTR IfSetField             ( Keep field focus )
		        TRUE                                  ( Return external value )
		      ;
		      DUPTYPEEXT? case ::                       ( UNIT )
		        DUP ID \971 EQUALNOT IT ::              ( IF changed from initial value )
	           NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
		          NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
		          NOVAL BINT2 FLASHPTR IfSetFieldValue
		          NOVAL BINT4 FLASHPTR IfSetFieldValue
		          BINT2 FLASHPTR IfSetField	            ( Keep field focus )
		        ;
		        TRUE                                    ( Return external value )
		      ;
		      TRUE                            ( Message was handled )
		    ;
		    FALSE                             ( Other messages not handled )
		  ;									
	 COL3 FROW4 FWIDTH19 EIGHT       ( Position & size )
	 FTYPE_TEXT                      ( Field type: TEXT )
	 { OBTYPE_REAL OBTYPE_UNIT }     ( Allowed type: REAL, UNIT object )
	 FMT_DFLT                        ( Decompile with stack appearance )
	 "DENSITY (##\8D kg/m^3)"        ( Help string )
	 MINUSONE                        ( ChooseData N/A )
	 MINUSONE                        ( ChooseDecompile )
	 MINUSONE                        ( Reset value )
	 ID \971                         ( Initial value )
	
		( Field a1 definition )
		' ::                                          ( Field message handler )
		    IfMsgGetFieldValue #=case ::              ( Get internal field value )
		      DUPTYPEREAL? case ::                    ( REAL )
										"knot" umEND                          ( Add default knot units )
										BINT3 EXTN		
		        NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
		        NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
		        NOVAL BINT2 FLASHPTR IfSetFieldValue
		        NOVAL BINT3 FLASHPTR IfSetFieldValue
		        BINT3 FLASHPTR IfSetField             ( Keep field focus )
		        TRUE                                  ( Return external value )
		      ;
		      DUPTYPEEXT? case ::                       ( UNIT )
		        DUP ID A1 EQUALNOT IT ::                ( IF changed from initial value )
	           NOVAL BINT0 FLASHPTR IfSetFieldValue  ( Reset all other fields )
		          NOVAL BINT1 FLASHPTR IfSetFieldValue  ( with NOVAL )
		          NOVAL BINT2 FLASHPTR IfSetFieldValue
		          NOVAL BINT3 FLASHPTR IfSetFieldValue
		          BINT3 FLASHPTR IfSetField	            ( Keep field focus )
		        ;
		        TRUE                                    ( Return external value )
		      ;
		      TRUE                            ( Message was handled )
		    ;
		    FALSE                             ( Other messages not handled )
		  ;																				
	 COL3 FROW5 FWIDTH19 EIGHT       ( Position & size )
		FTYPE_TEXT                      ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }     ( Allowed type: REAL, UNIT object )
		FMT_DFLT                        ( Decompile with stack appearance )
		"SPEED OF SOUND (##\8D knot)"   ( Help string )
		MINUSONE                        ( ChooseData N/A )
		MINUSONE                        ( ChooseDecompile )
		MINUSONE                        ( Reset value )
		ID A1                           ( Initial value )
		
		BINT5 BINT5																			  ( Label & field counts )
		
		'DROPFALSE																				  ( Inform Box message handler )
		"ISA"																										 ( Title )
		FLASHPTR IfMain 															 ( Create and run the input form )
;
