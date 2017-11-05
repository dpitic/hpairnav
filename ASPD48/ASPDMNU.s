RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDMNU.s, part of the ASPD.hpp project, created by <> on 19/04/2009 )
**********************************************************************
* NAME:            ASPDMNU
* LIBRARY #:       328h = 808d
* AUTHOR:          Dan Pitic
* VERSION:         1.34
* DATE:            19 June 2009
* COMPATIBILITY:   HP50, HP48
* DESCRIPTION:     Generates the CST menu system to solve for true
*                  airspeed or start the GUI
*
INCLUDE ASPD48.h
xNAME ASPDMNU
::
	 CK0                                     ( No arguments )
	 {
	   { "CAS" ::                            ( Input calibrated airspeed )
	             CK1&Dispatch                ( Must have 1 argument )
	             real ::                     ( Real number )
	               "knot" umEND THREE EXTN   ( Add default knot units )
	               DUP
	               ' ID VC STO               ( STO in GLOBAL var VC )
	               "CAS" >TAG                ( TAG )
	  											;
	           ; }
	   { "PALT" ::                           ( Input pressure altitude )
	              CK1&Dispatch               ( Must have 1 argument )
	              real ::                    ( Real number )
	                "ft" umEND THREE EXTN    ( Add default feet units )
	                DUP
	                ' ID PA STO              ( STO in GLOBAL var PA )
	                "PALT" >TAG              ( TAG )
	                ID VC ID PA
	                CMACH                    ( Calc. Mach number and )
	                "MACH" >TAG              ( TAG )
	                { ID VC ID PA ID M                   ( VC PA & M avail. as outputs )
                 { "TAT" ::                           ( Input TAT )
			                        CK1&Dispatch               ( Must have 1 argument )
			                        real ::                    ( Real number )
			                          "\B0C" umEND THREE EXTN  ( Add default deg C units )
			                          DUP
			                          ' ID T2 STO              ( STO in GLOBAL var T2 )
			                          "TAT" >TAG               ( TAG )
			                          ID M ID T2 CSAT          ( Calc. SAT )
			                          DUP
			                          ' ID T1 STO              ( STO SAT in GLOBAL var T1 )
			                          "SAT" >TAG
			                          ID M ID T1 TASMS         ( Calc. TAS from Mach no. & )
			                          DUP                      ( SAT )
			                          ' ID V1 STO              ( STO TAS in GLOBAL var V1 )
			                          "TAS" >TAG               ( TAG )
			                          { ID VC ID PA ID M ID T2 ID T1 ID V1   ( New CST menu )
			                          { "NEW" :: xASPDMNU ; }
			                          } xMENU
			                        ;
			                      ; }
		               { "SAT" ::                           ( Input SAT )
		                         CK1&Dispatch               ( Must have 1 argument )
		                         real ::                    ( Real number )
		                           "\B0C" umEND THREE EXTN  ( Add default deg C units )
		                           DUP
		                           ' ID T1 STO              ( STO in GLOBAL var T1 )
		                           "SAT" >TAG               ( TAG )
		                           ID M ID T1 CTAT          ( Calc. SAT )
		                           DUP
		                           ' ID T2 STO
		                           "TAT" >TAG
		                           ID M ID T1 TASMS
		                           DUP
		                           ' ID V1 STO
		                           "TAS" >TAG
		                           { ID VC ID PA ID M ID T2 ID T1 ID V1   ( New CST menu )
		                           { "NEW" :: xASPDMNU ; }
		                           } xMENU
		                         ;
		                       ; }
		               { "NEW" :: xASPDMNU ; }	             ( Start new problem )
		               } xMENU	
	              ;
	            ; }
	   { "MACH" ::                           ( Input Mach number )
	              CK1&Dispatch               ( Must have 1 argument )
	              real ::                    ( Real number )
	                DUP
	                ' ID M STO               ( STO in GLOBAL var M )
	                "MACH" >TAG              ( TAG )
	                { { } { } ID M
	                  { "TAT" ::
	                            CK1&Dispatch
	                            real ::
	                              "\B0C" umEND
	                              THREE EXTN
	                              DUP
	                              ' ID T2 STO
	                              "TAT" >TAG
	                              {
									  																				  { "NEW" :: xASPDMNU ; }
										  																			  { } ID M ID T2 ID T1 ID V1
											  																		} xMENU
	                            ;
													  				        ; }
								  									{ "SAT" ::
									  								          CK1&Dispatch
										  							          real ::
										  							            "\B0C" umEND
										  							            THREE EXTN
										  							            DUP
										  							            ' ID T1 STO
										  							            "SAT" >TAG
										  							            {
																															  { "NEW" :: xASPDMNU ; }
																															  { } ID M ID T2 ID T1 ID V1
										  							            } xMENU
										  							          ;
		  															        ; }
		  														 { "NEW" :: xASPDMNU ; }
		  													} xMENU
	              ;
		           ; }
		  { }
  		{ "GUI" :: xASPDFRM ; }               ( Run GUI )
  		{ "ANSER" ::                          ( Display solutions CST menu )
  		            { ID VC ID PA ID M ID T2 ID V1
	  	            { "NEW" :: xASPDMNU ; }
		              } xMENU
		            ; }
	 }
	 xMENU
;
