RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\RADOACT50\ROASB50\RASBFRM.s, part of the ROASB50.hpp project, created by <> on 23/06/2009 )
**********************************************************************
* NAME:          RASBFRM
* AUTHOR:        Dan Pitic
* LIBRARY #:     323h = 803d
* VERSION:       1.4
* DATE:          22 June 2009
* COMPATIBILITY: HP50
*                HP48
* DESCRIPTION:   Runs the GUI for the library application to accept
*                INPUT and display OUTPUT results.
*
INCLUDE ROASB50.h
xNAME RASBFRM
::
	 CK0                              ( No arguments )
	 BEGIN
	   InptForm                         ( Run INPUT form )
	 WHILE
* STO results of input form in global variables	
				' ID DHOM STO
				' ID TAS STO
				' ID T STO
				' ID TC1 STO
				' ID WS STO
				' ID WD STO
* Solve problem
    ID WD ID WS ID TC1 ID T ID TAS ID DHOM     ( Arguments )
				ROASAMBA                                   ( Call function )
    ' ID DFMH STO                              ( STO OUTPUT results )
    ' ID R STO                                 ( in global variables )
    ' ID T1 STO
    ' ID S2 STO
    ' ID HDG2 STO
    ' ID S1 STO
    ' ID HDG1 STO
* Display results
    OutptForm                        ( Run OUTPUT form )
				NOT?SEMI                         ( IF OK pressed )
				  7DROP                            ( DROP form results )
	 REPEAT
;
