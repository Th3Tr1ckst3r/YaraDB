YARA�          �       `         @  F      �                 �  �      �   =      Z&  �,         �4         �<      @  �=                                                                    ��������������������������������������������   5      <                     J      <                     Q      X                     a      i                     s      |                     �      �                     �      �                     �      �                     �      �                     �   ��������             K     �ں�ں��        ����������������             K    �ں�ں��        ����������������             K    �ں�ں��        ����������������           *  K    �ں�ں��        ����������������           <  K    �ں�ں��        ����������������           N  K    �ں�ں��        ����������������           ]  K    �ں�ں��        ����������������           l  K    �ں�ں��        ����������������           {      ��������������������default Win64_Ransomware_DST tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware DST description Yara rule that detects DST ransomware. tc_detection_type Ransomware tc_detection_name tc_detection_factor $encrypt_files_p1 $encrypt_files_p2 $encrypt_files_p3 $encrypt_files_p4 $find_files_p1 $find_files_p2 $kill_procs_p1 $kill_procs_p2 �       ? �@MZd/#   BB   P     �          /#   BB   �                /5   BB          8      p      �                   ��L�����$�����M�;�f���������H���젠���H�����$�����H�����$�����H�����$�����H�����$�����H�����$�����D�����$�����H���ۢ�������H�����$�����H�����$�����H�����$�����H���L�$��1�ɢ1���蠠���H�����$�����H�����$�����H���ۢ�������H�����$�����D�����$�����H��������H�����$�����H�����$�����Ǣ��$���������H�����$�����H�����$�����H�����$������� �蠠��������������1���H�����$�����H�����$�����H���=�����������蠠���������������蠠���H�����$�����H�����$�����H���ۢ�������H�����$�����D�����$�����H��������H�����$�����D�����$�����H��������ۢ��H�����$�����H�����$�����H�����蠠���������������蠠���������=���H�����$�����H�����$�����H���1����������������� �������$�����H�����$�����H�����$�����H���������$���Ǡ����$�����H�����$�����H��������H�����$�����D�����$�����H��������ۢ��H�����$�����H�����$�����H��������1�ɢ1��$�L���H�����$�����H�����$�����H�����$�����H��������ۢ��H�����$�����D�����$�����H�����$�����H�����$�����H�����$�����H�����$�����H�����좁�H���������f�;�M�����$�����L��H�����$�����H�����$�����ǢD�$������H�����$�����H���L�$��H���D�$��蠠����������������H��������������H���٢蠠���H�����$�����������H���٢蠠���H�����$�����H�����$�����H���ۢ�������H�����$�����������H���٢蠠���H�����$�����H�����$�����H���ɢ�������H���\�$��H�����$�����H���L�$��H���Q��H�����$�������ҢH�����������������u��H���¢H���ࠢH���p��H�����������H���ѢH����H����ʢH���R��H��H��R���H�ʢ���H����H�Ѣ��H�����������H��p���H�����H�¢��H��u�����������������H�Ң������$�����H��Q���H��$�L���H�����$�����H��$�\���H��������ɢ��H�����$�����H�����$�����H������٢��H�����������$�����H��������ۢ��H�����$�����H�����$�����H������٢��H�����������$�����H������٢��H��������������H������������������蠢$�D���H��$�L���H�����$�����H������$�D�Ǡ����$�����H�����$�����H�������H������H�)��렢H���p��H�����H�����������H����H����
�H���R��H�Ѣ��H������H�)��H���⠢H���J��H���L�$��H��������H���ˢ蠠���H���âH���L�$��H���ϢH�����$�����蠠���H�����$�����H�����$�����H���ۢ�������1���H�����$�����H���L�$��H���=�����������蠠���H���٢H���âH�����$�����蠠���H�����$�����H�����$�����H���ۢ�������H�����$�����������H���٢1���H���t�$��L�����$�����L��������L�����$�����蠠���H�����$�����H�����$�����f���D� ��H���ۢ�������H�����$�����H���âH��������H�����$�����1���E�1���M�����H��������蠠���H�����$�����H�����$�����H�����$�����蠠���H�����$�����H�����$�����H������������H�����$�����1�ۢ1�ɢ蠠���H�����$�����H�����$�����H���ۢt����蠠���H�����$�����H�����$�����H�����$�����H���Ġ����âH�����$�����H���r��H���B��H���V��1�ۢ1�ɢH���Ϣ��ҢH��������H���ϢH���٢H��H�٢��H�Ϣ��H��������H�Ң��Ϣ��H�ɢ1�ۢ1��V���H��B���H��r���H�����$�����H�à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐��t�ۢ��H�����$�����H�����$�����H������ɢ1�ۢ1�����$�����H������������H�����$�����H�����$�����H�����蠠���$�����H�����$�����H�����$�����H�����蠠������H�����M���1�E���1�����$�����H��������H�â��H�����$�����H��������ۢ��H�� �D���f�����$�����H�����$�����H�����蠠���$�����L��������L�����$�����L��$�t���H���1�٢��H�����������$�����H��������ۢ��H�����$�����H�����$�����H�����蠠���$�����H�â��H�٢��H�����蠠���������=���H��$�L���H�����$�����H���1��������ۢ��H�����$�����H�����$�����H�����蠠���$�����H�Ϣ��H��$�L���H�â��H������ˢ��H��������H��$�L���H��J���H�����H��)�H������H���ѢH��R���H�
����H����H�����������H�����H��p���H����)�H������H���������âH���Т蠠���H���٢H���âH�����$�������@��蠠���H�����$�����H�����$�������蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â����@��蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��f���蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��蠠���H�����$�����H�����$�����H�����$�����H���Ġ����â��f���蠠���H�����$�����H�����$�����H�����$�����H���Ġ����âH���D�$��H���\�$��H���L�$��H���|�$��譢蠢$�|���H��$�L���H��$�\���H��$�D���H�à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�f���à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�f���à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�à����Ģ��H�����$�����H�����$�����H�����$�����H�����蠢@�����à����Ģ��H�����$�����H�����$�����H�����$�����H�����袐�����$�����H�����$�����H�����蠢@�������$�����H�â��H�٢��H������Т��H�â���L�����$�����M�;�f���������H���젠���H�����$�����H�����$�����H�����$�����H�����$�����H�����$�����蠠���H���ۢ~��H���\�$��1�ɢ렢H�����$�����H���Ġ����âH�����$�����H���C��H���L�$��H�����$�����H����H���T�$��H���X��H���\�$��H���r��H���آ��֢H�����$�����H�����$�����H�����$�����H���=�����������I�����I���٢1���H�����$�����蠠���H���D�$��H���\�$��H���L�$��H���Q��H���D�$����ҢH�����$�����H�����$�����H���K��f���頠���H�)�ˢH���ڢH���ۢH������H�!�٢H����H�����$�����H�����$�����렢1�Ң1�ɢH���ȢH���Ӣ蠠���H�����$�����H�����$�����H��������H���=�����H���5�����f���蠠�������t��H�����$�����H���5��������� �����H���l�$��H���l��l���H��$�l���H����� ���������5���H�����$�����H��t���������袐�f�����5���H�����=���H��������H�����$�����H�����$�����H������Ӣ��H�Ȣ��H�ɢ1�Ң1��렠���$�����H�����$�����H����H�٢!�H������H�ۢ��H�ڢ��H�ˢ)�H�����颐�f��K���H�����$�����H�����$�����H�Ң���$�D���H��Q���H��$�L���H��$�\���H��$�D���H�����蠠���$�����H���1�٢��I�����I�����������=���H�����$�����H�����$�����H�����$�����H�֢��آ��H��r���H��$�\���H��X���H��$�T���H����H�����$�����H��$�L���H��C���H�����$�����H�à����Ģ��H�����$�����H���ɢ1��$�\���H��~�ۢ��H�����蠠���$�����H�����$�����H�����$�����H�����$�����H�����$�����H�����좁�H���������f�;�M�����$�����L��$��蠠���H���m��H�����$�����1�ɢ�� �頠���H���L�$��H���I��H���D�$����Ѣ����t��H���D�$��H���\�$��H�����$�����蠠���H���L�$��H�����H���T�$���� �H�9�ʢ�������頠���H���ɢH���ɢ������������f��������������������������������u��頠���H�����$�����H���B��H���L�$��H�����$�����H����H���T�$��H���p��H���t�$��H���\�$��H���D�$��蠠���H�����$�����H�����$�����H���D�$��H���\�$��蠠���H�����$�����H�����$�����H���ߢH���ӢH���¢H���ȢH���Ѣ蠠������� �����H������������H���L�$��H�����H�������������H���L�$��H�����$�����H���T�$��H�����$�����H�����$�����H�����$�����蠠���頠���H���D�$��H���\�$��H���L�$��f���譢袐�f��$�L���H��$�\���H��$�D���H�����頠���蠠���$�����H�����$�����H�����$�����H��$�T���H�����$�����H��$�L���H�������������H�����H��$�L���H������������H����� ����������Ѣ��H�Ȣ��H�¢��H�Ӣ��H�ߢ��H�����$�����H�����$�����H�����蠢$�\���H��$�D���H�����$�����H�����$�����H�����蠢$�D���H��$�\���H��$�t���H��p���H��$�T���H����H�����$�����H��$�L���H��B���H�����$�����H�����頢u��������������������������������f�������������ɢ��H�ɢ��H�����頠������ʢ9�H� ����$�T���H�����H��$�L���H�����蠠���$�����H��$�\���H��$�D���H��t�����Ѣ���$�D���H��I���H��$�L���H������ ���ɢ1�����$�����H��m���H�����蠢$��L�����$�����M�;�f���������H���젠���H�����$�����H�����$�������蠠���H�����$�����H���\�$��1�ɢf���렢H���T�$��H���J��H�����$�����H���\�$������ �����H�9�ˢ�������H���L�$��H���ᠢH�����H���\�$��H���L���H���L�$��H���s��H���Ȣ��֢H����������=������u��H��������렢H���=�����蠠���H���L�$��H���I��H���D�$����ѢH��������蠠���H�����$�����H��������H���=�����H���âH��������蠠���H��������H����H�����$�����H���5������������H���H�����$�����H�����H���l�$��H���l�$��蠠���H���m��H��������H�����$�����H�����$�����蠠���렢H�����$�����H���Ġ����âH�����$�����蠠���H�����$�����f����� ��� � �H���ɢ�������H�����$�����H����H���T�$��H����H���D�$��H���Y��H���\�$��H�����$�����1���렢H�����$�����H������H�����$�����H�����1�����$�����H��$�\���H��Y���H��$�D���H����H��$�T���H����H�����$�����H��������ɢ��H� � ��� �����f�����$�����H�����蠠���$�����H�à����Ģ��H�����$�����H��렠���蠠���$�����H�����$�����H��������H��m���H�����蠢$�l���H��$�l���H�����H�����$�����H���H�󠠠��������5���H�����$�����H����H��������H�����蠠������H�â��H�����=���H��������H�����$�����H�����蠠������H�Ѣ���$�D���H��I���H��$�L���H�����蠠���=���H��렠������H��u������=����������H�֢��Ȣ��H��s���H��$�L���H���L���H��$�\���H�����H�����H��$�L���H��������ˢ9�H����� ������$�\���H�����$�����H��J���H��$�T���H��뢐�f�ɢ1��$�\���H�����$�����H�����袐�����$�����H�����$�����H�����좁�H���������f�;�M�����$�����L�� �H���D�$��H���\�$��H���΢H���ѢH���t�$��H�����$�����H����H���T�$��H���y��H���|�$��蠠���H���L�$��H���|�$����蠠���H������������H���D�$��������蠠���������H���ǢH���ޢ1���H��������蠠���H�����$�����D���9�H�����$�����D���:�H��������H�����$�����H�Ǣ��$���������H�����$�����H�����$�����H��������������������H�����蠠���H���D�$��D�����$�����H��������H�����$�����H�����$�����H��������������H�����H��������H�����$�����蠠���H���D�$����蠠���H���L�$��H�����H�������������頠�����@��譢蠢@�������頠�����������H�����H��$�L���H�����袐��$�D���H�����蠠���$�����H��������H�����H��������������H�����$�����H�����$�����H��������H�����$�����D��$�D���H����������H��������������������H�����$�����H�����$�����H���������$���ǢH�����$�����H��������H�:���D�����$�����H�9���D�����$�����H�����蠠������H���1�ޢ��H�Ǣ��H�����������蠠������$�D���H������������H�����袐��$�|���H��$�L���H�����蠢$�|���H��y���H��$�T���H����H�����$�����H��$�t���H�Ѣ��H�΢��H��$�\���H��$�D���H��­                                                                                           "  $  &  (  ,                               "          J                                      2       B       F      2      :      2*                          %L                                                                                                                                                                                                                                                                          �              �          �              �                  �                              �>              �@                                                                                                                              �      �
                                  �  �  �<  �0                      �D      �.              �      �                                                                                                                                      �H                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                c      z  ��������          8      %     �  ��������          p      I	     �
  ��������          �      �     �  ��������          �      �       ��������               V     �  ��������          P     �     �!  ��������          �     �"     �%  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   0           !      ;      D      ^      g      p      y   