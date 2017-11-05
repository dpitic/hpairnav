RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GUIAVN50\AVNCOMN50\ROACOMN.s, part of the AVCOMN50.hpp project, created by <> on 27/06/2009 )
**********************************************************************
* NAME:          ROACOMN
* LIBRARY #:     32Ah = 810d
* AUTHOR:        Dan Pitic
* VERSION:       1.3
* DATE:          27 June 2009
* COMPATIBILITY: HP50
*                HP48
* DESCRIPTION:   Generates and displays the GUI for the ROA library.
*                All aviation library programs are run in the common
*                directory TEMPDIR.
*
INCLUDE AVCOMN50.h
INCLUDE header.h
DEFINE PNRFRM  ROMPTR 322 1            ( HP50, HP48 )
DEFINE RAABFRM ROMPTR 325 1            ( HP50, HP48 )
DEFINE RAMBFRM ROMPTR 324 1            ( HP50, HP48 )
DEFINE RASBFRM ROMPTR 323 1            ( HP50, HP48 )
NULLNAME ROACOMN
::
	 BEGIN
* Choose box parameters
    'DROPFALSE                        ( Message handler )
		  "RADIUS OF ACTION"                ( Title )
			 SEVENTEEN                         ( Decompile )
			 {
			   {
  		    "PNR (VAR. FUEL FLOW)" ::     ( PNR option )
  		      PNRFRM                        ( Run PNR GUI )
  		    ;
  		  }
  		  {
  		    "ALTERNATE BASE" ::           ( ALTERNATE BASE option )
  		      RAABFRM                       ( Run ALTERNATE BASE GUI )
  		    ;
  		  }
  		  {
  		    "MOVING BASE" ::              ( MOVING BASE option )
  		      RAMBFRM                       ( Run MOVINB BASE GUI )
  		    ;
  		  }
  		  {
  		    "SAME BASE" ::                ( SAME BASE option )
  		      RASBFRM                       ( Run SAME BASE GUI )
  		    ;
  		  }
			 }
			 ONE                               ( #FocusPos )
			 Choose                            ( Run the choose box )
	 WHILE
	   TWO NTHCOMPDROP EVAL              ( Extract and run the secondary )
	 REPEAT
;
