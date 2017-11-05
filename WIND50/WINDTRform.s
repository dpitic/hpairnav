RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\WINDTRform.s, part of the WIND50.hpp project, created by <> on 17/06/2009 )
**********************************************************************
* NAME:          WINDTRform
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          17 June 2009
* COMPATIBILITY: HP50
* DESCRIPTION:   Generates the INPUT/OUTPUT form the the wind triangle
*                problem.
*
INCLUDE WIND50.h
INCLUDE header.h
INCLUDE informbox.h
DEFINE FHEIGHT EIGHT
NULLNAME WINDTRform
::
* Label definitions
	 "HDG:"     COL1     LROW1
	 "TAS:"     COL12    LROW1
	 "TC:"      COL1     LROW2
	 "GS:"      COL12    LROW2
	 "WD:"      COL1     LROW3
	 "WS:"      COL12    LROW3
	 "CRAB:"    COL1     LROW4
	 
* Field definitions
	 ( Field HEADING definition )
	 'DROPFALSE                      ( Message handler )
	 COL4 FROW1 FWIDTH7 FHEIGHT      ( Position & size )
	 FTYPE_TEXT                      ( Field type TEXT )
	 { OBTYPE_REAL }                 ( Allowed types REAL )
	 FMT_DFLT                        ( Decompile )
	 "HEADING"                       ( Help string )
	 MINUSONE                        ( Choose Data N/A )
	 MINUSONE                        ( Choose Decompile N/A )
	 MINUSONE                        ( Reset Value )
	 ID HDG                          ( Initial value )
	 
	 ( Field TAS definition )
	 'DROPFALSE                      ( Message handler )
	 COL15 FROW1 FWIDTH7 FHEIGHT     ( Position & size )
	 FTYPE_TEXT                      ( Field type TEXT )
	 { OBTYPE_REAL }                 ( Allowed types REAL )
	 FMT_DFLT                        ( Decompile )
	 "TRUE AIR SPEED"                ( Help string )
	 MINUSONE                        ( Choose Data N/A )
	 MINUSONE                        ( Choose Decompile N/A )
	 MINUSONE                        ( Reset Value )
	 ID TAS                          ( Initial value )
	 
	 ( Field TRACK definition )
	 'DROPFALSE                      ( Message handler )
	 COL4 FROW2 FWIDTH7 FHEIGHT      ( Position & size )
	 FTYPE_TEXT                      ( Field type TEXT )
	 { OBTYPE_REAL }                 ( Allowed types REAL )
	 FMT_DFLT                        ( Decompile )
	 "TRACK"                         ( Help string )
	 MINUSONE                        ( Choose Data N/A )
	 MINUSONE                        ( Choose Decompile N/A )
	 MINUSONE                        ( Reset Value )
	 ID TC                           ( Initial value )
	 
	 ( Field GROUND SPEED definition )
	 'DROPFALSE                      ( Message handler )
	 COL15 FROW2 FWIDTH7 FHEIGHT     ( Position & size )
	 FTYPE_TEXT                      ( Field type TEXT )
	 { OBTYPE_REAL }                 ( Allowed types )
	 FMT_DFLT                        ( Decompile )
	 "GROUND SPEED"                  ( Help string )
	 MINUSONE                        ( Choose Data )
	 MINUSONE                        ( Choose Decompile )
	 MINUSONE                        ( Reset value )
	 ID GS                           ( Initial value )
	 
	 ( Field WIND DIRECTION definition )
	 'DROPFALSE                      ( Message handler )
	 COL4 FROW3 FWIDTH7 FHEIGHT      ( Position & size )
	 FTYPE_TEXT                      ( Field type )
	 { OBTYPE_REAL }                 ( Allowed types )
	 FMT_DFLT                        ( Decompile )
	 "WIND DIRECTION (FROM)"         ( Help string )
	 MINUSONE                        ( Choose Data )
	 MINUSONE                        ( Choose Decompile )
	 MINUSONE                        ( Reset value )
	 ID WD                           ( Initial value )
	 
	 ( Field WIND SPEED definition )
	 'DROPFALSE                      ( Message handler )
	 COL15 FROW3 FWIDTH7 FHEIGHT     ( Position & size )
	 FTYPE_TEXT                      ( Field type )
	 { OBTYPE_REAL }                 ( Allowed types )
	 FMT_DFLT                        ( Decompile )
	 "WIND SPEED"                    ( Help string )
	 MINUSONE                        ( Choose Data )
	 MINUSONE                        ( Choose Decompile )
	 MINUSONE                        ( Reset value )
	 ID WS                           ( Initial value )
	 
	 ( Field CRAB definition )
	 'DROPFALSE                      ( Message handler )
	 COL4.5 FROW4 FWIDTH7 FHEIGHT      ( Position & size )
	 FTYPE_TEXT                      ( Field type )
	 { OBTYPE_REAL }                 ( Allowed types )
	 FMT_DFLT                        ( Decompile )
	 "CRAB ANGLE (OUTPUT ONLY)"      ( Help string )
	 MINUSONE                        ( Choose Data )
	 MINUSONE                        ( Choose Decompile )
	 MINUSONE                        ( Reset value )
	 ID CRAB                         ( Initial value )
	 
	 SEVEN SEVEN                     ( #labels #fields )
	 'DROPFALSE                      ( Message handler )
	 "WIND TRIANGLE"                 ( Title )
	 FLASHPTR IfMain                 ( Run the input form )
;
