YARA�          �       `         @  F      �  �               �  �      	  �	      >  H         P         X      �  �Z                                                                     ��������������������������������������������   8      ?                     M      ?                     T      [                     d      l                     v                           �      �                     �      �                     �      �                     �      �                       ��������             K     �ں�ں��        ����������������             K    �ں�ں��        ����������������           /  K    �ں�ں��        ����������������           H  K    �ں�ں��        ����������������           a  K    �ں�ں��        ����������������           z  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K 	   �ں�ں��        ����������������             K 
   �ں�ں��        ����������������              K    �ں�ں��        ����������������           <  K    �ں�ں��        ����������������           X  K    �ں�ں��        ����������������           q  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �      ��������������������default Win32_Ransomware_Hermes tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware HERMES description Yara rule that detects Hermes ransomware. tc_detection_type Ransomware tc_detection_name Hermes tc_detection_factor $hermes_find_files_v1_p1 $hermes_find_files_v1_p2 $hermes_find_files_v1_p3 $hermes_find_files_v1_p4 $hermes_encrypt_files_v1_p1 $hermes_encrypt_files_v1_p2 $hermes_enum_resources_v1 $hermes_encrypt_files_v2_p1 $hermes_encrypt_files_v2_p2 $hermes_encrypt_files_v2_p3 $hermes_encrypt_files_v2_p4 $hermes_encrypt_files_v2_p5 $hermes_find_files_v2_p1 $hermes_find_files_v2_p2 $hermes_find_files_v2_p3 $hermes_find_files_v2_p4 $hermes_enum_resources_v2       ? �@MZd/�   BB          8      p      �           /#   BB   �                1s   BB   �     �          H          />   BB   �     �     �     0     h          /$   ?B   P     �                  ����������������f���������������������f���h�������������P�����������P�蠠�����Ġ���e�����]������O�O���G��f���O��G�G�f���ɢu��������������������Q�P�f����������h�����S���E��蠠���Y�Y���Ȣ蠠�����ˢ��Т蠠���+�¢3�ɢ��}���f����C����������������蠠��������u������j��P�蠠���Y�Y�����t����������P���u����������������������������蠠��������u������h�����P�蠠���Y�Y�����t����������P���u����������������������������}����������3��3����������}����������������������������u���P����������t�����Y�Y������P�����h������u����������蠠��������������������������u���P����������t�����Y�Y������P��j������u����������蠠��������������C����f���}���ɢ3�¢+������Т��ˢ�������Ȣ��Y�Y�����蠢E���S�����h����������f�P�Q��������������������u�ɢ��f�G�G��O���f��G���O�O������]�����e����Ģ�������P�����������P�������������h���f���������������������f������������������j��Y�j����}��f�����������������󢥢Y���������������󢥢��������}����������j��Y���}������������������󢥢������������f�����������}����������3���j����}����Y���������������󢥢f�������������������������������������������������f�����E��P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y�����u����E��P���������P�蠠���Y�Y�����u����������P���������P�蠠���Y�Y�����u����E��P���������P�蠠���Y�Y�����u����������P���������P�蠠���Y�Y�����u����������頠�����������P���u���������������E��P���������P����P���������P��E���������������u���P�������������頠��������u�����Y�Y������P���������P����������u�����Y�Y������P���������P��E����u�����Y�Y������P���������P����������u�����Y�Y������P���������P��E����u�����Y�Y������P���������P��������������������Y�Y������P���������P��������������������Y�Y������P���������P��E�����f�������������������������������������������������f���󠠠������������Y����}����j���3����������}�����������f���������������󠠠���������������}���Y��j����������}�����������󠠠������������Y���󠠠��������������f��}����j�Y��j����������蠠���Y�Y�����u����������P���������P�蠠���Y�Y�����u����������P���������P�蠠���Y�Y�����u����E��P���������P�蠠���Y�Y�����u����������P���������P�蠠���Y�Y��������������E��P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y������������頠���蠠���Y�Y��������������������P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y����������������������������Y�Y������P���������P��������������������Y�Y������P���������P��������������������Y�Y�����蠠���頠����������Y�Y������P���������P��������������������Y�Y������P���������P��������������������Y�Y������P���������P��E��������������Y�Y������P���������P����������u�����Y�Y������P���������P��E����u�����Y�Y������P���������P����������u�����Y�Y������P���������P����������u�����Y�Y�����蠠������E��P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y��������������E��P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y��������������������������������������������h�����S�蠠���Y�Y�����t����Ȣ蠠��������~��S���u����u��譢蠢u����u���S��~�����������Ȣ���t�����Y�Y������S�����h��������������������������������������������Y�Y������P���������P��������������������Y�Y������P���������P��������������������Y�Y������P���������P��E��������������Y�Y������P���������P��������������������Y�Y������P���������P��E��U���좃�젢S�V�W���u���������������;�ât��S���u���������3���V�S�j��V�V�h�������u�����������E��;�Ƣ���������M��Q�P����������E��������������������������V���E����E��P�V�V�j��V���u�������������t��j��������W���u��V����������E��;�Ƣt��V���M��Q���u����u��P���u�������������t����E����M����D�����8��u����x���u����x���u����x���u����x���u����x���u����u���������h�����V���u���������3���_�^�[��[�^�_���3���������u���V�����h���������u����u���x����u���x����u���x����u���x����u���x����u��8�����D����M����E����t�������������u���P��u����u���Q��M���V��t�Ƣ;��E����������V��u���W��������j��t�������������u���V��j�V�V�P��E����E���V��������������������������E����������P�Q��M����������Ƣ;��E�����������u�������h�V�V��j�S�V���3���������u���S��t�â;���������������u���W�V�S��좃�좋�U��ɢâ��u����E��P�Q�V�j��V���u�������������t��V�V�V���u����������������P�蠠���Y�蠠���j��W���u����E��V��������������}��;���t����u�����E��P�W�蠠�����Ġ�V���E��P���u����u��W���u��������������������������W�V���u�����������u���������V�S�j��V�V�h�������u�����������آ;�ޢ�������V���E��P���u����u����u��S�������������������V���E��P�j��h�����S���u��������������������S��������W�V���u���������3���@�魢�@���3���������u���V�W��������S��������������������u���S�����h��j�P��E���V�������������������S��u����u����u���P��E���V��������ޢ;�آ����������u�������h�V�V��j�S�V���������u�����������u���V�W��������������������������u���W��u����u���P��E���V��Ģ�������W�P��E�����u����t���;��}��������������V��E����u���W��j������Y������P����������������u���V�V�V��t�������������u���V��j�V�Q�P��E����u���âɭ�U���좃�젢S�V�W���E��P���u��ǢE������j��j��j��ǢE��������������������������u��j�����������آ��ۢ���������u��j��S�蠠�����Ġ���E��P�S���E��P���u����������������������C��f���8����H��u��f���x���u��j��Q�蠠���Y�Y�����t����C����Тf����@�@�f���ɢu����}��+�¢O�O�f���O��G�G�f���ɢu����Ȣ��頢���󢥢��Ȣ��ᠢ󢤢��}��O�O�f���G��G�G�f�����u������������C����ࠢ<�����������u��S�蠠���Y�Y������������3���_�^�[�ɢâ3���@�뭢�@���3�âɢ[�^�_���3������������Y�Y������S��u�����������<��ࢃ��C������������u�����f�G�G��G���f�O�O��}������ᢃ�Ȣ�����򢋠����Ȣ���u�ɢ��f�G�G��O���f�O�O�¢+��}����u�ɢ��f�@�@����f�Т���C����t�����Y�Y������Q��j��u���x���f��u��H����8���f��C����������������������u���P��E���S�P��E����Ģ�������S��j��u����������ۢ��آ����������j��u��������������������������E�Ǡ�j��j��j������E�Ǡ�u���P��E���W�V�S��좃�좋�U��U���좁�젠���S�V�W�3�������������3�ۢ��]����������}��W��������������V�W��������S�V�j��S�S�h�����W����������𢅢��u��S��������3���頠���3�ۢ3�����]���W�����E��f���E�������t����E��P�V����������E��P�V����������]����E�������u������u��3���G�頠�����e�����}���w����}�������������j��j����u����u��蠠���j��j��R�P�蠠���j��h�����R�P�蠠�����M����E�������r��w����}������v��j��j��Q���u��蠠���j��h�����R�P�蠠�����E��=�����v��ǢE������렢��U�������� ������Р������w��r����������w��j��j��Q���u��蠠���j��j��R�P�蠠���j��h�����R�P�蠠�����E��렢����������렢E��������P�R�����h��j������P�R��j��j�����蠢u���Q��j��j��w����������r��w�������Т������¢�������U����렠����E�Ǡ�v�����=��E��������P�R�����h��j�����蠢u���Q��j��j��v������}����w��r�������E����M��������P�R�����h��j������P�R��j��j�����蠢u����u����j��j�������������}����w���}�����e��������G���3��u������u�������E����]����������V�P��E����������V�P��E����t�������E���f��E�����W���]�����3�ۢ3��������3��������S��u�����𢋠�������W�����h�S�S��j�V�S��������W�V��������������W��}����������]���ۢ3�������������3�W�V�S�����좁�좋�U��w��r����}������s����E��렢��E��=�������������������������}���w�����������}������������}������������}���������w��9�E���������j��j����u��+�آS�V���]��������������u��j��X�頠���3�ۢ��E��S�P�j������������]��P�V������������u��j��렢��â����������u������������u������������u������������u������������u������������t��@������r��S�S�S�V��������������������j��頠���V��������j��X�j��f���E��X�f���E��j��X�f���E��3���f���E����E��P�W�蠠���Y�Y�����u��j��h�����h�����S����������𢅢��t��W�V����蠠���W�V�蠠�����E��P�V�蠠�����Ġ�j��V�W��������h�����S�V��������j��頠���3�ۢ��E��E���ۢ3�����頢j��������V�S�����h��������W�V��j��Ģ�������V�P��E��������V�W���������V�W��t�����𢋠�������S�����h�����h��j��u�����Y�Y������W�P��E����E���f���3��E���f�X��j��E���f�X��E���f��j�X��j��������V�����頢j��������������������V�S�S�S��r������@��t������������u������������u������������u������������u������������u�����������â���렢j��u������������V�P��]������������j�P�S��E���ۢ3������X��j��u��������������]���V�S�آ+��u����j��j���������E�9��w���������}������������}������������}�����������w���}�������������������������=��E����렢E����s������}����r��w��P�j��h�������u�������������u��j��頠���9�]��w����}������w��S�S�h�������u����u��蠠�����]��[�j����M��3�ۢ��E����U��_�렢��E����E��S�i�������S�P�V�������������u��j��頠���S���E����]��P�j��_�W���������P�V������������u��j��頠���S�S�S�V�������������u��j��頠�����]��j��h�����h�����S����������آ��ۢu��j��頠�����U��3�ɢ3���ǢE��������M����E����e���ǢE������;�ʢu����M����M��ǢE������3�ɢQ�Q�P�V���M���������������������j����E��P���u��S�V�������������������3�ɢǭ�Ǣɢ3�������������������V�S��u���P��E����j���������������������M���V�P�Q�Q�ɢ3������E�Ǡ�M����M����u�ʢ;������E�Ǡ��e����E����M��������E�Ǣ��3�ɢ3��U�������頢j��u�ۢ��آ���������S�����h�����h��j��]�������頢j��u�������������V�S�S�S�����頢j��u������������V�P���������W�_��j�P��]����E���S�����頢j��u�������������V�P�S�������i�S��E����E�����_��U����E���ۢ3��M����j�[��]�������蠢u����u�������h�S�S��w������}����w��]�9�����頢j��u�������������u�������h��j�P��E������Q���E��P�Q�Q���u��Q���u����������������������u����E��P�S�j����u��j����u��������������������j��j����u��V����������������������e�����E��j��P���u��S�V���������������������M����E��A���U���������M����E��;�ʢ�������3���ǢE��������}��f�ǢE������������f���3�����E��9�E��w����}������w����E��P���E��P�蠠���Y�Y�렢j��P�P�P�V��������3�����}����j����f�����E��P���E��P�蠠�����E��h�����P�蠠�����E��P���E��P�蠠�����E��h�����P�蠠�����E��P���E��P�蠠�����Ġ�3�����E��W�P���E����}��P�蠠���Y�P���E��P�V������������u��h�����W�S��������j��頠�����E��P�W�W�j��j�W�W�P��E�������頢j��������S�W�����h��u������������V�P��E���P�Y������P��}����E���P�W��E�����3��Ģ�������P��E���P��E��������P�����h��E��������P��E���P��E��������P�����h��E��������P��E���P��E�����f����j����}�����3��������V�P�P�P��j���Y�Y������P��E���P��E����w������}����w��E�9��E�����3���f������������E�Ǣf��}��������E�Ǣ��3��������ʢ;��E����M���������U���A��E����M���������������������V�S��u���P��j��E�����e����������������������V��u����j��j��������������������u����j��u����j�S�P��E����u����������������������u���Q��u���Q�Q�P��E���Q������E����u����u�������������u��h�����W�S��������j��頠���h�������������W�P�蠠�����Ġ���E��P���������P�W�j����u����u�������������u��h�����W�S��������j��頠���W���E����}��P���u����������P�V������������u��h�����W�S��������j��頠���9�}��w����}������v��j��W��W���f���E����u����u��V�������������u��h�����W�S��������j��렢W���E����}��P�j����������P�V������������u��h�����W�S��������j��렢V��������h�����W�S�蠠�����Ġ�h�����W�S��������j��[�렢h�����j��S��������j��[�V����������u�����������â렢��u���������V��������j��렢��u���������V��������j��렢��u���������V��������j��_�렢j��_�V����������u���������h�����j��S��������렢j��頠���j��_�V����������Ǣ_�^�[����]�í�â]�墋�[�^�_�Ǣ���������V�_��j�����頢j��렠������S��j�����h���������u����������V�_��j���_��j��������V���������u����렢j��������V���������u����렢j��������V���������u�����â����������u����������V�[��j��������S��j�����h���[��j��������S�W�����h��Ģ�������S�W�����h��������V��렢j��������S�W�����h��u������������V�P����������j�P��}����E���W��렢j��������S�W�����h��u�������������V��u����u����E���f���W��W��j��v������}����w��}�9�����頢j��������S�W�����h��u������������V�P����������u���P��}����E���W�����頢j��������S�W�����h��u�������������u����u����j�W�P���������P��E����Ģ�������P�W�������������h�����頢j��������S�W�����h��u�������������u����u����U���좁�젠���S���]����������V�W�P�h�����S�蠠���Y�Y�P������������h�����S���}��蠠���P�蠠���S����蠠���+�Ƣ3�ɢ��Ġ�f����C�������������3�����������P�蠠���Y������u����������j��P�蠠���Y�Y�����t����������P�W���������������������������P�蠠���Y������u����������h�����P�蠠���Y�Y�����t����������P�W�������������������j��X�j��_�j��Z�j��f���E��X�j��Y�j��f���E��X�j��f���E��X�j��f���E��3�����E��X�j��f���E��X�j��f���E��X�j��f������f��j�X��E���f��j�X��E���f��j�X��E�����3��E���f��j�X��E���f��j�X��E���f��j�Y��j�X��E���f��j�Z��j�_��j�X��j�������������������W�P����������t�����Y�Y������P�����h����������u������Y������P���������������������������W�P����������t�����Y�Y������P��j����������u������Y������P�����������3�������������C����f��Ģ��ɢ3�Ƣ+������𢋢S������P�����蠢}���S�����h������������P�Y�Y������S�����h�P�W�V����������]���S�����좁�좋�U��E��X�j��f���E��X�j��f���E��3���f���E��X�j��f���E��X�j��f���E��X�j��f���E��X�j��f���E��3���f���U��f���U��Z�j��f���E��X�j��f���������X�j��f���M��f���M��f���������Y�f���������j��X�f���������3���f���}��f�����������}����u��f���u��f���U����u��f���u��f���������f���������f�����������j��f���M��f���U����f���U����u����f���X�j��f���E��X�j��_�j��f���E��X�j��f���E��X�j��f���E��X�j��f���E��X�j��f���E��X�j��Y�f���E��3���f���E��j��X�f���������j��X�f���������j��X�f���������j��X�f���������j��X�f���������3���f���}��f���}����������f���������f���������f����������f���������f���������f����������}���f��}���f���3���������f�X��j���������f�X��j���������f�X��j���������f�X��j���������f�X��j��E���f���3��E���f�Y��j�X��E���f��j�X��E���f��j�X��E���f��j�X��E���f��j�X��E���f��j�_��j�X��E���f��j�X���f����u����U���f����U���f��M���f��j�����������f���������f���������f��u���f��u����U���f��u���f��u����}�����������f��}���f���3���������f�X��j���������f�Y���������f��M���f��M���f��j�X���������f��j�X��E���f��j�Z��U���f��U���f���3��E���f��j�X��E���f��j�X��E���f��j�X��E���f��j�X��E���f���3��E���f��j�X��E���f��j�X��E��������f�����E��P���������P�蠠���Y�Y�����u����E��P���������P�蠠���Y�Y�����u����E��P���������P�蠠���Y�Y�����u����������P���������P�蠠���Y�Y�����u����E��P���������P�蠠���Y�Y�����u����������P���������P�蠠���Y�Y��������������}��頠���蠠���Y�Y�����u����E��P���������P�蠠���Y�Y�����u����E��P���������P�蠠���Y�Y�����u����������P���������P�蠠���Y�Y�����u����E��P���������P�蠠���Y�Y�����u����������P���������P�蠠���Y�Y����������Y�Y������P���������P����������u�����Y�Y������P���������P��E����u�����Y�Y������P���������P����������u�����Y�Y������P���������P��E����u�����Y�Y������P���������P��E����u�����Y�Y�����蠠���頢}��������������Y�Y������P���������P����������u�����Y�Y������P���������P��E����u�����Y�Y������P���������P����������u�����Y�Y������P���������P��E����u�����Y�Y������P���������P��E����u�����Y�Y������P���������P��E�����f�����������������������P�W��������������E��P���������P��������蠠���Y�Y��������������E��P���������P�蠠���Y�Y��������������E��P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y��������������E��P���������P�蠠���Y�Y��������������������P���������P�蠠���Y�Y�����u��렢��}�����������t��S�蠠���Y���u������������u����u��P�S�蠠���Y�Y�P�蠠���S�蠠���S�蠠�����𢍢������P�蠠���+�𢃢Ġ�3���f���D�s��3�����������P�W�������������������W��������_�^�[����]�í�â]�墋�[�^�_��������W�������������������W�P�����������3��s�D���f���3��Ģ���+������P���������𢋠�����S������S������P�Y�Y������S�P��u����u������������u���Y������S��t�����������}����렢u�����Y�Y������P���������P��������������������Y�Y������P���������P��E��������������Y�Y������P���������P��������������������Y�Y������P���������P��E��������������Y�Y������P���������P��E��������������Y�Y�����蠠������P���������P��E��������������W�P�����������������U���좃�젢S�V�W���E��ǢE������P���u��3�ۢǢE������S�S�j����]����������������������u��j�����������𢅢��t����u��S�V�蠠�����Ġ���E��P�V���E��P���u�������������u����~��j��X�f�9��u��f�9�G��u��P���G��P�蠠���Y�Y�����t��W���u��蠠���h�������u��蠠�����Ġ���F������t����u��V�蠠���Y�Y�����u��3���_�^�[����]�â3���@�뭢�@���3�â]�墋�[�^�_���3��u�����Y�Y������V��u����t������F����Ģ������蠢u�������h�����蠢u���W��t�����Y�Y������P��G���P��u��G�9�f��u��9�f�X��j��~����u�������������u���P��E���V�P��E����Ģ�������V�S��u����t�����𢋠��������j��u����������������������]����j�S�S������E�Ǣۢ3��u���P������E�Ǡ�E���W�V�S��좃�좋�U�                                                                             
                        ,                     :                                             ,       ,  \                  4                              <  4*                                                                                                                  Z                                                                          `6                  g(                              _R                                              �                      �
  �"                  �0      �&  �8          �<  �.  �2  �H  ~V      �J  �P  �D      �Z                                      �$                                                                                          �  �              �          �   �  �                  �>          �L                                  �  �F  �`              �B                                                              �      �      �T                      �                                              �b                  �N                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            �      �  ��������          8      �     7  ��������          p      =     4
  ��������          �      �
       
   P             �      �     �  ��������               �     �  ��������          P     �     ]  ��������          �     �     �  ��������          �     1     h  ��������          �     �      "  
   �             0     f#     {'  
   @            h     :*     _*  ��������          �     `-     �/  ��������          �     q0     x4  ��������               i5     7  
   �            H     X9     %:  ��������          �     �;     �=  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   0     �     �     �  
   @  
   H  
   P  
   X     (            
   h  
   p  
   x  
   �     `     H     P  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �          �     �  
     
     
     
         @     (     0  
   0  
   8  
   @  
   H     x     `     h  
   X  
   `  
   h  
   p     �     �     �  
   �  
   �  
   �  
   �           !      *      3      L      U      o      x      �      �      �      �      �      �      �      �      �   