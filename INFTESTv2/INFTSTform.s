RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTEST\INFTSTform.s, part of the INFTEST.hpp project, created by <> on 14/04/2009 )
INCLUDE informbox.h
INCLUDE INFTEST.h
NULLNAME INFTSTform
::
* Label definitions (X pos      Y pos)
		"PA:"													 BINT1      BINT9
*		"T1:"              BINT1      BINT18
		
* Field definitions
	 ( Field PA definition [#BINT0] )
*	 ' Field_PA_MsgHandler
	 'DROPFALSE
	 BINT14  BINT8  BINT110  BINT8    ( Position & size )
*	 BINT2                            ( Field type: COMBO )
	 BINT1
	 { BINT0 BINT13 }                 ( Allowed types: REAL, UNIT )
*	 BINT2 																											( Decompile with stack appearance )
	 ' FldPAChDecomp
	 "PRESSURE ALTITUDE"              ( Help string )
	 MINUSONE                         ( ChooseData N/A )
*		{
*	 UNIT % 0 "ft" umEND ;
*	 UNIT % 1013.25 CHR_m "bar" umP umEND ;
*	 }
*	 MINUSONE                         ( ChooseDecompile )
	 BINT2                            ( ChooseDecompile )
	 MINUSONE                         ( Reset value )
	 ID PA                            ( Initial value )
	 
	 ( Field T1 definition )
*	 'DROPFALSE
*	 BINT14  BINT17  BINT45  BINT8    ( Position & size )
*	 BINT1                            ( Field type: TEXT )
*	 { BINT0 BINT13 }                 ( Allowed types: REAL, UNIT )
*	 BINT2                            ( Decompile with stack appearance )
*	 "STATIC AIR TEPM. (TRUE \B0C)"   ( Help string )
*	 MINUSONE																							  ( ChooseData N/A )
*	 MINUSONE                         ( ChooseDecompile )
*	 MINUSONE                         ( Reset value )
*	 ID T1                            ( Initial value )
	 
*	 BINT2  BINT2																					( Label and field counts )
	 BINT1 BINT1
	 
	 'DROPFALSE                       ( Inform Box message handler )
	 "ISA"                            ( Title )
	 FLASHPTR IfMain                  ( Create the input form )
*	 2DROP                    ( DROP 2 BINTS from COMBO field )
;
