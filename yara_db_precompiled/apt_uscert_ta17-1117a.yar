YARA          І          Ц      @        И  О         ж      +        d  e      ь   Q         Q         Q"      №  A(                                     џџџџџџџџ                                о  џџџџџџџџ         p                     Љ  џџџџџџџџ         Ј                       џџџџџџџџ        р               
      [  џџџџџџџџ   р                  њњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњњ   -      9                     П      Ц                     Ъ      д                                             -                          П      Ц                     Ъ      д                          ~                   -      ц                    П      Ц                     Ъ      д                          /                   -      Љ                    Ъ      д                     П      Ц                    П      k                                             Ъ      д                                                   Ј                    Г     Й                    к     р                                             (     .                    O     U                    -      ~                K     џкКњкКњџ        џџџџџџџџџџџџџџџџ           Г  K    џкКњкКњџ        џџџџџџџџџџџџџџџџ           С  K    џкКњкКњџ       џџџџџџџџџџџџџџџџ             K    џкКњкКњџ         e  џџџџџџџџ           P       џкКњкКњџ         ї  џџџџџџџџ           ю       џкКњкКњџ           џџџџџџџџ                  џкКњкКњџ         E  џџџџџџџџ           <  K    џкКњкКњџ         А  џџџџџџџџ           Ќ  	     џкКњкКњџ   ?      б  џџџџџџџџ           Э  	  	   џкКњкКњџ           џџџџџџџџ             	  
   џкКњкКњџ         4  џџџџџџџџ           0  K    џкКњкКњџ          X  џџџџџџџџ           T  K    џкКњкКњџ         }  џџџџџџџџ           y  K    џкКњкКњџ           џџџџџџџџ             K    џкКњкКњџ   +      Л  џџџџџџџџ           З  K    џкКњкКњџ          ы  џџџџџџџџ           ч  	     џкКњкКњџ           џџџџџџџџ                 њњњњњњњњњњњњњњњњњњњњdefault Dropper_DeploysMalwareViaSideLoading description Detects a dropper used to deploy an implant via side loading. This dropper has specifically been observed deploying REDLEAVES & PlugX author USG reference https://www.us-cert.gov/ncas/alerts/TA17-117A true_positive 5262cb9791df50fafcb2fbd5f93226050b51efe400c2924eecba97b7ce437481: drops REDLEAVES. 6392e0701a77ea25354b1f40f5b867a35c0142abde785a66b83c9c8d2c14c0c3: drops plugx.  $UniqueString $PsuedoRandomStringGenerator REDLEAVES_DroppedFile_ImplantLoader_Starburn Detects the DLL responsible for loading and deobfuscating the DAT file containing shellcode and core REDLEAVES RAT 7f8a867a8302fe58039a6db254d335ae $XOR_Loop REDLEAVES_DroppedFile_ObfuscatedShellcodeAndRAT_handkerchief Detects obfuscated .dat file containing shellcode and core REDLEAVES RAT fb0c714cd2ebdcc6f33817abe7813c36 $RedleavesStringObfu sde^`tutlo`m^md`wdr^emml`ho/emm REDLEAVES_CoreImplant_UniqueStrings Strings identifying the core REDLEAVES RAT in its deobfuscated state $unique2 RedLeavesSCMDSimulatorMutex $unique4 red_autumnal_leaves_dllmain.dll $unique7 \NamePipe_MoreWindows PLUGX_RedLeaves US-CERT Code Analysis Team date 03.04.2017 incident 10118538 2017-04-03 MD5_1 598FF82EA4FB52717ACAFB227C83D474 MD5_2 7D10708A518B26CC8C3CBFBAA224E032 MD5_3 AF406D35C77B1E0DF17F839E36BCE630 MD5_4 6EB9E889B091A5647F6095DCD4DE7C83 MD5_5 566291B277534B63EAFC938CDAAB8A399E41AF7D Detects specific RedLeaves and PlugX binaries $s0 40W@=/а rє3Рџ40$@=/а rє $s1 C:\Users\user\Desktop\my_OK_2014\bit9\runsna\Release\runsna.pdb $s2 d:\work\plug4.0(shellcode) $s3 \shellcode\shellcode\XSetting.h $s4 BЏє'jEЊXGMLKр=[9UfОМНэщ(rХФХI( $s5 г*абТ80A;Ы|яj j j Vj j  $s6 ы_ЧышіџџџUььШ  SVW $s7 23Щ29С2љ
|ђBЊ ;г|тЊ j j j V $s8 )57gZ@*35WА^аА^Г­ЄЄЄаЗкЗ_[[ $s9 RedLeavesCMDSimulatorMutex 0       ?B          8                   '      ?B   p                  '      ?B   Ј                  9      ?B   р           P                 Ќ           1      Р  1       ј  /      0  1      h  1         1      и  1        1      H  1               џЂ.ЂlЂnЂkЕ   ЂaЂvЂpЂuЂiЂ.ЂeЂxЂe­ЂeЂxЂeЂ.ЂiЂuЂpЂvЂaЕ   ЂkЂnЂlЂ.­ЂЙЂЕ   ЂїЂљЂFЂЂТЂAЂЂTЂ5ЂЂЂўЂd­ЂdЂўЂЂЂ5ЂTЂЂAЂТЂЂFЂљЂїЕ   ЂЂЙ­Ђ2ЂЂ:ЂЂТЂЂЂЂЂњЂЕ  Ђ2ЂЂ:ЂЂТЂЂЂЂЂњЂ­ЂЂњЂЂЂЂЂТЂЂ:ЂЂ2Е  ЂЂњЂЂЂЂЂТЂЂ:ЂЂ2­                            *  &      :      D          N                               $         @                                                                                /$      +2      3  /.  5
  6"  30          ј          4     +V  >,  A          >6      3T      1X  1`      0\      4p      6     FB      S  FH  )ю      F O<      H ;|      ]  4ж      `      2№      E  e   E  :р  F  EЄ  EО      Or  FЌ  6ђ          f>  \Z  s  fJ  `R  fF           "              t8      mP  bv     _      e  id  e      fx  e  eТ        fВ      M M     M"     M*         oИ  fі  M8             L      M@         `                         nќ     aZ MJ     MP m m     m&     m, Ц              m<                     mB         b                     ll             mL     mN                                 д(                                      с                                          ь                                                              бо          бє                                                                                                                                                                                                                                                                                                                              џf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             #                               $               "   !                                 %                                                                                                        
                                             	               &                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ?   џџџџџџџџ          8      Y      n   џџџџџџџџ          p            ы   џџџџџџџџ          Ј   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ          р   џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџ
               P  џџџџџџџџџџџџџџџџџџџџџџџџ          P  џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ          Р  џџџџџџџџџџџџџџџџџџџџџџџџ          ј  џџџџџџџџџџџџџџџџџџџџџџџџ          0  џџџџџџџџџџџџџџџџџџџџџџџџ          h  џџџџџџџџџџџџџџџџџџџџџџџџ             џџџџџџџџџџџџџџџџџџџџџџџџ          и  џџџџџџџџџџџџџџџџџџџџџџџџ            џџџџџџџџџџџџџџџџџџџџџџџџ          H  џџџџџџџџџџџџџџџџџџџџџџџџ	            џџџџџџџџџџџџџџџџ
                                                           (                          (      @      H      `      h      0                
       
      
      
         h      P      X   
   (   
   0   
   8   
   @                  8      @      P      H      X                         Ј      Р      Ш      р      ш                      
   P   
   X   
   `   
   h      =      h      p            x                             (     @     H     `     h     и      Р      Ш   
   x   
      
      
         d                   А      Ј      И                      Ј     Р     Ш          ј         
       
   Ј   
   А   
   И   
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
     
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
   Р  
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
   А     H     0     8  
   Р  
   Ш  
   а  
   и  
   ш  
   №  
   ј  
              h     p  
     
     
      
   (  
   8  
   @  
   H  
   P                       Ш      а      р      и      ш      р     ш                      (     @     H     `     h                     Ј     Р     Ш     р     ш                      (     И           Ј  
   `  
   h  
   p  
   x     №     и     р  
     
     
     
         (            
   А  
   И  
   Р  
   Ш     `     H     P  
   и  
   р  
   ш  
   №                 
      
     
     
        а     И     Р  
   (  
   0  
   8  
   @          №     ј  
   P  
   X  
   `  
   h     @     (     0  
   x  
     
     
        x     `     h  
      
   Ј  
   А  
   И     А             
   Ш  
   а  
   и  
   р     С      а      р      я                       0     @     P  