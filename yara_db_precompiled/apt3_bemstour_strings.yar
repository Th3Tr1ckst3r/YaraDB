YARA�          �       `         �   �      �	  �         �        �      �  �          �        �!        �1      �  �?                            X         ��������                         ��������������������������������������������         *                     a      k                     �      �                     �      �                     �      �                     �      �                       �ں�ں��          C  ��������           6       �ں�ں��          i  ��������           \       �ں�ں��          �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��    )      �  ��������           �       �ں�ں��          
  ��������           �       �ں�ں��          .  ��������           !       �ں�ں��          S  ��������           F       �ں�ں��          z  ��������           m    	   �ں�ں��          �  ��������           �    
   �ں�ں��          �  ��������           �       �ں�ں��    "      �  ��������           �       �ں�ں��            ��������                  �ں�ں��          <  ��������           .       �ں�ں��    )      f  ��������           X       �ں�ں��    &      �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��    %      $  ��������                  �ں�ں��    >      X  ��������           J       �ں�ں��    :      �  ��������           �       �ں�ں��    :      �  ��������           �       �ں�ں��    X      .  ��������           #       �ں�ں��    &      �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��            ��������                  �ں�ں��          #  ��������                  �ں�ں��          =  ��������           0       �ں�ں��          f  ��������           Y       �ں�ں��    	      �  ��������           }        �ں�ں��    	      �  ��������           �    !   �ں�ں��    	      �  ��������           �    "   �ں�ں��    
      �  ��������           �    #   �ں�ں��    	      �  ��������           �    $   �ں�ں��    '        ��������           �    %   �ں�ں��          7  ��������           )    &   �ں�ں��           ]  ��������           O    '   �ں�ں��          �  ��������           ~    (   �ں�ں��          f  ��������           �    )   �ں�ں��          �  ��������           �    *   �ں�ں��          �  ��������           �  	  +   �ں�ں��          �  ��������           �  	  ,   �ں�ں��            ��������                 ��������������������default apt3_bemstour_strings description Detects strings used by the Bemstour exploitation tool reference https://research.checkpoint.com/2019/upsynergy/ author Mark Lechtik company Check Point Software Technologies LTD. date 2019-06-25 sha256 0b28433a2b7993da65e95a45c2adf7bc37edbd2a8db717b85666d6c88140698a $dbg_print_1 leaked address is 0x%llx $dbg_print_2 ========== %s ========== $dbg_print_3 detailVersion:%d $dbg_print_4 create pipe twice failed $dbg_print_5 WSAStartup function failed with error: %d $dbg_print_6 can't open input file. $dbg_print_7 Allocate Buffer Failed. $dbg_print_8 Connect to target failed. $dbg_print_9 connect successful. $dbg_print_10 not supported Platform $dbg_print_11 Wait several seconds. $dbg_print_12 not set where to write ListEntry . $dbg_print_13 backdoor not installed. $dbg_print_14 REConnect to target failed. $dbg_print_15 Construct TreeConnectAndX Request Failed. $dbg_print_16 Construct NTCreateAndXRequest  Failed. $dbg_print_17 Construct Trans2  Failed. $dbg_print_18 Construct ConsWXR  Failed. $dbg_print_19 Construct ConsTransSecondary  Failed. $dbg_print_20 if you don't want to input password , use server2003 version.. $cmdline_1 Command format  %s TargetIp domainname username password 2 $cmdline_2 Command format  %s TargetIp domainname username password 1 $cmdline_3 cmd.exe /c net user test test /add && cmd.exe /c net localgroup administrators test /add $cmdline_4 hello.exe  "C:\WINDOWS\DEBUG\test.exe" $cmdline_5 parameter not right $smb_param_1 browser $smb_param_2 spoolss $smb_param_3 srvsvc $smb_param_4 \PIPE\LANMAN $smb_param_5 Werttys for Workgroups 3.1a $smb_param_6 PC NETWORK PROGRAM 1.0 $smb_param_7 LANMAN1.0 $smb_param_8 LM1.2X002 $smb_param_9 LANMAN2.1 $smb_param_10 NT LM 0.12 $smb_param_12 WORKGROUP $smb_param_13 Windows Server 2003 3790 Service Pack 2 $smb_param_14 Windows Server 2003 5.2 $smb_param_15 Windows 2002 Service Pack 2 2600 $smb_param_16 Windows 2002 5.1 $smb_param_17 $smb_param_18 $smb_param_19 Windows for Workgroups 3.1a $unique_str_1 WIN-NGJ7GKNROVS $unique_str_2 XD-A31C2E0087B2 �      ? �@MZd/)  ?B          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (          1?   ?B   `     �     �          @          1$   ?B   h	     �	          /�   ?B   x     �     �           X     �     �           8     p     �     �          P     �     �     �     0	                  �            T      Z          �      �      �      �      �      �      �      �      �                        "  P  #"      &     (     .         V     .      ^ 1^      34  4      2d   4  /�  2z  3n      L     >~      X 8�  BP  BD               &          J  1�  J2  F�  N  O      7�  P   @   &  D�  4b     X  Sn  .      Qj      /Z 2�     /l b.  c  dV      /� gH  Of      .      /� mL  n*  o<  pv  q@   ^  s&  t  b�  2� b�  x8      Ph F� T> >\ q�  :� s�      s�  e  <  i o         2� 3�     f, b@     /� p$      v                      8� nD v* Ut 1� F� sJ      .  Q�  *  1 ;�  &       <  y` D� oN              ~             1,        �         7  q�     s� s� b� w� b�     �     p� p�      4  � n�     �     �         �     �         �     &t      $ o�  &  �  @  � /� 2l  v  .� ;R 2�  &  �  .  � o4 3� >� TV >b  *  f�     i8     � e> 2�   1�     t   ^  fJ e  .  � 1� t    pB m L�  ^  s    e&  &  vF  L  fN     b^     o0     � X�     u o|  ^  �   nZ  <  �     � sx     �  v  �     �          y�     1�       *    .    ~  ]� 3� b� /�     3� 4� /      /  &    <   (     /
  ~       "    p�     $ t� ]�         &      4      f�  ^            x�    e�  ^           .              �   "  v   �   8   �      3  s�          �    > b  ^       ^  4        4       &           L u�                          .           �   �  b  �   .         X  b  4           L                                                                              m&                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         X                       W                       H   G       B   A   C       ?   D   @   R       Q       I   J   V   U   :   9   7   8   6   5   4   3   2   1           0   /   ,   +           M   N   T   S   K   "   !                               &   %   
   	   -      .                            E   F                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ������������������������              ������������������������(          8   ������������������������          8   ������������������������          p   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������          �   ������������������������          �   ������������������������            ������������������������            ������������������������          P  ������������������������          P  ������������������������*          �  ����������������
   �            �  ����������������
     .          �  ������������������������          �  ������������������������"          �  ������������������������          �  ������������������������          0  ������������������������          0  ������������������������&          h  ������������������������          h  ������������������������          �  ����������������
   0            �  ����������������
   X  *          �  ����������������
   �            �  ����������������
   �  2            ����������������
     )            ����������������
   8  N          H  ����������������
   `  &          H  ����������������
   �  H          �  ������������������������          �  ������������������������          �  ����������������
   �            �  ����������������
   �  0          �  ����������������
   P  %          �  ����������������
   x  F          (  ������������������������4          (  ������������������������d          `  ������������������������          `  ������������������������
          �  ����������������
   @            �  ����������������
   h  
          �  ������������������������          �  ������������������������            ������������������������            ������������������������          @  ������������������������          @  ������������������������          x  ������������������������          x  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������             ������������������������             ������������������������          X  ������������������������          X  ������������������������2          �  ������������������������          �  ������������������������
          �  ������������������������	          �  ������������������������             ������������������������             ������������������������          8  ������������������������	          8  ������������������������          p  ������������������������
          p  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������,            ����������������
   �              ����������������
     "          P  ������������������������           P  ������������������������<          �  ������������������������          �  ����������������
   �            �  ����������������
   `	            �  ����������������
   �	  
          �  ����������������
   0            �  ����������������
   X            0	  ����������������
   	            0	  ����������������
   8	  2          h	  ������������������������          �	  ������������������������          -                                          (                          (      @      H      `      h      �      �      �      �      0                
       
      
      
      
   (   
   0   
   8   
   @      h      P      X   
   P   
   X   
   `   
   h   
   x   
   �   
   �   
   �      �      �      �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �      �      �      �   
   �   
   �   
      
     
     
      
   (  
   0          �         
   @  
   H  
   P  
   X  
   h  
   p  
   x  
   �     H     0     8  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     �     h     p  
   �  
   �  
   �  
   �  
     
     
     
         �     �     �  
   0  
   8  
   @  
   H  
   X  
   `  
   h  
   p     �     �     �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     (            
   �  
   �  
   �  
   �  
   �  
      
     
        `     H     P  
      
   (  
   0  
   8  
   H  
   P  
   X  
   `     �     �     �  
   p  
   x  
   �  
   �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
              �     �  
     
     
      
   (  
   8  
   @  
   H  
   P     @     (     0  
   `  
   h  
   p  
   x  
   �  
   �  
   �  
   �     x     `     h  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     �     �     �  
      
     
     
     
   (  
   0  
   8  
   @     �     �     �  
   P  
   X  
   `  
   h  
   x  
   �  
   �  
   �                  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     X     @     H  
   �  
   �  
      
     
     
      
   (  
   0     �     x     �  
   @  
   H  
   P  
   X  
   h  
   p  
   x  
   �     �     �     �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �           �     �  
   �  
   �  
   �  
   �  
     
     
     
         8           (  
   0  
   8  
   @  
   H  
   X  
   `  
   h  
   p     p     X     `  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �  
   �  
      
     
        �     �     �  
      
   (  
   0  
   8  
   H  
   P  
   X  
   `                  
   p  
   x  
   �  
   �  
   �  
   �  
   �  
   �     P     8     @  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
    	     �     p     x  
   	  
   	  
    	  
   (	  
   8	  
   @	  
   H	  
   P	     �     �     �  
   `	  
   h	  
   p	  
   x	  
   �	  
   �	  
   �	  
   �	     �     �     �  
   �	  
   �	  
   �	  
   �	  
   �	  
   �	  
   �	  
   �	     0             
    
  
   
  
   
  
   
  
   (
  
   0
  
   8
  
   @
     h     P     X  
   P
  
   X
  
   `
  
   h
  
   x
  
   �
  
   �
  
   �
     �     �     �  
   �
  
   �
  
   �
  
   �
  
   �
  
   �
  
   �
  
   �
     �     �     �  
   �
  
   �
  
      
     
     
      
   (  
   0          �        
   @  
   H  
   P  
   X  
   h  
   p  
   x  
   �     H     0     8  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     �     h     p  
   �  
   �  
   �  
   �  
     
     
     
         �     �     �  
   0  
   8  
   @  
   H  
   X  
   `  
   h  
   p     �     �     �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     (	     	     	  
   �  
   �  
   �  
   �  
   �  
      
     
        `	     H	     P	  
      
   (  
   0  
   8  
   H  
   P  
   X  
   `     �	     �	     �	  
   p  
   x  
   �  
   �     �	     �	     �	  
   �  
   �  
   �  
   �           "      +      4      =      F      O      X      a      j      s      |      �      �      �      �      �      �      �      �      �      �      �      �                &     B     K     T     ]     f     o     x     �     �     �     �     �     �     �     �     �     �     �  