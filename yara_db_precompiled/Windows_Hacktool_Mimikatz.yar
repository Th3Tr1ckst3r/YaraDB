YARA�          �          �         �	      @                 2  P$      �  '        (        #4        +D      �  �L                                     ��������                                �  ��������   �     x                    �  ��������         �                    9  ��������   �     �                    9  ��������   `                  ��������������������������������������������   +      2                     C      F                     k      w                     �      �                     �      �                     �      �                          !                    b  ��������d                 k     x                    |     �                    �     �                    �     �                   +      2                     C      �                    k                          �      W                    �      �                     b     n                    �      �                          !                    b  ��������c                 k     x                    |     �                    �     �                    �     �                   +      2                     C                          k      C                    �      W                    �      �                     b     �                    �      �                          �                    b  ��������Z                 k     x                    |     �                    �     �                    �     �                   +      2                     C      \                    k      �                    �      �                    �      �                    b     �                    �      �                          �                    b  ��������d                 k     x                    |     &                    �     �                    �     �                   +      2                     C      \                    k      �                    �      �                    �      �                    b     �                    �      �                          �                    b  ��������d                 k     x                    |     &                    �     �                    �     �                �      �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��    H        ��������             �     �ں�ں��           b  ��������           ^  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��    )      �  ��������           �  �     �ں�ں��    2      �  ��������           �  �  	   �ں�ں��            ��������             �  
   �ں�ں��          :  ��������           5  �     �ں�ں��    &      N  ��������           I  �     �ں�ں��          z  ��������           u  �     �ں�ں��    !      �  ��������           �  �     �ں�ں��    H      �  ��������           �  �     �ں�ں��    @        ��������           �  �     �ں�ں��    8      G  ��������           B  �     �ں�ں��    0      �  ��������           �  �     �ں�ں��    .      �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��            ��������           
  �     �ں�ں��          2  ��������           -  �     �ں�ں��    4      V  ��������           Q  �     �ں�ں��    &      �  ��������           �  �     �ں�ں��          �  ��������           �  K    �ں�ں��         �  ��������           �  K    �ں�ں��         �  ��������           �  K    �ں�ں��         �  ��������           �  K    �ں�ں��         �  ��������             K    �ں�ں��         �  ��������           ^  K    �ں�ں��         �  ��������           �  K    �ں�ں��         �  ��������           �  K     �ں�ں��         �  ��������           �  K !   �ں�ں��         �  ��������           �  K "   �ں�ں��         �  ��������             K #   �ں�ں��         �  ��������           5  K $   �ں�ں��         �  ��������           I  K %   �ں�ں��         �  ��������           u  K &   �ں�ں��         �  ��������           �  	  '   �ں�ں��         �  ��������           �  	  (   �ں�ں��         c  ��������           �  	  )   �ں�ں��   %      �  ��������           �  	  *   �ں�ں��   '      	  ��������           		  	  +   �ں�ں��   '      9	  ��������           5	  �  ,   �ں�ں��   o      e	  ��������           a	  	  -   �ں�ں��   |      �	  ��������           �	  	  .   �ں�ں��         Z
  ��������           V
  	  /   �ں�ں��   +      }
  ��������           y
  �  0   �ں�ں��   ;      �
  ��������           �
  	  1   �ں�ں��   :      �
  ��������           �
  	  2   �ں�ں��         ,  ��������           (  �  3   �ں�ں��   v      I  ��������           E  	  4   �ں�ں��   )      �  ��������           �  �  5   �ں�ں��   E      �  ��������           �  K 6   �ں�ں��       ����������������           +  K 7   �ں�ں��       ����������������           +      ��������������������default Windows_Hacktool_Mimikatz_1388212a author Elastic Security id 1388212a-2146-4565-b93d-4555a110364f fingerprint dbbdc492c07e3b95d677044751ee4365ec39244e300db9047ac224029dfe6ab7 creation_date 2021-04-13 last_modified 2021-08-23 threat_name Windows.Hacktool.Mimikatz reference_sample 66b4a0681cae02c302a9b6f1d611ac2df8c519d6024abdb506b4b166b93f636a severity arch_context x86 scan_context file, memory license Elastic License v2 os windows $a1    Password: %s $a2   * Session Key   : 0x%08x - %s $a3    * Injecting ticket :  $a4  ## / \ ##  /*** Benjamin DELPY `gentilkiwi` ( benjamin@gentilkiwi.com ) $a5 Remove mimikatz driver (mimidrv) $a6 mimikatz(commandline) # %s $a7   Password: %s $a8  - SCardControl(FEATURE_CCID_ESC_COMMAND) $a9  * to 0 will take all 'cmd' and 'mimikatz' process $a10 ** Pass The Ticket ** $a11 -> Ticket : %s $a12 Busylight Lync model (with bootloader) $a13 mimikatz.log $a14 Log mimikatz input/output to file $a15 ERROR kuhl_m_dpapi_masterkey ; kull_m_dpapi_unprotect_domainkey_with_key $a16 ERROR kuhl_m_lsadump_dcshadow ; unable to start the server: %08x $a17 ERROR kuhl_m_sekurlsa_pth ; GetTokenInformation (0x%08x) $a18 ERROR mimikatz_doLocal ; "%s" module not found ! $a19 Install and/or start mimikatz driver (mimidrv) $a20 Target: %hhu (0x%02x - %s) $a21 mimikatz Ho, hey! I'm a DC :) $a22 mimikatz service (mimikatzsvc) $a23 [masterkey] with DPAPI_SYSTEM (machine, then user):  $a24 $http://blog.gentilkiwi.com/mimikatz 0 $a25  * Username : %wZ Windows_Hacktool_Mimikatz_674fd079 674fd079-f7fe-4d89-87e7-ac11aa21c9ed b8f71996180e5f03c10e39eb36b2084ecaff78d7af34bd3d0d75225d2cfad765 2021-04-14 description Detection for default mimikatz memssp module D0 8  Hx :  L% 0  P8 x  T]    X% w  \Z \  `% w  dZ 	  lZ 
  h% w  $b1 mimiǄ$�   lsa.Ǆ$�   log Windows_Hacktool_Mimikatz_355d5d3a 355d5d3a-e50e-4614-9a84-0da668c40852 9a23845ec9852d2490171af111612dc257a6b21ad7fdfd8bf22d343dc301d135 Detection for Invoke-Mimikatz 945245ca795e0a3575ee4fdc174df9d377a598476c2bf4bf0cdb0cde4286af96 $PEBytes32 = "TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAEAAA4fug4AtAnNIbgBTM0hVGhpcyBwc $PEBytes64 = "TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAEAAA4fug4AtAnNIbgBTM0hVGhpcyBwc Write-BytesToMemory -Bytes $Shellcode $b2 -MemoryAddress $GetCommandLineWAddrTemp $b3 -MemoryAddress $GetCommandLineAAddrTemp $c1 Invoke-Command -ScriptBlock $RemoteScriptBlock -ArgumentList @($PEBytes64, $PEBytes32, "Void", 0, "", $ExeArgs) $c2 Invoke-Command -ScriptBlock $RemoteScriptBlock -ArgumentList @($PEBytes64, $PEBytes32, "Void", 0, "", $ExeArgs) -ComputerNam $c3 at: http://blog.gentilkiwi.com $c4 on the local computer to dump certificates. $c5 Throw "Unable to write shellcode to remote process memory." $c6 -Command "privilege::debug exit" -ComputerName "computer1" $c7 dump credentials without $c8 #The shellcode writes the DLL address to memory in the remote process at address $LoadLibraryARetMem, read this memory $c9 two remote computers to dump credentials. $c10 #If a remote process to inject in to is specified, get a handle to it Windows_Hacktool_Mimikatz_71fe23d9 71fe23d9-ee1a-47fb-a99f-2be2eb9ccb1a 22b1f36e82e604fc3a80bb5abf87aef59957b1ceeb050eea3c9e85fb0b937db1 2022-04-07 Subject: Benjamin Delpy 856687718b208341e7caeea2d96da10f880f9b5a75736796a1158d4c8755f678 file $subject_name Windows_Hacktool_Mimikatz_b393864f b393864f-a9b0-47e7-aea4-0fc5a4a22a82 bfd497290db97b7578d59e8d43a28ee736a3d7d23072eb67d28ada85cac08bd3 Subject: Open Source Developer, Benjamin Delpy 8206ce9c42582ac980ff5d64f8e3e310bc2baa42d1a206dd831c6ab397fbd8fe �       ?B          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (     `     �     �          @                  �      BB   x     �     �           X     �     �           8     p     �     �               1      P         �      ?B   �     �          1-   ?B   �     0	     h	          1l   ?B   �	     �	     
     H
     �
     �
     �
     (     `     �                 ,      ?<�?\j�?d/      �         ,      ?<�?\j�?d/               ����U���  �B�e�n�j�a�m�i�n� �D�e�l�p�y��y�p�l�e�D� �n�i�m�a�j�n�e�B�  ���U������U���  �O�p�e�n� �S�o�u�r�c�e� �D�e�v�e�l�o�p�e�r�,� �B�e�n�j�a�m�i�n� �D�e�l�p�y��y�p�l�e�D� �n�i�m�a�j�n�e�B� �,�r�e�p�o�l�e�v�e�D� �e�c�r�u�o�S� �n�e�p�O�  ���U���                    *                                                                   ^      ~      �      $     �      �   n  #8  $   ,  &<   ,  (r  )j      �  )�      .      0�  &�   (  &�  &           �      <     @     H     &, A  1  9     E"      J     I  J�      P M      ^     Q  NZ      ` Un  V$  UD   j  Y      d     ]      ~  T  a  bz      [�  e�  f,  [�   v  i4  j  Vh fN  m      � p�  qT   0  sv  t0  u(  v@      � y�  fJ  ud      %f     �     %|     � t� q�      � y s�  t�  in ev ��      �     �     ft 1� ^8     � fz t� 2� ;�     �             [V s�            4�  @      7� mF     � i� f�         1�          $  z> w�  4  &� �  ,   �  vN  J           �   �               ` v�  �  �      D          �  /�     X         +         &"  v  d     f  ,  j     l     n  4  t     v     j�  0  -8     z .@     | #^    �     � !~     1R /Z     x� 0\     �     �  (  � ;T 
� d�  ,  Q 9V 5` 3b #�  v  �     �     �    p�     � o�     n� /� t� s u�  v  �     f o ]H                   s4      �  n(  �          ~       �   8           @          ^   �      xF xL  �   �  yN                      8   d     xh q�          T      �B  @          �   @                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 8                                                           4                                               .                   ,                               6               *   '   &   !                                 0   /   2   )   (         %                                          	   1      5                 3   "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ������������������������          8   ������������������������.          p   ������������������������          �   ������������������������          �   ������������������������<            ������������������������          P  ����������������
                 �  ������������������������          �  ������������������������0          �  ������������������������          0  ����������������
   h  
          h  ������������������������.          �  ����������������
   �             �  ������������������������"            ������������������������          H  ������������������������|          �  ������������������������d          �  ������������������������6          �  ������������������������          (  ����������������
   �            `  ������������������������          �  ������������������������8          �  ������������������������b            ������������������������          @  ������������������������
          x  ������������������������          �  ������������������������          �  ������������������������             ������������������������          X  ������������������������          �  ������������������������          �  ������������������������             ������������������������          8  ������������������������          p  ������������������������          �  ������������������������          �  ����������������
   x              ����������������
   P            P  ������������������������          �  ������������������������
          �  ������������������������
          �  ������������������������          0	  ������������������������          h	  ����������������
   �            �	  ������������������������A          �	  ����������������
   �  A          
  ����������������
   �  
          H
  ������������������������+          �
  ������������������������;          �
  ������������������������:          �
  ������������������������          (  ������������������������          `  ������������������������)          �  ������������������������2          �            W   ��������               X        
   p            8                                          (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     @     H     `     h     0                
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
   �                       (      1      :      C      L      U      ^      g      p      y      �      �      �      �      �      �      �      �      �      �      �      �      8      @      P      H      X      �     �     �     �     �     �     �     �                      (     @     H     `     h     �     �     �     �     �     �     �     �                �     �     �  
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
                       &     /     8     A     J     S     \     e     n     w     �     h      p      �      x      �            (     @     H     `     h     �     �     �     �     �     �     �     �                      (     @     H     `     h     �     �     �     �     �     �     �  
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
   �     X     @     H  
   �  
      
     
        �     x     �  
      
   (  
   0  
   8     �     �     �  
   H  
   P  
   X  
   `     �     �     �     �     �     �                    "     +     4     =     F     O     �      �      �      �      �      �     �     �     �                      (     @     H     `     h     �     �     �     �     �     �     �     �                      (     @     H           �     �  
   p  
   x  
   �  
   �     �     �      �      �      �      �      `     h     �     �     �     �     �     �     �     �                      (     @     H     `     h     �     �     �     �     �     �     �     �     8           (  
   �  
   �  
   �  
   �     �  