YARA�          �       `         @  F      P  �         �      �  >      y   �      �  {          {(         {0      �   k1                                        $                            ��������������������������������������������   <      C                     Q      C                     X      _                     h      p                     z      �                     �      �                     �      �                     �      �                     �                            ��������             K     �ں�ں��        ����������������           &  K    �ں�ں��        ����������������           8  K    �ں�ں��        ����������������           J  K    �ں�ں��        ����������������           \  K    �ں�ں��        ����������������           k  K    �ں�ں��        ����������������           z      ��������������������default Win32_Ransomware_BlueLocker tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware BLUELOCKER description Yara rule that detects BlueLocker ransomware. tc_detection_type Ransomware tc_detection_name BlueLocker tc_detection_factor $encrypt_files_p1 $encrypt_files_p2 $encrypt_files_p3 $find_files_p1 $find_files_p2 $create_crypt_context x       ? �@MZd/#   BB   �      �           /        /,   BB          8      p                   ��U���좁�젠���������3�Ţ��E����E��S�V���u��W���}��j��h�����j��j��j��h�����V���U����u����E����}�����������آǢE��������E��P�S����������U��3�ɢ�Ȣ��U����M�������u���â_�^�[���M��3�͢蠠������]�âj��V��������h���������������3�ɢ�𢃢Ơ��������٢�΢Q�蠠�����𢃢Ġ���u���������������u���������P���u��V�蠠�����Ġ�Ѣ�P�V�蠠�����Ġ�h�����V�蠠�����Ġ�Ѣ�P�V�蠠�����M����Ġ���ɢ���������E���������=��������������ɢ�������|��=������������j��S����������U����M��Ѣ袉�E��蠠������O���W������G����ᠢ�ȭ�Ȣ������G������W���O��������蠢E����Ѡ�M����U����������S��j������������=��|��������ɢ�������������=���������E����������ɢ���Ģ���M��������V�P��Ѡ�Ģ�������V�����h��Ģ�������V�P��Ѡ�Ģ�������V��u���P���������u���������������u����Ģ��𢋠�����Q�΢�٢��������Ƣ����ɢ3��������𢋠����h��������V��j�â]�墋������͢3��M���[�^�_�â��u�������M����U���Ȣ�ɢ3��U����������S�P��E��������E�Ǣآ����������}����E����u����U���V�����h��j��j��j�����h��j��}���W��u���V�S��E����E���Ţ3�����������좁�좋�U��f���E�����G����ᠢ�ȢǢE������������ᠢ�ȢǢE���������G����M�����O����ᠢ�Ȣ���G��j��j����u����ᠢ��u���Ȣ���G����=�������ᠢ�ȢS���M����ע3�����E��V�P�h�����h�����S���������������������@����u����������M��蠠�����M����Ġ�3�����٢���j��j����آP�Q�S���עj����E��P���u��h�����S���������������������E����;�u���������=������������j����E��P�h�����h�����S������������u��頠�����ɢ��|��=�����s����u����ˢW���֢蠠�����=�������Ġ�頠�����u����ˢW���֢蠠�����=�������Ġ�頠�����U����M��蠠������O������O��������蠢M����U�������頢Ģ������=��������֢��W�ˢ���u�������頢Ģ������=��������֢��W�ˢ���u����s�����=��|���ɢ������頢u������������S�����h�����h�P��E����j������������=���������u�;����E���������������������S�����h��u���P��E����j�ע��S�Q�P�آ���j��j����٢����3��Ģ���M�������蠢M����������u����@���������������������S�����h�����h�P�V��E�����3�ע���M���S�Ȣ���������=����G����Ȣ��u��������u����j��j��G����Ȣ������O�����M����G���������E�ǢȢ��������������E�ǢȢ������G�����E���f��W������G����ᠢ�Ȣf���E�����G����ᠢ�ȢǢE������������ᠢ�ȢǢE���������G����M�����O����ᠢ�Ȣ���G��j��j����u����ᠢ��u���Ȣ���G����=�������ᠢ�ȢS���M����ע��5�������E��j��P�h�����h�����S���֢����t����u����������M��蠠�����M����Ġ�3�����٢���j��j����آP�Q�S���עj����E��P���u��h�����S������������t����}������r��j����E��P�h�����h�����S���֢����u����u��j���W���j��f���E����u����u��S���עj��h�����蠠�����ТǢE��������Ġ���U��ǢE��������Ңt������������󢥢��M��h����������I������������E��P�R�j��j��j����u�������������������u������t��j����E��P���u��V�S��������V�蠠�����Ġ�3���렢��Π���ۢt��S����������}��W���u���������렢��}��W�蠠�����M����Ġ���Ƣ3�͢_�^�[�蠠������]�í�â]�墋������[�^�_�͢3�Ƣ���Ģ���M��������W��}����렠�������u���W��}����������S��t�ۢ���΢������3��Ģ�������V��������S�V��u���P��E����j��t������u�������������������u����j��j��j�R�P��E������������I����������h��M�����󠠠���������t�Ң�������E�Ǡ�U����Ģ�������E�ǢТ������蠠���h��j�ע��S��u����u����E���f��j���W���j��u����u�����֢��S�����h�����h�P��E����j��r������}����t������������S�����h��u���P��E����j�ע��S�Q�P�آ���j��j����٢����3��Ģ���M�������蠢M����������u����t�����֢��S�����h�����h�P��j��E�������5���ע���M���S�Ȣ���������=����G����Ȣ��u��������u����j��j��G����Ȣ������O�����M����G���������E�ǢȢ��������������E�ǢȢ������G�����E���f�Ȣ������G������W����t��������$�����P�������������������F������|����t�$����עh����������ע�𢍢��$�����j��P���ע����3���������������آ���P�蠠�����𢃢Ġ��������������t�$����עH�P���t�$��V�蠠�����Ġ�Ѣ�P�V�蠠�����Ġ�����$�����P�V�蠠�����Ġ�Ѣ�P�V�蠠�����Ġ�h�����V�蠠�����Ġ�Ѣ�P�V�蠠�����|�$����Ġ���Ǡ�W��������j��j��蠠�����Ȣ��Ġ���ɢt����T�$��Ǣ�����ǢA��������z���u����J����J��W���1��������頠�����B����H����B����@����B����0�W��������頠���ǢD�$������3���ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$������ǢD�$��������t��������$��$��������t��������$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�D�Ǣ��3������$�D�Ǡ����頠������W�0����B����@����B����H����B�������頠������1���W��J����J����u���z��������A�Ǡ�����Ǡ�$�T����t�ɢ���Ģ��Ȣ������蠢j��j��������W��Ǣ���Ģ���$�|��������V�P��Ѡ�Ģ�������V�����h��Ģ�������V�P��Ѡ�Ģ�������V�P�����$������Ģ�������V�P��Ѡ�Ģ�������V��$�t���P�H�ע���$�t���������������Ģ��𢋠�����P����آ��������������3�����ע��P��j�����$�������ע��𢋠����h�ע���$�t����|������F�������������������P�����$��������t����P���Ӣ�����������F������|��j����t�$����ע��𢍢��$�����P���ע��3�����Ơ��������آ�ƢP�蠠�����𢃢Ġ��������������t�$����עH�P���t�$��V�蠠�����Ġ�Ѣ�P�V�蠠�����Ġ�����$�����P�V�蠠�����Ġ�Ѣ�P�V�蠠�����Ġ�j��h�����蠠���������Ġ�����u��V�蠠���렢j��j��蠠�����آ��Ġ���ۢu��V�蠠�����Ġ�W�렢W�h�������t�$�������������t��S�j����t�$�������������t����T�$��S�W�V�蠠�����Ġ�V�蠠�����Ġ�W�蠠�����Ġ�S�蠠������������Ġ���5���������$�����P���t�$����������$�t���P�����$���������5����Ģ��������������S��Ģ�������W��Ģ�������V��Ģ�������V�W�S��$�T����t�������������$�t����j�S��t�������������$�t�������h�W���W��Ģ�������V��u�ۢ���Ģ��آ������蠢j��j��렠����V��u������Ģ����������蠠���h��j��Ģ�������V�P��Ѡ�Ģ�������V�P�����$������Ģ�������V�P��Ѡ�Ģ�������V��$�t���P�H�ע���$�t���������������Ģ��𢋠�����P�Ƣ�آ��������Ƣ����3���ע��P�����$�����𢋢ע���$�t����j��|������F������������Ӣ��P��U���좃�젢������3�Ţ��E��h�����j��j���������j��P������������t����Ƞ���M��3�͢蠠������]� ��V���5�������E��h�����j��h�����j��P���֢����u��h�����j��h�����P���E��P���֢����u��h�����j��h�����P���E��P���֢����u��h�����j��h�����P���E��P���֢�����������j��h�����蠠�����𢃢Ġ�����t��h�����V�j�����������E����5�����P�h�����j��h�����h����������������u����5���������������E�����P���5�����j��j��h�������u�������������u��P�P�h�����h�����h�����P����������E��^�����t��j��P��������蠠�����M��3���3�͢蠠������]�­�¢]�墋������͢3���3��M�������蠠������P��j��t�����^��E����������P�����h�����h�����h�P�P��u�������������u�������h��j��j�����5���P�����E���������������5����u����������������h�����h��j�����h�P�����5����E�����������j�V�����h��t������Ģ��𢋠����蠠���h��j������������֢��P��E���P�����h��j�����h��u�����֢��P��E���P�����h��j�����h��u�����֢��P��E���P�����h��j�����h��u�����֢��P��j�����h��j�����h��E�������5���V���¢]�墋������͢3��M����Ȣ���t������������P��j���������j��j�����h��E���Ţ3��������좃�좋�U�                                                                                                      &                                                                                              4
                                                                                                                                                                                              ^                                                                                                                                      �      �              �                      �(                                                                                                                                                                  �                                  �              �                      �$  �  �*              �              �.                                                          �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       �      �  ��������          8      4     �  ��������          p      X     _  
   (             �      �       ��������          �      $     �  ��������                    m  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �            !      9      K      T      ]   