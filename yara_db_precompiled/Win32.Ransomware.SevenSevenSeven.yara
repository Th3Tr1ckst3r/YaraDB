YARA�          �       `         @  F      P  �         �      �  J      }   �      0  �          �(         �0      �   �1                                        )                            ��������������������������������������������   A      H                     V      H                     ]      d                     m      u                           �                     �      �                     �      �                     �      �                                              &  ��������             K     �ں�ں��        ����������������           :  K    �ں�ں��        ����������������           J  K    �ں�ں��        ����������������           Z  K    �ں�ں��        ����������������           j  K    �ں�ں��        ����������������           z  K    �ں�ں��        ����������������           �      ��������������������default Win32_Ransomware_SevenSevenSeven tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware SEVENSEVENSEVEN description Yara rule that detects SevenSevenSeven ransomware. tc_detection_type Ransomware tc_detection_name SevenSevenSeven tc_detection_factor $file_search_p1 $file_search_p2 $encrypt_file_1 $encrypt_file_2 $remote_server_1 $remote_server_2 |       ? �@MZd/#   BB          8           /@      p   /      �   1       �   /                ��U����j��h�����h�����d�������P�d���%�������젠�����������E��S�V�W���e����������u��3�ۢ��]����]����u����]����]����u����]��h�������E��P���������Q�蠠�����Ġ�j��S�P���M��蠠���������9�������r����������R�蠠�����Ġ�9�}����E��s����E����������Q�P����������������������������렢��������j��S���M��蠠�����������R�h�������E��P���������Q�蠠�����Ġ�P���������R�蠠�����Ġ�j��S�P���M��蠠���9�������r����������P�蠠�����Ġ�������������������������9�������r����������Q�蠠�����Ġ�������������������������9�}����u��s����u��h�����V������������t��������렢h�����V������������������������V�����h��렠������t������������V�����h��u����s��u����}�9��������������������������Ģ�������Q����������r�������9��������������������������Ģ�������P����������r�������9�����蠢M���P�S��j��Ģ�������R���������P��Ģ�������Q���������P��E�������h�R�������������蠢M���S��j����������렠��������������������������P�Q����������E����s��E����}�9��Ģ�������R����������r�������9�����������蠢M���P�S��j��Ģ�������Q���������P��E�������h��]����u����]����]����u����]����]���ۢ3��u����������e���W�V�S��E�������������좁�����%���d�P�������d�����h�����h��j�좋�U��t��������렢h�����V����������آ�����آ;�â��������������������������������t����E��:�â�������P���U��R�蠠�����Ġ����;���������9�}��r����E��P�蠠�����Ġ�9�}��r����M��Q�蠠�����Ġ�ǢE��������]����]��9�}�����������U��R�蠠�����Ġ���Ƣ頠�����������P�����������8��t��h�����V������������t��h�����V������������t��h�����V������������t��h�����V������������t����]��9�}����E��s����E��P�蠠�����Ġ�ǢE������렢������í�à�������렠����E�Ǡ�Ģ�������P��E����s��E����}�9��]����t������������V�����h��t������������V�����h��t������������V�����h��t������������V�����h��t��8�𢋠�������P��������������Ƣ���Ģ�������R��U�����������}�9��]����]��������E�Ǡ�Ģ�������Q��M����r��}�9��Ģ�������P��E����r��}�9���������;�𢋠�Ģ�������R��U���P��������â:��E����t���������������������������������â;�آ�����آ���������V�����h��렠������t����젠���������U�����$�����V�U�����$�����3����������3�ɢ����v������������<�)��u��F�A�;�Ȣr�������u��^�3���]�����$�����蠠�����Ġ����âW�j��j��j��j��j��h�����U�����������������u��_�^�3���]�����$�����蠠�����Ġ����âS�j��W����������آ�����s��W��������[�_�^�3���]�����$�����蠠�����Ġ����âS�j���������j��j��j��W�����������j����D�$��P�S�V�W��������3�����ۢv����I����4�0��@�;�âr��j��j��j��W��������j����L�$��Q�S�V�W��������W����������T�$��R�����������D�$�����L�$�����T�$��h�����P����D�$��Q����L�$��R����T�$��P�Q�R�U���D�$��h�����P����������L�$��Q�h�����蠠�����Ġ���T�$��R�U��������V������������$�����[�_�^�������]�蠠�����Ġ����í�à����Ģ�������]�������^�_�[�����$������������V��������U�R��$�T����Ģ������蠠���h�Q��$�L����������P�����h��$�D���U�R�Q�P��$�T����R��$�L����Q��$�D����P�����h��$�T�����$�L�����$�D�����������R��$�T����������W��������W�V�S�Q��$�L����j��������W��j��j��j��r�â;�@��0�4����I����v�ۢ����3��������W�V�S�P��$�D����j��������𢋢W��j��j��j���������j�S�à����Ģ������蠠���$�����]���3�^�_�[��������W��s������آ���������W��j�S�à����Ģ������蠠���$�����]���3�^�_��u�����������������U�����h��j��j��j��j��j�W�à����Ģ������蠠���$�����]���3�^��u�������r�Ȣ;�A�F��u��)�<������������v�����ɢ3����������3�����$�����U�V�����$�����U�����������좁����젠���������U�����$�����V�U�����$�����3����������3�ɢ����v������������<�)��u��F�A�;�Ȣr�������t��j��j��j��j��j��h�����U����������𢃢���u��^�3���]�����$�����蠠�����Ġ����âS�j��V����������آ�����s��V��������[�^�3���]�����$�����蠠�����Ġ����âW���������P�j���������j��j��j��V������������j����L�$��Q�S�W�V����������ˢ��頢A�t����G�������p�����p�����0����p�����p�����p�����p���0�P�������I�u��j��j��j��V��������j����T�$��R�S�W�V��������V����������D�$��P�����������L�$�����T�$�����D�$��h�����Q����L�$��R����T�$��P����D�$��Q�R�P�U���L�$��h�����Q����������T�$��R�h�����蠠�����Ġ���D�$��P�U��������W������������$�����_�[�^�������]�蠠�����Ġ����í�à����Ģ�������]�������^�[�_�����$������������W��������U�P��$�D����Ģ������蠠���h�R��$�T����������Q�����h��$�L���U�P�R�Q��$�D����P��$�T����R��$�L����Q�����h��$�D�����$�T�����$�L�����������P��$�D����������V��������V�W�S�R��$�T����j��������V��j��j��j��u�I�������P�0���p�����p�����p�����p����0�����p�����p�������G����t�A�����ˢ���������V�W�S�Q��$�L����j������������V��j��j��j���������j�P���������W�à����Ģ������蠠���$�����]���3�^�[��������V��s������آ���������V��j�S�à����Ģ������蠠���$�����]���3�^��u������𢋠�������U�����h��j��j��j��j��j��t�������r�Ȣ;�A�F��u��)�<������������v�����ɢ3����������3�����$�����U�V�����$�����U�����������좁����젠���������S�U�V�W�h���������$�����蠠���P�h���������$�����h�����P������������$�����Q�蠠�����Ġ�h�����h������������3���W�j��h�����W��������h�����h���������������������5�������D�$��3�ۢ��������D�$����������ˢӢ⢅�Т���������ˢ��T�$�������R���L�$��f�ǢD�$������֢�����t����D�$��P���֢�����u����D�$����l�$����|�$��ƢD�$�����P�����@���ɢu��+�¢P���L�$��Q���L�$��蠠�����T�$��j��R�蠠�����D�$����Ġ������r����D�$��P�蠠�����Ġ���l�$����|�$��ƢD�$���C�������������蠠���蠠���W�h�����h�����W������������$�����_�^�]�3���[�蠠�����Ġ����­� ����Ģ�������[���3�]�^�_�����$������������W�����h�����h�W�����蠠���蠠�����������C���$�D�Ơ�$�|����$�l����Ģ�������P��$�D����r�������Ģ���$�D��������R��j��$�T�������蠢$�L���Q��$�L���P�¢+��u�ɢ��@�����P�����$�D�Ơ�$�|����$�l����$�D����u������֢��P��$�D����t������֢�����$�D�Ǣf��$�L���R�������$�T���ˢ���������Т���Ӣˢ���������$�D���������ۢ3��$�D�������5���������������������h�����h��������W�����h��j�W���3������������h�����h��Ģ�������Q�����$������������P�����h�����$���������h�P�����蠠���$���������h�W�V�U�S�����������좁����젠���������W�3���W�h�����h�����W�����$��������������D�$��P��������f���|�$����������f���|�$����������S�U�V�h�����蠠���P�h���������$�����h�����Q������������$�����R�蠠�����Ġ�h�����h������������W�j��h�����W��������h�����h���������������������5�������D�$��3�ۢ��������ˢ������Ӣࢋ�L�$���������������Ӣ��D�$���� �P���T�$��f�ǢD�$������֢�����t����L�$��Q���֢�����u����D�$����l�$����|�$��ƢD�$�����P�����@���ɢu��+�¢P���T�$��R���L�$��蠠�����D�$��j��P�蠠�����D�$����Ġ������r����L�$��Q�蠠�����Ġ���l�$����|�$��ƢD�$���C�������������蠠���蠠���W�h�����h�����W������������$�����^�]�[�3���_�蠠�����Ġ���� ��W��������W��� ����Ģ�������_���3�[�]�^�����$������������W�����h�����h�W�����蠠���蠠�����������C���$�D�Ơ�$�|����$�l����Ģ�������Q��$�L����r�������Ģ���$�D��������P��j��$�D�������蠢$�L���R��$�T���P�¢+��u�ɢ��@�����P�����$�D�Ơ�$�|����$�l����$�D����u������֢��Q��$�L����t������֢�����$�D�Ǣf��$�T���P��¢���$�D���Ӣ��������������$�L����Ӡ������ˢ��������ۢ3��$�D�������5���������������������h�����h��������W�����h��j�W������������h�����h��Ģ�������R�����$������������Q�����h�����$���������h�P�����蠠���h�V�U�S����������$�|���f����������$�|���f��������P��$�D��������������$�����W�����h�����h�W���3�W�����������좁�                                                                                                                                                                                                           4
                                                                                                                                                                                                                          ^&                                                                                                          �                      �      �  �              �                                                                                                                                                                                              �                                      �"  �  �  �$                                      �      �                  �                                                  �                                       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   R        ��������          8      �     �  ��������          p      �     �  ��������          �            �  
   P             �      �     m  ��������               k       ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �            !      9      H      X      g   