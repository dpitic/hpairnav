RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\InbndInptForm.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009 )
**********************************************************************
* NAME:          InbndInptForm
* LIBRARY #:     322h = 802d
* AUTHOR:        Dan Pitic
* DATE:          22 June 2009
* VERSION:       1.3
* COMPATIBILITY: HP50
*                HP48 ( Use DoInputForm )
* DESCRIPTION:   Generates and displays the INBOUND leg input form
*                for the library application.
*
INCLUDE PNRVF48.h
INCLUDE Header.h
*INCLUDE informbox.h                  ( HP50 )
*DEFINE FHEIGHT EIGHT                 ( HP50 )
DEFINE FHEIGHT NINE                  ( HP48 )
NULLNAME InbndInptForm
::
* Label definitions
	 "WD2:"     COL1     LROW1
	 "WS2:"     COL12    LROW1
	 "FF2:"     COL1     LROW2
	 "TAS2:"    COL12    LROW2
	 "FLTFL:"   COL1     LROW3
	 
* Field definitions
	 ( Field WD2 definition )
  'DROPFALSE                        ( Message handler )
		COL4 FROW1 FWIDTH7 FHEIGHT        ( Position & size )
		FTYPE_TEXT                        ( Field type TEXT )
		{ OBTYPE_REAL }                   ( Allowed types REAL )
		FMT_DFLT                          ( Decompile )
		"WIND DIRECTION (FROM)"           ( Help string )
		MINUSONE                          ( Choose data N/A )
		MINUSONE                          ( Choose decompile N/A )
		ID WD1                            ( Reset value )
		ID WD2                            ( Initial value )
		
		( Field WS2 definition )
		'DROPFALSE                        ( Message handler )
		COL15 FROW1 FWIDTH7 FHEIGHT       ( Position & size )
		FTYPE_TEXT                        ( Field type TEXT )
		{ OBTYPE_REAL }                   ( Allowed types REAL )
		FMT_DFLT                          ( Decompile )
		"WIND SPEED"                      ( Help string )
		MINUSONE                          ( Choose data N/A )
		MINUSONE                          ( Choose decompile N/A )
		ID WS1                            ( Reset value )
		ID WS2                            ( Initial value )
		
		( Field FF2 definition )
		'DROPFALSE                        ( Message handler )
		COL4 FROW2 FWIDTH7 FHEIGHT        ( Position & size )
		FTYPE_TEXT                        ( Field type TEXT )
		{ OBTYPE_REAL }                   ( Allowed types REAL )
		FMT_DFLT                          ( Decompile )
		"FUEL FLOW INBOUND"               ( Help string )
		MINUSONE                          ( Choose data N/A )
		MINUSONE                          ( Choose decompile N/A )
		ID FF1                            ( Reset value )
		ID FF2                            ( Initial value )
		
		( Field TAS2 definition )
		'DROPFALSE                        ( Message handler )
		COL15.5 FROW2 FWIDTH6 FHEIGHT       ( Position & size )
		FTYPE_TEXT                        ( Field type TEXT )
		{ OBTYPE_REAL }                   ( Allowed types REAL )
		FMT_DFLT                          ( Decompile )
		"TRUE AIR SPEED INBOUND"          ( Help string )
		MINUSONE                          ( Choose data N/A )
		MINUSONE                          ( Choose decompile N/A )
		ID TAS1                           ( Reset value )
		ID TAS2                           ( Initial value )
		
		( Field FLTFL definition )
		'DROPFALSE                        ( Message handler )
		COL5.5 FROW3 FWIDTH16 FHEIGHT        ( Position & size )
		FTYPE_TEXT                        ( Field type TEXT )
		{ OBTYPE_REAL }                   ( Allowed types REAL )
		FMT_DFLT                          ( Decompile )
		"SAFE FUEL (QUANTITY)"            ( Help string )
		MINUSONE                          ( Choose data N/A )
		MINUSONE                          ( Choose decompile N/A )
		MINUSONE                          ( Reset value )
		ID FLTFL                          ( Initial value )
		
		FIVE FIVE                         ( #labels #fields )
		'DROPFALSE                        ( Message handler )
		"PNR: INPUT 2/2 - INBOUND"        ( Title )
*		FLASHPTR IfMain                   ( HP50 )
		DoInputForm                       ( HP50, HP48 )
;
