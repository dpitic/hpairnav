RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\AIRSPDv2\ASPDMNU.s, part of the ASPD.hpp project, created by <> on 19/04/2009 )
*********************************************************************
* NAME:            ASPDMNU
* LIBRARY #:       326h = 808d
* AUTHOR:          Dan Pitic
* VERSION:         1.32
* DATE:            23 April 2009
* DESCRIPTION:     Generates the CST menu system to solve for true
*                  airspeed or start the GUI
*
INCLUDE ASPD.h
xNAME ASPDMNU
::
	 {
	   { "CAS" ::                            ( Input calibrated airspeed )
	             CK1&Dispatch                ( Must have 1 argument )
	             BINT1 ::                    ( Real number )
	               "knot" umEND BINT3 EXTN   ( Add default knot units )
	               DUP
	               ' ID VC STO               ( STO in GLOBAL var VC )
	               "CAS" >TAG                ( TAG )
	  											;
	           ; }
	   { "PALT" ::                           ( Input pressure altitude )
	              CK1&Dispatch               ( Must have 1 argument )
	              BINT1 ::                   ( Real number )
	                "ft" umEND BINT3 EXTN    ( Add default feet units )
	                DUP
	                ' ID PA STO              ( STO in GLOBAL var PA )
	                "PALT" >TAG              ( TAG )
	                ID VC ID PA
	                CMACH                    ( Calc. Mach number and )
	                "MACH" >TAG              ( TAG )
	              ;
	            ; }
	   { "MACH" ::                           ( Input Mach number )
	              CK1&Dispatch               ( Must have 1 argument )
	              BINT1 ::                   ( Real number )
	                DUP
	                ' ID M STO               ( STO in GLOBAL var M )
	                "MACH" >TAG              ( TAG )
	                { { } { } ID M
	                  { "TAT" ::
	                            CK1&Dispatch
	                            BINT1 ::
	                              "\B0C" umEND
	                              BINT3 EXTN
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
										  							          BINT1 ::
										  							            "\B0C" umEND
										  							            BINT3 EXTN
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
