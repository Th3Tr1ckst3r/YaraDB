YARA�          �       `         �   �      �  �         �      �  k        q	          q	         q         q      h  �                            	         ��������                         ��������������������������������������������   &      2                     H      O                     _      i                     �      �                     �      �                 �      �ں�ں��    |      �   ��������           �   �     �ں�ں��    w      i  ��������           d  �     �ں�ں��    e      �  ��������           �  �     �ں�ں��    E      Q  ��������           L  �     �ں�ں��    _      �  ��������           �  �     �ں�ں��    e        ��������           �  �     �ں�ں��    W      l  ��������           g  �     �ں�ں��    o      �  ��������           �  �     �ں�ں��    v      >  ��������           9      ��������������������default infected_01_26_19_byob_server description byob - file server.py author Brian Laskowski reference https://github.com/Hestat/lw-yara/ date 2019-01-26 hash1 ae491b5c7ae7e5a3da29da6b261a686372f5044f9d93c0d722b0fc7fb21ab26f $x2 globals()['module_handler'] = subprocess.Popen('{} -m SimpleHTTPServer {}'.format(sys.executable, options.port + 1), 0, None $s10 _ = os.popen("taskkill /pid {} /f".format(os.getpid()) if os.name == 'nt' else "kill -9 {}".format(os.getpid())).read() $s11 util.log("Invalid input type (expected '{}', received '{}')".format(socket.socket, type(connection))) $s13 Execute code directly in the context of the currently running process $s15 task = globals()['c2'].database.handle_task({'task': command, 'session': self.info.get('uid')}) $s16 util.display("Hint: show usage information with the 'help' command\n", color='white', style='normal') $s17 util.log("{} error: invalid data type '{}'".format(self.display.func_name, type(info))) $s18 util.log("unable to locate 'site-packages' in sys.path (directory containing user-installed packages/modules)") $s19 result = globals()['c2'].commands[cmd]['method'](action) if len(action) else globals()['c2'].commands[cmd]['method']()       ? �@#!d/   %A � f/}   ?B               /b   BB          8      p      �      �           P     �     �          1b   BB          8      p      �      �           P     �     �                  �                                                             
                                                                                                #  )
      #  #           *  )  (  #$                          -(  -,  (2              /.                          F                                                                                          ]                                      \&      h          f              p  o  d*                                      |  y              ~                  |"                                  ~0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ������������������������          8   ������������������������\          p   ������������������������,          �   ������������������������          �   ����������������
                   ������������������������F          P  ������������������������          �  ������������������������
          �  ����������������
   �             	                                          (                          (      @      H      `      h      �      �      0                
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
   X     &      ?      H      Q      Z      c      l      u      ~      �      �      �      �      �      �      �      �      �      �   