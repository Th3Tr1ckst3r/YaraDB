YARA�          �       `         @  F      �  �         �      �  �      �         n  �$         �,         �4        �5                                                                     ��������������������������������������������   8      ?                     M      ?                     T      [                     d      l                     v                           �      �                     �      �                     �      �                     �      �                       ��������             K     �ں�ں��        ����������������             K    �ں�ں��        ����������������           ,  K    �ں�ں��        ����������������           B  K    �ں�ں��        ����������������           P  K    �ں�ں��        ����������������           ^  K    �ں�ں��        ����������������           w  K    �ں�ں��        ����������������           �      ��������������������default Win32_Ransomware_Dragon tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware DRAGON description Yara rule that detects Dragon ransomware. tc_detection_type Ransomware tc_detection_name Dragon tc_detection_factor $remote_connection_p1 $remote_connection_p2 $find_files_1 $find_files_2 $skip_hk_china_taiwan_p1 $skip_hk_china_taiwan_p2 $crypt_files �       ? �@MZd/#   BB   �                /#   BB   p      �           /      P  /#   BB          8                   ��U����j��h�����d�������P���젠���������3�Ţ��E��V�P���E��d�������h�������������j��P�蠠�����Ġ���������P�h�������������������������E��ǢE��������E����젢��E����̢��������h�����蠠�����젢ƢE�����̢蠠�����������ƢE���蠠�����ТƢE�����������蠠������h�����������ƢE�����������蠠�����Ġ�V���ТƢE�����M��蠠�����Ġ�ƢE����������������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ƢE����������������r����������B����������B����������r����������������E�Ơ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������B����������r����������������E�Ơ�Ģ������蠢M�����E�ƢТ��V��Ģ������蠠���������E�Ơ����������h�𢋠����蠠���������E�ƢТ������蠠�E�Ơ�������������̢����E�Ơ�좃�����蠠���h���������̢���E����좃��E��������E�Ǡ�E�������������������������h�P����������Ģ�������P��j�������������h�������d��E���P�V��E���Ţ3�����������좁�P�������d�����h��j�좋�U����������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ƢE����������������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���}�����M����U��Ǣ�����������C�M��Q�Ǣ����������Ƣ�������蠠�����Ġ���������������������U�������r����M��B�������������r����I���� �+�������������w��R�Q�蠠�����Ġ���U��ǢE������ǢE������ƢE��������r����M��B�������������r����I���� �+�������������w��R�Q�蠠�����Ġ���M��d��������Y�^���M��3�͢蠠������]�í�â]�墋������͢3��M���^�Y��������d��M����Ģ�������Q�R��w�������������+��¢���I����r�������������B��M����r��������E�Ơ�����E�Ǡ�����E�Ǡ�U����Ģ�������Q�R��w�������������+��¢���I����r�������������B��M����r�������U����������������������Ģ������蠠������Ơ����������ǢQ��M�C������������Ǡ�U����M�����}����Ģ�������Q�R��������������������+��¢���I����r�������������B����������r����������������E�Ơ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r����������U���좁�젠���������3�Ţ��E��S�V�W���젢����������Ԣ��q��ǢB������ǢB������Ƣ�����A�����u��+�΢��������Q�V���ʢ蠠���蠠���V���������h�����P�蠠�����Ġ���������P���������P������������������������������������������������������P���������P����������Ģ�������P�����h���������V�����蠠����ʢ��V�Q���������΢+��u�����A������Ơ�����B�Ǡ�����B�Ǡ�q���Ԣ�����������좃�W�V�S��E���Ţ3�����������좁�좋�U�����:��u����Ңt����P��:�Q��u��������������Ңu��3���렢�����Ƞ�����������������������������:��u����Ңt����Q��:�P��u��������������Ңu��3���렢�����Ƞ��������������������P�h�����V���������h�����P�蠠���Q���Ԣ����������q��ǢB������ǢB������Ƣ�����A�����u��+�΢��������Q�P���ʢ蠠���蠠�����Ġ�����t����젢��̢h�����蠠�����������蠠�����Ġ����������t����������蠠�������������������P�W���Ӣ�����������W����������M��_�^�3�͢[�蠠������]�í�â]�墋������[�͢3�^�_��M����������W������������Ӣ��W�P���������������������蠠��������t�����������Ģ������蠠�����������蠠���h�̢���좃��t������Ģ������蠠����ʢ��P�Q���������΢+��u�����A������Ơ�����B�Ǡ�����B�Ǡ�q�����������Ԣ��Q������P�����h���������V�����h�P���������������������Ȣ���������3��u�Ң�������������u��P�:��Q����t�Ң���u��:������������������������������Ȣ���������3��u�Ң�������������u��Q�:��P����t�Ң���u��:�����U����j��h�����d�������P���젠���������3�Ţ��E��P���E��d�������h�������������j��P�蠠�����Ġ���������P�h�������������������������E��ǢE��������E����E����M��j��h�������E��ǢE��������E��蠠���ƢE�����M����}�����U���C�M��Q�蠠�����Ġ�������������������j��h�������������ǢE������ǢE������Ƣ�������蠠���ƢE�����M��j��h�����ǢE������ǢE������ƢE���蠠���ƢE�����M��j��h�����ǢE������ǢE������ƢE���蠠���j����������P���M��蠠���������������j����E��P���M��蠠���������������j����E��P���M��蠠�����������������U�������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U�������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U�������r����������B�������������r����I���� �+������������������������+��¢���I����r�������������B����������r�������U����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r�������U����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r�������U�������������������蠢M���P��E����j�����������������蠢M���P��E����j�����������������蠢M���P����������j�����蠠�E�Ơ�����E�Ǡ�����E�Ǡ����h��j��M�����E�Ơ����蠠�E�Ơ�����E�Ǡ�����E�Ǡ����h��j��M�����E�Ơ����蠠������Ơ�����E�Ǡ�����E�Ǡ������������h��j��������������������Ģ�������Q��M�C���U�����}����M�����E�Ơ����蠢E��������E�Ǡ�E�������h��j��M����E����E��������E�Ǡ�E�������������������������h�P����������Ģ�������P��j�������������h�������d��E���P��E���Ţ3�����������좁�P�������d�����h��j�좋�U���������R�Q�蠠�����Ġ���U�������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U��ǢE������ǢE������ƢE��������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ������M��d��������Y���M��3�͢蠠������]�â��U�������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U�������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U�������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U�������r����M��B�������������r����I���� �+�������������w��R�Q�蠠�����Ġ���U��ǢE������ǢE������ƢE��������r����M��B�������������r����I���� �+�������������w��R�Q�蠠�����Ġ�2���頠���j��蠠���譢蠠���蠢j��������2��Ģ�������Q�R��w�������������+��¢���I����r�������������B��M����r��������E�Ơ�����E�Ǡ�����E�Ǡ�U����Ģ�������Q�R��w�������������+��¢���I����r�������������B��M����r�������U����Ģ�������Q�R��������������������+��¢���I����r�������������B����������r�������U����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r�������U����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r�������U���â]�墋������͢3��M���Y��������d��M�������Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r��������E�Ơ�����E�Ǡ�����E�Ǡ�U����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r�������U����Ģ�������Q�R�������������U���좃�젢������3�Ţ��E����M����E����E����M��V���u����ɢu��3���頠�������u��蠠����� ��蠠���Ǣ �����蠠�����Ƞ�頠���S���Ƣ��֢�������ࠢW�k������U�������������}����\�:�������t�������u��������Т���u��蠠����� ��蠠���Ǣ �����蠠���頠�����D�:���t��j��j��j��V�蠠�����Ġ�3�����}����V�����蠠���Y�����t����ۢt����ˢ�������]�����������u����E��S�P�蠠�����Ġ����頠�����u����]����E��S�V�P�蠠�����Ġ�렢��M����U�������������|����}�����â��]����蠢t����蠢t����蠢u����u����E��S�V�P�蠠���렢��u����E��S�V�P�蠠���렢��u����E��S�V�P�蠠���렢��L�����}����]��3�����j��������E��P���u��S�Q������������u�����������E����u����}����������M����U����E������u����E������t��j��^�;�Ƣu��蠠���Ǣ �����蠠�����0�렢P�蠠���Y�렢�����������D����t����;��u��3���렢蠠���Ǣ �����蠠����� ����Ƞ�렢+�E��_�[���M��3�͢^�蠠������]�í�â]�墋������^�͢3��M���[�_��E�+��렢Ȣ��� �������蠠��� �Ǡ����蠢���3��u��;����t����D��������������Y������P���0�������蠠��� �Ǡ����蠢u�Ƣ;�^��j��t������E����u������E����U����M����������}����u����E�����������u������������Q�S��u���P��E��������j�����3��]����}�����L����렠����P�V�S��E����u����렠����P�V�S��E����u����렠����P�V�S��E����u����u��袃��t��袃��t��袃��]���â����}����|�������������U����M����렢Ģ�������P�V�S��E����]����u��������𢋠�Ģ�������P�S��E����u�����������]��������ˢ���t�ۢ���t�����Y�����被���V����}�����3��Ģ�������V��j��j��j��t���:�D�������頠���蠠��� �Ǡ����蠢 �������蠢u����Т�������u�������t�������:�\����}�������������U������k�W��ࢃ������֢��Ƣ��S�����頢Ȣ������蠠��� �Ǡ����蠢 �������蠢u������������3��u�ɢ���u���V��M����E����E����M����E���Ţ3��������좃�좋�U�����                                                                                                                                                                           ,                                                                                  ;                                                                                                                                                                                                                                                                                                  �  �  �  �
  �                  �                                                                                                                                                                                          �"          �  �  �              �          �$              �                                      �                                                                                                                                                                                  �(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ^     e  ��������          8      �     �  ��������          p      �     �  ��������          �      :	     �  ��������          �      �     d  
                      �     �  
   �             P     s     �  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
              !      ;      D      \      n      w   