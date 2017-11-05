RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\ALTITUDEv2\ALTMNU.s, part of the ALT.hpp project, created by <> on 18/04/2009 )
**********************************************************************
* NAME:            ALTMNU
* LIBRARY #:       327h = 807d
* AUTHOR:          Dan Pitic
* VERSION:         1.15
* DATE:            19 June 2009
* COMPATIBILITY:   HP50, HP48
* DESCRIPTION:     Modifies the CST menu for the start of a new problem.
* INPUT:     NONE
* OUTPUT:    CST     Menu reorganised to start a new problem or view
*                    solutions from previous problem
*            CA      Calibrated altitude (feet)
*												SAT     Static air temperature (deg C)
*            PALT    Pressure altitude (feet)
*            GNDST   Ground station elevation (feet)
*												TA      True altitude (feet)
*            DA      Density altitude (feet)	
*
INCLUDE ALT48.h
xNAME ALTMNU
::
	 CK0
	 { { "CALT" ::                        ( Input calibrated altitude )
		             CK1&Dispatch            ( Must have 1 argument )
															real ::                 ( Real number )
															  "ft" umEND            ( Add default feet units )
															  THREE EXTN
															  DUP
															  ' ID CA STO           ( STO in GLOBAL VAR CA )
															  "CALT" >TAG           ( TAG )
															;
													; }
				{	"SAT" ::                         ( Input static air temperature )
				          CK1&Dispatch             ( Must have 1 argument )
				         	real ::                  ( Real number )
				         	  "\B0C" umEND           ( Add default deg C units )
				         	  THREE EXTN
				         	  DUP
				         	  ' ID SAT STO           ( STO in GLOBAL var SAT )
				         	  "SAT" >TAG
				         	;
				        ; }
				{ "PALT" ::                        ( Input pressure altitude )
				           CK1&Dispatch            ( Must have 1 argument )
				           real ::                 ( Real number )
				             "ft" umEND            ( Add default feet units )
				             THREE EXTN
				             DUP
				             ' ID PA STO           ( STO in GLOBAL var PA )
				             "PALT" >TAG
				           ;
				         ; }
				{ "GNDST" ::                       ( Input gnd. station elevation )
				            CK1&Dispatch           ( Must have 1 argument )
				            real ::                ( Real number )
				              "ft" umEND           ( Add default feet units )
				              THREE EXTN
				              DUP
				              ' ID GNDST STO       ( STO in GLOBAL var PA )
				              "GNDST" >TAG
				            ;
				          ; }
			 {	"TALT" ::                        ( Calculate true altitude )
			            ID CA                   ( Agruments )
			            ID SAT
			            ID PA
			            ID GNDST
			            TRUALT                  ( Calculate true altitude )
			            DUP
			            ' ID TA STO             ( STO in GLOBAL var TA )
			            "TALT" >TAG
			            NOVAL ' ID DA STO       ( CLEAR GLOBAL var DA )
			            { ID CA ID SAT ID PA ID GNDST ID TA { }
			            { "NEW" :: xALTMNU ; }   ( New problem )
			            { "GUI" :: xALTFRM ; } } ( Start GUI )
			            xMENU                   ( Display new CST menu )
			          ; }
			 { "DALT" ::                        ( Calculate density altitude )
			            ID SAT                  ( Arguments )
			            ID PA
			            DENALT                  ( Calculate density altitude )
			            DUP
			            ' ID DA STO             ( STO in GLOBAL var DA )
			            "DALT" >TAG
			            NOVAL ' ID TA STO       ( CLEAR GLOBAL var TA )
			            NOVAL ' ID CA STO       ( CLEAR GLOBAL var CA )
			            { { } ID SAT ID PA { } { } ID DA
			            { "NEW" :: xALTMNU ; }   ( New problem )
			            { "GUI" :: xALTFRM ; } } ( Run GUI )
			            xMENU                   ( Display new CST menu )
			          ; }
			 { "GUI" :: xALTFRM ; }            ( Run GUI )
			 { "ANSER" ::                      ( Display solutions CST menu )
			             { ID CA ID SAT ID PA ID GNDST ID TA ID DA
			             { "NEW" :: xALTMNU ; } }
			             xMENU
			           ; }
		}
	 xMENU
;
