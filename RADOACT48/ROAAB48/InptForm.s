RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\InptForm.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009 )
**********************************************************************
* NAME:          InptForm
* LIBRARY #:     325h = 805d
* AUTHOR:        Dan Pitic
* VERSION:       1.4
* DATE:          25 June 2009
* COMPATIBILITY: HP50
*                HP48  ( Must use DoInputForm )
* DESCRIPTION:   Creates and displays the form to accept INPUT
*                arguments for the library application.
*
INCLUDE ROAAB48.h
INCLUDE Header.h
*DEFINE FHEIGHT EIGHT               ( HP50 )
DEFINE FHEIGHT NINE                ( HP48 )
NULLNAME InptForm
::
* Label definitions
	 "WD:"     COL1     LROW1
	 "WS:"     COL12    LROW1
	 "BRG:"    COL1     LROW2
	 "DIST:"   COL12    LROW2
	 "TAS:"    COL1     LROW3
	 "TC1:"    COL12    LROW3
	 "T:"      COL1     LROW4
	 
* Field definitions
  ( Field WD definition )
		'DROPFALSE                       ( Message handler )
		COL4 FROW1 FWIDTH7 FHEIGHT	      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"WIND DIRECTION (FROM)"          ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		MINUSONE                         ( Reset value )
		ID WD                            ( Initial value )
		
		( Field WS definition )
		'DROPFALSE                       ( Message handler )
		COL15.5 FROW1 FWIDTH6 FHEIGHT    ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"WIND SPEED"                     ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		MINUSONE                         ( Reset value )
		ID WS                            ( Initial value )
		
		( Field BRG definition )
		'DROPFALSE                       ( Message handler )
		COL4 FROW2 FWIDTH7 FHEIGHT       ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"BEARING TO ALTERNATE"           ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		MINUSONE                         ( Reset value )
		ID BRG                           ( Initial value )
		
		( Field DIST definition )
		'DROPFALSE                       ( Message handler )
		COL15.5 FROW2 FWIDTH6 FHEIGHT    ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"DISTANCE TO ALTERNATE"          ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		MINUSONE                         ( Reset value )
		ID DIST                          ( Initial value )
		
		( Field TAS definition )
		'DROPFALSE                       ( Message handler )
		COL4 FROW3 FWIDTH7 FHEIGHT       ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"TRUE AIR SPEED"                 ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		MINUSONE                         ( Reset value )
		ID TAS                           ( Initial value )
		
		( Field TC1 definition )
		'DROPFALSE                       ( Message handler )
		COL15.5 FROW3 FWIDTH6 FHEIGHT    ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"TRACK OUTBOUND"                 ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		MINUSONE                         ( Reset value )
		ID TC1                           ( Initial value )
		
		( Field T definition )
		'DROPFALSE                       ( Message handler )
		COL4 FROW4 FWIDTH7 FHEIGHT       ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"SAFE ENDURANCE (HOURS)"         ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		MINUSONE                         ( Reset value )
		ID T                             ( Initial value )
		
		SEVEN SEVEN                      ( #labels #fields )
		'DROPFALSE                       ( Message handler )
		"ROA - ALTERNATE BASE - INPUT"   ( Title )
*		FLASHPTR IfMain                  ( HP50 )
		DoInputForm                      ( HP50, HP48 )
;
