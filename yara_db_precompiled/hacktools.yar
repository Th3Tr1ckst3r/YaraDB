YARA�          �       P  �      @  6      h  �         �      c          !          !         !         !       H  i#                                        %                                        4     �      �                          >                                    +     �     P                    [     t           �                    }     �     �     0             ��������������������������������������������   :      A                     m      y                     �      �                     �      �                     L     W                   :      A                     m      I                    �      �                     �      `                   :      A                     m      S                    �      �                     �      �                   :      A                     m      @                    �      �                     �      q                   :      A                     m      �                    �      �                     �      �                    L                        :      A                     m      �                    �      �                     �      �                      �ں�ں��    5      �  ��������           �       �ں�ں��          �  ��������           �       �ں�ں��            ��������                  �ں�ں��   I      �  ��������           �  	     �ں�ں��   
        ��������           �       �ں�ں��         �  ��������           �       �ں�ں��   ;        ��������           �       �ں�ں��         C  ��������           �       �ں�ں��         O  ��������               	   �ں�ں��   
      r  ��������           �    
   �ں�ں��         W  ��������           �      ��������������������default rdp_enable_multiple_sessions capability hacktool  author Thomas Barabosch, Deutsche Telekom Security description Enable RDP/Multiple User Sessions date 2022-01-14 reference https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-terminalservices-localsessionmanager-fdenytsconnections reference2 https://serverfault.com/questions/822503/enable-rdp-for-multiple-sessions-command-line-option $a HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server $b fDenyTSConnections $c fSingleSessionPerUser rdp_change_port_number capability hacktool  Change RDP port number https://helgeklein.com/blog/programmatically-determining-terminal-server-mode-on-windows-server-2008/ HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp PortNumber allow_rdp_session_without_password capability hacktool  Remote Desktop Connection without password, e.g. seen in SDBBot / TA505 https://www.speedguide.net/faq/how-to-connect-using-remote-desktop-without-a-password-435 LimitBlankPasswordUse get_windows_proxy_configuration capability hacktool  Queries Windows Registry for proxy configuration https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-ie-clientnetworkprotocolimplementation-hklmproxyserver Software\Microsoft\Windows\Currentversion\Internet Settings ProxyEnable ProxyServer cn_utf8_windows_terminal capability hacktool  This is a (dirty) hack to display UTF-8 on Windows command prompt. https://dev.to/mattn/please-stop-hack-chcp-65001-27db https://www.bitdefender.com/files/News/CaseStudies/study/401/Bitdefender-PR-Whitepaper-FIN8-creat5619-en-EN.pdf chcp 65001 potential_termserv_dll_replacement capability hacktool  May replace termserv.dll to allow for multiple RDP sessions https://www.mysysadmintips.com/windows/clients/545-multiple-rdp-remote-desktop-sessions-in-windows-10 termsrv.dll L              /      8   1           /      p           /      BB   �      �                                    8      BB   P     �     �                          �                  0         �                  "      &      (      .          6      :                                                              l          x          |              �      �                  �      �              7      �  6$                                  1H              6D                  L              /v  Q  E8          1z                          M<              Ed  T4  b                  g          Mp      Nh      n  T`  C�      j,      t  s          wB  s*  p2  fP      s0  jR  s>          fj      j^  ]~  sJ      pN      sV  uZ  s\                  ]�                                                  o�      y�          u�  o�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
             	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ������������������������              ������������������������          8   ������������������������          8   ������������������������          p   ������������������������          p   ������������������������          �   ����������������
                 �   ����������������
   (             �   ������������������������            ������������������������            ������������������������          P  ������������������������	          P  ������������������������          �  ������������������������          �  ������������������������          �  ����������������
               �  ����������������
   0            �  ������������������������	          �  ������������������������          0  ������������������������          0  ������������������������                                                    (                          (      @      H      `      h      �      �      0                
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
   �      
            )      8      8      @      P      H      X      �      �      �      �      �      �                 �      �      �   
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
   X     X      a      h      p      �      x      �            (     @     H     `     h     �     �     H     0     8  
   h  
   p  
   x  
   �  
   �  
   �  
   �  
   �     �      �      �      �      �      �      �     �     �     �     �     �                �     h     p  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     �     �     �  
     
     
     
      
   0  
   8  
   @  
   H     �     �     �  
   X  
   `  
   h  
   p  
   �  
   �  
   �  
   �     �      �      �      �      �      �      �      �            (     @     H     `     h     �     �     �     �     (            
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     �      �                           �     �     �     �                      (     `     H     P  
   �  
      
     
     
      
   (  
   0  
   8     �   