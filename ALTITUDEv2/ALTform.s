RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTform.s, part of the ALT.hpp project, created by <> on 18/04/2009 )
********************************************************************
* NAME:            ALTform
* DESCRIPTION:     Displays INPUT and OUTPUT form for ALT.
* TODO:     1)     Make QNH field a combo field and allow user to
*                  choose 1013.25_mbar as the standard QNH and
*                  alternatively allow user to input or edit QNH

INCLUDE informbox.h
INCLUDE ALT.h
NULLNAME ALTform
::
* Label definitions (X pos     Y pos)
	 "CALT:"            BINT1     BINT9
	 "QNH:"             BINT68    BINT9
		"PALT:"            BINT1     BINT18
	 "SAT:"             BINT68    BINT18
	 "GNDST:"           BINT1     BINT27
	 "TALT:"            BINT1     BINT36
	 "DALT:"            BINT1     BINT45
	 
* Field definitions
	 ( Field CA definition )
  ' ::                                     ( Field Message Handler )
			   IfMsgGetFieldValue #=case ::         ( Get internal field value )
			     DUPTYPEREAL? case ::								       ( REAL )
			       "ft" umEND BINT3 EXTN            ( Add default feet units )
			       NOVAL BINT5
			         FLASHPTR IfSetFieldValue       ( Reset TA field )
			       NOVAL BINT6
			         FLASHPTR IfSetFieldValue		       ( Reset DA field )
			       BINT1 FLASHPTR IfGetFieldValue     ( Get QNH field value )
			       NOVAL EQUALNOT IT ::															( IF QNH is NOT NOVAL )
												NOVAL BINT2                      ( THEN )
			       		  FLASHPTR IfSetFieldValue       ( Reset PA FIELD )
			       ;
										TRUE                      ( Return external value )
			     ;
			     DUPTYPEEXT? case ::             ( UNIT )
			       DUP ID CA EQUALNOT IT ::      ( IF field CA is changed )
			         NOVAL BINT5
			           FLASHPTR IfSetFieldValue  ( Reset TA field )
			         NOVAL BINT6
			           FLASHPTR IfSetFieldValue  ( Reset DA field )
			         BINT1 FLASHPTR IfGetFieldValue     ( Get QNH field value )
			         NOVAL EQUALNOT IT ::															( IF QNH is NOT NOVAL )
												  NOVAL BINT2                      ( THEN )
			       		  FLASHPTR IfSetFieldValue         ( Reset PA FIELD )
			         ;
			       ;
			       TRUE                        ( Return external value )
			     ;
			     TRUE                          ( Message was handled )
			   ;
			   FALSE                           ( No other messages handled )
		  ;	
		BINT22  BINT8  BINT43  BINT8      ( Position and size )
		BINT1                             ( Field type: TEXT )
		{ BINT0 BINT13 }                  ( Allowed type: REAL, UNIT )
		BINT2                             ( Decompile with stack appearance )	
		"CALIBRATED ALTITUDE (FOR TALT)"  ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecomile )
		MINUSONE                          ( Reset value )
		ID CA                             ( Initial value )
		
		( Field QNH definition )
		' ::                              ( Field Message Handler )
		    IfMsgSetFieldValue #=case ::  ( Get internval value )
		      DUPTYPEREAL? case ::        ( REAL )
		        DUP % 50 %< ITE ::        ( IF it is < 50 )
		          "inHg" umEND BINT3 EXTN ( add inHg units )
		        ;
		        ::                        ( ELSE )
		          CHR_m "bar" umP umEND   ( add mbar units )
		          BINT5 EXTN
		        ;	
		        NOVAL BINT5
			         FLASHPTR IfSetFieldValue         ( Reset TA field )
			       NOVAL BINT6
			         FLASHPTR IfSetFieldValue		       ( Reset DA field )
										BINT0 FLASHPTR IfGetFieldValue     ( Get CA field value )
		        NOVAL EQUALNOT IT ::               ( IF it is NOT NOVAL )
								    NOVAL BINT2                      ( THEN )
		            FLASHPTR IfSetFieldValue       ( Reset PA field )
		        ;
								  TRUE                      ( Return external value )
								;
								DUPTYPEEXT? case ::
								  DUP ID QNH EQUALNOT IT ::
								    NOVAL BINT5
								      FLASHPTR IfSetFieldValue       ( Reset TA field )
								    NOVAL BINT6
								      FLASHPTR IfSetFieldValue       ( Reset DA field )
								    BINT0 FLASHPTR IfGetFieldValue   ( Get CA field value )
								    NOVAL EQUALNOT IT ::             ( IF it it NOT NOVAL )
								      NOVAL BINT2                    ( THEN )
								        FLASHPTR IfSetFieldValue     ( Reset PA field )
								    ;
									 ;
									 TRUE                      ( Return external value )
								;
	       TRUE                        ( Message was handled )
		    ;
		    FALSE                         ( No other messages handled )
		  ;
		BINT85  BINT8  BINT45  BINT8      ( Position and size )
		BINT1                             ( Field type: TEXT )
		{ BINT0 BINT13 }                  ( Allowed type: REAL, UNIT )
	 BINT2                             ( Decompile with stack appearance )
		"ALTIMETER SETTING"               ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		MINUSONE                          ( Reset value )
		ID QNH                            ( Initial value )
		
		( Field PA definition )
		' ::                                    ( Field message handler )
		    IfMsgGetFieldValue #=case ::        ( Get internal value )
		      DUPTYPEREAL? case ::              ( REAL )
		        "ft" umEND BINT3 EXTN           ( Add default feet units )
		        NOVAL BINT5
		          FLASHPTR IfSetFieldValue         ( Reset TA field )
		        NOVAL BINT6
		          FLASHPTR IfSetFieldValue         ( Reset DA field )		
		        BINT1 FLASHPTR IfGetFieldValue     ( Get QNH field )
		        NOVAL EQUALNOT IT ::               ( IF it is NOT NOVAL )
		        		NOVAL BINT0                      ( THEN )
												  FLASHPTR IfSetFieldValue       ( Reset CA field )	
										;
										DUP UNIT % 20000 "m" umEND ;
										UM>? %0<> IT ::                    ( IF PA is > 20 km )
										  DROP                             ( DROP field value )
										  BINT1 FLASHPTR IfSetField        ( Keep field focus )
										  NOVAL                            ( Set PA field value to NOVAL )
										;		
		        TRUE                      ( Return external value )
		      ;
		      DUPTYPEEXT? case ::                  ( UNIT )
		        DUP ID PA EQUALNOT IT ::           ( IF the value has changed )
		          NOVAL BINT5
		            FLASHPTR IfSetFieldValue       ( Reset TA field )
		          NOVAL BINT6
		            FLASHPTR IfSetFieldValue       ( Reset DA field )
		          BINT1 FLASHPTR IfGetFieldValue   ( Get QNH field )
		          NOVAL EQUALNOT IT ::             ( IF it is NOT NOVAL )
		            NOVAL BINT0                    ( THEN )
		              FLASHPTR IfSetFieldValue     ( Reset CA field )
		          ;
		          DUP UNIT % 20000 "m" umEND ;
		          UM>? %0<> IT ::                  ( IF PA is > 20 km )
		          		DROP                           ( DROP field balue )
		          		BINT1 FLASHPTR IfSetField      ( Keep field focus )
		          		NOVAL                          ( Set PA field value to NOVAL )
		          ;
		        ;
		        TRUE                        ( Return external value )
		      ;
		      TRUE                          ( Message was handled )
		    ;
		    FALSE                           ( No other messages handled )
		  ;
		BINT22  BINT17  BINT43  BINT8     ( Position & size )
		BINT1                             ( Field type: TEXT )
		{ BINT0 BINT13 }                  ( Allowed type: REAL, UNIT )
		BINT2                             ( Decompile with stack appearance )
		"PRESSURE ALTITUDE"               ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecomile )
		MINUSONE                          ( Reset value )
		ID PA                             ( Initial value )
		
		( Field SAT definition )
  ' ::                                 ( Field message handler )
			   IfMsgGetFieldValue #=case ::     ( Get internal value )
			     DUPTYPEREAL? case ::           ( REAL )
			       "\B0C" umEND BINT3 EXTN      ( Add default deg C units )
			       NOVAL BINT5                  ( Reset TA field )
			         FLASHPTR IfSetFieldValue
			       NOVAL BINT6                  ( Reset DA field )
			         FLASHPTR IfSetFieldValue
			       TRUE                         ( Return external value )
			     ;
			     DUPTYPEEXT? case ::              ( UNIT )
			       DUP ID SAT EQUALNOT IT ::      ( IF the value has changed )
			         NOVAL BINT5                  ( Reset TA field )
			           FLASHPTR IfSetFieldValue
			         NOVAL BINT6                  ( Reset DA field )
			           FLASHPTR IfSetFieldValue
			       ;
			       TRUE                        ( Return external value )
			     ;
			     TRUE                          ( Message was handled )
			   ;
			   FALSE                           ( No other messages handled )
		  ;
		BINT85  BINT17  BINT45  BINT8     ( Position & size )
		BINT1                             ( Field type: TEXT )
		{ BINT0 BINT13 }                  ( Allowed type: REAL, UNIT )
		BINT2                             ( Decompile with stack appearance )
		"TRUE AIR TEMPERATURE (\B0C)"     ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		MINUSONE                          ( Reset value )
		ID SAT                            ( Initial value )
		
		( Field GNDST definition )
		' ::                                 ( Field message handler )
		    IfMsgGetFieldValue #=case ::     ( Get internal value )
		      DUPTYPEREAL? case ::           ( REAL )
		        "ft" umEND BINT3 EXTN        ( Add default feet units )
		        NOVAL BINT5                  ( Reset TA field )
		          FLASHPTR IfSetFieldValue
		        NOVAL BINT6                  ( Reset DA field )
		          FLASHPTR IfSetFieldValue
		        BINT6 FLASHPTR IfSetField    ( Set focus to CA )
		        TRUE                         ( Return external value )
		      ;
		      DUPTYPEEXT? case ::              ( UNIT )
		        DUP ID GNDST EQUALNOT IT ::    ( IF field value has changed )
		          NOVAL BINT5                  ( Reset TA field )
		            FLASHPTR IfSetFieldValue
		          NOVAL BINT6                  ( Reset DA field )
		            FLASHPTR IfSetFieldValue
		          BINT6 FLASHPTR IfSetField    ( Set focus to CA )
		        ;
		        TRUE                        ( Return external value )
		      ;
		      TRUE                          ( Message was handled )
		    ;
		    FALSE                           ( No other messages handled )
		  ;
		BINT26  BINT26  BINT39  BINT8     ( Position & size )
		BINT1                             ( Field type: TEXT )
		{ BINT0 BINT13 }                  ( Allowed type: REAL, UNIT )
		BINT2                             ( Decompile with stack appearance )
		"GROUND STATION ELEV. (FOR TALT)" ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		UNIT % 0 "ft" umEND ;             ( Reset Value )
		ID GNDST                          ( Initial Value )
		
		( Field TA definition )
		'DROPFALSE                        ( Field message handler )
		BINT22  BINT35  BINT108  BINT8    ( Position & size )
		BINT1                             ( Field type: TEXT )
		{ BINT0 BINT13 }                  ( Allowed type:  REAL, UNIT )
		BINT2                             ( Decompile with stack appearance )
		"TRUE ALTITUDE (OUTPUT)"          ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		MINUSONE                          ( Reset Value )
		ID TA                             ( Initial Value )
		
		( Field DA definition )
		'DROPFALSE                        ( Field message handler )
		BINT22  BINT44  BINT108  BINT8    ( Position & size )
		BINT1                             ( Field type: TEXT )
		{ BINT0 BINT13 }                  ( Allowed type: REAL, UNIT )
		BINT2                             ( Decompile with stack appearance )
		"DENSITY ALTITUDE (OUTPUT) "      ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		MINUSONE                          ( Reset Value )
		ID DA                             ( Initial value )
		
		BINT7 BINT7                       ( Label & field counts )
		'DROPFALSE                        ( Inform Box message handler )
		"ALTITUDE"                        ( Title )
		FLASHPTR IfMain                   ( Create and run the input form )
;
