RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CHS5MsgHndler.s, part of the CHS5.hpp project, created by <> on 15/05/2009 )
*********************************************************************
* DESCRIPTION:     Message handler for choose box.  Placed in a
*                  separate file to allow debugging using Debug4x.
*
EXTERNAL DoCKeyCance      ( Cancel the choose box -> FALSE )
EXTERNAL DoCKeyOK         ( Accept the choices -> FALSE      [ No items chosen ] )
*                         (                    -> Item TRUE  [ Single-pick ]     )
*                         (                    -> Items TRUE [ Multi-pick ]      )
*
NULLNAME CHS5MsgHndler
::                        ( Message handler )
  SIXTY #=casedrop ::     ( Choose box size -> FLAG [TRUE = full-screen, FALSE = partial-screen] )
    TRUE                  ( TRUE = full-screen )
    TRUE                  ( Message was handled )
  ;
  83 #=casedrop ::        ( Choose box menu -> { menu } )
    ' ::                  ( Place secondary on stack )
        NoExitAction      ( Ensure the menu won't be saved as the last menu )
        {
          {
            "EDIT" ::            ( Softkey 1 label $ )
              TakeOver           ( Softkey 1 action definition placeholder )
* Inputline parameters					
					  							"Edit String"      ( $Prompt )
					  							  19GETLAM           ( -> { choice_list } )
					  							  18GETLAM           ( -> #index_of_highlighted_item )
					  							NTHCOMPDROP        ( $Input [Default input $] [ ... -> $	] )
					  							ZERO               ( #CursorPos [Initial cursor position] )
 													ONE                ( #Mode [Initial insert/replace mode: #1 = insert mode] )
  												ONE                ( #Entry [Initial entry mode: #1 = program/immediate entry] )
														ONE                ( #Alpha [Initial alpha-lock mode: #1 = alpha locked] )
														{                  ( Menu )
														  <SkipKey         ( Softkey 1 )
														  >SkipKey         ( Softkey 2 )
														  <DelKey          ( Softkey 3 )
														  >DelKey          ( Softkey 4 )
														  TogInsertKey     ( Softkey 5 [Insert/replace mode key] )
														}	
														ONE                ( #Row [first row of menu to be displayed] )
														FALSE              ( Abort [Action of ON key] [FALSE = ON key clears command line] )
														ZERO               ( #Action [Post cmd line processing] [#0 = no processing] )
														InputLine          ( Run the input line [ ... -> ob FLAG ] )
														IT ::              ( TRUE [Edit was accepted] [ -> ob ])
	  								     18GETLAM         ( -> #index_of_highlighted_item )
 										     19GETLAM         ( -> { choice_list } )
 										     PUTLIST          ( ob # {} -> {}' )
 										     19PUTLAM         ( {}' -> [Store the new list back] )
 													;
														ClrDAsOK           ( Signal the display has been altered )
	           ;
	         }
	         NullMenuKey            ( Softkey 2 )
	         NullMenuKey            ( Softkey 3 )
	         NullMenuKey            ( Softkey 4 )
	         {                      ( Softkey 5 )
	           "(AN(L"                ( Softkey label $ )
												DoCKeyCance            ( Softkey action )
	         }
	         {                      ( Softkey 6 )
	           "OK"                   ( Softkey label $ )
	           DoCKeyOK               ( Softkey action )
	         }
	       }
	     ;
	     TRUE                ( Message was handled )
  ;
  BINT_96d #=casedrop ::  ( OK key event [ -> FLAG [FALSE = OK not allowed, TRUE = ok allowed] )
    19GETLAM              ( Recall data list [ -> { choice_list } ] )
		  TRUE                  ( OK key allowed )
		  TRUE                  ( Message was handled )
		;
		DROPFALSE               ( Other messages not handled )
;
