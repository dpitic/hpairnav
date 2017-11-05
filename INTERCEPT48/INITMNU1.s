RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INTERCEPT50\INITMNU1.s, part of the INTERCEPT50.hpp project, created by <> on 20/06/2009 )

INCLUDE INTERCEPT50.h
xNAME INITMNU
::
	 CK0                             ( No arguments )
	 MenuMaker
	 ::
	   ' ::
*	       ZERO
	       "WD"
	       MakeInvLabel
*	       Grob>Menu
	     ;
	   LabelDef!
	   ' {
				  { ::
				      TakeOver
						    "WD"
*										MakeInvLabel
						  ;
		        ::
		          TakeOver
		          CK1&Dispatch
		          real ::
		            ' ID WD STO
*		            "WD"
*		            MakeStdLabel
		          ;
						    ;
						}
				}
	 ;
	 InitMenu
;
