YARA�          �       `         �  �      �  ~         �        �      �   )	          )	         )         )      �  �                                     ��������                         ��������������������������������������������   +      2                     C      F                     k      w                     �      �                     �      �                     �      �                          !                    b  ��������d                 k     x                    |     �                    �     �                    �     �                      �ں�ں��    $      �  ��������           �       �ں�ں��    �      �  ��������           �       �ں�ں��    ,      �  ��������           z       �ں�ں��          �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��    `      �  ��������           �       �ں�ں��    X      g  ��������           [       �ں�ں��    >      �  ��������           �      ��������������������default Windows_Hacktool_SharpWMI_a67d6fe5 author Elastic Security id a67d6fe5-3ce5-4e63-979e-3fb799d9d173 fingerprint 20719ea15d4dee90c95b474689752172a6b6fb941dced81803f9f726ddc26d29 creation_date 2022-10-20 last_modified 2022-11-24 threat_name Windows.Hacktool.SharpWMI reference_sample 2134a5e1a5eece1336f831a7686c5ea3b6ca5aaa63ab7e7820be937da0678e15 severity arch_context x86 scan_context file, memory license Elastic License v2 os windows $guid 6DD22880-DAC5-4B4D-9C91-8C35CC7B8180 $str0 powershell -w hidden -nop -c "$e=([WmiClass]'{0}:{1}').Properties['{2}'].Value;[IO.File]::WriteAllBytes('{3}',[Byte[]][Int[]]($e-split','))" $str1 powershell -w hidden -nop -c "iex($env:{0})" $str2 SELECT * FROM Win32_Process $str3 DOWNLOAD_URL $str4 TARGET_FILE $str5 SELECT Enabled,DisplayName,Action,Direction,InstanceID from MSFT_NetFirewallRule WHERE Enabled=1 $print_str0 This may indicate called SharpWMI did not invoked WMI using elevated/impersonated token. $print_str1 [+] Attempted to terminate remote process ({0}). Returned: {1} �              1k   BB   8      p      �      �           P          /$   ?B   �     �                  �        &      *      2      4      6      :      <      B      F                   
                                                      �       ,      )   
  �      �      �              �          �  (@          :"  ;      �      4>      �      2P      1L      �  H  (�      B8   2  F0          P  4j  3p  1r  >`  2�  .|  0�                      Bd  ^      F\  Eh  2�              f
          f.  e,          Ub      o              1�      u      9�              fT  eN  |(  eX                                          |D                      |H      `�          `�              `�      |x      |�                              ~�                                                                          ~�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
   	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ������������������������              ������������������������.          8   ������������������������/          8   ������������������������Z          p   ������������������������*          p   ������������������������P          �   ������������������������          �   ������������������������$          �   ������������������������	          �   ������������������������            ������������������������            ������������������������
          P  ������������������������`          P  �������������������������          �  ������������������������E          �  �������������������������          �  ������������������������.          �  ������������������������X          	                                          (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     @     H     `     h     0                
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
   �     
            $      -      6      ?      H      b      k   