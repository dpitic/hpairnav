RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\DISPtest\GRID.s, part of the GRID.hpp project, created by <> on 8/05/2009 )
**********************************************************************
* DESCRIPTION:     Produces a grid centred in the stack display with a
*                  specified number of rows and columns.  The size
*                  parameter specifies the size of each square (not
*                  counting the box boundary lines).
* COMPATIBILITY:   HP48, HP50 (Not centred vertically on HP50)
* USAGE:     { %Size %Rows %Cols -> )
* ESAMPLE:   ( 3 9 25 -> )
*
::
	 0LASTOWDOB!                 ( Clear saved command name )
	 CK3NOLASTWD                 ( Require 3 arguments )
	 CK&DISPATCH1
	 # 00111                     ( Require 3 real numbers )
	 ::
	   COERCE2                   ( %size %rows %cols -> %size #rows #cols )
	   ROT                       ( -> #rows #cols %size )
	   COERCE                    ( -> #rows #cols #size )
	   #1+                       ( -> #rows #cols #size+1 )
	   DUP                       ( -> #rows #cols #size+1 #size+1 )
	   ROT                       ( -> #rows #size+1 #size+1 #cols )
	   #*                        ( -> #rows #size+1 # )
	   #1+                       ( -> #rows #size+1 #width )
	   DUP BINT_131d #> case     ( Verify grid not wider than display [ -> ... FLAG ] )
	     SETSIZEERR
	   OVER                      ( #rows #size+1 #width -> #rows #size+1 #width #size+1 )
	   4ROLL                     ( -> #size+1 #width #size+1 #rows )
	   #*                        ( -> #size+1 #width # )
	   #1+                       ( -> #size+1 #width #hieght )
	   DUP SIXTYFOUR #> case     ( Verify grid not taller than display [ -> ... FLAG ] )
	     SETSIZEERR
	   ClrDA1IsStat              ( Suspend ticking clock )
	   RECLAIMDISP               ( Claim the stack display )
	   TURNMENUOFF               ( Turn off the menu display )
	   SIXTYTHREE                ( Calculate the addresses of the grid boundaries )
				OVER                      ( #size+1 #width #height #63 -> #size+1 #width #height #63 #height )
	   #-#2/                     ( -> #size+1 #width #height #toprow )
	   DUP                       ( -> #size+1 #width #height #toprow #toprow )
	   ROT                       ( -> #size+1 #width #toprow #toprow #height )
	   #+-1                      ( -> #size+1 #width #toprow #botrow )
	   BINT_131d                 ( -> #size+1 #width #toprow #botrow #131 )
	   4PICK                     ( -> #size+1 #width #toprow #botrow #131 #width )
	   #-#2/                     ( -> #size+1 #width #toprow #botrow #Lcol )
	   DUP                       ( -> #size+1 #width #toprow #botrow #Lcol #Lcol )
	   5ROLL                     ( -> #size+1 #toprow #botrow #Lcol #Lcol #width )
	   #+-1                      ( -> #size+1 #toprow #botrow #Lcol #Rcol )
	   ( Draw the vertical lines )
				DUP#1+ 3PICK DO           ( #size+1 #toprow #botrow #Lcol #Rcol ->  )
	     INDEX@ 5PICK              ( ... #col #toprow )
	     OVER 6PICK                ( ... #col #toprow #col #botrow )
	     LINEON                    ( ... )
	     5PICK                     ( ... #size+1 )
	   +LOOP
	   ( Draw the horizontal lines )
	   3PICK #1+ 5PICK DO        ( #size+1 #toprow #botrow #Lcol #Rcol -> )
	     OVER INDEX@               ( ... #Lcol #row )
	     3PICK OVER                ( ... #Lcol #row #Rcol #row )
	     LINEON                    ( ... )
	     5PICK                     ( ... #size+1 )
	   +LOOP
	   5DROP                     ( DROP box parameters [ ... -> ] )
	   SetDAsTemp                ( Freeze the display )
	 ;
;
