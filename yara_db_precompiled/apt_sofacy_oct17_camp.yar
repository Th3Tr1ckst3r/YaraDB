YARA�          �       �   6      �  �      �  �         �      �  p
      F  �          �         �         �      �  �                                     ��������                                  ��������   �      �             ��������������������������������������������         &                     V      ^                     �      �                     �      �                     4     9                    D     J                         &                     V      ^                     �      �                     �      �                     4     9                    D                     �      �ں�ں��          �  ��������           �  �     �ں�ں��    %      �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��    
      �  ��������           �  	     �ں�ں��            ��������           �       �ں�ں��          "  ��������             �     �ں�ں��          6  ��������           2  �     �ں�ں��          Y  ��������           U  �     �ں�ں��          f  ��������           b  �  	   �ں�ں��          r  ��������           n  �  
   �ں�ں��            ��������           {  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��   	      R  ��������           �  �     �ں�ں��         \  ��������           2  �     �ں�ں��         l  ��������           U  �     �ں�ں��         u  ��������           b  �     �ں�ں��         �  ��������           n      ��������������������default pe Sofacy_Oct17_1 description Detects Sofacy malware reported in October 2017 license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE author Florian Roth (Nextron Systems) reference http://blog.talosintelligence.com/2017/10/cyber-conflict-decoy-document.html date 2017-10-23 hash1 522fd9b35323af55113455d823571f71332e53dde988c2eb41395cf6b0c15805 $x1 %localappdata%\netwf.dll $x2 set path = "%localappdata%\netwf.dll" $x3 %localappdata%\netwf.bat $x4 KlpSvc.dll $g1 set path = "%localappdata%\ $g2 %localappdata%\ $s1 start rundll32.exe %path %,#1a $s2 gshell32 $s3 s - %lu $s4 be run i $s5 ingToBinhary $s6 %j%Xjs $s7 if NOT exist %path % (exit) imphash          a2d1be6502b4b3c28959a4fb0196ea45 exports        KlpSvc s Sofacy_Oct17_2 ef027405492bc0719437eb58c3d2774cc87845f30c40040bbebbcc09a4e3dd18 netwf.dll %s - %s - %2.2x %s - %lu %s "%s", %s %j%Xjsf         13344e2a717849489bcd93692f9646f7 )      m      ? �@MZd/   %A � f/G           �     �     �  �1+            �     �        1�   ?B          8      p      �           1�   ?B          8      p      �      �           P     �     �     �     0     h     �          13      P  /#   BB   �                        �      ? �@MZd/   %A h f/k            �     �     �  �1?   ?B   �          H     �     �          1>   BB   �          H     �     �                 �                                         2                                                                r          v      x      #  !     &                 �      �  .  &,  !0      !:  -&  &4         $N  &J                            3@                                          .t                                  T          /�      2~                                      c                  f      j      Ub  m          o  k$          h.  u  bD  q(      dP  t"  bX      m6  Y|  w*      t<      mR              ml              sj                      xT                      uz      p�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
   	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ������������������������          8   ������������������������          p   ����������������
                 �   ������������������������          �   ����������������
   (               ����������������
   P             P  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          0  ������������������������          h  ������������������������          �  ������������������������          �  ������������������������            ������������������������          H  ������������������������          �  ������������������������          �  ����������������
   �                                                            (                          (      @      H      `      h      �      �      �      �      0                
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
   �     ,      5      >      H      W      `      i      r      �      �      �      �      �      �      �      �      �      �      �      �                          &     ?     P     Y     8      @      P      H      X      �      �      �      �                       (     @     H     `     h          �     �  
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
   �     �     �     �     �     �     �     �     �     �                    !     *  