RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Temporary Variables\QRT1.s, part of the QRT1.hpp project, created by <> on 23/05/2009 )
**********************************************************************
* DESCRIPTION:     Solves the quadratic equation for real roots and
*                  displays "Complex Roots" if the roots are complex.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( %a %b %c -> %root1 %root2 )
*
::
	 0LASTOWDOB!                     ( Clear saved command name )
	 CK3NOLASTWD                     ( Expect 3 arguments )
	 CK&DISPATCH1 3REAL ::           ( 3 real numbers )
	   %0 %0                         ( %root1 %root2 )
	   ' :: LAM a %2 %* %/ ;         ( Subroutine )
	   {
	     LAM a
	     LAM b
	     LAM c
	     LAM root1
	     LAM root2
	     LAM Subr
	   }
	   BIND                          ( Create temporary environment )
	   ::
	     LAM b DUP %* LAM a LAM c %* %4 %* %-     ( b^2 - 4*a*c )
	     DUP %0< casedrop "Complex Roots"           ( IF < 0, exit )
	     %SQRT                                    ( SQRT[b^2 - 4*a*c] )
	     LAM b %CHS OVER %+ LAM Subr EVAL         ( 1st root )
	     ' LAM root1 STO
	     LAM b %CHS SWAP %- LAM Subr EVAL         ( 2nd root )
	     ' LAM root2 STO
	     LAM root1
	     LAM root2
	   ;
	   ABND                          ( Abandon temporary environment )
	 ;
;
