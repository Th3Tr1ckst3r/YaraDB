YARA�          �       P  �      �  �      �
  �         �      �  �      *  �          �        �+        �;      �  �C                                     ��������                                T  ��������   �      �                    <  ��������                              �  ��������   �     �                       ��������   `     P              	      �  ��������         �             ��������������������������������������������         *                     N      V                     �      �                     �      �                     �      �                                              L     R                         *                     N      V                     �      �                     �      �                     �      �                          j                    L     �                    �     �                         3                         S                    N      V                     �      �                     �      �                     �      �                          �                         �                    N      V                     �      �                     �      �                     �      �                          *                     N      V                     �      �                     �      �                     �      �                          6                         *                     N      V                     �      �                     �      �                     �      �                          �                �      �ں�ں��    	      �  ��������           �  �     �ں�ں��    %      �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  K    �ں�ں��    G      �  ��������           �  	     �ں�ں��          D  ��������           @  �     �ں�ں��   S      t  ��������           �  �     �ں�ں��         �  ��������           @  �  	   �ں�ں��   >      �  ��������           �  �  
   �ں�ں��           ��������           �  �     �ں�ں��         %  ��������           �  �     �ں�ں��         2  ��������           �  �     �ں�ں��         ?  ��������           �  �     �ں�ں��         P  ��������           L  �     �ں�ں��         \  ��������           X  �     �ں�ں��         g  ��������           c  �     �ں�ں��         w  ��������           s  �     �ں�ں��   	      �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��   
      �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��           ��������              �     �ں�ں��           ��������             �     �ں�ں��         +  ��������           &  �     �ں�ں��   	      �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         �  ��������           �  �      �ں�ں��   2      	  ��������             �  !   �ں�ں��   $      @  ��������           <  �  "   �ں�ں��         i  ��������           e  �  #   �ں�ں��         �  ��������           �  �  $   �ں�ں��         �  ��������           �  �  %   �ں�ں��           ��������           �  �  &   �ں�ں��   	      w  ��������           �  �  '   �ں�ں��   	      �  ��������           �  K (   �ں�ں��         �  ��������           �  �  )   �ں�ں��         �  ��������           �  �  *   �ں�ں��           ��������           @  �  +   �ں�ں��   
        ��������             �  ,   �ں�ں��   (      -  ��������           )  �  -   �ں�ں��   %      V  ��������           �  �  .   �ں�ں��         |  ��������           �  �  /   �ں�ں��         �  ��������           �  �  0   �ں�ں��         �  ��������           �  �  1   �ں�ں��          �  ��������           �      ��������������������default Industroyer_Malware_1 description Detects Industroyer related malware license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE author Florian Roth (Nextron Systems) reference https://goo.gl/x81cSy date 2017-06-13 hash1 ad23c7930dae02de1ea3c6836091b5fb3c62a89bf2bcfb83b4b39ede15904910 hash2 018eb62e174efdcdb3af011d34b0bf2284ed1a803718fba6edffe5bc0b446b81 $s1 haslo.exe $s2 SYSTEM\CurrentControlSet\Services\%ls $s3 SYS_BASCON.COM $s4 *.pcmt $s5 *.pcmi $x1  S e r v i c e s \ % l s   I m a g e P a t h   C : \   D : \   E : \    $x2 haslo.dat Crash Industroyer_Malware_2 3e3ab9674142dec46ce389e9e759b6484e847f5c1e1fc682fc638fc837c13571 37d54e3d5e8b838f366b9c202f75fa264611a12444e62ae759c31a0d041aa6e4 hash3 ecaf150e087ddff0ec6463c92f7f6cca23cc4fd30fe34c10b3cb7c2a6d135c77 6d707e647427f1ff4a7a9420188a8831f433ad8c5325dc8b8cc6fc5e7f1f6f47 sc create %ls type= own start= auto error= ignore binpath= "%ls" displayname= "%ls" 10.15.1.69:3128 Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1) /c sc stop %s sc start %ls 93.115.27.57 5.39.218.152 $s6 tierexe $s7 comsys $s8 195.16.88.6 $s9 TieringService $a1 TEMP  DEF $a2 TEMP  DEF-C $a3 TEMP  DEF-WS $a4 TEMP  DEF-EP $a5 TEMP  DC-2-TEMP $a6 TEMP  DC-2 $a7 TEMP  CES-McA-TEMP $a8 TEMP  SRV_WSUS $a9 TEMP  SRV_DC-2 $a10 TEMP  SCE-WSUS01 Industroyer_Portscan_3 Detects Industroyer related custom port scaner 893e4cca7fe58191d2f6722b383b5e8009d3885b5913dcd2e3577e5a763cdb3f !ZBfamily :g/outddomo; GHIJKLMNOTST $d1 Error params Arguments!!! $d2 ^(.+?.exe).*\s+-ip\s*=\s*(.+)\s+-ports\s*=\s*(.+)$ $d3 Exhample:App.exe -ip= 127.0.0.1-100, $d4 Error IP Range %ls - %ls $d5 Can't closesocket. Industroyer_Portscan_3_Output Detects Industroyer related custom port scaner output file WSA library load complite. Connection refused Industroyer_Malware_4 21c1fdd6cfd8ec3ffe3e922f944424b543643dbdab99fa731556f8805b0d5561 haslo.dat defragsvc  . d a t   Crash    Industroyer_Malware_5 7907dd95c1d36cf3dc842a1bd804f0db511a0f68f4b3d382c23a3c974a383cad D2MultiCommService.exe Crash104.dll $x3 iec104.log $x4 IEC-104 client: ip=%s; port=%s; ASDU=%u  Error while getaddrinfo executing: %d return info-Remote command Error killing process ... stop_comm_service_name *1* Data exchange: Send: %d (%s) �       ? �@MZd/   %A   f/$   ?B        P          1Q   ?B          8      p      �      �           P                  T     ? �@MZd/   %A � f/$   ?B   �     �          1�   ?B   �     �     �     0     h     �     �          H     �     �     �     (     `     �     �          @     x     �     �          1l   ?B   �     (     `     �     �          @     x     �     �          1�   ?B   �     �     �     0     h     �     �          H     �     �     �     (     `     �     �          @     x     �     �                 �      ? �@MZd/   %A � f/,   BB         X     �          1?   ?B   �           8     p     �                 /      BB   �                      Y      ? �@MZd/   %A   f/#   BB   P     �          1      �         !     ? �@MZd/   %A @ f/�   ?B   �     0	     h	     �	          1c   ?B   �     0	     h	     �	     �	     
     H
     �
     �
          1b   BB   �     0	     h	     �	     �	     
     H
     �
     �
                 �    T                              �      �      �              �      �      �      �      �      �      �      �      �  "  #n            &^  )      +x      
 .      0X  1f  28       2�  6H      �     :L  ;           �             D,  E0   �   8  H      @  3�   T  1�      I�   T   �   T  S  T(  U4  V               Z|   T           T  _  `$   T   f   T  d<  e
  f�   T   T  [�  j  f�      m  jr  o   T   T  f�  g�  t�  u@  o�  h�  1 )(     � u�   T   T   T   T   T      T   T   T      ]�  0< s�   T      T   f   �      p�   �               5�  <   @    3� C>      X      EV J: :� t &�     (     o F� N�  0  * g b$ m f" h TJ /� Sx d0 F� 4� *� /� 5� /�     . p, bN / D� 5� F� . b�     u2     2 ;     4  ,  :     <     > T�    @     p�     D j� j�  T  q�     F     H        L     N     K"     P     R     m      T   p� h� t�  � u     V s     Z     \  �  ^    ` &X  @  b /B g&             T   T     u p$  @   �               �   �  /d  �   �   T   T  t0      �   T   T   T       T     T   $   T   T   T   T   T   T       T   �     T   �                                          v8                     `J                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             2               0               -                                                                       (   .   %   #   !   /           &                             )   $          *               ,   "         1            
   	                  '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ������������������������          8   ������������������������B          p   ������������������������          �   ������������������������          �   ����������������
   x               ������������������������          P  ����������������
                 �  ������������������������z          �  ������������������������          �  ������������������������          0  ������������������������          h  ����������������
   �  
          �  ������������������������          �  ������������������������            ������������������������          H  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          (  ������������������������          `  ����������������
   �            �  ����������������
                �  ������������������������            ����������������
   p            @  ������������������������          x  ������������������������          �  ������������������������          �  ������������������������             ������������������������          X  ������������������������          �  ������������������������          �  ������������������������*             ������������������������          8  ������������������������0          p  ������������������������          �  ������������������������          �  ������������������������            ������������������������          P  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          0	  ������������������������	          h	  ����������������
   �            �	  ������������������������          �	  ������������������������"          
  ������������������������          H
  ������������������������          �
  ������������������������          �
  ������������������������           2                                          (                          (      @      H      `      h      �      �      �      �      �      �      0                
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
        &      /      J      S      \      e      n      w      �      8      @      P      H      X      �      �                       (     @     H     `     h     �     �     �     �     �     �     �     �     �     �     �  
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
   P     �      �      �      �      �            	               $     -     6     ?     H     Q     Z     c     l     u     ~     �     �     �     �     �     �     �     �     �     �     �     �                )     2     ;     D     M     V     _     h     q     z     �     �     �     �     �     �     �     �     �     �     h      p      �      x      �                       (     @     H     `     h     �     �     �     �     P     8     @  
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
   �               &     A     J     S     \     e     �      �      �      �      �      �     �     �     �                      (     @     H          �        
   �  
   �  
   �  
   �     H     0     8  
   �  
   �  
   �  
   �     �     �     �      �      �      �      �      `     h     �     �     �     �     �     �     �     �                �     h     p  
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
   X     �     �     �     �                                 (     @     H     `     h     �     �     �     �     �     �     (	     	     	  
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
   �     .     7     @     I     c     l     u     ~     �     �     �     �     �     �     �     �     �     �     �     �            