RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INTERform.s, part of the INTERCEPT50.hpp project, created by <> on 20/06/2009 )
**********************************************************************
* NAME:          INTERinputform
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          20 June 2009
* LIBRARY #:     321h = 801d
* COMPATIBILITY: HP50
*                HP48  ( Comment out IfMain )
* DESCRIPTION:   Generates the INPUT form for the interception problem
*
INCLUDE INTERCEPT50.h
INCLUDE Header.h
INCLUDE informbox.h                  ( HP50 ONLY )
*INCLUDE GUI.h                        ( HP48 ONLY )
DEFINE FHEIGHT EIGHT                 ( HP50 ONLY )
NULLNAME INTERinputform
::
* Label definitions
  "WD:"     COL1     LROW1
		"WS:"     COL12    LROW1
		"TAS:"    COL1     LROW2
		"DRM2:"   COL1     LROW3
		"MRM2:"   COL12    LROW3
		"TRS:"    COL1     LROW4
		"GSS:"    COL12    LROW4
		
* Field definitions
  ( Field WIND DIRECTION definition )
		'DROPFALSE                          ( Message handler )
		COL3 FROW1 FWIDTH8 FHEIGHT          ( Position & size )
		FTYPE_TEXT                          ( Field type TEXT )
		{ OBTYPE_REAL }                     ( Allowed types REAL )
		FMT_DFLT                            ( Decompile )
		"WIND DIRECTION (FROM)"             ( Help string )
		MINUSONE                            ( Choose data N/A )
		MINUSONE                            ( Choose decompile N/A )
		MINUSONE                            ( Reset value )
		ID WD                               ( Initial value )
		
		( Field WIND SPEED definition )
	 'DROPFALSE                          ( Message handler )
	 COL14 FROW1 FWIDTH8 FHEIGHT         ( Position & size )
	 FTYPE_TEXT                          ( Field type TEXT )
	 { OBTYPE_REAL }                     ( Allowed types REAL )
	 FMT_DFLT                            ( Decompile )
	 "WIND SPEED"                        ( Help string )
	 MINUSONE                            ( Choose data N/A )
	 MINUSONE                            ( Choose decompile N/A )
	 MINUSONE                            ( Reset value )
	 ID WS                               ( Initial value )
	 
	 ( Field TAS definition )
	 'DROPFALSE                          ( Message handler )
	 COL4 FROW2 FWIDTH7 FHEIGHT          ( Position & size )
	 FTYPE_TEXT                          ( Field type TEXT )
	 { OBTYPE_REAL }                     ( Allowed types REAL )
	 FMT_DFLT                            ( Decompile )
	 "TRUE AIR SPEED OF INTERCEPTOR"     ( Help string )
	 MINUSONE                            ( Choose data N/A )
	 MINUSONE                            ( Choose decompile N/A )
	 MINUSONE                            ( Reset value )
	 ID TAS                              ( Initial value )
	 
	 ( Field DRM2 definition )
	 'DROPFALSE                          ( Message handler )
	 COL4.5 FROW3 FWIDTH7 FHEIGHT          ( Position & size )
	 FTYPE_TEXT                          ( Field type TEXT )
	 { OBTYPE_REAL }                     ( Allowed types REAL )
	 FMT_DFLT                            ( Decompile )
	 "BEARING TO TARGET"                 ( Help string )
	 MINUSONE                            ( Choose data N/A )
	 MINUSONE                            ( Choose decompile N/A )
	 MINUSONE                            ( Reset value )
	 ID DRM2                             ( Initial value )
	 
	 ( Field MRM2 definition )
	 'DROPFALSE                          ( Message handler )
	 COL15.5 FROW3 FWIDTH7 FHEIGHT         ( Position & size )
	 FTYPE_TEXT                          ( Field type TEXT )
	 { OBTYPE_REAL }                     ( Allowed types REAL )
	 FMT_DFLT                            ( Decompile )
	 "DISTANCE TO TARGET"                ( Help string )
	 MINUSONE                            ( Choose data N/A )
	 MINUSONE                            ( Choose decompile N/A )
	 MINUSONE                            ( Reset value )
	 ID MRM2                             ( Initial value )
	 
	 ( Field TRS definition )
	 'DROPFALSE                          ( Message handler )
	 COL4 FROW4 FWIDTH7 FHEIGHT          ( Position & size )
	 FTYPE_TEXT                          ( Field type TEXT )
	 { OBTYPE_REAL }                     ( Allowed types REAL )
	 FMT_DFLT                            ( Decompile )
	 "TRACK OF TARGET"                   ( Help string )
	 MINUSONE                            ( Choose data N/A )
	 MINUSONE                            ( Choose decompile N/A )
	 MINUSONE                            ( Reset value )
	 ID TRS                              ( Initial value )
	 
	 ( Field GSS definition )
	 'DROPFALSE                          ( Message handler )
	 COL15 FROW4 FWIDTH7 FHEIGHT         ( Position & size )
	 FTYPE_TEXT                          ( Field type TEXT )
	 { OBTYPE_REAL }                     ( Allowed types REAL )
	 FMT_DFLT                            ( Decompile )
	 "GROUND SPEED OF TARGET"            ( Help string )
	 MINUSONE                            ( Choose data N/A )
	 MINUSONE                            ( Choose decompile N/A )
	 MINUSONE                            ( Reset value )
	 ID GSS                              ( Initial value )
		
		SEVEN SEVEN                         ( #labels #fields )
		'DROPFALSE                          ( Message handler )
		"INTERCEPTION - INPUT"              ( Title )
		FLASHPTR IfMain                     ( HP50 ONLY - Run the input form )
*		DoInputForm                         ( HP50 & HP48 )
;
