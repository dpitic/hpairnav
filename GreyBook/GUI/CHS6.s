RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS6.s, part of the CHS6.hpp project, created by <> on 15/05/2009 )
**********************************************************************
* DESCRIPTION:     Displays a multi-pick choose box which updates
*                  the title of the choose box based on the number of
*                  selections made.
* COMPATIBILITY:   HP48
* USAGE:     ( -> %0              [ User pressed CANCEL softkey or ON key ] )
*            ( -> { choices } %1  [ User pressed ENTER key or OK softkey ]  )
*
* File header
INCLUDE CHS6.h
EXTERNAL Choose
* Library softkey definition	
xNAME CHS6
::
	 AtUserStack                    ( Clear saved command name, no arguments )
* Choose box parameters	
		' CHS6MsgHandler               ( Message handler )
	 " "                            ( Title Object $ [replaced by message handler #70] )
	 ONE                            ( Decompile object [#1 = No decompilation] )
	 NULL{}                         ( { choices } )
	 ONE                            ( #FocusPos [#1 = highlight first data in list] )
	 Choose                         ( Run choose box [ -> ... FLAG ] )
	 COERCEFLAG                     ( FLAG -> % )
;
