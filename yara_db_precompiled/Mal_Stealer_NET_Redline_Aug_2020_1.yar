YARA�          �       `         �   �      `                          �                                        -                                     ��������                         ��������������������������������������������   +      7                     \      c                     p      z                     �      �                     �      �                 K     �ں�ں��    _        ��������             K    �ں�ں��    '      t  ��������           p  K    �ں�ں��    =      �  ��������           �  K    �ں�ں��    9      �  ��������           �  K    �ں�ں��    Q         ��������             �     �ں�ں��          v  ��������           r  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �  	   �ں�ں��          �  ��������           �  �  
   �ں�ں��          �  ��������           �  �     �ں�ں��    3      �  ��������           �  �     �ں�ں��    "      6  ��������           1  �     �ں�ں��    R      ^  ��������           Y  �     �ں�ں��    P      �  ��������           �  �     �ں�ں��    Q        ��������             �     �ں�ں��          c  ��������           ^  �     �ں�ں��          ~  ��������           y  �     �ں�ں��    Q      �  ��������           �  �     �ں�ں��          �  ��������           �      ��������������������default Mal_Stealer_NET_Redline_Aug_2020_1 description Detect Redline Stealer (August 2020) author Arkbird_SOLG reference https://twitter.com/JAMESWT_MHT/status/1297878628450152448 date 2020-08-24 hash1 4195430d95ac1ede9bc986728fc4211a1e000a9ba05a3e968dd302c36ab0aca0 $s1 S E L E C T   *   F R O M   W i n 3 2 _ P r o c e s s   W h e r e   S e s s i o n I d = ' { 0 } $s2 ( ( ( ( [ 0 - 9 . ] ) \ d ) + ) { 1 } ) $s3 { 0 } \ F i l e Z i l l a \ r e c e n t s e r v e r s . x m l $s4 { 0 } \ F i l e Z i l l a \ s i t e m a n a g e r . x m l $s5 S o f t w a r e \ M a r t i n   P r i k r y l \ W i n S C P   2 \ S e s s i o n s $s6 <encrypted_key>k__BackingField $s7 set_encrypted_key $s8 UserAgentDetector $s9 $s10 set_FtpConnections $s11 set_IsProcessElevated $s12 SELECT ExecutablePath, ProcessID FROM Win32_Process $s13 <IsProcessElevated>k__BackingField $s14 System.Collections.Generic.IEnumerable<RedLine.Logic.Json.JsonValue>.GetEnumerator $s15 System.Collections.Generic.IEnumerator<RedLine.Logic.Json.JsonValue>.get_Current $s16 HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\App Paths\browser.exe $s17 ProcessExecutablePath $s18 IsProcessElevated $s19 HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\App Paths\firefox.exe $s20 get_encryptedPassword �       ? �@MZd/   %A h f/�   ?B          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (                  �                      (              .                      :                                                      f      j      b          n   2              t          |              &            )@              b                     3<  4D       <              ?,          J  4T  L
  ?6  1Z          Q          ?P      V  /p          FJ                                  Q4  3�  e          h  f"              f*      o          f2      t  s&  v      t$      z      |      fN  t0  dh      lR  p8  ``      uH  l^      `r          `x  sd  uX  `z  ]~  \�                                  sv                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ������������������������%          8   ������������������������	          p   ������������������������          �   ����������������
   P             �   ������������������������A            ������������������������          P  ������������������������          �  ������������������������          �  ����������������
   �             �  ����������������
   @            0  ����������������
   h            h  ������������������������T          �  ������������������������          �  ������������������������E            ����������������
     E          H  ������������������������          �  ������������������������          �  ������������������������          �  ����������������
   X            (  ������������������������                                                    (                          (      @      H      `      h      �      �      0                
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
        &      /      8      A      J      S      \      e      n      w      �      �      �      �      �      �      �      �      �      �   