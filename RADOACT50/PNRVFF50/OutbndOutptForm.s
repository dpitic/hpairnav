RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\OutbndOutptForm.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009 )
**********************************************************************
* NAME:          OutbndOutptForm
* LIBRARY #:     322h = 802d
* AUTHOR:        Dan Pitic
* DATE:          22 June 2009
* VERSION:       1.3
* COMPATIBILITY: HP50
*                HP48 ( Use DoInputForm )
* DESCRIPTION:   Generates and displays the OUTBOUND leg output form
*                for the library application.
*
INCLUDE PNRVF50.h
INCLUDE Header.h
INCLUDE informbox.h                ( HP50 )
DEFINE FHEIGHT EIGHT               ( HP50 )
NULLNAME OutbndOutptForm
::
* Label definitions
	 "R:"     COL1     LROW1
	 "DFMH:"  COL12    LROW1
	 "T1:"    COL1     LROW2
	 "HDG1:"  COL1     LROW3
	 "S1:"    COL12    LROW3
	 "SGR1:"  COL1     LROW4
	 
* Field definitions
  ( Field R definition )
		'DROPFALSE                       ( Message handler )
		COL3 FROW1 FWIDTH8 FHEIGHT       ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"POINT OF NO RETURN (FROM FIX)"  ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID R                             ( Reset value )
		ID R                             ( Initial value )
		
		( Field DFMH definition )
		'DROPFALSE                       ( Message handler )
		COL16 FROW1 FWIDTH6 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"RADIUS OF ACTION FROM HOME"     ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID DFMH                          ( Reset value )
		ID DFMH                          ( Initial value )
		
		( Field T1 definition )
		'DROPFALSE                       ( Message handler )
		COL3.5 FROW2 FWIDTH18 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"TIME TO TURN (AT PNR)"          ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID T1                            ( Reset value )
		ID T1                            ( Initial value )
		
		( Field HDG1 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW3 FWIDTH6 FHEIGHT       ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"HEADING OUTBOUND"               ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID HDG1                          ( Reset value )
		ID HDG1                          ( Initial value )
		
		( Field S1 definition )
		'DROPFALSE                       ( Message handler )
		COL14.5 FROW3 FWIDTH7 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"GROUND SPEED OUTBOUND"          ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID S1                            ( Reset value )
		ID S1                            ( Initial value )
		
		( Field SGR1 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW4 FWIDTH17 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"SPEC. GND. RANGE (OUTBOUND)"    ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID SGR1                          ( Reset value )
		ID SGR1                          ( Initial value )
		
		SIX SIX                          ( #labels #fields )
		'DROPFALSE                       ( Message handler )
		"PNR: OUTPUT 1/2 - OUTBOUND"     ( Title )
		FLASHPTR IfMain                  ( HP50 )
*		DoInputForm                      ( HP50, HP48 )	
;
