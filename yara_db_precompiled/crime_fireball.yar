YARA�          �       �  �      @  �	      �
  F         ^      K
  �      *  �"          �"        �.        �>      �  _F                                     ��������                                �  ��������   �                          �  ��������   �     �                    �  ��������   `     �                    �  ��������         �                    J  ��������         x                    4  ��������   �     �                      ��������   �     �                    �  ��������   `     h	             ��������������������������������������������         $                     O      W                     �      �                     �      �                     �      �                                                   �                    O      W                     �      �                     �      �                     �      �                          )                         �                    O      W                     �      �                     �      �                     �      �                       ��������2                                               �                    O      W                     �      �                     �      �                     �      �                          �                         �                    O      W                     �      �                     �      �                     �      �                     �     �                         �                         Z                    O      W                     �      �                     �      �                     �      �                          �                         D                    O      W                     �      �                     �      �                     �      �                     �     �                         o                                             O      W                     �      �                     �      �                     �      �                          J                         	                    O      W                     �      �                     �      �                     �      �                     �     �                         5	                �      �ں�ں��          Q  ��������           M  �     �ں�ں��          d  ��������           `  �     �ں�ں��    5      }  ��������           y  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  	     �ں�ں��         n  ��������           j  �     �ں�ں��         �  ��������           �  �     �ں�ں��   
      �  ��������           M  �     �ں�ں��         �  ��������           `  �  	   �ں�ں��         �  ��������           y  �  
   �ں�ں��         �  ��������           �  �     �ں�ں��         �  ��������           �  �     �ں�ں��         Y  ��������           M  �     �ں�ں��         u  ��������           `  �     �ں�ں��   *      �  ��������           y  �     �ں�ں��         �  ��������           �  �     �ں�ں��   P      @  ��������           �  �     �ں�ں��   `      �  ��������           �  �     �ں�ں��   .      �  ��������           �  �     �ں�ں��         .  ��������           )  �     �ں�ں��   0      H  ��������           C  �     �ں�ں��         ~  ��������           y  	     �ں�ں��           ��������           M  �     �ں�ں��   
      7  ��������           `  �     �ں�ں��         B  ��������           y  	     �ں�ں��   
      �  ��������           M  �     �ں�ں��         �  ��������           `       �ں�ں��   
      �  ��������           y  �     �ں�ں��   
      �  ��������           �  �     �ں�ں��   &      �  ��������           �  �     �ں�ں��         #  ��������           �  	     �ں�ں��   $      �  ��������           j  �      �ں�ں��         �  ��������           M  �  !   �ں�ں��         �  ��������           `  �  "   �ں�ں��         �  ��������           y  �  #   �ں�ں��         �  ��������           �  	  $   �ں�ں��         �  ��������           j  �  %   �ں�ں��   !      �  ��������           M  �  &   �ں�ں��         �  ��������           `  �  '   �ں�ں��   	      �  ��������           y  �  (   �ں�ں��   	      �  ��������           �  �  )   �ں�ں��         �  ��������           �  �  *   �ں�ں��   	      �  ��������           �  �  +   �ں�ں��   Q      v	  ��������           j  �  ,   �ں�ں��         �	  ��������           �  �  -   �ں�ں��   1      �	  ��������           �	  	  .   �ں�ں��         
  ��������           
  �  /   �ں�ں��         -
  ��������           )
      ��������������������default Fireball_de_svr description Detects Fireball malware - file de_svr.exe license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE author Florian Roth (Nextron Systems) reference https://goo.gl/4pTkGQ date 2017-06-02 hash1 f964a4b95d5c518fd56f06044af39a146d84b801d9472e022de4c929a5b8fdcc $s1 cmd.exe /c MD  $s2 rundll32.exe "%s",%s $s3 http://d12zpbetgs1pco.cloudfront.net/Weatherapi/shell $s4 C:\v3\exe\de_svr_inst.pdb $s5 Internet Connect Failed! Fireball_lancer Detects Fireball malware - file lancer.dll 7d68386554e514f38f98f24e8056c11c0a227602ed179d54ed08f2251dc9ea93 $x1 \instlsp\Release\Lancer.pdb $x2 lanceruse.dat Lancer.dll RunDll32.exe " Micr.dll AG64.dll ",Start QQBrowser Not malware but suspicious browser - file QQBrowser.exe score adcf6b8aa633286cd3a2ce7c79befab207802dec0e705ed3c74c043dabfc604c TerminateProcessWithoutDump .Downloader.dll Software\Chromium\BrowserCrashDumpAttempts QQBrowser_Broker.exe chrome_elf Detects Fireball malware - file chrome_elf.dll e4d4f6fbfbbbf3904ca45d296dc565138a17484c54aebbb00ba9d57f80dfe7e5 schtasks /Create /SC HOURLY /MO %d /ST 00:%02d:00 /TN "%s" /TR "%s" /RU "SYSTEM" $s6 aHR0cDovL2R2Mm0xdXVtbnNndHUuY2xvdWRmcm9udC5uZXQvdjQvZ3RnLyVzP2FjdGlvbj12aXNpdC5jaGVsZi5pbnN0YWxs $s7 QueryInterface call failed for IExecAction: %x $s10 %s %s,Rundll32_Do %s $s13 Failed to create an instance of ITaskService: %x $s16 Rundll32_Do Fireball_regkey Detects Fireball malware - file regkey.exe modified 2022-12-21 fff2818caa9040486a634896f329b8aebaec9121bdf9982841f0646763a1686b \WinMain\Release\WinMain.pdb ScreenShot WINMAIN Fireball_winsap Detects Fireball malware - file winsap.dll c7244d139ef9ea431a5b9cc6a2176a6a9908710892c74e215431b99cd5228359 aHR0cDovL2 %s\svchost.exe -k %s \SETUP.dll WinSAP.dll Error %u in WinHttpQueryDataAvailable. UPDATE OVERWRITE Fireball_archer Detects Fireball malware - file archer.dll 9b4971349ae85aa09c0a69852ed3e626c954954a3927b3d1b6646f139b930022 \archer_lyl\Release\Archer_Input.pdb Archer_Input.dll InstallArcherSvc %s_%08X d\\.\PhysicalDrive%d clearlog Detects Fireball malware - file clearlog.dll 14093ce6d0fe8ab60963771f48937c669103842a0400b8d97f829b33c420f7e3 \ClearLog\Release\logC.pdb C:\Windows\System32\cmd.exe /c "" logC.dll hhhhh.exe ttttt.exe Logger Name: cle.log.1 Fireball_gubed Detects Fireball malware - file gubed.exe e3f69a1fb6fcaf9fd93386b6ba1d86731cd9e5648f7cff5242763188129cd158 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MRT.exe tIphlpapi.dll $x3 http://%s/provide?clients=%s&reqs=visit.startload $x4 \Gubed\Release\Gubed.pdb $x5 d2hrpnfyb3wv3k.cloudfront.net e       ? �@MZd/   %A �. f/?   ?B          8      p      �      �                   �      ? �@MZd/   %A @ f/c   ?B        P          1?   ?B   �     �     �     0     h          1Q   ?B        P     �     �     �     0     h                 [      ? �@MZd/   %A @ f/5   BB   �     �          H                 n      ? �@MZd/   %A `	 f/H   ?B   �     �     �     (     `     �                 R      ? �@MZd/   %A � f/,   BB   �          @                 n      ? �@MZd/   %A `	 f/H   ?B   x     �     �           X     �                 u      ? �@MZd/   %A @ f/O      �  1?   ?B   �           8     p     �                 �      ? �@MZd/   %A � f/      �  1Q   ?B   �          P     �     �     �     0	                 e      ? �@MZd/   %A � f/?   ?B   h	     �	     �	     
     H
                 �        h      x      n      j      �      t      �          �      �          �      �      �      �          �      �      #H      �  &*      �      �      �       /@  0b      
 3:                      �      ;Z                       B                   z  HN      J                                    T2  UD  V       X.          B�     ]p       l  `      b<  c(  dl  e  /P I�  4> i$  jR  N�  &� mz  n  h~  p  4 /�     t6  u
  vV  w  f�  4b  N   <  D�      o�   .  H�  m�   R  DB  p      -�     f�      ]     n�  d�      SL X�  7� Q�        J�  6  ]� E� p�  b�      f& hT Qf           j f n( S|     "     $     &     f\   & d�     *     t, f� f� sX  V  0� 3
    nv t�     4  p  , q�     s� f�     0     4 s6 o�     : m�  & /( T� t�     >    @ d�  l  D     H     /<     N     P /B     T     X     Z j� e  z  1F  R  s� 1L vp o�     e  l  b     d     e    w�  2  l ;J     t     v     z  :  s        nV ;^ u2 `8     �             �       @       �  ;`  �   
   �  cf         @   �       @               Z              "�                4x  Z   Z       �   (     l   �  /�      6   
  �       t  /�             @   @                                                      fh                 dj                     op                                 `~                         tr                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 0   ,   )   +   '   &   $       #   "   (       !                           *      -                                
      /   %                    .                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ������������������������          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������          �  ������������������������          �  ����������������
   (             �  ������������������������          0  ������������������������          h  ������������������������          �  ������������������������          �  ������������������������            ������������������������          H  ������������������������          �  ������������������������V          �  ������������������������          �  ������������������������+          (  ����������������
   @            `  ������������������������-          �  ������������������������	          �  ������������������������            ������������������������          @  ������������������������          x  ������������������������          �  ������������������������          �  ������������������������             ������������������������          X  ������������������������&          �  ������������������������          �  ������������������������             ������������������������          8  ������������������������          p  ������������������������          �  ������������������������          �  ������������������������            ������������������������$          P  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          0	  ������������������������          h	  ������������������������          �	  ������������������������          �	  ������������������������          
  ������������������������          H
  ������������������������       	   0                                          (                          (      @      H      `      h      �      �      �      �      0                
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
   �      &      /      8      A      J      8      @      P      H      X      �      �      �      �                       (     @     H     `     h     H     0     8  
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
   �     �      �      �      �      �      �      �      �      �            	               $     h      p      �      x      �      �     �     �     �     �     �     �     �                      (     @     H     �     �     �  
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
   p     d     m     v          �      �      �      �      �      `     h     �     �     �     �     �     �     �     �                �     �     �  
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
   `     �     �     �     �     �     �     �      �      �      �      �            (     @     H     `     h     �     �     �     �     �     �     �     �           �     �  
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
   �     -     6     ?     �                                            (     @     H     `     h     �     �     �     �     �     �     �  
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
   �     �     �     �     �     �     �     (     0     @     8     H     �     �     �     �                      (     @     H     `     h     �     �     �     �     �  
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
   �     �     �                    !     X     `     p     h     x     �     �     �     �     �     �                      (     @     H          �        
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
        �     �     �  
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
   �     `     s     |     �     �     �     �     �     �     �     �     �     �     `     h     �     �     �     �     �     �     �     �                      (     �	     �	     �	  
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
   p     �     �     �            