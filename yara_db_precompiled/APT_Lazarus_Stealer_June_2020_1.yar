YARA�          �       �   f         f      H
  �         �      �  �      Y                              '      X  u.                                     ��������                                $  ��������   �      �                    �  ��������   @     8             ��������������������������������������������   <      H                     y      �                     �      �                     �      �                     �      �                    <      N                    y      �                     �      �                     �      �                     �      x                   <                          y      �                     �      �                     �      �                     �      x                    G     �                 �      �ں�ں��    W      9  ��������           5  �     �ں�ں��    *      �  ��������           �  �     �ں�ں��    "      �  ��������           �  �     �ں�ں��    '      �  ��������           �  �     �ں�ں��            ��������             �     �ں�ں��          0  ��������           ,  �     �ں�ں��          D  ��������           @  �     �ں�ں��          f  ��������           b  �     �ں�ں��    $      �  ��������           �  �  	   �ں�ں��    '      �  ��������           �  �  
   �ں�ں��    %      �  ��������           �  �     �ں�ں��    8      �  ��������           �  �     �ں�ں��    2        ��������             �     �ں�ں��    %      W  ��������           R  K    �ں�ں��    '      �  ��������           }  K    �ں�ں��    1      �  ��������           �  �     �ں�ں��    &      �  ��������           �  �     �ں�ں��            ��������             �     �ں�ں��   P      �  ��������           5  �     �ں�ں��   #      
  ��������           �  �     �ں�ں��         .  ��������           �  �     �ں�ں��   "      J  ��������           �  �     �ں�ں��   ,      m  ��������             �     �ں�ں��         �  ��������           ,  �     �ں�ں��         �  ��������           @  �     �ں�ں��   %      �  ��������           b  �     �ں�ں��   8      �  ��������           �  �     �ں�ں��   2        ��������           �  �     �ں�ں��         �  ��������           �  K    �ں�ں��   '      �  ��������           �  K    �ں�ں��   1      �  ��������             �     �ں�ں��   &      �  ��������           R  �      �ں�ں��           ��������           }  �  !   �ں�ں��   4      M  ��������           5  �  "   �ں�ں��         �  ��������           �  �  #   �ں�ں��         �  ��������           �  �  $   �ں�ں��         �  ��������           �  �  %   �ں�ں��         �  ��������             �  &   �ں�ں��         �  ��������           ,  �  '   �ں�ں��         �  ��������           @  �  (   �ں�ں��   %      �  ��������           b  �  )   �ں�ں��   8      �  ��������           �  �  *   �ں�ں��   2        ��������           �  �  +   �ں�ں��         �  ��������           �  K ,   �ں�ں��   '      �  ��������           �  K -   �ں�ں��   1      �  ��������             �  .   �ں�ں��   &      �  ��������           R      ��������������������default pe APT_NK_Lazarus_Stealer_ScreenCapture_June_2020_1 description Detect ScreenCapture malware used by Lazarus APT author Arkbird_SOLG, James_inthe_box reference https://twitter.com/GR_CTI/status/1275164880992186371 date 2020-06-23 hash1 6caa98870efd1097ee13ae9c21c6f6c9202a19ad049a9e65c60fce5c889dc4c8 $s1 E:\workspace\VS\crat_2\client\Build\Win32\DllRelease\ScreenCapture_Win32_DllRelease.pdb $s2 CloseHandle ScreenCaptureMutex failure! %d $s3 ScreenCapture_Win32_DllRelease.dll $s4 ScreenCaptureMutex already created! %s
 $s5 Capturing screen...
 $s6 %s\P%02d%lu.tmp $s7 ScreenCaptureThread finished! $s8 ScreenCaptureThread started! $s9 ScreenCapture start time set to %llu $s10 $s11 Major=%d, Minor=%d, Build=%d, Arch=%d $s12 Can't create file %s, errno = %d, nCreateRetryCount = %d $s13 ExploreDirectory, csDirectoryPath = %s, dwError=%d $s14 [END] ScreenCaptureThread terminated! $s15 % - 2 0 s       % 1 0 l l u   b y t e s $s16 W r o t e   % d   b y t e s   t o   f i l e   % s $s17 Entered Windows direcotry, skipping... $s18 Found %d entries. APT_NK_Lazarus_Stealer_KeyLog_June_2020_1 Detect keylog malware used by Lazarus APT 6d461bf3e3ca68b2d6d850322b79d5e3e647b0d515cb10449935bf6d77d7d5f2 E:\workspace\VS\crat_2\client\Build\Win32\DllRelease\KeyLog_Win32_DllRelease.pdb CloseHandle KeyLogMutex failure! %d KeyLog_Win32_DllRelease.dll Key Log Mutex already created! %s
 Unable to GetProcAddress of GetAsyncKeyState KeyLogThread finished! KeyLogThread started! [END] KeyLogThread terminated! APT_NK_Lazarus_Stealer_Generic_June_2020_1 Detect stealers used by Lazarus APT by common strings hash2 E:\workspace\VS\crat_2\client\Build\Win32\DllRelease Mutex failure! %d Win32_DllRelease.dll Mutex already created! %s
 [END] Thread finished! Thread started! Thread terminated! )      �       ? �@MZd/   %A @ f/�   ?B          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �                  �      ? �@MZd/   %A @ f/�   ?B   �     (     `     �     �          @     x     �     �           X     �     �                       �      ? �@MZd/   %A @ f/�   ?B   8     p     �     �          P     �     �     �     0	     h	     �	     �	     
                 �                          .                                                     N                                                                &   .      &(      x             /     &4           :                                /:  >  �           4  4<  D  .T  &`              F,      /h      &�          3f  /n      T  (�  V  >P  3t  -�  "�  "�  \  ]  Q@          1�  -�  "�     Od              i  j
  f"  b0  d6      o  p  o$  f8  `J  bB  u&  v   E�      fH      s2              eX      ep      sD  cl  tF  s>  oZ  fr  e�          ev      s\                  `�  f�          ]�      zj                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     !               .   -               &       +                   *   )   	       '                 $           #                                               /   ,               "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ������������������������          8   ������������������������'          p   ������������������������          �   ������������������������#          �   ������������������������            ������������������������          P  ������������������������          �  ����������������
   x             �  ������������������������          �  ����������������
     #          0  ������������������������	          h  ������������������������          �  ������������������������1          �  ������������������������            ������������������������          H  ������������������������          �  ������������������������          �  ������������������������          �  ����������������
                 (  ����������������
   (              `  ����������������
   P             �  ����������������
   h            �  ������������������������            ����������������
   �             @  ����������������
   H            x  ����������������
   �  	          �  ����������������
   �            �  ����������������
   �  1             ����������������
               X  ����������������
   0            �  ����������������
   X            �  ����������������
   �               ����������������
   �            8  ����������������
   �            p  ����������������
   �            �  ����������������
                �  ����������������
   �              ����������������
   `            P  ����������������
   �            �  ����������������
   �            �  ����������������
   �  	          �  ����������������
               0	  ����������������
   8  1          h	  ����������������
               �	  ����������������
   �            �	  ����������������
   �            
  ����������������
   �            /                                                (                          (      @      H      `      h      �      �      0                
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
   �     /      8      A      J      S      \      e      n      w      �      �      �      �      �      �      �      �      �      8      @      P      H      X      �      �      �      �      �      �                       (                  
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
   �     �     �     �  
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
   P     P     8     @  
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
        	               $     -     6     ?     H     Q     Z     c     l     u     ~     �     h      p      �      x      �      @     H     `     h     �     �     �     �     �     �     �     �     h     P     X  
   (  
   0  
   8  
   @     �     �     �  
   P  
   X  
   `  
   h     �     �     �  
   x  
   �  
   �  
   �          �        
   �  
   �  
   �  
   �     H     0     8  
   �  
   �  
   �  
   �     �     h     p  
   �  
   �  
      
        �     �     �  
     
      
   (  
   0     �     �     �  
   @  
   H  
   P  
   X     (	     	     	  
   h  
   p  
   x  
   �     `	     H	     P	  
   �  
   �  
   �  
   �     �	     �	     �	  
   �  
   �  
   �  
   �     �	     �	     �	  
   �  
   �  
   �  
   �     
     �	     �	  
     
     
     
         @
     (
     0
  
   0  
   8  
   @  
   H     �     �     �     �     �     �     �                    "     +     4     =  