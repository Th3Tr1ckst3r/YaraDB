YARAЦ          ж       P  Ў      р  ╓      И  ^         v        У      M  р      ^   >        B$        J4      (
  r>                                                                             5             а      и                     ║     █     @     Ё                    Г                   ░                    M     k     а                          )             @     Р             ············································   -      4                     S      _                     Х      Ъ                     е           A                 л      ╡                    S      [                    -      4                     л      Щ                    Х      ╒                    р     ц                   S      с                    -      4                     Х                          л      *                    е           P                 р     <                   S      е                    -      4                     л      у                    Х                          е           F                S      q                    -      4                     л      л                    Х      	                    е           A                S      J                    -      4                     л      v                    Х      	                    е           A             K      ┌║·┌║·                                      K     ┌║·┌║·                                      	      ┌║·┌║·                                        ┌║·┌║·    	      )                     '        ┌║·┌║·          3                     '        ┌║·┌║·    	      <                     '        ┌║·┌║·    	      F                     '        ┌║·┌║·          P                     '        ┌║·┌║·    	      Y                     '    	    ┌║·┌║·    	      c                     '    
    ┌║·┌║·          m                     '        ┌║·┌║·    	      v                     '        ┌║·┌║·    	      А                     '        ┌║·┌║·          К                     '        ┌║·┌║·    	      У                     '        ┌║·┌║·    	      Э                     '        ┌║·┌║·          з                     '        ┌║·┌║·    	      ░                     '  	      ┌║·┌║·          Б                     }  	      ┌║·┌║·          У                     П  	      ┌║·┌║·          е                     б  	      ┌║·┌║·          ╖                     │  	      ┌║·┌║·          ╔                     ┼  	      ┌║·┌║·    3      ▄                     ╫  	      ┌║·┌║·    3                             	      ┌║·┌║·    4      N                     I  	      ┌║·┌║·          *                     %  K     ┌║·┌║·          A                     <  Щ      ┌║·┌║·    
                                   ┌║·┌║·    	                                   ┌║·┌║·          о                     '        ┌║·┌║·          ╜                     '         ┌║·┌║·          ╠                     '    !    ┌║·┌║·    
      █                     '    "    ┌║·┌║·    
      ц                     '    #    ┌║·┌║·    
      ё                     '    $    ┌║·┌║·    
      №                     '    %    ┌║·┌║·    
                           '    &    ┌║·┌║·    
                           '      ····················default SUSP_Base64_Encoded_Hex_Encoded_Code author Florian Roth (Nextron Systems) description Detects hex encoded code that has been base64 encoded date 2019-04-29 score reference https://www.nextron-systems.com/2019/04/29/spotlight-threat-hunting-yara-rule-example/ $x1 $x2 $fp1 Microsoft Azure Code Signp$ SUSP_Double_Base64_Encoded_Executable Detects an executable that has been encoded with base64 twice https://twitter.com/TweeterCyber/status/1189073238803877889 2019-10-29 hash1 1a172d92638e6fdb2858dcca7a78d4b03c424b7f14be75c2fd479f59049bc5f9 $ VFZwVEFRR RWcFRBUU UVnBUQVFF VFZvQUFBQ RWb0FBQU UVm9BQUFB VFZxQUFBR RWcUFBQU UVnFBQUFF VFZwUUFBS RWcFFBQU UVnBRQUFJ VFZxUUFBT RWcVFBQU UVnFRQUFN SUSP_Reversed_Base64_Encoded_EXE FILE  Detects an base64 encoded executable with reversed characters 2020-04-06 Internal Research 7e6d9a5d3b26fd1af7d58be68f524c4c55285b78304a65ec43073b139c9407a8 $s1 AEAAAAEQATpVT $s2 AAAAAAAAAAoVT $s3 AEAAAAEAAAqVT $s4 AEAAAAIAAQpVT $s5 AEAAAAMAAQqVT $sh1 SZk9WbgM1TEBibpBib1JHIlJGI09mbuF2Yg0WYyd2byBHIzlGaU $sh2 LlR2btByUPREIulGIuVncgUmYgQ3bu5WYjBSbhJ3ZvJHcgMXaoR $sh3 uUGZv1GIT9ERg4Wag4WdyBSZiBCdv5mbhNGItFmcn9mcwBycphGV SUSP_Script_Base64_Blocks_Jun20_1 Detects suspicious file with base64 encoded payload in blocks https://posts.specterops.io/covenant-v0-5-eee0507b85ba 2020-06-05 $sa1 <script language= $sb2 AAA"+
