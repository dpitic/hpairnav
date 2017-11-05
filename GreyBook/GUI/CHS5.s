RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS5.s, part of the CHS5.hpp project, created by <> on 15/05/2009 )
********************************************************************
* DESCRIPTION:     Simple editor using a full-screen choose box for
*                  a list of strings using a custom choose box menu.
*                  The program requires a list, validating the list
*                  contains at least one object, and that all objects
*                  in the list are stirngs.
* COMPATIBILITY:   HP48
* USAGE:     ( { $1 ... $N } -> { $1 ... $N } $Highlighted %1 [ IF ENTER key or OK softkey pressed ] )
*            ( { $1 ... $N } -> %0                            [ IF ON key or CANCEL softeky pressed ] )
*
INCLUDE CHS5.h
EXTERNAL Choose
xNAME CHS5
::
	 0LASTOWDOB!                   ( Clear saved command name )
	 CK1NOLASTWD                   ( Require 1 argument )
	 CK&DISPATCH1 list ::          ( Require list object )
* Check list contains at least 1 object
    DUPLENCOMP                  ( {} -> {} #n [#n = number of objects in list] )
    DUP#0= case SETSIZEERR      ( IF #n=0 items in list -> "Bad Argument Value" error )
* Validate objects in list are all $
    #1+ ONE DO
			   DUP                       ( {} )
			   INDEX@                    ( Loop #counter )
			   NTHCOMPDROP               ( {} #counter -> ob )
		  	 TYPECSTR?                 ( ob -> FLAG [TRUE = $, FALSE = NOT $] )
		  	 ?SKIP                     ( TRUE -> skip SETTYPEERR )
		  	 SETTYPEERR                ( FALSE -> "Bad Argument Type" error )
		  LOOP
* Choose box parameters
  		' CHS5MsgHndler                   ( Message handler )
  		"EDIT STRINGS"                  	 ( Title Object )
  		ONE                               ( Decompile object )
    4ROLL                             ( { choices } )
  		ONE                               ( #FocusPos )
  		Choose                            ( Run the choose box [ -> {} $ FLAG ] [IF choice is made] )
  		                                  (                    [ -> FLAG        [IF choice NOT made] )
  		COERCEFLAG                        ( FLAG -> % )
	 ;
;
