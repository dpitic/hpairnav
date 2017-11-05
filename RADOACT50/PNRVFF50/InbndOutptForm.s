RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\PNRVFF50\InbndOutptForm.s, part of the PNRVF50.hpp project, created by <> on 22/06/2009 )

INCLUDE PNRVF50.h
INCLUDE Header.h
INCLUDE informbox.h                ( HP50 )
*INCLUDE GUI.H                      ( HP48 )
DEFINE FHEIGHT EIGHT               ( HP50 )
NULLNAME InbndOutptForm
::
* Label definitions
	 "HDG2:"     COL1     LROW1
	 "S2:"       COL1     LROW2
	 "SGR2:"     COL1     LROW3
	 
* Field definitions
  ( Field HDG2 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW1 FWIDTH17 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"HEADING INBOUND"                ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID HDG2                          ( Reset value )
		ID HDG2                          ( Initial value )
		
		( Field S2 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW2 FWIDTH17 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"GROUND SPEED INBOUND"           ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID S2                            ( Reset value )
		ID S2                            ( Initial value )
		
		( Field SGR2 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW3 FWIDTH17 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"SPEC. GND. RANGE (INBOUND)"     ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID SGR2                          ( Reset value )
		ID SGR2                          ( Initial value )
		
		THREE THREE                      ( #labels #fields )
		'DROPFALSE                       ( Message handler )
		"PNR: OUTPUT 2/2 - INBOUND"      ( Title )
		FLASHPTR IfMain                  ( HP50 )
*		DoInputForm                      ( HP48, HP50 )	
;
