YARA�          �       `         �   �      h  �                 %      �          �
  �         �         �!      �   '                            $         ��������                         ��������������������������������������������          ,                     i      p                     �      �                     �      �                 	�                          ��������           {  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��    	      �  ��������           �  )     �ں�ں��        ����������������           �  )     �ں�ں��        ����������������           �  )     �ں�ں��        ����������������              )  	   �ں�ں��        ����������������             )  
   �ں�ں��        ����������������                 ��������������������default Persistence_Agent_MacOS description Detects a Python agent that establishes persistence on macOS author John Lambert @JohnLaTwC reference https://ghostbin.com/paste/mz5nf hash 4288a81779a492b5b02bad6e90b2fa6212fa5f8ee87cc5ec9286ab523fc02446 cec7be2126d388707907b4f9d681121fd1e3ca9f828c029b02340ab1331a5524 e1cf136be50c4486ae8f5e408af80b90229f3027511b4beed69495a042af95be $h1 #!/usr/bin/env python $s_1 <plist $s_2 ProgramArguments $s_3 Library $sinterval_1 StartInterval $sinterval_2 RunAtLoad $e_1 $e_2 $e_4 $einterval_a $einterval_b �       ? �A#!/ud/   ?        /   %A � f/�   BB   8      p      �           /$   ?B   �                1P   BB   P     �     �          /$   ?B   �     0                  �� � �t �] �6 �# �A�H�A�A�b�A�B�p�A�H�M�A�d�A� �c�G�x�p�c�3�# �P�A�B�w�A�G�w�A�a�Q�B�z�A�H�Q�A� �P�H�B�s�a�X�N�0�! �w�A�c�A�B�s�A�G�k�A�c�w�B�0�A� �x�w�b�G�l�z�d�� � �t �] �6 �# �A�d�A�M�H�A�p�B�A�b�A�A�H�A� �3�c�p�x�G�c�# �A�Q�H�A�z�B�Q�a�A�w�G�A�w�B�A�P� �0�N�X�a�s�B�H�P�! �A�0�B�w�c�A�k�G�A�s�B�A�c�A�w� �d�z�l�G�b�w�x�� m��� �� �[ �A�A�c�g�B�v�A�G�c�A�c�g�B�h�A�G�0�A�Q�Q�B�y�A�G�c�A�d�Q�B�t�A�G�U�A�b�g�B�0�A�H�M�A�U �A�H�I�A�b�w�B�n�A�H�I�A�Y�Q�B�t�A�E�E�A�c�g�B�n�A�H�U�A�b�Q�B�l�A�G�4�A�d�A�B�z�A�+ �B�y�b�2�d�y�Y�W�1�B�c�m�d�1�b�W�V�u�d�H�+ �c�m�9�n�c�m�F�t�Q�X�J�n�d�W�1�l�b�n�R�z�W �U�A�B�y�A�G�8�A�Z�w�B�y�A�G�E�A�b�Q�B�B�A�H�I�A�Z�w�B�1�A�G�0�A�Z�Q�B�u�A�H�Q�A�c�w�- �U�H�J�v�Z�3�J�h�b�U�F�y�Z�3�V�t�Z�W�5�0�c�� m��� �� �[ �A�M�H�A�0�B�g�b�A�U�G�A�t�B�Q�d�A�c�G�A�y�B�Q�Q�A�0�G�A�h�B�g�c�A�c�G�A�v�B�g�c�A�A�U �A�z�B�A�d�A�4�G�A�l�B�Q�b�A�U�H�A�n�B�g�c�A�E�E�A�t�B�Q�Y�A�I�H�A�n�B�w�b�A�I�H�A�+ �H�d�u�V�W�b�1�d�m�c�B�1�W�Y�y�d�2�b�y�B�+ �z�R�n�b�l�1�W�d�n�J�X�Q�t�F�m�c�n�9�m�c�W �w�c�A�Q�H�A�u�B�Q�Z�A�0�G�A�1�B�w�Z�A�I�H�A�B�B�Q�b�A�E�G�A�y�B�w�Z�A�8�G�A�y�B�A�U�- �c�0�5�W�Z�t�V�3�Z�y�F�U�b�h�J�3�Z�v�J�H�U�� � �� �k �@ �) �A�G�k�A�Y�g�B�y�A�G�E�A�c�g�B�5�A� �a�W�J�y�Y�X�J�5�' �T�A�B�p�A�G�I�A�c�g�B�h�A�H�I�A�e�Q� �T�G�l�i�c�m�F�y�e�' �w�A�a�Q�B�i�A�H�I�A�Y�Q�B�y�A�H�k�A� �x�p�Y�n�J�h�c�n�� � �� �k �@ �) �A�5�B�g�c�A�E�G�A�y�B�g�Y�A�k�G�A� �5�J�X�Y�y�J�W�a�' �Q�e�A�I�H�A�h�B�g�c�A�I�G�A�p�B�A�T� �e�y�F�m�c�i�l�G�T�' �A�k�H�A�y�B�Q�Y�A�I�H�A�i�B�Q�a�A�w� �n�c�h�J�n�Y�p�x�� �� �� �p �I �A�H�Q�A�Y�Q�B�y�A�H�Q�A�S�Q�B�u�A�H�Q�A�Z�Q�B�y�A�H�Y�A�Y�Q�B�s�A�# �d�G�F�y�d�E�l�u�d�G�V�y�d�m�F�s�G �M�A�d�A�B�h�A�H�I�A�d�A�B�J�A�G�4�A�d�A�B�l�A�H�I�A�d�g�B�h�A�G�w�A�# �N�0�Y�X�J�0�S�W�5�0�Z�X�J�2�Y�W�% �U�3�R�h�c�n�R�J�b�n�R�l�c�n�Z�h�b�G �U�w�B�0�A�G�E�A�c�g�B�0�A�E�k�A�b�g�B�0�A�G�U�A�c�g�B�2�A�G�E�A�b�A�� �� �� �p �I �A�s�B�Q�Y�A�Y�H�A�y�B�Q�Z�A�Q�H�A�u�B�Q�S�A�Q�H�A�y�B�Q�Y�A�Q�H�A�# �s�F�m�d�y�V�G�d�u�l�E�d�y�F�G�d�G �A�w�G�A�h�B�g�d�A�I�H�A�l�B�A�d�A�4�G�A�J�B�A�d�A�I�H�A�h�B�A�d�A�M�# �W�Y�2�J�X�Z�0�5�W�S�0�J�X�Y�0�N�% �b�h�Z�n�c�l�R�n�b�J�R�n�c�h�R�3�U�G �A�b�A�E�G�A�2�B�g�c�A�U�G�A�0�B�g�b�A�k�E�A�0�B�g�c�A�E�G�A�0�B�w�U�� � �� �� �N �3 �A�H�U�A�b�g�B�B�A�H�Q�A�T�A�B�v�A�G�E�A�Z�A� �d�W�5�B�d�E�x�v�Y�W�1 �I�A�d�Q�B�u�A�E�E�A�d�A�B�M�A�G�8�A�Y�Q�B�k�A� �J�1�b�k�F�0�T�G�9�h�Z�3 �U�g�B�1�A�G�4�A�Q�Q�B�0�A�E�w�A�b�w�B�h�A�G�Q�A� �U�n�V�u�Q�X�R�M�b�2�F�k�� � �� �� �N �3 �A�Z�A�E�G�A�v�B�A�T�A�Q�H�A�B�B�g�b�A�U�H�A� �W�Y�v�x�E�d�B�5�W�d�1 �A�k�B�Q�Y�A�8�G�A�M�B�A�d�A�E�E�A�u�B�Q�d�A�I� �Z�h�9�G�T�0�F�k�b�1�J�3 �A�Q�G�A�h�B�w�b�A�w�E�A�0�B�Q�Q�A�4�G�A�1�B�g�U� �k�F�2�b�M�R�X�Q�u�V�n�U�                                                                                                            <                                $$                                     
         1  2.   
  "*             4>                  ="                      C  BF  BN   4  B:      I  6. K  Bv  M&  N  HR  BZ  QP  H,  S4  T  U  V  B^  RX  B|  Z  [  VT  T2  UV  X(  B�  Yt  b  c<  d  e  Y~  X N`  i  B$ H, Bx  m*  B�  H: G�  X@ S�  H< h HP CD HL x
  y   n zL  xf  jn  CF bJ ul  qj  q�  mH x KB HV     x\  cT     CN      
  O` Zf vJ  cj     cl on             bp dh cr sr  Z8       ,  c6                *                px  <         m|     i�                   <   <          <     zB      6\  *                        0~ :b                        CX     90  Cd    5D  1�    Ct 6� 6� :� 1� C@  5� 1� 3�     1� 5� 1� 6� 1�               4� 3�                              
                      R�     B�             H�                                                                 j�                     q�             q�                             o�     o�     h�             j�         s� s�                     x�         v�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         "           $                  #                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             !                                                                                                                                  	                                         
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ������������������������          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������          P     �      O  ��������          P     �      *  ��������          P     m        ��������          P     B      
  ��������          P     7      �   ��������          P           �   ��������          �     �     _  ��������          �     �       ��������          �     ;     �  ��������          �          �  ��������          �     �     g  ��������          �     ~     6  ��������          �     /     �  ��������          �          �  ��������          �     �     �  ��������          �     �     �  ��������          �     �     �  ��������          �     �     ^  ��������          �          �  ��������          �     �     X  ��������          �     �     )  ��������          �     �     �  ��������          �     Y     �  ��������          �          �  ��������          0     �	     s
  ��������          0     J	     ^
  ��������          0     5	     '
  ��������          0     	     �	  ��������          0     �     �	  ��������          0     �     �	  ��������                                                    (                          (      @      H      `      h      0                
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
     
     
      
   (  
   0  
   @  
   H  
   P  
   X  
   h  
   p  
   x  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �  
     
     
     
      
   0  
   8  
   @  
   H  
   X  
   `  
   h  
   p  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �  
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
   �  
   �  
   �  
   �  
   �     (            
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
   (  
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
   �     `     H     P  
   �  
   �  
   �  
   �  
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
   h  
   x  
   �  
   �  
   �           9      B      K      e      n      �      �      �      �      �   