RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROAMB50\OutptOutbndForm.s, part of the ROAMB50.hpp project, created by <> on 24/06/2009 )
**********************************************************************
* NAME:          OutptOutbndForm
* LIBRARY #:     325h = 805d
* AUTHOR:        Dan Pitic
* VERSION:       1.4
* DATE:          25 June 2009
* COMPATIBILITY: HP50
*                HP48  ( Must use DoInputForm )
* DESCRIPTION:   Creates and displays the form to display the OUTPUT
*                results for the OUTBOUND leg of the library
*                application.
*
INCLUDE ROAAB50.h
INCLUDE Header.h
DEFINE FHEIGHT EIGHT               ( HP50 )
*DEFINE FHEIGHT NINE                ( HP48 )
NULLNAME OutptOutbndForm
::
* Label definitions
	 "R:"      COL1     LROW1
	 "T1:"     COL1     LROW2
	 "HDG1:"   COL1     LROW3
	 "GS1:"    COL1     LROW4
	
* Field definitions
  ( Field R definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW1 FWIDTH16 FHEIGHT	     ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"RADIUS OF ACTION (FROM DEP.)"   ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID R                             ( Reset value )
		ID R                             ( Initial value )
		
		( Field T1 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW2 FWIDTH16 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"TIME TO TURN (FROM DEP.)"       ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID T1                            ( Reset value )
		ID T1                            ( Initial value )
		
		( Field HDG1 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW3 FWIDTH16 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"HEADING OUTBOUND"               ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID HDG1                          ( Reset value )
		ID HDG1                          ( Initial value )
		
		( Field GS1 definition )
		'DROPFALSE                       ( Message handler )
		COL5 FROW4 FWIDTH16 FHEIGHT      ( Position & size )
		FTYPE_TEXT                       ( Field type TEXT )
		{ OBTYPE_REAL }                  ( Allowed types REAL )
		FMT_DFLT                         ( Decompile )
		"GROUND SPEED OUTBOUND"          ( Help string )
		MINUSONE                         ( Choose data N/A )
		MINUSONE                         ( Choose decompile N/A )
		ID GS1                           ( Reset value )
		ID GS1                           ( Initial value )
		
		FOUR FOUR                           ( #labels #fields )
		'DROPFALSE                          ( Message handler )
		"ROA - ALTERNATE BASE - OUTBOUND"   ( Title )
		FLASHPTR IfMain                     ( HP50 )
*		DoInputForm                         ( HP50, HP48 )
;
