YARA�          �       `         @  F      �  >         V      �  	      �   �      �  �          �(         �0      h  -2                            	            %                            ��������������������������������������������   =      D                     R      D                     Y      `                     i      q                     {      �                     �      �                     �      �                     �      �                     �                            ��������             K     �ں�ں��        ����������������           !  K    �ں�ں��        ����������������           -  K    �ں�ں��        ����������������           A  K    �ں�ں��        ����������������           U  K    �ں�ں��        ����������������           i  K    �ں�ں��        ����������������           x  K     �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �      ��������������������default pe Win32_Ransomware_BitCrypt tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware BITCRYPT description Yara rule that detects BitCrypt ransomware. tc_detection_type Ransomware tc_detection_name BitCrypt tc_detection_factor $bc_bcdedit $bc_enum_drives_a_z $bc_do_extensions_1 $bc_do_extensions_2 $bc_do_files_1 $bc_do_files_2 $bc_main_1 $bc_main_2 $bc_main2 entry_point )      �       ? �@MZd/#            �     P  /      �  /      �  /          /      8   /      p   /      �   /      �   /                ��U����j��S�3���U�h�����d���0�d��� �3���U�h�����d���0�d��� ����������蠠�����آ��������â蠠�����E��������蠠�����������â蠠�����â蠠������������蠠�����آ��������â蠠�����E��������蠠�����������â蠠�����â蠠���3���Z�Y�Y�d����h�����j��j��h�����h�����j��j��蠠���h�����蠠���j��j��h�����h�����j��j��蠠���í�à����蠢j��j�����h�����h��j��j�����蠠���h�����蠢j��j�����h�����h��j��j�����h����d�Y�Y�Z���3������â�������â������������蠠������E��������â��������آ������蠠�������������â�������â������������蠠������E��������â��������آ������蠠�������� ���d�0���d�����h�U���3� ���d�0���d�����h�U���3�S��j�좋�U��U���좁�Ġ����S�V�3�Ң���������������������������3���U�h�����d���0�d��� ����������蠠�������������������Ӣ蠠�����������������蠠�������������������������蠠�������������E�����蠠�������������Ӣ蠠�����������������蠠�����������蠠���P�蠠�����蠢u������������U��蠠�������������������Q��C���������e�������3���Z�Y�Y�d����h�������������������蠠���í�à����蠠�����������������h����d�Y�Y�Z���3�������e���������C��Q���������������������蠢U������������u��袃������P�����蠠�����������蠠������������������Ӣ��������������蠢���E���������������蠠�������������������������蠠������������������Ӣ��������������������蠠�������� ���d�0���d�����h�U���3�𢋠������������������������Ң3�V�S�����Ģ��좋�U��U���좁�Ġ����S�V�W�3�ۢ��������������������������������������������������M����U����E����}����]����E��蠠�����E��蠠�����E��蠠���3���U�h�����d���0�d��� �3���U�h�����d���0�d��� �����������M����U��蠠�����������蠠������������� � �蠠���������3���蠠�����𢋢â���������蠠����(�������P���������P����3�ɢ������蠠�������������â蠠������������蠠�������u�Ȣ�(�������P���������P����3�ɢ������蠠�������������â蠠������������蠠�������u�Ȣ��u��h�������5�����h�������������������蠠�������������������ۢ��������Ġ�ۢ<��<�۠�Ģ��������۠��������������������蠠�����������������h�����5�������h��u���Ȣu���������蠠�������������â��������������蠠�����ɢ3����P���������P�������(��Ȣu���������蠠�������������â��������������蠠�����ɢ3����P���������P�������(�렠���蠠��������â��𢋠�������3������������ � ���������������蠠�����������蠢U����M����������� ���d�0���d�����h�U���3� ���d�0���d�����h�U���3�����蠢E�������蠢E�������蠢E����]����}����E����U����M���������������������������������������������������ۢ3�W�V�S�����Ģ��좋�U��$�����������������蠠�������������Ǣ������蠠�������������M����U��蠠�������������������蠠�����������蠠���蠠��������������蠠���蠠���蠠��������������蠠���蠠���蠠�����������������蠠���蠠���蠠�����������蠠���蠠��������3�ۢ3���Z�Y�Y�d������頠���3�ۢ蠠���3���Z�Y�Y�d����h�������������蠠�����������������蠠�����E��������蠠���â頠����Т��â_�^�[����]�­�¢]�墋�[�^�_�â��Т렠����à����蠠������E�������蠠�����������������蠠�����������h����d�Y�Y�Z���3������ۢ3�����������d�Y�Y�Z���3�ۢ3��렢������蠠���蠠�����������蠠���蠠���蠠�����������������蠠���蠠���蠠��������������蠠���蠠���蠠��������������蠠���蠠�����������蠠�������������������蠢U����M���������������蠠�����Ǣ��������������蠠���������������$��U���좁�Ġ����S�V�W�3�ɢ��������������������������M����U����𢍢�������������蠠���3���U�h�����d���0�d��� �������蠠�����E���������������M��蠠�������������������������蠠���������������� � � ����������u�s�V�����������������������󢥢^�����������E������������E����E��3�Ң蠠�����Ġ�ݢ�$�����E��蠠�����u��h�������6�����������������������蠠�������������E����@���� ������Q����������蠠��������������o���������������蠠�����ۢ����� � � ������������������蠠����������������������������蠠���������������� � � ������ۢ������蠠�������������o����������������蠠��������Q������ ����@����E���������������蠠���������������������6�������h��u�������蠢E�����$��ݠ�Ģ�������Ң3��E����E������������E�����������^���󠠠��������������������V�s�u���������� � � ������������������蠠�������������������������蠢M���������������E�������������� ���d�0���d�����h�U���3�����蠠��������������𢋠�U����M���������������������������ɢ3�W�V�S�����Ģ��좋�U��������������蠠�����������u�~����������t�d���������������蠠���t�R���������������蠠���t�@���6���������h�������Ƣ������蠠�����E��P���Ƣ��U���W�������Y�����u��3�ۢ�!���U��B���Ƣ������蠠�����������蠠�����������t�����������蠠���3���Z�Y�Y�d����h�������������������蠠������������������蠠�����E��蠠���í�à����蠢E�������蠠������������������蠠�����������������h����d�Y�Y�Z���3�����蠠���������t�������������蠠�����������蠠�����Ƣ��B��U���!��ۢ3��u�����Y�������W�蠢U���Ƣ��P��E�������蠠�����Ƣ������h���������6���@�t�����蠠�������������R�t�����蠠�������������d�t����������~�u�������������蠠������������U���좹�����j��j��I�u���S�V�W�������蠠���3���U�h�����d���0�d��� �3������������������蠠�����U��������蠠�����U��������������蠠�����U��������蠠�����U��������������蠠���������������蠠���������������蠠���������������蠠���������������蠠���������������蠠���������������蠠���蠠���Ƣ��������E��蠠�����U��������蠠���蠠���������蠠���Ǣ�����������E����������������蠠�����E��蠠�������u�z�h�����h����������������������������h�����h�z�u���������蠢E�������蠠��������������E������������Ǡ����蠠���������蠠���蠠������U�������蠢E���������Ơ����蠠���蠠���������������蠠���������������蠠���������������蠠���������������蠠���������������蠠���������������蠠������������U�������蠠������U�������蠠������������U�������蠠������U�������蠠����������������3� ���d�0���d�����h�U���3�����蠠�����W�V�S���u�I��j��j�������좋�U�������������蠠�����آ��E����������������蠠�����E��蠠���h�����蠠�����U��3���蠠�����E��P���E����������������蠠�����U��X�蠠���蠠�����������������蠠�����آ���������蠠���������������������Ƣ���������������蠠���h�����蠠�����=������u��������������R�������������������������R������=����������������������R������=������������蠠���������H�����|��@���E��Ǣ�������������������Ǡ�E���@��|�����H�����������蠠����������=������R����������������������=������R�������������������������R��������������u������=�������蠠���h�����蠠��������������Ơ����������������������蠠��������آ������蠠������������렠���蠠����X��U�������蠠��������������E���P��E����������3��U�������蠠���h�����蠢E�������蠠��������������E���آ������蠠�����������蠠���j��j��h�������5�����h�������5�������5�������E��������蠠�����E��蠠���P�h�����j��j��蠠���蠠�����=�������������3���Z�Y�Y�d����h�������E��������蠠���í�à����蠠������E�������h����d�Y�Y�Z���3�������������=�������蠠���蠢j��j�����h�P�����蠢E�������蠠������E�������5�������5�������h�����5�������h��j��j������                                                                                                                                               %                                                          4      4                                                                                                                              V  F,                                          [                  Z&                                                                                      k2                                                          �  �                   �                  �  �"                          �                      �*                                                                                                                  �                                      �0                                  �.                              �                          �                                                  �                              �$  �(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              o  ��������          8      r     7  ��������          p      <     Q	  
   (             �      T	     E  ��������          �      H     �  
   P                  �     �  ��������          P     n     �  ��������          �     �     �  ��������          �     +     ~  ��������          	                                                (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   X           (      2      B      R      b      r      �      �      �      �   