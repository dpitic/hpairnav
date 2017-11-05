RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\INF2.s, part of the INF2.hpp project, created by <> on 15/05/2009 )
**********************************************************************
* DESCRIPTION:     Displays an Input Form with 3 fields.  Uses the
*                  Input Form message handler to customise softkey 4.
*                  This source file uses the defines in the GHI.H
*                  include file.
* COMPATIBILITY:   HP48
* USAGE:     ( -> %0         [ If cancelled ] )
*            ( -> ob % % %1  [ If accepted ]  )
*
* File Header
INCLUDE GUI.H                     ( DoInputForm header file for HP48 from GrayBook )
INCLUDE INF4.H
xNAME INF4
::
	 AtUserStack                     ( Clear saved command name, no arguments )
* Input Form Parameters
* Label Specifiers ( $ #X_Position #Y_Position )
  "EDIT FIELD:"   COL1   LROW2        ( Label 1 )
  "CHOOSE FIELD:" COL1   LROW3        ( Label 2 )
  "CHECK FIELD"   COL1+C LROW4        ( Label 3 )

* Field Specifiers
	 ( Field 1 - Edit field )
	 'DROPFALSE                          ( Field message handler )
	 COL9 FROW2                          ( #X_Position #Y_Position )
	 FWIDTH12                            ( #Field_Width )
	 FHEIGHT                             ( #Field_Height )
	 FTYPE_TEXT                          ( #Field_Type [1 = Text field] )
	 OBTYPE_ANY                          ( Object_Types [MINUSONE = Any type] )
	 FMT_STD                             ( Decompile_Object [FOUR = ???????????] )
	 "ENTER ANY OBJECT"                  ( Help_String )
	 OPTDATA_NULL                        ( Choose_Field_Data N/A )
	 OPTDATA_NULL                        ( Choose_Decompile_Fmt N/A )
	 NOVAL                               ( Reset_Value [MINUSONE = Empty field] )
	 NOVAL                               ( Initial_Value [MINUSONE = Empty field] )
	
	 ( Field 2 - Choose field )
	 'DROPFALSE                          ( Field message handler )
	 COL9 FROW3                          ( #X_Position #Y_Position )
	 FWIDTH8                             ( #Field_Width )
	 FHEIGHT                             ( #Field_Height )
	 FTYPE_CHOOSE                        ( #Field_Type [12 = Choose field] )
	 OBTYPE_NA                           ( Object_Types [MINUSONE for Choose Field] )
	 FMT_STD                             ( Decompile_Object [TWO = stack appearance] )
	 "CHOOSE A NUMBER"                   ( Help_String )
	 { %1 %2 %3 }                        ( Choose_Field_Data )
	 FMT_STD                         		  ( Choose_Decompile_Fmt [FOUR = ????????] )
	 %1                                  ( Reset_Value )
	 %1                                  ( Initial_Value )
	
	 ( Field 3 - Check field )
	 'DROPFALSE                          ( Field message handler )
	 COL1 FROW4                          ( #X_Position #Y_Position )
	 FWIDTH_C                            ( #Field_Width )
	 FHEIGHT                             ( #Field_Height )
	 FTYPE_CHECK                         ( #Field_Type [32 = Check field] )
	 OBTYPE_NA                           ( Object_Types N/A )
	 FMT_NA                              ( Decompile_Object N/A )
	 "CHECK OR UNCHECK"                  ( Help_String )
	 OPTDATA_NULL                        ( Choose_Field_Data N/A )
	 OPTDATA_NULL                        ( Choose_Decompile_Fmt N/A )
	 FALSE                               ( Reset_Value )
	 FALSE                               ( Initial_Value )
	
	 THREE                               ( #LabelCount )
	 THREE                               ( #Fieldcount )
	 ' INF4MsgHandler                    ( Input form message handler )
	 "TEST"                              ( Title )
	 DoInputForm                         ( Run the Input Form )
	 case :: ITE %1 %0 %1 ;              ( IF OK, convert check result and return %1 )
	 %0                                  ( ELSE return %0 )
;
