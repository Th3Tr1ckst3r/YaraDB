YARA�          �       `         �   �      �   �         �      �  K      N   �          �         �         �      �   9                                     ��������                         ��������������������������������������������   +      7                     ]      d                     o      t                           �                     �      �                 �      �ں�ں��          $  ��������              �     �ں�ں��          >  ��������           :  �     �ں�ں��    !      U  ��������           Q  �     �ں�ں��    1      {  ��������           w      ��������������������default HKTL_Reverse_Connect_TCP_PTY_Shell description Detects reverse connect TCP PTY shell author Jeff Beley date 2019-10-19 hash1 cae9833292d3013774bdc689d4471fd38e4a80d2d407adf9fa99bc8cde3319bf reference https://github.com/infodox/python-pty-shells/blob/master/tcp_pty_backconnect.py $s1 os.dup2(s.fileno(),1) $s2 pty.spawn("/bin/") $s3 os.putenv("HISTFILE",'/dev/null') $s4 socket.socket(socket.AF_INET, socket.SOCK_STREAM) M       %@ f/6   ?B          8      p      �                   �                                                                                                                                          #                      )  #  )          *  /  -  (      -                          0  0          2                   B
                                  G                                                                                                              `                          o                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ������������������������          8   ������������������������          p   ������������������������          �   ������������������������                                                    (                          (      @      H      `      h      �      �      0                
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
   �                   )      2   