YARA�          �       `         �   �      p   �               2  @      /   o      >  �         �         �      �  m                                     ��������                         ��������������������������������������������   *      1                     >      H                     �      �                          &                -                      ����������������           (  -    �ں�ں��        ����������������           -      ��������������������default IQY_File_With_Pivot_Extension_URL Author InQuest Labs Reference http://blog.inquest.net/blog/2018/08/23/hunting-iqy-files-with-yara/ Description Detect Excel IQY files with URLs that contain commonly used malicious file extensions that may act as a pivot to a secondary stage. Severity 9 $web $url .       ?        /      8           ��� ) �                               ����W�E�B�) �                               ����	 �
� ��
�� 	 �
� �
��) �                               ����B�E�W�) �                               ������h�t�t�p�  �s�:�/�/�      ���������                ����.�u �h �[ �N �A �4 �' �	 �
 �s�c�r�	 �e�x�e�	 �h�t�a�	 �v�b�s�	 �p�s�1�	 �b�a�t�	 �d�a�t�	 �r�a�r�	 �z�i�p�	 �a�c�e�� u �h �[ �N �A �4 �' � � �r�c�s�	 �e�x�e�	 �a�t�h�	 �s�b�v�	 �1�s�p�	 �t�a�b�	 �t�a�d�	 �r�a�r�	 �p�i�z�	 �e�c�a�.�      ���������                �	���/�/�:�
 �s�p�t�t�h�                                                                                                                                                                                                                                                                                        C          I  F  F      C.  C2  C8                          U  U  X
          U  U"  U&  U(  Q<  Q@  QD  QH  QL  QP  QT  c*  QV      i  f  f      c0  c4  c6                          u  u  x          u  u   u$  u,  q:  q>  qB  qF  qJ  qN  qR      qX                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
                        	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         *      �   ��������                 *      �   ��������                 *      �   ��������                 *      �   ��������                 *      �   ��������                 *      �   ��������                 *      �   ��������                 *      �   ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������          8      �      =  ��������                                                    (                          (      @      H      `      h      0                
       
      
      
      
   (   
   0   
   8   
   @   
   P   
   X   
   `   
   h   
   x   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
      
     
     
      
   (  
   0     h      P      X   
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
   �  
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
   �  
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
   �              