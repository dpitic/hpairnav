RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\OutptForm.s, part of the ROASB50.hpp project, created by <> on 23/06/2009 )
**********************************************************************
* NAME:          OutptForm
* AUTHOR:        Dan Pitic
* LIBRARY #:     323h = 803d
* VERSION:       1.4
* DATE:          22 June 2009
* COMPATIBILITY: HP50
*                HP48  ( Requires DoInputForm )
* DESCRIPTION:   Generates the OUTPUT form to display the results of
*                the library application.
*
INCLUDE ROASB50.h
INCLUDE Header.h
INCLUDE informbox.h
DEFINE FHEIGHT EIGHT               ( HP50 )
*DEFINE FHEIGHT NINE                ( HP48 )
NULLNAME OutptForm
::
* Label definitions
	 "T1:"     COL1     LROW1
	 "R:"      COL12    LROW1
	 "DFMH:"   COL1     LROW2
	 "HDG1:"   COL1     LROW3
	 "S1:"     COL12    LROW3
	 "HDG2:"   COL1     LROW4
	 "S2:"     COL12    LROW4
	 
* Field definitions
  ( Field T1 definition )
		'DROPFALSE                      ( Message handler )
		COL3.5 FROW1 FWIDTH7 FHEIGHT      ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"TIME TO TURN (FROM FIX)"       ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		ID T1                           ( Reset value )
		ID T1                           ( Initial value )
		
		( Field R definition )
		'DROPFALSE                      ( Message handler )
		COL14 FROW1 FWIDTH8 FHEIGHT     ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"RADIUS OF ACTION (FROM FIX)"   ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		ID R                            ( Reset value )
		ID R                            ( Initial value )
		
		( Field DFMH definition )
		'DROPFALSE                      ( Message handler )
		COL5 FROW2 FWIDTH17 FHEIGHT     ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"RADIUS OF ACTION (FROM HOME)"  ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		ID DFMH                         ( Reset value )
		ID DFMH                         ( Initial value )
		
		( Field HDG1 definition )
		'DROPFALSE                      ( Message handler )
		COL4.5 FROW3 FWIDTH6 FHEIGHT      ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"HEADING OUTBOUND"              ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		ID HDG1                         ( Reset value )
		ID HDG1                         ( Initial value )
		
		( Field S1 definition )
		'DROPFALSE                      ( Message handler )
		COL14.5 FROW3 FWIDTH7 FHEIGHT   ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"GROUND SPEED OUTBOUND"         ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		ID S1                           ( Reset value )
		ID S1                           ( Initial value )
		
		( Field HDG2 definition )
		'DROPFALSE                      ( Message handler )
		COL4.5 FROW4 FWIDTH6 FHEIGHT      ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"HEADING INBOUND"               ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		ID HDG2                         ( Reset value )
		ID HDG2                         ( Initial value )
		
		( Field S2 definition )
		'DROPFALSE                      ( Message handler )
		COL14.5 FROW4 FWIDTH7 FHEIGHT     ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"GROUND SPEED INBOUND"          ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		ID S2                           ( Reset value )
		ID S2                           ( Initial value )
		
		SEVEN SEVEN                     ( #labels #fields )
		'DROPFALSE                      ( Message handler )
		"ROA - SAME BASE - OUTPUT"      ( Title )
		FLASHPTR IfMain                 ( HP50 )
*		DoInputForm                     ( HP48, HP50 )	
;
