RPL 
( C:\Documents and Settings\Dan Pitic\My Documents\Debug4x\Projects\GreyBook\GUI\CH6MsgHandler.s, part of the CHS6.hpp project, created by <> on 15/05/2009 )
**********************************************************************
* DESCRIPTION:     Choose box message handler placed in a separate
*                  file to allow debugging using Debug4x.
*
* File header
INCLUDE CHS6.h
EXTERNAL grobCheckKe             ( Check label grob )
EXTERNAL LEDispPromp             ( Display an item [#index #highlight_row -> ] )
EXTERNAL DoCKeyCheck             ( Check/uncheck current item in multi-pick choose box )
EXTERNAL DoCKeyChAll             ( Check all items in a multi-pick choose box [left-shifted] )
EXTERNAL DoCKeyUnChA             ( Uncheck all items in a multi-pick choose box [righ-shifted] )
EXTERNAL DoCKeyCance             ( Cancel the choose box [ -> FALSE ] )
EXTERNAL DoCKeyOK                ( Accept the choices [ -> FALSE ]      = No items selected )
	                                (                    [ -> item TRUE ]  = Single-pick       )
	                                (                    [ -> items TRUE ] = Multi-pick        )
* Message handler definition
NULLNAME CHS6MsgHandler
::
	 SIXTYONE #=casedrop            ( Pick Type [ -> FLAG ] [TRUE = Multi-pick, FALSE = Single-pick] )
		  TrueTrue                     ( TRUE = Multi-pick, TRUE message was handled )
		SIXTYTWO #=casedrop ::         ( Item count [ -> #number_of_items_in_list ] )
		  NINE                         ( #number_of_items_in_list = 9 )
		  TRUE                         ( Message was handled )
		;
		SEVENTY #=casedrop ::          ( Title String [ -> $title ] )
		  15GETLAM                     ( -> { list of picked indicies } )
		  LENCOMP                      ( {} -> #n [#n = number of objects in list] )
		  ::
		    ZERO #=casedrop            ( No choices )
		      "NO FROGS"               ( -> $ )
		    ONE #=casedrop             ( Once choice picked )
		      "1 FROG"                 ( -> $ )
		    UNCOERCE                   ( More than 1 choice picked [ # -> % ] )
		      EDITDECOMP$                ( % -> $ )
		      " FROGS" &$                ( $ $' -> $'' )
		  ;
		  " PICKED" &$                 ( $ $ -> $title )
		  TRUE                         ( Message was handled )
		;
		80 #=casedrop ::               ( Item String [ #item_index -> $item_string ] )
		  UNCOERCE                     ( #item_index -> %item_real )
		  EDITDECOMP$                  ( %item_real -> $ )
		  "Frog " SWAP&$               ( $ $' -> $item_string )
		  TRUE                         ( Message was handled )
		;
		83 #=casedrop ::               ( Choose box menu [ -> { menu } ] )
		  ' ::
		      NoExitAction             ( Ensure menu won't be saved as the last menu )
		      {
		        NullMenuKey            ( Softkey 1 )
		        NullMenuKey            ( Softkey 2 )
		        {                      ( Softkey 3 )
		          ::                     ( Softkey label [ -> $label/grob ] )
		            TakeOver             ( Custom key definition placeholder )
		            grobCheckKe          ( Check label grob [ -> grob ] )
		          ;
		          {                      ( Softkey action )
		            ::                   ( Primary key plane action )
		              TakeOver           ( Custom key definition placeholder )
		              DoCKeyCheck        ( Check/uncheck current item in multi-pick choose box )
		              LEDispPromp        ( Display choose box title )
		            ;
		            ::                   ( Left-shift plane action )
		              TakeOver           ( Custom key definition placeholder )
		              DoCKeyChAll        ( Check all items in multi-pick choose box )
		              LEDispPromp        ( Display choose box title )
		            ;
		            ::                   ( Right-shift plane action )
		              TakeOver           ( Custom key definition placeholder )
		              DoCKeyUnChA        ( Uncheck all items in multi-pick choose box )
		              LEDispPromp        ( Display choose box title )
		            ;
		          }
		        }
		        NullMenuKey            ( Softkey 4 )
		        {                      ( Softkey 5 )
		          "(AN(L"                ( Softkey $label )
		          DoCKeyCance            ( Softkey action )
		        }
		        {                      ( Softkey 6 )
		          "OK"                   ( Softkey $label )
		          DoCKeyOK               ( Softkey action )
		        }
		      }
		    ;
		  TRUE                        ( Message was handled )
		;
		DROPFALSE                     ( Other messages not handled )
;
