RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\DISPtest\ROCKET.s, part of the ROCKET.hpp project, created by <> on 25/05/2009 )
**********************************************************************
* DESCRIPTION:     Rocket launching graphics.
* COMPATIBILITY:   HP48, HP50 (Runs too fast on HP50)
*
::
	 0LASTOWDOB!                       ( Clear saved command name )
	 CK0NOLASTWD                       ( No arguments )
	 ClrDA1IsStat                      ( Suspend clock )
		RECLAIMDISP                       ( Clear screen )
* Build the launch pad
  HARDBUFF2			                      ( Menu grob [ -> grob ] )
  ZEROZERO                          ( -> grob #x1 #y1 )
  131                               ( -> grob #x1 #y1 #x2 )
  EIGHT                             ( -> grob #x1 #y1 #x2 #y2 )
  GROB!ZERODRP                      ( Clear grob pixels [ ... -> ] )
		ABUFF                             ( Stack grob [ -> grob ] )
		55 HEIGHTENGROB                   ( Add blank rows to grob [ grob #55 -> ] )
ASSEMBLE                            ( Rocket grob )
		CON(5)   =DOGROB
		REL(5)   end
		CON(5)   16
		CON(5)   9
		NIBHEX   0100010083008300
		NIBHEX   8300830083008300
		NIBHEX   8300070007000700
		NIBHEX   EF00EF007D103810
end
RPL                                 ( -> grob[source] )
	 ABUFF                             ( Stack grob [ -> grob[source] grob[target] ] )
	 62 40 GROB!                       ( Place rocket in display [ grob[source] grob[target] #x #y -> ] )
	 ELEVEN ZERO DO                    ( Draw countdown to launch )
	   TEN
				INDEX@
				#-
				UNCOERCE                        ( Real number count down [ # -> % ] )
				EDITDECOMP$                     ( % -> $ )
				$>grob                          ( Grob from string using small font [ $ -> grob ] )
				HARDBUFF2                       ( Menu grob [ -> grob ] )
				INDEX@                          ( Loop index )
				DUP#0=ITE                       ( IF = 0 )
				  ELEVEN                          ( Use 11 for the count x coordinate base )
				  :: FIFTEEN VERYSLOW VERYSLOW    ( Otherwise use 15 and delay )
						   VERYSLOW VERYSLOW
						;
				SWAP TEN #* #+                  ( x coordinate )
				TWO                             ( y coordinate )
				GROB!                           ( Put number in menu grob )
				VERYSLOW                        ( EXTRA DELAYS )
				VERYSLOW
				VERYSLOW
				VERYSLOW
	 LOOP
	 56 ONE DO                         ( Launch rocket )
	   WINDOWDOWN                      ( Scroll window down 1 pixel )
	   %RAN % .5 %> ?SKIP              ( 50% chance of generating smoke )
	     :: 67 55 INDEX@ #+ PIXON ;      ( Smoke generation )
	   VERYSLOW                        ( EXTRA DELAY )
	 LOOP
	 RECLAIMDISP                       ( Clear screen )
;
