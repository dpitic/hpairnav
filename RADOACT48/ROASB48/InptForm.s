RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\InptForm.s, part of the ROASB50.hpp project, created by <> on 23/06/2009 )
**********************************************************************
* NAME:          InptForm
* AUTHOR:        Dan Pitic
* LIBRARY #:     323h = 803d
* VERSION:       1.4
* DATE:          22 June 2009
* COMPATIBILITY: HP50
*                HP48  ( Requires DoInputForm )
* DESCRIPTION:   Generates the INPUT form to enter the INPUT arguments
*                for the library application.
*
INCLUDE ROASB48.h
INCLUDE Header.h
*DEFINE FHEIGHT EIGHT             ( HP50 )
DEFINE FHEIGHT NINE              ( HP48 )
NULLNAME InptForm
::
* Label definitions
  "WD:"     COL1     LROW1
		"WS:"     COL12    LROW1
		"TC1:"    COL1     LROW2
		"T:"      COL12    LROW2
		"TAS:"    COL1     LROW3
		"DHOM:"   COL12    LROW3
		
* Field definitions
  ( Field WD definition )
		'DROPFALSE                    ( Message handler )
		COL4 FROW1 FWIDTH7 FHEIGHT    ( Position & size )
		FTYPE_TEXT                    ( Field type TEXT )
		{ OBTYPE_REAL }               ( Allowed types REAL )
		FMT_DFLT                      ( Decompile )
		"WIND DIRECTION (FROM)"       ( Help string )
		MINUSONE                      ( Choose data N/A )
		MINUSONE                      ( Choose decompile N/A )
		MINUSONE                      ( Reset value )
		ID WD                         ( Initial value )
		
		( Field WS definition )
		'DROPFALSE                    ( Message handler )
		COL14.5 FROW1 FWIDTH7 FHEIGHT   ( Position & size )
		FTYPE_TEXT                    ( Field type TEXT )
		{ OBTYPE_REAL }               ( Allowed types REAL )
		FMT_DFLT                      ( Decompile )
		"WIND SPEED"                  ( Help string )
		MINUSONE                      ( Choose data N/A )
		MINUSONE                      ( Choose decompile N/A )
		MINUSONE                      ( Reset value )
		ID WS                         ( Initial value )
		
		( Field TC1 definition )
		'DROPFALSE                    ( Message handler )
		COL4 FROW2 FWIDTH7 FHEIGHT    ( Position & size )
		FTYPE_TEXT                    ( Field type TEXT )
		{ OBTYPE_REAL }               ( Allowed types REAL )
		FMT_DFLT                      ( Decompile )
		"TRACK OUTBOUND"              ( Help string )
		MINUSONE                      ( Choose data N/A )
		MINUSONE                      ( Choose decompile N/A )
		MINUSONE                      ( Reset value )
		ID TC1                        ( Initial value )
		
		( Field T definition )
		'DROPFALSE                    ( Message handler )
		COL14.5 FROW2 FWIDTH7 FHEIGHT   ( Position & size )
		FTYPE_TEXT                    ( Field type TEXT )
		{ OBTYPE_REAL }               ( Allowed types REAL )
		FMT_DFLT                      ( Decompile )
		"SAFE ENDURANCE (HOURS)"      ( Help string )
		MINUSONE                      ( Choose data N/A )
		MINUSONE                      ( Choose decompile N/A )
		MINUSONE                      ( Reset value )
		ID T                          ( Initial value )
		
		( Field TAS definition )
		'DROPFALSE                    ( Message handler )
		COL4 FROW3 FWIDTH7 FHEIGHT    ( Position & size )
		FTYPE_TEXT                    ( Field type TEXT )
		{ OBTYPE_REAL }               ( Allowed types REAL )
		FMT_DFLT                      ( Decompile )
		"TRUE AIR SPEED"              ( Help string )
		MINUSONE                      ( Choose data N/A )
		MINUSONE                      ( Choose decompile N/A )
		MINUSONE                      ( Reset value )
		ID TAS                        ( Initial value )
		
		( Field DHOM definition )
		'DROPFALSE                    ( Message handler )
		COL16 FROW3 FWIDTH6 FHEIGHT   ( Position & size )
		FTYPE_TEXT                    ( Field type TEXT )
		{ OBTYPE_REAL }               ( Allowed types REAL )
		FMT_DFLT                      ( Decompile )
		"DISTANCE FROM FIX BACK TO HOME"  ( Help string )
		MINUSONE                      ( Choose data N/A )
		MINUSONE                      ( Choose decompile N/A )
		MINUSONE                      ( Reset value )
		ID DHOM                       ( Initial value )
		
		SIX SIX                       ( #labels #fields )
		'DROPFALSE                    ( Message handler )
		"ROA - SAME BASE - INPUT"     ( Title )
*		FLASHPTR IfMain               ( HP50 )
		DoInputForm                   ( HP48, HP58 )			
;
