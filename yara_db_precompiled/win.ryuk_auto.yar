YARA�          �       `         �  �      �	  ~         �      �  <      �  �      p  m        q&        y6        �=                            -         ��������                         ��������������������������������������������                              R      W                     b      j                     l      x                     �      �                     �      �                     �      �                                              Y     l                    u     �                    �     �                    �     �                    �     �                K     �ں�ں��        ����������������           �  K    �ں�ں��        ����������������             K    �ں�ں��        ����������������             K    �ں�ں��        ����������������           #  K    �ں�ں��        ����������������           /  K    �ں�ں��          G  ��������           ;  K    �ں�ں��        ����������������           P  K    �ں�ں��          h  ��������           \  K    �ں�ں��        ����������������           x  K 	   �ں�ں��          �  ��������           �  K 
   �ں�ں��          �  ��������           �  K    �ں�ں��          �  ��������           �  K    �ں�ں��            ��������           �  K    �ں�ں��             ��������             K    �ں�ں��        ����������������           0  K    �ں�ں��        ����������������           =  K    �ں�ں��        ����������������           J  K    �ں�ں��          d  ��������           W  K    �ں�ں��        ����������������           l  K    �ں�ں��          �  ��������           y  K    �ں�ں��          �  ��������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��          �  ��������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��          �  ��������           �  K    �ں�ں��        ����������������              K    �ں�ں��        ����������������             K    �ں�ں��          '  ��������             K    �ں�ں��          I  ��������           <  K    �ں�ں��          h  ��������           [  K    �ں�ں��          �  ��������           t  K     �ں�ں��        ����������������           �  K !   �ں�ں��          �  ��������           �  K "   �ں�ں��          �  ��������           �  K #   �ں�ں��        ����������������           �  K $   �ں�ں��        ����������������           �  K %   �ں�ں��        ����������������           �  K &   �ں�ں��            ��������           	  K '   �ں�ں��        ����������������           )  K (   �ں�ں��        ����������������           6  K )   �ں�ں��        ����������������           C  K *   �ں�ں��          ]  ��������           P  K +   �ں�ں��          �  ��������           y  K ,   �ں�ں��        ����������������           �      ��������������������default win_ryuk_auto author Felix Bilstein - yara-signator at cocacoding dot com date 2023-03-28 version 1 description Detects win.ryuk. info autogenerated rule brought to you by yara-signator tool yara-signator v0.6.0 signator_config callsandjumps;datarefs;binvalue malpedia_reference https://malpedia.caad.fkie.fraunhofer.de/details/win.ryuk malpedia_rule_date 20230328 malpedia_hash 9d2d75cef573c1c2d861f5197df8f563b05a305d malpedia_version 20230407 malpedia_license CC BY-SA 4.0 malpedia_sharing TLP:WHITE $sequence_0 $sequence_1 $sequence_2 $sequence_3 $sequence_4 $sequence_5 ��u%jj $sequence_6 $sequence_7 t�   ��3�� $sequence_8 $sequence_9 ;U��  r�E�;E���  �    $sequence_10 �
���   k� �M���    $sequence_11 ���   +�������� $sequence_12 r�   k��E� $sequence_13 ����   ��  $sequence_14 $sequence_15 $sequence_16 $sequence_17 tH��� $sequence_18 $sequence_19 ^[��]�j $sequence_20 +�3�f�s��� $sequence_21 $sequence_22 ������ $sequence_23 $sequence_24 $sequence_25 wr���  w
�� $sequence_26 $sequence_27 $sequence_28 �{�+֍_f�G��f��u� $sequence_29 �ȃ��z�f�G� $sequence_30 ��f��u��{� $sequence_31 H�|$I���@SH�� �� $sequence_32 $sequence_33 H��(�H�\$WH��0�d$  �    $sequence_34 ��]Ë�U��E $sequence_35 $sequence_36 $sequence_37 $sequence_38 �m�l���+������ $sequence_39 $sequence_40 $sequence_41 $sequence_42 �D$(   E3�E3��D$    �   � $sequence_43 f�?Nuf�Tuf�A $sequence_44 �      ?B          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (     `     �     �          @     x     �     �           X     �     �           8     p     �     �          P     �     �     �     0	     h	     �	          /   %A �q f        ��h�����j��j� �h��� � �� � ���h� �j��j�����h�������������u��j���������h�����j����j�����h���������j��u�������������j��j��h�����h�����h����������h�����h�����h��j��j�������������u�B�j�(�j��h����������h��j�(�j�B�u�������������h����������������u�x�j��j����j��j�x�u����������������h����������������P�E� � �u�L����� � �f�9���� � �5�u�>��>�u�5� � ����9�f� � �����L�u� � �E�P����������������蠠���h��� � ��������h�����蠠��������蠠���h�������� � ���h�����譢���������� � � �頠���頠��������頠���� � � ���������������������=����� �j��j����j��j� �����=�����������j� �h��� � ���u����5����������5����u��� � ���h� �j������������ � � ������ � � �� � � ������ � � ������������u����5�������5�����j����j�����5�������5����u��V����������ˢ��Q����Q���ˢ���������V��蠠���蠠������� � ���������������� � ��袹�����蠠���譢蠠���H���âH���Ģ0�[�âH���\�$��H���l�$����$�l���H��$�\���H�â[�0�Ģ��H�â��H�����譢u����������������������������u��+�ʢ3���f���D�K���頠���3������3��������K�D���f���3�ʢ+��+��h�����S�Ѣ��蠠�����Ģ���Ģ���������ѢS�����h��+��E�3�ɢE�3���ǢD�$� �� � � ��� � � �@��������H���ح�آ��H��������@� � � ��� � � �� �$�D�Ǣ��3�E�ɢ3�E����٢��2� � � �H���L�$�@����������������@�$�L���H� � � �2���٢����������A��� ��� � �E�3���H���֢H���Ϣ���������������Ϣ��H�֢��H���3�E� � ��� ���A������������'� � �A��� �� � �D���I������������������I���D� � �� ���A� � �'������������H���آ����������� �u��H���˭�ˢ��H��u� ������������آ��H������������ � � ����蠠�������t�l�蠠���H����c�� � �� � ��c����H������l�t������������� � � ����    T                              	L          H              @  
      $          x                t                          �                      �              ,4     �  �  �  �     �  4                                                              E      EZ                   H  MJ  IV   @  Fp   
  %�      T      J          8   @  d  (  V ~ _2   :   0   B          F ) %. � iB  gR  k:  4�  ^ 1         0      s>      \�  v*  �     `         J�  48 I�  4: �  8      	� �  � �N          |v  �      �0  )� �      � k�  �d  i�  �|  }�             �r                 d�   0  	�  0   <       :   T  
  (                ��  ,�              $  |�   ��  " �<  �(      kH          ��   H  ��  *  *  �0     �j  �  3� �   �      	8 :     6�  0  �6     �z   j  �> ��  �B v� �n         L   4  ��      ɂ  �X �v ̈  ˒      \� ��  �l  &0     �8  R�     �|  T      ڀ  4&  L      �      �  �F      �, �� �~   j   j      �D              T      C6 ^ �N �  �       
          �   H   T     �T      B          i,          L                                              �                 ̖                     ¦     �� ��      �     �         y4                                  5                 ��                                                     ��     �     �� ��                 �                                                                             ��         ��                                         �                                                                                                                                                          �.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ,                               +                   *               )       (       '       %                       $      -                                 "                                        &                                                !                                                #                
   	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      %   ��������          8      :      w   ��������          p      �      �   ��������          �      �      �   ��������          �           #  ��������            ������������������������          P     J     �  ��������          �  ������������������������          �     �     �  ��������          �  ������������������������          0  ������������������������          h  ������������������������          �  ������������������������          �  ������������������������               �       ��������          H     :     K  ��������          �     `     �  
                 �  ������������������������          �     �     �  ��������          (  ������������������������          `  ������������������������          �     �       ��������          �  ������������������������                    +  ��������          @     B     g  ��������          x  ������������������������          �     �     �  ��������          �     �     �  ��������             ������������������������          X  ������������������������          �  ������������������������          �  ������������������������                �     -  ��������          8  ������������������������          p  ������������������������          �     8     ]  ��������          �     l     �  ��������               �       ��������          P  ������������������������	          �     *     [  ��������          �     �     �  ��������          �     �     �  ��������          0	  ������������������������          h	  ������������������������	          �	     2     K  ��������          -                                          (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     @     H     `     h     �     �     0                
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
   �     �     �     �  
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
   `           �     �  
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
   �     �     �     �  
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
   �     �     �     �  
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
   �                       (      1      :      C      L      U      ^      g      p      y      �      �      �      �      �      �      �      �      �      �      �      �      �      �            	               $     -     6     ?     H     Q     Z     c     l     u     ~     �     �     �  