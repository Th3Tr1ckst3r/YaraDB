YARA          І       Р   f               (  Ў         Ц      с  Ї      t                    #        '3         GO                            K         џџџџџџџџ                          d      T  џџџџџџџџ   `                            џџџџџџџџ          
             њњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњ   $      +                     :      F                                               $      +                     :      u                   $      +                     :      Н                                              e     i                      џкКњкКњџ          ­   џџџџџџџџ           Ё   K    џкКњкКњџ          С   џџџџџџџџ           В        џкКњкКњџ          в   џџџџџџџџ           Ц        џкКњкКњџ          ђ   џџџџџџџџ           с        џкКњкКњџ            џџџџџџџџ           њ        џкКњкКњџ          #  џџџџџџџџ                  џкКњкКњџ    	      >  џџџџџџџџ           +       џкКњкКњџ    	      [  џџџџџџџџ           H       џкКњкКњџ          u  џџџџџџџџ           e    	   џкКњкКњџ    
        џџџџџџџџ           }    
   џкКњкКњџ    
      Б  џџџџџџџџ                  џкКњкКњџ          Я  џџџџџџџџ           М       џкКњкКњџ          ы  џџџџџџџџ           и       џкКњкКњџ            џџџџџџџџ           є       џкКњкКњџ    $        џџџџџџџџ             K    џкКњкКњџ          C  џџџџџџџџ           <       џкКњкКњџ         ­   џџџџџџџџ           Ё   K    џкКњкКњџ         С   џџџџџџџџ           В        џкКњкКњџ         в   џџџџџџџџ           Ц        џкКњкКњџ         ђ   џџџџџџџџ           с        џкКњкКњџ           џџџџџџџџ           њ        џкКњкКњџ         #  џџџџџџџџ                  џкКњкКњџ   	      >  џџџџџџџџ           +       џкКњкКњџ   	      [  џџџџџџџџ           H       џкКњкКњџ         u  џџџџџџџџ           e       џкКњкКњџ   
        џџџџџџџџ           }       џкКњкКњџ   
      Б  џџџџџџџџ                  џкКњкКњџ         Я  џџџџџџџџ           М       џкКњкКњџ         ы  џџџџџџџџ           и       џкКњкКњџ           џџџџџџџџ           є       џкКњкКњџ   $      Л  џџџџџџџџ             K    џкКњкКњџ         р  џџџџџџџџ           <        џкКњкКњџ   $      Л  џџџџџџџџ           ё  K !   џкКњкКњџ         р  џџџџџџџџ           ј    "   џкКњкКњџ   $        џџџџџџџџ           џ  K #   џкКњкКњџ         2  џџџџџџџџ           +    $   џкКњкКњџ   $      J  џџџџџџџџ           C  K %   џкКњкКњџ         v  џџџџџџџџ           o    &   џкКњкКњџ   $        џџџџџџџџ             K '   џкКњкКњџ         К  џџџџџџџџ           Г    (   џкКњкКњџ   $      г  џџџџџџџџ           Ы  K )   џкКњкКњџ            џџџџџџџџ           ј    *   џкКњкКњџ   $        џџџџџџџџ             K +   џкКњкКњџ         F  џџџџџџџџ           >    ,   џкКњкКњџ   $      _  џџџџџџџџ           W  K -   џкКњкКњџ           џџџџџџџџ             	  .   џкКњкКњџ         ­   џџџџџџџџ           Ё   K /   џкКњкКњџ         С   џџџџџџџџ           В   	  0   џкКњкКњџ           џџџџџџџџ             	  1   џкКњкКњџ         Ў  џџџџџџџџ              	  2   џкКњкКњџ         а  џџџџџџџџ           Т      њњњњњњњњњњњњњњњњњњњњdefault exploit_ole_package_manager author David Cannings description Office Package Manager, may load unsafe content including scripts ref http://quicksand.io/ $header_rtf {\rt $header_office аЯр $header_xml <?xml version= $embedded_object \object $embedded_objdata \objdata $embedded_ocx \objocx $embedded_objclass \objclass $embedded_oleclass \oleclsid $embedded_axocx <ax:ocx $embedded_axclassid ax:classid $embedded_root_entry Root Entry $embedded_comp_obj Comp Obj $embedded_obj_info Obj Info $embedded_ole10 Ole10Native $data0 0003000C-0000-0000-c000-000000000046 $data1       Р      F exploit_ole_package_manager_poss Office Package Manager, needs triage, these clsids are all surrogates 00020C01-0000-0000-C000-000000000046      Р      F $data2 $data3 $data4 00022601-0000-0000-C000-000000000046 $data5 &     Р      F $data6 00022602-0000-0000-C000-000000000046 $data7 &     Р      F $data8 00022603-0000-0000-C000-000000000046 $data9 &     Р      F $data10 0003000D-0000-0000-C000-000000000046 $data11       Р      F $data12 0003000E-0000-0000-C000-000000000046 $data13       Р      F $data14 F20DA720-C02F-11CE-927B-0800095AE340 $data15  Їђ/РЮ{ 	Zу@ exploit_Office_ActiveX_Packager Generic rule to detect RTF or Office files using packager.dll ActiveX control https://blogs.mcafee.com/mcafee-labs/dropping-files-temp-folder-raises-security-concerns/ md5 d1bb6c0a522a689a880636e4d9b76600 $suspicious01 \objemb $suspicious02 \*\objclass Package $suspicious03 5061636b61676500 L      ?               !       B          8      p   ?:5!       2>   ?"       ? d       "        "       ;         2Нџџџ"       "        "       </u   ?B   Ј      р           P          Р     ј     0     h           и          /$   ?B        H                  Ъ     ?               !       B        И     №  ?:5!       2>   ?"       ? d       "        "       ;         2Нџџџ"       "        "       </u   ?B   (     `          а          @     x     А     ш           X          /Ђ   ?B        Ш           8     p     Ј     р          P          Р     ј     0	     h	      	     и	                 ]      ?B   
     H
          /-   ?B   
     И
     №
                 џ        0  *  (          h      t            8             <  H                             Д      И      М      Ќ      Т     А      Ъ      а      д      м          і  1<  1$  3,       ,  6  7   8  3j      '  '  =^   'Є   <  1  BT      DL      FP  $ . 7ў  JD  1Ј      7І      1О      2          <  B     1Ц   8  +ф      R     ]\       <  d     bX   <  d4      1  3                     m@      @є      Bш      3:  T      ]          X          |2  16 Pъ           \     Yж  1 Yи  2Z 7>  ,    1\  (  &     1~  <  bђ   (  , 5 2n 1Р  *  0  *  4  <  6  ,  pю      <  *  F yв  ;X yр  ;j ;r Ј
   *  H ;          <  N 0 2  (  P 2D     4@     CЌ     Cи @ f B ."  <  R     M Yъ MВ 7T  \  Yю     V     .8  @  Yў     ] oМ б  Y  Yј S pа     oд c     cт .L а№  b     Z  <  ^ m yм mЬ .\  @  yє     `     b     yќ      Dp     y y s           D          D                      T  Ь D  X  Ю     а                         df     F     FЂ KІ     ѓ      d|      М      d    FА     KЊ             d      М       М          FВ          М          f  4  f  kЄ p KК  L  ;Ф ;Ц ;Ш KМ ;Ъ  4  fЌ  L  kЈ          4   L           L   4  Nж  ю  fД      P  Nи      P                      kЖ  P   P          kО             Uт Uф  X  j  r    д   м          nв                 nк                                                                 uр uц                                                                                                                                                                                                                                                                                                                                                                                                                                     см                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Д   Џ   Ў       ­       Ќ           Љ       І       Ѓ   Ђ   Ё       Ѕ       Є                           K   Ћ   Њ                                                                                                                 Г       z   y       x   w   r   q   p   o   |       {   }   v   t       s   u   В                    ~         R   T       S   U   Q   Б       N   M   O   А                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  џџџџџџџџџџџџџџџџџџџџџџџџ              џџџџџџџџџџџџџџџџџџџџџџџџ              џџџџџџџџџџџџџџџџџџџџџџџџ              џџџџџџџџџџџџџџџџџџџџџџџџ          8   џџџџџџџџџџџџџџџџџџџџџџџџ          p   џџџџџџџџџџџџџџџџџџџџџџџџ          p   џџџџџџџџџџџџџџџџџџџџџџџџ          p   џџџџџџџџџџџџџџџџџџџџџџџџ          p   џџџџџџџџџџџџџџџџџџџџџџџџ          p   џџџџџџџџџџџџџџџџџџџџџџџџ          Ј   џџџџџџџџџџџџџџџџџџџџџџџџ          Ј   џџџџџџџџџџџџџџџџџџџџџџџџ          Ј   џџџџџџџџџџџџџџџџџџџџџџџџ          Ј   џџџџџџџџџџџџџџџџџџџџџџџџ          Ј   џџџџџџџџџџџџџџџџџџџџџџџџ          Ј   џџџџџџџџџџџџџџџџџџџџџџџџ          Ј   џџџџџџџџџџџџџџџџџџџџџџџџ          Ј   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџ
               р   џџџџџџџџџџџџџџџџ
   И            р   џџџџџџџџџџџџџџџџ
   р            р   џџџџџџџџџџџџџџџџ
               р   џџџџџџџџџџџџџџџџ
   0            р   џџџџџџџџџџџџџџџџ
   X            р   џџџџџџџџџџџџџџџџ
               р   џџџџџџџџџџџџџџџџ
   Ј              џџџџџџџџџџџџџџџџ
   а              џџџџџџџџџџџџџџџџ
   ј              џџџџџџџџџџџџџџџџ
                  џџџџџџџџџџџџџџџџ
   H              џџџџџџџџџџџџџџџџ
   p              џџџџџџџџџџџџџџџџ
                 џџџџџџџџџџџџџџџџ
   Р              џџџџџџџџџџџџџџџџ
   ш            P  џџџџџџџџџџџџџџџџ
               P  џџџџџџџџџџџџџџџџ
   8            P  џџџџџџџџџџџџџџџџ
   `            P  џџџџџџџџџџџџџџџџ
               P  џџџџџџџџџџџџџџџџ
   А            P  џџџџџџџџџџџџџџџџ
   и            P  џџџџџџџџџџџџџџџџ
                P  џџџџџџџџџџџџџџџџ
   (              џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ          Р  џџџџџџџџџџџџџџџџџџџџџџџџ          Р  џџџџџџџџџџџџџџџџџџџџџџџџ          Р  џџџџџџџџџџџџџџџџџџџџџџџџ          Р  џџџџџџџџџџџџџџџџџџџџџџџџ          Р  џџџџџџџџџџџџџџџџџџџџџџџџ          Р  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          0  џџџџџџџџџџџџџџџџџџџџџџџџ          h  џџџџџџџџџџџџџџџџџџџџџџџџ             џџџџџџџџџџџџџџџџџџџџџџџџ          и  џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ$            џџџџџџџџџџџџџџџџџџџџџџџџD          H  џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџ
                   џџџџџџџџџџџџџџџџ
   (               џџџџџџџџџџџџџџџџ
   P               џџџџџџџџџџџџџџџџ
   x             И  џџџџџџџџџџџџџџџџ
                 №  џџџџџџџџџџџџџџџџ
   Ш             №  џџџџџџџџџџџџџџџџ
   №             №  џџџџџџџџџџџџџџџџ
               №  џџџџџџџџџџџџџџџџ
   @            №  џџџџџџџџџџџџџџџџ
   h            (  џџџџџџџџџџџџџџџџ
   P            (  џџџџџџџџџџџџџџџџ
   x            (  џџџџџџџџџџџџџџџџ
                (  џџџџџџџџџџџџџџџџ
   Ш            (  џџџџџџџџџџџџџџџџ
   №            (  џџџџџџџџџџџџџџџџ
               (  џџџџџџџџџџџџџџџџ
   @            (  џџџџџџџџџџџџџџџџ
   h            `  џџџџџџџџџџџџџџџџ
   H            `  џџџџџџџџџџџџџџџџ
   p            `  џџџџџџџџџџџџџџџџ
               `  џџџџџџџџџџџџџџџџ
   Р            `  џџџџџџџџџџџџџџџџ
   ш            `  џџџџџџџџџџџџџџџџ
               `  џџџџџџџџџџџџџџџџ
   8            `  џџџџџџџџџџџџџџџџ
   `              џџџџџџџџџџџџџџџџ
                 џџџџџџџџџџџџџџџџ
   А              џџџџџџџџџџџџџџџџ
   и              џџџџџџџџџџџџџџџџ
                  џџџџџџџџџџџџџџџџ
   (              џџџџџџџџџџџџџџџџ
   P              џџџџџџџџџџџџџџџџ
   x              џџџџџџџџџџџџџџџџ
                а  џџџџџџџџџџџџџџџџ
   Ш            а  џџџџџџџџџџџџџџџџ
   №            а  џџџџџџџџџџџџџџџџ
               а  џџџџџџџџџџџџџџџџ
   @            а  џџџџџџџџџџџџџџџџ
   h            а  џџџџџџџџџџџџџџџџ
               а  џџџџџџџџџџџџџџџџ
   И            а  џџџџџџџџџџџџџџџџ
   р              џџџџџџџџџџџџџџџџ
                 џџџџџџџџџџџџџџџџ
   И              џџџџџџџџџџџџџџџџ
   р              џџџџџџџџџџџџџџџџ
                 џџџџџџџџџџџџџџџџ
   0              џџџџџџџџџџџџџџџџ
   X              џџџџџџџџџџџџџџџџ
                 џџџџџџџџџџџџџџџџ
   Ј            @  џџџџџџџџџџџџџџџџ
   а            @  џџџџџџџџџџџџџџџџ
   ј            @  џџџџџџџџџџџџџџџџ
                @  џџџџџџџџџџџџџџџџ
   H            @  џџџџџџџџџџџџџџџџ
   p            @  џџџџџџџџџџџџџџџџ
               x  џџџџџџџџџџџџџџџџ
   Р            x  џџџџџџџџџџџџџџџџ
   ш            x  џџџџџџџџџџџџџџџџ
   	            x  џџџџџџџџџџџџџџџџ
   8	            x  џџџџџџџџџџџџџџџџ
   `	            x  џџџџџџџџџџџџџџџџ
   	            x  џџџџџџџџџџџџџџџџ
   А	            x  џџџџџџџџџџџџџџџџ
   и	            x  џџџџџџџџџџџџџџџџ
    
            x  џџџџџџџџџџџџџџџџ
   (
            x  џџџџџџџџџџџџџџџџ
   P
            x  џџџџџџџџџџџџџџџџ
   x
            А  џџџџџџџџџџџџџџџџ
    
            ш  џџџџџџџџџџџџџџџџ
   Ш
               џџџџџџџџџџџџџџџџ
   №
            X  џџџџџџџџџџџџџџџџ
                 џџџџџџџџџџџџџџџџџџџџџџџџ	            џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ	          Ш  џџџџџџџџџџџџџџџџџџџџџџџџ             џџџџџџџџџџџџџџџџ
   ј  	             џџџџџџџџџџџџџџџџ
                   џџџџџџџџџџџџџџџџ
   H               џџџџџџџџџџџџџџџџ
   p  	          8  џџџџџџџџџџџџџџџџ
               p  џџџџџџџџџџџџџџџџџџџџџџџџ          p  џџџџџџџџџџџџџџџџџџџџџџџџ          Ј  џџџџџџџџџџџџџџџџџџџџџџџџ          р  џџџџџџџџџџџџџџџџџџџџџџџџ	          р  џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ          P  џџџџџџџџџџџџџџџџџџџџџџџџ          P  џџџџџџџџџџџџџџџџ
   А              џџџџџџџџџџџџџџџџџџџџџџџџ          Р  џџџџџџџџџџџџџџџџ
   @  $          Р  џџџџџџџџџџџџџџџџ
   h  D          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          0	  џџџџџџџџџџџџџџџџ
   №  $          0	  џџџџџџџџџџџџџџџџ
     D          h	  џџџџџџџџџџџџџџџџџџџџџџџџ           	  џџџџџџџџџџџџџџџџџџџџџџџџ	           	  џџџџџџџџџџџџџџџџџџџџџџџџ          и	  џџџџџџџџџџџџџџџџџџџџџџџџ          
  џџџџџџџџџџџџџџџџ
   И            H
  џџџџџџџџџџџџџџџџ
   X            
  џџџџџџџџџџџџџџџџ
               И
  џџџџџџџџџџџџџџџџџџџџџџџџ          №
  џџџџџџџџџџџџџџџџџџџџџџџџ          3                                          (                          (      @      H      0                
       
      
      
      
   (   
   0   
   8   
   @   
   P   
   X   
   `   
   h   
   x   
      
      
         h      P      X   
       
   Ј   
   А   
   И                      
   Ш   
   а   
   и   
   р   
   №   
   ј   
      
     
     
      
   (  
   0  
   @  
   H  
   P  
   X  
   h  
   p  
   x  
        и      Р      Ш   
     
     
      
   Ј  
   И  
   Р  
   Ш  
   а  
   р  
   ш  
   №  
   ј  
     
     
     
      
   0  
   8  
   @  
   H  
   X  
   `  
   h  
   p  
     
     
     
     
   Ј  
   А  
   И  
   Р          ј         
   а  
   и  
   р  
   ш  
   ј  
      
     
     
      
   (  
   0  
   8  
   H  
   P  
   X  
   `  
   p  
   x  
     
     
     
      
   Ј  
   А  
   Р  
   Ш  
   а  
   и  
   ш  
   №  
   ј  
         H     0     8  
     
     
      
   (  
   8  
   @  
   H  
   P  
   `  
   h  
   p  
   x  
     
     
     
      
   А  
   И  
   Р  
   Ш  
   и  
   р  
   ш  
   №  
      
     
     
     
   (  
   0  
   8  
   @          h     p  
   P  
   X  
   `  
   h  
   x  
     
     
     
      
   Ј  
   А  
   И  
   Ш  
   а  
   и  
   р  
   №  
   ј  
      
     
     
      
   (  
   0  
   @  
   H  
   P  
   X  
   h  
   p  
   x  
        И           Ј  
     
     
      
   Ј  
   И  
   Р  
   Ш  
   а  
   р  
   ш  
   №  
   ј  
     
     
     
      
   0  
   8  
   @  
   H  
   X  
   `  
   h  
   p  
     
     
     
     
   Ј  
   А  
   И  
   Р     №     и     р  
   а  
   и  
   р  
   ш  
   ј  
      
     
     
      
   (  
   0  
   8  
   H  
   P  
   X  
   `  
   p  
   x  
     
     
     
      
   Ј  
   А     (            
   Р  
   Ш  
   а  
   и  
   ш  
   №  
   ј  
    	  
   	  
   	  
    	  
   (	  
   8	  
   @	  
   H	  
   P	  
   `	  
   h	  
   p	  
   x	  
   	  
   	  
   	  
    	  
   А	  
   И	  
   Р	  
   Ш	  
   и	  
   р	  
   ш	  
   №	  
    
  
   
  
   
  
   
  
   (
  
   0
  
   8
  
   @
  
   P
  
   X
  
   `
  
   h
  
   x
  
   
  
   
  
   
     `     H     P  
    
  
   Ј
  
   А
  
   И
                 
   Ш
  
   а
  
   и
  
   р
     а     И     Р  
   №
  
   ј
  
      
             №     ј  
     
      
   (  
   0     @     (     0  
   @  
   H  
   P  
   X  
   h  
   p  
   x  
        x     `     h  
     
     
      
   Ј     (      1      :      Г      М      Х      Ю      з      р      щ      ђ      ћ                (     1     8      @      P      H      X      `      h                  А             
   И  
   Р  
   Ш  
   а  
   р  
   ш  
   №  
   ј  
     
     
     
      
   0  
   8  
   @  
   H     ш     а     и  
   X  
   `  
   h  
   p                  
     
     
     
     
   Ј  
   А  
   И  
   Р  
   а  
   и  
   р  
   ш  
   ј  
      
     
     
      
   (  
   0  
   8     X     @     H  
   H  
   P  
   X  
   `  
   p  
   x  
     
     
     
      
   Ј  
   А  
   Р  
   Ш  
   а  
   и  
   ш  
   №  
   ј  
      
     
     
      
   (  
   8  
   @  
   H  
   P  
   `  
   h  
   p  
   x          x       
     
     
     
      
   А  
   И  
   Р  
   Ш  
   и  
   р  
   ш  
   №  
      
     
     
     
   (  
   0  
   8  
   @  
   P  
   X  
   `  
   h  
   x  
     
     
     
      
   Ј  
   А  
   И     Ш     А     И  
   Ш  
   а  
   и  
   р  
   №  
   ј  
      
     
     
      
   (  
   0  
   @  
   H  
   P  
   X  
   h  
   p  
   x  
     
     
     
      
   Ј  
   И  
   Р  
   Ш  
   а  
   р  
   ш  
   №  
   ј           ш     №  
     
     
     
      
   0  
   8  
   @  
   H  
   X  
   `  
   h  
   p  
     
     
     
     
   Ј  
   А  
   И  
   Р  
   а  
   и  
   р  
   ш  
   ј  
      
     
     
      
   (  
   0  
   8     8           (  
   H  
   P  
   X  
   `  
   p  
   x  
     
     
     
      
   Ј  
   А  
   Р  
   Ш  
   а  
   и  
   ш  
   №  
   ј  
      
     
     
      
   (  
   8  
   @  
   H  
   P  
   `  
   h  
   p  
   x     p     X     `  
     
     
     
      
   А  
   И  
   Р  
   Ш  
   и  
   р  
   ш  
   №  
      
     
     
     
   (  
   0  
   8  
   @  
   P  
   X  
   `  
   h     Ј            
   x  
     
     
     
      
   Ј  
   А  
   И  
   Ш  
   а  
   и  
   р  
   №  
   ј  
      
     
     
      
   (  
   0  
   @  
   H  
   P  
   X  
   h  
   p  
   x  
     
     
     
      
   Ј  
   И  
   Р  
   Ш  
   а  
   р  
   ш  
   №  
   ј  
     
     
     
      
   0  
   8  
   @  
   H     р     Ш     а  
   X  
   `  
   h  
   p                  
     
     
     
        P     8     @  
   Ј  
   А  
   И  
   Р          p     x  
   а  
   и  
   р  
   ш     Р     Ј     А  
   ј  
      
     
     
      
   (  
   0  
   8  
   H  
   P  
   X  
   `  
   p  
   x  
     
        ј     р     ш  
     
      
   Ј  
   А     0             
   Р  
   Ш  
   а  
   и  
   ш  
   №  
   ј  
      
     
     
      
   (  
   8  
   @  
   H  
   P     h     P     X  
   `  
   h  
   p  
   x                  
     
     
     
      
   А  
   И  
   Р  
   Ш     и     Р     Ш  
   и  
   р  
   ш  
   №          ј        
      
     
     
     
   (  
   0  
   8  
   @     H     0     8  
   P  
   X  
   `  
   h          h     p  
   x  
     
     
     
      
   Ј  
   А  
   И     И           Ј  
   Ш  
   а  
   и  
   р     №     и     р  
   №  
   ј  
      
     
     
      
   (  
   0     (	     	     	  
   @  
   H  
   P  
   X     `	     H	     P	  
   h  
   p  
   x  
     
     
     
      
   Ј     	     	     	  
   И  
   Р  
   Ш  
   а     а	     И	     Р	  
   р  
   ш  
   №  
   ј  
     
     
     
         
     №	     ј	  
   0  
   8  
   @  
   H     t     }          џ                    #     ,     5     >     G     P     Y     t     }                    Ё     Њ     Г     М     Х     Ю     з     р     щ     ђ     ћ     h      p            x                   Ј      Р      Ш      р      ш                 @
     (
     0
  
   X  
   `  
   h  
   p     x
     `
     h
  
     
     
     
        А
     
      
  
   Ј  
   А  
   И  
   Р     ш
     а
     и
  
   а  
   и  
   р  
   ш                  
   ј  
      
     
        #     ,     F     O     X  