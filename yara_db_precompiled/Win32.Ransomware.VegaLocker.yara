YARA�          �       `         @  F      �   &         >      h  �      V   �      �  �         �         �'      �   0(                                        $                            ��������������������������������������������   <      C                     Q      C                     X      _                     h      p                     z      �                     �      �                     �      �                     �      �                     �                            ��������             K     �ں�ں��        ����������������           &  K    �ں�ں��        ����������������           2  K    �ں�ں��        ����������������           D  K    �ں�ں��        ����������������           V      ��������������������default Win32_Ransomware_VegaLocker tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware VEGALOCKER description Yara rule that detects VegaLocker ransomware. tc_detection_type Ransomware tc_detection_name VegaLocker tc_detection_factor $find_files $encrypt_files_p1 $encrypt_files_p2 $encrypt_files_p3 U       ? �@MZd/          /,   BB   8      p      �                   ��U���좁�Ġ����S�V�W���U����E����E����E��h�����蠠�����E����}���t��h�������E��P�蠠�����â��ۢt��h�������������P���E��P���Ӣ����t����E��P���������P���E��P�蠠���頠�����E����8��u����E����x������������E�������蠠�����𢀢>�����������F��蠠�����𢀢>���������렢��u����Ơ���ޢ+�]����C��P���E��P���������P�蠠���頠�����F��蠠���������Ǣ+�Ƣ�â@�=��������������Ǣ+�Ƣ@�P�V����������âP�蠠�����������P���������P�蠠�����E����}���t����E��P�蠠�����������P�蠠�����S���¢@�=�������Ƣ��������������+�âH�P���������P����������â@�P�蠠�����������P�蠠���@��آ������>�����������E��P���������P���E��P�蠠�����E��_�^�[����]�í�â]�墋�[�^�_��E��������P��E���P���������P��E�����������>�������آ�@������P��������������P�@�â���������P���������P�H�â+���������������Ơ������=�@�¢��S��������P��������������P��E����t���}����E��������P���������P��������������P�â���������V�P�@�Ƣ+�Ǣ�������������=�@�â�Ƣ+�Ǣ����������蠢F�������頠����P���������P��E���P��C����]�+�ޢ���Ƣ���u����렠�������>���𢋠����蠢F�����������>���𢋠����蠢�����E������������x����E����u��8����E�������頠����P��E���P���������P��E����t�����Ӣ��P��E���P�������������h��t�ۢ��â�������P��E�������h��t���}����E�������蠠���h��E����E����E����U���W�V�S�����Ģ��좋�U��U���좁�Ġ����S�V�W�3�ɢ��������������������������M����M����M����M����U����E����E��蠠������������������蠠���3���U�h�����d���0�d��� �Ƣ�������3���U�h�����d���0�d��� �����������U��蠠�������������������������蠠�������u������������������������������������������������������������������������������������������������������������������렢3���Z�Y�Y�d����頠�����������蠠���j����E��蠠���P�蠠���3���U�h�����d���0�d��� �j����M�����������蠠�����E����E��������������������������E��������蠠�����E��蠠�����Т��������E��蠠�����E��������蠠���t������������������3�Ң��E�������Q��������蠠�����Т��������E��蠠���������������������E��蠠���Ƣ�������렢Ƣ���������E��蠠���3���Z�Y�Y�d����렢頠���Ƣ�������3���U�h�����d���0��0���d�����h�U���3��������Ơ����頢����d�Y�Y�Z���3�����蠢E����������Ơ�렠������Ơ����蠢E�����������������������蠢E���������Т������蠠������Q�������E���Ң3������������������t�����蠠������E�������蠢E���������Т������蠢E�������蠠������E��������������������������E����E�������蠠���������M����j� ���d�0���d�����h�U���3������P�����蠢E����j�����蠠���������������d�Y�Y�Z���3��렠����������������������������������������������������������������������������������������������������������������u���������蠠�������������������������蠢U����������� ���d�0���d�����h�U���3��������Ƣ ���d�0���d�����h�U���3�����蠠������������������蠢E����E����U����M����M����M����M���������������������������ɢ3�W�V�S�����Ģ��좋�U��d��� ���E��蠠���3���Z�Y�Y�d����렢頠���蠠���蠠�������������������j����M�����������蠠�����E����E���������������������������������u������������������렢����������������u��������������v��렢~��Ǣ����������Ǣ����������렢����������������������������������E��蠠�����E��蠠���������������蠠�����Т��������蠠�������������E��蠠����������������蠠�����Т��������蠠�������������E��蠠���C������u������������Т��E��蠠�����E��蠠�����Т����������E��蠠������������u��������������u����E��������E����u��������������u��������������蠢E�����������Т������蠢E�������蠢E���Т�����������u������C�����蠢E���������������蠠�������Т������蠠����������������蠢E���������������蠠�������Т������蠠���������������蠢E�������蠢E������������������������������������렠���������Ǡ����������Ǡ�~��렢v��������������u������������������렠����������������u���������������������������������E����E�������蠠���������M����j���������������������蠠���蠠���頢����d�Y�Y�Z���3�����蠢E��� ���d��蠠�����E��蠠�����Т��������E��蠠���렢��E��蠠�������������������3�Ң��E�������Q�����������u��������������u����E��蠠�����Т��������E��蠠���������蠠�����Т��������E��蠠���U�蠠���Y�U�蠠���Y�렢U�蠠���Y�������蠠�����Т��������E��蠠���U�蠠���Y�Ƣ���������E��蠠������������t����������P���E��蠠���P�蠠���3���Z�Y�Y�d����렢頠���3���U�h�����d���0�d��� ���E��蠠���3���Z�Y�Y�d����렢頠���蠠���蠠���3���Z�Y�Y�d����h�������������������蠠������������������蠠�����E��蠠�����E��蠠�����E��蠠�����E��������蠠���í�à����蠠������E�������蠢E�������蠢E�������蠢E�������蠠������������������蠠�����������������h����d�Y�Y�Z���3�����蠠���蠠���頢����d�Y�Y�Z���3�����蠢E��� ���d�0���d�����h�U���3�����頢����d�Y�Y�Z���3������P�����蠢E���P����������t��������������蠢E����������ƢY������U�����蠢E���������Т������蠠�����Y������U���Y������U�Y������U�����蠢E���������Т������蠠���������蠢E���������Т������蠢E����u��������������u�����������Q�������E���Ң3���������������������蠢E����렠���蠢E���������Т������蠢E��������                                                                                                                                                                                                               4                                                                                              F                                                                                                                                                                                                                                          �                  �  �      �          �                                                                                                                                                                                                                                          �                      �  �                                                                                                          �
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               �  ��������          8      �     �
  
                 p      �     E  ��������          �      �     O  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �            (      1      :   