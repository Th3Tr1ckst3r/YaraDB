YARA�          �       `         @  F      �   &         >      Y  �      ]   �      
  �         �         �#      �   �$                                                                    ��������������������������������������������   7      >                     L      >                     S      Z                     c      k                     u      ~                     �      �                     �      �                     �      �                     �      �                     �   ��������             K     �ں�ں��        ����������������             K    �ں�ں��        ����������������             K    �ں�ں��        ����������������           -  K    �ں�ں��        ����������������           C      ��������������������default Win32_Ransomware_Buran tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware BURAN description Yara rule that detects Buran ransomware. tc_detection_type Ransomware tc_detection_name Buran tc_detection_factor $find_files $encrypt_files $remote_connection_p1 $remote_connection_p2 \       ? �@MZd/          /      8   /#   BB   p      �                   ��U���좁�Ġ����S�V�W�3�ۢ����������������������������������������������������������]����]��������������������E����E��蠠������������������蠠���3���U�h�����d���0�d��� �3���U�h�����d���0�d��� ���U����E��蠠�����U��������蠠�������t�����������u��3���Z�Y�Y�d����頠�����������������蠠�������������������蠠���������������������U��蠠�������������������������蠠��������������3���U�h�����d���0�d��� ���E������������U��蠠�����U��������蠠�������u��h�����蠠�����U��������蠠�������t�����������t��3�ɢ��U��������蠠���h�����蠠�����������蠠�������t��3���Z�Y�Y�d����h�������������蠠���â魢�à����蠠�����������h����d�Y�Y�Z���3��t���������蠠�����������蠠���h�����蠠������U���ɢ3��t�����������t���������蠠������U�������蠠���h��u���������蠠������U�������蠢U������������E��� ���d�0���d�����h�U���3����������������蠠�������������������������蠢U�����������������������蠠�������������������蠠���������������������d�Y�Y�Z���3��u�����������t���������蠠������U�������蠢E����U��� ���d�0���d�����h�U���3� ���d�0���d�����h�U���3�����蠠������������������蠢E����E��������������������]����]�����������������������������������������������������������ۢ3�W�V�S�����Ģ��좋�U��S�V�W�U���������������{���u����?��t�������Ƣ3��������֢��?��u����=������t��蠠���蠠���3�����������{���u����=������u��3�����C��蠠�����{���v����=������t����{������t����Ǣ蠠�����k����u��;�u��t������t��V�蠠���蠠�����{���u����S����{���t��蠠�����;��u����=������t���������������P�蠠��������𢋢��������󢥢頠���]�_�^�[�â�����â[�^�_�]�����颥�󠠠��������𢋢��������P���������������t������=����u��;�������蠢t���{����S����u���{�������蠠����V��t������t��u�;��u����k��������Ǣ���t������{����t������=����v���{�������蠢C�����3��u������=����u���{�����������3�����蠠���蠢t������=����u��?���֢�������3�Ƣ������t��?����u���{���������������U�W�V�S��U���좁�Ġ����P���Ġ�S�V�3�ۢ������������������������������������������]����٢��U����E����E��蠠�����E��蠠���3���U�h�����d���0�d��� ���â蠠���j��j��j��j��j��蠠�����E����}����������3���U�h�����d���0�d��� �������j��j��j��j��j��V���������������蠠�����������蠠���P���E��P�蠠�����E����}����������3���U�h�����d���0�d��� ���U��������蠠���������j��V�j��j��j����E��譢蠢E����j��j��j�V��j�����������蠠������U��� ���d�0���d�����h�U���3����������}����E��������P��E���P�����蠠�����������蠠�������������V��j��j��j��j��j������� ���d�0���d�����h�U���3����������}����E�������蠢j��j��j��j��j������â�� ���d�0���d�����h�U���3�����蠢E�������蠢E����E����U���٢���]�������������������������������������������ۢ3�V�S��Ģ��P�����Ģ��좋�U��P���E��蠠���P���E��P�蠠�����E����}����������3���U�h�����d���0�d��� �3�ɢ���������蠠�����E��3���U�h�����d���0�d��� ���������������蠠�����������������蠠�������������E��蠠�����������������蠠�����������������蠠�������������E��蠠�����������������蠠�������������u��h�������������������蠠�������������E��蠠�����E����p������t������6�h�����V���E����@��蠠���P���E��P�蠠���j��j��j��j����E��P�蠠�����������������������蠠�����E��3���U�h�����d���0�d��� �렢��}���t������������M����E����0���V����E��P�h�������������P���E��P�蠠�������u��Ƣ�����������������������E����0���V����â��U����R��蠠���3���Z�Y�Y�d����h�������E��蠠���â魢�à����蠢E�������h����d�Y�Y�Z���3�����蠢R����U���â���V���0����E������������������������Ơ�u����������P��E���P�������������h�P��E����V���0����E����M������������t���}����� ���d�0���d�����h�U���3��E�������蠠������������������������P��E����j��j��j��j������P��E���P�����蠢@����E���V�����h�6������t������p����E�������蠢E���������������蠠�����������������h��u���������������蠠�����������������蠢E���������������蠠�����������������蠠�����������������蠢E���������������蠠�����������������蠠������������� ���d�0���d�����h�U���3��E�������蠠��������ɢ3� ���d�0���d�����h�U���3����������}����E��������P��E���P�����蠢E���P�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    �  �              �  �      �                                                                                                                                                                                                              �                                          �  �                                                                                                                                  �
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               �  ��������          8      �       ��������          p      0     
  
                 �      �     t  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �            &      8      A   