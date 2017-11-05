RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ISA50\ISAMNU.s, part of the ISA50.hpp project, created by <> on 12/06/2009 )
**********************************************************************
* NAME:            ISAMNU
* Library #:	   			326h = 806d
* AUTHOR:          Dan Pitic
* VERSION:         1.25
* DATE:            19 June 2009
* COMPATIBILITY:   HP50, HP48
* DESCRIPTION:     Creates the CST menu for the ISA library.
*
INCLUDE ISA50.h
xNAME ISAMNU
::
	 CK0                                  ( No arguments )
	 {		
				{ "GEOPO" ::                       ( Calc. Geopotential Altitude )
				    xGEOPO ; }
		  { "ISAT" ::                        ( Calc. ISA temperature )
				    xISAT ; }
		  { "ISAP" ::                        ( Calc. ISA pressure )
				    xISAP ; }
		  { "ISA\97" ::                      ( Calc. ISA density )
				    xISA\97 ; }
		  { "ISAa" ::                        ( Calc. SPEED OF SOUND in ISA )
				    xISAa ; }
		  { }
		  { "MENU" ::                        ( Run the ISA library menu )
				    xISAMNU ; }
		  { }
		  { }
		  { }
		  { }
		  { "GUI" ::                         ( Run the GUI )
				    xISAFRM ; }
	 }
	 xMENU                                ( Create & display CST menu )
;
