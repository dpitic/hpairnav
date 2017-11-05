RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\BRW1.s, part of the BRW1.hpp project, created by <> on 14/05/2009 )
********************************************************************
* DESCRIPTION:     Displays a list using the browser and returns a
*                  string indicating which key terminated the
*                  browser.  If the browser was terminated by
*                  pressing ENTER, the highlighted data item is
*                  returned.
* COMPATIBILITY:   HP48  ( BRdone is rompointer )
*                  HP50  ( BRdone is a flashpointer )
* USAGE:           ( -> "ON"          [ Terminated by the ON key ] )
*                  ( -> "QUIT"        [ Terminated by the "QUIT" softkey ] )
*                  ( -> $item "ENTER" [ Terminated by the ENTER key ] )
*
* Rompointer external declarations
EXTERNAL BRbrowse             ( Equation library browser )
*EXTERNAL BRdone               ( Terminate the browser [HP48 rompointer] )
EXTERNAL BRRclC1              ( Recall the data list -> { data } )
EXTERNAL BRRclCurRow          ( Recall the index of the highlighted data item -> #focus_pos )
::
	 0LASTOWDOB!                 ( Clear protection word )
	 CK0NOLASTWD                 ( No arguments )
	 ClrDA1IsStat                ( Suspend the clock )
	 RECLAIMDISP                 ( Clear the screen )
* POL shell	
		POLSaveUI                   ( Save the current user interface )
	 ERRSET                      ( Increment the protection word )	
		::                          ( POL )
* Browser parameters		
		  {                         ( Softkey Menu )
		    NullMenuKey             ( Softkey 1 )
		    NullMenuKey             ( Softkey 2 )
		    NullMenuKey             ( Softkey 3 )
		    NullMenuKey             ( Softkey 4 )
		    NullMenuKey             ( Softkey 5 )
		    {                       ( Softkey 6 )
		      "QUIT"                ( Softkey $label )
		      ::                    ( Softkey action [ -> "QUIT" ] )
		        TakeOver            ( User key definition placeholder )
		        "QUIT"              ( Return "QUIT" [ -> "QUIT" ] )
*		        BRdone              ( Signal to terminate the browser [HP48 rompointer] )
										FLASHPTR BRdone     ( Signal to terminate the browser [HP50 flashpointer] )
		      ;
		    }
		  }
		  "BROWSER EXAMPLE"         ( $title )
		  {                         ( Hardkey list )
		    ::                      ( ENTER key [ -> $item "ENTER ] )
		      BRRclC1               ( -> { data } )
		      BRRclCurRow           ( -> #focus_pos )
		      NTHCOMPDROP           ( Returns the highlighted data item [ -> $ ] )
		      "ENTER"               ( Returns the string "ENTER" [ -> "ENTER" ] )
*		      BRdone                ( Signal to terminate the browser [HP50 rompointer ] )
								FLASHPTR BRdone       ( Signal to terminate the browser [HP50 flashpointer] )
		    ;
		    ::                      ( ON key [ -> "ON" ] )
		      "ON"                  ( Return string "ON" [ -> "ON" ] )
*		      BRdone                ( Signal to terminate the browser [HP48 rompointer] )
								FLASHPTR BRdone       ( Signal to terminate the browser [HP50 flashpointer] )
		    ;
		  }
		  ONE                       ( #first_row )
		  ONE                       ( #focus_pos )
		  {                         ( data list )
				  "AB" "CD" "EF" "GH"
				  "IJ" "KL" "MN" "OP"
		  }
		  ' ::                      ( data secondary [ { data } #index -> $item ] )
		      ZERO #=casedrop
		        LENCOMP             ( Return length of data list if index is 0 [ -> #number_of_data_items ] )
		      NTHCOMPDROP           ( Otherwise return the item [ -> $item ] )
		    ;
		  NULL{}                    ( Speed list )
		  BRbrowse                  ( Display browser )
	 ;
	 ERRTRAP POLResUI&Err        ( IF an error occurs, restore the old user interface and ERRJJMP )
	 POLRestoreUI                ( Restore the old user interface )
	 ClrDAsOK                    ( Redraw the display )
;
