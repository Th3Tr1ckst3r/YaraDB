YARA�          �       `         �   �      `  �         �      �  �	      '  �
          �
         �         �      @  �                             (         ��������                         ��������������������������������������������   !      -                     �     �                      ��������                                            �ں�ں��    
      %  ��������                   �ں�ں��          5  ��������           0       �ں�ں��    
      I  ��������           B       �ں�ں��    
      [  ��������           T       �ں�ں��          m  ��������           f       �ں�ں��    
      �  ��������                  �ں�ں��          �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��          �  ��������           �    	   �ں�ں��          �  ��������           �    
   �ں�ں��    
      �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��            ��������                  �ں�ں��            ��������                  �ں�ں��    	      *  ��������           $       �ں�ں��          :  ��������           4       �ں�ں��          L  ��������           F       �ں�ں��          Y  ��������           S       �ں�ں��          n  ��������           g       �ں�ں��          |  ��������           u      ��������������������default APT_Backdoor_Win_GORAT_2 description Verifies that the sample is a Windows PE that is less than 10MB in size and has the Go build ID strings. Then checks for various strings known to be in the Gorat implant including strings used in C2 json, names of methods, and the unique string 'murica' used in C2 comms. A check is done to ensure the string 'rat' appears in the binary over 1000 times as it is the name of the project used by the implant and is present well over 2000 times. md5 f59095f0ab15f26a1ead7eed8cdb4902 rev author FireEye $go1 go.buildid $go2 Go build ID: $json1 json:"pid" $json2 json:"key" $json3 json:"agent_time" $json4 json:"rid" $json5 json:"ports" $json6 json:"agent_platform" $rat rat $str1 handleCommand $str2 sendBeacon $str3 rat.AgentVersion $str4 rat.Core $str5 rat/log $str6 rat/comms $str7 rat/modules $str8 murica $str9 master secret $str10 TaskID $str11 rat.New &      ? �@MZd/   ?<��@PEd/   %A  � f/#   BB          8           /G   BB   p      �      �           P     �          /t   BB   �     0     h     �     �          H     �     �     �     (          /      �  @�g        �            &      *            2          6      :      <      B                                                                 z            �      �             �          �          �      �      �             �                                                                          /x   :                     U      ;p      /�  0�  #�                              c  b      b(  fX  h"  i  b0      f.  b4  n      p          s  t  bD      bL          v,  b^  o8  bd  tH          p>              v@  o\  ob  tJ  sV  jr  vP  oh          uT  l|  pt      e�  vl  j�  e�              u~                  c�                          m�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         &   %   #   $   "   !               (      '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ������������������������              ������������������������          8   ������������������������          8   ������������������������
          p   ������������������������          p   ������������������������          �   ����������������
   �             �   ����������������
   �             �   ����������������
   �             �   ����������������
                 ����������������
   @              ����������������
   h            P  ����������������
   �            P  ����������������
   �            �  ����������������
   �            �  ����������������
               �  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          0  ������������������������          0  ������������������������          h  ������������������������          h  ����������������
   �            �  ����������������
   p            �  ����������������
   �            �  ������������������������          �  ����������������
   �              ����������������
                 ����������������
   8            H  ����������������
   `            H  ����������������
   �            �  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          (  ����������������
   �            (  ����������������
   �                                                      (                          (      @      H      `      h      0                
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
   0     3      <      V      _      h      q      z      �      �      �      �      �      �      �      �      �      �      �      �        