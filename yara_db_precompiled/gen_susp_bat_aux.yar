YARA�          �       `         �   �        �         �      �  �      b   9          9         9         9      �                                        ��������                         ��������������������������������������������         )                     n      u                     �      �                     '     ,                    7  ��������A                 =     C                	      �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��    
      �  ��������           �      ��������������������default SUSP_BAT_Aux_Jan20_1 description Detects BAT file often dropped to cleanup temp dirs during infection author Florian Roth (Nextron Systems) reference https://medium.com/@quoscient/the-chicken-keeps-laying-new-eggs-uncovering-new-gc-maas-tools-used-by-top-tier-threat-actors-531d80a6b4e9 date 2020-01-29 score hash1 f5d558ec505b635b1e37557350562ad6f79b3da5cf2cf74db6e6e648b7a47127 $s1 if exist "C:\Users\ $s2 \AppData\Local\Temp\ $s3 del "C:\Users\ $s4 .bat" $s5 .exe" goto a       ? �?:d/   %@ h/>   BB          8      p      �      �                   �                                                                                                                                           #                                              /                                                                          ;              D                                                                  M                                          ]      c  b
      f  b  ]                  f                          u                              y  u                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ������������������������          8   ������������������������
          p   ����������������
                 �   ������������������������          �   ������������������������                                                    (                          (      @      H      `      h      �      �      �      �      0                
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
   �      "      +      4      =      F   