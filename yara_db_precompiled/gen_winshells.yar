YARA�          �          �      �  f      �           &      J  p      �  X          X         X          X(      x  �-                            	         ��������                                �  ��������   �      �                       ��������   �     �                    �  ��������   @     x                    �  ��������   �                   ��������������������������������������������         $                     O      W                     �      �                     �      �                                                                            �                    O      W                     �      �                     �      �                                                   �                                             O      W                     �      �                     �      �                                                   ;                         �                    O      W                     �      �                     �      �                                                 ��������                 +     1                    r     �                    x     ~                    �                         �     ;                         �                    O      W                     �      �                     �      �                                                 ��������                 +                         r     ;                �      �ں�ں��    &      \  ��������           X  �     �ں�ں��          �  ��������           �  �     �ں�ں��    $      �  ��������           �  �     �ں�ں��    $      �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��    "        ��������             �     �ں�ں��    .      /  ��������           +  �     �ں�ں��          b  ��������           ^  �     �ں�ں��    ,      �  ��������           }  �  	   �ں�ں��         )  ��������           X  �  
   �ں�ں��   $      =  ��������           �  �     �ں�ں��   0      b  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��   ,      �  ��������             �     �ں�ں��         �  ��������           +  �     �ں�ں��         �  ��������           ^  �     �ں�ں��   &      \  ��������           X  �     �ں�ں��         �  ��������           �  �     �ں�ں��   $      �  ��������           �  �     �ں�ں��   $      |  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         b  ��������             �     �ں�ں��         �  ��������           +  �     �ں�ں��   ,      �  ��������           ^  �     �ں�ں��         �  ��������           �  �     �ں�ں��   	      �  ��������           X  �     �ں�ں��   	      �  ��������           �  �     �ں�ں��   &      \  ��������           X  �     �ں�ں��   $      �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��   "        ��������           �  �      �ں�ں��   .      /  ��������           �  �  !   �ں�ں��         �  ��������             �  "   �ں�ں��         .  ��������           +      ��������������������default WindowsShell_s3 description Detects simple Windows shell - file s3.exe license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE author Florian Roth (Nextron Systems) reference https://github.com/odzhan/shells/ date 2016-03-26 hash 344575a58db288c9b5dacc654abc36d38db2e645acff05e894ff51183c61357d $s1 cmd                  - execute cmd.exe $s2 \\.\pipe\%08X $s3 get <remote> <local> - download file $s4 [ simple remote shell for windows v3 $s5 REMOTE: CreateFile("%s") $s6 put <local> <remote> - upload file $s7 term                 - terminate remote client $s8 [ downloading "%s" to "%s" $s9 -l           Listen for incoming connections WindosShell_s1 Detects simple Windows shell - file s1.exe 4a397497cfaf91e05a9b9d6fa6e335243cca3f175d5d81296b96c13c624818bd [ executing cmd.exe [ simple remote shell for windows v1 -p <number>  Port number to use (default is 443) usage: s1 <address> [options] [ waiting for connections on %s [ connection from %s [ %c%c requires parameter WindowsShell_s4 Detects simple Windows shell - file s4.exe f00a1af494067b275407c449b11dfcf5cb9b59a6fac685ebd3f0eb193337e1d6 [ simple remote shell for windows v4 [ uploading "%s" to "%s" WindowsShell_Gen Detects simple Windows shell - from files keygen.exe, s1.exe, s2.exe, s3.exe, s4.exe super_rule hash1 a7c3d85eabac01e7a7ec914477ea9f17e3020b3b2f8584a46a98eb6a2a7611c5 hash2 hash3 df0693caae2e5914e63e9ee1a14c1e9506f13060faed67db5797c9e61f3907f0 hash4 hash5 $s0 [ %s : %i [ %s : %s WindowsShell_Gen2 Detects simple Windows shell - from files s3.exe, s4.exe [ error : received %i bytes �       ? �@MZd/   %A X f/c   ?B          8      p      �      �           P     �     �          1c   ?B          8      p      �      �           P     �     �                  �      ? �@MZd/   %A X f/Z   ?B   �     0     h     �     �          H     �          1Z   ?B   �     0     h     �     �          H     �                 �      ? �@MZd/   %A � f/Z   ?B   �     �     (     `     �     �          @          1Z   ?B   �     �     (     `     �     �          @                       ? �@MZd/   %A � f/-   ?B   x     �     �          1,   BB   x     �     �                 �      ? �@MZd/   %A � f/Q   ?B         X     �     �           8     p          1Q   ?B         X     �     �           8     p                 �                                                                &      
                                                      &  !  #         &                            &,             )2  &6  &>  5
  &@             5$     #T  =                        ,      4N   &                  1r  M  #�      &�  *�                                          \  ]      /�  ;~      b      d&      f  d   f  b"          h(          o  j*  f0  9�  dB  t  u  j.  m8  x  f:  fJ  jH      s4          fb  n<      e`  dp  nZ      j^      tP  tV  sR  pX              d�          tn          uv  n�      u|              u�  q�  n�                          w�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       "   !                       #                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ������������������������#          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������          �  ������������������������          �  ������������������������          �  ����������������
                 0  ����������������
   x             h  ������������������������0          �  ������������������������          �  ������������������������            ����������������
   @            H  ������������������������	          �  ������������������������          �  ����������������
   h  #          �  ����������������
   (             (  ����������������
   P             `  ����������������
   �            �  ����������������
   �             �  ����������������
                 ����������������
   p            @  ����������������
   0            x  ����������������
   �            �  ������������������������          �  ����������������
                  ����������������
   �  #          X  ����������������
   �            �  ����������������
   H            �  ����������������
   �                ����������������
   �             8  ����������������
   �            p  ������������������������          #                                          (                          (      @      H      `      h      �      �      �      �      0                
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
   X     &      /      8      A      J      S      \      e      n      �      �      �      �      �      �      �      �      �      8      @      P      H      X      �      �      �      �                       (     @     H     `     h     (            
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
   �               $     -     6     ?     H     Q     l     u     ~     �     �     �     �     �     h      p      �      x      �      �     �     �     �     �     �     �     �                      (     �     �     �  
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
   `           �     �  
   p  
   x  
   �  
   �     8           (  
   �  
   �  
   �  
   �     p     X     `  
   �  
   �  
   �  
   �     �     �     �                    "     +     F     O     X     a     j     s     |     �     �      �      �      �      �      @     H     `     h     �     �     �     �     �     �     �     �                      (     @     H     `     h     �     �     �     �     �  
   �  
   �  
   �  
         �     �     �  
     
     
      
   (                  
   8  
   @  
   H  
   P     �     �     �     �     �          �      �      �      �      �      �     �     �     �     �     �                      (     @     H     `     h     �     �     P     8     @  
   `  
   h  
   p  
   x     �     p     x  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     0             
      
     
     
        h     P     X  
   (  
   0  
   8  
   @     �     �     �  
   P  
   X  
   `  
   h     E     N     W     `     i     r     {     �     �     �     �     �     �     �  