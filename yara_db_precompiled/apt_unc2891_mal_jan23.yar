YARA�          �       �   �      �  V      �  �         �              �  �      �   �         �         �      �  !!                                     ��������                                �   ��������   �      �                     F  ��������   @     0                    �  ��������         �             ��������������������������������������������         (                     H      O                     i      n                     y      �                                              H      ,                    i      n                     i     r                    y      �                     }     �                         ]                    H      O                     i      n                     y      �                     }     �                    �     �                                                  �                    H      O                     i      n                     y      �                     }     �                �      �ں�ں��          �   ��������           �   	     �ں�ں��          �   ��������           �   K    �ں�ں��        ����������������           �   K    �ں�ں��    
      �   ��������           �   K    �ں�ں��         �  ��������           �   K    �ں�ں��         �  ��������           �   �     �ں�ں��         �  ��������           �   �     �ں�ں��          �  ��������           �   	     �ں�ں��           ��������             	  	   �ں�ں��         3  ��������           *  K 
   �ں�ں��         e  ��������           [  K    �ں�ں��         x  ��������           n  K    �ں�ں��       ����������������           �   K    �ں�ں��       ����������������           �   	     �ں�ں��         
  ��������           �   	     �ں�ں��           ��������           �       ��������������������default MAL_UNC2891_Caketap description Detects UNC2891 Rootkit Caketap author Frank Boldewin (@r3c0nst) date 2022-03-30 reference https://github.com/fboldewin/YARA-rules/tree/master $str1 .caahGss187 $str2 ipstat $code1 $code2 A�F=A�F2 MAL_UNC2891_Slapstick Detects UNC2891 Slapstick pam backdoor Frank Boldewin (@r3c0nst), slightly modifier by Florian Roth modified 2023-01-05 hash1 9d0165e0484c31bd4ea467650b2ae2f359f67ae1016af49326bb374cead5f789 �PH��H9�u� �H�����)���� /proc/self/exe %-23s %-23s %-23s %-23s %-23s %s $str3 pam_sm_authenticate $str_fr1 HISTFILE=/dev/null MAL_UNC2891_Steelcorgi Detects UNC2891 Steelcorgi packed ELF binaries 0760cd30d18517e87bf9fd8555513423db1cd80730b47f57167219ddbf91f170 hash2 3560ed07aac67f73ef910d0b928db3c0bb5f106b5daee054666638b6575a89c5 hash3 5b4bb50055b31dbd897172583c7046dd27cd03e1e3d84f7a23837e8df7943547 $pattern1 pad lck  $pattern2 �r�o�c�/�s�e�l�f�/�e�x�e MAL_UNC2891_Winghook Detects UNC2891 Winghook Keylogger d071ee723982cf53e4bce89f3de5a8ef1853457b21bffdae387c4c2bd160a38e fgets read t       ? �AELFd/Y   BB   p      �           16   BB          8           /      8   ?d        �      ? �AELFd/   %A � f/X   BB   �                15   BB   P     �     �     �                 >      ? �AELFd/#   BB   0     h                 o      ? �AELFd/   %A � f/$   ?B   �     �          /#   BB        H                 ��A���~��K�u��A���~��W�u��A����F�+��+�F����A��u�W��~���A��u�K��~���A���������� � � �A���ʵ  �D��Ϣ����� � � �� � � ���碁�Ϣ�D�  �ʢ��A� � � ���ᢁ��������������2������ �H�����H�����u��u�����H�����H� ������2�������⢃�        
                                                                          D  &                                     n       
             &                 �         b     0          3       "  .6   
              �                        B  2B                                  F0  M  3Z                      G<  I:  >R  :d  0|  0~  9p                          4�                      g      f   j  d.  h$  b2          8�  q  bH  s  t"  >�          fJ      q4              eT      qF                          nX      er          `�  s^      �>                      �8  �N  tj          ut              h  p�                                          u�  �x                                                              ��                      �  �                  �                                                                                                                                                                                                                              �(             ю                      �z                                                       Q                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
      	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ������������������������          8   ������������������������          p             I   ��������          �   ������������������������          �   ������������������������	            ������������������������          P  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������
          0  ������������������������          h  ������������������������          �     J      �   ��������          �     �      �   ��������            ������������������������          H  ������������������������                                                    (                          (      @      H      `      h      0                
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
   �            #      <      E      \      8      @      P      H      X      �      �      �      �      �      �      �      �                       (          �         
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
   �     �      �      �      �      �      �      h      p      �      x      �      @     H     `     h     �     �     �     �     �     �     �     �                `     H     P  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �               �      �      �      �      �            (     @     H     `     h     �     �     �     �     �     �     �  
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
   p     Z     c     }     �  