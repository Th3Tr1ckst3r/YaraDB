YARAЦ          ж       а  F       	  f      8  Ю         ╢      К  @'      %  e-          e-        i9        qI      (
  ЩS                                                                                           а      ╪                    j             @                         .             р     ╕                                 А     `                    ╤                                       ╘             └     ш                    a             А                          a             @     8                    ў                                       Ш	             └     °                    >
             А     
                    ╦
             @     (             ············································   #      /                     t      |                     ╒      ▄                     √                                                   #                          ╒      ▄                     $          7                 √                               *                   #      Л                    t      |                     ╒      ▄                     √                                                   #      O                    t      |                     ╒      ▄                     √                                                   #      6                    t      |                     ╒      ▄                     √                                                   #      Ё                    t      |                     ╒      ▄                     √                                                   #      ш                    t      |                     ╒      ▄                     √                                                    $          <                #      ~                    t      |                     ╒      ▄                     √                               ж                    ▒     ╖                   #      ~                    t      |                     ╒      ▄                     √                               ж                    ▒     ~                   #      ~                    t      |                     ╒      ▄                     √                               ж                    ▒     	                   #      ~                    t      |                     ╒      ▄                     √                               ж                    ▒     ╡	                   #      ~                    t      |                     ╒      ▄                     √                               ж                    ▒     [
                   #      ~                    t      |                     ╒      ▄                     √                               ж                    ▒     ш
                    )     /                	       ┌║·┌║·           /                     +  	      ┌║·┌║·           R                     N  	      ┌║·┌║·     ;      p                     l  	      ┌║·┌║·     &      ░                     м  	      ┌║·┌║·     !      █                     ╫  	      ┌║·┌║·                                ¤  	      ┌║·┌║·                                  	      ┌║·┌║·           8                     4  	      ┌║·┌║·           Q                     M  	  	    ┌║·┌║·     $      f                     a  	  
    ┌║·┌║·     .      Р                     Л  	      ┌║·┌║·     "      ─                     ┐  	      ┌║·┌║·           ь                     ч  	      ┌║·┌║·    4      5                     +  	      ┌║·┌║·          ╫                     ╙  	      ┌║·┌║·          ї                     ё  	      ┌║·┌║·                                 	      ┌║·┌║·    )      Ч                     +  	      ┌║·┌║·    4      ┴                     ё  	      ┌║·┌║·          Ў                       	      ┌║·┌║·          }                     +  	      ┌║·┌║·    ,      Щ                     ё  	      ┌║·┌║·    
      ╞                       	      ┌║·┌║·    :      6                     +  	      ┌║·┌║·    6      q                     N  	      ┌║·┌║·    +      и                     l  	      ┌║·┌║·    
      ╞                     м  Й      ┌║·┌║·    
      ╞                     +  С      ┌║·┌║·          °                     ╙  С      ┌║·┌║·                                 K     ┌║·┌║·          +                     &  K     ┌║·┌║·    	      A                     <  K      ┌║·┌║·          P                     K  	  !    ┌║·┌║·          ┐                     ё  K "    ┌║·┌║·          ╟                     &  K #    ┌║·┌║·          ╪                     <  K $    ┌║·┌║·          щ                     K  Й  %    ┌║·┌║· 	         U	                     ╙  K &    ┌║·┌║· 	         h	                     &  K '    ┌║·┌║· 	         v	                     <  K (    ┌║·┌║· 	         З	                     K  С  )    ┌║·┌║· 
         Ў	                     ╙  С  *    ┌║·┌║· 
         
                     ё  K +    ┌║·┌║· 
         
                     &  K ,    ┌║·┌║· 
         
                     <  K -    ┌║·┌║· 
         0
                     K  С  .    ┌║·┌║·          Ь
                     ╙  С  /    ┌║·┌║·          и
                     ё  K 0    ┌║·┌║·          ┐
                     &  K 1    ┌║·┌║·          +                     <  K 2    ┌║·┌║·    	      A                     K  С  3    ┌║·┌║·          u                     p  Й  4    ┌║·┌║·          З                     В  Й  5    ┌║·┌║·          д                     Я  С  6    ┌║·┌║·          ╢                     ▒  С  7    ┌║·┌║·          ╚                     ├  С  8    ┌║·┌║·          ╓                     ╤  С  9    ┌║·┌║·          ╓                     ы  С  :    ┌║·┌║·          ї                     Ё  K ;    ┌║·┌║·                               &  K <    ┌║·┌║·          &                     <  K =    ┌║·┌║·          7                     K  K >    ┌║·┌║·          M                     H  K ?    ┌║·┌║·          c                     ^  K @    ┌║·┌║·          y                     t      ····················default APT_Project_Sauron_Scripts description Detects scripts (mostly LUA) from Project Sauron report by Kaspersky license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE author Florian Roth (Nextron Systems) reference https://goo.gl/eFoP4A date 2016-08-08 $x1 local t = w.exec2str("regedit  $x2 local r = w.exec2str("cat $x3 ap*.txt link*.txt node*.tun VirtualEncryptedNetwork.licence $x4 move O FakeVirtualEncryptedNetwork.dll $x5 sinfo | basex b 32url | dext l 30 $x6 w.exec2str(execStr) $x7 netnfo irc | basex b 32url $x8 w.exec("wfw status") $x9 exec("samdump") $x10 cat VirtualEncryptedNetwork.ini|grep $x11 if string.lower(k) == "securityproviders" then $x12 exec2str("plist b | grep netsvcs") $x14 SAURON_KBLOG_KEY = HKTL_Dsniff Detects Dsniff hack tool score 2019-02-19 .*account.*|.*acct.*|.*domain.*|.*login.*|.*member.* APT_Project_Sauron_arping_module Detects strings from arping module - Project Sauron report by Kaspersky $s1 Resolve hosts that answer $s2 Print only replying Ips $s3 Do not display MAC addresses APT_Project_Sauron_kblogi_module Detects strings from kblogi module - Project Sauron report by Kaspersky Inject using process name or pid. Default Convert mode: Read log from file and convert to text Maximum running time in seconds APT_Project_Sauron_basex_module Detects strings from basex module - Project Sauron report by Kaspersky 64, 64url, 32, 32url or 16. Force decoding when input is invalid/corrupt This cruft APT_Project_Sauron_dext_module Detects strings from dext module - Project Sauron report by Kaspersky Assemble rows of DNS names back to a single string of data removes checks of DNS names and lengths (during split) Randomize data lengths (length/2 to length) Hacktool_This_Cruft Detects string 'This cruft' often used in hack tools like netcat or cryptcat and also mentioned in Project Sauron report APT_Project_Sauron_Custom_M1 Detects malware from Project Sauron APT 2016-08-09 hash1 9572624b6026311a0e122835bcd7200eca396802000d0777dba118afaaf9f2a9 ncnfloc.dll $s4 Network Configuration Locator $op0 АunЕ└yjfAГ8
uc╖ $op1 Аu)Е╔y%╣ $op2 +╪HЙ|$8DЙl$@Г├Й APT_Project_Sauron_Custom_M2 30a824155603c2e9d8bfd3adab8660e826d7e0681e28e46d102706a03e23e3a8 \*\3vpn UЛьГьSV3Ў9uWЙu YY├Лeш uИ P @   ЛOЕ╔tГ∙Вз APT_Project_Sauron_Custom_M3 a4736de88e9208eb81b52f29bab9e7f328b90a86512bd0baadf4c519e948e5ec ExampleProject.dll ЛOЕ╔tГ∙В║  4  Е└Yг`0 u UЛь Mu	 u     APT_Project_Sauron_Custom_M4 e12e66a6127cfd2cbb42e6f0d57c9dd019b02768d6f1fb44d91f12d90a611a57 xpsmngr.dll XPS Manager ЙMшЙMьЙMЁ ╥=  ╞ UЛь Mu	 u  [ ЛOЕ╔tГ∙В╢ APT_Project_Sauron_Custom_M6 3782b63d7f6f688a5ccb1b72be89a6a98bb722218c9f22402709af97a41973c8 rseceng.dll Remote Security Engine Л╒  Е╔Ов APT_Project_Sauron_Custom_M7 6c8c93069831a1b60279d2b316fd36bffa0d4c407068dbef81b8e2fe8fd8e8cd hash2 7cc0bf547e78c8aaf408495ceef58fa706e6b5d44441fefdce09d9f06398c0ca $sx1 Default user $sx2 Hincorrect header check $sa1 MSAOSSPC.dll $sa2 MSAOSSPC.DLL $sa3 MSAOSSPC $sa4 AOL Security Package $sa5 $sa6 AOL Client for 32 bit platforms Л╬[щK   UЛьQSЛ] ш
■  ЛMЙFЙAЛE щ)   Г}№ Д╧
  Л $op3 Г°Е:  D+AlAЛ╔ $op4 D9WД╓  DЙoEЙ $op5 ┴эГ╞■щh■  D9Wu У       ?B          8      p      и      р           P     И     └     °     0     h     а                  '      ?B   ╪                 8      BB        H     А                 I         ╕  1-   ?B   ╕     Ё     (                 I         `  1-   ?B   `     Ш     ╨                 B      ?B        @     x     ░                 6      ? Ї@MZd/   %A   f/      ш         ┤      ? Ї@MZd/   %A   f/#   BB         X          /-   ?B   Р     ╚                1>   BB         X     Р     ╚                       l      ? Ї@MZd/   %A @ f/   BB   8          /,   BB   p     и     р                 l   	   ? Ї@MZd/   %A а f/   BB             /,   BB   P     И     └          	       ┤   
   ? Ї@MZd/   %A h f/#   BB   °     0	          /-   ?B   h	     а	     ╪	          1>   BB   °     0	     h	     а	     ╪	          
       ┤      ? Ї@MZd/   %A   f/#   BB   
     H
          /-   ?B   А
     ╕
     Ё
          1>   BB   
     H
     А
     ╕
     Ё
                 4     ? Ї@MZd/   %A   f/  ?B   (     `     Ш     ╨          @     x     ░          /H   ?B   ш           X     Р     ╚                1l   ?B   (     `          /H   ?B   Ш     ╨          @     x     ░                                          |      А      Ж                        r      Ш  ,              Р                      └                  ╪          ю      )@                  ■                  Ї  4`      : 7J              f              P          B:      D
  E  +╚  r     I   L              NL  O<     QP   4  SZ  T  UD  V0     Q~  NФ  5▄  )    ]6  /T О         bb  3X     eX  fj   X   j          /n     mF      o&  pV  qT      sd  tB  ux  jВ      x^         b      P          d  Б8   j  DФ Д  e╬  %╞ f╨  bЎ  Еz  К4  i╥  М  j╘   @      eZ QШ vф  f j°  ЖЪ  j№  }┬  Кд  d> Да  s  *╨     sb     Nд ДЄ  qj Мо  М╕  iP f~ \Ь     fа     mv      X  b╠ sl oЖ  d  9ю     h╓  T           z           F  ^ fо Еp  j  ` ]╢ ┬   &  ─.  Z f·  ,  )4 X  
  T
  P  b     eЁ  j  h  L  jъ         nт  j  0J     ╧Ц   6  p v▄ O )R +H e +L     v■ f*  b  v     щ  j     x         юp  v     t r yЎ     t$      X  /d l.     ∙t   j  Р     А ~ О  V  а    о      B   X   <      o0 ╨t ┴и 4И f6 
