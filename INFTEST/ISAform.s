( Inform Box File )   ( Do not modify this line )
* Inform Box  ISA  Source Code  
* Generated on 16:09:05 16/04/2009 by HP InformBox Generator  
* Inform Box Designer is Dan Pitic  
 
INCLUDE Header.h                    ( Include Standard RPL defs )
INCLUDE Informbox.h                 ( Include Definitions )
INCLUDE ISATM.h                     ( Include Project Header )
 
( Field and Label Definitions ) 
  DEFINE Field_PA            BINT0   
  DEFINE Field_T1            BINT1   
  DEFINE Field_P1            BINT2   
  DEFINE Field_rho1          BINT3   
  DEFINE Field_a1            BINT4   
  DEFINE Label_PA            BINT0   
  DEFINE Label_T1            BINT1   
  DEFINE Label_P1            BINT2   
  DEFINE Label_rho1          BINT3   
  DEFINE Label_a1            BINT4   
 
( Local Definitions ) 
 
NULLNAME ISAform 
:: 
( Internal Graphical Datas ) 
  ASSEMBLEM 
  STRING { 
    $(5)#1489                       % Uncompressed string size 
    $(3)#0                          % Y offset
    $(2)#0                          % Current Field
    $(2)#5                          % Number of labels
    $(2)#5                          % Number of fields
    $(5)#215                        % Offset to fields definition

  % Start of label definitions      
    $192029011011601D0F08                         % Label Label_PA definition
    $1920221001011601D0F08                        % Label Label_T1 definition
    $19202210024001601D0F08                       % Label Label_P1 definition
    $19202B1001011601D0F08                        % Label Label_rho1 definition
    $19202B10024001601D0F08                       % Label Label_a1 definition

  % Start of field definitions    
    $143101801E003007801E60F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F01 % Field Field_PA definition
    $14B021100E003003801D20F0F0F0F0F0F0F0F0F0F01  % Field Field_T1 definition
    $14B021100F43003801D20F0F0F0F0F0F0F0F0F0F01   % Field Field_P1 definition
    $14B02A100E003003801D20F0F0F0F0F0F0F0F0F0F01  % Field Field_rho1 definition
    $14B02A100F43003801D20F0F0F0F0F0F0F0F0F0F01   % Field Field_a1 definition
  }                                 
  !RPL FLASHPTR IsUncompressDataString ( Uncompress the string )
   
  ( Labels graphic, string on the stack ) 
  ASSEMBLEM $(5)DOBINT $(5)ISAformMesBase+#0 $(5)BINT5 
  !RPL FLASHPTR IfSetAllLabelsMessages 
   
  ( Help strings, string on the stack ) 
  ASSEMBLEM $(5)DOBINT $(5)ISAformMesBase+#5 $(5)BINT5 
  !RPL FLASHPTR IfSetAllHelpStrings 
   
  ( Title string, string on the stack ) 
  ASSEMBLEM $(5)DOBINT $(5)ISAformMesBase+#10 
  !RPL FLASHPTR IfSetTitle          
   
  ( Inform Box Message Handler )    
  'DROPFALSE                        ( Inform Box Message Handler )
   
( Field Definitions )             
  ( Field_PA definition )           
  ' ::                              ( Field Message Handler )
  	   IfMsgGetFieldValue #= case ::
  	     DUPTYPEREAL? case ::
  	       "ft" umEND
  						  BINT3 EXTN
  								TRUE
  	     ;
  	     TRUE
  	   ;
  		  FALSE
    ;
  IfFieldTypeText                   ( Field Type )
  { IfObReal IfObUnit  }            ( Allowed Types )
  BINT2                             ( Decomp object )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  MINUSONE                          ( Reset Value - defaulted )
  ID PA                             ( Initial Value )
                                  
  ( Field_T1 definition )           
  'DROPFALSE                        ( Field Message Handler )
  IfFieldTypeText                   ( Field Type )
  { IfObReal IfObUnit  }            ( Allowed Types )
  BINT2                             ( Decomp object )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  MINUSONE                          ( Reset Value - defaulted )
  ID T1                             ( Initial Value )
                                  
  ( Field_P1 definition )           
  'DROPFALSE                        ( Field Message Handler )
  IfFieldTypeText                   ( Field Type )
  { IfObUnit  }                     ( Allowed Types )
  BINT2                             ( Decomp object )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  MINUSONE                          ( Reset Value - defaulted )
  ID P1                             ( Initial Value )
                                  
  ( Field_rho1 definition )         
  'DROPFALSE                        ( Field Message Handler )
  IfFieldTypeText                   ( Field Type )
  { IfObUnit  }                     ( Allowed Types )
  BINT2                             ( Decomp object )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  MINUSONE                          ( Reset Value - defaulted )
  ID \971                           ( Initial Value )
                                  
  ( Field_a1 definition )           
  'DROPFALSE                        ( Field Message Handler )
  IfFieldTypeText                   ( Field Type )
  { IfObUnit  }                     ( Allowed Types )
  BINT2                             ( Decomp object )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  MINUSONE                          ( Reset Value - defaulted )
  ID A1                             ( Initial Value )
                                  
