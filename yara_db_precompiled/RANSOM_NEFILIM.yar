YARA�          �       �   f      �  F      �  >         V      +  �      %  �      �  �9         �A         �I      h  �J                                     ��������                                 �  ��������   `  ��������                    ��������   �     �             ��������������������������������������������         *                     L      S                     q      v                     �      �                     �      �                     �      �                     �      �                     �      �                     �                                                        �                         �                    L      S                     q      �                    �      �                     �      �                     �      �                     �      �                     �                                                        �                                              L      S                     q      M                    �      �                     �      �                     �      �                     �      �                     �                                                        X                �      �ں�ں��    =      �  ��������           �  �     �ں�ں��    #        ��������             �     �ں�ں��    "      3  ��������           /  �     �ں�ں��          Z  ��������           V  K    �ں�ں��          s  ��������           n  K    �ں�ں��          �  ��������           �  K    �ں�ں��    	      �  ��������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��   �     �  ��������           �      ��������������������default pe nefilim_ransomware description Rule to detect Nefilim ransomware author Marc Rivero | McAfee ATR Team date 2020-03-17 last_update 2020-04-03 rule_version v1 malware_type ransomware malware_family Ransom:W32/Nefilim actor_type Cybercrime actor_group Unknown reference https://www.bleepingcomputer.com/news/security/new-nefilim-ransomware-threatens-to-release-victims-data/ hash 5ab834f599c6ad35fcd0a168d93c52c399c6de7d1c20f33e25cb1fdb25aec9c6 $s1 C:\Users\Administrator\Desktop\New folder\Release\NEFILIM.pdb $s2 oh how i did it??? bypass sofos hah $s3  /c timeout /t 3 /nobreak && del " $s4 NEFILIM-DECRYPT.txt $op0 ����U���$SVW�U� $op1 `� �@ �� @��W�� $op2 ��@ ��@  $bp nefilim_signed Rule to detect Nefilim samples digitally signed 2020-04-02 353ee5805bc5c7a98fb5d522b15743055484dc47144535628d102a4098532cd5 number_of_signatures signatures subject        Red GmbH/CN=Red GmbH serial 2       00:b8:81:a7:2d:41:17:bb:c3:8b:81:d3:c6:5c:79:2c:1a thumbprint ;       5b:19:58:8b:78:74:0a:4c:5d:08:41:99:dc:0f:52:a6:1f:38:00:99 RANSOM_nefilim_go Rule to detect the new Nefilim written in GO 2020-07-13 a51fec27e478a1908fc58c96eb14f3719608ed925f1b44eb67bbcc67bd4c4099 $pattern � Go build ID: "jtCh7M7CjJW2cL_cf37J/IbYFyC6cZds_MyjVc4ad/Hkm6iJM92xGx_O-etgDi/fN7CLCb-Yqn7MyYGVZho"
 ����������d�   ��    ;avk���D$    �D$    �D$� �$�  �D$��t�����u�D$    �D$    ��ÉL$�D$���$�W  �D$�L$�L$�D$����Z �y������������d�   ��    ;a��   ���D$����   �D$� �$��  �D$��t.�����t�D$9���   �D$�D$�D$���$�  ����b �D$�$�D$    �D$�����  �D$��u�h 닋D$�D$�D$�H�$�?  �D$�D$�D$�$�+  �6 ��Í@�N �$���Q �D$��? �@�N �$���Q �D$��? �Y ����������   ����������̋l$�D$�L$��M �D$�������������������������̋l$��   t�    �D$�T$�\$�L$��M �D$�����   ����������̋l$�D$����E ��L$����������̋l$��   t�    �t$�|$�E �U�É�����M u�\$�L$��������̋D$� �D$�����̋D$�   t�    o D$w�����������������������������������̋l$�D$�E ��������������������̋D$��t�D$ËD$��t�� �D$��D$@   ��������̋D$� �D$�����̋D$� �D$�����̃� �D$$��T$(��щL$�h�$�\$�l$�L$�\$,݉l$�l$�  �D$��t��D$�D$0�D$�D$4�� ���������̃� �D$$��L$�P�T$�$�L$�T$�\$(�\$�l$,�l$�   �D$��tƋD$�D$0�D$�D$4�� ���������������̋\$�D$�L$���D$�������������������������������������������������������������   ������������{   �������������   �������������������������̋l$��   t�-    �D$�T$�\$�L$��M �D$���̋\$�D$�L$���D$����������̋\$�D$����ȉD$�����������̋\$�D$��D$�����������������̋\$�D$������̋\$�D$������̋D$�   t�    �\$o w��̋D$�   t�    oD$ w�    ��$����������̋D$�\$�����̋D$�\$� �����d�   ��    ;av	�D$�D$��`U ����������������d�   ��    ;av+���D$�$�D$�D$�D$   �D  �D$�D$����U �������������d�   ��    ;av+���D$�$�D$�D$�D$   �_D  �D$�D$����T �������������d�   ��    ;av+���D$�$�D$�D$�D$   �D  �D$�D$����nT ������������̃��B� �L$�$�L$�L$�D$��C  �D$�D$�������d�   ��    ;av,���D$��@�D$�$�D$�D$�C  �D$�D$�����S ������������d�   ��    ;a��   ���D$� W�.�u��   .�u{[d�   ��    �@���   ���   ���   ����1ى�1���1щ���1ˉ��   ��L$1�5���i��v�D$��É$�D$�D$�D$   ��B  �D$�D$��ËD$5���i��v�D$����S �*�������������d�   ��    ;a��   ���D$� W�f.�u��   f.�u{[d�   ��    �@���   ���   ���   ����1ى�1���1щ���1ˉ��   ��L$1�5���i��v�D$��É$�D$�D$�D$   ��A  �D$�D$��ËD$5���i��v�D$����-R �(�����������d�   ��    ;av<���D$� �$�L$�L$�����D$���L$�$�L$������D$�D$�����Q ������������d�   ��    ;av<���D$� �$�L$�L$�����D$���L$�$�L$�~����D$�D$����mQ ������������d�   ��    ;a��   ��$�D$(���tg�I�Y���tg�I�� t)���$�D$,5����D$��ЋD$i��v�D$0��$Ë@�$�D$,5����D$��ЋD$i��v�D$0��$ËD$,�D$0��$É$�� �D$�L$�$    ��yP �T$�D$   �L$�D$��f �D$�L$�L$�D$ ���N �$�D$�D$��  �D$�L$�$�D$�z6 �SP �������������������d�   ��    ;a��   ��$�D$(���td�Y���tg�I�� t)���$�D$,5����D$��ЋD$i��v�D$0��$Ë@�$�D$,5����D$��ЋD$i��v�D$0��$ËD$,�D$0��$É$�� �D$�L$�$    ��yP �T$�D$   �L$�D$��e �D$�L$�L$�D$ ���N �$�D$�D$��  �D$�L$�$�D$�]5 �6O ������d�   ��    ;av�D$� )      �       ? �@MZd/   %A   f/5   BB          8      p      �           1,   BB   �           P          1      �          D     ? �@MZd/+  ?               !       ?          8  85!       2�            M  "          X     `  C/6            M  "          }     �  �16            M  "          �     �  �       "        "       ;         20���"       "        "       <       @      ? �@MZd/   %A  } f/   BB   �                 ��U��������S�V�W�����)���j����������Z��������������������������������������������������u��������������������������)�������)�������)���������������)�������)�����������)�����������������������������������������������u��������������������������������������������������������������������2��������������2��������������2���������2�������������������2������������������������������_�^�[�ɢâU����V�����W��������j��_�j��^����0��@�A�N�u��O�u��_�^�]�âV�W�j��_�j�����^�������������������N�u��A�O�u��_�^�â������������������������������������������������������������������������������������������������âU����Q�S�V�j������^�����2��������������2��2����������2�����������������2��2�������2���2������������������2��2�������2�������������������2��2������2���2������������������2��2�������2���N�����u��^�[�ɢâU����S��������2��蠠���Y�������蠠������蠠������蠠�������������蠠������Y�����r�����蠠������蠠���[�������]�頠���U�����������S�V��������蠠���3��j��Y�9���v��W�����u�������������������������P�����蠠���Y�j��X�������������u��H�Ơ��y��렢����3�����������0���C�A�;���r��_���������j��+��^��������@�N�u��^�[�ɢâU�����������S������������P��������h������������P��������3��S�S�j��S�S�h������������P������������;���������V�W�����P�S�������V������������P�V�蠠����������u��S�������������������S����P������������Q�P�V������������P�V�蠠����������t��������������P�����蠠���Y�Y�S����t������P������������������������S����P��������_�^�[�ɢâU���������������S�V�W�������������P���������������h�������������P���������P���������P�������������������������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������h����������P��������������������������������P�t��������������P���������P����h�������������P������������P�蠠���頠���������������P���������P���������P�蠠������Ǡ������W��������������h�����W��������������h�����W��������������h�����W��������������h�����W��������������h�����W��������������h�����W��������������h�����W�������t��h�����W�������t��h�����W�������t��h�����W�������t��h�����W�������t��h�����W�������t��h�����W�������t��h�����W�������t��h�����W�������t��h����������P�������t����������P�蠠���Y������P�����������������������������������_�^�[����]�âU�����������S�V�W�h�������������������P�3��W�����������P����h��������������������������9���t������+�������������@�9���u��W�W�j��W�W�h��������������������;�������������Q�P��������j��W����P����j��W��������P������������蠠�������蠠���Y�Y�h�����W����P����h�����W��������P����������������蠠�����������蠠����������Y�Y�W�W����������������W��������W�����P�h����������������������������������������������������������������W������W���Q�P��������W�����P�h����������������������������W������W���Q�P��������W�����P�h������������P������������������������;���������������������������������;�����������;���������렢����+���������������������������������h�����W����P��������W�W��������������������W�����P�h��������������������������������h���������蠠�������W�W����������������W�����P�h���������������������������W�P�����������������������9���������������������9����������頠���;��|�����������v��h�����W����P��������W�W�3������Q�3��P��������W�����P�h��������������������������������h���������蠠�������W�W�3��P�P��������W�����P�h�����렢Q�W����P��������W�W�3������Q�3��P��������W�����P����������������������������������������蠠�������W�W�3��P�P��������W�����P������������������������W����P�����������������������W�����������P����������������P�����������W�����������������������P����W������������������������P�����W��������P�P��3�W�W���������蠠��������������������������������������P�����W��������P��3�Q������3�W�W��������P����W�Q��렠���h�P�����W��������P�P��3�W�W���������蠠�������h��������������������������������h�P�����W��������P��3�Q������3�W�W��������P����W�����h��v�����������|��;�����頠��������9���������������������9�����������������������P�W���������������������������h�P�����W����������������W�W���������蠠�������h��������������������������������h�P�����W��������������������W�W��������P����W�����h���������������������������������+������렠�������;�����������;���������������������������������;������������������������P������������h�P�����W��������P�Q���W������W����������������������������h�P�����W��������P�Q���W������W����������������������������������������������������������������h�P�����W��������W����������������W�W�Y�Y������������蠠�����������蠠��������������P��������W�����h����P����W�����h�Y�Y�����蠠�������蠠����������P��������W��j����P����W��j��������P�Q�������������;��������������������h�W�W��j�W�W��u���9�@�������������+������t���9��������������������������h����P�����������W��3�P�������������������h�W�V�S�����������U�â]����[�^�_�����������������������������������P������Y������P����������t�������P����������h��t�������W�����h��t�������W�����h��t�������W�����h��t�������W�����h��t�������W�����h��t�������W�����h��t�������W�����h��t�������W�����h��t�������W�����h��������������W�����h��������������W�����h��������������W�����h��������������W�����h��������������W�����h��������������W�����h��������������W�������Ǡ��������P���������P���������P�����������������頠����P������������P�������������h����P���������P��������������t�P��������������������������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h��������������P����������h�������������������������������P���������P���������P�������������h���������������P�������������W�V�S���������������U�âɢ[�^�_��������P����S������������������������P������t����S�Y�Y�����蠠���P��������������t�������������V�P������������V�P�Q������������P����S�������������������S��u�������������V�P������������V�������S�P�����W�V���������;������������P������������h�S�S��j�S�S��3��������P������������h��������P������������S�����������U�âɢ[�^��u�N�@��������^��+��j���������_��r���;�A�C���0�����������3������렢y���ƢH��u�������������X��j�Y�����蠠���P�������������������������u�����W��v���9�Y��j��3�����蠠������V�S�����������U������]�������[�����蠢������蠢���r�����Y��������蠢�������������蠢������蠢������蠢�����Y�����蠢2��������S����U�âɢ[�^��u�����N���2�������2��2������������������2���2������2��2�������������������2�������2��2������������������2���2�������2��2�����������������2����������2��2��������������2�����^������j�V�S�Q����U�à������������������������������������������������������������������������������������������������â^�_��u�O�A��u�N�������������������^�����j�_��j�W�V�â]�^�_��u�O��u�N�A�@��0����^��j�_��j��������W�����V����U�âɢ[�^�_������������������������������2�������������������2���������2��������������2��������������2��������������������������������������������������������������������u�����������������������������������������������)�����������)�������)���������������)�������)�������)��������������������������u��������������������������������������������������Z����������j���)�����W�V�S��������U�                            "      $                                                          J  *      4          P      R                                          
                  0                                                                              D      ;(                          M      A.              @D          V
      X          J:                  `  _  @T                          \,  j                          ]B                      VV                              u&      o>          �  �                                              �                                                           �N                                          �L                                                                                                                                                                                                      �F          �H              �                                      �      �                                                  �8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ������������������������          8   ������������������������          p   ������������������������&          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������          �     {     n  ��������          �  �������������������������          	                                                (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     @     H     0                
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
   0     .      7      @      I      c      l      u      �      8      @      P      H      X      `     h     �     �     �     �     �     �     �     �                      (     @     H     `     h     �     �     �      �      �                     -     6     I     S     c     l          �     h      p      �      x      �      �     �     �     �     �     �                      (     @     H     `     h     �     �     �     �     �     �     �     �     �  
   @  
   H  
   P  
   X     	  