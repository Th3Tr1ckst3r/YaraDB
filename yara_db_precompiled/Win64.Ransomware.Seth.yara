YARA�          �       `         @  F        ^         v      j  �      p   P      J  �         �%         �-      �   b.                                                                    ��������������������������������������������   6      =                     K      =                     R      Y                     b      j                     t      }                     �      �                     �      �                     �      �                     �      �                     �   ��������             K     �ں�ں��        ����������������             K    �ں�ں��        ����������������              K    �ں�ں��        ����������������           2  K    �ں�ں��        ����������������           H  K    �ں�ں��        ����������������           ^      ��������������������default Win64_Ransomware_Seth tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware SETH description Yara rule that detects Seth ransomware. tc_detection_type Ransomware tc_detection_name Seth tc_detection_factor $encrypt_files_p1 $encrypt_files_p2 $remote_connection_p1 $remote_connection_p2 $find_files o       ? �@MZd/      �   /#   BB          8           /#   BB   p      �                   ��U�S�H���젠���H�����$�����H���������H���������L��������H���������H�����蠠���������H���������蠠���H���������H���������������H�����蠠���H���������H���������H�����蠠���������������蠠�������H���������H���������A���ȢH�����蠠���H���������H������H�����蠠�������t��H��������H��������蠠���H�����H���������H���¢蠠���H��������H�����蠠���H���������A�������������H�����蠠���H���������H���������H�����蠠���H���������H�����蠠�����������H��������H��������蠠���H�����H����������H�����H�����蠠������H��������H������������������H���������H����������H���������H���������H����������H�������������A���������H����������H��������H������¢��H���������H�����H�����蠠������H��������H��t��������������H������H���������H����������H�Ȣ��A���������H���������H���������蠠��������������������H���������H���������H����������H���������������H���������H�����蠠�������H����������������H���������H��������L���������H���������H�����$�����H�����좁�H�S�U��H���¢蠠���H��������H�����蠠���H���������������¢蠠���H��������H�����蠠�����������H���H�����蠠���H�����������������H�c�ȢH���������H���������I���ȢH�����蠠���H���������H���E��A�������H�����蠠�����������H�c�ȢH���������H���E��I���ȢH�����蠠���H���������H�����蠠���H���E��H�����蠠���H����������t��H���������H�����蠠���H���E��H�����蠠���H���������H�����蠠���H���������H�����蠠���렢H���âH���E��H�����蠠���렢H���âH���������H�����蠠���렢H���âH���������H�����蠠���H���آH�����蠠�����H���Ġ����[�]�í�â]�[�����Ģ��H������������H�آ��H����������H���������H�â��H��렠��������H���������H�â��H��렠��������H��E���H�â��H��렠��������H���������H����������H���������H����������H��E���H����������H���������H��t����������H����������H��E���H����������H���������H����������H�Ȣ��I��E���H���������H�Ȣc�H������������������H�������A��E���H���������H����������H�Ȣ��I���������H���������H�Ȣc�H�����������������H����������H���H������������������H��������H������¢��������������H����������H��������H������¢��H��U�H���젠���H�����$�����H���������H����������Т����蠠���Ƣ�������������H���������A���ТH���¢H��������H����������ТH����������Т����蠠���蠠���������������Ȣ����������Ȣ�����)�¢��Тi�������)�����Ȣ��������H���������H���E��A���ɢI���ТH��������H�����H����������ТǢD�$������A�������A�������������H��������H����������ТH���������H�����������������H���������H�ǢD�$������ǢD�$������A�������A�������H���������H�����H����������ТH���������H�����������������H���E��H�ǢD�$������ǢD�$������ǢD�$������A�������A�������������H�����H����������ТH���������H�����������������H���������A�������������H�����蠠���렢��������L���������H���������H���������H�ǢD�$������M�����A���ȢH�����H����������Т������D���@��H���������H���������H���������I���ɢH�����H����������Т����t����������������������������t�����Т���������H�����H�ɢ��I���������H���������H���������H��@���D�������Т���������H�����H�Ȣ��A�����M������$�D�ǢH���������H���������H���������L����������렠��������H�������������A���������H�����������������H���������H�Т���������H�����H�������������A�������A������$�D�Ǡ�����$�D�Ǡ�����$�D�ǢH��E���H�����������������H���������H�Т���������H�����H���������H�������A�������A������$�D�Ǡ�����$�D�ǢH���������H�����������������H���������H�Т���������H��������H�������������A�������A������$�D�ǢТ���������H�����H��������H�Т��I�ɢ��A��E���H���������H���������Ȣ����)�������i�Т��¢)������Ȣ����������Ȣ����������������蠠��������Т���������H�Т���������H��������H�¢��H�Т��A���������H��������������Ơ���������Т���������H���������H�����$�����H�����좁�H�U��t��������렢�����������������H���������H�����H����������ТH���U��H���������I���ТH��������H�����H����������ТH���������H�����H����������Т������H����������ТH���E��H�����蠠�������t��Ƣ�������H���������H�����H����������ТH���������H�����H����������ТH���������H�����H����������Т������H����������Т�����������𠢄����������蠠���������������Ȣ����������Ȣ�����)�¢��Тi�������)�����Ȣ��������H���������H���E��A���ɢI���ТH��������H�����H����������ТH���E��H�ǢD�$������A�������I�����H���������������蠠����������������t��H���U��H���������I���ТH��������H�����H����������ТH���������H�����H����������Т������H����������ТH���E��H�����蠠�����H���Ġ����]�í�â]�����Ģ��H������������H��E���H�Т���������H�������Т���������H�����H���������H�Т���������H�����H��������H�Т��I���������H��U���H��t������������������蠠�������������H�����I�������A������$�D�ǢH��E���H�Т���������H�����H��������H�Т��I�ɢ��A��E���H���������H���������Ȣ����)�������i�Т��¢)������Ȣ����������Ȣ����������������蠠�����������𢃠���������Т���������H�������Т���������H�����H���������H�Т���������H�����H���������H�Т���������H�����H���������H��������Ơ�t��������������H��E���H�Т���������H�������Т���������H�����H���������H�Т���������H�����H��������H�Т��I���������H��U���H�Т���������H�����H���������H�������������������렠������t��H��������H�����蠠���H���������������t��������頠���H���������H���������H���������I���ȢH�����蠠���H���������H���¢H��������蠠���H��������H�����蠠���H���������H���������H�����蠠���H���������H�����蠠���H���������H�����蠠���H���������H�����蠠���H�����蠠���H���������H�����蠠���H���������H���E��H�����蠠���H����H���ꠢH����H��ТH�����蠠���H���������������������H���������蠠���H�����蠠���������H���������H�����蠠��������t��������렢��������H���������H�����蠠��������t��������렢��������H���E��H�����蠠��������t��頠�����頠���H���âH���������H�����蠠���頠���H���âH���������H�����蠠���렢H���âH���������H�����蠠���魢頠��������H���������H�â��H��렠��������H���������H�â��H�����頠��������H���������H�â��H�����颐�����頢t���������������H��E���H����������렠������t���������������H���������H����������렠������t���������������H���������H����������������H�����蠠�������H���������������������H����������H�Т�H����H��ꢃ�H����H����������H��E���H���������H����������H���������H����������H����������H���������H����������H���������H����������H���������H����������H���������H���������H����������H��������H�����蠠������H�¢��H���������H����������H�Ȣ��I���������H���������H���������H�����頠������t���������������H����������H��������H�                                                                                                                                                                                                         %*                                                                                  I
                                                                                                                                                                                                                                              �                  �          �          �"      �$  �  �(  �      �                                                                                                                              �                                              �          �  �          �                          �                                                                                                                                                  �&                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 �  ��������          8      �     �  ��������          p      �     �  ��������          �           1  ��������          �      a     ,  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �            (      1      K      T   