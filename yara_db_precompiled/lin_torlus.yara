YARA�          �       �   f      �   &      �  �         �      #	        �  �           �         �,        �<      �  �I                                                                     *      �     �     @      �              	      M     [     �      �             ��������������������������������������������   '      .                     F      R                    '      .                     F      �                   '      .                     F      j                	      �ں�ں��          �   ��������           �   	     �ں�ں��    
      �   ��������           �   	     �ں�ں��          �   ��������           �   	     �ں�ں��          �   ��������           �   	     �ں�ں��          �   ��������           �   	     �ں�ں��          �   ��������           �   	     �ں�ں��          �   ��������           �   	     �ں�ں��          �   ��������           �   	     �ں�ں��    	        ��������              	  	   �ں�ں��            ��������             	  
   �ں�ں��    #      (  ��������              	     �ں�ں��          T  ��������           L  	     �ں�ں��          r  ��������           j  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��           �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��    	        ��������             	     �ں�ں��    F         ��������             	     �ں�ں��          o  ��������           g  	     �ں�ں��    #      �  ��������           �  	     �ں�ں��    #      �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��    "        ��������             	     �ں�ں��          :  ��������           2  	     �ں�ں��    
      b  ��������           Z  	     �ں�ں��          u  ��������           m  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��          �  ��������           �  	     �ں�ں��         �   ��������           �   	     �ں�ں��   
      �   ��������           �   	      �ں�ں��         �   ��������           �   	  !   �ں�ں��         �   ��������           �   	  "   �ں�ں��         �   ��������           �   	  #   �ں�ں��         �   ��������           �   	  $   �ں�ں��           ��������           �   	  %   �ں�ں��         �   ��������           �   	  &   �ں�ں��         �   ��������              	  '   �ں�ں��   	        ��������             	  (   �ں�ں��         "  ��������             	  )   �ں�ں��         2  ��������           *  	  *   �ں�ں��   m      A  ��������           :  	  +   �ں�ں��   X      �  ��������           �  	  ,   �ں�ں��   s        ��������             	  -   �ں�ں��   m      �  ��������           �  	  .   �ں�ں��   �        ��������           �  	  /   �ں�ں��   m      A  ��������           �  	  0   �ں�ں��   X      �  ��������           �  	  1   �ں�ں��   s        ��������           �  	  2   �ں�ں��   m      �  ��������           �  	  3   �ں�ں��   9      �  ��������           �  	  4   �ں�ں��   .         ��������           �  	  5   �ں�ں��   >      6  ��������           /  	  6   �ں�ں��         u  ��������              	  7   �ں�ں��         {  ��������           L  	  8   �ں�ں��         �  ��������           j  	  9   �ں�ں��         �  ��������           �  	  :   �ں�ں��         �  ��������           �  	  ;   �ں�ں��         �  ��������           �  	  <   �ں�ں��          �  ��������           �  	  =   �ں�ں��         �  ��������             	  >   �ں�ں��   	        ��������             	  ?   �ں�ں��         �  ��������           g  	  @   �ں�ں��         �  ��������           �  	  A   �ں�ں��         �  ��������           �  	  B   �ں�ں��         �  ��������           �  	  C   �ں�ں��         �  ��������           �  	  D   �ں�ں��   
      �  ��������           �  	  E   �ں�ں��         �  ��������           �  	  F   �ں�ں��           ��������             	  G   �ں�ں��         7  ��������           -  	  H   �ں�ں��         �   ��������           �   	  I   �ں�ں��         �  ��������           �   	  J   �ں�ں��         �  ��������           �   	  K   �ں�ں��         �  ��������           �   	  L   �ں�ں��         �  ��������              	  M   �ں�ں��         �  ��������           L  	  N   �ں�ں��   
      �  ��������           j  	  O   �ں�ں��   1      �  ��������           �  	  P   �ں�ں��         	  ��������           �      ��������������������default torlus_20150112 malware linux  author @h3x2b <tracker@h3x.eu> description Detects Torlus/LizKebab/GayFgt/Bashdoor samples - 20150112 $cmd_00 PING $cmd_01 GETLOCALIP $cmd_02 SCANNER $cmd_03 HOLD $cmd_04 JUNK $cmd_05 UDP $cmd_06 TCP $cmd_07 KILLATTK $cmd_08 LOLNOGTFO $cmd_09 EMAIL $msg_01 MAC: %02X:%02X:%02X:%02X:%02X:%02X
 $msg_02 Failed to connect...
 $msg_03 Link closed by server.
 $msg_04 REPORT %s:%s: $msg_05 Failed opening raw socket. $msg_06 Failed setting raw headers mode. $msg_07 Invalid flag "%s" $msg_08 My IP: %s $msg_09 EMAIL <target email> <mx host> <subject no spaces> <message no spaces> $msg_10 HOLD <ip> <port> <time> $msg_11 HOLD Flooding %s:%d for %d seconds. $msg_12 JUNK Flooding %s:%d for %d seconds. $msg_13 UDP Flooding %s for %d seconds. $msg_14 UDP Flooding %s:%d for %d seconds. $msg_15 TCP Flooding %s for %d seconds. $msg_16 Killed %d. $msg_17 None Killed. $msg_18 BUILD %s $msg_19 BOGOMIPS $msg_20 /proc/cpuinfo torlus_20161017 malware linux  Detects Torlus/LizKebab/GayFgt/Bashdoor samples - 20161017 COMBO $cmd_10 GTFOFAG $cmd_11 FATCOCK $ua_01 Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729) $ua_02 Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.1) Gecko/20090718 Firefox/3.5.1 $ua_03 Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.219.6 Safari/532.1 $ua_04 Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; InfoPath.2) $ua_05 Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30729) $ua_06 $ua_07 $ua_08 $ua_09 $ua_10 Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 6.0; en-US) $ua_11 Mozilla/4.0 (compatible; MSIE 6.1; Windows XP) $ua_12 Opera/9.80 (Windows NT 5.2; U; ru) Presto/2.5.22 Version/10.51 ogin: assword: ncorrect HTTP REPORT %s:%s:%s $shell_01 rm -rf /var/log/wtmp $shell_02 rm -rf /tmp/* $shell_03 history -c $shell_04 rm -rf ~/.bash_history $shell_05 rm -rf /bin/netstat $shell_06 service iptables stop torlus_server malware linux  Detects Torlus/LizKebab/GayFgt/Bashdoor server samples PONG BUILD REPORT !* SCANNER ON
 !* FATCOCK
 buf: "%s"
 %c]0;Bots connected: %d | Clients connected: %d%c WELCOME TO THE BALL PIT M      ? �AELFd/l   ?B          8      p      �      �           P     �     �     �          /�   ?
B   0     h     �     �          H     �     �     �     (     `     �     �          @     x     �     �           X                  �     ? �AELFd/~   ?B   �     �           8     p     �     �          P     �     �     �          /~   ?B   0	     h	     �	     �	     
     H
     �
     �
     �
     (     `     �          /~   ?B   �          @     x     �     �           X     �     �           8          /H   ?B   p     �     �          P     �                 �      ? �AELFd/6   ?B   �     �     0     h          /?   ?B   �     �          H     �                 �                                                                                                         ,                                 #       0  &0       N           �   ,   �      /   0N  &J  0P                     &J       ;$      =      /H            C  D  D<  F,  G  H�  Ih  F4  KH  L6  M&  FX  BR  P  Q�      S  T8  U.  V2  /� X  V& Pt  DX 5  6 EZ     Df :�  OR 0� NL JV f  Mv h  i  Lx f>  l*  m  n  o"  p(  j:  fl  j@  t
  dn  eD  qf  j\  e�  Vb fr  d( Q| U�           sF u|  Ph jT Fn sx  N� Ud cB  j� t4 ;p /� o� Pl t� s~  2      Uj t� b� qT  t�  
  e� Jt s� wj  q� b� e� Pr          0      p� f�                    u� /� /�  2   .         .      ,   $          &   6  #�  �   F      N   
                  �  "                   (              4 /� /�     ;� 1�         !� �         J�  
   H                      �  &  B�     �  .  +<                  .  ^�    #b B�      r M� P�  &  1N G� QV  QZ  D�  O� M� 9L ;> N� 1R CB U� O* O4 D@ /X U� /\ P� ?^ /t /� ;d &� 1�     &� m� 3� MV                      $   X    J� c8  "              H�      (   &       x               �  $  oH M� L� w6 u: sJ J�     pT Q� O� M� E� sZ s`     P�          J                  �      &   6   �      m�             &   �   0   �                  H�                 H�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     &       $                                                                               Q                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   N   L                                                                                                                                               H   F   E   D   7   *   %           G   C   6   5       4   B   K      9            >   8                               =                               <       P   O   ;            
   (      '   #   :   "       M   )   A       J   ?   I                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ������������������������          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������          �  ������������������������          �  ������������������������          �  ������������������������          0  ������������������������          h  ������������������������          �  ������������������������          �  ������������������������            ������������������������          H  ������������������������           �  ������������������������          �  ������������������������          �  ������������������������
          (  ������������������������	          `  ����������������
               �  ����������������
                �  ������������������������            ����������������
   H            @  ����������������
   p            x  ������������������������          �  ������������������������          �  ������������������������             ������������������������          X  ������������������������          �  ����������������
                 �  ����������������
   (                ����������������
   P             8  ����������������
   x             p  ����������������
   �             �  ����������������
   �             �  ������������������������            ����������������
   �             P  ����������������
               �  ����������������
   @            �  ������������������������          �  ������������������������          0	  ������������������������          h	  ����������������
   �            �	  ����������������
   �            �	  ������������������������          
  ����������������
               H
  ����������������
   �            �
  ����������������
   X            �
  ����������������
   �            �
  ����������������
   0            (  ����������������
   �            `  ����������������
   �            �  ������������������������	          �  ������������������������            ������������������������          @  ������������������������          x  ������������������������          �  ����������������
   �            �  ����������������
   0               ����������������
   X             X  ����������������
   �            �  ����������������
   �            �  ����������������
   8               ����������������
   `            8  ����������������
   �            p  ������������������������          �  ������������������������          �  ������������������������            ������������������������          P  ������������������������          �  ������������������������          �  ����������������
   �            �  ������������������������          0  ����������������
   �	            h  ������������������������          �  ����������������
                �  ������������������������            ������������������������
          H  ������������������������          �  ������������������������          Q                                          (                          (      0                
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
   �     �     �     �  
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
   �           $      -      6      ?      H      Q      Z      c      l      �      �      �      �      �      �      �      �      �      �      �      �      �      �                           )     2     8      @      P      H      X      @      H      `      h      �     �     �  
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
   `           �     �  
   p  
   x  
   �  
   �     8           (  
   �  
   �  
   �  
   �     p     X     `  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
    	     �     �     �  
   	  
   	  
    	  
   (	                  
   8	  
   @	  
   H	  
   P	     P     8     @  
   `	  
   h	  
   p	  
   x	     �     p     x  
   �	  
   �	  
   �	  
   �	     �     �     �  
   �	  
   �	  
   �	  
   �	     �     �     �  
   �	  
   �	  
   �	  
   �	     0             
    
  
   
  
   
  
   
     h     P     X  
   (
  
   0
  
   8
  
   @
     �     �     �  
   P
  
   X
  
   `
  
   h
     �     �     �  
   x
  
   �
  
   �
  
   �
          �        
   �
  
   �
  
   �
  
   �
     H     0     8  
   �
  
   �
  
   �
  
   �
     �     h     p  
   �
  
   �
  
      
        �     �     �  
     
      
   (  
   0     h     q     z     �     �     �     �     �     �     �     �     �     �     �     �          
               %     .     7     @     I     d     m     v          �     �     �     �     �     �     �     �     �     �     �     �               h      p      �      x      �      �      �      �      �      �     �     �  
   @  
   H  
   P  
   X     (            
   h  
   p  
   x  
   �     `     H     P  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �          �     �  
     
     
     
         @     (     0  
   0  
   8  
   @  
   H     x     `     h  
   X  
   `  
   h  
   p     �     �     �  
   �  
   �  
   �  
   �     E     N     W     `     {     �     �     �     �  