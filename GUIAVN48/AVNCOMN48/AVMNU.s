RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GUIAVN50\AVNCOMN50\AVMNU.s, part of the AVCOMN50.hpp project, created by <> on 27/06/2009 )
**********************************************************************
* NAME:          AVMNU
* LIBRARY #:     32Ah = 810d
* AUTHOR:        Dan Pitic
* VERSION:       1.3
* DATE:          27 June 2009
* COMPATIBILITY: HP50, HP48
* DESCRIPTION:   Generates and displays the CST menu for the library.
*                This function should be run in the aviation root
*                directory.
*
INCLUDE AVCOMN48.h
xNAME AVMNU
::
	 CK0                              ( No arguments )
	 {
	   {
	     "GUI" ::                     ( GUI menu option )
	       xGUIAVCOMN                   ( Run aviation lib. common GUI )
	     ;
	   }
	   ID ISATMOS                     ( ISA directory )
	   ID ALTITUDE                    ( Altitude directory )
	   ID AIRSPD                      ( Airspeed directory )
	   ID WIND                        ( Wind triangle directory )
	   ID EQITIMEPT                   ( ETP directory )
	   ID RADOACT                     ( Radius of action directory )
	   ID INTERCEPT                   ( Interception directory )
	   { }
	   { }
	   { }
	   {
	     "MENU" ::                    ( MENU menu option )
	       xAVMNU                       ( Regenerate and display CST menu )
	     ;
	   }
	 }
	 xMENU                            ( Generate and display CST menu )
;
