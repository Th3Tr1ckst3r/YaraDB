YARA�          �       `         @  F      �                 �  �      �   f      0"  �(         �0         �8      @  �9                                        %                            ��������������������������������������������   =      D                     R      D                     Y      `                     i      q                     {      �                     �      �                     �      �                     �      �                     �      
                      ��������             K     �ں�ں��        ����������������           *  K    �ں�ں��        ����������������           =  K    �ں�ں��        ����������������           P  K    �ں�ں��        ����������������           b  K    �ں�ں��        ����������������           t  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �      ��������������������default Win32_Ransomware_Sherminator tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware SHERMINATOR description Yara rule that detects Sherminator ransomware. tc_detection_type Ransomware tc_detection_name Sherminator tc_detection_factor $enum_resources_p1 $enum_resources_p2 $encrypt_files_p1 $encrypt_files_p2 $encrypt_files_p3 $find_files_p1 $find_files_p2 $find_files_p3 �       ? �@MZd/#   BB          8           /,   BB        P     �          /,   BB   p      �      �                   ��U����W�S���젢ǢE������ǢE������ǢE������ǢE��������E����D�$����E����D�$����E����D�$����E����D�$����E�����$�蠠�����젢��E����}����������ǢE������ǢE��������E��ǢD�$���������$�蠠�����E��ǢE��������E����D�$��ǢD�$��������E�����$�蠠�����E����U����T�$����U����T�$����U����T�$�����$�蠠�����젢��E����}����������ǢE������頠�����E��������E�������頠����E�Ǡ���������}����E����좃������$�����$�T����U����$�T����U����$�T����U����E��������$�����E��������$�D�Ǡ�$�D����E��������E�Ǡ�E��������$���������$�D�Ǡ�E��������E�Ǡ�����E�Ǡ���������}����E����좃������$�����E����$�D����E����$�D����E����$�D����E����$�D����E��������E�Ǡ�����E�Ǡ�����E�Ǡ�����E�Ǡ�좃�S�W�墉�U��E����E����ࠢ��¢��E���Т��@���������������E����ࠢ��¢��E���Т��@�����$�蠠������������������������ᠢ���
�ǢD�$���������$�蠠���������������������⠢�Т�� ��������������E����ࠢ��¢��E���Т��P�����������������ᠢ�Ȣ�� ���T�$�����$�蠠������������������⠢�Т�����Т��������â��������ߢ򢮢��Ȣ��Т��蠢�Тf�Ǣ ����������������������E����ࠢ��¢��E���Т��@����ࠢ����t����E����ࠢ��¢��E���Т���$�蠠���렢����E�����E��9�E�����������}���������������E�����$�蠠�����E�����$�蠠�����젢������e��[�_�]�í�â]�_�[��e��������좃������$�����E��������$�����E���������������}�����������E�9��E�����E������렠����$����Т��E���¢�������E����t������ࢃ��@���Т��E���¢�������E���������������������� �Ǣf�Т��袃�Т��Ȣ�����ߢ��������â��������Т�����Т�����������������������$�����$�T��� ���Ȣ�������������������P���Т��E���¢�������E�������������� ���Т��������������������������$���������$�D�Ǣ
��������������������������������$�����@���Т��E���¢�������E���������������@���Т��E���¢�������E����E��U����W���젢��E�����$�蠠��������ǢD�$���������$�蠠�����E����}���u����E�����$�蠠�����������Т��E����D�$����E�����$�蠠�����E����������¢��������ע򢮢��Ȣ��Т��P����E���Тf�Ǣ ���ǢD�$��������E�����$�蠠�����E�����$���������Т��젢��E��ǢD�$��������E�����$���������Т��젢��E�����$�蠠�����E����U����}�������}���x����}���w��ǢD�$��������E����D�$����E�����$���������Т��젢��E����D�$����E�����$���������Т��젢��E�����$�蠠�����E�����$�蠠�����������ТǢE������ߢm��ݢ]��ݢE��ݢ�����ߢ�ݢآv����E����E��렢ǢE������ǢD�$��������E�����$�蠠�����E����}���u����E����D�$����E�����$���������Т��쭢좃�Т��������$�����E����$�D����E����u���}����E��������$�����E��������$�D�Ǡ�����E�Ǡ�렢E����E����v�آݢ�ߠ�����ݠ�E�ݠ�]�ݠ�m�ߠ�����E�ǢТ�������������$�����E��������$�����E����좃�Т��������$�����E����$�D����E����좃�Т��������$�����E����$�D����E��������$�D�Ǡ�w���}����x���}�������}����U����E��������$�����E����좃�Т��������$�����E��������$�D�Ǡ�E����좃�Т��������$�����E��������$�����E��������$�D�Ǡ�� �Ǣf�Т��E����P���Т��Ȣ�����ע��������¢���������E��������$�����E����$�D����E���Т�������������$�����E����u���}����E��������$���������$�D�Ǡ����������$�����E����좃�W�墉�U����E�����$�蠠�����E�����$�蠠�����������ТǢE������Ǣ�$�������������Т��젢���������������M����L�$��ǢD�$��������T�$��ǢD�$���������$���������Т��젢����u��Ǣ�$�������������Т��젢��E����D�$����E�����$���������Т��젢��E�����$�蠠�����E�����$�蠠�����E�����$�蠠�����������ТǢ�$�������������Т��젢ǢD�$��������E����D�$����E�����$���������Т��젢����u����E����D�$����E�����$���������Т��젢��E�����$���������Т��젢��E�����$�蠠�����E�����$�蠠�����E�����$�蠠�����������ТǢD�$��������E�����$�蠠�����E��ǢD�$��������E�����$�蠠�����E����}���t����}����������ǢD�$��������E����D�$����E�����$���������Т��젢��E����D�$����E��E����$�D����E����좃�Т��������$�����E����$�D����E��������$�D�Ǡ���������}����t���}����E��������$�����E��������$�D�Ǡ�E��������$�����E��������$�D�ǢТ�������������$�����E��������$�����E��������$�����E����좃�Т��������$�����E����좃�Т��������$�����E����$�D����E����u������좃�Т��������$�����E����$�D����E��������$�D�Ǡ�좃�Т������������$��ǢТ�������������$�����E��������$�����E��������$�����E����좃�Т��������$�����E����$�D����E����좃�Т������������$��Ǡ�u������좃�Т��������$���������$�D�Ǡ�$�T��������$�D�Ǡ�$�L����M�����������������좃�Т������������$��Ǡ�����E�ǢТ�������������$�����E��������$�����E�������$���������Т��젢��E�����$���������Т��젢��E�����$�蠠�����E�����$�蠠�����E�����$�蠠�����E�����$�蠠�����E�����$�蠠�����������Т��E�����$�蠠���ǢE������ǢE������頠�����E��������9�U����9�U��|��9�E��w��ǢE��������E����D�$����E����D�$��ǢD�$��������E�����$�蠠�����E����}���u����E�����$�蠠�����E����U����T�$����U����T�$����U����T�$��ǢD�$��������U����T�$��ǢD�$���������$���������Т��젢��E����U����T�$����D�$��ǢD�$��������E�����$�蠠�����E��������)�E���U����}������������}���x����}������������E�����$�蠠�����E�����$�蠠�����E�����$���������Т��젢��E����D�$����E�����$���������Т��젢��E�����$�蠠�����������Э�Т�������������$�����E����좃�Т��������$�����E����$�D����E����좃�Т��������$�����E��������$�����E��������$�����E������������}����x���}������������}����U���E�)��������E��������$�����E��������$�D�Ǡ�$�D����$�T����U����E����좃�Т��������$���������$�D�Ǡ�$�T����U��������$�D�Ǡ�$�T����U����$�T����U����$�T����U����E��������$�����E����u���}����E��������$�����E��������$�D�Ǡ�$�D����E����$�D����E��������E�Ǡ�w��E�9��|��U�9����U�9��������E�������頠����E�Ǡ�����E�Ǡ�����$�����E���Т�������������$�����E��������$�����E��������$�����E��������$�����E��������$�����E����좃�Т��������$�����E����좃�Т��������$�����U����W�S���젠�����E�����$�蠠��������ǢD�$���������$�蠠�����E����}���u����E�����$�蠠�����������Т��E�����$�蠠�����E����D�$����E�����$�蠠�����E����������¢��������ע򢮢��Ȣ��Т��P����E���ТǢ ���������������D�$����E�����$���������Т��젢��E����}��������������������ࠢ�������������������������������Ң�����)�¢��Т�����������ǢD�$������ǢD�$����������������������$�蠠��������������ǢD�$����������������������$�蠠��������������ǢD�$����������������������$�蠠������������������������ࠢ�������������E�����$�蠠�����â����������������$�蠠����آ�����ǢD�$���������$��$���������$�D�Ǡ�����آ������$�����������������â�������$�����E���������������ࢃ�������������������������$����������������������$�D�Ǡ����������������$����������������������$�D�Ǡ����������������$����������������������$�D�Ǡ�����$�D�Ǡ�����������Т��¢)������Ң��������������������������������ࢃ������������������}����E����좃�Т��������$�����E����$�D��������������� �ǢТ��E����P���Т��Ȣ�����ע��������¢���������E��������$�����E����$�D����E��������$�����E���Т�������������$�����E����u���}����E��������$���������$�D�Ǡ����������$�����E�������좁�S�W�墉�U��蠠�����E����}������������E����D�$����E�����$�蠠������������������D�$����E�����$�蠠�����E����������¢��������ע򢮢��Ȣ��Т��P����E���Тf�Ǣ �����������U����T�$����D�$��Ǣ�$�������������Т頠���ǢD�$����������������������$�蠠��������������ǢD�$����������������������$�蠠��������������ǢD�$����������������������$�蠠��������������ǢD�$����������������������$�蠠��������������ǢD�$������������������������������������$�D�Ǡ����������������$����������������������$�D�Ǡ����������������$����������������������$�D�Ǡ����������������$����������������������$�D�Ǡ����������������$����������������������$�D�Ǡ�����Т������������$��Ǡ�$�D����$�T����U����������� �Ǣf�Т��E����P���Т��Ȣ�����ע��������¢���������E��������$�����E����$�D���������������������$�����E����$�D����E������������}����E�������譢���$�蠠��������������ǢD�$����������������������$�蠠���ǢD�$���������$�蠠��������������ǢD�$����������������������$�蠠���ǢD�$���������$�蠠��������������ǢD�$����������������������$�蠠���ǢD�$���������$�蠠����������������E�����$�蠠�����â����������������$�蠠����آ�����ǢD�$���������$�蠠�����E����}���t����E����D�$����E�����$�蠠������������������D�$����E�����$�蠠�����������U����T�$����D�$��Ǣ�$�������������Т렢��렢��렢��렢��렢������������D�$����E�����$���������Т��젢�������������E�����$���������Т��젢��E�����$�蠠�����E�����$�蠠�����������Э�Т�������������$�����E��������$�����E����좃�Т��������$�����E���������������좃�Т��������$�����E����$�D��������������뢐��뢐��뢐��뢐���Т������������$��Ǡ�$�D����$�T����U��������������$�����E����$�D���������������������$�����E����$�D����E����t���}����E��������$���������$�D�Ǡ�����آ������$�����������������â�������$�����E�������������������$���������$�D�Ǡ�����$����������������������$�D�Ǡ����������������$���������$�D�Ǡ�����$����������������������$�D�Ǡ����������������$���������$�D�Ǡ�����$����������������������$�D�Ǡ����������������$����                              
                                                                                                                                      %                                                                                                                  A                                                                                                                                                                                                                                                                          �                      �                                                                                                  �                                                                                                                                                                  �                                                                                                                      �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     h      ?  ��������          8      �     �  ��������          p      �     �  
                 �      �     �  
   P             �      �     �  ��������               �     <  
   x             P     ~     k  
   �             �     �     /"  
   �                                                       (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   0           !      ;      D      M      g      p      y   