( Group the Field Definitions in a List ) 
  ASSEMBLEM $(5)BINT40              % #8*No fields 
  !RPL {}N                          
   
  FLASHPTR IfMain2                  
   
;                                   ( end of form procedure )
 
(                                 
% Count for the Message Table  
DCCP 11 ISAformMesBase 
) 
 
( Messages automatically copied by Inform Generator ) 
( Messages added to the Library's Message Table ) 
*  "PA:" 
*  "T1:" 
*  "P1:" 
*  "\971:" 
*  "a1:" 
*  "PRESSURE ALTITUDE" 
*  "STATIC AIR TEMP. (TRUE \B0C)" 
*  "STATIC PRESSURE" 
*  "DENSITY" 
*  "SPEED OF SOUND" 
*  " ISA " 
 
( Internal Datas: Do not touch! 
l00000000020C001C00010000000500200049005300410020
0002000D000A
0002000D000A
0002000D000A
f0020003801B8002000010008004600690065006C0064005F005000410008004600690065006C0064005F0050004100A7002
S70020003A003A000D000A000900200020002000490066004D00730067004700650074004600690065006C006400560061006
SC0075006500200023003D002000630061007300650020003A003A000D000A000900200020002000200020004400550050005
S4005900500045005200450041004C003F002000630061007300650020003A003A000D000A000900200020002000200020002
S00020002200660074002200200075006D0045004E0044000D000A0009000900090009000900090020002000420049004E005
S400330020004500580054004E000D000A000900090009000900090009000900090054005200550045000D000A00090020002
S0002000200020003B000D000A0009002000200020002000200054005200550045000D000A0009002000200020003B000D000
SA000900090020002000460041004C00530045000D000A00200020003B000D000A0000000200300041000500420049004E005
S4003200000003004F004E0045000000050049004400200050004100110050005200450053005300550052004500200041004
SC005400490054005500440045
f0044003800B4002000010008004600690065006C0064005F005400310008004600690065006C0064005F005400310000000
S0000200300041000500420049004E0054003200000003004F004E00450000000500490044002000540031001C00530054004
S10054004900430020004100490052002000540045004D0050002E0020002800540052005500450020005C004200300043002
S9
f0044013C00B4002000010008004600690065006C0064005F005000310008004600690065006C0064005F005000310000000
S000010041000500420049004E0054003200000003004F004E00450000000500490044002000500031000F005300540041005
S400490043002000500052004500530053005500520045
f0068003800B400200001000A004600690065006C0064005F00720068006F0031000A004600690065006C0064005F0072006
S8006F00310000000000010041000500420049004E0054003200000003004F004E004500000007004900440020005C0039003
S70031000700440045004E0053004900540059
f0068013C00B4002000010008004600690065006C0064005F006100310008004600690065006C0064005F006100310000000
S000010041000500420049004E0054003200000003004F004E00450000000500490044002000410031000E005300500045004
S500440020004F004600200053004F0055004E0044
l002400040034001800010008004C006100620065006C005F00500041000300500041003A
l004800040034001800010008004C006100620065006C005F00540031000300540031003A
l004801080034001800010008004C006100620065006C005F00500031000300500031003A
l006C0004003400180001000A004C006100620065006C005F00720068006F00310005005C003900370031003A
l006C01080034001800010008004C006100620065006C005F00610031000300610031003A
0002000D000A
0002000D000A
000900440061006E002000500069007400690063
00070049005300410066006F0072006D
00040046004600460046
)                                 
