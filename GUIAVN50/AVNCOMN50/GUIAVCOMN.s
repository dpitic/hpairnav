RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GUIAVN50\AVNCOMN50\GUIAVCOMN.s, part of the AVCOMN50.hpp project, created by <> on 27/06/2009 )
**********************************************************************
* NAME:          GUIAVCOMN
* LIBRARY #:     32Ah = 810d
* AUTHOR:        Dan Pitic
* VERSION:       1.3
* DATE:          27 June 2009
* COMPATIBILITY: HP50 ( Several different rompointer defs. )
*                HP48 ( Several different rompointer defs. )
* DESCRIPTION:   Generates and displays the GUI for the library.
*                All aviation library programs are run in the common
*                directory TEMPDIR.
*
INCLUDE AVCOMN50.h
INCLUDE header.h
DEFINE ISAFRM    ROMPTR 326 5       ( HP50, HP48 )
DEFINE ALTFRM    ROMPTR 327 1       ( HP50, HP48 )
DEFINE ASPDFRM   ROMPTR 328 1       ( HP50, HP48 )
DEFINE WNDTR     ROMPTR 320 4       ( HP50 )
*DEFINE WNDTR     ROMPTR 320 0       ( HP48 )
DEFINE GUIONTETP ROMPTR 329 1       ( HP50, HP48 )
DEFINE INFRM     ROMPTR 321 1       ( HP50, HP48 )
xNAME GUIAVCOMN
::
	 CK0                            ( No arguments )
	 BEGIN
* Choose box parameters
    'DROPFALSE                     ( Message handler )
		  "AVIATION MENU"                ( Title )
		  SEVENTEEN                      ( Decompile )
  		{
  		  {
  		    "ISA" ::                         ( ISA option )
  		      PATHDIR                          ( Get current directory path )
  		      ID TEMPDIR                       ( Change to TEMPDIR directory )
  		      ' ID RETDIR STO                  ( STO return directory )
  		      ISAFRM                           ( Run ISA GUI )
  		      ID RETDIR xEVAL                  ( Change back to original directory )
  		    ;
  		  }
  		  {
  		    "ALTITUDE" ::                    ( ALTITUDE option )
  		      PATHDIR                          ( Get current directory path )
  		      ID TEMPDIR                       ( Change to TEMPDIR directory )
  		      ' ID RETDIR STO                  ( STO return directory )
  		      ALTFRM                           ( Run ALTITUDE GUI )
  		      ID RETDIR xEVAL                  ( Change back to original directory )
  		    ;
  		  }
  		  {
  		    "AIRSPEED" ::                    ( AIRSPEED option )
  		      PATHDIR                          ( Get current directory path )
  		      ID TEMPDIR                       ( Change to TEMPDIR directory )
  		      ' ID RETDIR STO                  ( STO return directory )
  		      ASPDFRM                          ( Run AIR SPEED GUI )
  		      ID RETDIR xEVAL                  ( Change back to original directory )
  		    ;
  		  }
  		  {
  		    "WIND TRIANGLE" ::               ( WIND TRIANGLE option )
  		      PATHDIR                          ( Get current directory path )
  		      ID TEMPDIR                       ( Change to TEMPDIR directory )
  		      ' ID RETDIR STO                  ( STO return directory )
  		      WNDTR                            ( Run WIND TRIANGLE GUI )
  		      ID RETDIR xEVAL                  ( Change back to original directory )
  		    ;
  		  }
  		  {
  		    "EQUI-TIME POINT" ::             ( ETP option )
  		      PATHDIR                          ( Get current directory path )
  		      ID TEMPDIR                       ( Change to TEMPDIR directory )
  		      ' ID RETDIR STO                  ( STO return directory )
  		      GUIONTETP                        ( Run ETP GUI )
  		      ID RETDIR xEVAL                  ( Change back to original directory )
  		    ;
  		  }
  		  {
  		    "RADIUS OF ACTION" ::            ( RADIUS OF ACTION option )
  		      PATHDIR                          ( Get current directory path )
  		      ID TEMPDIR                       ( Change to TEMPDIR directory )
  		      ' ID RETDIR STO                  ( STO return directory )
  		      ROACOMN                          ( Run ROA common GUI )
  		      ID RETDIR xEVAL                  ( Change back to original directory )
  		    ;
  		  }
  		  {
  		    "INTERCEPTION" ::                ( INTERCEPTION option )
  		      PATHDIR                          ( Get current directory path )
  		      ID TEMPDIR                       ( Change to TEMPDIR directory )
  		      ' ID RETDIR STO                  ( STO return directory )
  		      INFRM                            ( Run INTERCEPTION GUI )
  		      ID RETDIR xEVAL                  ( Change back to original directory )
  		    ;
  		  }
  		}
  		ONE                            ( #FocusPos )
  		Choose
* Process results of the choose box
		WHILE
		  TWO NTHCOMPDROP EVAL           ( Extract and run the secondary )
	 REPEAT
;
