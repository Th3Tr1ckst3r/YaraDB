YARA�          �       `         @  F      P  �         �      ~  ,      �   �        �         �&         �.      �   �/                                                                     ��������������������������������������������   8      ?                     M      ?                     T      [                     d      l                     v                           �      �                     �      �                     �      �                     �      �                       ��������             K     �ں�ں��        ����������������             K    �ں�ں��        ����������������           (  K    �ں�ں��        ����������������           :  K    �ں�ں��        ����������������           I  K    �ں�ں��        ����������������           X  K    �ں�ں��        ����������������           k      ��������������������default Win32_Ransomware_Armage tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware ARMAGE description Yara rule that detects Armage ransomware. tc_detection_type Ransomware tc_detection_name Armage tc_detection_factor $encrypt_files_p1 $encrypt_files_p2 $find_files_p1 $find_files_p2 $enum_resources_p1 $enum_resources_p2 �       ? �@MZd/#   BB   �                /#   BB   p      �           /#   BB          8                   ��U����S���]����젠�����M��ǢE��������]����]��ǢE������ǢE��������e�����$�蠠�����E����P����H��Ǣ �����Ǣ@������Ƣ@�����P������������P����P����������ǢD�$������Ǣ�$�����ǢE������蠠�����M����]����젢��]����A����Q����M���¢���$���T�$��ǢE������蠠�����E����]����젢��\�$�����$�ǢE������蠠�����E����]��9�آt�����$�蠠���ǢE������蠠�����U����M����B����U����L�$�����$�)�ʢ��T�$��蠠�����U����B����B�����$�蠠�����U����B�����$�蠠���ǢD�$������ǢD�$��������U����B�����$�蠠��������������$�蠠�������������L�$������������D�$����U����B�����$�蠠�������������L�$������������L�$������������D�$����U����B�����$�蠠�������������D�$�������������$�蠠�������������\�$������������L�$������������D�$����U����B�����$�蠠�����D�$������������D�$����E�����$�譢�$�����E����$�D������������$�D��������$�����B����U����$�D������������$�L������������$�\����������������$�������������$�D����������������$�����B����U����$�D������������$�L������������$�L����������������$�����B����U����$�D������������$�L����������������$�����������������$�����B����U��������$�D�Ǡ�����$�D�Ǡ�����$�����B����U��������$�����B����B����U�������蠢$�T���ʢ)�$�����$�L����U����B����M����U�������蠠����E�Ǡ�����$�����t�آ9��]����E�������蠠����E�Ǣ$�����$�\����좃��]����E�������蠠����E�Ǡ�$�T���$����¢��M����Q����A����]����좃��]����M�������蠠����E�Ǡ����$��Ǡ�����$�D�Ǡ���������P����P������������P�����@�Ơ�����@�Ǡ���� �Ǡ�H����P����E��������$�����e��������E�Ǡ�����E�Ǡ�]����]��������E�Ǡ�M�������좁��]���S�墉�U����U����E�����$�ǢE��������J��蠠�����E����U����젢9�Тt�����$�蠠���ǢD�$������ǢD�$������Ǣ�$�����ǢE������蠠�����������@���������������������������������������x���t�����@�����$�������ǢE������蠠�����젢����蠠��������������$�蠠�����E������t�����$�蠠�����E�����$�蠠�����]��ɢâ����������ǢE������蠠������������� ���P����������������t��Ǣ�$���������������Ң��젢�����頠���蠠�����Š���E������������E������t����蠢t����蠢t����蠢t����蠢t������E����U��9�Тt�����$�蠠�����E������t�����$�蠠�����E����@��;�������t�����$�蠠�����E����@��9�������t�����$�蠠��������������$�ǢE������蠠�����E����U��9�Тu��뭢렢u�Т9��U����E�������蠠����E�Ǣ$�����������������$�����t�������9��@����E��������$�����t�������;��@����E��������$�����t������E��������$�����t�Т9��U����E������t��袃��t��袃��t��袃��t��袃��t������E������������E����Ţ������蠠����������좃�Ң��������������$��Ǡ�t����������������P��� ���������������蠠����E�Ǡ����������âɠ�]��������$�����E��������$�����t������E��������$����������������������좃�����蠠����E�Ǡ������$�����@�����t���x���������������������������������������@�������������蠠����E�Ǡ����$��Ǡ�����$�D�Ǡ�����$�D�Ǡ�����$�����t�Т9��좃��U����E�������蠢J��������E�Ǣ$�����E����U����U���墁�젠�����U����M��ǢE������ǢE������ǢE��������U����U����e�����$�蠠�����E����M���������Q����E����E����E����E����U���� �������E���Ѣt������u��Ǣ�$�����ǢE������蠠�����E���������E�����������}������������E����U����� ���E����������E��Ƣ���������+�E����������������M��ǢD�$������Ǣ�$�����ǢE������蠠�����E����젢��D�$����E�����$�ǢE������蠠�����M����U����젢����������M��9�ʢt�����$�蠠�����E����������������������������E��������$�����t�ʢ9��M������������좃��U����M�������蠠����E�Ǣ$�����E����$�D����좃��E�������蠠����E�Ǡ����$��Ǡ�����$�D�Ǡ�M����������������E�+����������Ơ�E����������E��� �����U����E������������}�����������E���������E�������蠠����E�Ǡ����$��Ǡ�u������t�Ѣ��E������� ����U����E����E����E����E����Q���������M����E��������$�����e����U����U��������E�Ǡ�����E�Ǡ�����E�Ǡ�M����U�������좁�墉�U����E����� ���E�����$�蠠���ɢ ����v����E����M����L�$����M�����$���L�$��蠠�����E����U��頠�����E����M��ǢD�$���������$�ǢE������蠠�����U����젢��E����U��렢Ǣ�$�����ǢE������蠠�����Š���E����E����E������t����蠢t������E����U��9�Тt�����$�蠠�����E�����$�ǢE������蠠�����f���U����W�V���E��S���젢��E����E����M��ǢE��������E��ǢE������ǢE��������e�����$�蠠�����]��ƢE����������������t����S�����$���T�$��ǢE������蠠�����젢�������E�����E����u�������E�����$�蠠������E����e��[�^�_�]�í�â]�_�^�[��e����E���������$�����E�������u����E�����E���������좃�����蠠����E�Ǡ�$�T���$�����S����t����������������E�Ơ�]��������$�����e��������E�Ǡ�����E�Ǡ�E��������E�Ǡ�M����E����E����좃�S��E���V�W�墉�U���f�������蠠����E�Ǣ$�����E��������$�����t�Т9��U����E������t��袃��t������E����E����E����Ţ������蠠����E�Ǡ����$��Ǡ�렢U����E����좃��U�������蠠����E�Ǣ$���������$�D�Ǡ�M����E�������頢U����E�������蠢$�L���$�����M����$�L����M����E����v�����¢ɠ�����$�����E��� �����E����U����������蠠���)�Ģ��E������������������Ǣ��������������������������Ǣ����������Ǣ�������������$�蠠�����������Ǣ����������Ǣ������������D�$����E��ǢD�$������ǢD�$������Ǣ�$�������D�$��Ǣ����������蠠�����젢����t��Ǣ���������������������$�蠠�����������ɢ ������������D�$������������D�$������������D�$�������������$�蠠�����젢����u����������Ǣ������������������������������u��렢����&���������������@������������������������������������;��������������������;������������������������������������@���������������&������렢u�������������������������������Ǡ���������u������좃������$�������������$�D������������$�D������������$�D�������������¢ɠ�������������$����������������������Ǡ�t������좃�����蠠���������Ǡ�$�D�������$��Ǡ�����$�D�Ǡ�����$�D�Ǡ�E����$�D�������������Ǡ����������Ǡ�������������$��������������Ǡ����������Ǡ��������������������������Ǡ�����������������E���Ģ)������墉�������U������������@���t����@����¢������������������Ң��������������t�����$�蠠������������D�$���������������������$�Ǣ����������蠠�������������젢��H��;�H�����������ɢt����A����������������������¢���$���T�$��Ǣ����������蠠�������������젢��H�����������������H������������������9�Ȣ����������$�蠠�������������@�������������$���������Ǣ����������蠠�����젢頠��������������$���D�$����������Ǣ����������蠠�����젢뭢렢좃�����蠠���������Ǡ���������$�D���$����������������頢좃�����蠠���������Ǡ��������$�������������@����������������$�����������Ȣ9������������������H�����������������H����좃�������������蠠���������Ǡ�$�T���$����¢���������������������A����t�ɢ����������H�;��H����좃�������������蠠���������Ǣ$���������������������$�D���������������$�����t���������������Ң������������������¢���@����t���@�����������                                                                                                                    
                                  %      %  %                                                                                                                                                                                                                                                                                                                                                                          �                  �                                                                                                                                                                                                                                                                                          �                                                                                      �                                  �      �  �      �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               D      �  ��������          8      �     �
  ��������          p      �
     '  ��������          �      :     	  ��������          �      y     R  
   x                  �     �  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �            !      ;      D      ^      g   