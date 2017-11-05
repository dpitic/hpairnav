RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTform.s, part of the ALT.hpp project, created by <> on 18/04/2009 )
**********************************************************************
* NAME:            ALTform
* AUTHOR:          Dan Pitic
* VERSION:         1.14
* DATE:            12 June 2009
* COMPATIBILITY:   HP50
* DESCRIPTION:     Displays INPUT and OUTPUT form for ALT.
* TODO:     1)     Make QNH field a combo field and allow user to
*                  choose 1013.25_mbar as the standard QNH and
*                  alternatively allow user to input or edit QNH
*
INCLUDE Header.H
INCLUDE informbox.h
INCLUDE ALT50.h
DEFINE FHEIGHT EIGHT  ( Redefine standard field height )
NULLNAME ALTform
::
* Label definitions (X pos    Y pos)
	 "CALT:"            COL1     LROW1
	 "QNH:"             COL12    LROW1
		"PALT:"            COL1     LROW2
	 "SAT:"             COL12    LROW2
	 "GNDST:"           COL1     LROW3
	 "TALT:"            COL1     LROW4
	 "DALT:"            COL1     LROW5
	 
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
	 COL4.5 FROW1 FWIDTH7 FHEIGHT      ( Position & size )
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }       ( Allowed type: REAL, UNIT )
		FMT_DFLT                          ( Decompile with stack appearance )	
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
	 COL15 FROW1 FWIDTH7 FHEIGHT       ( Position & size )
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }       ( Allowed type: REAL, UNIT )
	 FMT_DFLT                          ( Decompile with stack appearance )
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
		        DUP UNIT % 20000 "m" umEND ;
										UM>? %0<> ITE ::                   ( IF PA is > 20 km )
										  DROP                             ( DROP field value )
										  "ERROR: Alt.    > 20 km"         ( Display warning message and error beep )
										    FlashWarning
										  BINT1 FLASHPTR IfSetField        ( Keep field focus )
										  NOVAL                            ( Set PA field value to NOVAL )
*	           ID PA                            ( Keep original field value )
										;		
		        ::                                 ( ELSE )
		          NOVAL BINT5
		            FLASHPTR IfSetFieldValue         ( Reset TA field )
		          NOVAL BINT6
		            FLASHPTR IfSetFieldValue         ( Reset DA field )		
		          BINT1 FLASHPTR IfGetFieldValue     ( Get QNH field )
		          NOVAL EQUALNOT IT ::               ( IF it is NOT NOVAL )
		          		NOVAL BINT0                      ( THEN )
									  			  FLASHPTR IfSetFieldValue       ( Reset CA field )	
										  ;
										;
		        TRUE                      ( Return external value )
		      ;
		      DUPTYPEEXT? case ::                  ( UNIT )
		        DUP UNIT % 20000 "m" umEND ;
		          UM>? %0<> ITE ::                 ( IF PA is > 20 km )
		          		DROP                           ( DROP field value )
		          		"ERROR: Alt.    > 20 km"       ( Display warning message and error beep )
										      FlashWarning
		          		BINT1 FLASHPTR IfSetField      ( Keep field focus )
		          		NOVAL                          ( Set PA field value to NOVAL )
*	             ID PA                          ( Keep original field value )
		          ;
		          ::                               ( ELSE )
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
		            ;
		          ;
		        TRUE                        ( Return external value )
		      ;
		      TRUE                          ( Message was handled )
		    ;
		    FALSE                           ( No other messages handled )
		  ;
	 COL4.5 FROW2 FWIDTH7 FHEIGHT      ( Position & size )
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }       ( Allowed type: REAL, UNIT )
		FMT_DFLT                          ( Decompile with stack appearance )
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
	 COL15 FROW2 FWIDTH7 FHEIGHT       ( Position & size )
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }       ( Allowed type: REAL, UNIT )
		FMT_DFLT                          ( Decompile with stack appearance )
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
	 COL5 FROW3 FWIDTH9 FHEIGHT        ( Position & size )
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }       ( Allowed type: REAL, UNIT )
		FMT_DFLT                          ( Decompile with stack appearance )
		"GROUND STATION ELEV. (FOR TALT)" ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		UNIT % 0 "ft" umEND ;             ( Reset Value )
		ID GNDST                          ( Initial Value )
		
		( Field TA definition )
		'DROPFALSE                        ( Field message handler )
	 COL4.5 FROW4 FWIDTH18 FHEIGHT     ( Position & size )
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }       ( Allowed type:  REAL, UNIT )
		FMT_DFLT                          ( Decompile with stack appearance )
		"TRUE ALTITUDE (OUTPUT)"          ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		MINUSONE                          ( Reset Value )
		ID TA                             ( Initial Value )
		
		( Field DA definition )
		'DROPFALSE                        ( Field message handler )
	 COL4.5 FROW5 FWIDTH18 FHEIGHT     ( Position & size )
		FTYPE_TEXT                        ( Field type: TEXT )
		{ OBTYPE_REAL OBTYPE_UNIT }       ( Allowed type: REAL, UNIT )
		FMT_DFLT                          ( Decompile with stack appearance )
		"DENSITY ALTITUDE (OUTPUT) "      ( Help string )
		MINUSONE                          ( ChooseData N/A )
		MINUSONE                          ( ChooseDecompile )
		MINUSONE                          ( Reset Value )
		ID DA                             ( Initial value )
		
		SEVEN SEVEN                       ( Label & field counts )
		'DROPFALSE                        ( Inform Box message handler )
		"ALTITUDE"                        ( Title )
		FLASHPTR IfMain                   ( Create and run the input form )
;
