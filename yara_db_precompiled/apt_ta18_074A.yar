YARA�          �       �   f         �      �  F         ^        j      �   ]	          ]	         ]         ]      �  �                                     ��������                                �   ��������   �      p                     �  ��������   @     �             ��������������������������������������������                              <      C                     m      r                     }      �                          	                    0     8                    <      �                    �     �                    m      �                    �     �                         	                    0     8                    <      �                    �     �                    m      �                    �     �                    �     �                      �ں�ں��          �   ��������           �        �ں�ں��          �   ��������           �   �     �ں�ں��   
      >  ��������           :  �     �ں�ں��         M  ��������           I  �     �ں�ں��         f  ��������           b  �     �ں�ں��         {  ��������           w  �     �ں�ں��   1      �  ��������           �  	     �ں�ں��          �  ��������           :      ��������������������default z_webshell description Detection for the z_webshell author DHS NCCIC Hunt and Incident Response Team date 2018/01/25 md5 2C9095C965A55EFC46E16B86F9B7D6C6 $webshell_name public string z_progname = $webshell_password public string Password = TA18_074A_screen Detects malware mentioned in TA18-074A license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE Florian Roth (Nextron Systems) reference https://www.us-cert.gov/ncas/alerts/TA18-074A 2018-03-16 hash1 2f159b71183a69928ba8f26b76772ec504aefeac71021b012bd006162e133731 $s1 screen.exe $s2 PlatformInvokeUSER32 $s3 GetDesktopImageF $s4 PlatformInvokeGDI32 $s5 Too many arguments, going to store in current dir TA18_074A_scripts modified 2022-08-18 Running -s cmd /c query user on  [       ? �A<%@ d1   ? �A<aspd/   %A � f/$   ?B          8                   c      ? �@MZd/   %@ �f/?   ?B   p      �      �           P                 4      %A `	 f/   ?B   �                 �                        $      (      0      <      @                                                                                  �      �                      �      �      �      �      4                         6                     /H         48  E  F  4B  H              J           3v      Q          3�          S&  CN  Ch  Cl  [  Cn  V,      V.          Ez                          f"  VX  `6  Q|  `>  V\  o
  Q~  q  r  M�  M�  f4  M�  v  cL  cR  cj  {  cp  v*  `d  v2  `r  M�  M�  M�  M�  M u:  uD          vT      qx  sP  v`  S. q�  S2 S: m�  m�  S< m�                                          m�  m�  m�  m�  m                                     s     s0 s8         s>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         $                                                                           "       !                       #                                                                                                                                                                                                                                                                                                                                        	      
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ������������������������              ������������������������               ������������������������               ������������������������              ������������������������              ������������������������              ������������������������              ������������������������              ������������������������              ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������"          �  ������������������������                                                    (                          (      @      H      `      h      0                
       
      
      
      
   (   
   0   
   8   
   @   
   P   
   X   
   `   
   h   
   x   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
   �   
      
     
     
      
   (  
   0  
   @  
   H  
   P  
   X  
   h  
   p  
   x  
   �     h      P      X   
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
     
     
     
      
   0  
   8  
   @  
   H  
   X  
   `  
   h  
   p  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
      
     
     
      
   (  
   0  
   8  
   H  
   P  
   X  
   `  
   p  
   x  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
      
     
     
      
   (  
   8  
   @  
   H  
   P  
   `  
   h  
   p  
   x  
   �  
   �  
   �  
   �     7      @      8      @      P      H      X      �      �      �      �      �      �      �      �                       (     �      �      �   
   �  
   �  
   �  
   �     �      �      �   
   �  
   �  
   �  
   �          �         
      
     
     
        H     0     8  
   (  
   0  
   8  
   @     �     h     p  
   P  
   X  
   `  
   h           �      �      �      �      h      p      �      x      �      @     H     `     h     �     �     �     �     �     �     �     �                �     �     �  
   x  
   �  
   �  
   �     �   