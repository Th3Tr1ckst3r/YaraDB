YARA�          �       `         @  F      �                 �  �      �   w      �$  O+         O3         O;      @  �<                                        #                            ��������������������������������������������   ;      B                     P      B                     W      ^                     g      o                     y      �                     �      �                     �      �                     �      �                     �                            ��������             K     �ں�ں��        ����������������           "  K    �ں�ں��        ����������������           8  K    �ں�ں��        ����������������           N  K    �ں�ں��        ����������������           d  K    �ں�ں��        ����������������           z  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �      ��������������������default Win32_Ransomware_Ouroboros tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware OUROBOROS description Yara rule that detects Ouroboros ransomware. tc_detection_type Ransomware tc_detection_name Ouroboros tc_detection_factor $remote_connection_p1 $remote_connection_p2 $remote_connection_p3 $remote_connection_p4 $find_files $encrypt_files_p1 $encrypt_files_p2 $encrypt_files_angus_version �       ? �@MZd/      �   /3   BB        P          1      �  /5   BB          8      p      �                   ��U����j��h�����d�������P���젠���������3�Ţ��E��V�P���E��d���������u����������j��h�����Ǣ����������Ǣ����������Ƣ�������蠠���j����������ǢE������P���������蠠�����������ƢE��������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�j��h�������������Ǣ����������Ǣ����������Ƣ�������Ǣ����������Ǣ����������Ƣ�������蠠���j��h�������������ƢE���Ǣ����������Ǣ����������Ƣ�������蠠����������������蠠������Ơ����������Ǡ����������Ǡ��E�Ơ������������h��j�����蠠������Ơ����������Ǡ����������Ǡ�������Ơ����������Ǡ����������Ǡ������������h��j��Ģ�������Q�R��������������������+��¢���I����r�������������B����������r��������E�Ơ������������蠠�������P������E�Ǡ���������j�����蠠������Ơ����������Ǡ����������Ǡ����h��j����������u���������d��E���P�V��E���Ţ3�����������좁�P�������d�����h��j�좋�U��ƢE���P�j����������P���M��蠠�����������ƢE��������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ���������������ƢE��������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���u����E��Ǣ������������u����������Ǣ����������P���E��Ƣ�������P�蠠�����M��ƢE���蠠���=��������������M��蠠���P���΢Ǣ�����ƢF���蠠�����U�������r����M��B�������������r����I���� �+��������������������+��¢���I����r�������������B��M����r�������U�������蠠�F�Ơ�����Ǣ΢��P�����蠢M��������������=�����蠠�E�Ơ�M��������P��������Ơ�E���P�����������Ǡ���������u�������������Ǡ�E����u����Ģ�������Q�R��������������������+��¢���I����r�������������B����������r��������E�Ơ���������������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������B����������r��������E�Ơ������������蠢M���P����������j�P���E�ƭ�����������R�Q�蠠�����Ġ���E��ǢE������ǢE������ƢE�����p����E��P���Ȣ蠠���j����u��蠠�����U����Ġ������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U��ǢE������ǢE������ƢE��������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���E��ǢE������ǢE������ƢE�����p����E��P���Ȣ蠠���j����u��蠠�������������Ġ������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���������Ǣ����������Ǣ����������Ƣ���������ɢt��������������+�Ѣ��������r����I���� �+��������������������R�Q�蠠���Ǣ������������Ġ�Ǣ����������Ǣ������������������蠠�����Ƣ��M��d��������Y�^���M��3�͢蠠������]�í�â]�墋������͢3��M���^�Y��������d��M���Ƣ������蠠�����������������Ǡ����������Ǡ�Ģ������������Ǡ�����Q�R��������������������+��¢���I����r���������Ѣ+��������������t�ɢ���������Ơ����������Ǡ����������Ǡ���������Ģ�������Q�R��������������������+��¢���I����r�������������B����������r�������Ģ��������������蠢u����j������Ȣ��P��E����p�����E�Ơ�����E�Ǡ�����E�Ǡ�E����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r��������E�Ơ�����E�Ǡ�����E�Ǡ�U����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r�������Ģ���U�������蠢u����j������Ȣ��P��E����p�����E�Ơ�����E�Ǡ�����E�Ǡ�E����Ģ�������Q�R��������������U��Ǣ�����ƢF��������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���E��ǢE������ǢE������ƢE�����p����E��P���Ȣ蠠���j����u��蠠�����U����Ġ������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U��ǢE������ǢE������ƢE��������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���E��ǢE������ǢE������ƢE�����p����E��P���Ȣ蠠���j����u��蠠�������������Ġ������r����������B�������������r����I���� �+�������������w��R�Q�蠠�����Ġ���������Ǣ����������Ǣ����������Ƣ���������ɢ�������������������+�Ѣ�����������������I���� �+��������������������蠠���蠠���譢蠠���蠠���蠠������������������+��¢���I������������������Ѣ+��������������������ɢ���������Ơ����������Ǡ����������Ǡ���������Ģ�������Q�R��w�������������+��¢���I����r�������������B����������r�������Ģ��������������蠢u����j������Ȣ��P��E����p�����E�Ơ�����E�Ǡ�����E�Ǡ�E����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r��������E�Ơ�����E�Ǡ�����E�Ǡ�U����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r�������Ģ���U�������蠢u����j������Ȣ��P��E����p�����E�Ơ�����E�Ǡ�����E�Ǡ�E����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r��������F�Ơ�����Ǡ�U��������U����Q���M����Q�����A�����u��+�ʢ��Ƞ�W���}��A�+�Ǣ��M��;�Ȣv��j��X�렢S�V���_���٢j��S�蠠������Y�Y�����t��W���u��S�V�蠠�����Ġ�����u����u��+�ߢ���>���u��S�P�蠠�����Ġ�����u����M��V�蠠���j�����蠠���Y���Ƣ^�[�_����]�â3���P�P�P�P�P�蠠���̢����U���좁�젠���������3�Ţ��E����M��S���]��V���u��W���������렢���<��t��<��t��<��t��Q�S�蠠���Y�Y���Ȣ;�ˢu����������u����C��;�Ȣt��V�3���W�W�S�蠠�����Ġ�렢3��������t�������t�������t����Ǣ렢3���@������+�ˢA���آh��������#�������������������W�P�蠠�����Ġ���������W�W�W�P�W�S����������𢋢�����������u��P�W�W�S�蠠�����Ġ����������t��V����������Ǣ��M��_�^�3�͢[�蠠������]�â��H��+������������������������u������������ɢt�������u�����������t��P�����������������S�P�蠠�����Ġ�����u����������P�V��������������������u�������@����������+�¢�����;�Ȣ�������h�����+���j��P������P�蠠�����Ġ�魢頢Ģ�������P������P��j���+�����h��������Ȣ;������¢+����������@�������u��������������������V�P����������u������Ģ�������P�S�����������������P��t�����������u�������t�ɢ�����������u������������������������+��H���â]�墋������[�͢3�^�_��M���Ǣ���������V��t�����������Ģ�������S�W�W�P��u��������������𢋠�������S�W�P�W�W�W����������Ģ�������P�W�������������������#��������h�آ��A�ˢ+������@���3���Ǣ���t�������t�������t��������3��렢Ģ�������S�W�W���3�V��t�Ȣ;��C����u����������u�ˢ;�Ȣ��Y�Y������S�Q��t��<��t��<��t��<�����렠�������W��u���V��]���S��M����E���Ţ3�����������좁�좋�U�����̠�����P�P�P�P�P���3�â]�墋�_�[�^�Ƣ��Y������𢋠�j������V��M����u������Ģ�������P�S��u���>����ߢ+��u����u������Ģ�������V�S��u���W��t�����Y�Y�𢋠�����S��j�٢��_���V�S���X��j��v�Ȣ;��M���Ǣ+�A��}���W��Ȣ��ʢ+��u�����A�����Q����M���Q�좋�U��������젢��D�$��S�U�V���񢉢D�$��W���|�$����n��;���w����ޢ�����r�����W�P�S���~��蠠�����Ġ�Ƣ�����Ƣ_�^�]�[���Ġ� �������������������ߢ��ˠ���������v��������렢��͢������Ѣ�+���;��v��������렢���)�;�آ�B�آ3�ɢ��â������������٢�ȢQ���΢蠠���W���t�$����D�$��P���~����^��蠠�����\�$����Ġ�Ƣ��������r�����E���������r����H����Š�+�������������w������U�P�蠠�����Ġ�_������Ƣ^�]�[���Ġ� ��蠠���蠠���̢̢̢̢̢��젢S�U���l�$��V�W�������L�$����L�$����_��;��w����|�$����Ǣ�����r�������D�$����4�m��m�4����$�D�������r������Ǣ���$�|����w��;��_����$�L����$�L�������W�V��$�l���U�S��좃�̢̢̢̢̠����蠠���蠠� �Ģ��[�]�^�Ƣ�����_��Ģ�������P�U������w�������������+��Ţ���H����r���������E�����r���������Ơ�Ģ���$�\�������蠢^����~���P��$�D����$�t���W������΢��Q�Ȣ�٢������������â��ɢ3�آB��آ;�)�����렠������v��;���+��Ѡ������͢���렠������v����������ˢ��ߢ������������������� �Ģ��[�]�^�_�Ƣ�����Ơ�Ģ������蠢~���S�P�W�����r������ޢ���w���;��n����$�|���W��$�D���񢋢V�U�S��$�D����좃����o��V�Q�P�蠠�����D�$����Ġ�3�ɢf�������Ǣ_�^�]�[���Ġ� �����������������������Π���������v��������렢��ˢ������Ѣ�+���;�آv��������렢����;���B��3�ɢ��Ƣ������������٢�ȢQ���Ϣ蠠�����w����4�m�����V���t�$����D�$��P���o��蠠�����l�$��3�����Ġ�f����.������r��������]�������������r����H����à�+�������������w������S�P�蠠�����Ġ���/���Ǣ_�^�]�[���Ġ� ��蠠���蠠���̢��D�$����젢��ࠢ��A����I��#�Ȣu����Ġ� ��V������t��������렢������������������D�𢍢D�$��j��P�蠠�����Ġ���L�$��P�V�蠠���h�������D�$��P�蠠���^��^������P��$�D�������h������V�P��$�L����Ģ�������P��j��$�D����D��������������������렠������t������V��� �Ģ���u�Ȣ#��I����A����ࢃ��좃��$�D���̠����蠠���蠠� �Ģ��[�]�^�_�Ǣ��/����Ģ�������P�S������w�������������+��â���H����r�������������]��������r������.����f��Ģ����3��$�l�������蠢o���P��$�D����$�t���V�����m�4����w��������Ϣ��Q�Ȣ�٢������������Ƣ��ɢ3��B���;������렠������v�آ;���+��Ѡ������ˢ���렠������v����������΢����������������������� �Ģ��[�]�^�_�Ǣ������f�ɢ3��Ģ���$�D��������P�Q�V��o����j��h�������������Ǣ����������Ǣ����������Ƣ�������蠠���ǢE������蠠���P���������蠠�����������������������������C����������������������������C�������P�Q���������蠠�����Ġ�Ǣ����������������Ǣ����������9���������������Ƣ��������B����������������Q��C���������������P�蠠���ǢE��������������Ǣ���������������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ǢE��������������j��h�����Ǣ����������Ǣ����������Ƣ�������蠠���ƢE�����������j��h�����Ǣ����������Ǣ����������Ƣ�������蠠�����������ƢE���蠠�����������ƢE���蠠�����������ƢE���蠠�����������ƢE���蠠�����������ƢE���蠠���ƢE���譢蠠�E�Ơ����蠠�E�Ơ������������蠠�E�Ơ������������蠠�E�Ơ������������蠠�E�Ơ������������蠠�E�Ơ������������蠠������Ơ����������Ǡ����������Ǡ����h��j�����������E�Ơ����蠠������Ơ����������Ǡ����������Ǡ����h��j��������������E�Ǡ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������B����������r����������������Ǡ�������������E�Ǡ�����P���������������C��Q����������������B���������Ơ��������������9�����������Ǡ����������������Ǡ�Ģ������蠠�������Q�P�������C����������������������������C�������������������������������蠠�������P�����蠠����E�Ǡ����蠠������Ơ����������Ǡ����������Ǡ������������h��j�                                                                       
                                                                                                  ,                                                                                                                                                                                                                                                                                                                                                                                      �  �  �
  �  �       �"                          �&                                                                                                                                                                              �          �$  �                          �                          �(                                                          �                                                                                                                                                              �,      �*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           �      u  ��������          8      x     y  
                 p      .     o  
   (             �           �  
   P             �           v  ��������               �     _  ��������          P     �     �  ��������          �     2      ]$  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   0           (      1      H      [      d      m      v   