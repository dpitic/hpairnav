RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\OutptForm.s, part of the CPONT50.hpp project, created by <> on 26/06/2009 )
**********************************************************************
* NAME:          OutptForm
* LIBRARY #:     329h = 809d
* AUTHOR:        Dan Pitic
* VERSION:       1.1
* DATE:          26 June 2009
* COMPATIBILITY: HP50
*                HP48 ( MUST use DoInputForm )
* DESCRIPTION:   Generates and displays the OUTPUT GUI for the library
*                application.
*
INCLUDE CPONT48.h
INCLUDE header.h
*DEFINE FHEIGHT EIGHT              ( HP50 )
DEFINE FHEIGHT NINE               ( HP48 )
NULLNAME OutptForm
::
* Label definitions
  "DIST:"     COL1    LROW1
		"TIME:"     COL1    LROW2
		"BURN:"     COL1    LROW3

* Field definitions
  ( Field DIST definition )
		'DROPFALSE                         ( Message handler )
		COL5 FROW1 FWIDTH17 FHEIGHT        ( Position & size )
		FTYPE_TEXT                         ( Field type TEXT )
		{ OBTYPE_REAL }                    ( Allowed types REAL )
		FMT_DFLT                           ( Decompile )
		"DISTANCE TO ETP FROM DEP. POINT"  ( Help string )
		MINUSONE                           ( Choose data N/A )
		MINUSONE                           ( Choose decompile N/A )
		ID CPDIS                           ( Reset value )
		ID CPDIS                           ( Initial value )
		
		( Field TIME definition )
		'DROPFALSE                      ( Message handler )
		COL5 FROW2 FWIDTH17 FHEIGHT     ( Position & size )
		FTYPE_TEXT                      ( Field type TEXT )
		{ OBTYPE_REAL }                 ( Allowed types REAL )
		FMT_DFLT                        ( Decompile )
		"TIME FROM ETP TO EITHER POINT" ( Help string )
		MINUSONE                        ( Choose data N/A )
		MINUSONE                        ( Choose decompile N/A )
		ID CPTIM                        ( Reset value )
		ID CPTIM                        ( Initial value )
		
		( Field BURN definition )
		'DROPFALSE                             ( Message handler )
		COL5 FROW3 FWIDTH17 FHEIGHT            ( Position & size )
		FTYPE_TEXT                             ( Field type TEXT )
		{ OBTYPE_REAL }                        ( Allowed types REAL )
		FMT_DFLT                               ( Decompile )
		"FUEL BURN FM ETP TO EITHER PT"           ( Help string )
		MINUSONE                               ( Choose data N/A )
		MINUSONE                               ( Choose decompile N/A )
		ID FBRN                                ( Reset value )
		ID FBRN                                ( Initial value )	
		
		THREE THREE                     ( #labels #fields )
		'DROPFALSE                      ( Message handler )
		"EQUI-TIME POINT - OUTPUT"       ( Title )
*		FLASHPTR IfMain                 ( HP50 )
		DoInputForm																					( HP48, HP50 )
;
