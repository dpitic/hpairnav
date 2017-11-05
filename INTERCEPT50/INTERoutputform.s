RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTERoutputform.s, part of the INTERCEPT50.hpp project, created by <> on 20/06/2009 )
**********************************************************************
* NAME:          INTERoutputform
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          20 June 2009
* LIBRARY #:     321h = 801d
* COMPATIBILITY: HP50
*                HP48 ( Comment out IfMain )
* DESCRIPTION:   Generates the OUTPUT form for the interception
*                problem
*
INCLUDE INTERCEPT50.h
INCLUDE Header.h
INCLUDE informbox.h                   ( HP50 ONLY )
*INCLUDE GUI.h                         ( HP48 ONLY )
DEFINE FHEIGHT EIGHT                  ( HP50 ONLLY )
NULLNAME INTERoutputform
::
* Label definitions
  "HDG:"     COL1     LROW1
		"TC:"      COL1     LROW2
		"GS:"      COL1     LROW3
		"ETI:"     COL1     LROW4
		
* Field definitions
  ( Field HDG definition )
		'DROPFALSE                          ( Message handler )
		COL4 FROW1 FWIDTH18 FHEIGHT         ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"HEADING TO INTERCEPT"              ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		ID HDG                              ( Reset value )
		ID HDG                              ( Initial value )
		
		( Field TC definition )
		'DROPFALSE                          ( Message handler )
		COL4 FROW2 FWIDTH18 FHEIGHT         ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"TRACK TO INTERCEPT"                ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		ID TC                               ( Reset value )
		ID TC                               ( Initial value )
		
		( Field GS definition )
		'DROPFALSE                          ( Message handler )
		COL4 FROW3 FWIDTH18 FHEIGHT         ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"GROUND SPEED TO INTERCEPT"         ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		ID GS                               ( Reset value )
		ID GS                               ( Initial value )
		
		( Field ETI definition )
		'DROPFALSE                          ( Message handler )
		COL4 FROW4 FWIDTH18 FHEIGHT         ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"TIME TO INTERCEPT (HRS)"           ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		ID ETI                              ( Reset value )
		ID ETI                              ( Initial value )
		
		FOUR FOUR                           ( #labels #fields )
		'DROPFALSE                          ( Message handler )
		"INTERCEPTION - OUTPUT"             ( Title )
		FLASHPTR IfMain                     ( HP50 ONLY - Run the input form )
*		DoInputForm                         ( HP50 & HP48 )
;
