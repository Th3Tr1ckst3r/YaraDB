YARA�          �       `         @  F      P  �         �      �  7      z   �      �  [$         [,         [4      �   K5                                        %                            ��������������������������������������������   =      D                     R      D                     Y      `                     i      q                     {      �                     �      �                     �      �                     �      �                     �      
                      ��������             K     �ں�ں��        ����������������           *  K    �ں�ں��        ����������������           8  K    �ں�ں��        ����������������           G  K    �ں�ں��        ����������������           V  K    �ں�ں��        ����������������           d  K    �ں�ں��        ����������������           w      ��������������������default Win32_Ransomware_CryptoJoker tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware CRYPTOJOKER description Yara rule that detects CryptoJoker ransomware. tc_detection_type Ransomware tc_detection_name CryptoJoker tc_detection_factor $call_encrypt $encrypt_files $start_process $msgbox_timer $unzip_packed_file $resolve_assembly y       ? �@MZd/`          /      8   /      p   1      �   1       �   /                ��+��&����	� � ���	�� ���	�� �o�����*��*�����o� ��	��� ��	��� � �	����&��+��+��&�� �����(�����9�����&� � ����s������ ������9�����&�(������(������8����� ���������������E�����������������������������8�����&� ������9�����&� � �����(�����
�(�����(�����9�����&� � ����8����� � ���(�����(�����(�����:�����&� �����8�����	�(������� �����(�����:�����&� ����(������8����� ���������������E�������������������������8�����&� �����8���������ݠ���� ���(����� � �ܢ���������:������(����� �ܢ ���*��*��� �ܢ �����(������:����������ܢ � �����(��� �����ݢ��������8����� �&�����8�������������������������E��������������� �����8������(���� �&�����:�����(����� �������(�	�����8����� �&�����:�����(�����(�����(��� � �����8���� � �&�����9�����(�����(�
�����(����� � �&�����9������ �&�����8�����������������������������E��������������� �����8������(������(�&�����9������ ������s���� � �&�����9�����(����� ��&��+��+��&�� �����8����� �����(������ �����8����� ����(����� �����8����� �(�����
� �	����8����� ����(����� �����8�������� �����(������� �����(�����:�����8��������(����� �����8�������� �����(������� �����8�������������� �����8����� ���(�����&� �����8������	�(����� �����8�����s�������8�����&� �����8��������8����� ���������������E������������������������������������������������������������������������������������� ������:�����&���� �����(������� � ����(�����9�����&���(������ �����(�����9�����&���� �����(��������(�����:�����&� ������9�����&� �����(����� �
�����:�����&� �s������� �����8�����*��*�����8����� �������s� �&�����:�����
� �����(����� �&�����9������ �&�����:�����(��������(����� ����&�����9�����(����� ������(���&�����9�����(���� � �������(����� ����&�����:������ �������������������������������������������������������������������������������������E��������������� �����8��������8����� �&�����8�������s�����8����� �����(�	������8����� �&�����(��� �����8����� ��������������8����� �������(����� ��������8����� �����(��������8�����:�����(����� �������(����� ��������8����� �����(���� �����8����	� �
�����(� �����8����� �����(���� �����8����� ������(����� �����8����� ��&��+�� �(�����
��r�����(�������(������ ��{������o�����o����� � �ޢ����������-���o����� �ܢ ��{������2���{�������������+��� �����-�� ��{�����o����� �r�����(�����&�8������{�����-���{�����-���{�������������+��� �����-�� ��{�����o����� �s������	��o����� �	�r�����r�������@�(�����&� �8����� ��{�����������������-�� ���;�}������{�����������������-�� ���;�}������{�������������-���%�{������Y�}����� �+���%�{������Y�}����� �+���%�{������Y�}������{������	������������-���{������|�����(�����o����� �+���{�����r������|�����(�����(�����o����� ��{������	������������-���{������|�����(�����o����� �+���{�����r������|�����(�����(�����o����� ��{������	������������-���{������|�����(�����o����� �+���{�����r������|�����(�����(�����o����� � �*��*� � �����o�����(�����(�����|������r�����{���+� �����o�����(�����|������{���-������������	������{�� �����o�����(�����(�����|������r�����{���+� �����o�����(�����|������{���-������������	������{�� �����o�����(�����(�����|������r�����{���+� �����o�����(�����|������{���-������������	������{������}�Y������{�%���+� �����}�Y������{�%���+� �����}�Y������{�%���-�������������{������}�;��� ��-�����������������{������}�;��� ��-�����������������{�� �����8� �&�����(�@�������r�����r�	� �����o��	������s� �����o�����{�� ��-����� ���+�������������{���-�����{���-�����{������8�&�����(�����r� �����o�����{�� ��-����� ���+�������������{���2������{�� �ܢ �����o���-�����������ޢ � �����o�����o������{�� ������(�������(�����r��
�����(� ��(�����
�(��������.����(�����-���*��s���������������o��������� �����@������o�����h����o��������o��������� �����3������3����-�����.��r�����s�����z��o�����&��o�����&��o�����&��o��������o������	��o������
��	��1���	��������������	�o�����&��
��1���
��������������
�o�����&��o������o�����Y�Ԣ����������������i�o�����&���s������������������	��	���i�o�����&����8���������c���������b�Y����� �����@��������3���o�������������������+���o��������o�������������������������i�o�����&���s���������	�����o�����&�����X�������2�����3���������%�Р����(��������������%�Р����(������������(��������������i��Y�o���������(������ޠ���,����o�����ܢ���3����������%�Р����(���������������%�Р����(������������(��������������i��Y�o���������(������ޢ���,����o�����ܢr���� �p�s�����z��o�������	�*��*�	�������o��z�����s�p� ����r�ܠ����o����,����ޢ�����(���������o�Y��i��������������(������������(�����Т%���������������(�����Т%����������3����ܠ����o����,����ޢ�����(���������o�Y��i��������������(������������(�����Т%��������������(�����Т%���������3�����2�������X�����&�����o�����	���������s���&�����o�i�������������������������o��������o���+�������������������o���3��������@����� �����Y�b���������c���������8����&�����o�i���	��	������������������s���&�����o�i�����������������ԢY�����o������o��&�����o�
��������������
���1��
��&�����o�	��������������	���1��	��
������o��	������o��������o��&�����o��&�����o��&�����o��z�����s�����r��.�����-����3������3����� ���������o��������o����h�����o������@����� ���������o���������������s��*���-�����(����.��������(�
�����(��� ��o�����(������ ��(������(������o�����(������r������������������,�����o������~����������������+��	������(�����,�
�	����X�����+�����X�����	���i��Y�2����o�����-��� �{�����o�����-��(������ �{�����o�����(���������+��	������(�����,��	����X�����+�����X�����	���i��Y�2����o������>��������o������[�3�����]�o������	�����	��Y�o������
��
��z�o����������������
��t�o������������������	��X�o�������~�����%���(�����~�������o�����,��~�������o�������ݠ����(�������o���������9�������o�����i��������������������o�����&���,����(������������-����(�������ޢ�&����ޠ�&����ޠ���,��r�����(�������(���������(�����&���� �{�����r�����(���������(�����-����(����������������i�o�������o���������(�����&�����(�����&���(�������ޠ�&�ޠ�~���������o���������ޠ�ޠ���(�����ܢ�*���*��*���*��ܠ����(����ޠ�ޢ��������o���������~��ޢ&��ޢ������(���&�����(�����&�����(���������o�������o�i����������������(����-�����(���������(�����r�����{� ����&�����(���������(�������(�����r��,����ޢ���&��ޢ���&��ޢ������(����-������������(����,���&�����o��������������������i�����o�������9���������o�������(�����ݢ������o�������~��,�����o�������~�����(���%�����~�������o�X��	������������������o�t��
����������������o�z��
��
������o�Y��	�����	������o�]�����3�[������o��������>������o����2�Y��i���	�����X�����+�����X����	��,�����(������	��+���������(�����o�����{� ������(��-�����o�����{� ���-�����o����2�Y��i���	�����X�����+�����X����	�
�,�����(������	��+����������������~������o�����,������������������r������(�����o������(������(�� ������(�����o�� ��                              
                     	"                                                                &      (          2                      ,  8                       4      ',                              )6      /0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Q   ��������          8      R      �  
                 p      �     �  ��������          �      "	     3  ��������          �      �       ��������               r     a  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �            %      5      E      U      d   