YARA�          �       `         �   �      �  >         V      �  P      �   	          	                        �  �                                     ��������                         ��������������������������������������������                              .      2                     N      X                     �      �                 	      �ں�ں��    #      �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �       �ں�ں��    $        ��������             	     �ں�ں��    #      �  ��������           1  	     �ں�ں��          B  ��������           8       �ں�ں��    $        ��������           G  	     �ں�ں��          U  ��������           N  	  	   �ں�ں��          w  ��������           m  	  
   �ں�ں��          �  ��������           |  	     �ں�ں��          �  ��������           �  	     �ں�ں��          U  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��    
      �  ��������           �      ��������������������default Backdoor_Jolob maltype Backdoor.Jolob ref https://github.com/reed1713 reference http://www.symantec.com/connect/blogs/new-flash-zero-day-linked-yet-more-watering-hole-attacks description the backdoor registers an auto start service with the display name "Network Access Management Agent" pointing to the dll netfilter.dll. This is accomplished without notifying the user via the sysprep UAC bypass method. $type Microsoft-Windows-Security-Auditing $eventid 4673 $data1 Security $data2 SeCreateGlobalPrivilege $data3 Windows\System32\sysprep\sysprep.exe $type1 $eventid1 4688 $data4 $type2 Service Control Manager $eventid2 7036 $data5 Network Access Management Agent $data6 running $type3 $eventid3 7045 $data7 $data8 user mode service $data9 auto start �       BB          8      p      �      �           P     �     �     �     0     h     �     �          H     �                  �                                                                                                                                    
                                                                       5  1      8
      4$  4&              7               46  54  3:  3<      8D  9@                  N  O  6N  .`  7P      T  D8  4^          9\                                  b                      f                      n  f"  p  g(  f.  s      d>  v  v  t  v  ]R  ]T  o0              u*          u,  s2  pB      oJ      uF  sH              xL  sX  wV                  vZ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
   	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ������������������������
          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������          �   ������������������������            ����������������
       
          P  ������������������������          �  ����������������
   �             �  ����������������
   �             �  ������������������������          �  ������������������������          0  ������������������������          h  ������������������������          �  ����������������
   �            �  ������������������������            ����������������
   �            H  ������������������������          �  ������������������������                                                    (                          (      @      H      `      h      0                
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
   �   
   �   
   �   
   �   
   �      H     0     8  
   �   
   �   
      
        �     h     p  
     
      
   (  
   0     �     �     �  
   @  
   H  
   P  
   X  
   h  
   p  
   x  
   �     �     �     �  
   �  
   �  
   �  
   �     (            
   �  
   �  
   �  
   �     `     H     P  
   �  
   �  
   �  
   �     �     �     �  
     
     
     
         �     �     �  
   0  
   8  
   @  
   H          �     �  
   X  
   `  
   h  
   p     @     (     0  
   �  
   �  
   �  
   �     x     `     h  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �                       '      0      9      B      K      T      ]      f      o      x      �      �      �      �   