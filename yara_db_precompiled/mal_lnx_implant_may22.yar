YARA�          �       P  �         �	      (           6      �  �"      \  (      R  f.         f6         f>      �  ^F                            	         ��������                                  ��������   �      �                    O  ��������   �     �                      ��������   �     �                    :	  ��������   �     x                    <
  ��������   `     �             ��������������������������������������������   +      7                     O      V                     c      m                     �      �                     �   ��������P                 �      �                    +      L                    O      �                    c      �                    �      �                    �   ��������Z                 �                          H     N                    �     �                    �     �                         #                    d     j                    �     �                    �     �                    9     ?                    �     �                   +      �                    O      �                    c      �                    �      �                    �   ��������U                 �      �                    H                         �     I                    �     �                   +      �                    O      �                    c      �                    �      ?                    �   ��������U                 �      J                    H     �                   +      7                     O      �                    c      �                    �      t	                    �   ��������Z                 �                          H     	                    �     N                    �     �	                         �                    d     �                    �     #                    �     �                    9     j                    �                         
     �                    
     �                    
     I                    
     �                    
     ?                    $
     �                    +
     �                   +      u
                    O      �
                    c      �
                    �      t	                    �   ��������Z             �      �ں�ں��          0  ��������           ,  �     �ں�ں��          O  ��������           K  K    �ں�ں��          h  ��������           c  K    �ں�ں��          z  ��������           u  K    �ں�ں��          �  ��������             �     �ں�ں��          �  ��������           �  K    �ں�ں��    (      �  ��������           �  K    �ں�ں��          �  ��������           �  K    �ں�ں��            ��������           �  �  	   �ں�ں��         �  ��������           �  �  
   �ں�ں��         �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         
  ��������             K    �ں�ں��       ����������������             K    �ں�ں��       ����������������             K    �ں�ں��       ����������������             K    �ں�ں��   '      '  ��������           "  K    �ں�ں��         �  ��������           �  K    �ں�ں��       ����������������           �  K    �ں�ں��       ����������������             K    �ں�ں��         �  ��������             K    �ں�ں��       ����������������             �     �ں�ں��   D      �  ��������           �  �     �ں�ں��         	  ��������           �  �     �ں�ں��         %	  ��������           �  K    �ں�ں��       ����������������             K    �ں�ں��       ����������������             K    �ں�ں��       ����������������             K    �ں�ں��       ����������������           "  K    �ں�ں��       ����������������           2
  K    �ں�ں��       ����������������           7
  	     �ں�ں��   D      �  ��������           �
  	      �ں�ں��           ��������           �
  	  !   �ں�ں��         3  ��������           #  	  "   �ں�ں��   U      N  ��������           A  	  #   �ں�ں��         �  ��������           �  	  $   �ں�ں��         �  ��������           �  	  %   �ں�ں��         �  ��������           �  	  &   �ں�ں��            ��������             	  '   �ں�ں��         H  ��������           9  	  (   �ں�ں��         i  ��������           Z  	  )   �ں�ں��   #      �  ��������           |  	  *   �ں�ں��   
      �  ��������           �  	  +   �ں�ں��   
      �  ��������           �  	  ,   �ں�ں��         �  ��������           �  	  -   �ں�ں��   
      �  ��������           �  	  .   �ں�ں��           ��������             	  /   �ں�ں��         %  ��������             	  0   �ں�ں��         E  ��������           ;  	  1   �ں�ں��         ^  ��������           T  	  2   �ں�ں��   
      w  ��������           m      ��������������������default MAL_LNX_RedMenshen_BPFDoor_May23_1 description Detects BPFDoor malware author Florian Roth reference https://www.deepinstinct.com/blog/bpfdoor-malware-evolves-stealthy-sniffing-backdoor-ups-its-game date 2023-05-11 score hash1 afa8a32ec29a31f152ba20a30eb483520fe50f2dce6c9aa9135d88f7c9c511d7 $x1 [-] Execute command failed $x2 /var/run/initd.lock $xc1 / >> exit r  $sc1 ��0D $sc2 f'^ $sa1 TLS-CHACHA20-POLY1305-SHA256 $sop1 H��L9�u�L�|$hHi��   H�\$PH�T$xH�D$8     $sop2 H����D$,9D$(D�KH�S�� $sop3 I��M1ͱ)I��I��M1�LhH�� APT_MAL_LNX_RedMenshen_BPFDoor_Controller_May22_1 Detects unknown Linux implants (uploads from KR and MO) Florian Roth (Nextron Systems) https://doublepulsar.com/bpfdoor-an-active-chinese-global-surveillance-tool-54b078f1a896 2022-05-05 07ecb1f2d9ffbd20a46cd36cd06b022db3cc8e45b1ecab62cd11f9ca7a26ab6d hash2 4c5cf8f977fc7c368a8e095700a44be36c8332462c0b1e41bff03238b2bf2a2d hash3 599ae527f10ddb4625687748b7d3734ee51673b664f2e5d0346e64f85e185683 hash4 5b2a079690efb5f4e0944353dd883303ffd6bab4aad1f0c88b49a76ddcb28ee9 hash5 5faab159397964e630c4156f8852bcc6ee46df1cdd8be2a8d3f3d8e5980f3bb3 hash6 93f4262fce8c6b4f8e239c35a0679fbbbb722141b95a5f2af53a2bcafe4edd1c hash7 97a546c7d08ad34dfab74c9c8a96986c54768c592a8dae521ddcf612a84fb8cc hash8 c796fc66b655f6107eacbe78a37f0e8a2926f01fecebd9e68a66f0e261f91276 hash9 f8a5e735d6e79eb587954a371515a82a15883cf2eda9d7ddb8938b86e714ea27 hash10 fd1b20ee5bd429046d3c04e9c675c41e9095bea70e0329bd32d7edd17ebaf68a $s1 [-] Connect failed. $s2 export MYSQL_HISTFILE= $s3 udpcmd $s4 getshell $op1 $op2 $op3 $op4 ƀ   H�E���  H�EȈ�   �E� �E�E� APT_MAL_LNX_RedMenshen_BPFDoor_Controller_May22_2 Detects BPFDoor implants used by Chinese actor Red Menshen 2022-05-07 76bf736b25d5c9aaf6a84edd4e615796fffc338a893b49c120c0b4941ce37925 96e906128095dead57fdc9ce8688bb889166b67c9a1b8fdb93d7cff7f3836bb9 c80bd1c4a796b4d3944a097e96f384c85687daeedcdcf05cc885c8c9b279b09c f47de978da1dbfc5e0f195745e3368d3ceef034e964817c66ba01396a1953d72 $opx1 H��H������H���
�U�ʉ� $opx2 ������E��-{�+�E��M� APT_MAL_LNX_RedMenshen_BPFDoor_Controller_May22_3 2022-05-08 144526d30ae747982079d5d340d1ff116a7963aba2e3ed589e7ebc297ba0c1b3 fa0defdabd9fd43fe2ef1ec33574ea1af1290bd3d763fdb2bed443f2bd996d73 hald-addon-acpi: listening on acpi kernel interface /proc/acpi/event /sbin/mingetty /dev pickup -l -t fifo -u APT_MAL_LNX_RedMenshen_BPFDoor_Controller_Generic_May22_1 2022-05-09 1925e3cd8a1b0bba0d297830636cdb9ebf002698c8fa71e0063581204f4e8345 591198c234416c6ccbcea6967963ca2ca0f17050be7eed1602198308d9127c78 hash11 hash12 hash13 hash14 hash15 hash16 hash17 $op5 $op6 APT_MAL_LNX_RedMenshen_BPFDoor_Tricephalic_Implant_May22 Detects BPFDoor/Tricephalic Hellkeeper passive implant Exatrack https://exatrack.com/public/Tricephalic_Hellkeeper.pdf $str_message_01 $str_message__02 /var/run/haldrund.pid $str_message_04 Cant fork pty $str_hald_05 /sbin/iptables -t nat -D PREROUTING -p tcp -s %s --dport %d -j REDIRECT --to-ports %d $str_command_03 /bin/rm -f /dev/shm/%s $str_command_06 /dev/shm/%s --init $str_server_01 [+] Spawn shell ok. $str_server_02 [+] Monitor packet send. $str_filter_01 (udp[8:2]=0x7255) $str_filter_02 (icmp[8:2]=0x7255) $str_filter_03 (tcp[((tcp[12]&0xf0)>>2):2]=0x5293) $error_01 [-] socket $error_02 [-] listen $error_03 [-] bind $error_04 [-] accept $error_05 [-] Mode error. $error_06 [-] bind port failed. $error_07 [-] setsockopt $error_08 [-] missing -s $error_09 [-] sendto �      ? �@Ed/   %A  f/)  ?B          8      p           /H   ?B   �      �           P     �     �          1c   ?B          8      p      �      �           P     �     �          1Q   BB   �      �           /.   ?   �   ?2k?   �   ?2j   �   1�   ?B          8      p           1c   ?B          8      p      �      �           P     �     �                  �      ? �@Ed/   %A @ f/Z   ?B   �     0     h     �     �          H     �          1Z   ?B   �     0     h     �     �          H     �                 �      ? �@Ed/   %A � f/$   ?B   �     �          1?   ?B   �     �     (     `     �                       ? �@Ed/   %A   f/-   ?B   �          @          1,   BB   �          @                 �      ? �@Ed/   %A   f/H   ?B   x     �     �           X     �          1H   ?B   x     �     �           X     �                 �      ?B   �           8     p     �     �          P     �     �     �          1c   ?B   0	     h	     �	     �	     
     H
     �
     �
     �
                 ��蠢��������E������E��;�E�Ԣ|��ƢE�� ���E������}��� �� ���}������E��� ��E�Ƣ�|�ԢE�;��E������E����������譢U�H����H����0���}��H���u�ࢉ�U�ܢ��}�ܢ �u� � �u� �ܢ}���ܢU����u���H��}���0�좃�H�墉�H�U��褠����������E���H��E���������E���H��E����� ���������� �����E��H���E���������E��H���E������������譢H��E�ࢃ�E������E���;�E�ܢ|�͢ǢE��� � � � �� �H������ � �� � ������H� �� � � � ���E�Ǣ͢|�ܢE�;���E������E����E��H��H����Ţ � � � �H���E�ТH��ТH��� �H���Ǣ蠠�����H������H��E�ୢ�E��H������H��������Ǣ��H� ���H�Т�H�ТE���H� � � � �Ţ���H��蠤��������E��������<���������Ǣ蠤����������������ɭ�ɢ�����������������Ǣ��������<��������E���������譢Ƣ���� � � �H���E��������� � �H���E������ �� � �ƢE�� ����E����E��E����E���� ��E�Ƣ � �� ������E���H� � ���������E���H� � � �����ƭ�H���U�ȢH���E�ȢH���E��H���E�Ȣ����� �� � ���E���H���E�Ȣ������� � �� � ��������ȢE���H���E��� � �� ������ȢE���H��E���H�ȢE���H�ȢU���H��H���E��H���E�Ȣ����� �� � ���E���H���E�Ȣ������� � ���E���ǢE��� � � � �� � � � ���E�Ǥ��E��� � ��������ȢE���H���E��� � �� ������ȢE���H��E���H��H���}�آ��u�ԢH���U�ȢH���E�ȢH���E��H���E�Ȣ����� �� � ���E�����E��� � �� ������ȢE���H��E���H�ȢE���H�ȢU���H�Ԣu���آ}���H��H���E��Ƣ���� � � �H���E��������� � �H���E������ �� � �ƢE�� ����E��E���� ��E�Ƣ � �� ������E���H� � ���������E���H� � � �����Ƥ�E���H����u�ԢH���U�ȢH���E�ȢH���E��H���E�Ȣ����� �� � ���E���H���E�ȭ�ȢE���H���E��� � �� ������ȢE���H��E���H�ȢE���H�ȢU���H�Ԣu���                                                        N                                        H  J               
                   $                       0       0                 06      2,  �              �                      (t       6           ,      D  > �          I&  4r  ,|  0~  .�           2�         T"              9x  1�   :      \>                    b
  RX  b<  && f0  g*  h  i  1  ^ 1�  m$  jD  n8      q  mF  fR  eT  30 v  ;�  fV  M�          .N �                         �  }L  d�  oj  e�      �(      �  o�  /z tl  e�  yp  w�       
          �^      c e q�  ^ �B  u�      �.  �b  j b( *� ^,                        !�  �  ��       (  /� 3�  :  lL u* 6� !�     ��  �:              `x         dv     E�                     �                      tp                             �Z  �V         ��  ��  �  �P �` _�             �h  �v  ��  �~ �Z �              j�     �  ��  �  �@  �\  Π      ^�     �P                      u�                             �� s�         �          �f                                         �R                                     ��                                                                              Ƅ                                                                                                             �T                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 %       "                                                                                                                                                  0                           	                '      #   !   *       )   &   3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ������������������������          8   ������������������������          p   ������������������������	          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          0  ������������������������          h  ������������������������          �  ������������������������          �           j   ��������               �      �   ��������          H     �      >  ��������          �  ������������������������          �  ������������������������	          �     r     �  ��������          (     �     ]  ��������          `  ������������������������          �     l     �  ��������          �  ������������������������            ������������������������          @  ������������������������          x     �     V  ��������          �     �     �  ��������          �          �  
                     �     �  
   8            X     J     �  
   �            �     �     .  
   `            �  ����������������
   p               ����������������
   (             8  ������������������������          p  ����������������
   �            �  ������������������������          �  ����������������
   x  
            ������������������������          P  ������������������������          �  ������������������������          �  ����������������
     	          �  ������������������������          0	  ����������������
                 h	  ����������������
   �            �	  ����������������
   �            �	  ����������������
   �            
  ����������������
               H
  ����������������
   h            �
  ����������������
   0            �
  ����������������
   �            �
  ����������������
   �            3                                          (                          (      @      H      `      h      �      �      �      �      0                
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
   X     &      /      8      R      [      d      m      v            �      �      �      �      �      �      �      �      �      �                -     :     O     X     a     {     �     �     �     �     �     �     �     �     8      @      P      H      X      �      �      �      �                       (     @     H     `     h     �     �     �     �     �     �     �     �                      (     @     H     `     h     �     �     (            
   h  
   p  
   x  
   �     `     H     P  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �          �     �  
     
     
     
         @     (     0  
   0  
   8  
   @  
   H     x     `     h  
   X  
   `  
   h  
   p     �     �     �  
   �  
   �  
   �  
   �                          )     2     ;     D     _     h     q     z     �     �     �     �     h      p      �      x      �      �     �     �     �     �     �                      (     @     H     `     h     �     �     �     �     �     �     �  
   �  
   �  
   �  
   �                  
   �  
   �  
   �  
   �     X     @     H  
   �  
      
     
        �     x     �  
      
   (  
   0  
   8     �     �     �  
   H  
   P  
   X  
   `     �     �                         '     �      �      �      �      �      �     �     �     �                      (     @     H     `     h     �     �           �     �  
   p  
   x  
   �  
   �     8           (  
   �  
   �  
   �  
   �     p     X     `  
   �  
   �  
   �  
   �     h     q     z     �     �     �     �      �      �      �      �      �     �     �     �     �     �                      (     @     H     `     h     �     �     �     �     �     �     �     �                      (     @     H     `     h     �     �     �     �     �     �     �     �                      (     @     H     �     �     �  
   �  
   �  
   �  
         �     �     �  
     
     
      
   (                  
   8  
   @  
   H  
   P     P     8     @  
   `  
   h  
   p  
   x     �     p     x  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �                    /     8     A     J     S     \     �                           `     h     �     �     �     �     �     �     �     �     �     �     �  
   �  
   �  
   �  
   �     0             
      
     
     
        h     P     X  
   (  
   0  
   8  
   @     �     �     �  
   P  
   X  
   `  
   h     �     �     �  
   x  
   �  
   �  
   �          �        
   �  
   �  
   �  
   �     H     0     8  
   �  
   �  
   �  
   �     �     h     p  
   �  
   �  
      
        �     �     �  
     
      
   (  
   0     �     �     �  
   @  
   H  
   P  
   X     (	     	     	  
   h  
   p  
   x  
   �     `	     H	     P	  
   �  
   �  
   �  
   �     �	     �	     �	  
   �  
   �  
   �  
   �     �	     �	     �	  
   �  
   �  
   �  
   �     
     �	     �	  
     
     
     
         @
     (
     0
  
   0  
   8  
   @  
   H     x
     `
     h
  
   X  
   `  
   h  
   p     �
     �
     �
  
   �  
   �  
   �  
   �     �
     �
     �
  
   �  
   �  
   �  
   �                  
   �  
   �  
   �  
   �     �     �     �     �     �     �     �     �     �     �     �     �          
               %     .     7     @  