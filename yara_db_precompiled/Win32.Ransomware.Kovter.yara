YARA�          �       `         @  F        ^         v      y  �      f   U      �  S%         S-         S5      �   6                                                                     ��������������������������������������������   8      ?                     M      ?                     T      [                     d      l                     v                           �      �                     �      �                     �      �                     �      �                       ��������             K     �ں�ں��        ����������������             K    �ں�ں��        ����������������           +  K    �ں�ں��        ����������������           @  K    �ں�ں��        ����������������           U  K    �ں�ں��        ����������������           a      ��������������������default Win32_Ransomware_Kovter tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware KOVTER description Yara rule that detects Kovter ransomware. tc_detection_type Ransomware tc_detection_name Kovter tc_detection_factor $remote_connection_1 $remote_connection_2 $remote_connection_3 $find_files $decrypt_payload_script e       ? �@MZd/      �   /      �   /,   BB          8      p                   ��U���좁�Ġ����S�V�W�3�ۢ����������������������������������������������������������]����]����٢��U����E����u����E��蠠�����E��蠠���3���U�h�����d���0�d��� ���������8��t����΢��U����E��蠠���頠�����Ƣ蠠���3�����E��3�����E��ǢE��������U��������蠠���H�u�������E��P���U��������蠠���P���E��蠠���Z�+�¢�����P���U��������蠠�����Т�� ���E��Y�蠠�����E��P�����������U��蠠�����������f�����蠠���P���E��蠠���Z�+�¢P�����������U��蠠�����������f�����蠠�����ТB���E��Y�蠠�����E��P�����������U��蠠�����������f�����蠠�����ȢI���������E��蠠�����ۢ���������E��蠠���H��������j��j��j��j����������蠠�����������蠠���P�蠠�����آ��ۢ�������j��j��j��j��j��h�������E��蠠���P�S�蠠������������������j��h�����j��j��h�������E��蠠���P�h�����W�蠠�����E����}������������E��P������P��E������������}����E��������W�����h�P�����蠢E�������h��j��j�����h��j���������������������S�P�����蠢E�������h��j��j��j��j��j��������ۢ��آ�������P�����蠠�����������蠠��������j��j��j��j��������H�����蠢E����������ۢ������蠢E���������I�Ȣ������蠠���f�������������蠢U�����������P��E��������Y��E���B�Т������蠠���f�������������蠢U�����������P�¢+�Z�����蠢E���P�����蠠���f�������������蠢U�����������P��E��������Y��E����¢��Т������蠠������U���P������¢+�Z�����蠢E���P�����蠠������U���P��E�������u�H�����蠠������U��������E�Ǡ�E�����3��E�����3������Ƣ������頠���蠢E����U���΢���t��8��������� ���d�0���d�����h�U���3�����蠢E�������蠢E����u����E����U���٢���]����]�����������������������������������������������������������ۢ3�W�V�S�����Ģ��좋�U��E��P�j����E��P�蠠����������������E��������������E����E��P���E��P�j����E��P�蠠����������������E��蠠���P���E��蠠���P�j��h�������E��P�蠠�������t����E��P�h�������������P���E��P�蠠�������t����}���t����E����U��蠠�����E��蠠�������������M��蠠�����Ƣ��U��蠠�����E���E����}������w����}���u����E��P�蠠���W�蠠���S�蠠���頠���j��j��j��j����������蠠�����������蠠���P�蠠�����آ��ۢ�������j��j��j��j��j��h�������E��蠠���P�S�蠠������������������j��h�����j��j��h�������E��蠠���P�h�����W�蠠�����E����}������������E��P���E��P�j����E��P�蠠����������������E��������������E����E��P���E��P�j����E��P�蠠�������t��j��j��j��h�������E��P�蠠�������t����E��P�h�������������P���E��P�蠠�������t����}���t����E����U��蠠�����E��蠠�������������M��蠠�����Ƣ��U��蠠�����E���E����}������w����}���u����E��P�蠠���W�蠠���S�蠠�����>�����������E��蠠���H��������j��j��j��j����������蠠�����������蠠���P�蠠�����آ��ۢ�������j��j��j��j��j��j����E��蠠���P�S�蠠������������������j��h�����j��j��h�������E��蠠���P�h�����W�蠠�����E����}������������E��蠠���P���E��蠠���P�j��h�������E��P�蠠�������t����E��P�h�������������P������P�������������h�P��E����t����������P��E�������h��j�P�����蠢E���P�����蠢E������������}����E��������W�����h�P�����蠢E�������h��j��j�����h��j���������������������S�P�����蠢E����j��j��j��j��j��j��������ۢ��آ�������P�����蠠�����������蠠��������j��j��j��j��������H�����蠢E�����������>��������S������W������P��E����u���}����w������}����E���E�������蠢U���Ƣ������蠢M���������������蠢E�������蠢U����E����t���}����t����������P��E���P�������������h�P��E����t����������P��E�������h��j��j��j��t����������P��E����j�P��E���P��E����E��������������E�������������������P��E����j�P��E���P��E������������}����E��������W�����h�P�����蠢E�������h��j��j�����h��j���������������������S�P�����蠢E�������h��j��j��j��j��j��������ۢ��آ�������P�����蠠�����������蠠��������j��j��j��j�����頠����S������W������P��E����u���}����w������}����E���E�������蠢U���Ƣ������蠢M���������������蠢E�������蠢U����E����t���}����t����������P��E���P�������������h�P��E����t����������P��E�������h��j�P�����蠢E���P�����蠢E�������������������P��E����j�P��E���P��E����E��������������E�������������������P��E����j�P��E��E��P�蠠�������t����}���t����E����U��蠠�����E��蠠�������������M��蠠�����Ƣ��U��蠠�����E���E����}������w����}���u����E��P�蠠���W�蠠���S�蠠���頠���j��j��j��j����������蠠�����������蠠���P�蠠�����آ��ۢ�������j��j��j��j��j��j����E��蠠���P�S�蠠������������������j��h�����j��j��h�������E��蠠���P�h�����W�蠠�����E����}����������j��j��j��h�������E��P�蠠�������t����E��P�h�������������P���E��P�蠠�������t����}���t����E����U��蠠�����E��蠠�������������M��蠠�����Ƣ��U��蠠�����E���E����}������w����}���u����E��P�蠠���W�蠠���S�蠠���3���Z�Y�Y�d����h�������������������蠠�����������������蠠�����E��蠠�����E��蠠�����E��������蠠���í�à����蠠������E�������蠢E�������蠢E�������蠠�����������������蠠�����������������h����d�Y�Y�Z���3������S������W������P��E����u���}����w������}����E���E�������蠢U���Ƣ������蠢M���������������蠢E�������蠢U����E����t���}����t����������P��E���P�������������h�P��E����t����������P��E�������h��j��j��j����������}����E��������W�����h�P�����蠢E�������h��j��j�����h��j���������������������S�P�����蠢E����j��j��j��j��j��j��������ۢ��آ�������P�����蠠�����������蠠��������j��j��j��j�����頠����S������W������P��E����u���}����w������}����E���E�������蠢U���Ƣ������蠢M���������������蠢E�������蠢U����E����t���}����t����������P��E��P�蠠�����آ������������3���F������������������������������E����W��������蠠�����E��������蠠������������E��������蠠�����������������������G������������u��h�������u����������������蠠�����������蠠���P�蠠�����آ�����آ����u��j����u��h�������u����������������蠠�����������蠠���P�蠠�����u��h�������u����������������蠠�����������蠠���P�蠠���W�S�蠠�����آ�����آ����������������t��S�蠠���W�����������������U��蠠�����������蠠���P�蠠�����آ������������3���F������������������������������E����W��������蠠�����E��������蠠������������E��������蠠�����������������������G���u����u��h�������u����������������蠠�����������蠠���頠�����u��h�������u��h�������������������蠠�����������蠠���P�蠠�����آ�����آ����u��j����u��h�������u��h�������������������蠠�����������蠠���P�蠠�����u��h�������u��h�������������������蠠�����������蠠���P�蠠���W�S�蠠�����آ�����آ����������������t��S�蠠�����E��������蠠�����E��蠠���P�蠠�����آ�ۢ��ۢ��ۢu��j����E��蠠���P�蠠�����E��蠠���P�蠠���3���Z�Y�Y�d����h�������������������蠠�����E��������蠠���í�à����蠠������E�������蠠�����������������h����d�Y�Y�Z���3������P�����蠢E��������P�����蠢E����j��u�ۢ��ۢ��ۢ�آ�������P�����蠢E�������蠠������E��������S��t�����������������آ�����آ�������S�W������P�����蠠�����������蠠�����������������h��u�������h��u��������P�����蠠�����������蠠�����������������h��u�������h��u����j��u�����آ�����آ�������P�����蠠�����������蠠�����������������h��u�������h��u�������頠���蠠�����������蠠��������������u�������h��u����u���G�������������������������蠠������E��������������蠠������E�������蠠������W����E������������������������������F���3�������������آ�������P�����蠠�����������蠢U�����������������W������S��t�����������������آ�����آ�������S�W������P�����蠠�����������蠠��������������u�������h��u��������P�����蠠�����������蠠��������������u�������h��u����j��u�����آ�����آ�������P�����蠠�����������蠠��������������u�������h��u������������G�������������������������蠠������E��������������蠠������E�������蠠������W����E������������������������������F���3�������������آ�������P����u����u��h�������u��h�������E��蠠�����u����u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������E��蠠�����u����â������蠠�����U��������蠠�����U��������蠠�����U��������蠠�����U��������蠠�����3���u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������u��h�������E��蠠�����u��h�������u��h�������E��譢蠢E�������h��u�������h��u�������蠢E�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u���3�������蠠������U�������蠠������U�������蠠������U�������蠠������U�������蠠�����â���u�������蠢E�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u�������h��u����u�������蠢E�������h��u�������h��u����u���                                                                                                                                                                                                                4                                                                                                                                                                                                                                                                                                  v                              �      �          �  �  �  �                                                                                                                                                                                                                  �
                                                      �"                                          �                                          �                                   �                                                                                    �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ��������          8           �  ��������          p      �     )  ��������          �      �     W  ��������          �      G       ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �            &      8      A      J   