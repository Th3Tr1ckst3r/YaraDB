YARA�          �       �   �      @  �      �  �	         �	      N        �  �          �         �         �"      p  &                                     ��������                                  ��������         �                    �  ��������   �     h                    �  ��������   �     H             ��������������������������������������������         *                     Q      Y                     �      �                     �      �                     O     T                    _     e                    �     �                    �     �                         *                     Q      Y                     �      �                     �      �                     O     T                    _                              *                     Q      Y                     �      �                     �      �                     O     T                    _     �                         *                     Q      Y                     �      �                     �      �                     O     T                    _     �                	      �ں�ں��          8  ��������           4  	     �ں�ں��          S  ��������           O  �     �ں�ں��          l  ��������           h  �     �ں�ں��          �  ��������           �       �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��    	      �  ��������           �  �     �ں�ں��   &      `  ��������           �  �     �ں�ں��   	      �  ��������           �  �  	   �ں�ں��         �  ��������           �  �  
   �ں�ں��         �  ��������           �  �     �ں�ں��         :  ��������           �       �ں�ں��         J  ��������           �  �     �ں�ں��         ]  ��������           �  �     �ں�ں��   '      q  ��������           �  	     �ں�ں��         �  ��������           4  �     �ں�ں��   A      	  ��������           �  �     �ں�ں��   0      K  ��������           �  	     �ں�ں��   +      |  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��   1      �  ��������           �  �     �ں�ں��           ��������           �      ��������������������default pe FreeMilk_APT_Mal_1 description Detects malware from FreeMilk campaign license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE author Florian Roth (Nextron Systems) reference https://researchcenter.paloaltonetworks.com/2017/10/unit42-freemilk-highly-targeted-spear-phishing-campaign/ date 2017-10-05 hash1 34478d6692f8c28332751b31fd695b799d4ab36a8c12f7b728e2cb99ae2efcd9 hash2 35273d6c25665a19ac14d469e1436223202be655ee19b5b247cb1afef626c9f2 hash3 0f82ea2f92c7e906ee9ffbbd8212be6a8545b9bb0200eda09cce0ba9d7cb1313 $x1 \milk\Release\milk.pdb $x2 E:\BIG_POOH\Project\ $x3 Windows-KB271854-x86.exe $s1 Windows-KB275122-x86.exe $s2 \wsatra.tmp $s3 %s\Rar0tmpExtra%d.rtf $s4 "%s" help imphash          108aa007b3d1b4817ff4c04d9b254b39 FreeMilk_APT_Mal_2 7f35521cdbaa4e86143656ff9c52cef8d1e5e5f8245860c205364138f82c54df failed to take the screenshot. err: %d runsample %s%02X%02X%02X%02X%02X%02X: win-%d.%d.%d-%d         b86f7d2c1c182ec4c074ae1e16b7a3f5 FreeMilk_APT_Mal_3 ef40f7ddff404d1193e025081780e32f88883fa4dd496f4189084d772a435cb2 CMD.EXE /C "%s" \command\start.exe .bat;.com;.cmd;.exe Unexpected failure opening HKCR key: %d FreeMilk_APT_Mal_4 99c1b4887d96cb94f32b280c1039b3a7e39ad996859ffa6dd011cf3cca4f1ba5 base64Encoded="TVqQAAMAAAAE SOFTWARE\Clients\StartMenuInternet\firefox.exe\shell\open\command 'Wscript.echo "Base64 encoded: " + base64Encoded \Google\Chrome\User Data\Default\Login Data outFile=sysDir&"\rundll32.exe" $s5 set shell = WScript.CreateObject("WScript.Shell") $s6 command =outFile &" sysupdate" exports 	       getUpdate s number_of_exports )      �       ? �@MZd/   %A � f/�            �     �     �  �1-   ?B          8      p           1Q   ?B          8      p      �      �           P                  �      ? �@MZd/   %A @ f/a            �     �     �  �15   BB   �     �     �     0                 [      ? �@MZd/   %A  f/5   BB   h     �     �                      �      ? �@MZd/   %A �. f/�                  (     :  /            <  ?d1   ?B   H          1Q   ?B   H     �     �     �     (     `     �                 �                    8              <      >      B      D      N      P      R          X                                          #           &$                              .              �  3(      'J      �      �          �   .  >      �      B  )^      &p  F,  &v  #h          �      &�     �      ;T  #�      �     �  7�      �   .          ].       P      8�  b   P  d   .          h  i   P   B  l  f:      Sb  m6  p2  f@  s  t  ;�  pH  u4  /�  5�                          C�  f`              nV      ]z                      ]�      vZ  d�  ]�      ul      j�      zt  v~  u�          t�                      u�      x�                                      m�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
          	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ������������������������          8   ������������������������          p   ������������������������          �   ����������������
   P             �   ������������������������            ������������������������          P  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          0  ������������������������
          h  ����������������
   �             �  ������������������������          �  ������������������������            ������������������������$          H  ������������������������          �  ������������������������          �  ����������������
   X            �  ������������������������          (  ������������������������          `  ������������������������"          �  ������������������������                                                          (                          (      @      H      `      h      �      �      �      �      �      �      �      �      0                
       
      
      
         h      P      X   
   (   
   0   
   8   
   @      �      �      �   
   P   
   X   
   `   
   h      �      �      �   
   x   
   �   
   �   
   �           �         
   �   
   �   
   �   
   �      H     0     8  
   �   
   �   
   �   
   �      �     h     p  
   �   
   �   
      
        ,      5      >      H      Z      c      l      �      �      �      �      �      �      �      8      @      P      H      X                       (     @     H     `     h     �     �     �     �     �     �     �  
     
      
   (  
   0     �     �     �  
   @  
   H  
   P  
   X     (            
   h  
   p  
   x  
   �     `     H     P  
   �  
   �  
   �  
   �     �                     )     2     ;     D     h      p      �      x      �      �     �     �     �                      (     @     H     `     h     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �          �     �  
     
     
     
         @     (     0  
   0  
   8  
   @  
   H     �     �     �     �     �      �      �      �      �      �     �     �     �     �     �     �     �                      (     x     `     h  
   X  
   `  
   h  
   p     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �                  
   �  
   �  
   �  
   �     X     @     H  
   �  
      
     
        �     x     �  
      
   (  
   0  
   8     �     �     �  
   H  
   P  
   X  
   `     �     �     �     �               '     B     K     T     ]     f     o     x  