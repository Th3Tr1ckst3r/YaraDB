YARA�          �       `         @  F      P  �         �      �  p         �      n	  ]         ]         ]       �   M!                                     ��������                         ��������������������������������������������   $      0                     ]      d                     q      {                     �      �                     �      �                          	                    J     P                    �     �                    �     �                    �     �                K     �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  �     �ں�ں��    3      �  ��������           �  K    �ں�ں��    -      6  ��������           2  K    �ں�ں��    Y      h  ��������           d      ��������������������default MAL_Luna_Stealer_Apr_2021_1 description Detect Luna stealer (also Mercurial Grabber) author Arkbird_SOLG reference https://github.com/NightfallGT/Mercurial-Grabber date 2021-08-29 hash1 a14918133b9b818fa2e8728faa075c4f173fa69abc424f39621d6aa1405f5a18 hash2 93563f68975a858ff07f7eb91f4e0c997f0212d58b1755704d89fecd442d448f hash3 0521bb85472869598d9aa822b11edc04044dbe876dbf9900565bfdc8e02c2b21 hash4 ce35eb5ba2f3f36b3d2742b33d3dbbe95f5ec6b93942ba20be4693528b163e3a tlp White adversary - $s1 $s2 $s3 $x1 ---------------- mercurial grabber ---------------- $x2 \ s * : \ s * ( " ( ? : \ \ " | [ ^ " ] ) * ? $x3 [ \ w - ] { 2 4 } \ . [ \ w - ] { 6 } \ . [ \ w - ] { 2 7 } m f a \ . [ \ w - ] { 8 4 } ~       ? �@MZd/   %@ Pg/-   ?B   �      �                /-   ?B          8      p                   ��s�� � �
���r�  � �p��{�� � ��(�� � �
�o�� � �
���o�� � �
�o�� � �
�o�� � �
��	�o�� � �
�
��r�  � �p��(�� � ��}�� � ���r�  � �p��(�� � ��}�� � ���r�  � �p��(�� � ��}�� � ���r�  � �p��(�� � ��}�� � ���r�  � �p��(�� � ��}�� � ���r�  � �p��(�� � ��}�� � ���r�  � �p��(�� � ��}�� � ���(�� � �
�ޢ
��,���o�� � �
�ܢޢ���r�  � �p���o�� � �
�(�� � �
�(�� � �
�ޢ �*��*� �ޢ
� � ��(�
� � ��(�
� � ��o���p� �  �r����ޢܢ
� � ��o���,��
�ޢ
� � ��(��� � ��}�� � ��(��p� �  �r��� � ��}�� � ��(��p� �  �r��� � ��}�� � ��(��p� �  �r��� � ��}�� � ��(��p� �  �r��� � ��}�� � ��(��p� �  �r��� � ��}�� � ��(��p� �  �r��� � ��}�� � ��(��p� �  �r��
�
� � ��o�	��
� � ��o�
� � ��o�
� � ��o���
� � ��o�
� � ��(�� � ��{��p� �  �r���
� � ��s��r�  � �p��{�� � ��(�� � ��
��r�  � �p��{�� � ��(�� � ��}�� � ��r�  � �p��{�� � ��(�� � �����r�  � �p��(�� � �
�}�� � ��r�  � �p��{�� � ��(�� � ����r�  � �p��{�� � ��r�  � �p��(�� � �
�}�� � ���r�  � �p��{�� � ��(�� � ��}�� � ���r�  � �p��{�� � ��(�� � ��}�� � ���r�  � �p��{�� � ��(�� � ��}�� � ���{�� � ��(�� � �
���c�!� ���ʢ��J�� � �X��	�(�� � �
�����(�� � �
���������� � ��o�� � �
�}�� � ��*��*�� � ��}�
� � ��o�� � ����������
� � ��(�����
� � ��(�	��X� � ��J���ʢ�� �!�c���
� � ��(�� � ��{��� � ��}�� � ��(�� � ��{��p� �  �r��� � ��}�� � ��(�� � ��{��p� �  �r��� � ��}�� � ��(�� � ��{��p� �  �r��� � ��}�
� � ��(��p� �  �r�� � ��{��p� �  �r���� � ��(�� � ��{��p� �  �r�� � ��}�
� � ��(��p� �  �r����� � ��(�� � ��{��p� �  �r�� � ��}�� � ��(�� � ��{��p� �  �r��
�� � ��(�� � ��{��p� �  �r��r�  � �p�s�� � �
�
��o�� � �
�o�� � �
��+�u��o�� � �
�t�� � ����r�  � �p�o�� � �
�,����r�  � �p�o�� � �
�o�� � �
�}�� � ���r�  � �p�o�� � �
�,����r�  � �p�o�� � �
�o�� � �
�}�� � ���r��� �p�o�� � �
�,����r��� �p�o�� � �
�o�� � �
�}�� � ���o�� � �
�-���ޢ
��,���o�� � �
�ܢ*��*�ܢ
� � ��o���,��
�ޢ��-�
� � ��o��� � ��}�
� � ��o�
� � ��o�p� ���r����,�
� � ��o�p� ���r��� � ��}�
� � ��o�
� � ��o�p� �  �r����,�
� � ��o�p� �  �r��� � ��}�
� � ��o�
� � ��o�p� �  �r����,�
� � ��o�p� �  �r���� � ��t�
� � ��o��u�+��
� � ��o�
� � ��o��
�
� � ��s�p� �  �r�                                      $      (                 "         *      @  8             B                                 4      D                      .
  +  <              -          ..                                                                      -F                      ;>                                                                                                                                                                                          ~                                                                                                                                                                                                                                                                                                                                                                                                  �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      U     �  ��������          8      �     a  ��������          p      Z     	  ��������          �   ������������������������          �   ������������������������            ������������������������>                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �      $      -      6      Q      Z      c   