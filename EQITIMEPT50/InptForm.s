RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\InptForm.s, part of the CPONT50.hpp project, created by <> on 26/06/2009 )
**********************************************************************
* NAME:          InptForm
* LIBRARY #:     329h = 809d
* AUTHOR:        Dan Pitic
* VERSION:       1.1
* DATE:          26 June 2009
* COMPATIBILITY: HP50
*                HP48 ( MUST use DoInputForm )
* DESCRIPTION:   Generates and displays the INPUT GUI for the library
*                application.
*
INCLUDE CPONT50.h
INCLUDE header.h
DEFINE FHEIGHT EIGHT              ( HP50 )
*DEFINE FHEIGHT NINE               ( HP48 )
NULLNAME InptForm
::
* Label definitions
  "TAS:"     COL1    LROW1
		"TC:"      COL12   LROW1
		"WD:"      COL1    LROW2
		"WS:"      COL12   LROW2
		"DIST:"    COL1    LROW3
		"FFLO:"    COL1    LROW4

* Field definitions
  ( Field TAS definition )
		'DROPFALSE                      ( Message handler )
		COL4 FROW1 FWIDTH7 FHEIGHT      ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"TRUE AIR SPEED"                ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		MINUSONE                        ( Reset value )
		ID TAS                          ( Initial value )
		
		( Field TC definition )
		'DROPFALSE                      ( Message handler )
		COL14.5 FROW1 FWIDTH7 FHEIGHT    ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"TRACK OUTBOUND FROM DEPARTURE" ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		MINUSONE                        ( Reset value )
		ID TC                           ( Initial value )
		
		( Field WD definition )
		'DROPFALSE                      ( Message handler )
		COL4 FROW2 FWIDTH7 FHEIGHT      ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"WIND DIRECTION (FROM)"         ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		MINUSONE                        ( Reset value )
		ID WD                           ( Initial value )
		
		( Field WS definition )
  'DROPFALSE                      ( Message handler )
		COL14.5 FROW2 FWIDTH7 FHEIGHT   ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"WIND SPEED"                    ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		MINUSONE                        ( Reset value )
		ID WS                           ( Initial value )		
		
		( Field DIST definition )
  'DROPFALSE                      ( Message handler )
		COL5 FROW3 FWIDTH16 FHEIGHT     ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"DISTANCE FROM DEP. TO DEST."   ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		MINUSONE                        ( Reset value )
		ID DIST                         ( Initial value )			
		
		( Field FFLO definition )
  'DROPFALSE                      ( Message handler )
		COL5 FROW4 FWIDTH16 FHEIGHT     ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"FUEL FLOW FROM FROM ETP"       ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		MINUSONE                        ( Reset value )
		ID FFLO                         ( Initial value )					
		
		SIX SIX                         ( #labels #fields )
		'DROPFALSE                      ( Message handler )
		"EQUI-TIME POINT - INPUT"       ( Title )
		FLASHPTR IfMain                 ( HP50 )
*		DoInputForm																					( HP48, HP50 )
;
