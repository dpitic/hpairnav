RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\INFTESTv2\FldPAChDecomp.s, part of the INFTEST.hpp project, created by <> on 19/05/2009 )

INCLUDE INFTEST.h
NULLNAME FldPAChDecomp
::
	 DUPTYPEREAL? EQUAL case ::
	   EDITDECOMP$
	 ;
		DUPTYPEEXT? EQUAL case ::
	   EDITDECOMP$
	 ;
		DUPTYPELIST? EQUAL case ::
	   INCOMPDROP
	   SWAP
	   DROP
	   EDITDECOMP$
	 ;
	 EDITDECOMP$
;
