RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Temporary Variables\QRT1.s, part of the QRT1.hpp project, created by <> on 23/05/2009 )
**********************************************************************
* DESCRIPTION:     Solves the quadratic equation for real roots and
*                  displays "Complex Roots" if the roots are complex.
*                  This program is a rewrite of QRT1.s using
*                  NULLLAM temporary variables.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( %a %b %c -> %root1 %root2 )
*
::
	 0LASTOWDOB!                     ( Clear saved command name )
	 CK3NOLASTWD                     ( Expect 3 arguments )
	 CK&DISPATCH1 3REAL ::           ( 3 real numbers )
	   %0 %0                         ( %root1 %root2 )
	   ' :: 6GETLAM %2 %* %/ ;       ( Subroutine )
    ' NULLLAM                     ( LAM a       [6] )
    ' NULLLAM                     ( LAM b       [5] )
    ' NULLLAM                     ( LAM c       [4] )
    ' NULLLAM                     ( LAM root1   [3] )
    ' NULLLAM                     ( LAM root2   [2] )
    ' NULLLAM                     ( LAM Subr    [1] )
	   SIX DOBIND                    ( Create temporary environment )
	   ::
	     5GETLAM DUP %* 6GETLAM 4GETLAM %* %4 %* %-     ( b^2 - 4*a*c )
	     DUP %0< casedrop "Complex Roots"                 ( IF < 0, exit )
	     %SQRT                                          ( SQRT[b^2 - 4*a*c] )
	     5GETLAM %CHS OVER %+ 1GETLAM EVAL              ( 1st root )
	     3PUTLAM
	     5GETLAM %CHS SWAP %- 1GETLAM EVAL              ( 2nd root )
	     2PUTLAM
	     3GETLAM                                        ( Display 1st root )
	     2GETLAM                                        ( Display 2nd root )
	   ;
	   ABND                          ( Abandon temporary environment )
	 ;
;
