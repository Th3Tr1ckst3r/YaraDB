YARA�          �       `         @  F        ^         v      r  �      p   X      �  �         �#         �+      �   �,                                        #                            ��������������������������������������������   ;      B                     P      B                     W      ^                     g      o                     y      �                     �      �                     �      �                     �      �                     �                            ��������             K     �ں�ں��        ����������������           "  K    �ں�ں��        ����������������           1  K    �ں�ں��        ����������������           @  K    �ں�ں��        ����������������           R  K    �ں�ں��        ����������������           d      ��������������������default Win32_Ransomware_Balaclava tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware BALACLAVA description Yara rule that detects Balaclava ransomware. tc_detection_type Ransomware tc_detection_name Balaclava tc_detection_factor $find_files_p1 $find_files_p2 $encrypt_files_p1 $encrypt_files_p2 $find_volumes o       ? �@MZd/      �   /#   BB          8           /#   BB   p      �                   ��U���좃�젢S�V���u��3�ҢW�j��[���~����U����O��f�������f�;�¢u��+���������Ѣ��蠠���P���v����E�����������E�������u��P��������頠�����E���������E����آ3�Ң��K��f������à�f�;�¢u��+�٢Ѣ�����;�=�����|�����E�����P�9�V��t����v��R��������P��������렢R��������P��������9�F��t����F����F��3�ɢf����x���U����������������3�Ң��¢j����E��Y���M��;����������M����+�¢Ѣ����E�����������f����f�;��u��f�����t��f���A��f�;�B��u��������� �f�����u��3�Ң��¢렢�����Ƞ�3�Ң�����������y����M����E��I�렢��E����M��@���E��렢��E���� ������������]�����P���F����u�����x������P�蠠�����N����Ġ���F��f����f�;��u��f���Ңt��f���P��f�;�Q��u������������f���Ңu��3���렢�����Ƞ��������������~���t����~���~����v����N����v��蠠���Y�Y���N����������N���Y�Y�����蠢v����N����v����~���~����t���~���������������Ȣ���������3��u�Ң��f������������u��Q�;�f��P���f��t�Ң��f��u��;�f����f��F����Ģ���N��������P������x�����u����F���P�����]������������ ����E����렢E���@��M����E�����I��E����M����y������������Ң3��Ȣ�������¢��Ң3��u�����f��¢��������u��B�;�f��A���f��t�����f��u��;�f����f�����������E�����Ѣ¢+����M����������;��M���Y��E����j�¢��Ң3����������������U���x����f�ɢ3��F����F����t��F�9��������P��������R��렠������P��������R��v����t��V�9�P�����E�����|�����=�;������Ѣ٢+��u�¢;�f��â�����f��K���Ң3�آ���E���������E�������頠������P��u�������E�����������E����v���P��������Ѡ��������+��u�¢;�f�������f��O����U����~���[��j�W�Ң3��u���V�S��좃�좋�U��;�������V���D�Q��f�������f���D�Q����F��蠠�����N��頠���9�V������������]�����P���F����u�����x������P�蠠�����^����Ġ���ˢ������f����f�;��u��f���Ңt��f���P��f�;�Q��u������������f���Ңu��3���렢�����Ƞ��������������ˢ��Q��f���������f�;�E��u��+�ʢѢ�������r����ˢ��Q��f���������f�;�E��u��+�ʢѢ�������h��������K�P��������Y�Y��������������E���� ����t����ࠢP���v���������h������������������S��������렢����u��j��S�h�������������������j��X�;�Ȣ������t�������t����v��������3�Ңj�����Y������4����������������������������S��������h��������������F��j��Y�f���L�x��3�ɢ��F��f����x���u����]��S������������t����E��頠���S����������]��3���9�~��u����>�S����������ߢ��M��蠠���_�^���â[����]�­�¢]�墋�[�â��^�_�����蠢M���ߢ���������S�>����u��~�9���3��]����������S�����頢E����t������������S��]����u���x����f��F���ɢ3��x�L���f�Y��j��F��������������h��������S����������������������������4������Y�����j�Ң3��������v����t�������t�������Ȣ;�X��j�������������������h�S��j��u������렠������S������������������h���������v���P��ࢃ��t���� ����E��������������Y�Y��������P�K��������h��������Ѣʢ+��u��E�;�f���������f��Q���ˢ���r��������Ѣʢ+��u��E�;�f���������f��Q���ˢ��������������Ȣ���������3��u�Ң��f������������u��Q�;�f��P���f��t�Ң��f��u��;�f����f�������ˢ���Ģ���^��������P������x�����u����F���P�����]������������V�9�����頢N�������蠢F����Q�D���f�������f��Q�D���V�������;��h�����h�����蠠�����U��������E��ǢE������3�����u����M�����u����u����u����u����u����u��V�h�����j��V�V�h�����P����������آ��]�������t����E��P�S������������t����E���E��t������렢3���G���}���������������E����E����E����E������������t��j����u����Т��Ȣ������렢��΢��ɢ�����������t��j����u����Т렢��Ƣ�����������V���E��P�h�������}��W�S������������u����Ϡ���}��頠�����E��;�Ƣ|����M������������v����頠����ƢP�Q�3�Ң��ˢ蠠���Y�Y�#�¢�����¢#�Y�Y������ˢ��Ң3�Q�P�Ƣ�����颁��v������������M����|�Ƣ;��E�������頢}����Ϣ���u������������S�W��}�������h�P��E���V������������Ƣ����Т���u����j��t������������ɢ��΢���렠�����Ȣ��Т���u����j��t������������E����E����E����E���������������}���G���3��������t��E���E����t������������S�P��E����t�������]���آ���������P�����h�V�V��j�����h�V��u����u����u����u����u����u�����M����u�����3������E�Ǡ�E��������U�������蠠���h�����h��u������u��V���E��P�h�������E���ǢP�S��������������}��렢V�V�j��Z���ˢ蠠���Y�Y�#�¢������}������u��V���E��P�j����u��S���������������������M����q����q����A��P���q��j��Z���M��蠠�����Ġ������#�����}���������V���E��P���E����p����p��S��������V���E��P���E����p����p��S��������Q���U����������蠠���Q���E��P���U��R���M����E�����P�R�Q�Q���U����������蠠�����Ġ�����u��V���E��P�j����E��P�S��������S��������V�V�3�Ң��ˢ蠠���Y�Y�V���E��P���u����u��S����������}���v����E��-�������M���΢Q�P�3�Ң��ˢ蠠���Y�Y�V���E��P���u����E���E��P�S��������ǢE��������M���蠠�����Ǣ蠠���í�à�����Ǣ������蠠�M��������E�Ǡ�������S�P��E���E����u���P��E���V�Y�Y������ˢ��Ң3�P�Q�΢��M�������-��E����v���}����������S��u����u���P��E���V�Y�Y������ˢ��Ң3�V�V��������S��������S�P��E����j�P��E���V��u������Ģ������蠠��������U���Q�Q�R�P�����E����M���R��U���P��E���Q�����蠠��������U���Q��������S��p����p����E���P��E���V��������S��p����p����E���P��E���V���������}�����#�������Ģ������蠢M���Z��j��q���P��A����q����q����M���������������������S��u����j�P��E���V��u������}�������¢#�Y�Y������ˢ��Z��j�V�V��렢}��������������S�P�Ǣ��E�������h�P��E���V��u������u��h�����h�����蠠���������V�3�ۢS���������P�蠠���V�S���������P�蠠�����Ġ�h�������������P��������������}����������������]��j��[�����������N��3�Ңf������Ơ�f�;�¢u��+��Ѣ��f�9��������������f�9�������u��f����������u��f�9�������u��f�9���u�����u��3���f�����u�����h�������������P���������P��������f�����u���������t����������蠠���h�������������P�W����������������������������E����M���蠠���렢��}��W����������e��蠠���í�à����蠢e����������W��}����렠���蠠�M����E����������������������������W�P�������������h�����蠠��������t���������u�����f��������P���������P�������������h�����u�����f���3��u�����u���9�f��u�������9�f��u����������f��u�������9�f��������������9�f���Ѣ�+��u�¢;�f��Ƣ�����f�Ң3��N�����������[��j��]����������������}��������������P�������������h��Ģ�������P���������S�V������P���������S�ۢ3�V�����������蠠���h�����h�                                                                                                                                                                                                                                                                                                                                                                                                                      ^$                                                                                                                              �          ~   ~"  �      �  �  �                                                                                                                                                                                                      �                                                          �                                      �                                                                                                                              �                      �
                                  �&                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           0      �  ��������          8      �     �
  ��������          p      �     D  ��������          �      �       ��������          �      �     2  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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