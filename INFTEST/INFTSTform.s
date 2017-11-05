RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTEST\INFTSTform.s, part of the INFTEST.hpp project, created by <> on 14/04/2009 )
*INCLUDE informbox.h
INCLUDE INFTEST.h
NULLNAME INFTSTform
::
* Label definitions (X pos      Y pos)
		"PA:"													 BINT1      BINT9
		"T1:"              BINT1      BINT18
		
* Field definitions
	 ( Field PA definition [#BINT0] )
	 ' Field_PA_MsgHandler
	 BINT14  BINT8  BINT110  BINT8    ( Position & size )
	 BINT1                             ( Field type: TEXT )
*	 BINT2                            ( Field type: COMBO )
	 { BINT0 BINT13 }                 ( Allowed types: REAL, UNIT )
	 BINT2																											 ( Decompile with stack appearance )
	 "PRESSURE ALTITUDE"              ( Help string )
	 MINUSONE                         ( ChooseData N/A )
*	 {
*	 { "ZERO" UNIT % 0 "ft" umEND ; }
*	 { "STD" UNIT % 1013.25 CHR_m "bar" umP umEND ; }
*	 }
	 MINUSONE                         ( ChooseDecompile )
*	 BINT2                            ( ChooseDecompile )
	 MINUSONE                         ( Reset value )
	 ID PA                            ( Initial value )
	 
	 ( Field T1 definition )
	 ' ::
*	     IfMsgGetFieldValue #=case ::
	      BINT4 #=case ::
        DUPTYPEREAL? case ::            ( Real object )
										"\B0C" umEND BINT3 EXTN       ( Add deg C units )
										NOVAL BINT0                   ( Reset other field )
          FLASHPTR IfSetFieldValue      ( with NOVAL )
          BINT0 FLASHPTR IfSetField     ( Keep field focus )
										TRUE                          ( Return external value )
								;
								DUPTYPEEXT? case ::             ( Unit object )
								  DUP ID T1 EQUALNOT IT ::      ( IF changed from init. value )
								    NOVAL BINT0                 ( reset other field )
            FLASHPTR IfSetFieldValue    ( with NOVAL )
            BINT0 FLASHPTR IfSetField
								  ;
								  TRUE                          ( Return external value )
								;	
						  TRUE		
		    ;
		    FALSE
		  ;
*	 ' ::                                  ( Message handler )
*	     IfMsgGetFieldValue OVER#=case ::
*	       DROP
*	       ::
*	         CK1&Dispatch
*	           	BINT1 ::
*	           	  "\B0C" umEND BINT3 EXTN ;
*	           	BINT6 :: NOP ;
*	           	BINT14 :: NOP ;
*	           	BINT0 :: NOP ;
*	       ;
*	       DUP
*	       ' LAM FldVal_T1 STO
*	       TRUE
*	     ;
*	     IfMsgSetFieldValue OVER#=case ::
*	       DROP
*	     		DUP NOVAL EQUAL case ::
*	     		  TRUE
*	     		;	
*	       DUP LAM FldVal_T1 EQUALNOT IT ::
*	         NOVAL BINT0
*	         FLASHPTR IfSetFieldValue
*	         BINT1 FLASHPTR IfSetField
*	       ;
*	       TRUE
*	     ;
*	     DROPFALSE
*	   ;
	 BINT14  BINT17  BINT45  BINT8    ( Position & size )
	 BINT1                            ( Field type: TEXT )
	 { BINT0 BINT13 }                 ( Allowed types: REAL, UNIT )
	 BINT2                            ( Decompile with stack appearance )
	 "STATIC AIR TEPM. (TRUE \B0C)"   ( Help string )
	 MINUSONE																							  ( ChooseData N/A )
	 MINUSONE                         ( ChooseDecompile )
	 MINUSONE                         ( Reset value )
	 ID T1                            ( Initial value )
	 
	 BINT2  BINT2																					( Label and field counts )
	 
	 'DROPFALSE                       ( Inform Box message handler )
	 "ISA"                            ( Title )
	 FLASHPTR IfMain                  ( Create the input form )
;
