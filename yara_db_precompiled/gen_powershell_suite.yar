YARA�          �       �   6      �        @  V	         n	      A	  �      <  �          �         �         �#      �  �'                                     ��������                                6  ��������         �             ��������������������������������������������   /      ;                     u      }                     �      �                     �                          8     =                    H     N                    �     �                    �     �                         #                    d     j                    �     �                    �     �                    9     ?                    �     �                    �     �                                             W     ^                   /      O                    u      }                     �      �                     �                          8     =                    H     �                �      �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  �     �ں�ں��    ,      �  ��������           �  �     �ں�ں��    A         ��������           �  �     �ں�ں��    N      B  ��������           �  �     �ں�ں��    N      �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��            ��������           �  	  	   �ں�ں��          )  ��������           �  �  
   �ں�ں��          B  ��������           �  �     �ں�ں��          [  ��������           �  �     �ں�ں��    "      u  ��������           �  �     �ں�ں��    T      �  ��������           �  	     �ں�ں��    1      �  ��������           �  	     �ں�ں��            ��������           �  	     �ں�ں��    !      7  ��������           �  �     �ں�ں��    ?      Y  ��������           �  	     �ں�ں��    ,      �  ��������           �  	     �ں�ں��    5      �  ��������           �  �     �ں�ں��    9      �  ��������           �  	     �ں�ں��         B  ��������           �  �     �ں�ں��   A      �  ��������           �  �     �ں�ں��   n      �  ��������           �      ��������������������default PowerShell_Suite_Hacktools_Gen_Strings description Detects strings from scripts in the PowerShell-Suite repo license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE author Florian Roth (Nextron Systems) reference https://github.com/FuzzySecurity/PowerShell-Suite date 2017-12-27 hash1 79071ba5a984ee05903d566130467483c197cbc2537f25c1e3d7ae4772211fe0 hash2 db31367410d0a9ffc9ed37f423a4b082639591be7f46aca91f5be261b23212d5 hash3 4f51e7676a4d54c1962760ca0ac81beb28008451511af96652c31f4f40e8eb8e hash4 17ac9bb0c46838c65303f42a4a346fcba838ebd5833b875e81dd65c82701d8a8 hash5 fa33aef619e620a88ecccb990e71c1e11ce2445f799979d23be2d1ad4321b6c6 hash6 5542bd89005819bc4eef8dfc8a158183e5fd7a1438c84da35102588f5813a225 hash7 c6a99faeba098eb411f0a9fcb772abac2af438fc155131ebfc93a00e3dcfad50 hash8 a8e06ecf5a8c25619ce85f8a23f2416832cabb5592547609cfea8bd7fcfcc93d hash9 6aa5abf58904d347d441ac8852bd64b2bad3b5b03b518bdd06510931a6564d08 hash10 5608f25930f99d78804be8c9c39bd33f4f8d14360dd1e4cc88139aa34c27376d hash11 68b6c0b5479ecede3050a2f44f8bb8783a22beeef4a258c4ff00974f5909b714 hash12 da25010a22460bbaabff0f7004204aae7d830348e8a4543177b1f3383b2c3100 $ [!] NtCreateThreadEx failed.. [?] Executing mmc.. [!] This method is only supported on 64-bit! $LNK = [ShellLink.Shortcut]::FromByteArray($LNKHeader.GetBytes()) $CallResult = [UACTokenMagic]::TerminateProcess($ShellExecuteInfo.hProcess, 1) [!] Unable to open process (as Administrator), this may require SYSTEM access. [!] Error, NTSTATUS Value:  [!] UAC artifact:  [>] Process dump success! [!] Process dump failed! [+] Eidolon entry point: Wait for shellcode to run $Command = Read-Host "`nSMB shell" Use Netapi32::NetSessionEnum to enumerate active sessions on domain joined machines. Invoke-CreateProcess -Binary C:\Windows\System32\ [?] Thread belongs to:  [?] Operating system core count:  [>] Calling Advapi32::LookupPrivilegeValue --> SeDebugPrivilege Calling Advapi32::OpenProcessToken --> LSASS [!] Mmm, something went wrong! GetLastError returned: if (($FileBytes[0..1] | % {[Char]$_}) -join '' -cne 'MZ') PowerShell_Suite_Eidolon Detects PowerShell Suite Eidolon script - file Start-Eidolon.ps1 C:\PS> Start-Eidolon -Target C:\Some\File.Path -Mimikatz -Verbose [Int16]$PEArch = '0x{0}' -f ((($PayloadBytes[($OptOffset+1)..($OptOffset)]) | % {$_.ToString('X2')}) -join '') �       %A � f/�   ?B          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (     `                  S      ? �@fud/   %A  � f/-   ?B   �     �                      �                                                                                                                                         #               %"                           "          2                  7  7                  ;  *X  40      58  4:      D  ?.  @,  !t  !v  %^  .Z  3V  "�  /b         3h                             X
  -�          \      ^      /�      b      ;x  a   ;�  b$  ^H      j  d&  ]`  m  n  d6  p  `@  d<  fB  ^L  ^N  v  o*  o4  ^�  o2  s(  jJ  hT  uD  o\  ^�  Qf  Tl  v>      f�  e�      uR  ;�  ;�  "�  ;�  ;�  u�  u�  c�  ]�  ;�                      /     ur              ~j                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            	                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ������������������������          8   ������������������������          p   ������������������������)          �   ������������������������          �   ������������������������            ������������������������.          P  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          0  ������������������������          h  ������������������������          �  ������������������������          �  ������������������������            ������������������������1          H  ������������������������          �  ������������������������           �  ����������������
               �  ����������������
   �            (  ������������������������          `  ������������������������$          �  ����������������
   �            �  ������������������������            ������������������������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     @     H     `     h     �     �     �     �     �     �     �     �                0                
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
   8           "      +      4      =      F      O      X      a      j      s      |      �      �      �      �      �      �      �      �      �      8      @      P      H      X            (     @     H     `     h     �     �     �     �     �     �     �     �     �  
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
   �                  