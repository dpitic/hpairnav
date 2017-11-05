RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\OutbndInptForm.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009 )
**********************************************************************
* NAME:          OutbndInptForm
* LIBRARY #:     322h = 802d
* AUTHOR:        Dan Pitic
* DATE:          22 June 2009
* VERSION:       1.3
* COMPATIBILITY: HP50
*                HP48 ( Use DoInputForm )
* DESCRIPTION:   Generates and displays the OUTBOUND leg input form
*                for the library application.
*
INCLUDE PNRVF50.h
INCLUDE Header.h
INCLUDE informbox.h                   ( HP50 )
DEFINE FHEIGHT EIGHT                  ( HP50 )
NULLNAME OutbndInptForm
::
* Label definitions
  "WD1:"     COL1      LROW1
		"WS1:"	    COL12     LROW1
		"TC1:"     COL1      LROW2
		"FF1:"     COL12     LROW2
		"TAS1:"    COL1      LROW3
		"DHOM:"    COL12     LROW3
		
* Field definitions
  ( Field WD1 definition )
		'DROPFALSE                          ( Message handler )
		COL4 FROW1 FWIDTH7 FHEIGHT          ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"WIND DIRECTION (FROM)"             ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		MINUSONE                            ( Reset value )
		ID WD1                              ( Initial value )
		
		( Field WS1 definition )
		'DROPFALSE                          ( Message handler )
		COL15 FROW1 FWIDTH7 FHEIGHT         ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"WIND SPEED"                        ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		MINUSONE                            ( Reset value )
		ID WS1                              ( Initial value )
		
		( Field TC1 definition )
		'DROPFALSE                          ( Message handler )
		COL4 FROW2 FWIDTH7 FHEIGHT          ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"TRACK OUTBOUND"                    ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		MINUSONE                            ( Reset value )
		ID TC1                              ( Initial value )
		
		( Field FF1 definition )
		'DROPFALSE                          ( Message handler )
		COL15 FROW2 FWIDTH7 FHEIGHT         ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"FUEL FLOW OUTBOUND"                ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		MINUSONE                            ( Reset value )
		ID FF1                              ( Initial value )
		
		( Field TAS1 definition )
		'DROPFALSE                          ( Message handler )
		COL5 FROW3 FWIDTH6 FHEIGHT        ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"TRUE AIR SPEED OUTBOUND"           ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		MINUSONE                            ( Reset value )
		ID TAS1                             ( Initial value )
		
		( Field DHOM definition )
		'DROPFALSE                          ( Message handler )
		COL16 FROW3 FWIDTH6 FHEIGHT       ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"DISTANCE FROM FIX BACK TO HOME"    ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		MINUSONE                            ( Reset value )
		ID DHOM                             ( Initial value )
		
		SIX SIX                             ( #labels #fields )
		'DROPFALSE                          ( Message handler )
		"PNR: INPUT 1/2 - OUTBOUND"         ( Title )
		FLASHPTR IfMain                     ( HP50 ONLY )
*		DoInputForm                         ( HP50, HP48 )		
;