"AAA SUSP_Reversed_Hacktool_Author FILE  Detects a suspicious path traversal into a Windows folder https://hackingiscool.pl/cmdhijack-command-argument-confusion-with-path-traversal-in-cmd-exe/ 2020-06-10 iwiklitneg  eetbus@  SUSP_Base64_Encoded_Hacktool_Dev Detects a suspicious base64 encoded keyword https://twitter.com/cyb3rops/status/1270626274826911744 QGdlbnRpbGtpd2 BnZW50aWxraXdp AZ2VudGlsa2l3a QGhhcm1qMH BoYXJtajB5 AaGFybWowe IEBzdWJ0ZW BAc3VidGVl gQHN1YnRlZ L       ?B          8           /   ?B   p                   е      ?B   и      р           P     И     └     °     0     h     а     ╪          H     А     ╕                 s      %A @Ь f/Z   ?B   Ё     (     `     Ш     ╨          @     x                 /      BB   ░     ш                 =      %A А> f/$   ?B         X                 |      %A └] f/c   ?B   Р     ╚           8     p     и     р          P                  вxв4вNаавcвeвDаавXвHвgнвgвHвXаавDвeвcаавNв4вxнвcвEвDаавXвHвgааавxв4вNнвNв4вxааавgвHвXаавDвEвcн        :      <      R      V      B          ^      \      d      l                          в      А              Ь          #          а               6                                      4.          ,r                 3Z  =(                B6  C     BT  F0  Р H*   J  IP                              R  S2  3r     V>  WJ      5╕      [      XN     JЪ  B"     b  c   Xb  e
  I 6L h,  i  R|  dD  GЮ  RИ      C╝  [v  XЦ  Kц      kX  u  WТ  O░  x$  yH  ct      jj  bВ  1И q`  Bк X0     ╞     oк  vf  Xv tp  HЦ 2╚ pШ  kf r~  d& d: nЎ   6  ╩     6╪ eX Wв G└     ╨ m6     d┤      ╘ qz jВ l┬  bТ Wи 1╥ W░     t v~ X┤ [╝ O▄   
  2╓ c╕ d║ vb  f  wЖ     ┌ qа rШ nд oм     ▄     р     ф     ш     ю         Aь q─ 4╠        ■  *      sЇ mЁ 4▐      J      Є  J   6      1т  J                   3ц     &              А   .  6Ў                              .                      2°                                 :·  B       J   J               а  %.                : 1      J   >      G       H       $          C             G                     W G"     U W     U U
                                 V  W                                                                                                                                 w* x, y(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                A   @   ?   >       =   <   7   6   8   9   5   4   3   2   1   0   /       .   -   ,   +   *   (   )   '       ;   :   &   %   $   #   "   !                                                  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  -                     8      ?      L   
                 p                                     и                                     и                                     р                                     р                                                                                                             P                                    P                  
   а             И                                    И                  
   Ё             └                                    └                  
   @            °                                    °                  
   Р            0                                    0                  
   р            h                                    h                  
   0            а                  
   x             а                  
   А            ╪                  
   ╚             ╪                  
   ╨                              
                                 
                H                  
   X            H                  
   p            А                                    А                  
   └            ╕                  
   °            ╕                  
               Ё                          
          (                                    `                                    Ш                                    ╨                                                                        @                                    x                                    ░                                    ш                                                                                                              X                                    X                                    Р                                    Р                                    ╚                                    ╚                                                                                                              8                                    8                          
          p                          
          p                                    и                                    и                                    р                                    р                                                                                                            P                                    P                                    '                                          (                          (      @      H      `      h      А      И      0                
       
      
      
         h      P      X   
   (   
   0   
   8   
   @      а      И      Р   
   P   
   X   
   `   
   h                  0      8      @      P      H      X      а      и      └      ╚      р      ш                       (     ╪      └      ╚   
   x   
   А   
   И   
   Р   
   а   
   и   
   ░   
   ╕           °         
   ╚   
   ╨   
   ╪   
   р   
   Ё   
   °   
      
        H     0     8  
     
      
   (  
   0  
   @  
   H  
   P  
   X     А     h     p  
   h  
   p  
   x  
   А  
   Р  
   Ш  
   а  
   и     ╕     а     и  
   ╕  
   └  
   ╚  
   ╨  
   р  
   ш  
   Ё  
   °     Ё     ╪     р  
     
     
     
      
   0  
   8  
   @  
   H     (            
   X  
   `  
   h  
   p  
   А  
   И  
   Р  
   Ш     `     H     P  
   и  
   ░  
   ╕  
   └  
   ╨  
   ╪  
   р  
   ш     Ш     А     И  
   °  
      
     
     
      
   (  
   0  
   8     ╨     ╕     └  
   H  
   P  
   X  
   `  
   p  
   x  
   А  
   И          Ё     °  
   Ш  
   а  
   и  
   ░  
   └  
   ╚  
   ╨  
   ╪     @     (     0  
   ш  
   Ё  
   °  
      
     
     
      
   (     x     `     h  
   8  
   @  
   H  
   P  
   `  
   h  
   p  
   x     ░     Ш     а  
   И  
   Р  
   Ш  
   а  
   ░  
   ╕  
   └  
   ╚     ш     ╨     ╪  
   ╪  
   р  
   ш  
   Ё  
      
     
     
        Y      b      k      t      }      Ж      П      Ш      б      к      │      ╝      ┼      ╬      ╫      h      p      А      x      И      @     H     `     h     А     И     а     и     └     ╚     р     ш                  
   (  
   0  
   8  
   @     X     @     H  
   P  
   X  
   `  
   h     Р     x     А  
   x  
   А  
   И  
   Р     ╚     ░     ╕  
   а  
   и  
   ░  
   ╕           ш     Ё  
   ╚  
   ╨  
   ╪  
   р     8           (  
   Ё  
   °  
      
        p     X     `  
     
      
   (  
   0     и     Р     Ш  
   @  
   H  
   P  
   X     
               %     .     7     @     I     Ш      а      ░      и      ╕                       (     @     H     `     h     А     И     р     ╚     ╨  
   h  
   p  
   x  
   А                  
   Р  
   Ш  
   а  
   и     p     y     ╚      ╨      р      ╪      ш      а     и     └     ╚     р     ш                      (     P     8     @  
   ╕  
   └  
   ╚  
   ╨  
   р  
   ш  
   Ё  
   °     И     p     x  
     
     
     
      
   0  
   8  
   @  
   H     м     ╡     °                           @     H     `     h     А     И     а     и     └     ╚     └     и     ░  
   X  
   `  
   h  
   p  
   А  
   И  
   Р  
   Ш     °     р     ш  
   и  
   ░  
   ╕  
   └  
   ╨  
   ╪  
   р  
   ш     0             
   °  
      
     
     
      
   (  
   0  
   8     h     P     X  
   H  
   P  
   X  
   `  
   p  
   x  
   А  
   И     а     И     Р  
   Ш  
   а  
   и  
   ░  
   └  
   ╚  
   ╨  
   ╪     ╪     └     ╚  
   ш  
   Ё  
   °  
    	  
   	  
   	  
    	  
   (	          °        
   8	  
   @	  
   H	  
   P	  
   `	  
   h	  
   p	  
   x	     H     0     8  
   И	  
   Р	  
   Ш	  
   а	  
   ░	  
   ╕	  
   └	  
   ╚	     А     h     p  
   ╪	  
   р	  
   ш	  
   Ё	  
    
  
   
  
   
  
   
     щ     Є     √                         (     1  