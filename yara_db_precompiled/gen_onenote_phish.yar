YARA�          �       �   �      �  6      �  �         �      �  �        �        �         �          �(      X  10                                     ��������                                ^  ��������   �      �              
      �  ��������   @                         b  ��������         8             ��������������������������������������������   9      E                     �      �                     �      �                                                 ��������A                9      �                    �      �                     �      �                                                 ��������A                9      �                    �      �                    �                                                   %     .                       ��������A                9      �                    �      �                     �                                                      ��������A             	      �ں�ں��          +  ��������           &  	     �ں�ں��          F  ��������           A  	     �ں�ں��          `  ��������           [  	     �ں�ں��    2      {  ��������           v  	     �ں�ں��    2      �  ��������           �  	     �ں�ں��    2      �  ��������           �  	     �ں�ں��    (      #  ��������             	     �ں�ں��    '      Q  ��������           L  	     �ں�ں��    '      ~  ��������           y  	  	   �ں�ں��          �  ��������           �  	  
   �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��            ��������             	     �ں�ں��    
      3  ��������           .  	     �ں�ں��    
      C  ��������           >  	     �ں�ں��    
      S  ��������           N  K    �ں�ں��         �  ��������           �       �ں�ں��           ��������           �       �ں�ں��         &  ��������           !       �ں�ں��         H  ��������           C       �ں�ں��         m  ��������           h  K    �ں�ں��       ����������������           9  K    �ں�ں��       ����������������           =  K    �ں�ں��       ����������������           A  K    �ں�ں��       ����������������           E  K    �ں�ں��       ����������������           I  K    �ں�ں��       ����������������           M  K    �ں�ں��       ����������������           Q  K    �ں�ں��       ����������������           U  K    �ں�ں��       ����������������           Y  K     �ں�ں��       ����������������           ]  K !   �ں�ں��         �  ��������           �  	  "   �ں�ں��         �  ��������           �      ��������������������default SUSP_Email_Suspicious_OneNote_Attachment_Jan23_1 description Detects suspicious OneNote attachment that embeds suspicious payload, e.g. an executable (FPs possible if the PE is attached separately) author Florian Roth (Nextron Systems) reference Internal Research date 2023-01-27 score $ge1 5xbjvWUmEUWkxI1NC3qer $ge2 cW471lJhFFpMSNTQt6nq $ge3 nFuO9ZSYRRaTEjU0Lep6s $sp1 VGhpcyBwcm9ncmFtIGNhbm5vdCBiZSBydW4gaW4gRE9TIG1vZG $sp2 RoaXMgcHJvZ3JhbSBjYW5ub3QgYmUgcnVuIGluIERPUyBtb2Rl $sp3 UaGlzIHByb2dyYW0gY2Fubm90IGJlIHJ1biBpbiBET1MgbW9kZ $sp4 VGhpcyBwcm9ncmFtIG11c3QgYmUgcnVuIHVuZGVy $sp5 RoaXMgcHJvZ3JhbSBtdXN0IGJlIHJ1biB1bmRlc $sp6 UaGlzIHByb2dyYW0gbXVzdCBiZSBydW4gdW5kZX $se1 QGVjaG8gb2Zm $se2 BlY2hvIG9mZ $se3 AZWNobyBvZm $se4 PEhUQTpBUFBMSUNBVElPTi $se5 xIVEE6QVBQTElDQVRJT04g $se6 8SFRBOkFQUExJQ0FUSU9OI $se7 TAAAAAEUAg $se8 wAAAABFAIA $se9 MAAAAARQCA SUSP_Email_Suspicious_OneNote_Attachment_Jan23_2 Detects suspicious OneNote attachment that has a file name often used in phishing attacks $hc1 .one"

5FJce $x01  attachment; filename="Invoice $x02  attachment; filename="ORDER $x03  attachment; filename="PURCHASE $x04  attachment; filename="SHIP SUSP_OneNote_Embedded_FileDataStoreObject_Type_Jan23_1 Detects suspicious embedded file types in OneNote files Florian Roth https://blog.didierstevens.com/ modified 2023-02-27 $x1 $x2 $x3 $x4 $x5 $x6 $x7 $x8 $x9 $x10 SUSP_OneNote_Embedded_FileDataStoreObject_Type_Jan23_2 $a1  ��e&E�čMz�� $s1 <HTA:APPLICATION  �       %A  P f/-   ?B          8      p           /�   ?B   �      �           P     �     �     �     0     h     �     �          H     �     �                  _      %A  P f/      �  /6   ?B   (     `     �     �                 �      %A  � f/l   ?B        @     x     �     �           X     �     �                       D      %A  P f/      8  /   ?B   p                 ����㢽�e�&��E���Ģ��M��z�������������������������M�Z��Z�M�������������������������z��M���Ģ��E��&�e�����筢��㢽�e�&��E���Ģ��M��z�������������������������   �@�e�c�h�o��o�h�c�e�@�   �������������������������z��M���Ģ��E��&�e�����筢��㢽�e�&��E���Ģ��M��z�������������������������   �@�E�C�H�O��O�H�C�E�@�   �������������������������z��M���Ģ��E��&�e�����筢��㢽�e�&��E���Ģ��M��z�������������������������   �O�n� �E��E� �n�O�   �������������������������z��M���Ģ��E��&�e�����筢��㢽�e�&��E���Ģ��M��z�������������������������   �o�n� �e��e� �n�o�   �������������������������z��M���Ģ��E��&�e�����筢��㢽�e�&��E���Ģ��M��z�������������������������L� � � �� � � �L�������������������������z��M���Ģ��E��&�e�����筢��㢽�e�&��E���Ģ��M��z�������������������������I�T�S�F��F�S�T�I�������������������������z��M���Ģ��E��&�e�����筢��㢽�e�&��E���Ģ��M��z������������������������� � �<�h�t�a�:��:�a�t�h�<� � �������������������������z��M���Ģ��E��&�e�����筢��㢽�e�&��E���Ģ��M��z������������������������� � �<�H�T�A�:��:�A�T�H�<� � �������������������������z��M���Ģ��E��&�e�����筢��㢽�e�&��E���Ģ��M��z������������������������� � �<�j�o�b� �� �b�o�j�<� � �������������������������z��M���Ģ��E��&�e������                                                                                    
       
     "               
             ^                      #&                   ,                 1  2,             6         9  4         =                B  C      5V  F
  G  2X  F*  I$  K  F.  F:  N  G@      Q  >n  >x      >�  >�  1p  X       #�  V6  S<  B`  TF  #�      UL  B~  8$ [8  Of  f  UZ      f(  Gj      f0  5J n  B�  Rv  dR  h4  hD  X|  m>      D, x  Z�  P"     Z�  c�      D< [�      zH  wJ  vP  vT  ih  c�  S@ JD V: c 3B O> #�     d(         3F             n h8 #*     3H                                                              ,              4L     3N             4P                                                         2V             4X :R 4Z :T                                                                                                                 �              ��                                  �\                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          /   .           "                                               !               #                                                                                                                                                                                                                                                                                                             
         	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ������������������������          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������
          0  ������������������������          h  ������������������������          �  ������������������������          �  ������������������������            ������������������������          H  ������������������������
          �  ������������������������	          �  ������������������������	          �  ������������������������          (  ������������������������          (  ������������������������          (  ������������������������          (  ������������������������          `  ����������������
   �            `  ����������������
                `  ����������������
   H            `  ����������������
   p            �  ����������������
   �            �  ����������������
   �            �  ����������������
   �            �  ����������������
               �  ����������������
   8            �  ����������������
   `            �  ����������������
   �            �  ����������������
   �                        q   ��������          @     r      �   
   x            x     �      �  
   �            �     �       
   �            �          �  
   �                  �       
               X          }  
   @            �     ~       
   h            �          �  
   �                  �       
   �            8  ����������������
   �            p  ������������������������          #                                          (                          (      @      H      `      h      �      �      0                
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
   �           "      +      F      O      X      a      j      s      |      �      �      �      �      �      �      �      �      8      @      P      H      X      �      �      �      �      �      �                       (                  
   �  
   �  
   �  
   �     X     @     H  
   �  
      
     
     
      
   (  
   0  
   8  
   H  
   P  
   X  
   `  
   p  
   x  
   �  
   �     �     x     �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
      
     
     
      
   (     �     �     �  
   8  
   @  
   H  
   P  
   `  
   h  
   p  
   x  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �           �     �  
   �  
   �  
   �  
   �  
      
     
     
     
   (  
   0  
   8  
   @  
   P  
   X  
   `  
   h     �                     #     h      p      �      x      �      @     H     `     h     �     �     �     �     �     �     �     �     8           (  
   x  
   �  
   �  
   �     p     X     `  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
      
                     
     
      
   (  
   0     P     8     @  
   @  
   H  
   P  
   X     �     p     x  
   h  
   p  
   x  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     0             
   �  
   �  
   �  
   �     W     `     i     r     {     �     �     �     �     �     �      �      �      �      �                       (     @     H     `     h     �     �     h     P     X  
     
     
     
         �     �     �  
   0  
   8  
   @  
   H     �     �  