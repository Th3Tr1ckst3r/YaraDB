YARA�          �       `         @  F      P  �         �      �  P      o   �      B           %         -      �   �-                                                                    ��������������������������������������������   7      >                     L      >                     S      Z                     c      k                     u      ~                     �      �                     �      �                     �      �                     �      �                     �   ��������             K     �ں�ں��        ����������������             K    �ں�ں��        ����������������           0  K    �ں�ں��        ����������������           N  K    �ں�ں��        ����������������           c  K    �ں�ں��        ����������������           x  K    �ں�ں��        ����������������           �      ��������������������default Win32_Ransomware_Gibon tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware GIBON description Yara rule that detects Gibon ransomware. tc_detection_type Ransomware tc_detection_name Gibon tc_detection_factor $remote_server_connection_1_0 $remote_server_connection_1_1 $encryption_loop_1_0 $encryption_loop_1_1 $encryption_loop_1_2 $encryption_loop_1_3 n       ? �@MZd/U          /      8   /5   BB   p      �      �                        ��S���ܢ��젢��䠢��Ġ�U���k����l�$�����j��h�����d�������P�S�������蠠���������3�Ţ��E��V�W�P���E��d�������Ǣ����������������ǢE������������蠠���P�蠠�����Ġ���������P�h����������������������t��������頠���������蠠���P�蠠�����Ġ�j��j��j�����������𢹠���������u��������頠���������蠠���P�蠠�����Ġ�h��������������������������j��f����������������f�����������������j��P�V����������=���������y����עP�Q�������������蠠�����Ġ���Ȣ蠠���P�蠠�����Ġ�������������蠠���P�蠠�����Ġ�ƢE�������������C�������Ǣ����������P�Ǣ����������Ƣ�������Ǣ����������蠠���j��h�������������蠠�����{�����C����s���C�C����������P�蠠���j��h�������������譢蠠�����������h��j������P����������C�C���s����C�����{�������蠠�����������h��j�����蠠���������Ǡ�������Ơ����������ǢP�����������Ǡ������C�������������E�Ơ�Ģ�������P�����蠠������������Ģ�������P������Ȣ���Ģ������蠠�����������Q�P�ע���y���������=����������V�P��j�����������������f����������������f��j��������������������������h��Ģ�������P�����蠠���������頠������u������������𢋠��������j��j��j��Ģ�������P�����蠠���������頠������t����������������������h�P����������Ģ�������P�����蠠����������E�Ǡ����������������Ǡ������d��E���P�W�V��E���Ţ3�����������蠠�����S�P�������d�����h��j�좋��$�l����k���U��Ģ���䢃��좃�ܢ��S��蠠�����������蠠�����������ƢE���蠠�����S����K��������C�K����A���������������A�����u��+���������C��j�������Q��C�C��P�V������������y����עP�Q�������������蠠�����Ġ���Ȣ蠠���렢������������蠠���P�蠠�����Ġ���������j��h�����P�V��������������������������������蠠���P�蠠�����Ġ���������C�������r����K��@�=�����r����������������A��;����������+�Ȣ��������������������������ȢQ�蠠�����Ġ���Ƣ��M��d��������Y�_�^���M��3�͢蠠������]����[�í�â[�㢋�]�墋������͢3��M���^�_�Y��������d��M���Ƣ���Ģ�������Q�Ȣ��������������������������Ȣ+����������;��A����������������r�����=�@��K����r�������C����������Ģ�������P�����蠠������������������������������V�P�����h��j����������Ģ�������P�����蠠������������렠����Ȣ���Ģ������蠠�����������Q�P�ע���y������������V�P��C�C��Q�������j��C���������+��u�����A���������������A����K�C��������K����S�������蠠�E�Ơ������������蠠�����������譢f����f�;��u��������� ���u��Ƣ�������頠�������������������j����@���Ȣ��Q����ʠ���¢��Ƞ���y����E�¢P�蠠���頠���2������������������P���������蠠�������ǢE����������������ˠ�h�������������蠠���ǢE��������ע����������ˠ����������������������r�������x�����Ȣr�������p��;�w��u������������������u��w�;��p�������r�Ȣ����x�������r�����������������������ˢ����������ע�������E�Ǡ����蠠�����������h��ˢ���������������E�Ǣ��������蠠�������P������������������2�����頠����P�¢E����y����Ȣ��¢���ʢ���Q���Ȣ��@����j���������������������頠������Ơ�u����¢��������u��;�f����f��f����f�;��u��������� ���u��Ƣ�������렢2���t��Ƣ�������렢Ƣ���������à�t����㠢����������������蠠�����à�t����㠢����������������蠠�����à�t����㠢����������������蠠�����à�t����㠢����������������蠠���2���u����㠢����������������蠠���2���ǢE������u����㠢����������������蠠�������������������Q���������������ƢE���Q���������蠠��������������h�������������蠠�������u����������P���������蠠�������u��h�������������P������������������������������������������������������������������������P�������������h��u���������蠠�������P����������u���������蠠�����������h����������������蠠�������Q���E�Ơ��������������Q���������������������蠠����������������㢃��u������E�Ǣ��2�����蠠����������������㢃��u���2�����蠠����������������㢃��t��â������蠠����������������㢃��t��â������蠠����������������㢃��t��â������蠠����������������㢃��t��â���������Ơ�렠������Ơ�t���2��렠������Ơ�u����¢��������u��;�f����f��W�蠠�����Ġ�렢������������蠠���������â��������������������������������������������������������ǢE������P��������������������������������������������������蠠���3�����M��d��������Y�_�^�[���M��3�͢蠠������]�âQ���������������Q���������蠠�������u��h�������������蠠����������������������P���������蠠��������������h�������������P���������������������������蠠����������������������P�h�����蠠���i��������Ġ����������������H����������P�Q�蠠�������t��������������蠠���P�蠠�����Ġ�魢頢Ģ�������P�����蠠������������t����������Q�P����������H�����������������Ģ�������i�����蠠���h�P������������������������蠠�������������������������P�������������h����������������蠠�������P������������������������蠠�����������h��u���������蠠�������Q���������������Q�â]�墋������͢3��M���[�^�_�Y��������d��M�����3�����蠠������������������������������������������������P������E�Ǡ��������������������������������������������������������à����������蠠������������렢Ģ�������W��i�7�������������h������p��蠠�������������Ġ�����������ˠ��������������x����J�������J����H����J����H����J����H����J����H��������󢥢f���Ǣ������������������ƢE���蠠�����������Ǣ����������Ǣ��������������������������ƢE���P���������蠠���������������t��h�����P�蠠�����Ġ�ƢE�������������������V�Ǣ����������蠠�����Ġ�����t��P�蠠�����Ġ�V�蠠�����Ġ�W�蠠�����Ġ���������ƢE���蠠���������������������������A��i��������A���������������H�9��u��������������蠠���P�蠠�����Ġ��������������������������������蠠���ƢE�������������������蠠���������������蠠����������������Ȣ蠠���P�蠠�����Ġ�������í�à�������Ģ�������P������Ȣ�����������������蠠���������������蠠�����������������E�Ơ����蠠�������������������������������Ģ�������P�����蠠������������u��9�H���������������A��������i��A�����������������������������蠠�E�Ơ���������Ģ�������W��Ģ�������V��Ģ�������P��t������Ģ������蠠���������ǢV�������������������E�Ơ�Ģ�������P�����h��t�����������������蠠�������P���E�Ơ��������������������������Ǡ����������Ǡ������������蠠�E�Ơ������������������Ǣ��f���󠠠�����H����J����H����J����H����J����H����J�������J����x���������������ˢ�����������Ģ��������������蠢p������h�������������7�i�                                                                         
                                                                                                                                                              <                                                          <,                                                                                  `  _      \                                                  g                                                                                                          �  �      �   �"      �  �*                          �(                                                                                                                                                                              �      �                                                      �$              �.                              �                                                                                                                  �2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ��������          8      ^     A  ��������          p      �     �
  ��������          �      �
     �  ��������          �      L     �  ��������               �     �  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �            %      7      @      I      R   