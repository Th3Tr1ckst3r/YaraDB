YARA�          �       `         @  F      �  �         �      �  �      �   K      L  �         �'         �/        �0                                        '                            ��������������������������������������������   ?      F                     T      F                     [      b                     k      s                     }      �                     �      �                     �      �                     �      �                     �                            ��������             K     �ں�ں��        ����������������           2  K    �ں�ں��        ����������������           >  K    �ں�ں��        ����������������           X  K    �ں�ں��        ����������������           t  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �      ��������������������default Win32_Ransomware_TorrentLocker tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware TORRENTLOCKER description Yara rule that detects TorrentLocker ransomware. tc_detection_type Ransomware tc_detection_name TorrentLocker tc_detection_factor $tlocker_ep $tlocker_contact_server_1 $tlocker_contact_server_2_1 $tlocker_contact_server_2_2 $tlocker_get_server_data $tlocker_remove_shadow_copies $tlocker_find_files �       ? �@MZd/p          /      �   /        /      P  /0      8   1       p   /      �           ��h�����蠠�����Ġ�����t��蠠���3���í�â��3�������t������Ģ������蠠���h��U���좃�젢��E��P���M��Q�������ǢE������蠠�����Ġ�����t�!���}�����E��u�������U������t��P�������j��P��������S�V�W�����������M����U��R�j����������M��蠠�����𢃢Ġ���u���������,�� � �����������Ǡ����ǢE������蠠�����آ��ۢ���� � � �j��h�����h�����j��j��h�����h�����S����������𢅢������� � � ���E��P���M��Q�j��V�ǢE�����������������t����M������j����U��R�j��V����������E��W�P�j��j��V������������t�8�j����M��Q���U��R�h�����V�ǢE������ǢE�����������������t����}������u��ǢE��������=�����V���ע����=�������E��P���M��Q�j��S�ǢE������ǢE�������������S������ע����t����U��R���ע��u���������3�����}���V������j��Q����������������u��h������������颞�������_�^�[����]�í�â]�墋�[�^�_���������頠����������h��u����������������Q��j������V���}�����3���������u���ע��R��U����t�����ע��𢋢S�������������E�Ǡ�����E�ǢS��j�Q��M���P��E�������=�����ע��V�����=��������E�Ǣ�u������}����t�����������������E�Ǡ�����E�ǢV�����h�R��U���Q��M����j�8�t������������V��j��j�P�W��E����������V��j�R��U����j������M����t�����������������E�ǢV��j�Q��M���P��E��� � � ����������𢋠�������S�����h�����h��j��j�����h�����h��j� � � �뢄��ۢ��آ������蠠����E�Ǡ����Ǣ���������� � ��,���������u����Ģ��𢋠����蠢M����������j�R��U����M�����������W�V�S��������P��j�������P��t������U�������u��E�����}���!�t������Ģ������蠠����E�Ǡ������Q��M���P��E����좃�좋�U��U���좃�젢��E��P���M��Q�������ǢE������蠠�����Ġ�����t�!���}�����E��u�������U������t��P�������j��P��������S�V�W�����������M����U��R�j����������M��蠠�����𢃢Ġ���u����������� � �������9�=�����t��h��������������=�����h����������������������à����ǢE������蠠��������������� � � �j��h�����h�����j��j��h�����h�����W����������𢅢������� � � ���E��P���M��Q�j��V�ǢE�����������������t����M������j����U��R�j��V����������E��S�P�j��j��V������������t�8�j����M��Q���U��R�h�����V�ǢE������ǢE�����������������t����}������u��ǢE������V���5�������֢����5�������E��P���M��Q�j��W�ǢE������ǢE����E�Ǡ�����E�ǢW��j�Q��M���P��E�������5�����֢������5���V������E�Ǣ�u������}����t�����������������E�Ǡ�����E�ǢV�����h�R��U���Q��M����j�8�t������������V��j��j�P�S��E����������V��j�R��U����j������M����t�����������������E�ǢV��j�Q��M���P��E��� � � ����������𢋠�������W�����h�����h��j��j�����h�����h��j� � � �뢄��������������蠠����E�Ǡ����â���������������������h�����=��������������h��t�����=�9������� � ��墄�������u����Ģ��𢋠����蠢M����������j�R��U����M�����������W�V�S��������P��j�������P��t������U�������u��E�����}���!�t������Ģ������蠠����E�Ǡ������Q��M���P��E����좃�좋�U�������������W���آ��֢��ۢt����U��R���֢��u��3�����}����������������t����������������Ǣ����������^��������;������u�4�����������������ѢA����������Ң~�q��������;���s����Ȣ�������+���=�����r��������@������~����������Ȣ������蠠�����=���������u��h������������������V�j��P������������u��h��������������������������뢿�_�^�[����]�í�â]�墋�[�^�_���렠������������頠����������h��u������������P��j�V������������������h��u���������=�������蠠�����Ȣ���������~������@��������r�����=���+��������Ȣ���s���;��������q�~�Ң���������A�Ѣ����������������4�u������;��������^�렠��������Ǡ���������������t����������������}�����3��u���֢��R��U����t�ۢ��֢��آ��W�������������U���좃�젢V�W�3���W�W���E��P�S�3��������������t�w���I����M���Ϣ����u�s�3�����ɢt���������Q�P�R��������3�ɢ�����������𢋢������t�3���U����M��Q�R����7�P�S������������t����E������t��j��j����M��Q�S���������������u�������t���������V�j��Q��������_�3���^����]�í�â]�墋�^���3�_��������Q��j�V���������t�������u���������������S�Q��M����j��j��t������E����t������������S�P�7����R�Q��M����U���3�t���������𢋢���������ɢ3��������R�P�Q���������t�ɢ����3�s�u�����Ϣ��M����I���w�t��������������3�S�P��E���W�W���3�W�V��좃�좋�U��U���좁�젠���������3�Ţ��E��������S�W�j��3���W�P����������آ;�ߢ���ܢ � � �V�����������������蠠�������t�
�Ǣ����������h�������������Q��������=�����s�^���������Ӣ+�Т����f����������f�;�Ϣu��j����������W�R�蠠�����Ġ���������P���������Q���������R�W�h�����W�W�W�S�W�Ǣ���������������������u�����������Ȣ蠠����������������t����������蠠���������S�j��P��������^���Ǣ_�[���M��3�͢蠠������]�â��M��_�3�͢������[�蠠������]�í�â]�墋������[�������͢3�_��M���â]�墋������͢3��M���[�_�Ǣ��^��������P��j�S�����������蠠��������t�������������������Ȣ����������u����������������������ǢW�S�W�W�W�����h�W�R���������Q���������P����������Ģ�������R�W����������j��u�Ϣ;�f����������f�����Т+�Ӣ��������^�s�����=��������Q�������������h�����������Ǣ
�t���������蠠���������������V� � � �ܢ���ߢ;�آ���������P�W���3��j�W�S��������E���Ţ3�����������좁�좋�U��U���좁�젠���������3�Ţ��E�����������E��S�V�W�h�����3���V�Q��������������������������آ��ۢ������ � �S�V�V�j��V������������������ � �h�����S�S����������â��P����������f���������f���ɢu���+�¢Ѣ������蠠������������������M�� � ���������R�P������������������������� � �������������� � � ���������������f����f�;��u��f���Ңt��f���P��f�;�Q��u������������f���Ңu�ޢ3����������ؠ���������� � � ���������������f����f�;��u��f���Ңt��f���P��f�;�Q��u������������f���Ңu�ޢ3����������ؠ�����t�t�����������P������f���������f���ɢu���+�¢Ѣ���Ǣ��D� ������t�l�P�������j��P����������𢅢��t�W�S���O��Q�V�蠠�����Ġ���������R�V�V����������������P�V�蠠�����Ġ�����t�
�Ǣ��������������������������Q�R�������������������������������������P�j��Q�����������������������S�j��R����������M��_���Ƣ^�3�͢[�蠠������]�í�â]�墋������[�͢3�^�Ƣ��_��M����������R��j�S�����������������������Q��j�P����������������������뢅�������������R�Q���������������������������Ǣ
�t������Ģ�������V�P����������������V�V�R����������Ģ�������V�Q��O���S�W�t�����𢋠�������P��j�������P�l�t������ �D���Ǣ���Ѣ¢+���u�ɢ��f���������f������P�����������t�t������آ���������3�ޢu�Ң��f������������u��Q�;�f��P���f��t�Ң��f��u��;�f����f��������������� � � �����������آ���������3�ޢu�Ң��f������������u��Q�;�f��P���f��t�Ң��f��u��;�f����f��������������� � � �좄����������� � �������������������������P�R��������� � ��M���������������������������Ѣ¢+���u�ɢ��f���������f����������P���â���������S�S�����h� � ������������������V��j�V�V�S� � �������ۢ��آ�������������������������Q�V���3�����h�W�V�S��E�����������E���Ţ3�����������좁�좋�U�                      
                                                               2       
                                                                                                         4                                                              <                                                                                                                                                                                                                                              u"                      �                      �      �  �  �(  �  ~,                              �0                                                                                                                                                                      �              �                                      �                              �                                                          �$                  �&                                                                                              �*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                :   ��������          8      �      a  ��������          p      �     
  
   (             �      �
     �  ��������          �      f       ��������               �     {  ��������          P          �  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
              %      5      E      U      d      s   