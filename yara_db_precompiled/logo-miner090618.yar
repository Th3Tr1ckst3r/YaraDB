YARA�          �       `         �   �        �         �        �      h  K	          K	         K         K      0  {                                     ��������                         ��������������������������������������������   '      3                     K      R                     b      l                     �      �                     �      �                 	      �ں�ں��          �   ��������           �   �     �ں�ں��    "        ��������             �     �ں�ں��          -  ��������           )  �     �ں�ں��           N  ��������           J  �     �ں�ں��    '      s  ��������           o  �     �ں�ں��    <      �  ��������           �  �     �ں�ں��    L      �  ��������           �  �     �ں�ں��    &      1  ��������           -  �     �ں�ں��    $      \  ��������           X  �  	   �ں�ں��          �  ��������           �  �  
   �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��          	  ��������                 ��������������������default infected_09_06_18_shell3_logo7 description shell3 - file logo7.jpg author Brian Laskowski reference https://github.com/Hestat/lw-yara/ date 2018-09-06 hash1 22e6db49f1e2372dc133d15c5e8eff64e4a564c645a31e827e925fdf08e00178 $x1 echo "* * * * * curl -s $x2 bash -s" >> /tmp/cron || true && \ $s2 curl -o /var/tmp/config.json $s3 curl -o /var/tmp/suppoie http:// $s4 proc=`grep -c ^processor /proc/cpuinfo` $s5 nohup ./suppoie -c config.json -t `echo $cores` >/dev/null & $s6 ps aux | grep -vw suppoie | awk '{if($3>40.0) print $2}' | while read procid $s7 /sbin/sysctl -w vm.nr_hugepages=`$num` $s8 ps -fe|grep -w suppoie |grep -v grep $s9 crontab -r || true && \ $s10 chmod 777 /var/tmp/suppoie $s11 rm -rf /tmp/cron || true && \ $s12 crontab /tmp/cron || true && \ $s13 cd /var/tmp g      ? �@#!d/   %@ f/�   ?B          8           /�   ?B          8      p      �      �           P     �     �     �     0     h     �     �          1�   BB          8      p      �      �           P     �     �     �     0     h     �     �                  �                                                                                                                                                           )
  %              .  /  0              0                          %@                  >      4.                          0H      ;2      >6                                  ?B                                                      d      f      g      d          d$  a,      p  f*      b4  t  u  s      q       p(  i8  aF  u&      w"  t0  n<      o:                                  pN  sJ  vD  qL          }>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
       	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ������������������������          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������
          P  ������������������������(          �  ������������������������"          �  ������������������������          �  ������������������������          0  ����������������
   P             h  ����������������
   (             �  ����������������
   �            �  ����������������
   �                                                      (                          (      @      H      `      h      �      �      0                
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
         $      -      G      P      Y      b      k      t      }      �      �      �      �      �      �      �      �      �      �      �      �                          (     1     :     C     L  