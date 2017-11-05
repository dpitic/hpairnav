RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\WIND50\WNDMNU.s, part of the WIND50.hpp project, created by <> on 15/06/2009 )
**********************************************************************
* NAME:          WNDMNU
* LIBRARY #:     320h = 800d
* AUTHOR:        Dan Pitic
* VERSION:       1.7
* DATE:          15 June 2009
* COMPATIBILITY: HP50
* DESCRIPTION:   Generates the CST menu for the wind triangle problem.
*
INCLUDE WIND50.h
xNAME WNDMNU
::
	 CK0                                             ( No arguments )
	 {
	   ID HDG ID TAS ID TC ID GS ID WD ID WS ID CRAB ( INPUT/OUTPUT global variables )
	   { "AIR" ::                                    ( Calculate air vector )
        ID TC ID GS ID WD ID WS xCAVE
        ' ID CRAB STO
        ' ID TAS STO
        ' ID HDG STO
	     ;
	   }
	   { "GND" ::                                    ( Calculate ground vector )
	       ID HDG ID TAS ID WD ID WS xCGVE
	       ' ID CRAB STO
	       ' ID GS STO
	       ' ID TC STO
	     ;
	   }
	   { "WIND" ::                                   ( Calculate wind vector )
	       ID HDG ID TAS ID TC ID GS xCWVE
	       ' ID CRAB STO
	       ' ID WS STO
	       ' ID WD STO
	     ;
	   }
	   { "THGS" ::                                   ( Calculate heading and ground speed )
	       ID TAS ID TC ID WD ID WS xTHGS
	       ' ID CRAB STO
	       ' ID GS STO
	       ' ID HDG STO
	     ;
	   }
	   { "MENU" ::                                   ( Regenerate menu )
				    xWNDMNU
						;
				}
	   { "GUI" ::                                    ( Run the GUI )
				    xWNDTR
						;
				}
	 }
	 xMENU                                           ( Create the CST menu )
;
