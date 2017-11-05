RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\Temporary Variables\QRT1.s, part of the QRT1.hpp project, created by <> on 23/05/2009 )
**********************************************************************
* DESCRIPTION:     Solves the quadratic equation for real roots and
*                  displays "Complex Roots" if the roots are complex.
*                  This program is a rewrite of QRT2.s using
*                  NULLLAM temporary variables which are given names
*                  using DEFINE.
* COMPATIBILITY:   HP48, HP50
* USAGE:     ( %a %b %c -> %root1 %root2 )
*
DEFINE a         6GETLAM          ( Map names to temporary )
DEFINE b         5GETLAM          ( environment objects )
DEFINE c         4GETLAM
DEFINE root1     3GETLAM
DEFINE root1STO  3PUTLAM
DEFINE root2     2GETLAM
DEFINE root2STO  2PUTLAM
DEFINE Subr      1GETLAM
::
	 0LASTOWDOB!                     ( Clear saved command name )
	 CK3NOLASTWD                     ( Expect 3 arguments )
	 CK&DISPATCH1 3REAL ::           ( 3 real numbers )
	   %0 %0                         ( %root1 %root2 )
	   ' :: a %2 %* %/ ;             ( Subroutine )
	   {
      NULLLAM                       ( LAM a       [6] )
      NULLLAM                       ( LAM b       [5] )
      NULLLAM                       ( LAM c       [4] )
      NULLLAM                       ( LAM root1   [3] )
      NULLLAM                       ( LAM root2   [2] )
      NULLLAM                       ( LAM Subr    [1] )
    }
	   BIND                          ( Create temporary environment )
	     b DUP %* a c %* %4 %* %-      ( b^2 - 4*a*c )
	     DUP %0< casedrop ::             ( IF < 0, exit )
						  "Complex Roots"
						  ABND                          ( Abandon temporary environment )
						;
	     %SQRT                         ( SQRT[b^2 - 4*a*c] )
	     b %CHS OVER %+ Subr EVAL      ( 1st root )
	     root1STO
	     b %CHS SWAP %- Subr EVAL      ( 2nd root )
	     root2STO
	     root1                         ( Display 1st root )
	     root2                         ( Display 2nd root )	
	   ABND                          ( Abandon temporary environment )
	 ;
;