▓  B  fB u>  j  └         ╠  @   j  9К lF ╓к  x       j  v@                 df 0к           r      Z|  ╪   :              :  4      ДT /╢                 #╨             *╚        `               : э▓ ·┌  d  #ш     /╬  B      Кj /▐ /р cЪ      d   А  3т             ;┌ ДЖ  T   &   : sЦ  V          j┤  Ш   n     tЮ `╞      d      ЖМ             sм                         q╝ o╛                             p─                                                 ╫V             s╪ y╓                                                         }ц                                                                                 ъl                         эt щД                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         A   @   ?   >       ;   :   7   6   5   4   =   <           1   ,   +   *       (   .   %       $   #   "   !   3   2                                                        8       -                       0                    /   &   	                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                8                   
                 p                                     и                           #          р                                                                         P                  
   а             И                                    └                  
               °                  
   x             0                                    h                  
   (   
          а                                    ╪                                                                        H                                    А                                    ╕                          !          Ё                                    (                                    `                                    Ш                          %          ╨                                                                        @                          ,          x                                     ░                  
   p            ш                  
                                                    X                                    Р                                    ╚                                                                         8                                    p                                    и                                    р                          
                                              P                          
          И                          	          └                                    °                                    0	                                    h	                                    а	                  
   @            ╪	                  
   Ё  
          
                                    H
                                    А
                                    ╕
                  
   ░            Ё
                  
   ╪            (                                    `                                    Ш                          	          ╨                                                                        @                                    x                  
   └            ░                                    ш                                                               	          X                                    Р                                    ╚                                                                         A                                          (                          (      @      H      `      h      А      И      0                
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
   h      ╪      └      ╚   
   x   
   А   
   И   
   Р           °         
   а   
   и   
   ░   
   ╕      H     0     8  
   ╚   
   ╨   
   ╪   
   р      А     h     p  
   Ё   
   °   
      
        ╕     а     и  
     
      
   (  
   0     Ё     ╪     р  
   @  
   H  
   P  
   X     (            
   h  
   p  
   x  
   А     `     H     P  
   Р  
   Ш  
   а  
   и     Ш     А     И  
   ╕  
   └  
   ╚  
   ╨     ╨     ╕     └  
   р  
   ш  
   Ё  
   °                       (      1      :      C      L      U      ^      g      p      y      8      @      P      H      X      а      и      └      ╚      р      ш                       (          Ё     °  
     
     
     
         а      h      p      А      x      И      @     H     `     h     А     И     а     и     └     ╚     @     (     0  
   0  
   8  
   @  
   H     x     `     h  
   X  
   `  
   h  
   p     ░     Ш     а  
   А  
   И  
   Р  
   Ш     ╞      ╧      ╪      Ш      а      ░      и      ╕      р     ш                      (     @     H     `     h     ш     ╨     ╪  
   и  
   ░  
   ╕  
   └                  
   ╨  
   ╪  
   р  
   ш     X     @     H  
   °  
      
     
        №                      ╚      ╨      р      ╪      ш      А     И     а     и     └     ╚     р     ш                Р     x     А  
      
   (  
   0  
   8     ╚     ░     ╕  
   H  
   P  
   X  
   `           ш     Ё  
   p  
   x  
   А  
   И     E     W     `     i     °                                 (     @     H     `     h     А     И     а     и     8           (  
   Ш  
   а  
   и  
   ░     p     X     `  
   └  
   ╚  
   ╨  
   ╪     и     Р     Ш  
   ш  
   Ё  
   °  
         р     ╚     ╨  
     
     
      
   (     С     Ъ     г     м     (     0     @     8     H     └     ╚     р     ш                      (     @     H     `     h                  
   8  
   @  
   H  
   P     щ     X     `     p     h     x     А     И     а     и     └     ╚     р     ш                      (     P     8     @  
   `  
   h  
   p  
   x     И     p     x  
   И  
   Р  
   Ш  
   а     └     и     ░  
   ░  
   ╕  
   └  
   ╚     °     р     ш  
   ╪  
   р  
   ш  
   Ё     0             
      
     
     
        !     *     E     N     W     q     z     Г     М     Х     И     Р     а     Ш     и     @     H     `     h     А     И     а     и     └     ╚     р     ш     h     P     X  
   (  
   0  
   8  
   @     а     И     Р  
   P  
   X  
   `  
   h     ╪     └     ╚  
   x  
   А  
   И  
   Р          °        
   а  
   и  
   ░  
   ╕     ╒     я     °          ╕     └     ╨     ╚     ╪                      (     @     H     `     h     А     И     а     и     H     0     8  
   ╚  
   ╨  
   ╪  
   р     А     h     p  
   Ё  
   °  
      
        ╕     а     и  
     
      
   (  
   0     Ё     ╪     р  
   @  
   H  
   P  
   X     A     [     d     m     ш     Ё           °          └     ╚     р     ш                      (     @     H     `     h     (	     	     	  
   h  
   p  
   x  
   А     `	     H	     P	  
   Р  
   Ш  
   а  
   и     Ш	     А	     И	  
   ╕  
   └  
   ╚  
   ╨     ╨	     ╕	     └	  
   р  
   ш  
   Ё  
   °     
     Ё	     °	  
     
     
     
         н     ╢     ╤     ┌     у     ¤                    !                0     (     8     А     И     а     и     └     ╚     р     ш                      (     @
     (
     0
  
   0  
   8  
   @  
   H     x
     `
     h
  
   X  
   `  
   h  
   p     ░
     Ш
     а
  
   А  
   И  
   Р  
   Ш     ш
     ╨
     ╪
  
   и  
   ░  
   ╕  
   └                  
   ╨  
   ╪  
   р  
   ш     a     j     Е     О     Ч     ▒     ║     ├     ╠     ╒     H     P     `     X     h     @     H     `     h     А     И     а     и     └     ╚     р     ш      	     	     X     @     H  
   °  
      
     
        Р     x     А  
      
   (  
   0  
   8     ╚     ░     ╕  
   H  
   P  
   X  
   `           ш     Ё  
   p  
   x  
   А  
   И     8           (  
   Ш  
   а  
   и  
   ░     p     X     `  
   └  
   ╚  
   ╨  
   ╪     и     Р     Ш  
   ш  
   Ё  
   °  
    	     р     ╚     ╨  
   	  
   	  
    	  
   (	                  
   8	  
   @	  
   H	  
   P	     P     8     @  
   `	  
   h	  
   p	  
   x	     И     p     x  
   И	  
   Р	  
   Ш	  
   а	     └     и     ░  
   ░	  
   ╕	  
   └	  
   ╚	     °     р     ш  
   ╪	  
   р	  
   ш	  
   Ё	     0             
    
  
   
  
   
  
   
               (     1     :     C     L     U     o     x     Б     К     У     Ь     ╖     └     ┌     у     ь     ї     ■       