YARA�          �       `         �  �      �
  �         �      i        �        �  �        �)        �9      �  �A                            2         ��������                         ��������������������������������������������         !                     V      [                     f      n                     p      |                     �      �                     �      �                     �      �                          '                    e     x                    �     �                    �     �                    �     �                    �                     K     �ں�ں��            ��������             K    �ں�ں��          6  ��������           *  K    �ں�ں��        ����������������           F  K    �ں�ں��        ����������������           R  K    �ں�ں��          j  ��������           ^  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��          �  ��������           �  K    �ں�ں��        ����������������           �  K 	   �ں�ں��        ����������������           �  K 
   �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��          �  ��������           �  K    �ں�ں��            ��������             K    �ں�ں��        ����������������           8  K    �ں�ں��          R  ��������           E  K    �ں�ں��          u  ��������           h  K    �ں�ں��    
      �  ��������           z  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��          �  ��������           �  K    �ں�ں��          �  ��������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��            ��������           �  K    �ں�ں��            ��������             K    �ں�ں��        ����������������           1  K    �ں�ں��        ����������������           >  K    �ں�ں��          X  ��������           K  K    �ں�ں��          |  ��������           o  K    �ں�ں��          �  ��������           �  K    �ں�ں��        ����������������           �  K    �ں�ں��        ����������������           �  K     �ں�ں��    &      �  ��������           �  K !   �ں�ں��            ��������           �  K "   �ں�ں��          &  ��������             K #   �ں�ں��          B  ��������           5  K $   �ں�ں��          T  ��������           G  K %   �ں�ں��        ����������������           g  K &   �ں�ں��          �  ��������           t  K '   �ں�ں��          �  ��������           �  K (   �ں�ں��          �  ��������           �  K )   �ں�ں��        ����������������           �  K *   �ں�ں��        ����������������           �  K +   �ں�ں��        ����������������           �  K ,   �ں�ں��          �  ��������           �  K -   �ں�ں��        ����������������             K .   �ں�ں��        ����������������           !  K /   �ں�ں��          ;  ��������           .  K 0   �ں�ں��        ����������������           O  K 1   �ں�ں��        ����������������           \      ��������������������default win_microcin_auto author Felix Bilstein - yara-signator at cocacoding dot com date 2023-03-28 version 1 description Detects win.microcin. info autogenerated rule brought to you by yara-signator tool yara-signator v0.6.0 signator_config callsandjumps;datarefs;binvalue malpedia_reference https://malpedia.caad.fkie.fraunhofer.de/details/win.microcin malpedia_rule_date 20230328 malpedia_hash 9d2d75cef573c1c2d861f5197df8f563b05a305d malpedia_version 20230407 malpedia_license CC BY-SA 4.0 malpedia_sharing TLP:WHITE $sequence_0 �;�tI�D��Hc�D+� $sequence_1 H��   A_A^A\_^ $sequence_2 $sequence_3 $sequence_4 ������3�P�Ӆ�~��5����: $sequence_5 $sequence_6 $sequence_7 ~��5����:t������FP $sequence_8 $sequence_9 $sequence_10 $sequence_11 $sequence_12 ������������� $sequence_13 M���   A� I���   Aǆ�      E3� $sequence_14 $sequence_15 H��u�D$HLw3s�D$L1gMZ $sequence_16 ISSV $sequence_17 vironment  $sequence_18 $sequence_19 $sequence_20 ��   ��U��E�     $sequence_21 spideragent.exe $sequence_22 $sequence_23 h(  ������j P $sequence_24 �U���U�E�P�M�Q $sequence_25 $sequence_26 $sequence_27 L�5 3�I��;
t��H�� $sequence_28 ccsvshst.exe $sequence_29 @SH�� ��H��  $sequence_30 $sequence_31 $sequence_32 ��|������x��� }4��|������x�������|��� $sequence_33 ��1��   �M�M��<� <A  $sequence_34 �E�u�M����M� $sequence_35 ���� $sequence_36 sF�E�3ҹ   ���u $sequence_37 $sequence_38 VV�u��U� $sequence_39 ���   S��  V���   �U� $sequence_40 �MI��I��H�p  $sequence_41 $sequence_42 $sequence_43 $sequence_44 ����  j�N����@ _ $sequence_45 $sequence_46 $sequence_47 �MV�u�A�W�}=�    $sequence_48 $sequence_49 �      ?B          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (     `     �     �          @     x     �     �           X     �     �           8     p     �     �          P     �     �     �     0	     h	     �	     �	     
     H
     �
     �
          /   %A ` f        �����������=����������������P���׭�ע��P�������ࢅ�������=������������������H�c�ȢƢ������ � �3�H�������� � ���������������� � ��������H�3� � �������ƢȢc�H���������蠠�����u�Ԣ蠠�����Ģ���ǭ�Ǣ���Ģ�������Ԣu�������譢��E���P�h�� � �������������������� � ��h�P���E����Ƣ������ � �h�H�������� � ��������H�c�ȭ�Ȣc�H�������� � ��������H�h� � �������ƭ�W�A�T�A�V�A�W�H�����$� �������H���� �� � �H����������������H� � �� �좁�H������� �$�����H�W�A�V�A�T�A�W���������������������P���ӭ�Ӣ��P���������������������P�h��� � �h����� � �V���5�������֢j����j�֢������5���V� � �����h� � ���h�P��h��� � �P��������������������P��P��������������������P� � ���h����٢H�������� ��������H�����t��H����s��� �H���ȭ�Ȣ��H� ���s����H��t�����H�������� ��������H�٢���L����l��� �I���ԢH���͢蠠�������u�A�L���í�â��L�A�u����������͢��H�Ԣ��I� ���l����L���������A���|�$�碅���u�*�L������� ���עI���ͭ�͢��I�ע�� �������L�*�u������$�|���A���������3�ɢH���t�$� �蠠���̢L����l��� �I���ԭ�Ԣ��I� ���l����L�̠����� �$�t���H�ɢ3��蠠���L�������� �A���� � � �H���L�E���H�����I�+�ŭ�Ţ+�I�����H���E�L���H� � � ����A� ��������L�����譢��Ģ�Ǣ��t�ߢ���� � � � �������������蠠�������t�ߢ����^��^�����ߢt���������������������� � � � �����ߢt���Ǣ�Ģ�����¢�R��������j����������͢��孢墋�͢렠�������j��������R��¢���t��H����s��� �H���Ȣ�������H�����t����˭�ˢ���t�����H��������Ȣ��H� ���s����H��t����Ģ�������������P��������������������P��P��������������������P��������������Ģ���j� �h� � � ���j� �h� � � ���h� � �Ϣ �h���������$��� � � �� � � ���$���������h� �Ϣ � �h��� � � �h� �j��� � � �h� �j�������P�j�@�����������𢋠�������@�j�P�������蠠������V��蠠���V��V�������V��������譢t��I���L�$��I���T�$��蠠������������������$�T���I��$�L���I��t�����������𢃢����t�f�h�$�� � �������������������������� � ��$�h�f�t�������𢋠������������蠠���H���٢蠠���E���G�`��`�G���E������٢��H����������                <                                                                                                            &                   ,          �  �      6   6          �     �      4  �              4V       H      5\  �              H          J         %�  I,  J&      JB      N(  IL  MF  Q2  6  
              f  $  N                 B�  _8      d  X       �  > f  Tl      i  F�      	� �         %x     %z �      ,  W�  w  I�  jt  �     on  V�  ~  .  tf  ~@  i~      �6  2b �$     �     T     �  �X  �H  �Z             6~ �         <�                 �J  ��         ��  }�  �v  /� ��      ��      u�  ��  ��  ��  u s, v4 >�             ��       ]� /� �>  � ��          %         , �  : �<         �0  �$ �:  m�     �j L      
      V� B �p  �^              D H      :  ��              Ũ      W �x  ǎ               �       $  �� �*       �  �2 �" �  �      �D      � ٶ  �  �
  �* �          ��  �� �b  �� �P  �� Q&  O  p�                        ��             �      2  ��  ��             H  �0    �   6     QN             ��      ͖      2  �� ɶ                             �.                 `\         �             �< �6     �2                                                                 ��             ��                     �$                     ��                     �0         ��                                                     �                                 �                                                                 �                                                                         �@                                                                     �^                                                                         �T             �V �X                 �Z                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         .   )       1   0   /       (               &   '   %   $   #   !                                                                                                                                    2   
   	          ,           "   -      *                 +                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ������������������������          8   ������������������������          p            5   ��������          �      R      �   ��������          �   ������������������������               �      �   ��������          P     �        ��������          �  ������������������������          �           y  ��������          �     �     �  ��������          0     �       
   �             h          o  ��������          �  ������������������������          �  ������������������������               �     �  ��������          H  ������������������������          �  ������������������������          �  ������������������������          �     �     !  ��������          (     *     �  ��������          `  ������������������������	          �  ������������������������          �     �     �  ��������            ������������������������	          @  ������������������������          x     �     A  ��������          �     J     �  ��������          �  ������������������������             ������������������������	          X  ����������������
   �            �     �     %  ��������          �     B     S  ��������             ������������������������          8  ������������������������          p  ������������������������          �  ������������������������          �  ������������������������               r     �  ��������          P  ������������������������          �  ������������������������          �  ������������������������          �     �     #  ��������          0	     P     m  ��������          h	     �     �  ��������          �	  ������������������������          �	     �     �  ��������          
           9  ��������          H
  ������������������������          �
     H     �  ��������          �
     �     �  ��������          2                                          (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     @     H     `     h     �     �     0                
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
   �                       (      1      :      C      L      U      ^      g      p      y      �      �      �      �      �      �      �      �      �      �      �      �      �      �            	               $     -     6     ?     H     Q     Z     c     l     u     ~     �     �     �     �     �     �     �     �  