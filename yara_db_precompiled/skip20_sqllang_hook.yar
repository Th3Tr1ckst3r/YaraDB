YARA�          �       `         �   �                        �  �      �   �          �         �         �      `  "                                     ��������                         ��������������������������������������������         #                     N      S                     ^      j                     k     u                    �     �                    �     �                    �     �                K     �ں�ں��          �  ��������           �  K    �ں�ں��    *        ��������             K    �ں�ں��          @  ��������           ;  K    �ں�ں��    !      Y  ��������           T  K    �ں�ں��          �  ��������           {  K    �ں�ں��          �  ��������           �  K    �ں�ں��    *      �  ��������           �  K    �ں�ں��          �  ��������           �  K    �ں�ں��    &        ��������             K 	   �ں�ں��          2  ��������           -  K 
   �ں�ں��    &      K  ��������           F  K    �ں�ں��    #      w  ��������           r  K    �ں�ں��          �  ��������           �  K    �ں�ں��          �  ��������           �  K&    �ں�ں��          �  ��������           �  Jf    �ں�ں��          �       $,  ���   �  K&    �ں�ں��          �  ��������              Jf    �ں�ں��               �  r�  ���      K    �ں�ں��    ,        ��������             K    �ں�ں��    #      R  ��������           L  K&    �ں�ں��          �  ��������           v  Jf    �ں�ں��               `  ��  ���   v  K&    �ں�ں��          �  ��������           |  Jf    �ں�ں��               �  �)  ���   |  K&    �ں�ں��          �  ��������           �  Jf    �ں�ں��          �     @  z�  ���   �  K&    �ں�ں��          �  ��������           �  Jv    �ں�ں��          �     �  h�  ���   �      ��������������������default skip20_sqllang_hook author Mathieu Tartare <mathieu.tartare@eset.com> date 21-10-2019 description YARA rule to detect if a sqllang.dll version is targeted by skip-2.0. Each byte pattern corresponds to a function hooked by skip-2.0. If $1_0 or $1_1 match, it is probably targeted as it corresponds to the hook responsible for bypassing the authentication. reference https://www.welivesecurity.com/ source https://github.com/eset/malware-ioc/ contact github@eset.com license BSD 2-Clause $1_0 ��UVWAVH���  H�D$8���� $1_1 H��L��$�   I�[I�kI�s I�{(I��A^Ð�������% $2_0 ��UWAUH��XeH�%0    $2_1 H�\$0H�t$8H�� _Ð���������������% $3_0 �L$L��I�SM�CM�K WH��    $3_1 L��$   I�[@I�sHI��A_A^A\_]� $4_0 ��AVAWH��   H�l$PH�E(����H�]`H�uhH�}pL�ex $4_1 ��H��$0  H3� $5_0 H��WATAUAVAWH��  Hǀh�������H�XH�p  $5_1 Hǀh�������H�XH�p  $6_0 D�L$ D�D$H�T$H�L$SVWATAUAVAWH��   $6_1 H�L$SVWATAUAVAWH��  HǄ$�   ���� $7_0 H�t$WH�� Ic�H��H��E�� $7_1  Ic�H��H��E� $8_0 H�H��H�A   Ð�����������@ ��VWATAUAVAWH��H��p $9_0 H��UATAUAVAWH��H��` $10_0 AVH��PH�D$ ����H�\$`H�l$hH�t$pH�|$xH��3���l $10_1 H�BL���   D���   ǀ�      H��Ð�� $11_0 $12_0 $13_0 $14_0 ��H��PH�D$ ���� �       ?B          8      p      �      �           P     �     �     �     0     h     �     �          �     �     (     `     �     @     �                  �                                             
     2   
                                                                    4                       
                      �  	�             �  �      �          %D  %F  %H   \      %N  %P      &R  %V                                 I
  I  I                                  M(              1�  1�  1�          ]  IL  Af                  ]$  ]0  `"                                  ^B                                  i>              u&                      �  a|      �      �           �      �  �  �  �8      �              �.                  �:  �T          �<                              �6              ��  �\                      �t                  ��                                                                      �          �,  ��                                                  �  �J  �^                                      �v                                                              �*      �4  �                  �@                                              �`                          �j                                                  �l                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                               	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ������������������������          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������
          �  ������������������������          �  ������������������������          �  ������������������������          0  ������������������������$          h  ����������������
   �            �  ������������������������          �  ������������������������            ������������������������          H  ������������������������          �  ����������������
   0            �  ����������������
   X            �  ������������������������          (  ������������������������!          `  ����������������
   �            �  ����������������
   �            �  ����������������
                  ����������������
   H            @  ����������������
   p            x  ����������������
   �            �  ����������������
   �            �  ������������������������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      0                
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
   P                       (      1      :      C      L      U      ^      g      p      y      �      �      �      �      �      �      �      �      �   