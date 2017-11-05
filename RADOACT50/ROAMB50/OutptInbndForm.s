RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\OutptInbndForm.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009 )
**********************************************************************
* NAME:          OutptOutbndForm
* LIBRARY #:     324h = 804d
* AUTHOR:        Dan Pitic
* VERSION:       1.6
* DATE:          24 June 2009
* COMPATIBILITY: HP50
*                HP48  ( Must use DoInputForm )
* DESCRIPTION:   Creates and displays the form to display the OUTPUT
*                results for the INBOUND leg of the library
*                application.
*
INCLUDE ROAMB50.h
INCLUDE Header.h
DEFINE FHEIGHT EIGHT               ( HP50 )
*DEFINE FHEIGHT NINE                ( HP48 )
NULLNAME OutptInbndForm
::
* Label definitions
	 "T2:"     COL1     LROW1
	 "HDG2:"   COL1     LROW2
	 "TC2:"    COL1     LROW3
	 "GS2:"    COL1     LROW4
	 "MC2:"    COL1     LROW5
	
* Field definitions
  ( Field T2 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW1 FWIDTH16 FHEIGHT	     ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"TIME INBOUND (FROM TURN)"       ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID T2                            ( Reset value )
		ID T2                            ( Initial value )
		
		( Field HDG2 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW2 FWIDTH16 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"HEADING INBOUND"                ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID HDG2                          ( Reset value )
		ID HDG2                          ( Initial value )
		
		( Field TC2 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW3 FWIDTH16 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"TRACK INBOUND"                  ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID TC2                           ( Reset value )
		ID TC2                           ( Initial value )
		
		( Field GS2 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW4 FWIDTH16 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"GROUND SPEED INBOUND"           ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID GS2                           ( Reset value )
		ID GS2                           ( Initial value )
		
		( Field MC2 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW5 FWIDTH16 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"MILES ON COURSE INBOUND"        ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID MC2                           ( Reset value )
		ID MC2                           ( Initial value )
		
		FIVE FIVE                        ( #labels #fields )
		'DROPFALSE                       ( Message handler )
		"ROA - MOVING BASE - INBOUND"    ( Title )
		FLASHPTR IfMain                  ( HP50 )
*		DoInputForm                      ( HP50, HP48 )
;
