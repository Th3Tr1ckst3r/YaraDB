YARA�          �       �   6      `  �      �  &
         >
      �  1      �  �          �         �         �!      �  n&                                     ��������                                &  ��������   @     �             ��������������������������������������������   !      -                     X      _                     l      w                     �      �                     �      �                     =     B                    M     S                    `     f                    �     �                    �     �                   !      =                    X      _                     l      w                     �      �                     �      �                     =     B                    `     P                    �     �                    �     �                �      �ں�ں��    )      9  ��������           5  �     �ں�ں��    )      g  ��������           c  �     �ں�ں��    $      �  ��������           �  K    �ں�ں��          �  ��������           �  �     �ں�ں��    	      �  ��������           �  K    �ں�ں��    	      �  ��������           �  �     �ں�ں��          �  ��������           �  K    �ں�ں��          �  ��������           �  �     �ں�ں��          	  ��������             �  	   �ں�ں��    
        ��������             �  
   �ں�ں��          &  ��������           !  �     �ں�ں��          4  ��������           /  �     �ں�ں��          B  ��������           <  K    �ں�ں��          b  ��������           \  K    �ں�ں��    $      �  ��������           |  K    �ں�ں��    x      �  ��������           �  �     �ں�ں��           ��������           5  �     �ں�ں��         '  ��������           c  �     �ں�ں��   
      ,  ��������           �  �     �ں�ں��         7  ��������           �  �     �ں�ں��         >  ��������           �  �     �ں�ں��         ^  ��������           �  �     �ں�ں��         u  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         �  ��������             �     �ں�ں��   	      �  ��������             �     �ں�ں��   	      �  ��������           !  �     �ں�ں��         �  ��������           /  �     �ں�ں��         �  ��������           �  �     �ں�ں��   	      �  ��������           �      ��������������������default Ins_NSIS_Buer_Nov_2020_1 description Detect NSIS installer used for Buer loader author Arkbird_SOLG reference1 https://twitter.com/ffforward/status/1333703755439742977 reference2 https://twitter.com/VK_Intel/status/1333647007920033793 reference3 https://twitter.com/James_inthe_box/status/1333551419735953409 date 2020-12-01 level Experimental hash1 b298ead0400aaf886dbe0a0720337e6f2efd5e2a3ac1a7e7da54fc7b6e4f4277 hash2 66f5a68f6b5067feb07bb88a3bfaa6671a5e8fcf525e9cd2355de631c4ca2088 hash3 1c8260f2d597cfc1922ca72162e1eb3f8272c2d18fa41d77b145d32256c0063d $s1 \Microsoft\Internet Explorer\Quick Launch $s2 Software\Microsoft\Windows\CurrentVersion $s3 Control Panel\Desktop\ResourceLocale $s4 %s%s.dll $s5 CRYPTBASE $s6 %u.%u%s%s $s7 PROPSYS $s8 [Rename]
  %s=%s $s9 APPHELP $s10 NSIS Error $s11 K=t%)xMx $s12 4/##=?1 $dbg1 Error launching installer $dbg2 verifying installer: %d%% $dbg3 TMP TEMP    Low \Temp    /D=    NCRC $dbg4 �s*  ;�thL�@ V�d*  hD�@ V�Y*  � \C UV��@ ��t�;�Vt�   ��   V���@ 8 TC uUh TC �*  �t$h  C ��)  f�@�@ 3�j�%A Loader_Buer_Nov_2020_1 Detect Buer loader 2824d4b0e5a502416696b189bd840870a19dfd555b53535f20b0c87c95f4c232 a98abbce5e84c4c3b67b7af3f9b4dc9704b5af33b6183fb3c192e26b1e0ca005 ae3ac27e8303519cf04a053a424a0939ecc3905a9a62f33bae3a29f069251b1f bcdfghklmnpqrstvwxz %02x {%s-%d-%d} update ]otju}y&Ykx|kx&867?5Ykx|kx&867< ]otju}y&Ykx|kx&8678&X8 ]otju}y&\oyzg5Ykx|kx&857> ]otju}y&>47 ]otju}y&Ykx|kx&8678 ]otju}y&= Iutzktz3Z g|mnuuq~4jrr $s13 RegularModules $s14 ]otju}y&> �       ? �@MZd/   %@ �g/�   ?
B          8      p      �      �           P     �     �     �     0     h          /6   ?B   �     �          H                  �      ? �@MZd/   %@ (g/�   ?B   �     �     �     (     `     �     �          @     x     �     �           X                 �                    >      6                                                      Z                                            @   &      $      &(  '              &              &                                $     Z     9<      >  '�   (  \ ?2      D"  &�     >P      &�                 5�  O      Q      S  6�  7�  If              x         ]:  1�  P\  TR  /0 b   c  SX  /�  f&   (  @�  4J    Nh  l  m  d8  o.  bJ  ^T  Ub  J�  fD  fV  v  u$  r4  F�   &  z0  |  f^  ~  Q�  uF  ez  8R s`  >P ?N Z�  5X tl  A` vd  ;d qr  {j  2h 8T 8V *j     hv  Qv s�  f�  fB     �  Mn vn  m�  p jF Tl Tt  &  ��      g^     of  2                          Z          vr      .                                     (  &z     e~  :   :                  ]�                                                             ]�                                                                                                                                                                                             d�                             n�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
   	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ������������������������          8   ������������������������	          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������          �  ������������������������
          �  ������������������������          �  ������������������������          0  ������������������������          h  ������������������������          �  ������������������������
          �  ������������������������            ������������������������          H  ������������������������+          �  ������������������������          �  ������������������������          �  ������������������������          (  ������������������������          `  ������������������������          �  ����������������
                �  ������������������������            ������������������������          @  ����������������
   H            x  ������������������������	          �  ������������������������          �  ������������������������	             ������������������������          X  ������������������������	                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   p     $      -      6      ?      H      Q      Z      c      l      u      ~      �      �      �      �      �      8      @      P      H      X      @     H     `     h     �     �     �     �     �     �     �     �                      (     @     H     �     �     �  
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
   �     �                           )     2     ;     D     M     V     _     h     q  