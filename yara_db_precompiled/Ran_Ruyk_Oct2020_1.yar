YARA�          �       `         �   �      �  f         ~      @  �	      3  �
          �
         �         �      �  q                                     ��������                         ��������������������������������������������         (                     N      U                     b      l                     ~      �                     �      �                     �      �                          "                �      �ں�ں��    T      g  ��������           c  �     �ں�ں��    /      �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��    '        ��������             �     �ں�ں��    4      @  ��������           <  �     �ں�ں��    O      y  ��������           u  �     �ں�ں��    c      �  ��������           �  �     �ں�ں��    Z      5  ��������           1  �     �ں�ں��    	      �  ��������           �  �  	   �ں�ں��    
      �  ��������           �  �  
   �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��    
      �  ��������           �  �     �ں�ں��            ��������           �  �     �ں�ں��    (        ��������                 ��������������������default Ran_Ruyk_Oct_2020_1 description Detect RYUK ransomware (Sept_2020_V1) author Arkbird_SOLG reference Internal Research date 2020-10-25 hash1 bbbf38de4f40754f235441a8e6a4c8bdb9365dab7f5cfcdac77dbb4d6236360b hash2 cfe1678a7f2b949966d9a020faafb46662584f8a6ac4b72583a21fa858f2a2e8 hash3 e8a0e80dfc520bf7e76c33a90ed6d286e8729e9defe6bb7da2f38bc2db33f399 $c1 " /TR "C:\Windows\System32\cmd.exe /c for /l %x in (1,1,50) do start wordpad.exe /p  $c2 cmd.exe /c "bootstatuspolicy ignoreallfailures" $c3 C:\Windows\System32\cmd.exe $c4 cmd.exe /c "WMIC.exe shadowcopy delete" $c5 cmd.exe /c "vssadmin.exe Delete Shadows /all /quiet" $c6 cmd.exe /c "bcdedit /set {default} recoveryenabled No & bcdedit /set {default}" $r1 /C REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "EV" /t REG_SZ /d " $r2 /C REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "EV" /f $ref1 lsaas.exe $ref2 Ncsrss.exe $ref3 $WGetCurrentProcess $ref4 lan.exe $ref5 explorer.exe $ref6 Ws2_32.dll $p1 \users\Public\sys $p2 \Documents and Settings\Default User\sys 2      ? �@MZd/   %@ �g/H   ?B          8      p      �      �                /Z   ?B   P     �     �     �     0     h     �     �          /H   ?B   �     �     0     h     �     �          /$   ?B        H                  �        $          *          ,      .      0      2                                                                 f      l      #      %      r      v      x      z      ~          2"                  4&                   ,      -:   .            46  /L  /P  3D                              3`          /p      6j  #�          E<                  HH  ]  X(      `  IX  b  /�  d       1�                          m  n                  s  t                          b\          n8          eh  u4                      v@      ft  tT      ]�                                          ~b                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
   	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ������������������������:          8   ������������������������          p   ������������������������          �   ����������������
   (             �   ����������������
   x               ������������������������O          P  ������������������������          �  ����������������
   �              �  ������������������������
          �  ������������������������          0  ������������������������          h  ������������������������          �  ������������������������          �  ������������������������            ������������������������          H  ������������������������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      0                
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
   �     `     H     P  
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
   p     $      -      6      ?      H      Q      l      u      ~      �      �      �      �      �      �      �      �      �      �      �             