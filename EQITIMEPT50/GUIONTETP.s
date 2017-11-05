RPL
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\EQITIMEPT50\GUIONTETP.s, part of the CPONT50.hpp project, created by <> on 26/06/2009 )
**********************************************************************
* NAME:          GUIONTETP
* LIBRARY #:     329h = 809d
* AUTHOR:        Dan Pitic
* VERSION:       1.1
* DATE:          26 June 2009
* COMPATIBILITY: HP50
*                HP48
* DESCRIPTION:   Generates and displays the GUI for the library
*                application.
*
INCLUDE CPONT50.h
xNAME GUIONTETP
::
	 CK0                             ( No arguments )
		BEGIN
		  InptForm                        ( Run INPUT form )
		WHILE
* STO output from INPUT form in global variables		
				' ID FFLO STO
		  ' ID DIST STO
		  ' ID WS STO
		  ' ID WD STO
		  ' ID TC STO
		  ' ID TAS STO
* Calculate problem
    ID TAS ID TC ID WD ID WS        ( INPUT arguments )
    ID DIST ID FFLO		
    CONTETP                         ( -> %CPDIS %CPTIM %FBRN )
				' ID FBRN STO                   ( STO OUTPUT results in global variables )
				' ID CPTIM STO
				' ID CPDIS STO
* Run OUTPUT GUI
    BEGIN
					 OutptForm                       ( Run OUTPUT GUI )
				WHILE
				  3DROP                           ( IF OK pressed => DROP form results )
				REPEAT	
		REPEAT
;
