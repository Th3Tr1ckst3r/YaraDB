YARA�          �       `         @  F      h  �         �      �  �      �   +      1  18         1@         1H      �  �I                                                                    ��������������������������������������������   5      <                     J      <                     Q      X                     a      i                     s      |                     �      �                     �      �                     �      �                     �      �                     �   ��������             K     �ں�ں��        ����������������             K    �ں�ں��        ����������������             K    �ں�ں��        ����������������           $  K    �ں�ں��        ����������������           6  K    �ں�ں��        ����������������           H  K    �ں�ں��        ����������������           Z  K    �ں�ں��        ����������������           l  K    �ں�ں��        ����������������           ~  K    �ں�ں��        ����������������           �  K 	   �ں�ں��        ����������������           �  K 
   �ں�ں��        ����������������           �      ��������������������default Win32_Ransomware_DMR tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware DMR description Yara rule that detects DMR ransomware. tc_detection_type Ransomware tc_detection_name tc_detection_factor $find_files_p1 $find_files_p2 $encrypt_files_p1 $encrypt_files_p2 $encrypt_files_p3 $encrypt_files_p4 $encrypt_files_p5 $encrypt_files_p6 $encrypt_files_p7 $encrypt_files_p8 $encrypt_files_p9 �       ? �@MZd/#   BB          8           /b   BB   p      �      �           P     �     �     �     0                  ������U���좁�젠���������3�Ţ��E����M����U��S�W���}����������;�Ϣt�����<��t��<��t��<��t��Q�W�蠠���Y�Y���Ȣ;�Ϣu���������������������<��u����G��;�Ȣt��R�3�ۢS�S�W�蠠�����Ġ�頠�����������3�ۢ<��t��<��t��<����âu�����+�Ϣ�����A�����������آ��������V������������#�����������������������������������蠠���P���������P�W�蠠�����Ġ�����������آ���S�S�S�Q���Т#�������S�P����������𢃢���u����������S�S�W�蠠�����Ġ���آ頠�������������H��+���������������������������������������������������������������蠠���P���������P���������P���������P�蠠�����Ġ���آ�����Т#���������8��u����H����ɢt��t�ɢ���H����u��8���������#�Т�����آ���Ģ�������P���������P���������P���������P�����蠠�������������������������������������������������������������+��H����������������آ���Ģ�������W�S�S����������u������𢋠�������P�S�������#�Т��Q�S�S�S����آ�����������Ģ�������W�P���������P�����蠠���������������������������������#������������V���������آ����������A������Ϣ+�����u�â���<��t��<��t��<�ۢ3�������������頢Ģ�������W�S�S�ۢ3�R��t�Ȣ;��G����u��<���������������������u�Ϣ;�Ȣ��Y�Y������W�Q��t��<��t��<��t��<�����t�Ϣ;����������}���W�S��U����M����E���Ţ3�����������좁�좋�U�����������u��8�X��t������������������W�P�蠠�����Ġ�������������u��8�������t����������蠠���Y���������P�V����������������������������������������@��+�¢�����;�Ȣt��h�����+���j��P������P�蠠�����Ġ�렢8�������t����������蠠�����������Y���آV�����������������^�t����������蠠���Y���â��M��_�3�͢[�蠠���ɢí�âɠ�����[�͢3�_��M���â��Y�����蠠��������t�^�����������������V�آ��Y�������������蠠��������t�������8��렢Ģ�������P������P��j���+�����h��t�Ȣ;������¢+��@����������������������������������������V�P���������Y�����蠠��������t�������8��u��������������Ģ�������P�W������������������t��X�8��u�������U����j��h�����d�������P���젠���������3�Ţ��E��V�W�P���E��d���������񢉢������ǢE��������E����}���h������C�E��P�蠠�����Ġ��������������}�����E��h������C�E��P�蠠�����Ġ����������������������U������������M��蠠�����Ġ���M��ƢE���蠠���ƢE�����U���������������r����M�����U�����������������r����I���� �+��������������������R�Q�蠠�������������Ġ������������Ƣ���������U������������M��蠠�����Ġ�ƢE�����E����}����C�E��P����������ࠢ��M����}���P��C��C��P���}����M����ࢃ��������P��E�C����}����E�����E�Ơ�Ģ������蠢M������������U����������Ơ������������Ģ���������������Q�R��������������������+��¢���I����r�����������������U�����M����r���������������U�����E�Ơ����蠠�E�Ơ�M����Ģ������蠢M������������U�����������������������Ģ�������P��E�C������h��E�����}���������������Ģ�������P��E�C������h���}����E��������E�Ǡ��������񢋠������d��E���P�W�V��E���Ţ3�����������좁�P�������d�����h��j�좋�U��M��Q����������E��P���������蠠���h�������������ƢE���j��P�蠠�����}�����E�����������C�E��P�蠠�������������@��Ǣ���������������������H����A�������������������ƢE����������Ǣ��������r����������u����� �<��u��3���렢�����Ƞ�����u��Ǣ����������������렢��������j��P���M��ǢE������ǢE������ƢE���蠠���ƢE�����M������������}������C�M��R�P�Q���������蠠�������������U��;�ʢw����}�����E����M���C�E��Ƣ���렢��E������+���+�¢;���w����}�����u��W��C�u������u�C��W��u�����}����w���;�¢+���+������E����렢��Ơ�E�C���M����E�����}����w�ʢ;��U���������������蠠�������Q�P�R��M�C������}������������M�����E�Ơ����蠠�E�Ơ�����E�Ǡ�����E�Ǡ�M���P��j����������렠���������������Ǡ�u������Ȣ���������3��u��<� �����u����������r���������Ǣ���������E�Ơ������������������A����H����������������������Ǡ�@����������������P��E�C�����������E�����}��������P��j���E�Ơ������������h�����蠠�������P��E����������Q��M��򢉢M��j��V�蠠���Ƣ�>����Ġ���������렢j��W�Ƣ���������M����������W�蠠�������������������蠠�������u������������������j����@���Ȣ3���9�A�����������������A��P�蠠�����}�����E���C�E������������������j��j��P�蠠�����Ġ������������j��P���������蠠�������������H���������������P����������ƢE���P�蠠�����Ġ���������P�蠠���ƢE�������������ɢt�������@����Т����t�����j�������Ȣ��Ң����������������3�Ң��@���Ȣ������9�Q���E�¢렢������������������@���Ȣ3���9�A�����������������A��j��P�蠠�����Ơ������E��;��t����}�����΢��u���C�E��P�蠠���j��h�������M��ǢE������ǢE��E�Ǡ�����E�Ǡ�M�������h��j������P��E�C���u���΢����}����t��;��E�������Ƣ�������P��j��A�����������������A�9���3�Ȣ��@���������������������¢E���Q�9�������Ȣ��@���Ң3�����������������Ң��Ȣ������j�����t�����Т���@�������t�ɢ������������E�Ơ�����P����������Ģ�������P���E�Ơ���������P���������������H���������������蠠�������P��j�������������Ģ�������P��j��j������������������E�C���E�����}��������P��A�����������������A�9���3�Ȣ��@����j������������������u���������蠠��������������������W����������M����������ƢW��j��렠��������Ģ���>��Ơ�����V��j��M����ƢE���蠠���ƢE����������G��r����?������u������<��u��3���렢�����Ƞ�������������u����E��P���젢����������̢��������P�蠠�����젢ƢE�����̢V�蠠���ƢE���蠠���렢����������E��;��t����}�����΢��u���C�E��P�蠠�����E��;�Ƣt����~�����Ƣr�������v����M��P�蠠���j��h�������΢蠠�����~�����Ƣr�����ǢF��������U��Ƣ ������������}�����u���C�U��蠠�����Ġ���������蠠�������u������������������j����@���Ȣ3���9�A�����������������A��P�蠠�����������P���M��蠠�����������ƢE���Q���Ȣ蠠�����𢍢������ƢE���P���M��蠠�����������ƢE���Q���Ȣ蠠�����ȢƢE�����A����Q��+�¢�����r����y�����B����A������r�����f�Ǣ����렢j��h�����Ƣ���������������j��蠠�����ȢǢ����������Ǣ�����������������������~�A��f��֢������ǢA������ǢA������Ƣ��ƢE��������������������������E�Ơ��Ơ�����A�Ǡ�����A�Ǡ������֢�f��A�~��󠠠�������������������Ǡ����������ǢȢ������蠢j����������������Ơ����h��j��렠���Ǣf�����r������A����B�����y����r������¢+��Q����A�����E�ƢȢ�������Ȣ��Q���E�Ơ������������蠢M���P���E�Ơ��������𢋠�����Ȣ��Q���E�Ơ������������蠢M���P��������������P��A�����������������A�9���3�Ȣ��@����j������������������u���������蠠��������Ģ������蠢U�C���u�����}������������ �Ơ�U��������F�Ǣ����r�Ƣ����~��������΢������h��j������P��M����v�������r�Ƣ����~����t�Ƣ;��E��������P��E�C���u���΢����}����t��;��E������������렠���蠠�E�Ơ�����V�̢����E�Ơ�좃������P���������̢�����������좃�P��E����u��������������Ȣ���������3��u��<������u������?����r��G����������E�Ơ����蠠�E�ƭ�¢��������+��������r����A������������������������C�������Ǣ������ƢD������������렢j��h�����Ƣ�����������������������j��蠠���Ǣ����������Ǣ������������ �����������~�@��f��֢������Ǣ@������Ǣ@������Ƣ ����G��ƢE���P���������蠠���Ǣ����������Ǣ������������ �����������~�@��f��֢������Ǣ@������Ǣ@������Ƣ ��ƢE�������������¢��������+��������r����A������������������������C�������f�Ǣ������������렢j��h�����Ƣ�����������������������j��蠠���Ǣ����������Ǣ������������ �����������~�@��f��֢������Ǣ@������Ǣ@������Ƣ ��ƢE��E�Ơ� �Ơ�����@�Ǡ�����@�Ǡ������֢�f��@�~��󠠠������ �������������Ǡ����������Ǡ����蠢j������������������������Ơ����h��j��렠�����������Ǣf�������C������������������������A����r��������+���������¢������������E�Ơ� �Ơ�����@�Ǡ�����@�Ǡ������֢�f��@�~��󠠠������ �������������Ǡ����������Ǡ����蠠�������P���E�Ơ�G���� �Ơ�����@�Ǡ�����@�Ǡ������֢�f��@�~��󠠠������ �������������Ǡ����������Ǡ����蠢j������������������������Ơ����h��j��렠����������D�Ơ������Ǡ������C������������������������A����r��������+���������­�����������Ǣ��������+�����V��;�Тv����F��+�¢;���r���������������Q��C���������΢P�j��蠠���렢V���������蠠���Ǣ����������Ǣ������������ �����������~�@��f��֢������Ƣ ��Ǣ@������Ǣ@������ƢE�������������¢��������+���j��h����������r�����������������A���C��������񢉢������V�蠠�����Ġ�ƢF�����������렢Ƣ�����������������������j��蠠����� ���E����~�@��f��֢E��Ǣ@������Ǣ@������Ƣ ��ƢE����������������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ƢE����������������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ƢE����������������r����������B��������������B����������r����������������E�Ơ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������B����������r����������������E�Ơ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������B����������r����������������E�Ơ� �Ơ�����@�Ǡ�����@�Ǡ�E�֢�f��@�~���E��� �������蠢j������������������������Ơ�렠���������F�Ơ�Ģ�������V�����������������C���A�����������������r����������h��j���+���������¢������������E�Ơ�����@�Ǡ�����@�Ǡ� �Ơ������֢�f��@�~��󠠠������ �������������Ǡ����������Ǡ����蠠�������V��렠���蠢j�P�΢��������C��Q���������������r���;�¢+��F����v�Т;��V�����+���������Ǣ�����������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ƢE����������������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ƢE����������������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ƢE����������������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ƢE����������E�Ơ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������B����������r����������������E�Ơ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������B����������r����������������E�Ơ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������B����������r����������������E�Ơ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������������r�������������U�����������������r����I���� �+��������������������R�Q�蠠�����Ġ�3���Ǣ����������Ǣ����������f���������ƢE����������������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ�Ǣ����������Ǣ����������Ƣ�������ƢE����������������r�������������U�����������������r����I���� �+��������������������R�Q�蠠�����Ġ�3���Ǣ������������젢f�����������E��Ǣ������������̢P�蠠�����������蠠�����Ġ����ƢE�����~���r����6���젢����������̢P�蠠�����������蠠�����Ġ���x���r���� �V�P�蠠�������������Ġ������r�������������U�����������������r����I���� �+��������������������R�Q�蠠�����Ġ���������3���Ǣ����������Ǣ����������f��������������r�������������U�����������������r����I���� �+������+��¢���I����r�����������������U�������������r��������������f�����������Ǡ����������Ǣ��3����������Ģ�������Q�R��������������������+��¢���I����r�����������������U�������������r�������Ģ���������������P�V� ����r���x����Ģ������蠠������������P�̢�����������좃�6����r���~�����E�Ƣ𢋠�Ģ������蠠������������P�̢������������Ǡ�E�����������f��좃�����������Ǣ��3��Ģ�������Q�R��������������������+��¢���I����r�����������������U�������������r����������������E�Ơ�������Ơ����������Ǡ����������Ǡ�Ģ�������Q�R��������������������+��¢���I����r�������������B����������r����������������E�Ơ��������f�����������Ǡ����������Ǣ��3��Ģ�������Q�R��������������������+��¢���I����r�����������������U�������������r������������������������������R�Q�蠠�����Ġ���U�������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U�������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U��ǢE������ǢE������ƢE��������r����M��B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���������ǢE������ǢE������ƢE���蠠�����U�������r����������B�������������r����I���� �+��������������������R�Q�蠠�����Ġ���U�������r����M�����U�����������������r����I���� �+�������������w��R�Q�蠠�����Ġ���U�������r����M��B�������������r����I���� �+�������������w��R�Q�蠠�����Ġ���M��d��������Y�_�^���M��3�͢蠠������]� ��蠠���蠠���蠠���蠠���譢蠠���蠠���蠠���蠠���蠠�¢]�墋������͢3��M���^�_�Y��������d��M����Ģ�������Q�R��w�������������+��¢���I����r�������������B��M����r�������U����Ģ�������Q�R��w�������������+��¢���I����r�����������������U�����M����r�������U����Ģ�������Q�R��������������������+��¢���I����r�������������B����������r�������U�������蠠�E�Ơ�����E�Ǡ�����E�Ǡ���������Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r��������E�Ơ�����E�Ǡ�����E�Ǡ�U����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r�������U����Ģ�������Q�R��������������������+��¢���I����r�������������B��M����r�������U����Ģ�������Q�R������������������                                                                                                                                                                              ,                                          4                                              <       @          <(                                                                                                                                                                                                                                                                      �  �"  �
      �$              �&          �*                                                                                                                                                                                          �  �      �      �  �  �<      �  �  �,  �.  �:  �2                                                                      �>                                                                          �                                                          �4      �0          �8  �6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     g      :  ��������          8      4     s  ��������          p      I     X
  ��������          �      J     �  ��������          �      �     >  ��������               �     �  ��������          P     �     �  ��������          �     #     :"  ��������          �     w"     &  ��������          �     B&     �+  ��������          0     ,     �0  
   h                                                      (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
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
   �           !      ;      D      M      V      _      h      q      z      �   