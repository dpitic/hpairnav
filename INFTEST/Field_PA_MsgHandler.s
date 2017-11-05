RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTEST\Field_PA_MsgHandler.s, part of the INFTEST.hpp project, created by <> on 25/04/2009 )

INCLUDE INFTEST.h
NULLNAME Field_PA_MsgHandler
::                                  ( Message handler )
*	     IfMsgGetFieldValue OVER#=case ::
*	      BINT4 OVER#=case ::
*	       DROP
*	      IfMsgGetFieldValue #=case ::
	       BINT4 #=case ::
*	       DUP                             ( Internal field value )
*								' ID XINT1 STO
								
        DUPTYPEREAL? case ::            ( Real object )
										"ft" umEND BINT3 EXTN         ( Add feet units )
										NOVAL BINT1                   ( Reset other field )
          FLASHPTR IfSetFieldValue      ( with NOVAL )
          BINT1 FLASHPTR IfSetField     ( Keep field focus )
										TRUE                          ( Return external value )
								;
								DUPTYPEEXT? case ::             ( Unit object )
								  DUP ID PA EQUALNOT IT ::      ( IF changed from init. value )
								    NOVAL BINT1                 ( reset other field )
            FLASHPTR IfSetFieldValue    ( with NOVAL )
            BINT1 FLASHPTR IfSetField
								  ;
								  TRUE                          ( Return external value )
								;
								DUPTYPELIST? case ::
								  INCOMPDROP
								  SWAPDROP
										TRUE								
								;
								DUPTYPEIDNT? case ::
								  TRUE
								;
																
*								IfMsgChoose OVER#=case ::
*	        BINT17 OVER#=case ::
*								  DROP
*								  DROP
*								  "ENTER NUMBER"
*								  {
*								  { "ONE" % 1 }
*								  { "TWO" % 2 }
*								  }
*								  %1
*								  FLASHPTR sysCHOOSE_
*								  FALSE
*								;

*	     		::			
*	         CK&DISPATCH0
*								    BINT1 ::                     ( Real number )
*														"ft" umEND BINT3 EXTN      ( Add feet units )
*														NOVAL BINT1                ( Reset other field with )
*														FLASHPTR IfSetFieldValue   ( NOVAL )
* 								   ;
*								    BINT14 ::                    ( Unit object )
*	             DUP ID PA EQUALNOT IT ::   ( IF changed from init. value )
*	               NOVAL BINT1              ( reset other field with )
*																FLASHPTR IfSetFieldValue ( NOVAL )
*	             ;
*								    ;
*								    BINT0 ::                     ( Any object - no change )
*								      NOP                        ( Allows GLOBAL ID & NOVAL )
*								    ;
*								;
								
*	       DUP                              ( Duplicate result )
*								' LAM FldVal_PA STO              ( STO in LAM FldVAl_PA )
*								' ID XEXT1 STO
	       TRUE                             ( Message was handled )
	     ;
*	     IfMsgSetFieldValue OVER#=case ::
*	     		DROP
*	     		DUP
*	     		' ID XEXT2 STO

*	     		::
*								  CK1&Dispatch						
*								    BINT1 ::                     ( Real number )
*														"ft" umEND BINT3 EXTN ;    ( Add feet units )
*								    BINT6 :: NOP ;               ( Global ID - no change )
*								    BINT14 :: NOP ;              ( Unit object - no change )
*								    BINT0 :: NOP ;               ( Any object - no change )
*								;	     		
*	     		DUP
*	     		' ID XINT2 STO
	     		
	     		
*	     		DUP NOVAL EQUAL case ::
*	     		  TRUE
*	     		;
*	       DUP LAM FldVal_PA EQUALNOT case :: ( If there is a change in )
*								  NOVAL BINT1                      ( the field value, then )
*								  FLASHPTR IfSetFieldValue         ( Blank the other field )
*								  TRUE
*								;
*	     		TRUE                             ( Message was handled )
*	     ;
*	     DROPFALSE                          ( Other msgs. not handled )
	     FALSE
;
